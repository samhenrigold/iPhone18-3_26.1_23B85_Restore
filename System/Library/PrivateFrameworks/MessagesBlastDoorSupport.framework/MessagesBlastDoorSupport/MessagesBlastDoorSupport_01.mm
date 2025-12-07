uint64_t sub_258CFF618(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char *a12, void (**a13)(void, void, void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v88 = a7;
  v89 = a8;
  v86 = a5;
  v87 = a6;
  v84 = a3;
  v85 = a4;
  v83 = a2;
  v101[1] = *MEMORY[0x277D85DE8];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = v76 - v18;
  v19 = sub_258D176E4();
  MEMORY[0x28223BE20](v19 - 8);
  v82 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258D177F4();
  v91 = *(v21 - 8);
  v92 = v21;
  MEMORY[0x28223BE20](v21);
  v90 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_258D16A84();
  v95 = *(v23 - 8);
  v96 = v23;
  MEMORY[0x28223BE20](v23);
  v94 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_258D16B54();
  v97 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_258D17764();
  v99 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v76 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v76 - v36;
  MEMORY[0x28223BE20](v35);
  v98 = v76 - v38;
  v100 = swift_allocObject();
  *(v100 + 16) = a13;
  v39 = objc_opt_self();
  _Block_copy(a13);
  v40 = sub_258D17854();
  v101[0] = 0;
  v41 = [v39 dataWithPropertyList:v40 format:200 options:0 error:v101];

  v42 = v101[0];
  if (!v41)
  {
    v46 = v42;
    v47 = sub_258D16A14();

    swift_willThrow();
LABEL_7:
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v72 = swift_allocError();
    v73 = v47;
    sub_258D17834();
    v74 = sub_258D16A04();
    (a13)[2](a13, 0, v74);
  }

  v81 = v31;
  v43 = sub_258D16AF4();
  v45 = v44;

  sub_258D17714();
  sub_258D17754();
  v78 = v43;
  v79 = v45;
  v48 = v99 + 8;
  v80 = *(v99 + 8);
  v80(v34, v28);
  sub_258D16B44();
  sub_258D16B24();
  v50 = v49;
  (*(v97 + 8))(v27, v25);
  v51 = v98;
  sub_258D17754();
  v80(v37, v28);
  v50, v52, v53, v54, v55, v56, v57, v58;
  v59 = [objc_opt_self() defaultManager];
  v60 = v94;
  sub_258D17734();
  v61 = sub_258D16A34();
  (*(v95 + 8))(v60, v96);
  v101[0] = 0;
  LOBYTE(v60) = [v59 createDirectoryAtURL:v61 withIntermediateDirectories:1 attributes:0 error:v101];

  v62 = v101[0];
  if ((v60 & 1) == 0)
  {
    v71 = v101[0];
    v47 = sub_258D16A14();

    swift_willThrow();
    sub_258CD7210(v78, v79);
    v80(v51, v28);
    goto LABEL_7;
  }

  v97 = a17;
  v77 = v28;
  v95 = a15;
  v96 = a16;
  v94 = a12;
  v76[1] = a9;
  (*(v99 + 16))(v81, v51, v28);
  v63 = v62;
  sub_258CDBA34(v83, v84);

  sub_258CFA9D0(v87, v88);
  v99 = v48;
  sub_258CFA9D0(v89, a9);
  sub_258CFA9D0(a10, a11);
  sub_258D176C4();
  v64 = v90;
  sub_258D177E4();
  sub_258D17804();
  v65 = sub_258D17224();
  v66 = v93;
  (*(*(v65 - 8) + 56))(v93, 1, 1, v65);
  v67 = swift_allocObject();
  v68 = v100;
  *(v67 + 16) = v96;
  *(v67 + 24) = v68;
  sub_258D021FC(&qword_27F9808F8, MEMORY[0x277CF3098], MEMORY[0x277CF3090]);

  v69 = v78;
  v70 = v79;
  sub_258D16D64();
  sub_258CD7210(v69, v70);

  sub_258CD7264(v66, &qword_27F980810, &unk_258D190E0);
  (*(v91 + 8))(v64, v92);
  v80(v98, v77);
}

uint64_t sub_258CFFFA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, uint64_t a15, void (**a16)(void, void, void))
{
  v85 = a7;
  v86 = a8;
  v83 = a5;
  v84 = a6;
  v81 = a3;
  v82 = a4;
  v94 = a2;
  v99[1] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v75 - v17;
  v18 = sub_258D176E4();
  MEMORY[0x28223BE20](v18 - 8);
  v80 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_258D177F4();
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x28223BE20](v20);
  v87 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258D16A84();
  v92 = *(v22 - 8);
  v93 = v22;
  MEMORY[0x28223BE20](v22);
  v91 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_258D16B54();
  v95 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_258D17764();
  v97 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v75 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v75 - v35;
  MEMORY[0x28223BE20](v34);
  v96 = &v75 - v37;
  v98 = swift_allocObject();
  *(v98 + 16) = a16;
  v38 = objc_opt_self();
  _Block_copy(a16);
  v39 = sub_258D17854();
  v99[0] = 0;
  v40 = [v38 dataWithPropertyList:v39 format:200 options:0 error:v99];

  v41 = v99[0];
  if (!v40)
  {
    v45 = v41;
    v46 = sub_258D16A14();

    swift_willThrow();
LABEL_7:
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v71 = swift_allocError();
    v72 = v46;
    sub_258D17834();
    v73 = sub_258D16A04();
    (a16)[2](a16, 0, v73);
  }

  v79 = v30;
  v42 = sub_258D16AF4();
  v44 = v43;

  sub_258D17714();
  sub_258D17754();
  v76 = v42;
  v77 = v44;
  v47 = v97 + 8;
  v78 = *(v97 + 8);
  v78(v33, v27);
  sub_258D16B44();
  sub_258D16B24();
  v49 = v48;
  (*(v95 + 8))(v26, v24);
  v50 = v96;
  sub_258D17754();
  v78(v36, v27);
  v49, v51, v52, v53, v54, v55, v56, v57;
  v58 = [objc_opt_self() defaultManager];
  v59 = v91;
  sub_258D17734();
  v60 = sub_258D16A34();
  (*(v92 + 8))(v59, v93);
  v99[0] = 0;
  LOBYTE(v59) = [v58 createDirectoryAtURL:v60 withIntermediateDirectories:1 attributes:0 error:v99];

  v61 = v99[0];
  if ((v59 & 1) == 0)
  {
    v70 = v99[0];
    v46 = sub_258D16A14();

    swift_willThrow();
    sub_258CD7210(v76, v77);
    v78(v50, v27);
    goto LABEL_7;
  }

  v93 = a15;
  LODWORD(v92) = a14;
  v91 = a13;
  v75 = a9;
  (*(v97 + 16))(v79, v50, v27);
  v62 = v61;
  sub_258CDBA34(v94, v81);

  v97 = v27;
  sub_258CFA9D0(v84, v85);
  v95 = v47;
  sub_258CFA9D0(v86, a9);
  sub_258CFA9D0(a10, a11);
  sub_258D176C4();
  sub_258CFA9D0(a12, v91);
  v63 = v87;
  sub_258D177E4();
  sub_258D17804();
  v64 = sub_258D17224();
  v65 = v90;
  (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
  v66 = swift_allocObject();
  v67 = v98;
  *(v66 + 16) = sub_258D019B0;
  *(v66 + 24) = v67;
  sub_258D021FC(&qword_27F9808F8, MEMORY[0x277CF3098], MEMORY[0x277CF3090]);

  v68 = v76;
  v69 = v77;
  sub_258D16D64();

  sub_258CD7210(v68, v69);
  sub_258CD7264(v65, &qword_27F980810, &unk_258D190E0);
  (*(v88 + 8))(v63, v89);
  v78(v96, v97);
}

void sub_258D00964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v96 = a2;
  v114[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v88 - v4;
  v102 = sub_258D16DD4();
  v95 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258D16DC4();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_258D16A84();
  v104 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v103 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258D16B54();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258D176E4();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9808D0, &qword_258D190F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v88 - v17;
  v19 = sub_258D17764();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v111 = &v88 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v88 - v32;
  sub_258D16A74();
  sub_258D17724();
  v92 = v14;
  v93 = v28;
  (*(v20 + 56))(v18, 0, 1, v19);
  (*(v20 + 32))(v33, v18, v19);
  v34 = *(v20 + 16);
  v94 = v19;
  v34(v31, v33, v19);
  sub_258D176C4();
  sub_258D17714();
  sub_258D17754();
  v89 = v34;
  v90 = v20 + 16;
  v91 = v31;
  v35 = v23;
  v36 = *(v20 + 8);
  v37 = v94;
  v36(v35, v94);
  v38 = v105;
  sub_258D16B44();
  sub_258D16B24();
  v40 = v39;
  (*(v106 + 8))(v38, v107);
  v41 = v93;
  sub_258D17754();
  v107 = 0;
  v36(v111, v37);
  v40, v42, v43, v44, v45, v46, v47, v48;
  v49 = objc_opt_self();
  v50 = [v49 defaultManager];
  v51 = v103;
  sub_258D17734();
  v52 = sub_258D16A34();
  (*(v104 + 8))(v51, v112);
  v114[0] = 0;
  v53 = v41;
  LOBYTE(v41) = [v50 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:v114];

  if ((v41 & 1) == 0)
  {
    v80 = v114[0];
    v81 = sub_258D16A14();

    swift_willThrow();
    v82 = v53;
    v79 = v81;
    v36(v82, v37);
    (*(v108 + 8))(v110, v109);
    v36(v33, v37);
    v78 = v113;
    goto LABEL_6;
  }

  v54 = v114[0];
  v55 = [v49 defaultManager];
  v56 = v91;
  v57 = v110;
  sub_258D176D4();
  sub_258D176F4();
  v59 = v58;
  v36(v56, v37);
  v60 = sub_258D17884();
  v59, v61, v62, v63, v64, v65, v66, v67;
  LOBYTE(v59) = [v55 fileExistsAtPath_];

  if (v59)
  {
    v111 = v36;
    v112 = v33;
    v89(v56, v93, v37);
    sub_258D176C4();
    v68 = v97;
    sub_258D16DB4();
    v69 = sub_258D17224();
    v70 = v99;
    (*(*(v69 - 8) + 56))(v99, 1, 1, v69);
    sub_258D021FC(&qword_27F980900, MEMORY[0x277CF1CA0], MEMORY[0x277CF1C98]);
    v71 = v98;
    v72 = v57;
    v73 = v102;
    v74 = v107;
    sub_258D16D04();
    v75 = v108;
    if (v74)
    {
      v76 = v74;
      sub_258CD7264(v70, &qword_27F980810, &unk_258D190E0);
      (*(v100 + 8))(v68, v101);
      v77 = v111;
      (v111)(v93, v37);
      (*(v75 + 8))(v72, v109);
      v77(v112, v37);
      v78 = v113;
      v79 = v76;
LABEL_6:
      sub_258D17824();
      sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      v83 = swift_allocError();
      v84 = v79;
      sub_258D17834();
      v85 = sub_258D16A04();
      (*(v78 + 16))(v78, 0, v85);

      return;
    }

    sub_258CD7264(v70, &qword_27F980810, &unk_258D190E0);
    v86 = sub_258D16DA4();
    (*(v113 + 16))(v113, v86, 0);

    (*(v95 + 8))(v71, v73);
    (*(v100 + 8))(v68, v101);
    v87 = v111;
    (v111)(v93, v37);
    (*(v75 + 8))(v72, v109);
    v87(v112, v37);
  }

  else
  {
    v36(v93, v37);
    (*(v108 + 8))(v57, v109);
    v36(v33, v37);
  }
}

uint64_t sub_258D01634(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = objc_opt_self();
  _Block_copy(a3);
  v9 = sub_258D17854();
  v24[0] = 0;
  v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:v24];

  v11 = v24[0];
  if (v10)
  {
    v12 = sub_258D16AF4();
    v14 = v13;

    sub_258D17684();
    v15 = sub_258D17224();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_258D02304;
    *(v16 + 24) = v7;
    sub_258D021FC(&qword_27F980908, MEMORY[0x277CF2A28], MEMORY[0x277CF2A20]);

    sub_258D16D14();

    sub_258CD7210(v12, v14);
    sub_258CD7264(v6, &qword_27F980810, &unk_258D190E0);
  }

  else
  {
    v17 = v11;
    v18 = sub_258D16A14();

    swift_willThrow();
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v19 = swift_allocError();
    v20 = v18;
    sub_258D17834();
    v21 = sub_258D16A04();
    (a3)[2](a3, 0, v21);
  }
}

void sub_258D0199C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_258CD7210(a1, a2);
  }
}

uint64_t sub_258D01B4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258D0230C;

  return sub_258CF5A48(a1, v4);
}

uint64_t sub_258D01C04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258CFAC90;

  return sub_258CF5A48(a1, v4);
}

uint64_t objectdestroy_300Tm()
{
  v1 = sub_258D16E64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258D01E28()
{
  sub_258D16E64();

  return sub_258CE651C();
}

uint64_t objectdestroy_303Tm()
{
  v1 = sub_258D16C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_258D16A84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v12 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v12 | 7);
}

void sub_258D02020(uint64_t (*a1)(_BYTE *, _BYTE *, uint64_t))
{
  v3 = *(sub_258D16C04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_258D16A84() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_258CE663C(a1, v1 + v4, v9, v10, v11, v1 + v8, v13, v14);
}

uint64_t sub_258D0214C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258D021B4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_258D021FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258D02244()
{
  result = qword_280BCBE58;
  if (!qword_280BCBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980B30, &qword_258D192E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void RelayGroupMutationMessageUnpacker.unpack(from:)(uint64_t a3@<X8>)
{
  v156 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B38, &qword_258D19300);
  MEMORY[0x28223BE20](v3 - 8);
  v174 = &v151 - v4;
  v5 = sub_258D17824();
  v176 = *(v5 - 8);
  v177 = v5;
  MEMORY[0x28223BE20](v5);
  v175 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_258D17784();
  v171 = *(v173 - 8);
  v7 = MEMORY[0x28223BE20](v173);
  v160 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v159 = &v151 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v170 = &v151 - v12;
  MEMORY[0x28223BE20](v11);
  v172 = &v151 - v13;
  v158 = sub_258D175F4();
  v162 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v166 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B40, &qword_258D19308);
  MEMORY[0x28223BE20](v15 - 8);
  v165 = &v151 - v16;
  v17 = sub_258D17644();
  v168 = *(v17 - 8);
  v169 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v161 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v157 = &v151 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B48, &unk_258D19310);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v163 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v167 = &v151 - v24;
  v25 = sub_258D17354();
  v178 = *(v25 - 8);
  v179 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v155 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v154 = &v151 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v164 = &v151 - v31;
  MEMORY[0x28223BE20](v30);
  v182 = &v151 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  MEMORY[0x28223BE20](v33 - 8);
  v180 = &v151 - v34;
  v35 = sub_258D16B54();
  v181 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v151 - v39;
  sub_258D169F4();
  swift_allocObject();
  v41 = sub_258D169E4();
  v42 = sub_258D16AE4();
  v43 = [v42 _imOptionallyDecompressData];

  v44 = sub_258D16AF4();
  v46 = v45;

  sub_258D03614();
  v47 = v192;
  sub_258D169D4();
  if (v47)
  {

    sub_258CD7210(v44, v46);
    return;
  }

  v152 = v38;
  v192 = v41;
  v153 = v40;
  sub_258CD7210(v44, v46);
  v186 = v190[6];
  v187 = v190[7];
  v188 = v190[8];
  v189 = v191;
  v183[2] = v190[2];
  v183[3] = v190[3];
  v184 = v190[4];
  v185 = v190[5];
  v183[0] = v190[0];
  v183[1] = v190[1];
  v48 = v180;
  sub_258D16B14();
  v49 = v181;
  if ((*(v181 + 48))(v48, 1, v35) == 1)
  {
    sub_258D03668(v183);
    sub_258CD7264(v48, &qword_27F980B50, &qword_258D198C0);
    v50 = v175;
    sub_258D17814();
    sub_258D036BC();
    v181 = sub_258D17B14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_258D19090;
    v53 = v176;
    v52 = v177;
    v182 = *v176->type;
    v54 = v174;
    (v182)(v174, v50, v177);
    (*v53[2].bd)(v54, 0, 1, v52);
    v55 = sub_258D17604();
    v57 = v56;
    sub_258CD7264(v54, &qword_27F980B38, &qword_258D19300);
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = sub_258CF695C();
    *(v51 + 32) = v55;
    *(v51 + 40) = v57;
    v58 = sub_258D17A74();
    v59 = v181;
    sub_258D16B94("Message unpacking explosion: %{public}@", 39, 2, &dword_258CD3000, v181, v58, v51);

    v51, v60, v61, v62, v63, v64, v65, v66;
    sub_258D03C4C(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    (v182)(v67, v50, v52);
    swift_willThrow();

    (*v53->bd)(v50, v52);
    return;
  }

  v177 = 0;
  v68 = *(v49 + 32);
  v180 = v35;
  v68(v153, v48, v35);
  v69 = *MEMORY[0x277CF2390];
  v70 = v178;
  v71 = v179;
  v72 = *(v178 + 104);
  v73 = v182;
  v72(v182, v69, v179);
  if (*&v183[0] != 1)
  {
    if (!*&v183[0])
    {
      v74 = v187;
      if (v187)
      {
        v75 = *(&v186 + 1);

        v77 = sub_258D03B68(1024, v75, v74, v76);
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v74, v78, v80, v82, v84, v85, v86, v87;
        MEMORY[0x259C99B20](v77, v79, v81, v83);
        v89 = v88;
        v83, v88, v90, v91, v92, v93, v94, v95;
        if (v89)
        {

          v96 = v177;
          sub_258D17204();
          v104 = v179;
          v105 = v153;
          v73 = v182;
          v177 = v96;
          v106 = v164;
          if (v96)
          {
            v89, v97, v98, v99, v100, v101, v102, v103;

            sub_258D03668(v183);
            (*(v178 + 8))(v73, v104);
            (*(v49 + 8))(v105, v180);
            return;
          }

          v89, v97, v98, v99, v100, v101, v102, v103;
          v70 = v178;
        }

        else
        {
          v70 = v178;
          v73 = v182;
          v106 = v164;
        }
      }

      else
      {
        v106 = v164;
      }

      v127 = sub_258D17214();
      v128 = v167;
      (*(*(v127 - 8) + 56))();
      sub_258D039EC(v128, v163);
      v129 = v177;
      sub_258D17654();
      v177 = v129;
      if (v129)
      {

        sub_258D03668(v183);
        sub_258CD7264(v128, &qword_27F980B48, &unk_258D19310);
        (*(v70 + 8))(v73, v179);
        (*(v49 + 8))(v153, v180);
        return;
      }

      sub_258CD7264(v128, &qword_27F980B48, &unk_258D19310);
      v71 = v179;
      (*(v70 + 8))(v73, v179);
      v72(v106, *MEMORY[0x277CF2380], v71);
      (*(v70 + 32))(v73, v106, v71);
    }

    goto LABEL_37;
  }

  if (v188)
  {
    (*(v70 + 8))(v73, v71);
    v107 = v165;
    (*(v168 + 56))(v165, 1, 1, v169);
LABEL_15:
    sub_258CD7264(v107, &qword_27F980B40, &qword_258D19308);
    v72(v73, v69, v71);
    goto LABEL_37;
  }

  v175 = v72;
  v107 = v165;
  sub_258D17634();
  v109 = v168;
  v108 = v169;
  if ((*(v168 + 48))(v107, 1, v169) == 1)
  {
    v73 = v182;
    (*(v70 + 8))(v182, v71);
    v72 = v175;
    goto LABEL_15;
  }

  (*(v109 + 32))(v157, v107, v108);
  if (!*(&v188 + 1))
  {
    (*(v109 + 8))(v157, v108);
    v142 = v182;
    (*(v70 + 8))(v182, v71);
    (v175)(v142, v69, v71);
LABEL_37:

    v130 = v172;
    v131 = v177;
    sub_258D17774();
    v132 = v173;
    v133 = v171;
    if (v131)
    {

      sub_258D03668(v183);
      (*(v70 + 8))(v182, v71);
      (*(v49 + 8))(v153, v180);
    }

    else
    {

      sub_258D17774();
      v134 = *(v133 + 16);
      v134(v159, v130, v132);
      v134(v160, v170, v132);
      (*(v49 + 16))(v152, v153, v180);
      v176 = *(&v185 + 1);
      v177 = *(&v184 + 1);
      (*(v178 + 16))(v155, v182, v71);

      sub_258D17574();

      sub_258D03668(v183);
      v135 = *(v133 + 8);
      v136 = v173;
      v135(v170, v173);
      v135(v172, v136);
      (*(v178 + 8))(v182, v179);
      (*(v181 + 8))(v153, v180);
    }

    return;
  }

  v110 = *(&v188 + 1) + 64;
  v111 = 1 << *(*(&v188 + 1) + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & *(*(&v188 + 1) + 64);
  v114 = (v111 + 63) >> 6;
  v167 = (v162 + 32);

  v116 = 0;
  v176 = MEMORY[0x277D84F90];
  v117 = v153;
  v174 = v110;
  v118 = v161;
  if (!v113)
  {
    while (1)
    {
LABEL_21:
      v119 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        __break(1u);
        return;
      }

      if (v119 >= v114)
      {
        break;
      }

      v113 = *(v110 + 8 * v119);
      ++v116;
      if (v113)
      {
        v116 = v119;
        goto LABEL_25;
      }
    }

    v137 = v168;
    v138 = v169;
    v139 = v157;
    (*(v168 + 16))(v118, v157, v169);
    v140 = v154;
    v141 = v177;
    sub_258D17664();
    v177 = v141;
    if (v141)
    {

      sub_258D03668(v183);
      (*(v137 + 8))(v139, v138);
      (*(v178 + 8))(v182, v71);
      (*(v181 + 8))(v117, v180);
      return;
    }

    (*(v137 + 8))(v139, v138);
    v70 = v178;
    v143 = v182;
    (*(v178 + 8))(v182, v71);
    (v175)(v140, *MEMORY[0x277CF2388], v71);
    (*(v70 + 32))(v143, v140, v71);
    v49 = v181;
    goto LABEL_37;
  }

LABEL_25:
  while (1)
  {
    v120 = v115;

    v121 = v177;
    sub_258D175E4();
    if (v121)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v176 = sub_258D03814(0, *v176->type + 1, 1, v176);
    }

    v123 = v162;
    v125 = *v176->type;
    isa = v176[1].super.isa;
    if (v125 >= isa >> 1)
    {
      v176 = sub_258D03814((isa > 1), v125 + 1, 1, v176);
    }

    v113 &= v113 - 1;
    v126 = v176;
    *v176->type = v125 + 1;
    (*(v123 + 32))(v126 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v125);
    v71 = v179;
    v117 = v153;
    v115 = v120;
    v110 = v174;
    v118 = v161;
    if (!v113)
    {
      goto LABEL_21;
    }
  }

  sub_258D03668(v183);
  (*(v168 + 8))(v157, v169);
  (*(v178 + 8))(v182, v179);
  (*(v181 + 8))(v153, v180);
  v176, v144, v145, v146, v147, v148, v149, v150;
}

unint64_t sub_258D03614()
{
  result = qword_27F980B58;
  if (!qword_27F980B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B58);
  }

  return result;
}

unint64_t sub_258D036BC()
{
  result = qword_280BCBE18;
  if (!qword_280BCBE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BCBE18);
  }

  return result;
}

IMMessagesBlastDoorInterfaceInternal *sub_258D03708(IMMessagesBlastDoorInterfaceInternal *result, int64_t a2, void *a3, IMMessagesBlastDoorInterfaceInternal *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->type;
  if (v11 <= v12)
  {
    v13 = *a4->type;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B68, &unk_258D193B0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->type = v12;
    v14[1].super.isa = (2 * (v16 >> 3));
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  bd = v14[1].bd;
  v18 = a4[1].bd;
  if (v9)
  {
    if (v14 != a4 || bd >= &v18[8 * v12])
    {
      memmove(bd, v18, 8 * v12);
    }

    *a4->type = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

IMMessagesBlastDoorInterfaceInternal *sub_258D03814(IMMessagesBlastDoorInterfaceInternal *result, int64_t a2, char a3, IMMessagesBlastDoorInterfaceInternal *a4)
{
  v5 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v7 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->type;
  if (v7 <= v8)
  {
    v9 = *a4->type;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B60, &qword_258D193A8);
  v10 = *(sub_258D175F4() - 8);
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

  *v13->type = v8;
  v13[1].super.isa = (2 * ((result - v12) / v11));
LABEL_19:
  v16 = sub_258D175F4();
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = a4 + v22;
  if (v5)
  {
    if (v13 < a4 || v13 + v22 >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->type = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20;
  return v13;
}

uint64_t sub_258D039EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B48, &unk_258D19310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

IMMessagesBlastDoorInterfaceInternal *sub_258D03A5C(IMMessagesBlastDoorInterfaceInternal *result, int64_t a2, void *a3, IMMessagesBlastDoorInterfaceInternal *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->type;
  if (v11 <= v12)
  {
    v13 = *a4->type;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980988, &qword_258D19160);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->type = v12;
    v14[1].super.isa = (2 * (v16 >> 4));
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  bd = v14[1].bd;
  v18 = a4[1].bd;
  if (v9)
  {
    if (v14 != a4 || bd >= &v18[16 * v12])
    {
      memmove(bd, v18, 16 * v12);
    }

    *a4->type = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_258D03B68(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_258D17934();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_258D03C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for RelayGroupMutationMessageUnpacker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RelayGroupMutationMessageUnpacker(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_258D03D74(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1;
    if (!a1)
    {
LABEL_10:
      sub_258D10DE0(v2);
      v2, v19, v20, v21, v22, v23, v24, v25;
      return;
    }

    while (1)
    {
      v4 = sub_258D03F18(8);
      if (v1)
      {
        v2, v5, v6, v7, v8, v9, v10, v11;
        return;
      }

      v12 = v4;
      if (v4 > 0xFF)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_258CF6078(0, *v2->type + 1, 1, v2, v13, v14, v15, v16);
      }

      v18 = *v2->type;
      isa = v2[1].super.isa;
      if (v18 >= isa >> 1)
      {
        v2 = sub_258CF6078((isa > 1), v18 + 1, 1, v2, v13, v14, v15, v16);
      }

      *v2->type = v18 + 1;
      v2[1].bd[v18] = v12;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t _s24MessagesBlastDoorSupport14LiteTextMarkerO9hashValueSivg_0()
{
  sub_258D17EC4();
  MEMORY[0x259C9A0F0](0);
  return sub_258D17EF4();
}

uint64_t sub_258D03ED8(uint64_t a1)
{
  sub_258D17EC4();
  MEMORY[0x259C9A0F0](0);
  return sub_258D17EF4();
}

uint64_t sub_258D03F18(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 16);
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = v1[2];
  v7 = 8 * v5;
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (v8)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v9 < result)
  {
    sub_258D04260();
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  if (v6 < 1)
  {
    v10 = 0;
    if (result >= 8)
    {
LABEL_27:
      if (v4 >= v3)
      {
        v18 = v4 - v3;
      }

      else
      {
        v18 = 0;
      }

      v19 = result - 15;
      if (result < 0xF)
      {
        v19 = 0;
      }

      v20 = v19 + 7;
      v21 = (v19 + 7) >> 3;
      if (v21 >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v21;
      }

      if (v22 >= (v3 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v23 = v3 ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v18 == v23)
      {
        goto LABEL_53;
      }

      if ((v3 ^ 0x7FFFFFFFFFFFFFFFLL) <= v22)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v16 = v3 + v21 + 1;
      v24 = v20 & 0xFFFFFFFFFFFFFFF8;
      v25 = (v3 + v2 + 32);
      v26 = result + 8;
      do
      {
        v27 = *v25++;
        v10 = v27 | (v10 << 8);
        v26 -= 8;
      }

      while (v26 > 0xF);
      result = result - v24 - 8;
      v1[1] = v16;
      if (result < 1)
      {
        return v10;
      }

LABEL_43:
      if (v16 < v4)
      {
        v28 = v10 << result;
        v29 = *(v2 + v16 + 32) >> (8 - result);
        v30 = __CFADD__(v28, v29);
        v10 = v28 + v29;
        if (!v30)
        {
          v1[2] = result;
          return v10;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_19:
    v16 = v3;
    if (result < 1)
    {
      return v10;
    }

    goto LABEL_43;
  }

  v11 = v6 + result;
  if (__OFADD__(v6, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v11 > 7)
  {
    if (v3 >= v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v8 = __OFSUB__(result, 8 - v6);
    result -= 8 - v6;
    if (v8)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v6 <= 0x3F)
    {
      v17 = 0xFFuLL >> v6;
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    v10 = v17 & *(v2 + v3++ + 32);
    v1[1] = v3;
    v1[2] = 0;
    if (result >= 8)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v3 >= v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v12 = 0xFFuLL >> v6;
  if (v6 > 0x3F)
  {
    LOBYTE(v12) = 0;
  }

  v13 = 8 - v6;
  v8 = __OFSUB__(v13, result);
  v14 = v13 - result;
  if (v8)
  {
    goto LABEL_57;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = (v12 & *(v2 + v3 + 32)) >> v14;
    if (v14 <= 0x3F)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    v1[2] = v11;
    return v10;
  }

LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_258D04144(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = sub_258D03F18(1);
    if (v1)
    {
      return v5;
    }

    v7 = v6;
    result = sub_258D03F18(a1);
    v9 = result << v4;
    if (v4 >= 0x40)
    {
      v9 = 0;
    }

    v10 = result >> v3;
    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      v9 = v10;
    }

    v11 = (v4 - 65) >= 0xFFFFFFFFFFFFFF7FLL ? v9 : 0;
    if (__OFADD__(v4, a1))
    {
      break;
    }

    v5 |= v11;
    v4 += a1;
    v3 -= a1;
    if (!v7)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_258D041EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980A50, &qword_258D193A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_258D04260()
{
  result = qword_27F980B70;
  if (!qword_27F980B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B70);
  }

  return result;
}

void *sub_258D042B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_258D16B04();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_258CD7210(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_258D041EC(v10, 0);
      v14 = sub_258D16AB4();
      sub_258CD7210(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_258D04454()
{
  result = qword_27F980B78;
  if (!qword_27F980B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B78);
  }

  return result;
}

BOOL sub_258D045D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_258D04600@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_258D0462C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_258D04704@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_258D04738(IMMessagesBlastDoorInterfaceInternal *a1@<X0>, const char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v10 = *a1->type;
  if (v10)
  {
    v11 = 0;
    bd = a1[1].bd;
    do
    {
      v14 = *bd;
      bd += 8;
      v13 = v14;
      if ((v14 & ~v11) == 0)
      {
        v13 = 0;
      }

      v11 |= v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  a1, a2, a3, a4, a5, a6, a7, a8;
  *a9 = v11;
}

uint64_t IncomingPushPayload.messageGUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUIDData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D056D4(v1, v5, type metadata accessor for UUIDData);
  v6 = sub_258D16B54();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t sub_258D0485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUIDData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D056D4(a1, v6, type metadata accessor for UUIDData);
  v7 = sub_258D16B54();
  return (*(*(v7 - 8) + 32))(a2, v6, v7);
}

uint64_t IncomingPushPayload.messageGUID.setter(uint64_t a1)
{
  v3 = sub_258D16B54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for IncomingPushPayload(uint64_t a1)
{
  result = qword_280BCBDB0;
  if (!qword_280BCBDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IncomingPushPayload.timestamp.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IncomingPushPayload(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IncomingPushPayload.originalTimestamp.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IncomingPushPayload(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IncomingPushPayload.command.setter(char a1)
{
  result = type metadata accessor for IncomingPushPayload(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t IncomingPushPayload.wantsDeliveryReceipt.setter(char a1)
{
  result = type metadata accessor for IncomingPushPayload(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t IncomingPushPayload.wantsCheckpointing.setter(char a1)
{
  result = type metadata accessor for IncomingPushPayload(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IncomingPushPayload.storageContext.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IncomingPushPayload(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t IncomingPushPayload.storageContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for IncomingPushPayload(0);
  v5 = v1 + *(result + 40);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t IncomingPushPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B80, &qword_258D19480);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D05114();
  sub_258D17F34();
  LOBYTE(v14) = 0;
  type metadata accessor for UUIDData(0);
  sub_258D055D8(&qword_27F980B88, &protocol conformance descriptor for UUIDData);
  sub_258D17DE4();
  if (!v2)
  {
    v9 = type metadata accessor for IncomingPushPayload(0);
    LOBYTE(v14) = 1;
    sub_258D17DF4();
    LOBYTE(v14) = 2;
    sub_258D17DB4();
    LOBYTE(v14) = 3;
    sub_258D17DB4();
    LOBYTE(v14) = 4;
    sub_258D17D84();
    LOBYTE(v14) = 5;
    sub_258D17D84();
    v10 = (v3 + *(v9 + 40));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v14 = v11;
    v15 = v10;
    v13[15] = 6;
    sub_258D05168();
    sub_258D17DA4();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258D05114()
{
  result = qword_280BCBDE0;
  if (!qword_280BCBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDE0);
  }

  return result;
}

unint64_t sub_258D05168()
{
  result = qword_27F980B90;
  if (!qword_27F980B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B90);
  }

  return result;
}

uint64_t IncomingPushPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for UUIDData(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B98, &qword_258D19488);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for IncomingPushPayload(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 40)];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_258D05114();
  v31 = v8;
  v15 = v32;
  sub_258D17F14();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v16 = v9;
  v17 = v29;
  LOBYTE(v34) = 0;
  sub_258D055D8(qword_280BCBD68, &protocol conformance descriptor for UUIDData);
  v18 = v30;
  sub_258D17D34();
  sub_258D0561C(v5, v12);
  LOBYTE(v34) = 1;
  v12[v16[7]] = sub_258D17D44();
  LOBYTE(v34) = 2;
  v19 = sub_258D17D04();
  v20 = &v12[v16[5]];
  *v20 = v19;
  v20[8] = v21 & 1;
  LOBYTE(v34) = 3;
  v22 = sub_258D17D04();
  v23 = &v12[v16[6]];
  *v23 = v22;
  v23[8] = v24 & 1;
  LOBYTE(v34) = 4;
  v12[v16[8]] = sub_258D17CD4();
  LOBYTE(v34) = 5;
  v12[v16[9]] = sub_258D17CD4();
  v36 = 6;
  sub_258D05680();
  v26 = v31;
  sub_258D17CF4();
  (*(v17 + 8))(v26, v18);
  v27 = v35;
  *v13 = v34;
  v13[8] = v27;
  sub_258D056D4(v12, v28, type metadata accessor for IncomingPushPayload);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_258D0573C(v12, type metadata accessor for IncomingPushPayload);
}

uint64_t sub_258D055D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUIDData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258D0561C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258D05680()
{
  result = qword_280BCBDC8;
  if (!qword_280BCBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDC8);
  }

  return result;
}

uint64_t sub_258D056D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258D0573C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

MessagesBlastDoorSupport::IncomingPushPayload::CodingKeys_optional __swiftcall IncomingPushPayload.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_258D17C94();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 7;
  if (v4 < 7)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

MessagesBlastDoorSupport::IncomingPushPayload::CodingKeys_optional __swiftcall IncomingPushPayload.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = IncomingPushPayload.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t IncomingPushPayload.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 85;
  v3 = 25453;
  if (v1 != 5)
  {
    v3 = 72;
  }

  v4 = 25967;
  if (v1 != 3)
  {
    v4 = 68;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 99;
  if (v1 != 1)
  {
    v5 = 101;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_258D05900()
{
  result = qword_27F980BA0;
  if (!qword_27F980BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BA0);
  }

  return result;
}

unint64_t sub_258D05958()
{
  result = qword_27F980BA8;
  if (!qword_27F980BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BA8);
  }

  return result;
}

unint64_t sub_258D059B0()
{
  result = qword_27F980BB0;
  if (!qword_27F980BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BB0);
  }

  return result;
}

unint64_t sub_258D05A08()
{
  result = qword_27F980BB8;
  if (!qword_27F980BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BB8);
  }

  return result;
}

unint64_t sub_258D05A6C()
{
  result = qword_27F980BC0;
  if (!qword_27F980BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BC0);
  }

  return result;
}

void sub_258D05ACC(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  if (v2 != 5)
  {
    v3 = 0xE100000000000000;
  }

  v4 = 0xE200000000000000;
  if (v2 != 3)
  {
    v4 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v3 = v4;
  }

  if (*v1 <= 2u)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = v3;
  }

  sub_258D17914();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_258D05B8C(uint64_t a1, unsigned __int8 a2)
{
  sub_258D17EC4();
  v3 = 0xE200000000000000;
  if (a2 != 5)
  {
    v3 = 0xE100000000000000;
  }

  v4 = 0xE200000000000000;
  if (a2 != 3)
  {
    v4 = 0xE100000000000000;
  }

  if (a2 <= 4u)
  {
    v3 = v4;
  }

  if (a2 <= 2u)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = v3;
  }

  sub_258D17914();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_258D17EF4();
}

void sub_258D05C64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 85;
  v5 = 0xE200000000000000;
  v6 = 25453;
  if (v2 != 5)
  {
    v6 = 72;
    v5 = 0xE100000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 25967;
  if (v2 != 3)
  {
    v8 = 68;
    v7 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 99;
  if (v2 != 1)
  {
    v9 = 101;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_258D05CF0()
{
  result = qword_280BCBDD0;
  if (!qword_280BCBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDD0);
  }

  return result;
}

unint64_t sub_258D05D48()
{
  result = qword_280BCBDD8;
  if (!qword_280BCBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDD8);
  }

  return result;
}

uint64_t sub_258D05D9C()
{
  v1 = *v0;
  v2 = 85;
  v3 = 25453;
  if (v1 != 5)
  {
    v3 = 72;
  }

  v4 = 25967;
  if (v1 != 3)
  {
    v4 = 68;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 99;
  if (v1 != 1)
  {
    v5 = 101;
  }

  if (*v0)
  {
    v2 = v5;
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

MessagesBlastDoorSupport::IncomingPushPayload::CodingKeys_optional sub_258D05E20@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = IncomingPushPayload.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_258D05E70(uint64_t a1)
{
  v2 = sub_258D05114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D05EAC(uint64_t a1)
{
  v2 = sub_258D05114();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258D05F10(uint64_t a1)
{
  type metadata accessor for UUIDData(319);
  if (v1 <= 0x3F)
  {
    sub_258D06004(319, &qword_27F980BC8, MEMORY[0x277D84D38]);
    if (v2 <= 0x3F)
    {
      sub_258D06004(319, &qword_27F980BD0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_258D06004(319, &qword_27F980BD8, &type metadata for IncomingPushPayload.StorageContext);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258D06004(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_258D17B34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IncomingPushPayload.StorageContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IncomingPushPayload.StorageContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IncomingPushPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingPushPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void LiteTextMessageUnpacker.unpack(from:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a2;
  v154 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE0, &qword_258D198B0);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = &v133 - v5;
  v6 = sub_258D16B54();
  v152 = *(v6 - 8);
  v153 = v6;
  MEMORY[0x28223BE20](v6);
  v142 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258D16EF4();
  v150 = *(v8 - 8);
  v151 = v8;
  MEMORY[0x28223BE20](v8);
  v144 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for LiteAcknowledgmentMessageContent(0);
  MEMORY[0x28223BE20](v141);
  v148 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for LiteReplyMessageContent(0);
  MEMORY[0x28223BE20](v147);
  v149 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE8, &qword_258D198B8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v139 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v136 = &v133 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v146 = &v133 - v18;
  MEMORY[0x28223BE20](v17);
  v156 = &v133 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v138 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v137 = &v133 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v145 = &v133 - v26;
  MEMORY[0x28223BE20](v25);
  v155 = &v133 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v140 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v135 = &v133 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v133 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v133 - v36;
  v38 = type metadata accessor for LiteTextMessageContent(0);
  MEMORY[0x28223BE20](v38);
  v40 = (&v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_258D17174();
  v157 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v133 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v133 - v45;
  v47 = v158;
  sub_258CDBA34(a1, v158);
  v163 = sub_258D042B4(a1, v47);
  v164 = v48;
  v165 = v49;
  v50 = v166;
  v51 = sub_258D04144(3);
  if (v50)
  {
    v163, v52, v53, v54, v55, v56, v57, v58;
  }

  else
  {
    v134 = v35;
    v158 = v44;
    v60 = v155;
    v59 = v156;
    v166 = v46;
    if ((v51 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_258D17164();
      v61 = v157;
      v62 = v41;
      v63 = v158;
      (*(v157 + 16))();
      v64 = (*(v61 + 88))(v63, v62);
      if (v64 == *MEMORY[0x277CF2148])
      {
        sub_258D11C40(v40);
        v158 = v62;
        v163, v79, v80, v81, v82, v83, v84, v85;
        sub_258D06EFC(v40 + *(v38 + 20), v37);
        (*(v152 + 56))(v60, 1, 1, v153);
        (*(v150 + 56))(v59, 1, 1, v151);

        sub_258D17194();
        v86 = v166;
        sub_258D06F6C(v40, type metadata accessor for LiteTextMessageContent);
        (*(v157 + 8))(v86, v158);
      }

      else if (v64 == *MEMORY[0x277CF2150])
      {
        v65 = v149;
        sub_258D11D80(v149);
        v66 = v166;
        v163, v89, v90, v91, v92, v93, v94, v95;
        v96 = *(v147 + 24);
        v158 = *&v65[*(v147 + 20)];
        sub_258D06EFC(&v65[v96], v134);
        v98 = v152;
        v97 = v153;
        v99 = v145;
        (*(v152 + 16))(v145, v65, v153);
        (*(v98 + 56))(v99, 0, 1, v97);
        (*(v150 + 56))(v146, 1, 1, v151);

        sub_258D17194();
        sub_258D06F6C(v65, type metadata accessor for LiteReplyMessageContent);
        (*(v157 + 8))(v66, v62);
      }

      else if (v64 == *MEMORY[0x277CF2140])
      {
        v67 = v148;
        sub_258D120AC(v148);
        v163, v68, v69, v70, v71, v72, v73, v74;
        (*(v152 + 16))(v142, v67 + *(v141 + 20), v153);
        v75 = sub_258D16ED4();
        v76 = *(v75 - 8);
        v77 = v143;
        (*(v76 + 16))(v143, v67, v75);
        (*(v76 + 56))(v77, 0, 1, v75);

        v78 = v144;
        sub_258D16EE4();
        v127 = sub_258D171B4();
        (*(*(v127 - 8) + 56))(v135, 1, 1, v127);
        (*(v152 + 56))(v137, 1, 1, v153);
        v128 = v150;
        v129 = v136;
        v130 = v78;
        v131 = v151;
        (*(v150 + 16))(v136, v130, v151);
        (*(v128 + 56))(v129, 0, 1, v131);
        sub_258D17194();
        v132 = v157;
        (*(v128 + 8))(v144, v131);
        sub_258D06F6C(v67, type metadata accessor for LiteAcknowledgmentMessageContent);
        (*(v132 + 8))(v166, v62);
      }

      else
      {
        v87 = sub_258CDB2E4();
        v88 = v166;
        v100 = v87;
        v102 = v101;
        v163, v101, v103, v104, v105, v106, v107, v108;
        v109 = (v102 >> 56) & 0xF;
        v159 = v100;
        v160 = v102;
        if ((v102 & 0x2000000000000000) == 0)
        {
          v109 = v100 & 0xFFFFFFFFFFFFLL;
        }

        v161 = 0;
        v162 = v109;
        v110 = sub_258D0C5F8(&v159);
        v160, v111, v112, v113, v114, v115, v116, v117;
        Array<A>.spansAsPlainText.getter(v110);
        v110, v118, v119, v120, v121, v122, v123, v124;
        v125 = sub_258D171B4();
        (*(*(v125 - 8) + 56))(v140, 1, 1, v125);
        (*(v152 + 56))(v138, 1, 1, v153);
        (*(v150 + 56))(v139, 1, 1, v151);
        sub_258D17194();
        v126 = *(v157 + 8);
        v126(v88, v62);
        v126(v158, v62);
      }
    }
  }
}

uint64_t sub_258D06EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258D06F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258D06FD0()
{
  result = qword_27F980940;
  if (!qword_27F980940)
  {
    sub_258D171C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980940);
  }

  return result;
}

uint64_t Data._imOptionallyDecompress()(uint64_t a1, uint64_t a2)
{
  v2 = sub_258D16AE4();
  v3 = [v2 _imOptionallyDecompressData];

  v4 = sub_258D16AF4();
  return v4;
}

void LiteMessageCompressor.decode(_:codecID:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (v7 >> 62)
  {
LABEL_42:
    v8 = sub_258D17C54();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v9 = 0;
  while ((v7 & 0xC000000000000001) == 0)
  {
    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v10 = *(v7 + 8 * v9 + 32);

    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    if (cosl_codec_get_id() == a3)
    {
      goto LABEL_13;
    }

    ++v9;
    if (v11 == v8)
    {
      return;
    }
  }

  v10 = MEMORY[0x259C99DC0](v9, v7);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  sub_258D08CC8(a1, a2, v10, &v28);
  v13 = *(&v28 + 1);
  v12 = v28;
  if (qword_27F9807B8 != -1)
  {
    swift_once();
  }

  v14 = sub_258D16C84();
  __swift_project_value_buffer(v14, qword_27F980BF8);
  sub_258CDBA34(a1, a2);
  sub_258CFA9D0(v12, v13);
  v15 = sub_258D16C64();
  v16 = sub_258D17A54();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_258D0199C(v12, v13);
    sub_258CD7210(a1, a2);
LABEL_31:

    return;
  }

  v17 = swift_slowAlloc();
  v18 = v17;
  *v17 = 134218496;
  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_28:
    *(v17 + 4) = v20;
    sub_258CD7210(a1, a2);
    *(v18 + 12) = 2048;
    if (v13 >> 60 == 15)
    {
      goto LABEL_29;
    }

    v25 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v25 != 2)
      {
LABEL_29:
        v24 = 0;
LABEL_30:
        *(v18 + 14) = v24;
        sub_258D0199C(v12, v13);
        *(v18 + 22) = 2048;
        *(v18 + 24) = a3;
        _os_log_impl(&dword_258CD3000, v15, v16, "Decompressed %ld bytes to %ld using codec %ld", v18, 0x20u);
        MEMORY[0x259C9A940](v18, -1, -1);
        goto LABEL_31;
      }

      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      v23 = __OFSUB__(v26, v27);
      v24 = v26 - v27;
      if (!v23)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v24 = BYTE6(v13);
      goto LABEL_30;
    }

    LODWORD(v24) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_45;
    }

    v24 = v24;
    goto LABEL_30;
  }

  if (!v19)
  {
    v20 = BYTE6(a2);
    goto LABEL_28;
  }

LABEL_25:
  LODWORD(v20) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v20 = v20;
    goto LABEL_28;
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_258D073A4()
{
  v0 = sub_258D16C84();
  __swift_allocate_value_buffer(v0, qword_27F980BF8);
  __swift_project_value_buffer(v0, qword_27F980BF8);
  return sub_258D16C74();
}

uint64_t sub_258D07428@<X0>(uint64_t *a1@<X8>)
{
  result = cosl_codec_map();
  *a1 = result;
  return result;
}

void *sub_258D07458(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return cosl_codec_map();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C28, ">");
  result = sub_258D17B84();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_258D0751C()
{
  cosl_codec_unmap();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_258D07554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  decoded_size = cosl_codec_get_decoded_size();
  if (decoded_size <= 100000)
  {
    v10 = sub_258D09774(decoded_size);
    v11 = v9;
    sub_258D08F1C(&v10, 0);

    sub_258D08898(&v10, a3, a1, a2, MEMORY[0x277D82928], a4);
    sub_258CD7210(v10, v11);
  }

  else
  {
    *a4 = xmmword_258D19940;
  }
}

uint64_t sub_258D07638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, __int128 *a7@<X8>)
{
  v10 = *(a3 + 16);
  if (a1)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    v12 = a5 - a4;
  }

  else
  {
    v12 = 0;
  }

  result = a6(v10, a1, v11, a4, v12);
  if (!result)
  {
    v17 = xmmword_258D19940;
    goto LABEL_11;
  }

  v14 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C18, ">>");
    v19[3] = v15;
    v19[4] = sub_258D09694();
    v16 = swift_allocObject();
    v19[0] = v16;
    v16[2] = 0;
    v16[3] = v14;
    v16[4] = a1;
    v16[5] = a2;
    __swift_project_boxed_opaque_existential_1(v19, v15);
    sub_258D17EA4();
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v17 = v18;
LABEL_11:
    *a7 = v17;
    return result;
  }

  __break(1u);
  return result;
}

MessagesBlastDoorSupport::LiteMessageCompressor __swiftcall LiteMessageCompressor.init()()
{
  v1 = v0;
  v15 = MEMORY[0x277D84F90];
  v2 = 10;
  sub_258D17C04();
  v3 = &unk_286A0EAB0;
  do
  {
    v4 = *v3;
    v13[0] = *(v3 - 1);
    v13[1] = v4;

    sub_258D0785C(v13, &v14);
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_258D17BE4();
    sub_258D17C14();
    sub_258D17C24();
    result.codecs._rawValue = sub_258D17BF4();
    v3 += 2;
    --v2;
  }

  while (v2);
  *v1 = v15;
  return result;
}

uint64_t sub_258D0785C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_258D16A84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = *a1;
  v14 = a1[1];
  v45 = type metadata accessor for LiteMessageCompressor.Codec();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v43 = v14;
  v44 = v13;
  v17 = sub_258D17884();
  v18 = sub_258D17884();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_258D16A54();

    (*(v4 + 32))(v12, v10, v3);
    (*(v4 + 16))(v7, v12, v3);
    v20 = swift_allocObject();
    v21 = sub_258D16A64();
    v23 = v22;
    v24 = v46;
    v25 = sub_258D07458(v21, v22);
    v19 = v24;
    if (!v24)
    {
      v33 = v25;
      v23, v26, v27, v28, v29, v30, v31, v32;
      v34 = *(v4 + 8);
      v34(v7, v3);
      result = (v34)(v12, v3);
      *(v20 + 16) = v33;
      *v49 = v20;
      return result;
    }
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_258D17B94();
    v48, v36, v37, v38, v39, v40, v41, v42;
    v47 = 0xD000000000000015;
    v48 = 0x8000000258D1C150;
    MEMORY[0x259C99B70](v44, v43);
    sub_258D17C44();
    __break(1u);
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t LiteMessageCompressor.encode(_:)(uint64_t id, unint64_t a2)
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  if (*v2 >> 62)
  {
    goto LABEL_158;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_159:
    v7 = 0;
    v10 = 0xF000000000000000;
    v11 = MEMORY[0x277D84F98];
    goto LABEL_160;
  }

LABEL_3:
  v6 = 0;
  v7 = 0;
  v143 = 0;
  v144 = id;
  v153 = 0;
  v149 = v4 & 0xC000000000000001;
  v8 = a2 >> 62;
  v140 = v4 & 0xFFFFFFFFFFFFFF8;
  v141 = id;
  v138 = (id >> 32) - id;
  v139 = id >> 32;
  v9 = BYTE6(a2);
  v133 = BYTE6(a2) << 32;
  v134 = BYTE6(a2) << 48;
  v10 = 0xF000000000000000;
  v11 = MEMORY[0x277D84F98];
  v147 = BYTE6(a2);
  v148 = v4;
  v150 = a2 >> 62;
  v146 = v5;
  v142 = a2;
  while (1)
  {
    if (v149)
    {
      id = MEMORY[0x259C99DC0](v6, v4);
      v154 = id;
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_140;
      }
    }

    else
    {
      if (v6 >= *(v140 + 16))
      {
        goto LABEL_143;
      }

      v154 = *(v4 + 8 * v6 + 32);

      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        v101 = id;
        v5 = sub_258D17C54();
        id = v101;
        if (!v5)
        {
          goto LABEL_159;
        }

        goto LABEL_3;
      }
    }

    v15 = v11;
    v151 = v14;
    v152 = v6;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        memset(v155, 0, 14);
        *&v157 = v144;
        *(&v157 + 1) = a2;
        v28 = v153;
        sub_258D08F1C(&v157, 0);
        v156 = v157;

        v29 = MEMORY[0x277D82930];
        v30 = v155;
        v31 = v154;
LABEL_55:
        sub_258D08898(&v156, v31, v155, v30, v29, &v157);
        sub_258CD7210(v156, *(&v156 + 1));
        goto LABEL_61;
      }

      v18 = v7;
      v19 = *(v144 + 16);
      v20 = *(v144 + 24);
      id = sub_258D16984();
      v21 = id;
      v22 = v154;
      if (id)
      {
        id = sub_258D169B4();
        if (__OFSUB__(v19, id))
        {
          goto LABEL_148;
        }

        v21 += v19 - id;
      }

      v23 = __OFSUB__(v20, v19);
      v24 = v20 - v19;
      if (v23)
      {
        goto LABEL_145;
      }

      v25 = sub_258D169A4();
      id = 0;
      if (v25 >= v24)
      {
        v4 = v24;
      }

      else
      {
        v4 = v25;
      }

      if (v21)
      {
        v26 = v4 + v21;
      }

      else
      {
        v26 = 0;
      }

      v27 = 0xC000000000000000;
      v7 = v18;
      if (v21 && v4)
      {
        v28 = v153;
        if (v4 <= 14)
        {
          if (v4 < 0)
          {
            goto LABEL_154;
          }

          id = 0;
          v27 = v135 & 0xF00000000000000 | (v4 << 48);
          v135 = v27;
          goto LABEL_60;
        }

        goto LABEL_51;
      }

      v28 = v153;
    }

    else
    {
      if (!v8)
      {
        v155[0] = v144;
        LOWORD(v155[1]) = a2;
        BYTE2(v155[1]) = BYTE2(a2);
        BYTE3(v155[1]) = BYTE3(a2);
        BYTE4(v155[1]) = BYTE4(a2);
        BYTE5(v155[1]) = BYTE5(a2);
        if (v9)
        {
          if (v9 <= 0xE)
          {
            v17 = 0;
            v16 = v137 & 0xF00000000000000 | v134;
            v137 = v16;
          }

          else
          {
            sub_258D169C4();
            swift_allocObject();
            v16 = sub_258D16994() | 0x4000000000000000;
            v17 = v133;
          }
        }

        else
        {
          v17 = 0;
          v16 = 0xC000000000000000;
        }

        *&v157 = v17;
        *(&v157 + 1) = v16;
        v28 = v153;
        sub_258D08F1C(&v157, 0);
        v156 = v157;

        v29 = MEMORY[0x277D82930];
        v30 = v155 + v9;
        v31 = v154;
        goto LABEL_55;
      }

      if (v139 < v141)
      {
        goto LABEL_144;
      }

      v21 = sub_258D16984();
      if (v21)
      {
        id = sub_258D169B4();
        v22 = v154;
        if (__OFSUB__(v141, id))
        {
          goto LABEL_149;
        }

        v21 += v141 - id;
      }

      else
      {
        v22 = v154;
      }

      v32 = sub_258D169A4();
      id = 0;
      if (v32 >= v138)
      {
        v4 = v138;
      }

      else
      {
        v4 = v32;
      }

      if (v21)
      {
        v26 = v4 + v21;
      }

      else
      {
        v26 = 0;
      }

      v27 = 0xC000000000000000;
      v28 = v153;
      if (v21 && v4)
      {
        if (v4 <= 14)
        {
          if (v4 < 0)
          {
            goto LABEL_155;
          }

          id = 0;
          v27 = v136 & 0xF00000000000000 | (v4 << 48);
          v136 = v27;
          goto LABEL_60;
        }

LABEL_51:
        sub_258D169C4();
        swift_allocObject();
        v33 = sub_258D16994();
        if (v4 >= 0x7FFFFFFF)
        {
          sub_258D16AD4();
          id = swift_allocObject();
          *(id + 16) = 0;
          *(id + 24) = v4;
          v27 = v33 | 0x8000000000000000;
        }

        else
        {
          id = v4 << 32;
          v27 = v33 | 0x4000000000000000;
        }

        v11 = v15;
      }
    }

LABEL_60:
    *&v157 = id;
    *(&v157 + 1) = v27;
    sub_258D08F1C(&v157, 0);
    v156 = v157;

    sub_258D08898(&v156, v22, v21, v26, MEMORY[0x277D82930], &v157);
    sub_258CD7210(v156, *(&v156 + 1));
    v4 = v148;
LABEL_61:
    v35 = *(&v157 + 1);
    v34 = v157;
    id = cosl_codec_get_id();
    v153 = v28;
    if (v35 >> 60 == 15)
    {
      v36 = id;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v11;
      id = sub_258CF61E4(v36);
      v39 = *v15->type;
      v40 = (v38 & 1) == 0;
      v23 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v23)
      {
        goto LABEL_141;
      }

      v42 = v38;
      if (v15[1].super.isa >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = v7;
          v69 = id;
          sub_258D09490();
          id = v69;
          v7 = v68;
        }
      }

      else
      {
        sub_258D0922C(v41, isUniquelyReferenced_nonNull_native);
        id = sub_258CF61E4(v36);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_168;
        }
      }

      v9 = v147;
      v11 = v157;
      if ((v42 & 1) == 0)
      {
        *(v157 + 8 * (id >> 6) + 64) |= 1 << id;
        *(v11[2].super.isa + id) = v36;
        *(*v11[2].bd + 8 * id) = -1;

        v48 = *v11->type;
        v23 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v23)
        {
          goto LABEL_146;
        }

        *v11->type = v49;
        goto LABEL_6;
      }

      *(*(v157 + 56) + 8 * id) = -1;
      goto LABEL_111;
    }

    a2 = v35 >> 62;
    v145 = v7;
    if ((v35 >> 62) > 1)
    {
      if (a2 == 2)
      {
        v47 = *(v34 + 16);
        v46 = *(v34 + 24);
        v45 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
          goto LABEL_150;
        }

        v44 = v10;
      }

      else
      {
        v44 = v10;
        v45 = 0;
      }
    }

    else if (a2)
    {
      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_151;
      }

      v44 = v10;
      v45 = HIDWORD(v34) - v34;
    }

    else
    {
      v44 = v10;
      v45 = BYTE6(v35);
    }

    v4 = id;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v157 = v11;
    v51 = sub_258CF61E4(v4);
    v53 = v15;
    v54 = v51;
    v55 = *v15->type;
    v56 = (v52 & 1) == 0;
    id = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_142;
    }

    v57 = v52;
    if (v53[1].super.isa < id)
    {
      break;
    }

    if ((v50 & 1) == 0)
    {
      id = sub_258D09490();
    }

LABEL_87:
    v10 = v44;
    v11 = v157;
    if (v57)
    {
      *(*(v157 + 56) + 8 * v54) = v45;
    }

    else
    {
      *(v157 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      *(v11[2].super.isa + v54) = v4;
      *(*v11[2].bd + 8 * v54) = v45;
      v59 = *v11->type;
      v23 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v23)
      {
        goto LABEL_147;
      }

      *v11->type = v60;
    }

    v7 = v145;
    v9 = v147;
    v4 = v148;
    if (v44 >> 60 == 15)
    {
      v61 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v63 = v44 >> 62;
      if ((v44 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v67 = *(v145 + 16);
          v66 = *(v145 + 24);
          v23 = __OFSUB__(v66, v67);
          v61 = v66 - v67;
          if (v23)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v61 = 0;
        }
      }

      else if (v63)
      {
        LODWORD(v61) = HIDWORD(v145) - v145;
        if (__OFSUB__(HIDWORD(v145), v145))
        {
          goto LABEL_156;
        }

        v61 = v61;
      }

      else
      {
        v61 = BYTE6(v44);
      }
    }

    if (a2 > 1)
    {
      if (a2 != 2)
      {
        a2 = v142;
        if (v61 <= 0)
        {
          goto LABEL_110;
        }

        goto LABEL_5;
      }

      v65 = *(v34 + 16);
      v64 = *(v34 + 24);
      v23 = __OFSUB__(v64, v65);
      v62 = v64 - v65;
      if (v23)
      {
        goto LABEL_152;
      }
    }

    else if (a2)
    {
      LODWORD(v62) = HIDWORD(v34) - v34;
      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_153;
      }

      v62 = v62;
    }

    else
    {
      v62 = BYTE6(v35);
    }

    a2 = v142;
    if (v62 >= v61)
    {
LABEL_110:
      sub_258D0199C(v34, v35);
LABEL_111:

      goto LABEL_6;
    }

LABEL_5:
    v12 = v11;
    v13 = cosl_codec_get_id();

    sub_258D0199C(v145, v10);
    v7 = v34;
    v10 = v35;
    v143 = v13;
    v11 = v12;
LABEL_6:
    v6 = v152 + 1;
    LODWORD(v8) = v150;
    if (v151 == v146)
    {
      if (v10 >> 60 != 15)
      {
        v70 = v11;
        sub_258CDBA34(v7, v10);
        if (qword_27F9807B8 != -1)
        {
          swift_once();
        }

        v71 = sub_258D16C84();
        __swift_project_value_buffer(v71, qword_27F980BF8);
        sub_258CFA9D0(v7, v10);
        sub_258CDBA34(v144, a2);
        v72 = sub_258D16C64();
        v73 = sub_258D17A54();
        if (!os_log_type_enabled(v72, v73))
        {
          sub_258D0199C(v7, v10);
          sub_258CD7210(v144, a2);
          sub_258D0199C(v7, v10);

LABEL_165:
          sub_258CFA9D0(v7, v10);
          v70, v125, v126, v127, v128, v129, v130, v131;
          sub_258D0199C(v7, v10);
          return v7;
        }

        v74 = v7;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v157 = v76;
        *v75 = 134218754;
        if (v150 > 1)
        {
          if (v150 == 2)
          {
            v78 = *(v144 + 16);
            v77 = *(v144 + 24);
            v9 = v77 - v78;
            if (!__OFSUB__(v77, v78))
            {
              goto LABEL_129;
            }

            __break(1u);
          }

          v9 = 0;
        }

        else if (v150)
        {
          if (__OFSUB__(HIDWORD(v144), v144))
          {
            __break(1u);
            goto LABEL_167;
          }

          v9 = HIDWORD(v144) - v144;
        }

LABEL_129:
        *(v75 + 4) = v9;
        sub_258CD7210(v144, a2);
        *(v75 + 12) = 2048;
        v79 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v79 != 2)
          {
            v80 = 0;
            goto LABEL_139;
          }

          v82 = *(v74 + 16);
          v81 = *(v74 + 24);
          v23 = __OFSUB__(v81, v82);
          v80 = v81 - v82;
          if (!v23)
          {
            goto LABEL_139;
          }

          __break(1u);
        }

        else if (!v79)
        {
          v80 = BYTE6(v10);
LABEL_139:
          *(v75 + 14) = v80;
          *(v75 + 22) = 2048;
          *(v75 + 24) = v143;
          sub_258D0199C(v74, v10);
          *(v75 + 32) = 2080;

          v83 = sub_258D17874();
          v85 = v84;
          v70, v84, v86, v87, v88, v89, v90, v91;
          v92 = sub_258CF5C38(v83, v85, &v157);
          v85, v93, v94, v95, v96, v97, v98, v99;
          *(v75 + 34) = v92;
          _os_log_impl(&dword_258CD3000, v72, v73, "Compressed %ld bytes to %ld (codec: %ld) (all results: %s)", v75, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v76);
          v100 = v76;
          v7 = v74;
          MEMORY[0x259C9A940](v100, -1, -1);
          MEMORY[0x259C9A940](v75, -1, -1);
          sub_258D0199C(v74, v10);
LABEL_164:

          goto LABEL_165;
        }

        LODWORD(v80) = HIDWORD(v74) - v74;
        if (!__OFSUB__(HIDWORD(v74), v74))
        {
          v80 = v80;
          goto LABEL_139;
        }

LABEL_167:
        __break(1u);
      }

LABEL_160:
      v70 = v11;
      if (qword_27F9807B8 != -1)
      {
        swift_once();
      }

      v102 = sub_258D16C84();
      __swift_project_value_buffer(v102, qword_27F980BF8);
      v72 = sub_258D16C64();
      v103 = sub_258D17A54();
      if (os_log_type_enabled(v72, v103))
      {
        v104 = swift_slowAlloc();
        v105 = v7;
        v106 = swift_slowAlloc();
        *&v157 = v106;
        *v104 = 136315138;

        v107 = sub_258D17874();
        v109 = v108;
        v70, v108, v110, v111, v112, v113, v114, v115;
        v116 = sub_258CF5C38(v107, v109, &v157);
        v109, v117, v118, v119, v120, v121, v122, v123;
        *(v104 + 4) = v116;
        _os_log_impl(&dword_258CD3000, v72, v103, "Did not compress data, no results were better than original size (all results: %s)", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        v124 = v106;
        v7 = v105;
        MEMORY[0x259C9A940](v124, -1, -1);
        MEMORY[0x259C9A940](v104, -1, -1);
      }

      goto LABEL_164;
    }
  }

  sub_258D0922C(id, v50);
  id = sub_258CF61E4(v4);
  if ((v57 & 1) == (v58 & 1))
  {
    v54 = id;
    goto LABEL_87;
  }

LABEL_168:
  result = sub_258D17E54();
  __break(1u);
  return result;
}

uint64_t sub_258D08898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, __int128 *a6@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v13)
    {

      sub_258CDBA34(v12, v11);
      sub_258CD7210(v12, v11);
      *&v36 = v12;
      *(&v36 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_258D19950;
      sub_258CD7210(0, 0xC000000000000000);
      sub_258D08BD4(&v36, a2, a3, a4, a5, a6);

      v28 = *(&v36 + 1) | 0x4000000000000000;
      *a1 = v36;
      a1[1] = v28;
    }

    else
    {

      sub_258CD7210(v12, v11);
      *&v36 = v12;
      WORD4(v36) = v11;
      BYTE10(v36) = BYTE2(v11);
      BYTE11(v36) = BYTE3(v11);
      BYTE12(v36) = BYTE4(v11);
      BYTE13(v36) = BYTE5(v11);
      BYTE14(v36) = BYTE6(v11);
      sub_258D07638(&v36, &v36 + BYTE6(v11), a2, a3, a4, a5, a6);
      v14 = v36;
      v15 = DWORD2(v36) | ((WORD6(v36) | (BYTE14(v36) << 16)) << 32);

      *a1 = v14;
      a1[1] = v15;
    }

    return result;
  }

  if (v13 != 2)
  {
    *(&v36 + 7) = 0;
    *&v36 = 0;
    sub_258D07638(&v36, &v36, a2, a3, a4, a5, a6);
  }

  sub_258CD7210(v12, v11);
  *&v36 = v12;
  *(&v36 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_258D19950;
  sub_258CD7210(0, 0xC000000000000000);
  sub_258D16A94();
  v17 = *(&v36 + 1);
  v19 = *(v36 + 16);
  v18 = *(v36 + 24);
  v20 = sub_258D16984();
  if (!v20)
  {

    __break(1u);
    return result;
  }

  v21 = v20;
  v22 = sub_258D169B4();
  v23 = v19 - v22;
  if (__OFSUB__(v19, v22))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v24 = __OFSUB__(v18, v19);
  v25 = v18 - v19;
  if (v24)
  {
    goto LABEL_16;
  }

  v26 = sub_258D169A4();
  if (v26 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  sub_258D07638(v21 + v23, v21 + v23 + v27, a2, a3, a4, a5, a6);

  *a1 = v36;
  a1[1] = v17 | 0x8000000000000000;
  return result;
}

uint64_t sub_258D08BD4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, __int128 *a6@<X8>)
{
  result = sub_258D16AA4();
  v14 = *a1;
  v13 = a1[1];
  if (v13 < v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = a6;
  v21 = a3;

  result = sub_258D16984();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = result;
  result = sub_258D169B4();
  v16 = v14 - result;
  if (__OFSUB__(v14, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v13 - v14;
  v18 = sub_258D169A4();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  sub_258D07638(v15 + v16, v15 + v16 + v19, a2, v21, a4, a5, v20);
}

uint64_t sub_258D08CC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      sub_258D07554(v11, v6, a3, a4);
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_258D08E68(v7, v8, a3, a4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258D08E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  result = sub_258D16984();
  v9 = result;
  if (result)
  {
    result = sub_258D169B4();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_258D169A4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_258D07554(v9, v15, a3, a4);
}

uint64_t *sub_258D08F1C(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_258CD7210(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_258D19950;
      sub_258CD7210(0, 0xC000000000000000);
      result = sub_258D09184(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_258CD7210(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_258CD7210(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_258D19950;
  sub_258CD7210(0, 0xC000000000000000);
  sub_258D16A94();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_258D16984();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_258D169B4();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_258D169A4();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_258D09184(int *a1, int a2)
{
  result = sub_258D16AA4();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_258D16984();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_258D169B4();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_258D169A4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_258D0922C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C10, ":>");
  result = sub_258D17C74();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_258D17EB4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_258D09490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C10, ":>");
  v2 = *v0;
  v3 = sub_258D17C64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_258D095DC(uint64_t *a1, int a2)
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

uint64_t sub_258D09624(uint64_t result, int a2, int a3)
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

unint64_t sub_258D09694()
{
  result = qword_27F980C20;
  if (!qword_27F980C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980C18, ">>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C20);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_258D09774(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_258D10C08(result);
    }

    else
    {
      sub_258D169C4();
      swift_allocObject();
      sub_258D16994();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_258D16AD4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void LiteRelayTextMessageUnpacker.unpack(from:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v104 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE0, &qword_258D198B0);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = &v94 - v5;
  v6 = sub_258D16B54();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x28223BE20](v6);
  v99 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258D16EF4();
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x28223BE20](v8);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for LiteRelayAcknowledgmentMessageContent(0);
  MEMORY[0x28223BE20](v106);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE8, &qword_258D198B8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v94 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v94 - v19;
  v21 = sub_258D17384();
  v105 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v94 - v25;
  v27 = v107;
  sub_258CDBA34(a1, v107);
  v112[0] = sub_258D042B4(a1, v27);
  v112[1] = v28;
  v112[2] = v29;
  v30 = v113;
  v31 = sub_258D04144(3);
  if (v30)
  {
    v112[0], v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v95 = v18;
    v96 = v20;
    v94 = v15;
    v39 = v105;
    v40 = v106;
    v113 = v26;
    v107 = v21;
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v41 = v113;
      sub_258D17374();
      v42 = v39;
      v43 = *(v39 + 16);
      v44 = v107;
      v43(v24, v41, v107);
      v45 = (*(v42 + 88))(v24, v44);
      if (v45 == *MEMORY[0x277CF23F8])
      {
        sub_258D12E3C();
        v112[0], v46, v47, v48, v49, v50, v51, v52;
        (*(v102 + 56))(v96, 1, 1, v103);
        sub_258D173A4();
        (*(v42 + 8))(v113, v107);
      }

      else if (v45 == *MEMORY[0x277CF23F0])
      {
        sub_258D12830(v112, v11);
        v112[0], v53, v54, v55, v56, v57, v58, v59;
        (*(v97 + 16))(v99, &v11[*(v40 + 20)], v98);
        v60 = sub_258D16ED4();
        v61 = *(v60 - 8);
        v62 = v100;
        (*(v61 + 16))(v100, v11, v60);
        (*(v61 + 56))(v62, 0, 1, v60);

        v63 = v101;
        sub_258D16EE4();
        v64 = v102;
        v65 = v95;
        v66 = v103;
        (*(v102 + 16))(v95, v63, v103);
        (*(v64 + 56))(v65, 0, 1, v66);

        sub_258D173A4();
        (*(v64 + 8))(v63, v66);
        sub_258D0A04C(v11);
        (*(v42 + 8))(v113, v44);
      }

      else
      {
        sub_258D14780();
        v67 = sub_258CDB2E4();
        v69 = v68;
        v112[0], v68, v70, v71, v72, v73, v74, v75;
        v76 = (v69 >> 56) & 0xF;
        v108 = v67;
        v109 = v69;
        if ((v69 & 0x2000000000000000) == 0)
        {
          v76 = v67 & 0xFFFFFFFFFFFFLL;
        }

        v110 = 0;
        v111 = v76;
        v77 = sub_258D0C5F8(&v108);
        v109, v78, v79, v80, v81, v82, v83, v84;
        Array<A>.spansAsPlainText.getter(v77);
        v77, v85, v86, v87, v88, v89, v90, v91;
        (*(v102 + 56))(v94, 1, 1, v103);
        sub_258D173A4();
        v92 = *(v42 + 8);
        v93 = v107;
        v92(v113, v107);
        v92(v24, v93);
      }
    }
  }
}

uint64_t sub_258D0A04C(uint64_t a1)
{
  v2 = type metadata accessor for LiteRelayAcknowledgmentMessageContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258D0A0AC()
{
  result = qword_27F980950;
  if (!qword_27F980950)
  {
    sub_258D173B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980950);
  }

  return result;
}

IMMessagesBlastDoorInterfaceInternal *LiteTextParser.parse(_:)(uint64_t a1, IMMessagesBlastDoorInterfaceInternal *a2)
{
  v2 = (a2 >> 56) & 0xF;
  v12 = a1;
  v13 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v14 = 0;
  v15 = v2;

  v3 = sub_258D0C5F8(&v12);
  v13, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t Array<A>.spansAsPlainText.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    while (1)
    {
      v15 = *v2++;
      v14 = v15;
      v16 = v15 >> 62;
      if (v15 >> 62)
      {
        if (v16 == 1)
        {
          goto LABEL_5;
        }

        v17 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v5 = Array<A>.spansAsPlainText.getter(v17);
        v3 = v6;
      }

      else
      {
        v4 = *(v14 + 16);
        v3 = *(v14 + 24);

        v5 = v4;
        v6 = v3;
      }

      MEMORY[0x259C99B70](v5, v6);

      v3, v7, v8, v9, v10, v11, v12, v13;
LABEL_5:
      if (!--v1)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_258D0A258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      v8 = v6 >> 62;
      v9 = *v4 >> 62;
      if (v6 >> 62)
      {
        if (v8 == 1)
        {
          if (v9 != 1)
          {
            return 0;
          }
        }

        else
        {
          if (v9 != 2)
          {
            return 0;
          }

          v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();
          swift_retain_n();
          LOBYTE(v10) = sub_258D0A258(v10, v11);

          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v9)
        {
          return 0;
        }

        v12 = *(v5 + 16) == *(v7 + 16) && *(v5 + 24) == *(v7 + 24);
        if (!v12 && (sub_258D17E14() & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_258D0A394()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_258D0A3B0(uint64_t a1@<X0>, IMMessagesBlastDoorInterfaceInternal *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v11 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v11 || (sub_258D17E14() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {
    0xE200000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_258D17E14();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_258D0A488(uint64_t a1)
{
  v2 = sub_258D0D290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A4C4(uint64_t a1)
{
  v2 = sub_258D0D290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0A500()
{
  v1 = 0x72656B72616DLL;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865546E69616C70;
  }
}

uint64_t sub_258D0A568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, IMMessagesBlastDoorInterfaceInternal *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_258D0E284(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_258D0A59C(uint64_t a1)
{
  v2 = sub_258D0D23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A5D8(uint64_t a1)
{
  v2 = sub_258D0D23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0A620(uint64_t a1)
{
  v2 = sub_258D0D38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A65C(uint64_t a1)
{
  v2 = sub_258D0D38C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258D0A698(uint64_t a1@<X0>, IMMessagesBlastDoorInterfaceInternal *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, _BYTE *a9@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v20 = 0;
  }

  else
  {
    v12 = sub_258D17E14();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a9 = v20 & 1;
}

uint64_t sub_258D0A718(uint64_t a1)
{
  v2 = sub_258D0D434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A754(uint64_t a1)
{
  v2 = sub_258D0D434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTextSpan.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C38, &qword_258D19A20);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C40, &qword_258D19A28);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C48, &qword_258D19A30);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C50, &qword_258D19A38);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D23C();
  sub_258D17F34();
  if (!(v15 >> 62))
  {
    v17 = *(v15 + 24);
    v41 = 0;
    sub_258D0D434();

    v16 = v39;
    sub_258D17D64();
    sub_258D17DC4();
    v17, v18, v19, v20, v21, v22, v23, v24;
    (*(v32 + 8))(v11, v9);
    return (*(v38 + 8))(v14, v16);
  }

  if (v15 >> 62 == 1)
  {
    v42 = 1;
    sub_258D0D38C();
    v16 = v39;
    sub_258D17D64();
    sub_258D0D3E0();
    sub_258D17DE4();
    (*(v33 + 8))(v8, v6);
    return (*(v38 + 8))(v14, v16);
  }

  v26 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v45 = 2;
  sub_258D0D290();
  v27 = v34;
  v28 = v39;
  sub_258D17D64();
  v44 = 0;
  sub_258D0D2E4();
  v30 = v36;
  v29 = v37;
  sub_258D17DE4();
  if (v29)
  {
    (*(v35 + 8))(v27, v30);
    return (*(v38 + 8))(v14, v28);
  }

  else
  {
    v40 = v26;
    v43 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C70, &qword_258D19A40);
    sub_258D0D4DC(&qword_27F980C78, sub_258D0D338, MEMORY[0x277D83948]);
    sub_258D17DE4();
    (*(v35 + 8))(v27, v30);
    return (*(v38 + 8))(v14, v28);
  }
}

uint64_t LiteTextSpan.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CA0, &qword_258D19A48);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v50 = &v43 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CA8, &qword_258D19A50);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CB0, &qword_258D19A58);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CB8, &qword_258D19A60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_258D0D23C();
  v16 = v51;
  sub_258D17F14();
  if (!v16)
  {
    v17 = v50;
    v43 = v12;
    v51 = v14;
    v18 = sub_258D17D54();
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = *(v18 + 32);
      if (v20 == 1 && v21 != 3)
      {
        if (*(v18 + 32))
        {
          if (v21 != 1)
          {
            v57 = 2;
            sub_258D0D290();
            v32 = v17;
            v33 = v51;
            sub_258D17CA4();
            v34 = v49;
            v46 = v19;
            v35 = swift_allocObject();
            v56 = 0;
            sub_258D0D488();
            v36 = v47;
            v37 = v32;
            sub_258D17D34();
            v38 = v43;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C70, &qword_258D19A40);
            v55 = 1;
            sub_258D0D4DC(&qword_27F980CD0, sub_258D0D554, MEMORY[0x277D83978]);
            sub_258D17D34();
            (*(v48 + 8))(v37, v36);
            (*(v38 + 8))(v33, v11);
            swift_unknownObjectRelease();
            v31 = v35 | 0x8000000000000000;
LABEL_15:
            *v34 = v31;
            return __swift_destroy_boxed_opaque_existential_0(v52);
          }

          v54 = 1;
          sub_258D0D38C();
          v27 = v7;
          v28 = v51;
          sub_258D17CA4();
          v29 = swift_allocEmptyBox();
          sub_258D0D5A8();
          v30 = v44;
          sub_258D17D34();
          (*(v46 + 8))(v27, v30);
          (*(v43 + 8))(v28, v11);
          swift_unknownObjectRelease();
          v31 = v29 | 0x4000000000000000;
        }

        else
        {
          v53 = 0;
          sub_258D0D434();
          sub_258D17CA4();
          v46 = v19;
          v31 = swift_allocObject();
          v39 = sub_258D17D14();
          v41 = v40;
          (*(v45 + 8))(v10, v8);
          (*(v43 + 8))(v51, v11);
          swift_unknownObjectRelease();
          *(v31 + 16) = v39;
          *(v31 + 24) = v41;
        }

        v34 = v49;
        goto LABEL_15;
      }
    }

    v23 = sub_258D17BC4();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CC0, &qword_258D19A68);
    *v25 = &type metadata for LiteTextSpan;
    v26 = v51;
    sub_258D17CB4();
    sub_258D17BB4();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v43 + 8))(v26, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_258D0B464(uint64_t a1)
{
  v2 = sub_258D0D5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0B4A0(uint64_t a1)
{
  v2 = sub_258D0D5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0B4E8(uint64_t a1)
{
  v2 = sub_258D0D650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0B524(uint64_t a1)
{
  v2 = sub_258D0D650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTextAttribute.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CE8, &qword_258D19A70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CF0, &qword_258D19A78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D5FC();
  sub_258D17F34();
  sub_258D0D650();
  sub_258D17D64();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t LiteTextAttribute.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D08, &qword_258D19A80);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D10, &qword_258D19A88);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D5FC();
  sub_258D17F14();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_258D17D54() + 16) == 1)
    {
      sub_258D0D650();
      sub_258D17CA4();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_258D17BC4();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CC0, &qword_258D19A68);
      *v13 = &type metadata for LiteTextAttribute;
      sub_258D17CB4();
      sub_258D17BB4();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258D0BA44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CE8, &qword_258D19A70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CF0, &qword_258D19A78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D5FC();
  sub_258D17F34();
  sub_258D0D650();
  sub_258D17D64();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_258D0BC1C(void *a1@<X0>, IMMessagesBlastDoorInterfaceInternal *a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_258D17E14();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_258D0BCA4(uint64_t a1)
{
  v2 = sub_258D0D6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0BCE0(uint64_t a1)
{
  v2 = sub_258D0D6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0BD1C(uint64_t a1)
{
  v2 = sub_258D0D6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0BD58(uint64_t a1)
{
  v2 = sub_258D0D6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTextMarker.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D18, &qword_258D19A90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D20, &qword_258D19A98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D6A4();
  sub_258D17F34();
  sub_258D0D6F8();
  sub_258D17D64();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t LiteTextMarker.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D38, &qword_258D19AA0);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D40, &qword_258D19AA8);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D6A4();
  sub_258D17F14();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_258D17D54() + 16) == 1)
    {
      sub_258D0D6F8();
      sub_258D17CA4();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_258D17BC4();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CC0, &qword_258D19A68);
      *v13 = &type metadata for LiteTextMarker;
      sub_258D17CB4();
      sub_258D17BB4();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258D0C2A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D18, &qword_258D19A90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D20, &qword_258D19A98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D6A4();
  sub_258D17F34();
  sub_258D0D6F8();
  sub_258D17D64();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void static LiteControlCharacters.all.setter(void *a1)
{
  swift_beginAccess();
  v2 = off_27F980C30;
  off_27F980C30 = a1;
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_258D0C5A0(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  v2 = off_27F980C30;
  off_27F980C30 = v1;
  v2, v3, v4, v5, v6, v7, v8, v9;
}

IMMessagesBlastDoorInterfaceInternal *sub_258D0C5F8(uint64_t a1)
{
  v138 = 0;
  v139 = 0xE000000000000000;
  v137 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = sub_258D17964();
  if (v3)
  {
    v10 = v2;
    v11 = v3;
    v133 = xmmword_258D19090;
    do
    {
      if (v10 == 1 && v11 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
      {
        v11, v3, v4, v5, v6, v7, v8, v9;
        v13 = *(a1 + 8);
        v134 = *a1;
        v135 = v13;
        v136 = *(a1 + 16);

        v10 = sub_258D17964();
        v11 = v14;
        v135, v14, v15, v16, v17, v18, v19, v20;
        if (v11)
        {
          v21 = swift_beginAccess();
          v22 = off_27F980C30;
          v134 = v10;
          v135 = v11;
          MEMORY[0x28223BE20](v21);
          v132 = &v134;

          v23 = sub_258D0D0B4(sub_258D0E4BC, v131, v22);
          v22, v24, v25, v26, v27, v28, v29, v30;
          if (v23)
          {
            sub_258D17964();
            v38, v38, v39, v40, v41, v42, v43, v44;
            goto LABEL_13;
          }

          v11, v31, v32, v33, v34, v35, v36, v37;
        }

        sub_258D0CEB4(a1, &v134);
        sub_258D0CCBC(&v134, &v138, &v137);
        v12 = v134;
      }

      else
      {
        if ((v10 != 2 || v11 != 0xE100000000000000) && (sub_258D17E14() & 1) == 0)
        {
          if (v10 == 3 && v11 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
          {
            v11, v3, v4, v5, v6, v7, v8, v9;
            break;
          }

          if (v10 == 25 && v11 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
          {
            v11, v3, v4, v5, v6, v7, v8, v9;
            swift_beginAccess();
            MEMORY[0x259C99B70](2570, 0xE200000000000000);
            swift_endAccess();
            v103 = v138;
            v102 = v139;
            v104 = HIBYTE(v139) & 0xF;
            if ((v139 & 0x2000000000000000) == 0)
            {
              v104 = v138 & 0xFFFFFFFFFFFFLL;
            }

            if (!v104)
            {
              goto LABEL_6;
            }

            v105 = swift_allocObject();
            *(v105 + 16) = v103;
            *(v105 + 24) = v102;
            swift_beginAccess();
            v106 = v137;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v106 = sub_258D03708(0, *v106->type + 1, 1, v106, v107, v108, v109, v110);
            }

            v112 = *v106->type;
            isa = v106[1].super.isa;
            if (v112 >= isa >> 1)
            {
              v106 = sub_258D03708((isa > 1), v112 + 1, 1, v106, v107, v108, v109, v110);
            }

            *v106->type = v112 + 1;
            *&v106[1].bd[8 * v112] = v105;
            v137 = v106;
            swift_endAccess();
            v138 = 0;
            v139 = 0xE000000000000000;
            v52 = v102;
            goto LABEL_15;
          }

          v113 = swift_beginAccess();
          v114 = off_27F980C30;
          v134 = v10;
          v135 = v11;
          MEMORY[0x28223BE20](v113);
          v132 = &v134;

          v115 = sub_258D0D0B4(sub_258D0E3A8, v131, v114);
          v114, v116, v117, v118, v119, v120, v121, v122;
          if (v115)
          {
LABEL_14:
            v52 = v11;
LABEL_15:
            v52, v45, v46, v47, v48, v49, v50, v51;
            goto LABEL_6;
          }

LABEL_13:
          swift_beginAccess();
          MEMORY[0x259C99B60](v10, v11);
          swift_endAccess();
          goto LABEL_14;
        }

        v11, v3, v4, v5, v6, v7, v8, v9;
        v53 = sub_258D17964();
        if (v54)
        {
          v55 = v53;
          v56 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E08, &qword_258D1A5B0);
          v57 = swift_allocObject();
          *(v57 + 16) = v133;
          *(v57 + 32) = v55;
          *(v57 + 40) = v56;
          v134 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E10, &qword_258D1A5B8);
          sub_258D0E3DC();
          v58 = sub_258D17994();
          v60 = (v59 >> 56) & 0xF;
          v134 = v58;
          v135 = v59;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          *&v136 = 0;
          *(&v136 + 1) = v60;
          sub_258D17964();
          v61, v61, v62, v63, v64, v65, v66, v67;
          v135, v68, v69, v70, v71, v72, v73, v74;
          v75 = swift_allocObject();
          *(v75 + 16) = sub_258D0C5F8(a1);
          v76 = v75 | 0x8000000000000000;
        }

        else
        {
          v76 = 0xF000000000000007;
        }

        v78 = v138;
        v77 = v139;
        v79 = HIBYTE(v139) & 0xF;
        if ((v139 & 0x2000000000000000) == 0)
        {
          v79 = v138 & 0xFFFFFFFFFFFFLL;
        }

        if (v79)
        {
          v80 = swift_allocObject();
          *(v80 + 16) = v78;
          *(v80 + 24) = v77;
          swift_beginAccess();
          v81 = v137;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_258D03708(0, *v81->type + 1, 1, v81, v82, v83, v84, v85);
          }

          v87 = *v81->type;
          v86 = v81[1].super.isa;
          if (v87 >= v86 >> 1)
          {
            v81 = sub_258D03708((v86 > 1), v87 + 1, 1, v81, v82, v83, v84, v85);
          }

          *v81->type = v87 + 1;
          *&v81[1].bd[8 * v87] = v80;
          v137 = v81;
          swift_endAccess();
          v138 = 0;
          v139 = 0xE000000000000000;
          v77, v88, v89, v90, v91, v92, v93, v94;
        }

        if ((~v76 & 0xF000000000000007) == 0)
        {
          goto LABEL_6;
        }

        swift_beginAccess();
        v95 = v137;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_258D03708(0, *v95->type + 1, 1, v95, v96, v97, v98, v99);
        }

        v101 = *v95->type;
        v100 = v95[1].super.isa;
        if (v101 >= v100 >> 1)
        {
          v95 = sub_258D03708((v100 > 1), v101 + 1, 1, v95, v96, v97, v98, v99);
        }

        *v95->type = v101 + 1;
        *&v95[1].bd[8 * v101] = v76;
        v137 = v95;
        swift_endAccess();
        v12 = v76;
      }

      sub_258D0E3C4(v12);
LABEL_6:
      v10 = sub_258D17964();
      v11 = v3;
    }

    while (v3);
  }

  v134 = 0xF000000000000007;
  sub_258D0CCBC(&v134, &v138, &v137);
  v139, v123, v124, v125, v126, v127, v128, v129;
  swift_beginAccess();
  return v137;
}

void sub_258D0CCBC(uint64_t *a1, uint64_t *a2, IMMessagesBlastDoorInterfaceInternal **a3)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *a2;
  v7 = a2[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    swift_beginAccess();
    v10 = *a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_258D03708(0, *v10->type + 1, 1, v10, v12, v13, v14, v15);
      *a3 = v10;
    }

    v17 = *v10->type;
    isa = v10[1].super.isa;
    if (v17 >= isa >> 1)
    {
      v10 = sub_258D03708((isa > 1), v17 + 1, 1, v10, v12, v13, v14, v15);
      *a3 = v10;
    }

    *v10->type = v17 + 1;
    *&v10[1].bd[8 * v17] = v9;
    swift_endAccess();
    swift_beginAccess();
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    swift_beginAccess();
    v26 = *a3;

    v27 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v26;
    if ((v27 & 1) == 0)
    {
      v26 = sub_258D03708(0, *v26->type + 1, 1, v26, v28, v29, v30, v31);
      *a3 = v26;
    }

    v33 = *v26->type;
    v32 = v26[1].super.isa;
    if (v33 >= v32 >> 1)
    {
      v26 = sub_258D03708((v32 > 1), v33 + 1, 1, v26, v28, v29, v30, v31);
      *a3 = v26;
    }

    *v26->type = v33 + 1;
    *&v26[1].bd[8 * v33] = v5;
    swift_endAccess();
  }
}

void sub_258D0CEB4(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_258D17964();
  if (v5)
  {
    v12 = v4;
    v13 = v5;
    v14 = 0;
    do
    {
      if (v12 == 1 && v13 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
      {
        v22 = __OFADD__(v14++, 1);
        if (v22)
        {
          __break(1u);
          break;
        }
      }

      else if (v12 == 2 && v13 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
      {
        if (!v14)
        {
          v13, v5, v6, v7, v8, v9, v10, v11;
          sub_258D17964();
          v24, v24, v25, v26, v27, v28, v29, v30;
          0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
          v38 = swift_allocObject();
          *(v38 + 16) = sub_258D0C5F8(a1);
          v23 = v38 | 0x8000000000000000;
          goto LABEL_23;
        }
      }

      else if (v12 == 3 && v13 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
      {
        if (!v14)
        {
          v13, v5, v6, v7, v8, v9, v10, v11;
          sub_258D17964();
          v39, v39, v40, v41, v42, v43, v44, v45;
          0xE000000000000000, v46, v47, v48, v49, v50, v51, v52;
          v23 = swift_allocEmptyBox() | 0x4000000000000000;
          goto LABEL_23;
        }

        v22 = __OFSUB__(v14--, 1);
        if (v22)
        {
          __break(1u);
          return;
        }
      }

      MEMORY[0x259C99B60](v12, v13);
      v13, v15, v16, v17, v18, v19, v20, v21;
      v12 = sub_258D17964();
      v13 = v5;
    }

    while (v5);
  }

  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v23 = 0xF000000000000007;
LABEL_23:
  *a2 = v23;
}

uint64_t sub_258D0D0B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = a1(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t _s24MessagesBlastDoorSupport12LiteTextSpanO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      if (v4 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v4 >> 62 == 2)
    {
      v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v8) = sub_258D0A258(v8, v9);

      return v8 & 1;
    }

    return 0;
  }

  if (v4 >> 62)
  {
    return 0;
  }

  if (*(v3 + 16) == *(v4 + 16) && *(v3 + 24) == *(v4 + 24))
  {
    return 1;
  }

  return sub_258D17E14();
}

unint64_t sub_258D0D23C()
{
  result = qword_27F980C58;
  if (!qword_27F980C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C58);
  }

  return result;
}

unint64_t sub_258D0D290()
{
  result = qword_27F980C60;
  if (!qword_27F980C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C60);
  }

  return result;
}

unint64_t sub_258D0D2E4()
{
  result = qword_27F980C68;
  if (!qword_27F980C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C68);
  }

  return result;
}

unint64_t sub_258D0D338()
{
  result = qword_27F980C80;
  if (!qword_27F980C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C80);
  }

  return result;
}

unint64_t sub_258D0D38C()
{
  result = qword_27F980C88;
  if (!qword_27F980C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C88);
  }

  return result;
}

unint64_t sub_258D0D3E0()
{
  result = qword_27F980C90;
  if (!qword_27F980C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C90);
  }

  return result;
}

unint64_t sub_258D0D434()
{
  result = qword_27F980C98;
  if (!qword_27F980C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C98);
  }

  return result;
}

unint64_t sub_258D0D488()
{
  result = qword_27F980CC8;
  if (!qword_27F980CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CC8);
  }

  return result;
}

uint64_t sub_258D0D4DC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980C70, &qword_258D19A40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258D0D554()
{
  result = qword_27F980CD8;
  if (!qword_27F980CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CD8);
  }

  return result;
}

unint64_t sub_258D0D5A8()
{
  result = qword_27F980CE0;
  if (!qword_27F980CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CE0);
  }

  return result;
}

unint64_t sub_258D0D5FC()
{
  result = qword_27F980CF8;
  if (!qword_27F980CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CF8);
  }

  return result;
}

unint64_t sub_258D0D650()
{
  result = qword_27F980D00;
  if (!qword_27F980D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D00);
  }

  return result;
}

unint64_t sub_258D0D6A4()
{
  result = qword_27F980D28;
  if (!qword_27F980D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D28);
  }

  return result;
}

unint64_t sub_258D0D6F8()
{
  result = qword_27F980D30;
  if (!qword_27F980D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D30);
  }

  return result;
}

unint64_t sub_258D0D750()
{
  result = qword_27F980D48;
  if (!qword_27F980D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D48);
  }

  return result;
}

unint64_t sub_258D0D7A8()
{
  result = qword_27F980D50;
  if (!qword_27F980D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D50);
  }

  return result;
}

uint64_t sub_258D0D808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258D0D864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteTextSpan.AttributedSpansCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteTextSpan.AttributedSpansCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258D0DAF8()
{
  result = qword_27F980D58;
  if (!qword_27F980D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D58);
  }

  return result;
}

unint64_t sub_258D0DB50()
{
  result = qword_27F980D60;
  if (!qword_27F980D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D60);
  }

  return result;
}

unint64_t sub_258D0DBA8()
{
  result = qword_27F980D68;
  if (!qword_27F980D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D68);
  }

  return result;
}

unint64_t sub_258D0DC00()
{
  result = qword_27F980D70;
  if (!qword_27F980D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D70);
  }

  return result;
}

unint64_t sub_258D0DC58()
{
  result = qword_27F980D78;
  if (!qword_27F980D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D78);
  }

  return result;
}

unint64_t sub_258D0DCB0()
{
  result = qword_27F980D80;
  if (!qword_27F980D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D80);
  }

  return result;
}

unint64_t sub_258D0DD08()
{
  result = qword_27F980D88;
  if (!qword_27F980D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D88);
  }

  return result;
}

unint64_t sub_258D0DD60()
{
  result = qword_27F980D90;
  if (!qword_27F980D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D90);
  }

  return result;
}

unint64_t sub_258D0DDB8()
{
  result = qword_27F980D98;
  if (!qword_27F980D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D98);
  }

  return result;
}

unint64_t sub_258D0DE10()
{
  result = qword_27F980DA0;
  if (!qword_27F980DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DA0);
  }

  return result;
}

unint64_t sub_258D0DE68()
{
  result = qword_27F980DA8;
  if (!qword_27F980DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DA8);
  }

  return result;
}

unint64_t sub_258D0DEC0()
{
  result = qword_27F980DB0;
  if (!qword_27F980DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DB0);
  }

  return result;
}

unint64_t sub_258D0DF18()
{
  result = qword_27F980DB8;
  if (!qword_27F980DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DB8);
  }

  return result;
}

unint64_t sub_258D0DF70()
{
  result = qword_27F980DC0;
  if (!qword_27F980DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DC0);
  }

  return result;
}

unint64_t sub_258D0DFC8()
{
  result = qword_27F980DC8;
  if (!qword_27F980DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DC8);
  }

  return result;
}

unint64_t sub_258D0E020()
{
  result = qword_27F980DD0;
  if (!qword_27F980DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DD0);
  }

  return result;
}

unint64_t sub_258D0E078()
{
  result = qword_27F980DD8;
  if (!qword_27F980DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DD8);
  }

  return result;
}

unint64_t sub_258D0E0D0()
{
  result = qword_27F980DE0;
  if (!qword_27F980DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DE0);
  }

  return result;
}

unint64_t sub_258D0E128()
{
  result = qword_27F980DE8;
  if (!qword_27F980DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DE8);
  }

  return result;
}

unint64_t sub_258D0E180()
{
  result = qword_27F980DF0;
  if (!qword_27F980DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DF0);
  }

  return result;
}

unint64_t sub_258D0E1D8()
{
  result = qword_27F980DF8;
  if (!qword_27F980DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DF8);
  }

  return result;
}

unint64_t sub_258D0E230()
{
  result = qword_27F980E00;
  if (!qword_27F980E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E00);
  }

  return result;
}

uint64_t sub_258D0E284(uint64_t a1, IMMessagesBlastDoorInterfaceInternal *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x7865546E69616C70 && a2 == 0xE900000000000074;
  if (v10 || (sub_258D17E14() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x72656B72616DLL && a2 == 0xE600000000000000 || (sub_258D17E14() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF736E6170536465)
  {
    0xEF736E6170536465, 0xEF736E6170536465, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_258D17E14();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_258D0E3C4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_258D0E3DC()
{
  result = qword_27F980E18;
  if (!qword_27F980E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980E10, &qword_258D1A5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E18);
  }

  return result;
}

uint64_t sub_258D0E440(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258D17E14() & 1;
  }
}

uint64_t sub_258D0E508@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258D0E60C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t PreviewType.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

uint64_t sub_258D0E564()
{
  sub_258D17EC4();
  sub_258D17EE4();
  return sub_258D17EF4();
}

uint64_t sub_258D0E5AC(uint64_t a1)
{
  sub_258D17EC4();
  sub_258D17EE4();
  return sub_258D17EF4();
}

unsigned __int8 *sub_258D0E5F0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_258D0E60C(unsigned __int8 a1)
{
  v1 = 0;
  switch(a1)
  {
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Fu:
    case 0x70u:
    case 0x71u:
    case 0x74u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x83u:
    case 0x86u:
    case 0x87u:
    case 0x8Au:
    case 0x8Bu:
    case 0xAAu:
    case 0xB4u:
    case 0xB5u:
    case 0xBEu:
    case 0xC3u:
    case 0xC4u:
      return a1 | (v1 << 8);
    default:
      a1 = 0;
      v1 = 1;
      break;
  }

  return a1 | (v1 << 8);
}

unint64_t sub_258D0E664()
{
  result = qword_27F980E20;
  if (!qword_27F980E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E20);
  }

  return result;
}

unint64_t sub_258D0E6BC()
{
  result = qword_27F980E28;
  if (!qword_27F980E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E28);
  }

  return result;
}

uint64_t sub_258D0E780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingPushPayload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TopLevelDictionary.decryptedData.getter()
{
  v1 = v0 + *(type metadata accessor for TopLevelDictionary(0) + 20);
  v2 = *v1;
  sub_258CFA9D0(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for TopLevelDictionary(uint64_t a1)
{
  result = qword_280BCBDE8;
  if (!qword_280BCBDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TopLevelDictionary.decryptedData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TopLevelDictionary(0) + 20);
  sub_258D0199C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t TopLevelDictionary.shouldShowPeerErrors.setter(char a1)
{
  result = type metadata accessor for TopLevelDictionary(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TopLevelDictionary.encryptionTypeString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TopLevelDictionary(0) + 28));

  return v1;
}

void TopLevelDictionary.encryptionTypeString.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TopLevelDictionary(0) + 28);
  *(v5 + 8), v6, v7, v8, v9, v10, v11, v12;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t TopLevelDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E30, &qword_258D1A740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0ECBC();
  sub_258D17F34();
  LOBYTE(v13) = 0;
  type metadata accessor for IncomingPushPayload(0);
  sub_258D0F124(&qword_27F980E38, "A\aR)L3");
  sub_258D17DE4();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for TopLevelDictionary(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_258CFA9D0(v13, v10);
    sub_258D0ED10();
    sub_258D17DA4();
    sub_258D0199C(v13, v14);
    LOBYTE(v13) = 2;
    sub_258D17D84();
    LOBYTE(v13) = 3;
    sub_258D17D74();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_258D0ECBC()
{
  result = qword_280BCBE08;
  if (!qword_280BCBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE08);
  }

  return result;
}

unint64_t sub_258D0ED10()
{
  result = qword_27F980E40;
  if (!qword_27F980E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E40);
  }

  return result;
}

void TopLevelDictionary.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for IncomingPushPayload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E48, &qword_258D1A748);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TopLevelDictionary(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v13[*(v11 + 20)];
  v30 = a1;
  *v29 = xmmword_258D19940;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0ECBC();
  sub_258D17F14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    sub_258D0199C(*v29, *(v29 + 1));
  }

  else
  {
    v14 = v27;
    LOBYTE(v31) = 0;
    sub_258D0F124(&qword_280BCBDC0, &protocol conformance descriptor for IncomingPushPayload);
    v15 = v28;
    sub_258D17D34();
    v16 = v6;
    v17 = v13;
    sub_258D0F168(v16, v13);
    v33 = 1;
    sub_258D0F1CC();
    sub_258D17CF4();
    v18 = v31;
    v19 = v32;
    v20 = v29;
    sub_258D0199C(*v29, *(v29 + 1));
    *v20 = v18;
    *(v20 + 1) = v19;
    LOBYTE(v31) = 2;
    *(v17 + *(v10 + 24)) = sub_258D17CD4();
    LOBYTE(v31) = 3;
    v21 = sub_258D17CC4();
    v23 = v22;
    v24 = (v17 + *(v10 + 28));
    (*(v14 + 8))(v9, v15);
    *v24 = v21;
    v24[1] = v23;
    sub_258D0F220(v17, v26, type metadata accessor for TopLevelDictionary);
    __swift_destroy_boxed_opaque_existential_0(v30);
    sub_258D0F288(v17, type metadata accessor for TopLevelDictionary);
  }
}

uint64_t sub_258D0F124(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IncomingPushPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258D0F168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingPushPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258D0F1CC()
{
  result = qword_280BCBE10;
  if (!qword_280BCBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE10);
  }

  return result;
}

uint64_t sub_258D0F220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258D0F288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

MessagesBlastDoorSupport::TopLevelDictionary::CodingKeys_optional __swiftcall TopLevelDictionary.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = sub_258D17C94();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 4;
  if (v4 < 4)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

unint64_t TopLevelDictionary.CodingKeys.stringValue.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD000000000000026;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258D0F40C()
{
  v1 = *v0;
  sub_258D17EC4();
  v2 = "e";
  v3 = "IDSIncomingMessageDecryptedData";
  if (v1 != 2)
  {
    v3 = "geShouldShowPeerErrors";
  }

  if (v1)
  {
    v2 = "IDSIncomingMessagePushPayload";
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_258D17914();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
  return sub_258D17EF4();
}

void sub_258D0F4C4(uint64_t a1)
{
  v2 = "e";
  v3 = "IDSIncomingMessageDecryptedData";
  if (*v1 != 2)
  {
    v3 = "geShouldShowPeerErrors";
  }

  if (*v1)
  {
    v2 = "IDSIncomingMessagePushPayload";
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_258D17914();

  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_258D0F568(uint64_t a1)
{
  v2 = *v1;
  sub_258D17EC4();
  v3 = "e";
  v4 = "IDSIncomingMessageDecryptedData";
  if (v2 != 2)
  {
    v4 = "geShouldShowPeerErrors";
  }

  if (v2)
  {
    v3 = "IDSIncomingMessagePushPayload";
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_258D17914();
  (v5 | 0x8000000000000000), v6, v7, v8, v9, v10, v11, v12;
  return sub_258D17EF4();
}

void sub_258D0F628(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "e";
  v4 = "IDSIncomingMessageDecryptedData";
  v5 = 0xD000000000000026;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000028;
    v4 = "geShouldShowPeerErrors";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
    v3 = "IDSIncomingMessagePushPayload";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_258D0F6A0()
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD000000000000026;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

MessagesBlastDoorSupport::TopLevelDictionary::CodingKeys_optional sub_258D0F714@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = TopLevelDictionary.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_258D0F758(uint64_t a1)
{
  v2 = sub_258D0ECBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0F794(uint64_t a1)
{
  v2 = sub_258D0ECBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopLevelDictionary.encrypted.getter()
{
  v1 = (v0 + *(type metadata accessor for TopLevelDictionary(0) + 28));
  v2 = v1[1];
  if (!v2 || (*v1 == 1701736302 ? (v3 = v2 == 0xE400000000000000) : (v3 = 0), v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_258D17E14() ^ 1;
  }

  return v4 & 1;
}

unint64_t sub_258D0F840()
{
  result = qword_27F980E50;
  if (!qword_27F980E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E50);
  }

  return result;
}

unint64_t sub_258D0F898()
{
  result = qword_280BCBDF8;
  if (!qword_280BCBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDF8);
  }

  return result;
}

unint64_t sub_258D0F8F0()
{
  result = qword_280BCBE00;
  if (!qword_280BCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE00);
  }

  return result;
}

void sub_258D0F96C(uint64_t a1)
{
  type metadata accessor for IncomingPushPayload(319);
  if (v1 <= 0x3F)
  {
    sub_258D06004(319, &qword_27F980E58, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_258D06004(319, &qword_27F980BD0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_258D06004(319, &qword_27F980E60, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TopLevelDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TopLevelDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_258D0FBA8(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  DeviceRGB = CGImageGetColorSpace(v2);
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  BitmapInfo = CGImageGetBitmapInfo(v2);
  v7 = CGBitmapContextCreate(0, a1, a2, 8uLL, 0, DeviceRGB, BitmapInfo);

  if (v7)
  {
    CGContextSetInterpolationQuality(v7, kCGInterpolationHigh);
    sub_258D17A44();
    if (!CGBitmapContextCreateImage(v7))
    {
      sub_258D0FD78();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_258D0FD78();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

unint64_t sub_258D0FD78()
{
  result = qword_27F980E68;
  if (!qword_27F980E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E68);
  }

  return result;
}

unint64_t sub_258D0FDE0()
{
  result = qword_27F980E70;
  if (!qword_27F980E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E70);
  }

  return result;
}

uint64_t sub_258D0FE34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        v11 = a1;
LABEL_23:
        sub_258D16B34();
        v16 = 0;
        a1 = v11;
        goto LABEL_24;
      }

      v10 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_29;
      }

      v11 = a1;
      v12 = sub_258D16984();
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = v12;
      v14 = sub_258D169B4();
      if (__OFSUB__(v10, v14))
      {
        goto LABEL_31;
      }

      v15 = v10 - v14 + v13;
      a1 = sub_258D169A4();
      if (v15)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v11 = a1;
    v17 = *(a1 + 16);
    v18 = sub_258D16984();
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = sub_258D169B4();
    if (!__OFSUB__(v17, v20))
    {
      v21 = v17 - v20 + v19;
      sub_258D169A4();
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_258D169A4();
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_258D169A4();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 1;
LABEL_24:
  sub_258CD7210(a1, a2);
  v22 = sub_258D16B54();
  v23 = *(*(v22 - 8) + 56);

  return v23(a3, v16, 1, v22);
}

uint64_t sub_258D10084(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_258D10C28(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_258D10CE0(v3, v4);
    }

    else
    {
      v6 = sub_258D10D5C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t UUIDData.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258D16B54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UUIDData.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_258D16B54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UUIDData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v51 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v48 - v6;
  v7 = sub_258D16B54();
  v53 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v48 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v48 - v14;
  v16 = type metadata accessor for UUIDData(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v55;
  sub_258D17F04();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v48[1] = v10;
  v49 = v15;
  v48[0] = v13;
  v50 = v18;
  v20 = v54;
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_258D0F1CC();
  sub_258D17E34();
  v22 = v56;
  v21 = v57;
  sub_258CDBA34(v56, v57);
  v23 = v52;
  sub_258D0FE34(v22, v21, v52);
  v24 = v53;
  if ((*(v53 + 48))(v23, 1, v7) != 1)
  {
    sub_258CD7210(v22, v21);
    v31 = *(v24 + 32);
    v32 = v49;
    v31(v49, v23, v7);
    v33 = v50;
    v31(v50, v32, v7);
    v34 = v55;
    __swift_destroy_boxed_opaque_existential_0(v58);
    sub_258D0561C(v33, v20);
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  sub_258D10908(v23);
  v25 = sub_258D17BC4();
  swift_allocError();
  v27 = v26;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_258D17B94();
  result = MEMORY[0x259C99B70](0xD000000000000035, 0x8000000258D1C1C0);
  v29 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    v30 = 0;
    if (v29 != 2)
    {
      goto LABEL_13;
    }

    v36 = *(v22 + 16);
    v35 = *(v22 + 24);
    v37 = __OFSUB__(v35, v36);
    v30 = v35 - v36;
    if (!v37)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v29)
  {
    v30 = BYTE6(v21);
LABEL_13:
    v58[6] = v30;
    v38 = sub_258D17E04();
    v40 = v39;
    MEMORY[0x259C99B70](v38);
    v40, v41, v42, v43, v44, v45, v46, v47;
    MEMORY[0x259C99B70](11817, 0xE200000000000000);
    sub_258D17BB4();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84168], v25);
    swift_willThrow();
    sub_258CD7210(v22, v21);
    __swift_destroy_boxed_opaque_existential_0(v58);
    a1 = v55;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LODWORD(v30) = HIDWORD(v22) - v22;
  if (!__OFSUB__(HIDWORD(v22), v22))
  {
    v30 = v30;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for UUIDData(uint64_t a1)
{
  result = qword_280BCBD58;
  if (!qword_280BCBD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D10908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UUIDData.encode(to:)(void *a1)
{
  v3 = sub_258D16B54();
  v4 = sub_258D10084(v1, v1 + *(*(v3 - 8) + 64));
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D17F24();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_258D0ED10();
  sub_258D17E44();
  sub_258CD7210(v4, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_258D10B08(uint64_t a1)
{
  result = sub_258D16B54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_258D10B74@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_258D10C28(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_258D10CE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_258D10D5C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_258D10C08(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_258D10C28(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_258D10CE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_258D169C4();
  swift_allocObject();
  result = sub_258D16974();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_258D16AD4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_258D10D5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_258D169C4();
  swift_allocObject();
  result = sub_258D16974();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258D10DE0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E78, "60");
  v10 = sub_258D10E90();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_258D10B74(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_258D10E90()
{
  result = qword_27F980E80;
  if (!qword_27F980E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980E78, "60");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E80);
  }

  return result;
}

uint64_t TopLevelDictionary.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_258D177C4();
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258D16B54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUIDData(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for IncomingPushPayload(0);
  v15 = v1 + *(v14 + 20);
  v16 = *v15;
  v64 = *(v15 + 8);
  if ((v64 & 1) == 0)
  {
    v17 = v1 + *(v14 + 24);
    if ((*(v17 + 8) & 1) == 0)
    {
      v63 = v5;
      v18 = *v17;
      if (*v17)
      {
        v19 = v69;
        result = sub_258D114A0(*v17, v16);
        if (v19)
        {
          return result;
        }

        v62 = v18;
        v69 = 0;
        v58 = result;
        sub_258D036BC();
        v61 = v1;
        v21 = sub_258D17B04();
        v1 = v61;
        v60 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_258D190B0;
        sub_258D1143C(v1, v10);
        (*(v63 + 32))(v13, v10, v4);
        (*(v63 + 56))(v13, 0, 1, v4);
        v59 = sub_258D17604();
        v57 = v23;
        sub_258D10908(v13);
        *(v22 + 56) = MEMORY[0x277D837D0];
        v24 = sub_258CF695C();
        *(v22 + 64) = v24;
        v25 = v59;
        v59 = v22;
        v26 = v57;
        *(v22 + 32) = v25;
        *(v22 + 40) = v26;
        if ((v58 & 1) == 0)
        {
          v67 = v62;
          v68 = 0;
          v42 = sub_258D17604();
          v43 = v59;
          v44 = MEMORY[0x277D837D0];
          *(v59 + 96) = MEMORY[0x277D837D0];
          *v43[4].bd = v24;
          v43[3].super.isa = v42;
          *v43[3].bd = v45;
          v67 = v16;
          v68 = 0;
          v46 = sub_258D17604();
          *v43[5].type = v44;
          v43[6].super.isa = v24;
          *v43[4].type = v46;
          v43[5].super.isa = v47;
          v48 = sub_258D17A74();
          v49 = v60;
          sub_258D16B94("Retried message %@: date out of range: original %{public}@, timestamp %{public}@", 80, 2, &dword_258CD3000, v60, v48, v43);

          v43, v50, v51, v52, v53, v54, v55, v56;
          sub_258D17824();
          sub_258D1157C();
          swift_allocError();
          sub_258D17814();
          return swift_willThrow();
        }

        v67 = v62;
        v68 = 0;
        v27 = sub_258D17604();
        v28 = v59;
        *(v59 + 96) = MEMORY[0x277D837D0];
        *v28[4].bd = v24;
        v28[3].super.isa = v27;
        *v28[3].bd = v29;
        v67 = v16;
        v68 = 0;
        v30 = sub_258D17604();
        *v28[5].type = MEMORY[0x277D837D0];
        v28[6].super.isa = v24;
        *v28[4].type = v30;
        v28[5].super.isa = v31;
        v32 = sub_258D17A74();
        v33 = v60;
        sub_258D16B94("Retried message %@: using original %{public}@ vs timestamp %{public}@", 69, 2, &dword_258CD3000, v60, v32, v28);

        v28, v34, v35, v36, v37, v38, v39, v40;
      }

      v5 = v63;
    }
  }

  sub_258D1143C(v1, v10);
  (*(v5 + 32))(v7, v10, v4);
  v41 = v69;
  sub_258D177B4();
  if (v41)
  {
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    return sub_258D177D4();
  }
}

uint64_t sub_258D1143C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_258D114A0(unint64_t a1, unint64_t a2)
{
  sub_258D115D4();
  sub_258D17694();
  if (!v2)
  {
    sub_258D17694();
    sub_258D176A4();
    return v5 < 0x274A48A78001;
  }

  return v3;
}

unint64_t sub_258D1157C()
{
  result = qword_280BCBE28;
  if (!qword_280BCBE28)
  {
    sub_258D17824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE28);
  }

  return result;
}

unint64_t sub_258D115D4()
{
  result = qword_27F980E88;
  if (!qword_27F980E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E88);
  }

  return result;
}

void *sub_258D11628(void *result, void *a2)
{
  if (result)
  {
    v21 = *(v2 + OBJC_IVAR___BlastDoorLiteMessageCompressor_compressor);
    v4 = result;

    v5 = sub_258D16AF4();
    v7 = v6;
    v8 = LiteMessageCompressor.encode(_:)(v5, v6);
    v10 = v9;
    v12 = v11;
    sub_258CD7210(v5, v7);
    v21, v13, v14, v15, v16, v17, v18, v19;
    if (v10 >> 60 == 15)
    {

      return 0;
    }

    else
    {
      if (a2)
      {
        *a2 = v12;
      }

      sub_258CDBA34(v8, v10);
      v20 = sub_258D16AE4();
      sub_258D0199C(v8, v10);
      sub_258D0199C(v8, v10);

      return v20;
    }
  }

  return result;
}

id BlastDoorLiteMessageCompressor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlastDoorLiteMessageCompressor.init()()
{
  LiteMessageCompressor.init()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlastDoorLiteMessageCompressor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BlastDoorLiteMessageCompressor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlastDoorLiteMessageCompressor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258D1192C(uint64_t a1)
{
  sub_258D119A8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_258D119A8(uint64_t a1)
{
  if (!qword_27F980EA8)
  {
    sub_258D171B4();
    v1 = sub_258D17B34();
    if (!v2)
    {
      atomic_store(v1, &qword_27F980EA8);
    }
  }
}

void sub_258D11A48(uint64_t a1)
{
  sub_258D16B54();
  if (v1 <= 0x3F)
  {
    sub_258D119A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258D11B1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258D11B54(uint64_t a1)
{
  sub_258D16ED4();
  if (v1 <= 0x3F)
  {
    sub_258D16B54();
    if (v2 <= 0x3F)
    {
      sub_258D11BF0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258D11BF0()
{
  if (!qword_27F980E60)
  {
    v0 = sub_258D17B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F980E60);
    }
  }
}

uint64_t sub_258D11C40@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  result = sub_258CDB2E4();
  if (!v1)
  {
    v8 = (v7 >> 56) & 0xF;
    v27 = result;
    v28 = v7;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = result & 0xFFFFFFFFFFFFLL;
    }

    v29 = 0;
    v30 = v8;
    v9 = sub_258D0C5F8(&v27);
    v28, v10, v11, v12, v13, v14, v15, v16;
    v17 = Array<A>.spansAsPlainText.getter(v9);
    v19 = v18;
    v9, v18, v20, v21, v22, v23, v24, v25;
    *a1 = v17;
    a1[1] = v19;
    result = sub_258D04144(3);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_258D171A4();
      v26 = type metadata accessor for LiteTextMessageContent(0);
      return sub_258D12650(v5, a1 + *(v26 + 20));
    }
  }

  return result;
}

void sub_258D11D80(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_258D16B54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258CDB2E4();
  if (!v1)
  {
    v56 = v5;
    v57 = v10;
    v15 = (v14 >> 56) & 0xF;
    v58 = v13;
    v59 = v14;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v60 = 0;
    v61 = v15;
    v16 = sub_258D0C5F8(&v58);
    v59, v17, v18, v19, v20, v21, v22, v23;
    v24 = a1;
    v25 = Array<A>.spansAsPlainText.getter(v16);
    v27 = v26;
    v16, v26, v28, v29, v30, v31, v32, v33;
    v34 = type metadata accessor for LiteReplyMessageContent(0);
    v35 = &v24[*(v34 + 20)];
    *v35 = v25;
    v35[1] = v27;
    sub_258D03D74(16);
    v62 = 0;
    v37 = v36;
    v39 = v38;
    v54 = v27;
    v55 = v24;
    sub_258CDBA34(v36, v38);
    sub_258D0FE34(v37, v39, v8);
    v40 = v57;
    if ((*(v57 + 48))(v8, 1, v9) == 1)
    {
      sub_258D10908(v8);
      sub_258CDB9E0();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();
      sub_258CD7210(v37, v39);
      v54, v42, v43, v44, v45, v46, v47, v48;
      return;
    }

    sub_258CD7210(v37, v39);
    v49 = *(v40 + 32);
    v49(v12, v8, v9);
    v50 = v55;
    v49(v55, v12, v9);
    v51 = v62;
    v52 = sub_258D04144(3);
    if (v51)
    {
    }

    else if ((v52 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    v53 = v56;
    sub_258D171A4();
    sub_258D12650(v53, &v50[*(v34 + 24)]);
  }
}

void sub_258D120AC(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_258D178E4();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v55 - v5;
  v7 = sub_258D16B54();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258D16ED4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v55 - v15;
  v17 = v62;
  v18 = sub_258D03F18(4);
  if (!v17)
  {
    v56 = v9;
    v57 = v14;
    v58 = v6;
    v55[1] = v3;
    v62 = v11;
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_258D16EC4();
      v19 = v10;
      (*(v62 + 32))(v61, v16, v10);
      sub_258D03D74(16);
      v59 = 0;
      v21 = v20;
      v23 = v22;
      sub_258CDBA34(v20, v22);
      v24 = v58;
      sub_258D0FE34(v21, v23, v58);
      v25 = v60;
      v26 = v7;
      if ((*(v60 + 48))(v24, 1, v7) == 1)
      {
        sub_258D10908(v24);
        sub_258CDB9E0();
        v27 = swift_allocError();
        *v28 = 2;
        v59 = v27;
        swift_willThrow();
        sub_258CD7210(v21, v23);
        v29 = 0;
LABEL_5:
        v30 = v62;
LABEL_6:
        v31 = v61;
        (*(v30 + 8))(v61, v19);
        if (v29)
        {
          v32 = type metadata accessor for LiteAcknowledgmentMessageContent(0);
          (*(v25 + 8))(v31 + *(v32 + 20), v26);
        }

        return;
      }

      sub_258CD7210(v21, v23);
      v33 = *(v25 + 32);
      v34 = v56;
      v33(v56, v24, v7);
      v55[0] = type metadata accessor for LiteAcknowledgmentMessageContent(0);
      v35 = v61;
      v33((v61 + *(v55[0] + 20)), v34, v7);
      v36 = *MEMORY[0x277CF1F18];
      v37 = v62;
      v38 = v57;
      v58 = *(v62 + 104);
      (v58)(v57, v36, v19);
      sub_258D126C0();
      sub_258D179B4();
      v39 = v38;
      sub_258D179B4();
      v40 = *(v37 + 8);
      v40(v39, v19);
      if (v64 != v63)
      {
        (v58)(v39, *MEMORY[0x277CF1F10], v19);
        sub_258D179B4();
        sub_258D179B4();
        v40(v39, v19);
        if (v64 != v63)
        {
          v45 = (v35 + *(v55[0] + 24));
          *v45 = 0;
          v45[1] = 0;
          return;
        }
      }

      v41 = v59;
      v42 = sub_258D04144(3);
      if (v41)
      {
        v59 = v41;
        v29 = 1;
        v26 = v7;
        v25 = v60;
        goto LABEL_5;
      }

      v30 = v62;
      if ((v42 & 0x8000000000000000) == 0)
      {
        sub_258D03D74(v42);
        v59 = 0;
        v46 = v43;
        v47 = v44;
        sub_258D178D4();
        v48 = sub_258D178C4();
        if (v49)
        {
          v50 = v48;
          v51 = v49;
          sub_258CD7210(v46, v47);
          v52 = (v61 + *(v55[0] + 24));
          *v52 = v50;
          v52[1] = v51;
          return;
        }

        sub_258CDB9E0();
        v53 = swift_allocError();
        *v54 = 0;
        v59 = v53;
        swift_willThrow();
        sub_258CD7210(v46, v47);
        v29 = 1;
        v26 = v7;
        v25 = v60;
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_258D12650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258D126C0()
{
  result = qword_27F980ED0;
  if (!qword_27F980ED0)
  {
    sub_258D16ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980ED0);
  }

  return result;
}

uint64_t type metadata accessor for LiteRelayAcknowledgmentMessageContent(uint64_t a1)
{
  result = qword_27F980ED8;
  if (!qword_27F980ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258D1278C(uint64_t a1)
{
  sub_258D16ED4();
  if (v1 <= 0x3F)
  {
    sub_258D16B54();
    if (v2 <= 0x3F)
    {
      sub_258D11BF0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258D12830(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_258D178E4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - v7;
  v9 = sub_258D16B54();
  v79 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258D16ED4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = v81;
  v20 = sub_258D03F18(4);
  if (v19)
  {
    return;
  }

  v74 = v11;
  v75 = v16;
  v76 = v8;
  v77 = a1;
  v73 = v5;
  v81 = v13;
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_258D16EC4();
  v21 = v12;
  (*(v81 + 32))(v80, v18, v12);
  sub_258D03D74(16);
  v78 = 0;
  v23 = v22;
  v25 = v24;
  sub_258CDBA34(v22, v24);
  v26 = v76;
  sub_258D0FE34(v23, v25, v76);
  v27 = v79;
  v28 = v9;
  if ((*(v79 + 48))(v26, 1, v9) != 1)
  {
    sub_258CD7210(v23, v25);
    v44 = *(v27 + 32);
    v45 = v74;
    v44(v74, v26, v9);
    v72 = type metadata accessor for LiteRelayAcknowledgmentMessageContent(0);
    v46 = v80;
    v44((v80 + *(v72 + 20)), v45, v9);
    v47 = *MEMORY[0x277CF1F18];
    v48 = v81;
    v49 = v75;
    v76 = *(v81 + 104);
    (v76)(v75, v47, v21);
    sub_258D126C0();
    sub_258D179B4();
    v50 = v49;
    sub_258D179B4();
    v51 = *(v48 + 8);
    v51(v50, v21);
    if (v83 != v82)
    {
      (v76)(v50, *MEMORY[0x277CF1F10], v21);
      sub_258D179B4();
      sub_258D179B4();
      v51(v50, v21);
      if (v83 != v82)
      {
        v56 = v72;
        v57 = (v46 + *(v72 + 24));
        *v57 = 0;
        v57[1] = 0;
        v33 = v46;
        v34 = v81;
        goto LABEL_19;
      }
    }

    v52 = v78;
    v53 = sub_258D04144(3);
    if (v52)
    {
      v78 = v52;
      v32 = 0;
      v31 = 1;
      v27 = v79;
      v33 = v80;
      v28 = v9;
      v34 = v81;
      goto LABEL_5;
    }

    v33 = v80;
    v34 = v81;
    if ((v53 & 0x8000000000000000) == 0)
    {
      sub_258D03D74(v53);
      v78 = 0;
      v58 = v54;
      v59 = v55;
      sub_258D178D4();
      v60 = sub_258D178C4();
      if (!v61)
      {
        sub_258CDB9E0();
        v69 = swift_allocError();
        *v70 = 0;
        v78 = v69;
        swift_willThrow();
        sub_258CD7210(v58, v59);
        v32 = 0;
        v31 = 1;
        v28 = v9;
        v27 = v79;
        goto LABEL_5;
      }

      v62 = v60;
      v63 = v61;
      sub_258CD7210(v58, v59);
      v56 = v72;
      v64 = (v33 + *(v72 + 24));
      *v64 = v62;
      v64[1] = v63;
LABEL_19:
      v65 = v78;
      v66 = sub_258D14780();
      v27 = v79;
      if (!v65)
      {
        v68 = (v33 + *(v56 + 28));
        *v68 = v66;
        v68[1] = v67;
        return;
      }

      v28 = v9;
      v78 = v65;
      v31 = 1;
      v32 = 1;
      goto LABEL_5;
    }

LABEL_24:
    __break(1u);
    return;
  }

  sub_258D10908(v26);
  sub_258CDB9E0();
  v29 = swift_allocError();
  *v30 = 2;
  v78 = v29;
  swift_willThrow();
  sub_258CD7210(v23, v25);
  v31 = 0;
  v32 = 0;
  v33 = v80;
  v34 = v81;
LABEL_5:
  (*(v34 + 8))(v33, v21);
  if (v31)
  {
    v35 = type metadata accessor for LiteRelayAcknowledgmentMessageContent(0);
    (*(v27 + 8))(v33 + *(v35 + 20), v28);
  }

  if (v32)
  {
    v36 = type metadata accessor for LiteRelayAcknowledgmentMessageContent(0);
    *(v33 + *(v36 + 24) + 8), v37, v38, v39, v40, v41, v42, v43;
  }
}

uint64_t sub_258D12E3C()
{
  v2 = sub_258CDB2E4();
  if (!v0)
  {
    v4 = (v3 >> 56) & 0xF;
    v21 = v2;
    v22 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v23 = 0;
    v24 = v4;
    v5 = sub_258D0C5F8(&v21);
    v22, v6, v7, v8, v9, v10, v11, v12;
    v1 = Array<A>.spansAsPlainText.getter(v5);
    v5, v13, v14, v15, v16, v17, v18, v19;
    sub_258D14780();
  }

  return v1;
}

unint64_t sub_258D12F08()
{
  result = qword_27F980EE8;
  if (!qword_27F980EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980EE8);
  }

  return result;
}

uint64_t SatelliteSMSTextMessageUnpacker.unpack(from:)@<X0>(unint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B38, &qword_258D19300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v87 - v6;
  v8 = sub_258D17824();
  v97 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258D178E4();
  MEMORY[0x28223BE20](v11 - 8);
  sub_258D169F4();
  swift_allocObject();
  v12 = sub_258D169E4();
  sub_258D137D0();
  sub_258D169D4();
  if (v3)
  {
  }

  v92 = v12;
  v14 = v93;
  v15 = v94;
  if (v96)
  {
    v16 = 0;
  }

  else
  {
    v16 = v95;
  }

  v91 = v93;
  if (v94 >> 60 != 15)
  {
    sub_258CFA9D0(v93, v94);
    if (v16)
    {
      v90 = a3;
      if (qword_27F9807C0 != -1)
      {
        swift_once();
      }

      v93 = qword_27F984420;

      LiteMessageCompressor.decode(_:codecID:)(v14, v15, v16);
      v35 = v34;
      v37 = v36;
      v93, v36, v38, v39, v40, v41, v42, v43;
      if (v37 >> 60 == 15)
      {
        sub_258D17814();
        sub_258D036BC();
        v89 = sub_258D17B24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_258D19090;
        v19 = v97;
        v90 = v15;
        v45 = *(v97 + 16);
        v45(v7, v10, v8);
        (*(v19 + 56))(v7, 0, 1, v8);
        v46 = sub_258D17604();
        v48 = v47;
        sub_258D13AA0(v7);
        *(v44 + 56) = MEMORY[0x277D837D0];
        *(v44 + 64) = sub_258CF695C();
        *(v44 + 32) = v46;
        *(v44 + 40) = v48;
        v49 = sub_258D17A74();
        v50 = v89;
        sub_258D16B94("Message unpacking explosion: %{public}@", 39, 2, &dword_258CD3000, v89, v49, v44);

        v44, v51, v52, v53, v54, v55, v56, v57;
        sub_258D13B50(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
        swift_allocError();
        v45(v58, v10, v8);
        swift_willThrow();
LABEL_18:

        v86 = v90;
        v85 = v91;
        sub_258D0199C(v91, v90);
        v32 = v85;
        v33 = v86;
        goto LABEL_19;
      }

      v88 = v35;
      v89 = v37;
    }

    else
    {
      sub_258CDBA34(v14, v15);
      v88 = v14;
      v89 = v15;
    }

    sub_258D178D4();
    v59 = sub_258D178C4();
    if (v60)
    {
      v61 = v60;
      sub_258D13824(v59, v60);
      v61, v62, v63, v64, v65, v66, v67, v68;
      sub_258D17474();
      sub_258CD7210(v88, v89);
      v69 = v91;
      sub_258D0199C(v91, v15);
      sub_258D0199C(v69, v15);
    }

    sub_258D17814();
    sub_258D036BC();
    v87 = sub_258D17B24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_258D19090;
    v19 = v97;
    v90 = v15;
    v71 = *(v97 + 16);
    v71(v7, v10, v8);
    (*(v19 + 56))(v7, 0, 1, v8);
    v72 = sub_258D17604();
    v74 = v73;
    sub_258D13AA0(v7);
    *(v70 + 56) = MEMORY[0x277D837D0];
    *(v70 + 64) = sub_258CF695C();
    *(v70 + 32) = v72;
    *(v70 + 40) = v74;
    v75 = sub_258D17A74();
    v76 = v87;
    sub_258D16B94("Message unpacking explosion: %{public}@", 39, 2, &dword_258CD3000, v87, v75, v70);

    v70, v77, v78, v79, v80, v81, v82, v83;
    sub_258D13B50(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    v71(v84, v10, v8);
    swift_willThrow();
    sub_258CD7210(v88, v89);
    goto LABEL_18;
  }

  sub_258D17814();
  sub_258D036BC();
  v17 = sub_258D17B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_258D19090;
  v90 = v15;
  v19 = v97;
  v89 = *(v97 + 16);
  v89(v7, v10, v8);
  (*(v19 + 56))(v7, 0, 1, v8);
  v20 = sub_258D17604();
  v22 = v21;
  sub_258D13AA0(v7);
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_258CF695C();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v23 = sub_258D17A74();
  sub_258D16B94("Message unpacking explosion: %{public}@", 39, 2, &dword_258CD3000, v17, v23, v18);

  v18, v24, v25, v26, v27, v28, v29, v30;
  sub_258D13B50(&qword_280BCBE28, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
  swift_allocError();
  v89(v31, v10, v8);
  swift_willThrow();

  v33 = v90;
  v32 = v91;
LABEL_19:
  sub_258D0199C(v32, v33);
  return (*(v19 + 8))(v10, v8);
}

unint64_t sub_258D137D0()
{
  result = qword_27F980EF0;
  if (!qword_27F980EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980EF0);
  }

  return result;
}

IMMessagesBlastDoorInterfaceInternal *sub_258D13824(uint64_t a1, IMMessagesBlastDoorInterfaceInternal *a2)
{

  v2 = sub_258D17964();
  if (!v3)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v10 = v2;
  v11 = v3;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = 0;
    while (1)
    {
      if ((v13 & 1) == 0)
      {
        if (v10 == 1 && v11 == 0xE100000000000000)
        {
          v13 = 1;
          goto LABEL_6;
        }

        v13 = 1;
        if (sub_258D17E14())
        {
          goto LABEL_6;
        }

        if (v10 == 25 && v11 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
        {
          break;
        }
      }

      MEMORY[0x259C99B60](v10, v11);
      v13 = 0;
LABEL_6:
      v11, v3, v4, v5, v6, v7, v8, v9;
      v10 = sub_258D17964();
      v11 = v3;
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    v11, v3, v4, v5, v6, v7, v8, v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_258D03A5C(0, *v12->type + 1, 1, v12, v14, v15, v16, v17);
    }

    v19 = *v12->type;
    isa = v12[1].super.isa;
    if (v19 >= isa >> 1)
    {
      v12 = sub_258D03A5C((isa > 1), v19 + 1, 1, v12, v14, v15, v16, v17);
    }

    *v12->type = v19 + 1;
    v20 = v12 + 16 * v19;
    *(v20 + 4) = 0;
    *(v20 + 5) = 0xE000000000000000;
    v10 = sub_258D17964();
    v11 = v3;
  }

  while (v3);
LABEL_22:
  a2, 0, v4, v5, v6, v7, v8, v9;
  0xE000000000000000, v21, v22, v23, v24, v25, v26, v27;
  return v12;
}

uint64_t sub_258D13AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B38, &qword_258D19300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D13B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t SatelliteSMSTextMessageDictionary.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t SatelliteSMSTextMessageDictionary.compressedText.getter()
{
  v1 = *v0;
  sub_258CFA9D0(*v0, *(v0 + 8));
  return v1;
}

void SatelliteSMSTextMessageDictionary.compressedText.setter(uint64_t a1, uint64_t a2)
{
  sub_258D0199C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t SatelliteSMSTextMessageDictionary.codecID.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SatelliteSMSTextMessageDictionary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980EF8, "h.");
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258CFA9D0(v7, v8);
  sub_258D1412C();
  sub_258D17F34();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  sub_258D0ED10();
  sub_258D17DA4();
  sub_258D0199C(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_258D17D94();
  }

  return (*(v11 + 8))(v6, v4);
}

void SatelliteSMSTextMessageDictionary.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F08, &qword_258D1AD08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D1412C();
  sub_258D17F14();
  if (v2)
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  else
  {
    v16 = 0;
    sub_258D0F1CC();
    sub_258D17CF4();
    v9 = v15[0];
    v10 = v15[1];
    sub_258D0199C(0, 0xF000000000000000);
    LOBYTE(v15[0]) = 1;
    v11 = sub_258D17CE4();
    v12 = v8;
    v14 = v13;
    (*(v6 + 8))(v12, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v14 & 1;
    sub_258CFA9D0(v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_258D0199C(v9, v10);
}