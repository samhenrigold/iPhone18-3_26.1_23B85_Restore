uint64_t sub_253100104(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  a1[3] = v6;
  a1[4] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v12 = *(*(v6 - 8) + 16);
  v12(boxed_opaque_existential_0, v3, v6);
  v9 = *(a3 + 36);
  a2[3] = v6;
  a2[4] = v7;
  v10 = __swift_allocate_boxed_opaque_existential_0(a2);

  return (v12)(v10, v3 + v9, v6);
}

uint64_t sub_2531001BC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_253100290(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_2531491F4();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_253148C24();
  v63 = sub_253149504();
  v58 = sub_253149514();
  sub_2531494B4();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_253148C14();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_253149204();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_2531494F4();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_253149204();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_2531494F4();
      sub_253149204();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

id sub_253100984(uint64_t a1, uint64_t a2)
{
  v12[3] = *(a2 + 16);
  __swift_allocate_boxed_opaque_existential_0(v12);
  MEMORY[0x259BFC360](a2);
  sub_2530FF174(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (!v3)
  {
    v5 = v14;
    if (v14)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v7 = *(v5 - 8);
      MEMORY[0x28223BE20](v6);
      v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_253149724();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
      v10 = 0;
    }

    v2 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_253100B50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253100B8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_253148534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_253148814();
  v8 = *(a1 + 8);
  if (*(v8 + 16))
  {
    result = sub_25311DA30(v6);
    if (v9)
    {
      v10 = *(v4 + 8);
      v11 = *(*(v8 + 56) + 24 * result);
      v10(v6, v3);
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

uint64_t sub_253100CE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253100D20(uint64_t a1, uint64_t a2)
{
  v3 = sub_253148534();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  result = sub_253148814();
  v11 = *(a1 + 8);
  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25311DA30(v9);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(*(v11 + 56) + 24 * result + 8);
  v14 = *(v4 + 8);
  v15 = v13;
  v14(v9, v3);
  if (v13)
  {
    return v15;
  }

  result = sub_253148814();
  if (!*(v11 + 16))
  {
    goto LABEL_10;
  }

  result = sub_25311DA30(v7);
  if (v16)
  {
    v15 = *(*(v11 + 56) + 24 * result);
    v14(v7, v3);
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_253100ECC(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v6 = sub_2531487B4();
  v7 = sub_2531491F4();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v69 - v9;
  v76 = v6;
  v11 = MEMORY[0x28223BE20](v8);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v69 - v14;
  v15 = *(v4 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v22 = *(a1 + 32);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_33;
  }

  v71 = v21;
  v72 = v19;
  v77 = v20;
  v78 = v5;
  *(a1 + 32) = v24;
  MEMORY[0x259BFC3D0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819F0, &qword_25314F1E8);
  if (swift_dynamicCast())
  {
    v25 = *(&v80 + 1);
    v26 = v81;
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    v75 = (*(v26 + 8))(a1, v25, v26);
    __swift_destroy_boxed_opaque_existential_0(&v79);
    v27 = v82;
  }

  else
  {
    v70 = v10;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_2530CD33C(&v79, &qword_27F5819F8, &qword_25314F1F0);
    MEMORY[0x259BFC3D0](a2);
    v28 = v82;
    v29 = sub_2530FFF08(a1, v4, v78);
    v82 = v30;
    v32 = v31;
    (*(v15 + 8))(v18, v4);
    v27 = v28;
    if (v28)
    {
      return;
    }

    v75 = v29;
    if (v82)
    {

      v75 = v82;
    }

    else
    {
    }

    v10 = v70;
  }

  v33 = *(a1 + 32);
  v34 = v33 - 1;
  v35 = v76;
  if (!v33)
  {
LABEL_33:
    __break(1u);
    return;
  }

  *(a1 + 32) = v34;
  sub_2531487C4();
  v36 = v77;
  if ((*(v77 + 48))(v10, 1, v35) != 1)
  {
    v82 = v27;
    v41 = v74;
    (*(v36 + 32))(v74, v10, v35);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (AssociatedTypeWitness == MEMORY[0x277D83E40] || AssociatedTypeWitness == MEMORY[0x277D837D0])
    {
      v44 = 0x6874676E656CLL;
    }

    else
    {
      v44 = 0x746E756F6340;
    }

    v45 = v73;
    (*(v36 + 16))(v73, v41, v35);
    v46 = (*(v36 + 88))(v45, v35);
    if (v46 == *MEMORY[0x277CC9098])
    {
      v47 = v36;
      v48 = v75;
      sub_2530FE5A8(v44, 0xE600000000000000);

      (*(v47 + 8))(v41, v35);
      return;
    }

    if (v46 == *MEMORY[0x277CC90A8])
    {
      v49 = v36;
      v50 = v75;
      v51 = sub_2530FE5A8(v44, 0xE600000000000000);

      *&v79 = 0;
      v52 = sub_253149764();
      v53 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v51 rightExpression:v53 modifier:0 type:4 options:0];

      (*(v49 + 8))(v41, v35);
      return;
    }

    if (v46 == *MEMORY[0x277CC90A0])
    {
    }

    else
    {
      v58 = *MEMORY[0x277CC90B0];
      v59 = v46;

      if (v59 != v58)
      {
        *&v79 = sub_2531487A4();
        v64 = sub_253148B74();
        v66 = v65;
        sub_253109940();
        swift_allocError();
        *v67 = v64;
        *(v67 + 8) = v66;
        *(v67 + 16) = 0;
        swift_willThrow();

        v68 = *(v77 + 8);
        v68(v41, v35);
        v68(v45, v35);
        return;
      }
    }

    *&v79 = sub_2531487A4();
    v60 = sub_253148B74();
    v62 = v61;
    sub_253109940();
    swift_allocError();
    *v63 = v60;
    *(v63 + 8) = v62;
    *(v63 + 16) = 0;
    swift_willThrow();

    (*(v77 + 8))(v41, v35);
    return;
  }

  (*(v71 + 8))(v10, v72);
  v37 = v75;
  if ([v75 expressionType])
  {
    sub_2531487A4();
    v38 = sub_253101784();
    v40 = v39;

    if (v40)
    {
      sub_2530FE680(v38, v40, *(a1 + 16), *(a1 + 24), v34 == 0);
    }

    else
    {
      *&v79 = sub_2531487A4();
      v54 = sub_253148B74();
      v56 = v55;
      sub_253109940();
      swift_allocError();
      *v57 = v54;
      *(v57 + 8) = v56;
      *(v57 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_253101784()
{
  sub_253149244();

  v0 = sub_253148B74();
  v2 = v1;

  sub_253109850(46, 0xE100000000000000, v0, v2);
  v4 = v3;

  if (v4)
  {

    return 0;
  }

  else
  {
    sub_253148BC4();
    sub_253148BA4();
    return v0;
  }
}

uint64_t sub_253101874(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_2531018B0(uint64_t a1, uint64_t *a2)
{
  v159 = sub_253148534();
  v147 = *(v159 - 8);
  v6 = MEMORY[0x28223BE20](v159);
  v161 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata = MEMORY[0x28223BE20](v6);
  v162 = &v131 - v9;
  v10 = a2[2];
  v11 = 8 * v10;
  if (v10 == 1)
  {
    v12 = *(a2[4] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v13 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v10)
    {
      v14 = 0;
      v15 = a2[4] & 0xFFFFFFFFFFFFFFFELL;
      if (v10 < 4)
      {
        goto LABEL_9;
      }

      if (&v13[-v15] < 0x20)
      {
        goto LABEL_9;
      }

      v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v15 + 16);
      v17 = v13 + 16;
      v18 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v10 != v14)
      {
LABEL_9:
        v20 = v10 - v14;
        v21 = 8 * v14;
        v22 = &v13[8 * v14];
        v23 = (v15 + v21);
        do
        {
          v24 = *v23++;
          *v22 = v24;
          v22 += 8;
          --v20;
        }

        while (v20);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = TupleTypeMetadata;
  }

  v134 = *(v12 - 8);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v152 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v10;
  v160 = a1;
  v157 = a2;
  v155 = (8 * v10);
  v139 = v27;
  v149 = v12;
  v156 = v2;
  v158 = v3;
  if (v10 == 1)
  {
    swift_getAssociatedTypeWitness();
    v28 = sub_253148824();
    v29 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v25);
    v30 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v10)
    {
      v31 = v157[4] & 0xFFFFFFFFFFFFFFFELL;
      v32 = v157[6] & 0xFFFFFFFFFFFFFFFELL;
      v33 = v30;
      v34 = v153;
      do
      {
        v31 += 8;
        v32 += 8;
        swift_getAssociatedTypeWitness();
        *v33++ = sub_253148824();
        --v34;
      }

      while (v34);
    }

    v29 = v153;
    v28 = swift_getTupleTypeMetadata();
    a2 = v157;
    v11 = v155;
  }

  v143 = &v131;
  v148 = v28;
  v133 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v151 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_253148474();
  v142 = &v131;
  v154 = v36;
  v150 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v144 = &v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = &v131;
  v146 = a2[3];
  v145 = *(v146 - 1);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = &v131;
  MEMORY[0x28223BE20](v39);
  if (v29)
  {
    v42 = v157[4] & 0xFFFFFFFFFFFFFFFELL;
    v43 = v157[6] & 0xFFFFFFFFFFFFFFFELL;
    v44 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v45 = v153;
    do
    {
      v42 += 8;
      v43 += 8;
      *v44++ = swift_getAssociatedTypeWitness();
      --v45;
    }

    while (v45);
  }

  v46 = sub_253148974();
  v136 = sub_2531491F4();
  v135 = *(v136 - 8);
  v47 = MEMORY[0x28223BE20](v136);
  v49 = &v131 - v48;
  v138 = &v131;
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v47);
  v137 = &v131 - v51;
  v52 = v41;
  sub_2531484B4();
  v53 = v144;
  sub_253148484();
  v54 = v158;
  v55 = v146;
  sub_253148494();
  if (v54)
  {

    v150[1](v53, v154);
    (*(v145 + 8))(v52, v55);
    (*(v50 + 56))(v49, 1, 1, v46);
    (*(v135 + 8))(v49, v136);
    sub_253109940();
    swift_allocError();
    *v56 = 0;
    *(v56 + 8) = 0;
    *(v56 + 16) = 3;
    swift_willThrow();
    return v49;
  }

  v150[1](v53, v154);
  (*(v145 + 8))(v52, v55);
  (*(v50 + 56))(v49, 0, 1, v46);
  v57 = (*(v50 + 32))(v137, v49, v46);
  v146 = &v131;
  MEMORY[0x28223BE20](v57);
  v59 = &v131 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v153;
  v158 = 0;
  v132 = v46;
  v131 = v50;
  if (!v153)
  {
    sub_253148964();
    sub_2531484A4();
    v86 = v160;
LABEL_52:
    v125 = v132;
    v126 = v137;
    sub_253148954();
    v49 = v164;
    v127 = v165;
    __swift_project_boxed_opaque_existential_1(&v163, v164);
    v128 = v158;
    v129 = sub_2530FEB94(v86, v49, *(v127 + 8));
    if (!v128)
    {
      v49 = v129;
    }

    (*(v131 + 8))(v126, v125);
    __swift_destroy_boxed_opaque_existential_0(&v163);
    (*(v134 + 8))(v152, v149);
    (*(v133 + 8))(v151, v148);
    return v49;
  }

  v61 = 0;
  v62 = 32;
  v63 = v148;
  v64 = v149;
  v65 = v151;
  do
  {
    if (v60 == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(v63 + v62);
    }

    *&v59[8 * v61++] = &v65[v66];
    v62 += 16;
  }

  while (v60 != v61);
  v67 = sub_253148964();
  MEMORY[0x28223BE20](v67);
  v69 = &v131 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = 0;
  v71 = 32;
  v72 = v152;
  do
  {
    if (v60 == 1)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v64 + v71);
    }

    *&v69[8 * v70++] = &v72[v73];
    v71 += 16;
  }

  while (v60 != v70);
  v74 = v157;
  sub_2531484A4();
  v75 = (v74[4] & 0xFFFFFFFFFFFFFFFELL);
  v76 = (v74[6] & 0xFFFFFFFFFFFFFFFELL);
  v154 = (v147 + 16);
  v150 = (v147 + 8);
  v77 = 32;
  v78 = v60;
  while (1)
  {
    v156 = v78;
    if (v60 == 1)
    {
      v87 = 0;
    }

    else
    {
      v87 = *(v148 + v77);
    }

    v157 = v75;
    v88 = *v75;
    v49 = *v76;
    swift_getAssociatedTypeWitness();
    v89 = sub_253148824();
    v155 = &v131;
    v90 = *(v89 - 8);
    MEMORY[0x28223BE20](v89);
    v92 = &v131 - v91;
    (*(v90 + 16))(&v131 - v91, &v151[v87], v89);
    sub_253148814();
    v93 = (*(v90 + 8))(v92, v89);
    v94 = *(v88 - 8);
    MEMORY[0x28223BE20](v93);
    v96 = &v131 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))(v96, &v152[v97], v88);
    v98 = v160;
    v99 = v158;
    v100 = sub_2530FFCD4(v160, v88, v49);
    v158 = v99;
    if (v99)
    {
      (*(v94 + 8))(v96, v88);
      (*v150)(v162, v159);
      (*(v131 + 8))(v137, v132);
      (*(v134 + 8))(v152, v149);
      (*(v133 + 8))(v151, v148);
      return v49;
    }

    v101 = v100;
    (*(v94 + 8))(v96, v88);
    v102 = *v154;
    v103 = v161;
    (*v154)(v161, v162, v159);
    v104 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = *(v98 + 8);
    v106 = v163;
    v107 = sub_25311DA30(v103);
    v109 = v106[2];
    v110 = (v108 & 1) == 0;
    v111 = __OFADD__(v109, v110);
    v112 = v109 + v110;
    if (v111)
    {
      break;
    }

    v113 = v108;
    if (v106[3] < v112)
    {
      sub_25312CFC8(v112, isUniquelyReferenced_nonNull_native);
      v107 = sub_25311DA30(v161);
      if ((v113 & 1) != (v114 & 1))
      {
        goto LABEL_59;
      }

LABEL_46:
      v115 = v163;
      if (v113)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_46;
    }

    v124 = v107;
    sub_25312BB44();
    v107 = v124;
    v115 = v163;
    if (v113)
    {
LABEL_35:
      v79 = v115[7] + 24 * v107;
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      *v79 = v104;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;

      v83 = *v150;
      v84 = v159;
      (*v150)(v161, v159);
      v83(v162, v84);
      goto LABEL_36;
    }

LABEL_47:
    v115[(v107 >> 6) + 8] |= 1 << v107;
    v116 = v147;
    v117 = v107;
    v118 = v161;
    v119 = v159;
    v102(v115[6] + *(v147 + 72) * v107, v161, v159);
    v120 = (v115[7] + 24 * v117);
    *v120 = v104;
    v120[1] = 0;
    v120[2] = 0;

    v121 = *(v116 + 8);
    v121(v118, v119);
    v121(v162, v119);
    v122 = v115[2];
    v111 = __OFADD__(v122, 1);
    v123 = v122 + 1;
    if (v111)
    {
      goto LABEL_58;
    }

    v115[2] = v123;
    v60 = v153;
LABEL_36:
    v85 = v156;
    v86 = v160;
    *(v160 + 8) = v115;
    v77 += 16;
    ++v76;
    v75 = v157 + 1;
    v78 = v85 - 1;
    if (!v78)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_253149784();
  __break(1u);
  return result;
}

uint64_t sub_253102928(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531029AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531029E8(uint64_t a1, void *a2, void (*a3)(void *), void (*a4)(void *), SEL *a5)
{
  v9 = a2[3];
  v33 = a4;
  v34 = v9;
  v30 = *(v9 - 8);
  v31 = a5;
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v10);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25314EC30;
  v32 = v5;
  a3(a2);
  v19 = v35;
  v20 = sub_2530FFD64(a1, v14, a2[4]);
  v22 = *(v15 + 8);
  v21 = (v15 + 8);
  v22(v17, v14);
  if (v19)
  {
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = v30;
    v23 = v31;
    *(v18 + 32) = v20;
    v33(a2);
    v25 = v34;
    v27 = sub_2530FFD64(a1, v34, a2[5]);
    (*(v24 + 8))(v12, v25);
    *(v18 + 40) = v27;
    sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
    v28 = sub_253148C84();

    v21 = [objc_opt_self() *v23];
  }

  return v21;
}

id sub_253102CE4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), void (*a5)(void *), SEL *a6)
{
  result = sub_2531029E8(a1, a2, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_253102D18(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253102D54(uint64_t a1, void *a2)
{
  v37 = a2[3];
  v34 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253148724();
  v13 = a2[4];
  v35 = a1;
  v14 = sub_2530FFF08(a1, v9, v13);
  v16 = v15;
  v18 = v17;
  v20 = *(v10 + 8);
  v19 = (v10 + 8);
  v20(v12, v9);
  if (!v2)
  {
    v21 = v34;
    v33 = v16;
    sub_253148734();
    v22 = v37;
    v24 = sub_2530FFF08(v35, v37, a2[5]);
    v26 = v25;
    v28 = v27;
    v35 = 0;
    (*(v21 + 8))(v7, v22);
    if (![v14 expressionType])
    {
      if (![v14 constantValue])
      {
        goto LABEL_11;
      }

      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v36, &qword_27F5818A0, &qword_25314E9C0);
    }

    if ([v24 expressionType])
    {
LABEL_10:
      v19 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v14 rightExpression:v24 modifier:0 type:4 options:0];

      v26 = v33;
LABEL_16:

      return v19;
    }

    if ([v24 constantValue])
    {
      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v36, &qword_27F5818A0, &qword_25314E9C0);
      goto LABEL_10;
    }

LABEL_11:
    memset(v36, 0, sizeof(v36));
    sub_2530CD33C(v36, &qword_27F5818A0, &qword_25314E9C0);
    if (v18)
    {
      v29 = v28;
      v28 = v18;
    }

    else
    {
      if (!v28)
      {
        goto LABEL_10;
      }

      v29 = v28;
      v18 = 0;
      v28 = v29;
    }

    v30 = objc_opt_self();
    v31 = v18;
    v19 = [v30 notPredicateWithSubpredicate_];

    v18 = v33;
    goto LABEL_16;
  }

  return v19;
}

uint64_t sub_253103190(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531031CC(uint64_t a1, void *a2)
{
  v35 = a2[3];
  v31 = *(v35 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  sub_2531487F4();
  v14 = a2[4];
  v33 = a1;
  v15 = sub_2530FFF08(a1, v10, v14);
  v17 = v16;
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  if (!v3)
  {
    v20 = v15;
    v30 = v19;
    v21 = v31;
    sub_253148804();
    v22 = v35;
    v24 = sub_2530FFF08(v33, v35, a2[5]);
    v26 = v25;
    v28 = v27;
    (*(v21 + 8))(v8, v22);
    if (![v20 expressionType])
    {
      if (![v20 constantValue])
      {
        goto LABEL_11;
      }

      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v34, &qword_27F5818A0, &qword_25314E9C0);
    }

    if ([v24 expressionType])
    {
LABEL_10:
      v15 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v20 rightExpression:v24 modifier:0 type:5 options:0];

      return v15;
    }

    if ([v24 constantValue])
    {
      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v34, &qword_27F5818A0, &qword_25314E9C0);
      goto LABEL_10;
    }

LABEL_11:
    memset(v34, 0, sizeof(v34));
    sub_2530CD33C(v34, &qword_27F5818A0, &qword_25314E9C0);
    if (v30)
    {
      v29 = v28;
    }

    else
    {
      if (!v28)
      {
        goto LABEL_10;
      }

      v29 = v28;
      v30 = v28;
    }

    return v30;
  }

  return v15;
}

uint64_t sub_253103584(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_2531035C0(uint64_t a1, void *a2)
{
  v39 = a1;
  v36 = a2[3];
  v35 = *(v36 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v4);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_253148624();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v40 = v2;
  sub_2531484C4();
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277CC8FA8])
  {
    v37 = 0xE700000000000000;
    v17 = 0x3A6F743A646461;
  }

  else if (v16 == *MEMORY[0x277CC8FB8])
  {
    v37 = 0xEE003A7463617274;
    v17 = 0x6275733A6D6F7266;
  }

  else
  {
    if (v16 != *MEMORY[0x277CC8FB0])
    {
      sub_2531484C4();
      v26 = sub_253148B74();
      v28 = v27;
      sub_253109940();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = 2;
      swift_willThrow();
      (*(v12 + 8))(v15, v11);
      return v11;
    }

    v37 = 0xEC0000003A79623ALL;
    v17 = 0x796C7069746C756DLL;
  }

  v33[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v11 = swift_allocObject();
  *(v11 + 1) = xmmword_25314E1C0;
  sub_2531484D4();
  v18 = v38;
  v19 = v39;
  v20 = sub_2530FFCD4(v39, v7, a2[4]);
  (*(v8 + 8))(v10, v7);
  if (v18)
  {

    v11[2] = 0;
  }

  else
  {
    v21 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    v11[7] = v21;
    v11[4] = v20;
    v22 = v34;
    sub_2531484E4();
    v23 = a2[5];
    v24 = v36;
    v30 = sub_2530FFCD4(v19, v36, v23);
    (*(v35 + 8))(v22, v24);
    v11[11] = v21;
    v11[8] = v30;
    v31 = sub_253148B54();

    v32 = sub_253148C84();

    v11 = [objc_opt_self() expressionForFunction:v31 arguments:v32];
  }

  return v11;
}

uint64_t sub_253103AC8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_253103B04(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25314E1C0;
  sub_253148524();
  v10 = v8;
  v11 = sub_2530FFCD4(a1, v5, *(a2 + 24));
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v13 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v9 + 56) = v13;
    *(v9 + 32) = v12;
    v20[1] = -1;
    v14 = sub_253149764();
    v15 = objc_opt_self();
    v16 = [v15 expressionForConstantValue_];
    swift_unknownObjectRelease();
    *(v9 + 88) = v13;
    *(v9 + 64) = v16;
    v17 = sub_253148B54();
    v18 = sub_253148C84();

    v10 = [v15 expressionForFunction:v17 arguments:v18];
  }

  return v10;
}

uint64_t sub_253103D88(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_253103DC4(uint64_t a1, void *a2)
{
  v2 = a2;
  v39 = a1;
  v36 = *(a2[3] - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v3);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_253148634();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v32[1] = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  sub_2531484F4();
  v33 = v11;
  v34 = v10;
  v16 = v10;
  v17 = v39;
  v18 = (*(v11 + 88))(v15, v16);
  v19 = 0;
  if (v18 != *MEMORY[0x277CC8FD8])
  {
    if (v18 == *MEMORY[0x277CC8FC8])
    {
      v19 = 1;
    }

    else if (v18 == *MEMORY[0x277CC8FC0])
    {
      v19 = 2;
    }

    else
    {
      if (v18 != *MEMORY[0x277CC8FD0])
      {
        sub_2531484F4();
        v27 = v34;
        v28 = sub_253148B74();
        v2 = v29;
        sub_253109940();
        swift_allocError();
        *v30 = v28;
        *(v30 + 8) = v2;
        *(v30 + 16) = 2;
        swift_willThrow();
        (*(v33 + 8))(v15, v27);
        return v2;
      }

      v19 = 3;
    }
  }

  v39 = v19;
  sub_253148504();
  v20 = v38;
  v21 = sub_2530FFCD4(v17, v6, v2[4]);
  (*(v7 + 8))(v9, v6);
  if (!v20)
  {
    v22 = v35;
    sub_253148514();
    v23 = v2[5];
    v24 = v37;
    v25 = sub_2530FFCD4(v17, v37, v23);
    (*(v36 + 8))(v22, v24);
    v26 = objc_allocWithZone(MEMORY[0x277CCA918]);
    v2 = [v26 initWithLeftExpression:v21 rightExpression:v25 modifier:0 type:v39 options:0];
  }

  return v2;
}

uint64_t sub_2531041D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_253104210(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  v5 = a2[2];
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531487E4();
  v9 = sub_2530FFD64(a1, v5, v3[3]);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    v3 = [objc_opt_self() notPredicateWithSubpredicate_];
  }

  return v3;
}

uint64_t sub_25310437C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531043B8(uint64_t a1, void *a2)
{
  v36 = a1;
  v32 = a2[3];
  v30 = *(v32 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v31 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v5 + 16);
  v37 = *(v33 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_253148534();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_253148824();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  sub_253148794();
  sub_253148814();
  v15 = v14;
  v16 = v33;
  (*(v12 + 8))(v15, v11);
  v17 = v36;
  v29[1] = sub_2530FE3A0(v10);
  v19 = v18;
  (*(v8 + 8))(v10, v35);
  sub_253148784();
  v20 = v38;
  v21 = sub_2530FFCD4(v17, v16, v34);
  if (v20)
  {
    (*(v37 + 8))(v7, v16);
  }

  else
  {
    v22 = v21;
    v38 = v19;
    (*(v37 + 8))(v7, v16);
    v23 = v31;
    sub_253148774();
    v24 = v17;
    v25 = v32;
    v27 = sub_2530FFD64(v24, v32, a2[5]);
    (*(v30 + 8))(v23, v25);
    v28 = sub_253148B54();

    v19 = [objc_opt_self() expressionForSubquery:v22 usingIteratorVariable:v28 predicate:v27];
  }

  return v19;
}

uint64_t sub_253104830(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_25310486C(uint64_t a1, void *a2)
{
  v28 = a2[3];
  v25 = *(v28 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25314E1C0;
  v26 = v2;
  MEMORY[0x259BFC1B0](a2);
  v15 = a2[4];
  v27 = a1;
  v16 = sub_2530FFCD4(a1, v10, v15);
  (*(v11 + 8))(v13, v10);
  if (v3)
  {
    *(v14 + 16) = 0;
  }

  else
  {
    v17 = v25;
    v18 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v14 + 56) = v18;
    *(v14 + 32) = v16;
    MEMORY[0x259BFC1C0](a2);
    v19 = v28;
    v21 = sub_2530FFCD4(v27, v28, a2[5]);
    (*(v17 + 8))(v8, v19);
    *(v14 + 88) = v18;
    *(v14 + 64) = v21;
    v22 = sub_253148B54();
    v23 = sub_253148C84();

    v16 = [objc_opt_self() expressionForFunction:v22 arguments:v23];
  }

  return v16;
}

uint64_t sub_253104B80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253104BBC(uint64_t a1, void *a2)
{
  v26 = a2[3];
  v23 = *(v26 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25314EC30;
  v24 = v2;
  MEMORY[0x259BFC140](a2);
  v15 = a2[4];
  v25 = a1;
  v16 = sub_2530FFCD4(a1, v10, v15);
  (*(v11 + 8))(v13, v10);
  if (v3)
  {
    *(v14 + 16) = 0;
  }

  else
  {
    *(v14 + 32) = v16;
    v17 = v23;
    MEMORY[0x259BFC150](a2);
    v18 = v26;
    v20 = sub_2530FFCD4(v25, v26, a2[5]);
    (*(v17 + 8))(v8, v18);
    *(v14 + 40) = v20;
    sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    v21 = sub_253148C84();

    v16 = [objc_opt_self() expressionForAggregate_];
  }

  return v16;
}

uint64_t sub_253104E90(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253104ECC(uint64_t a1, void *a2)
{
  v26 = a2[2];
  v25 = *(v26 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253148604();
  v13 = sub_2530FFCD4(a1, v9, a2[5]);
  v15 = *(v10 + 8);
  v14 = (v10 + 8);
  v15(v12, v9);
  if (!v2)
  {
    v16 = v13;
    MEMORY[0x259BFC210](a2);
    v17 = v26;
    v18 = sub_2530FFCD4(a1, v26, a2[4]);
    (*(v25 + 8))(v7, v17);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = swift_conformsToProtocol2();
    if (AssociatedTypeWitness)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = 10;
    }

    else
    {
      v23 = 100;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v16 rightExpression:v18 modifier:0 type:v23 options:0];
  }

  return v14;
}

uint64_t sub_253105174(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531051B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  a2[3] = *(a1 + 16);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return MEMORY[0x259BFC340](a1);
}

uint64_t sub_2531051F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  a2[3] = *(a1 + 24);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return MEMORY[0x259BFC350](a1);
}

uint64_t sub_253105238@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v73 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = sub_253149564();
  v58 = *(v63 - 8);
  v6 = MEMORY[0x28223BE20](v63);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v57 - v8;
  v67 = sub_2531495E4();
  v60 = *(v67 - 8);
  v9 = MEMORY[0x28223BE20](v67);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v57 - v11;
  v71 = sub_253149554();
  v64 = *(v71 - 8);
  v12 = MEMORY[0x28223BE20](v71);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v57 - v14;
  v15 = sub_253148B34();
  v68 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v69 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = sub_253149074();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v57 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v30;
  (*(v30 + 16))(v29, v72, a1);
  if (swift_dynamicCast())
  {
    (*(v21 + 32))(v24, v27, v20);
    v31 = v73;
    *(v73 + 24) = AssociatedTypeWitness;
    *(v31 + 32) = AssociatedConformanceWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    v33 = *(*(AssociatedTypeWitness - 8) + 32);
    v33(boxed_opaque_existential_0, v24, AssociatedTypeWitness);
    v34 = *(v20 + 36);
    *(v31 + 64) = AssociatedTypeWitness;
    *(v31 + 72) = AssociatedConformanceWitness;
    v35 = __swift_allocate_boxed_opaque_existential_0((v31 + 40));
    v33(v35, &v24[v34], AssociatedTypeWitness);
    *(v31 + 80) = 0;
  }

  else
  {
    v36 = v73;
    if (swift_dynamicCast())
    {
      v37 = v69;
      (*(v68 + 32))(v69, v19, v15);
      v38 = v36;
      *(v36 + 24) = AssociatedTypeWitness;
      *(v36 + 32) = AssociatedConformanceWitness;
      v39 = __swift_allocate_boxed_opaque_existential_0(v36);
      v40 = *(*(AssociatedTypeWitness - 8) + 32);
      v40(v39, v37, AssociatedTypeWitness);
      v41 = *(v15 + 36);
      *(v38 + 64) = AssociatedTypeWitness;
      *(v38 + 72) = AssociatedConformanceWitness;
      v42 = __swift_allocate_boxed_opaque_existential_0((v38 + 40));
      v40(v42, &v37[v41], AssociatedTypeWitness);
      *(v38 + 80) = 1;
    }

    else
    {
      v44 = v70;
      v43 = v71;
      if (swift_dynamicCast())
      {
        v45 = v65;
        (*(v64 + 32))(v65, v44, v43);
        *(v36 + 24) = AssociatedTypeWitness;
        *(v36 + 32) = AssociatedConformanceWitness;
        v46 = __swift_allocate_boxed_opaque_existential_0(v36);
        (*(*(AssociatedTypeWitness - 8) + 32))(v46, v45, AssociatedTypeWitness);
        v47 = 2;
      }

      else
      {
        v49 = v66;
        v48 = v67;
        if (swift_dynamicCast())
        {
          v50 = v61;
          (*(v60 + 32))(v61, v49, v48);
          *(v36 + 24) = AssociatedTypeWitness;
          *(v36 + 32) = AssociatedConformanceWitness;
          v51 = __swift_allocate_boxed_opaque_existential_0(v36);
          (*(*(AssociatedTypeWitness - 8) + 32))(v51, v50, AssociatedTypeWitness);
          v47 = 3;
        }

        else
        {
          v53 = v62;
          v52 = v63;
          if (swift_dynamicCast())
          {
            v54 = v59;
            (*(v58 + 32))(v59, v53, v52);
            *(v36 + 24) = AssociatedTypeWitness;
            *(v36 + 32) = AssociatedConformanceWitness;
            v55 = __swift_allocate_boxed_opaque_existential_0(v36);
            (*(*(AssociatedTypeWitness - 8) + 32))(v55, v54, AssociatedTypeWitness);
            v47 = 4;
          }

          else
          {
            *(v36 + 48) = 0u;
            *(v36 + 64) = 0u;
            *(v36 + 16) = 0u;
            *(v36 + 32) = 0u;
            *v36 = 0u;
            v47 = -1;
          }
        }
      }

      *(v36 + 80) = v47;
    }
  }

  return (*(v74 + 8))(v29, a1);
}

uint64_t sub_2531059AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x259BFC360](v6);
  sub_253105238(v4, a3);
  return (*(v5 + 8))(v8, v4);
}

char *sub_253105A90(uint64_t a1, void *a2)
{
  v30 = a2[2];
  v31 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v33 = &v25 - v9;
  v11 = *(v10 + 24);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  MEMORY[0x259BFC2D0](v15);
  v16 = a2[5];
  v29 = a1;
  v17 = v14;
  v18 = v34;
  v19 = sub_2530FFCD4(a1, v11, v16);
  if (v18)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v27 = v16;
    v34 = v19;
    (*(v12 + 8))(v14, v11);
    MEMORY[0x259BFC2C0](a2);
    v21 = v30;
    v26 = a2[4];
    v22 = sub_2530FFCD4(v29, v30, v26);
    (*(v31 + 8))(v33, v21);
    v23 = objc_allocWithZone(MEMORY[0x277CCA918]);
    v24 = v34;
    v17 = [v23 initWithLeftExpression:v34 rightExpression:v22 modifier:0 type:100 options:0];
  }

  return v17;
}

uint64_t sub_253106768(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531067A4(void *a1, void *a2)
{
  v39 = a1;
  v35 = a2[3];
  v33 = *(v35 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v5 + 16);
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_253148534();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_253148824();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  sub_253148664();
  sub_253148814();
  (*(v12 + 8))(v14, v11);
  v15 = v39;
  v16 = sub_2530FE3A0(v10);
  v17 = v10;
  v18 = v36;
  (*(v8 + 8))(v17, v38);
  MEMORY[0x259BFC280](a2);
  v19 = v41;
  v20 = sub_2530FFCD4(v15, v18, v37);
  if (v19)
  {
    (*(v40 + 8))(v7, v18);
  }

  else
  {
    v38 = v16;
    v41 = v20;
    v21 = v33;
    (*(v40 + 8))(v7, v18);
    v22 = v34;
    MEMORY[0x259BFC270](a2);
    v23 = v35;
    v25 = sub_2530FFD64(v15, v35, a2[5]);
    (*(v21 + 8))(v22, v23);
    v26 = sub_253148B54();

    v27 = objc_opt_self();
    v28 = v41;
    v29 = [v27 expressionForSubquery:v41 usingIteratorVariable:v26 predicate:v25];

    v30 = sub_2530FE5A8(0x746E756F6340, 0xE600000000000000);
    v42 = 0;
    v31 = [v27 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v15 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v30 rightExpression:v31 modifier:0 type:5 options:0];
  }

  return v15;
}

uint64_t sub_253106CB4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253106CF0(uint64_t a1, void *a2)
{
  v44 = a1;
  v3 = a2[2];
  v39 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v6 + 24);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_253148534();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2[4];
  v41 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = sub_253148824();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  sub_253148664();
  sub_253148814();
  v16 = v15;
  v17 = v43;
  (*(v13 + 8))(v16, v12);
  v18 = v44;
  v37 = sub_2530FE3A0(v11);
  v20 = v19;
  (*(v9 + 8))(v11, v42);
  MEMORY[0x259BFC240](a2);
  v21 = v46;
  v22 = sub_2530FFD64(v18, v17, a2[5]);
  if (v21)
  {
    (*(v45 + 8))(v8, v17);
  }

  else
  {
    v23 = v22;
    v46 = v20;
    v24 = v39;
    (*(v45 + 8))(v8, v17);
    v25 = [objc_opt_self() notPredicateWithSubpredicate_];

    v26 = v40;
    MEMORY[0x259BFC250](a2);
    v27 = v18;
    v28 = v41;
    v30 = sub_2530FFCD4(v27, v41, v38);
    (*(v24 + 8))(v26, v28);
    v31 = v25;
    v32 = sub_253148B54();

    v33 = objc_opt_self();
    v34 = [v33 expressionForSubquery:v30 usingIteratorVariable:v32 predicate:v31];

    v35 = sub_2530FE5A8(0x746E756F6340, 0xE600000000000000);
    v47 = 0;
    v36 = [v33 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v20 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v35 rightExpression:v36 modifier:0 type:4 options:0];
  }

  return v20;
}

uint64_t sub_253107234(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531072AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_253107318(a1, a2, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2531072DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253107318(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v12);
  v14 = sub_2530FFCD4(a1, v8, *(a2 + 24));
  (*(v9 + 8))(v11, v8);
  if (!v4)
  {
    a4 = sub_2530FE5A8(a4, 0xE900000000000066);
  }

  return a4;
}

uint64_t sub_253107488(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_2531074C4(uint64_t a1, void *a2)
{
  v30 = a2[4];
  v29 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v8 + 24);
  v31 = *(v32 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v9);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  sub_253148584();
  v17 = v34;
  v18 = sub_2530FFD64(a1, v13, a2[5]);
  (*(v14 + 8))(v16, v13);
  if (!v17)
  {
    v34 = v18;
    v19 = v29;
    v20 = v30;
    sub_253148564();
    v21 = v32;
    v22 = sub_2530FFCD4(a1, v32, a2[6]);
    (*(v31 + 8))(v11, v21);
    v23 = v22;
    sub_253148574();
    v24 = sub_2530FFCD4(a1, v20, a2[7]);
    (*(v19 + 8))(v7, v20);
    v26 = objc_opt_self();
    v27 = v34;
    v13 = [v26 expressionForConditional:v34 trueExpression:v23 falseExpression:v24];
  }

  return v13;
}

uint64_t sub_2531077F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253107834(uint64_t a1, void *a2)
{
  v29 = a2[3];
  v31 = *(v29 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  MEMORY[0x259BFC190](v14);
  v15 = a1;
  v16 = v13;
  v17 = sub_2530FFCD4(a1, v10, a2[4]);
  (*(v11 + 8))(v13, v10);
  if (!v3)
  {
    sub_2531485A4();
    v18 = v15;
    v19 = v29;
    v16 = sub_2530FFCD4(v18, v29, a2[5]);
    (*(v31 + 8))(v8, v19);
    if (![v17 expressionType])
    {
      if (![v17 constantValue])
      {

        memset(v30, 0, sizeof(v30));
        sub_2530CD33C(v30, &qword_27F5818A0, &qword_25314E9C0);
        return v16;
      }

      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v30, &qword_27F5818A0, &qword_25314E9C0);
    }

    v21 = objc_opt_self();
    v22 = [v21 expressionForConstantValue_];
    v23 = objc_allocWithZone(MEMORY[0x277CCA918]);
    v24 = v17;
    v25 = [v23 initWithLeftExpression:v24 rightExpression:v22 modifier:0 type:5 options:0];

    v26 = v25;
    v27 = [v21 expressionForConditional:v26 trueExpression:v24 falseExpression:v16];

    return v27;
  }

  return v16;
}

uint64_t sub_253107B8C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253107BC8(uint64_t a1, void *a2)
{
  v59 = a2[4];
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](a1);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253148534();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253148824();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = a2[2];
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v10);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 32);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    v53 = result;
    v54 = v8;
    v55 = v16;
    v52 = v4;
    *(a1 + 32) = v21;
    MEMORY[0x259BFC1D0](a2);
    v22 = v60;
    v23 = sub_2530FFF08(a1, v13, a2[6]);
    v25 = v24;
    v27 = v26;
    v29 = *(v14 + 8);
    v28 = (v14 + 8);
    result = v29(v18, v13);
    if (!v22)
    {
      v60 = v23;
      v30 = *(a1 + 32);
      v20 = v30 != 0;
      v31 = v30 - 1;
      if (!v20)
      {
        goto LABEL_12;
      }

      v51 = v27;
      *(a1 + 32) = v31;
      sub_2531485E4();
      v32 = v53;
      v33 = v54;
      sub_253148814();
      v55[1](v12, v32);
      v55 = v25;
      v34 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = *(a1 + 8);
      sub_25312FA20(v34, v25, 0, v33, isUniquelyReferenced_nonNull_native);
      *(a1 + 8) = v62;
      (*(v56 + 8))(v33, v57);
      v36 = v58;
      sub_2531485F4();
      v37 = v59;
      v38 = sub_2530FFF08(a1, v59, a2[7]);
      v60 = 0;
      v61 = v39;
      v40 = v38;
      (*(v52 + 8))(v36, v37);
      v41 = objc_opt_self();
      v42 = v34;
      v43 = [v41 expressionForConstantValue_];
      v44 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v42 rightExpression:v43 modifier:0 type:5 options:0];

      v45 = v51;
      if (v51)
      {
        v46 = v51;
      }

      else
      {
        v46 = v44;
        v45 = 0;
      }

      v47 = v45;
      v48 = v40;
      v49 = [v41 expressionForConstantValue_];
      v28 = [v41 expressionForConditional:v46 trueExpression:v48 falseExpression:v49];
    }

    return v28;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_253108108(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108144(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_253108180(uint64_t a1, void *a2)
{
  v34 = a2[3];
  v32 = *(v34 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25314E1C0;
  v33 = v2;
  MEMORY[0x259BFC2F0](a2);
  v14 = v38;
  v15 = sub_2530FFCD4(a1, v9, a2[4]);
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    *(v13 + 16) = 0;
  }

  else
  {
    v16 = v32;
    v17 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v13 + 56) = v17;
    *(v13 + 32) = v15;
    MEMORY[0x259BFC2E0](a2);
    v18 = v34;
    v20 = sub_2530FFCD4(a1, v34, a2[5]);
    (*(v16 + 8))(v7, v18);
    *(v13 + 88) = v17;
    *(v13 + 64) = v20;
    v21 = sub_253148B54();
    v22 = sub_253148C84();

    v12 = objc_opt_self();
    v23 = [v12 expressionForFunction:v21 arguments:v22];

    if ([v23 expressionValueWithObject:0 context:0])
    {
      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530C02F4(&v35, v37);
      sub_2530FF174(v37, &v35);
      v25 = v36;
      if (v36)
      {
        v26 = __swift_project_boxed_opaque_existential_1(&v35, v36);
        v27 = *(v25 - 8);
        MEMORY[0x28223BE20](v26);
        v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v29);
        v30 = sub_253149724();
        (*(v27 + 8))(v29, v25);
        __swift_destroy_boxed_opaque_existential_0(&v35);
      }

      else
      {
        v30 = 0;
      }

      v12 = [v12 expressionForConstantValue_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    else
    {
      sub_253109940();
      swift_allocError();
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 3;
      swift_willThrow();
    }
  }

  return v12;
}

char *sub_253108624(uint64_t a1, void *a2)
{
  result = sub_253108180(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_253108650(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_25310868C(uint64_t a1, void *a2)
{
  v27 = a2[3];
  v25 = *(v27 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25314E1C0;
  v26 = v2;
  MEMORY[0x259BFC2B0](a2);
  v14 = v28;
  v15 = sub_2530FFCD4(a1, v9, a2[5]);
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    *(v13 + 16) = 0;
  }

  else
  {
    v16 = v25;
    v17 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v13 + 56) = v17;
    *(v13 + 32) = v15;
    sub_2531486A4();
    v18 = v27;
    v20 = sub_2530FFCD4(a1, v27, a2[6]);
    (*(v16 + 8))(v7, v18);
    *(v13 + 88) = v17;
    *(v13 + 64) = v20;
    v21 = sub_253148B54();
    v22 = sub_253148C84();

    v15 = [objc_opt_self() expressionForFunction:v21 arguments:v22];

    if ([v15 expressionType])
    {
      sub_253109940();
      swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 3;
      swift_willThrow();
    }
  }

  return v15;
}

uint64_t sub_2531089F0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108A70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253108AAC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v27 = a7;
  v29 = a2[3];
  v30 = a6;
  v31 = *(v29 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v11);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  v20(v19);
  v21 = a1;
  v22 = sub_2530FFCD4(a1, v15, a2[4]);
  (*(v16 + 8))(v18, v15);
  if (!v8)
  {
    v23 = v27;
    v30(a2);
    v24 = v29;
    v25 = sub_2530FFCD4(a1, v29, a2[5]);
    (*(v31 + 8))(v13, v24);
    v21 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v22 rightExpression:v25 modifier:0 type:v23 options:0];
  }

  return v21;
}

id sub_253108D28(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  result = sub_253108AAC(a1, a2, *(a3 - 8), *(a3 - 16), a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_253108D64(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108DF4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253108E30(uint64_t a1)
{
  type metadata accessor for ComparisonResult(0);
  v12[3] = v3;
  v12[0] = a1;
  sub_2530FF174(v12, v13);
  result = __swift_destroy_boxed_opaque_existential_0(v12);
  if (!v1)
  {
    v5 = v14;
    if (v14)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v7 = *(v5 - 8);
      MEMORY[0x28223BE20](v6);
      v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_253149724();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v11;
  }

  return result;
}

id sub_253108FB4(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_2530FFCD4(a3, a5, a7);
  if (!v8)
  {
    v30 = a4;
    v31 = v16;
    v18 = sub_2530FFCD4(a3, a6, a8);
    v29 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v31 rightExpression:v18 modifier:0 type:4 options:a4];

    v19 = sub_2530FFCD4(a3, a5, a7);
    v20 = sub_2530FFCD4(a3, a6, a8);
    v21 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v19 rightExpression:v20 modifier:0 type:0 options:v30];

    v22 = sub_253108E30(-1);
    v23 = sub_253108E30(1);
    v24 = objc_opt_self();
    v25 = v21;
    v26 = [v24 expressionForConditional:v25 trueExpression:v22 falseExpression:v23];

    v27 = sub_253108E30(0);
    v28 = v29;
    a1 = [v24 expressionForConditional:v28 trueExpression:v27 falseExpression:v26];
  }

  return a1;
}

id sub_2531092A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  result = sub_253109310(a1, a2, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2531092D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253109310(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v23 = a1;
  v24 = a5;
  v7 = a2[3];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v17);
  a4(a2);
  v19 = v25;
  v20 = sub_253108FB4(v16, v11, v23, v24, v13, v7, a2[4], a2[5]);
  if (v19)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v22 = v20;
    (*(v8 + 8))(v11, v7);
    (*(v14 + 8))(v16, v13);
    return v22;
  }
}

uint64_t sub_253109558(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253109594(void *a1, void *a2)
{
  v22 = a2[3];
  v23 = *(v22 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  MEMORY[0x259BFC300](v14);
  v15 = a1;
  v16 = sub_2530FFCD4(a1, v10, a2[4]);
  (*(v11 + 8))(v13, v10);
  if (!v3)
  {
    MEMORY[0x259BFC310](a2);
    v17 = v15;
    v18 = v22;
    v19 = sub_2530FFCD4(v17, v22, a2[5]);
    (*(v23 + 8))(v8, v18);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v16 rightExpression:v19 modifier:0 type:99 options:11];
  }

  return v15;
}

uint64_t sub_2531097E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_253109814(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253109850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_253148BF4() != a1 || v9 != a2)
  {
    v10 = sub_253149734();

    if (v10)
    {
      return v8;
    }

    v8 = sub_253148BC4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_253109940()
{
  result = qword_27F581948;
  if (!qword_27F581948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581948);
  }

  return result;
}

id sub_253109994(void *a1, void *a2)
{
  v4 = a1[3];
  if (!v4)
  {
    v10 = 0;
    v11 = a2[3];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_253149724();
  (*(v7 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v11 = a2[3];
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  v16 = sub_253149724();
  (*(v13 + 8))(v15, v11);
  __swift_destroy_boxed_opaque_existential_0(a2);
LABEL_6:
  v17 = [v2 initWithOperand:v10 andKeyPath:v16];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_253109BC4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_253149734();
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_253149734();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_253149734();
}

unint64_t sub_253109C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819B8, &qword_25314F1A8);
    v3 = sub_2531495D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25311D7B8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253109D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819B0, &qword_25314F1A0);
    v3 = sub_2531495D4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_25311D7B8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253109E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A08, &qword_25314F1F8);
    v3 = sub_2531495D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2530CD26C(v4, &v13, &qword_27F580A30, &unk_25314F200);
      v5 = v13;
      v6 = v14;
      result = sub_25311D908(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2530C02F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253109FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581958, &unk_25314F140);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A8, &qword_25314F198);
    v7 = sub_2531495D4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2530CD26C(v9, v5, &qword_27F581958, &unk_25314F140);
      result = sub_25311DA30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_253148534();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 8);
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25310A19C(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t sub_25310A218(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_25310A288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F580A38, &qword_25314CE58);
    v3 = sub_2531495D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2530CD26C(v4, v13, &qword_27F581A10, &qword_25314F210);
      result = sub_25311D980(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2530C02F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_25310A3C4(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v13[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
  sub_2530FF174(v13, v14);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v1)
  {
    v6 = v15;
    if (v15)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
      v8 = *(v6 - 8);
      MEMORY[0x28223BE20](v7);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_253149724();
      (*(v8 + 8))(v10, v6);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

unint64_t sub_25310A5B0()
{
  result = qword_27F581A00;
  if (!qword_27F581A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A00);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25310A634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25310A670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_25310A6C4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25310A714(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25310A75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11HomeKitCore33FetchablePredicateConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25310A7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25310A824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25310A868(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_25310A894()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  sub_253148994();
  v2 = v8;
  if (qword_27F580250 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];
  v3 = swift_allocObject();
  swift_weakInit();
  v12 = sub_25310B058;
  v13 = v3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_25310AB2C;
  v11 = &block_descriptor_1;
  v4 = _Block_copy(&v8);

  [v2 setInvalidationHandler_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v12 = sub_25310B0A8;
  v13 = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_25310AB2C;
  v11 = &block_descriptor_19;
  v6 = _Block_copy(&v8);

  [v2 setInterruptionHandler_];
  _Block_release(v6);
  [v2 resume];
  v7 = *(v1 + 112);
  *(v1 + 112) = v2;
}

uint64_t sub_25310AAC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25310AB2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25310AB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_253148DE4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_253112858(0, 0, v6, a3, v10);
  }

  return result;
}

uint64_t sub_25310AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580788, &qword_25314F560);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A18, &qword_25314F568);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25310AE2C, a4, 0);
}

uint64_t sub_25310AE2C()
{
  v1 = *(*(v0 + 40) + 120);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](sub_25310AE50, v1, 0);
}

uint64_t sub_25310AE50()
{
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[13];
    v19 = v0[14];
    v5 = v0[7];
    v18 = *(v0[12] + 36);
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = (v5 + 16);
    v17 = *(v4 + 72);
    v7 = (v5 + 8);
    v8 = (v0[10] + 8);

    do
    {
      v9 = v0[14];
      v10 = v0[11];
      v12 = v0[8];
      v11 = v0[9];
      v13 = v0[6];
      sub_25310B194(v6, v9);
      (*v16)(v12, v19 + v18, v13);
      sub_25310B204(v9);
      sub_253148E34();
      (*v7)(v12, v13);
      (*v8)(v10, v11);
      v6 += v17;
      --v3;
    }

    while (v3);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_25310AFF4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25310B0E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530BF218;

  return sub_25310AC8C(a1, v4, v5, v6);
}

uint64_t sub_25310B194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25310B204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_21Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25310B2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530CD684;

  return sub_25310AAA4(a1, v4, v5, v6);
}

unint64_t sub_25310B374()
{
  result = qword_27F581A20;
  if (!qword_27F581A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A20);
  }

  return result;
}

void sub_25310B3D0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    sub_2530CF970(0, &qword_27F581A88, 0x277CBE4F0);
    sub_25310E998();
    sub_253148FC4();
    v2 = v32;
    v3 = v33;
    v4 = v34;
    v5 = v35;
    v6 = v36;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  while (v2 < 0)
  {
    if (!sub_253149314() || (sub_2530CF970(0, &qword_27F581A88, 0x277CBE4F0), swift_dynamicCast(), (v13 = v37) == 0))
    {
LABEL_27:
      sub_2530DFAD4(v2);
      return;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v16 = v14;
      v17 = v13;
      v18 = [v16 name];
      v19 = sub_253148B64();
      v30 = v20;
      v31 = v19;

      v21 = 0;
      goto LABEL_22;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v22 = v15;
      v23 = v13;
      v24 = [v22 name];
      v25 = sub_253148B64();
      v30 = v26;
      v31 = v25;

      LOBYTE(v22) = [v22 isToMany];
      v21 = v22 | 0x80;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2530F4A08(0, *(v10 + 2) + 1, 1, v10);
      }

      v28 = *(v10 + 2);
      v27 = *(v10 + 3);
      if (v28 >= v27 >> 1)
      {
        v10 = sub_2530F4A08((v27 > 1), v28 + 1, 1, v10);
      }

      *(v10 + 2) = v28 + 1;
      v29 = &v10[24 * v28];
      *(v29 + 4) = v31;
      *(v29 + 5) = v30;
      v29[48] = v21;
    }

    else
    {
    }
  }

  v11 = v5;
  v12 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_25310B704(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v32 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v30 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_253149814();
    if (v14 < 0)
    {
      MEMORY[0x259BFD420](1);

      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);

      sub_253148BB4();
    }

    v15 = sub_253149844();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_42:
      sub_2530DA7C4(v12, v13);
      return 0;
    }

    v31 = ~v16;
    while (1)
    {
      v18 = v2;
      v19 = *(v2 + 48) + 24 * v17;
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      if ((v22 & 0x80000000) == 0)
      {
        break;
      }

      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      if (v21 == v12 && v20 == v13)
      {
        sub_2530DA7BC(v12, v13);
        sub_2530DA7BC(v12, v13);
        sub_2530DA7C4(v12, v13);
        sub_2530DA7C4(v12, v13);
        v2 = v18;
        if (((v14 ^ v22) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v26 = sub_253149734();
        sub_2530DA7BC(v12, v13);
        sub_2530DA7BC(v21, v20);
        sub_2530DA7C4(v21, v20);
        sub_2530DA7C4(v12, v13);
        v2 = v18;
        if ((v26 & 1) != 0 && ((v14 ^ v22) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

LABEL_20:
      v17 = (v17 + 1) & v31;
      if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (v14 < 0)
    {
LABEL_19:
      sub_2530DA7BC(v12, v13);
      sub_2530DA7BC(v21, v20);
      sub_2530DA7C4(v21, v20);
      sub_2530DA7C4(v12, v13);
      v2 = v18;
      goto LABEL_20;
    }

    if (v21 != v12 || v20 != v13)
    {
      v24 = sub_253149734();
      sub_2530DA7BC(v12, v13);
      sub_2530DA7BC(v21, v20);
      sub_2530DA7C4(v21, v20);
      sub_2530DA7C4(v12, v13);
      v2 = v18;
      if (v24)
      {
        goto LABEL_39;
      }

      goto LABEL_20;
    }

    sub_2530DA7C4(v12, v13);
    v2 = v18;
LABEL_39:
    sub_2530DA7C4(v12, v13);
    v7 = v28;
    result = v29;
    v6 = v30;
  }

  while (v30);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25310BAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_253148B04();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_25310E510(&qword_27F580C40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = sub_253148B44();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void HomesStore.CoreData.ManagedObjectChangeSet.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
  a1[2] = v1;
}

Swift::Void __swiftcall HomesStore.CoreData.ManagedObjectChangeSet.processChange(_:)(NSPersistentHistoryChange a1)
{
  v2 = [(objc_class *)a1.super.isa changeType];
  if (v2 == 2)
  {

    sub_25310D890(a1.super.isa);
  }

  else if (v2 == 1)
  {

    sub_25310D68C(a1.super.isa);
  }

  else if (v2)
  {
    if (qword_27F5802A8 != -1)
    {
      swift_once();
    }

    v3 = sub_253148A94();
    __swift_project_value_buffer(v3, qword_27F581A28);
    v9 = a1.super.isa;
    oslog = sub_253148A74();
    v4 = sub_2531490B4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 134218242;
      *(v5 + 4) = [(objc_class *)v9 changeType];

      *(v5 + 12) = 2112;
      *(v5 + 14) = v9;
      *v6 = v9;
      v7 = v9;
      _os_log_impl(&dword_2530B8000, oslog, v4, "Skipping change with unknown change type %ld: %@", v5, 0x16u);
      sub_2530CD33C(v6, &qword_27F581E10, &qword_25314F640);
      MEMORY[0x259BFDC60](v6, -1, -1);
      MEMORY[0x259BFDC60](v5, -1, -1);
      v8 = oslog;
    }

    else
    {

      v8 = v9;
    }
  }

  else
  {

    sub_25310D46C(a1.super.isa);
  }
}

uint64_t sub_25310C0B0()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581A28);
  __swift_project_value_buffer(v0, qword_27F581A28);
  return sub_253148A84();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_253149734();
  }
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.hashValue.getter()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25310C1E4()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25310C238(uint64_t a1)
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25310C280(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_253149734();
  }
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_253149734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.hashValue.getter()
{
  sub_253149814();
  sub_253148BB4();
  sub_253149834();
  return sub_253149844();
}

uint64_t sub_25310C3E4()
{
  sub_253149814();
  sub_253148BB4();
  sub_253149834();
  return sub_253149844();
}

uint64_t sub_25310C480(uint64_t a1)
{
  sub_253149814();
  sub_253148BB4();
  sub_253149834();
  return sub_253149844();
}

uint64_t sub_25310C4E0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_253149734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.PropertyDescription.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16) < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    return sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);

    return sub_253148BB4();
  }
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.PropertyDescription.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_253149814();
  if (v1 < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  return sub_253149844();
}

uint64_t sub_25310C670()
{
  v1 = *(v0 + 16);
  sub_253149814();
  if (v1 < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  return sub_253149844();
}

uint64_t sub_25310C700(uint64_t a1)
{
  if (*(v1 + 16) < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    return sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);

    return sub_253148BB4();
  }
}

uint64_t sub_25310C79C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_253149814();
  if (v2 < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  return sub_253149844();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Insert.hashValue.getter()
{
  sub_253149814();
  sub_2531491A4();
  return sub_253149844();
}

uint64_t sub_25310C93C()
{
  sub_253149814();
  sub_2531491A4();
  return sub_253149844();
}

uint64_t sub_25310C9A4(uint64_t a1)
{
  sub_253149814();
  sub_2531491A4();
  return sub_253149844();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Update.updatedProperties.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.Update.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  return sub_25310B704(v2, v3);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Update.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  sub_2531491A4();

  return sub_25310DF24(a1, v3);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Update.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_253149814();
  sub_2531491A4();
  sub_25310DF24(v3, v1);
  return sub_253149844();
}

uint64_t sub_25310CC10()
{
  v1 = *(v0 + 8);
  sub_253149814();
  sub_2531491A4();
  sub_25310DF24(v3, v1);
  return sub_253149844();
}

uint64_t sub_25310CC6C(__int128 *a1)
{
  v3 = *(v1 + 8);
  sub_2531491A4();

  return sub_25310DF24(a1, v3);
}

uint64_t sub_25310CCB8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_253149814();
  sub_2531491A4();
  sub_25310DF24(v4, v2);
  return sub_253149844();
}

uint64_t sub_25310CD10(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  return sub_25310B704(v2, v3);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.modelID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0) + 20);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.modelID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0) + 20);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.Delete.== infix(_:_:)(void *a1, void *a2)
{
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.hash(into:)(uint64_t a1)
{
  sub_2531491A4();
  type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253148B14();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.hashValue.getter()
{
  sub_253149814();
  sub_2531491A4();
  type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25310D100()
{
  sub_253149814();
  sub_2531491A4();
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25310D1AC(uint64_t a1)
{
  sub_2531491A4();
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253148B14();
}

uint64_t sub_25310D23C(uint64_t a1)
{
  sub_253149814();
  sub_2531491A4();
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25310D2E4(void *a1, void *a2, uint64_t a3)
{
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.insertsByObjectID.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.updatesByObjectID.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.deletesByObjectID.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_25310D46C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = [a1 changedObjectID];
  v8 = v7;
  if (!*(*v2 + 16) || (sub_25311DB04(v7), (v9 & 1) == 0))
  {
    v10 = v2[2];
    if (!*(v10 + 16) || (v11 = sub_25311DB04(v8), (v12 & 1) == 0))
    {
      v13 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      sub_2530CD33C(v6, &qword_27F5818C8, &unk_25314E9F0);
      v14 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[0] = *v2;
      sub_2531300A0(v14, v14, isUniquelyReferenced_nonNull_native);
      *v2 = v20[0];
      sub_25312E850(v14, v20);
      sub_25310E8D8(v20[0], v20[1]);

      return;
    }

    v16 = *(v10 + 56);
    v17 = v11;
    v18 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
    v19 = *(v18 - 8);
    sub_2530FBB74(v16 + *(v19 + 72) * v17, v6);
    (*(v19 + 56))(v6, 0, 1, v18);
    sub_2530CD33C(v6, &qword_27F5818C8, &unk_25314E9F0);
    __break(1u);
  }

  __break(1u);
}

void sub_25310D68C(void *a1)
{
  v2 = v1;
  v4 = [a1 changedObjectID];
  if (!*(*v1 + 16) || (v23 = v4, sub_25311DB04(v4), v4 = v23, (v5 & 1) == 0))
  {

    v6 = [a1 changedObjectID];
    v7 = v6;
    v8 = v1[1];
    if (*(v8 + 16) && (v9 = sub_25311DB04(v6), (v10 & 1) != 0))
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;

      v14 = v13;
    }

    else
    {

      v14 = [a1 changedObjectID];
      v12 = MEMORY[0x277D84FA0];
    }

    v26 = v14;
    v27 = v12;
    v15 = [a1 updatedProperties];
    if (v15)
    {
      v16 = v15;
      sub_2530CF970(0, &qword_27F581A88, 0x277CBE4F0);
      sub_25310E998();
      v17 = sub_253148F74();

      sub_25310B3D0(v17, v18);
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    sub_25310E918(v20);

    v21 = [a1 changedObjectID];
    v24 = v26;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v2[1];
    sub_25312FF20(v24, v27, v21, isUniquelyReferenced_nonNull_native);

    v2[1] = v25;

    v4 = v24;
  }
}

void sub_25310D890(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_253148944();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 changedObjectID];
  v17 = v16;
  if (*(*v1 + 16))
  {
    sub_25311DB04(v16);
    if (v18)
    {

      v19 = [a1 changedObjectID];
      sub_25312E8E8(v19, v47);

      return;
    }
  }

  v20 = [a1 changedObjectID];
  sub_25312E850(v20, v47);

  sub_25310E8D8(v47[0], v47[1]);
  v21 = [a1 tombstone];
  if (v21)
  {
    v22 = v21;
    v23 = sub_253148AD4();
  }

  else
  {
    v23 = sub_25310A288(MEMORY[0x277D84F90]);
  }

  v45 = 0x44496C65646F6DLL;
  v46 = 0xE700000000000000;
  sub_253149364();
  if (*(v23 + 16) && (v24 = sub_25311D980(v47), (v25 & 1) != 0))
  {
    sub_2530C0304(*(v23 + 56) + 32 * v24, v48);
    sub_2530FB904(v47);
    v26 = swift_dynamicCast();
    (*(v13 + 56))(v11, v26 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {

      (*(v13 + 32))(v15, v11, v12);
      v27 = [a1 changedObjectID];
      v28 = v44;
      (*(v13 + 16))(&v8[*(v44 + 20)], v15, v12);
      *v8 = v27;
      v29 = [a1 changedObjectID];
      sub_2530FBB74(v8, v5);
      (*(v43 + 56))(v5, 0, 1, v28);
      sub_25312AFD0(v5, v29);
      sub_2530FD014(v8);
      (*(v13 + 8))(v15, v12);
      return;
    }
  }

  else
  {
    sub_2530FB904(v47);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_2530CD33C(v11, &qword_27F581608, &qword_25314E3D0);
  if (qword_27F5802A8 != -1)
  {
    swift_once();
  }

  v30 = sub_253148A94();
  __swift_project_value_buffer(v30, qword_27F581A28);
  v31 = a1;

  v32 = sub_253148A74();
  v33 = sub_2531490B4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47[0] = v36;
    *v34 = 138412546;
    v37 = [v31 changedObjectID];
    *(v34 + 4) = v37;
    *v35 = v37;
    *(v34 + 12) = 2080;
    v38 = sub_253148AE4();
    v40 = v39;

    v41 = sub_253146498(v38, v40, v47);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_2530B8000, v32, v33, "Could not find model ID in tombstoned properties for deleted managed object ID %@: %s", v34, 0x16u);
    sub_2530CD33C(v35, &qword_27F581E10, &qword_25314F640);
    MEMORY[0x259BFDC60](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x259BFDC60](v36, -1, -1);
    MEMORY[0x259BFDC60](v34, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25310DF24(__int128 *a1, uint64_t a2)
{
  sub_253149844();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v9 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_253149814();
    if (v15 < 0)
    {
      MEMORY[0x259BFD420](1);

      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);

      sub_253148BB4();
    }

    v5 &= v5 - 1;
    v10 = sub_253149844();
    result = sub_2530DA7C4(v13, v14);
    v8 ^= v10;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return MEMORY[0x259BFD420](v8);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11HomeKitCore10HomesStoreC0C4DataO22ManagedObjectChangeSetV19PropertyDescriptionO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 < 0)
  {
    if (v7 < 0)
    {
      v12 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_2530DA7BC(v12, v2);
        sub_2530DA7BC(v3, v2);
        sub_2530DA7C4(v3, v2);
        sub_2530DA7C4(v3, v2);
        if (((v4 ^ v7) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v14 = sub_253149734();
        sub_2530DA7BC(v6, v5);
        sub_2530DA7BC(v3, v2);
        sub_2530DA7C4(v3, v2);
        sub_2530DA7C4(v6, v5);
        if ((v14 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_10:
    sub_2530DA7BC(*a2, *(a2 + 8));
    sub_2530DA7BC(v3, v2);
    sub_2530DA7C4(v3, v2);
    sub_2530DA7C4(v6, v5);
    return 0;
  }

  if (v7 < 0)
  {
    goto LABEL_10;
  }

  v8 = *a1;
  if (v3 == v6 && v2 == v5)
  {
    sub_2530DA7BC(v8, v2);
    sub_2530DA7BC(v3, v2);
    sub_2530DA7C4(v3, v2);
    sub_2530DA7C4(v3, v2);
    return 1;
  }

  v10 = sub_253149734();
  sub_2530DA7BC(v6, v5);
  sub_2530DA7BC(v3, v2);
  sub_2530DA7C4(v3, v2);
  sub_2530DA7C4(v6, v5);
  result = 0;
  if (v10)
  {
    return 1;
  }

  return result;
}

uint64_t type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(uint64_t a1)
{
  result = qword_27F581A78;
  if (!qword_27F581A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25310E314()
{
  result = qword_27F581A48;
  if (!qword_27F581A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A48);
  }

  return result;
}

unint64_t sub_25310E36C()
{
  result = qword_27F581A50;
  if (!qword_27F581A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A50);
  }

  return result;
}

unint64_t sub_25310E3C4()
{
  result = qword_27F581A58;
  if (!qword_27F581A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A58);
  }

  return result;
}

unint64_t sub_25310E41C()
{
  result = qword_27F581A60;
  if (!qword_27F581A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A60);
  }

  return result;
}

unint64_t sub_25310E474()
{
  result = qword_27F581A68;
  if (!qword_27F581A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A68);
  }

  return result;
}

uint64_t sub_25310E510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25310E568(uint64_t a1, int a2)
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

uint64_t sub_25310E5B0(uint64_t result, int a2, int a3)
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

uint64_t sub_25310E5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25310E644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25310E6A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25310E6F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_25310E778(uint64_t *a1, int a2)
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

uint64_t sub_25310E7C0(uint64_t result, int a2, int a3)
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

uint64_t sub_25310E844(uint64_t a1)
{
  result = sub_2530CF970(319, &qword_27F5818D0, 0x277CBE448);
  if (v2 <= 0x3F)
  {
    result = sub_253148944();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_25310E8D8(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25310E918(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 2);
      v3 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      sub_2530DA7BC(v4, v3);
      sub_2530D62E4(v6, v4, v3, v5);
      result = sub_2530DA7C4(v6[0], v6[1]);
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_25310E998()
{
  result = qword_27F581A90;
  if (!qword_27F581A90)
  {
    sub_2530CF970(255, &qword_27F581A88, 0x277CBE4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A90);
  }

  return result;
}

uint64_t HomesStore.Accessory.Category.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 18;
  switch(result)
  {
    case 1:
      goto LABEL_28;
    case 2:
      v2 = 1;
      goto LABEL_28;
    case 3:
      v2 = 2;
      goto LABEL_28;
    case 4:
      v2 = 3;
      goto LABEL_28;
    case 5:
      v2 = 4;
      goto LABEL_28;
    case 6:
      v2 = 5;
      goto LABEL_28;
    case 7:
      v2 = 6;
      goto LABEL_28;
    case 8:
      v2 = 7;
      goto LABEL_28;
    case 9:
      v2 = 8;
      goto LABEL_28;
    case 10:
      v2 = 9;
      goto LABEL_28;
    case 11:
      v2 = 10;
      goto LABEL_28;
    case 12:
      v2 = 11;
      goto LABEL_28;
    case 13:
      v2 = 12;
      goto LABEL_28;
    case 14:
      v2 = 13;
      goto LABEL_28;
    case 15:
      v2 = 14;
      goto LABEL_28;
    case 16:
      v2 = 15;
      goto LABEL_28;
    case 17:
      v2 = 16;
      goto LABEL_28;
    case 18:
      v2 = 17;
LABEL_28:
      v3 = v2;
      goto LABEL_29;
    case 19:
LABEL_29:
      *a2 = v3;
      break;
    case 20:
      *a2 = 19;
      break;
    case 21:
      *a2 = 20;
      break;
    case 22:
      *a2 = 21;
      break;
    case 23:
      *a2 = 22;
      break;
    case 24:
      *a2 = 23;
      break;
    case 25:
      *a2 = 24;
      break;
    case 26:
      *a2 = 25;
      break;
    case 27:
      *a2 = 26;
      break;
    case 28:
      *a2 = 27;
      break;
    case 29:
      *a2 = 28;
      break;
    case 30:
      *a2 = 29;
      break;
    case 31:
      *a2 = 30;
      break;
    case 32:
      *a2 = 31;
      break;
    case 33:
      *a2 = 32;
      break;
    case 34:
      *a2 = 33;
      break;
    case 35:
      *a2 = 34;
      break;
    case 36:
      *a2 = 35;
      break;
    default:
      *a2 = 36;
      break;
  }

  return result;
}

uint64_t HomesStore.Accessory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Accessory.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Accessory(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HomesStore.Accessory(uint64_t a1)
{
  result = qword_27F581B18;
  if (!qword_27F581B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomesStore.Accessory.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HomesStore.Accessory(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomesStore.Accessory.legacyUniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.Accessory(0) + 28);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomesStore.Accessory.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Accessory(0) + 32));

  return v1;
}

uint64_t HomesStore.Accessory.firmwareVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Accessory(0) + 36));

  return v1;
}

unint64_t sub_25310EDCC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000016;
  v4 = 0x6C65646F6DLL;
  if (v1 != 4)
  {
    v4 = 0x657261776D726966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x79726F6765746163;
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

uint64_t sub_25310EE80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2531106CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25310EEA8(uint64_t a1)
{
  v2 = sub_25310FE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25310EEE4(uint64_t a1)
{
  v2 = sub_25310FE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Accessory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581AB0, "<w");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25310FE34();
  sub_253149894();
  v18 = 0;
  sub_253148944();
  sub_2531101C4(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v2)
  {
    v9 = type metadata accessor for HomesStore.Accessory(0);
    v17 = 1;
    sub_2531496B4();
    v16 = *(v3 + *(v9 + 24));
    v15 = 2;
    sub_25310FE88();
    sub_2531496D4();
    v14 = 3;
    sub_2531496D4();
    v13 = 4;
    sub_2531496A4();
    v12 = 5;
    sub_2531496A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HomesStore.Accessory.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_2531101C4(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v2 = type metadata accessor for HomesStore.Accessory(0);
  sub_253148BB4();
  MEMORY[0x259BFD420](*(v1 + v2[6]) + 1);
  sub_253148B14();
  if (*(v1 + v2[8] + 8))
  {
    sub_253149834();
    sub_253148BB4();
  }

  else
  {
    sub_253149834();
  }

  if (!*(v1 + v2[9] + 8))
  {
    return sub_253149834();
  }

  sub_253149834();

  return sub_253148BB4();
}

uint64_t HomesStore.Accessory.hashValue.getter()
{
  sub_253149814();
  HomesStore.Accessory.hash(into:)(v1);
  return sub_253149844();
}

uint64_t HomesStore.Accessory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_253148944();
  v33 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581AC8, &qword_25314FAB8);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = type metadata accessor for HomesStore.Accessory(0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25310FE34();
  v37 = v10;
  v14 = v38;
  sub_253149884();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = v5;
  v15 = v13;
  v45 = 0;
  v16 = sub_2531101C4(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_253149664();
  v31[2] = v16;
  v17 = *(v33 + 32);
  v17(v15, v7, v36);
  v44 = 1;
  v18 = sub_253149644();
  v19 = (v15 + v11[5]);
  *v19 = v18;
  v19[1] = v20;
  v42 = 2;
  sub_25310FEDC();
  v31[1] = 0;
  sub_253149664();
  *(v15 + v11[6]) = v43;
  v41 = 3;
  v21 = v38;
  v22 = v36;
  sub_253149664();
  v17(v15 + v11[7], v21, v22);
  v40 = 4;
  v23 = sub_253149634();
  v24 = (v15 + v11[8]);
  *v24 = v23;
  v24[1] = v25;
  v39 = 5;
  v26 = sub_253149634();
  v28 = v27;
  (*(v34 + 8))(v37, v35);
  v29 = (v15 + v11[9]);
  *v29 = v26;
  v29[1] = v28;
  sub_25310FF30(v15, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25310FF94(v15);
}

uint64_t sub_25310F8FC()
{
  sub_253149814();
  HomesStore.Accessory.hash(into:)(v1);
  return sub_253149844();
}

uint64_t sub_25310F940(uint64_t a1)
{
  sub_253149814();
  HomesStore.Accessory.hash(into:)(v2);
  return sub_253149844();
}

uint64_t sub_25310F9C0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B58, &qword_25314FF90);
  swift_allocObject();

  v3 = sub_253142134(v2);

  qword_27F581A98 = v3;
  return result;
}

uint64_t sub_25310FA54(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B50, &unk_25314FF58);
  swift_allocObject();

  v3 = sub_25314255C(v2);

  qword_27F581AA0 = v3;
  return result;
}

uint64_t sub_25310FAE8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B48, &unk_25314FF20);
  swift_allocObject();

  v3 = sub_2531429AC(v2);

  qword_27F581AA8 = v3;
  return result;
}

uint64_t sub_25310FB88()
{
  v1 = *v0;
  sub_253149814();
  MEMORY[0x259BFD420](v1 + 1);
  return sub_253149844();
}

uint64_t sub_25310FC00(uint64_t a1)
{
  v2 = *v1;
  sub_253149814();
  MEMORY[0x259BFD420](v2 + 1);
  return sub_253149844();
}

uint64_t _s11HomeKitCore10HomesStoreC9AccessoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.Accessory(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_253149734() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || (_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[8];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_253149734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v4[9];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20 && (*v17 == *v19 && v18 == v20 || (sub_253149734() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_25310FE34()
{
  result = qword_27F581AB8;
  if (!qword_27F581AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581AB8);
  }

  return result;
}

unint64_t sub_25310FE88()
{
  result = qword_27F581AC0;
  if (!qword_27F581AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581AC0);
  }

  return result;
}

unint64_t sub_25310FEDC()
{
  result = qword_27F581AD0;
  if (!qword_27F581AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581AD0);
  }

  return result;
}

uint64_t sub_25310FF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25310FF94(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Accessory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25310FFF0(void *a1)
{
  a1[1] = sub_2531101C4(&qword_27F581AE0, type metadata accessor for HomesStore.Accessory, &protocol conformance descriptor for HomesStore.Accessory);
  a1[2] = sub_2531101C4(&qword_27F581AE8, type metadata accessor for HomesStore.Accessory, &protocol conformance descriptor for HomesStore.Accessory);
  a1[3] = sub_2531101C4(&qword_27F581AF0, type metadata accessor for HomesStore.Accessory, &protocol conformance descriptor for HomesStore.Accessory);
  a1[4] = sub_2531101C4(&qword_27F581AF8, type metadata accessor for HomesStore.Accessory, &protocol conformance descriptor for HomesStore.Accessory);
  result = sub_2531101C4(&qword_27F581B00, type metadata accessor for HomesStore.Accessory, &protocol conformance descriptor for HomesStore.Accessory);
  a1[5] = result;
  return result;
}

uint64_t sub_2531101C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_253110210()
{
  result = qword_27F581B10;
  if (!qword_27F581B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B10);
  }

  return result;
}

void sub_25311028C(uint64_t a1)
{
  sub_253148944();
  if (v1 <= 0x3F)
  {
    sub_2530EC300();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s9AccessoryV8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9AccessoryV8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9AccessoryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9AccessoryV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2531105C8()
{
  result = qword_27F581B28;
  if (!qword_27F581B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B28);
  }

  return result;
}

unint64_t sub_253110620()
{
  result = qword_27F581B30;
  if (!qword_27F581B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B30);
  }

  return result;
}

unint64_t sub_253110678()
{
  result = qword_27F581B38;
  if (!qword_27F581B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B38);
  }

  return result;
}

uint64_t sub_2531106CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_253149734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314B480 == a2 || (sub_253149734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_253149734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556)
  {

    return 5;
  }

  else
  {
    v6 = sub_253149734();

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

unint64_t sub_2531108CC()
{
  result = qword_27F581B40;
  if (!qword_27F581B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B40);
  }

  return result;
}

uint64_t sub_253110940(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_253148B64();
  sub_2531490D4();
  if (v2)
  {
  }

  else
  {

    [v3 finishEncoding];
    v5 = [v3 encodedData];
    v6 = sub_2531488B4();

    return v6;
  }
}

uint64_t sub_253110A90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v34 - v4;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_2531492E4();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v46 = MEMORY[0x277D84F90];
  sub_2530F4EF8(0, v6 & ~(v6 >> 63), 0);
  v7 = v46;
  if (v40)
  {
    result = sub_253149294();
  }

  else
  {
    result = sub_253149264();
    v9 = *(a1 + 36);
  }

  v43 = result;
  v44 = v9;
  v45 = v40 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v36 = a1 + 56;
    v37 = v11;
    v34[1] = v1;
    v35 = a1 + 64;
    v41 = a1;
    v38 = v6;
    while (v10 < v6)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_38;
      }

      v15 = v43;
      v14 = v44;
      v16 = v45;
      sub_25311220C(v43, v44, v45, a1);
      v18 = v17;
      v19 = [v17 modelID];
      sub_253148924();

      v46 = v7;
      v20 = v5;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2530F4EF8((v21 > 1), v22 + 1, 1);
        v7 = v46;
      }

      *(v7 + 16) = v22 + 1;
      result = sub_25311240C(v20, v7 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v22);
      v5 = v20;
      if (v40)
      {
        a1 = v41;
        if (!v16)
        {
          goto LABEL_43;
        }

        if (sub_2531492B4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B80, &qword_25314FFD8);
        v12 = sub_253148F94();
        sub_253149334();
        result = v12(v42, 0);
        if (v10 == v6)
        {
LABEL_35:
          sub_2530BA974(v43, v44, v45);
          return v7;
        }
      }

      else
      {
        a1 = v41;
        if (v16)
        {
          goto LABEL_44;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v23 = 1 << *(v41 + 32);
        if (v15 >= v23)
        {
          goto LABEL_39;
        }

        v24 = v15 >> 6;
        v25 = *(v36 + 8 * (v15 >> 6));
        if (((v25 >> v15) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v41 + 36) != v14)
        {
          goto LABEL_41;
        }

        v26 = v25 & (-2 << (v15 & 0x3F));
        if (v26)
        {
          v23 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v6 = v38;
        }

        else
        {
          v27 = v5;
          v28 = v24 << 6;
          v29 = v24 + 1;
          v30 = (v35 + 8 * v24);
          v6 = v38;
          while (v29 < (v23 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_2530BA974(v15, v14, 0);
              v23 = __clz(__rbit64(v31)) + v28;
              goto LABEL_33;
            }
          }

          result = sub_2530BA974(v15, v14, 0);
LABEL_33:
          v5 = v27;
          a1 = v41;
        }

        v33 = *(a1 + 36);
        v43 = v23;
        v44 = v33;
        v45 = 0;
        if (v10 == v6)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_253110E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B60, &qword_25314FFC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v53 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v5 = *(v53 - 8);
  v6 = MEMORY[0x28223BE20](v53);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v45 - v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    type metadata accessor for HMCDHomeModel();
    sub_2531121C4(&qword_27F581940, type metadata accessor for HMCDHomeModel, MEMORY[0x277D85378]);
    result = sub_253148FC4();
    a1 = v58;
    v10 = v59;
    v11 = v60;
    v12 = v61;
    v13 = v62;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v54 = v4;
  v48 = v11;
  v17 = (v11 + 64) >> 6;
  v46 = v5;
  v50 = (v5 + 48);
  v51 = (v5 + 56);
  v49 = MEMORY[0x277D84F90];
  v52 = v17;
LABEL_8:
  v18 = v12;
  for (i = v13; a1 < 0; v17 = v52)
  {
    v24 = sub_253149314();
    if (!v24)
    {
      goto LABEL_25;
    }

    v57 = v24;
    type metadata accessor for HMCDHomeModel();
    swift_dynamicCast();
    v23 = v63;
    v12 = v18;
    v22 = i;
    if (!v63)
    {
      goto LABEL_25;
    }

LABEL_17:
    v56 = v22;
    v25 = v10;
    v26 = a1;
    v27 = [v23 accessories];
    type metadata accessor for HMCDAccessoryModel();
    v28 = MEMORY[0x277D85378];
    sub_2531121C4(&qword_27F581B68, type metadata accessor for HMCDAccessoryModel, MEMORY[0x277D85378]);
    v29 = sub_253148F74();

    v55 = sub_2531114EC(v29);

    v30 = [v23 rooms];
    type metadata accessor for HMCDRoomModel();
    sub_2531121C4(&qword_27F580998, type metadata accessor for HMCDRoomModel, v28);
    v31 = sub_253148F74();

    v32 = sub_253110A90(v31);

    v33 = [v23 zones];
    type metadata accessor for HMCDZoneModel();
    sub_2531121C4(&qword_27F581B70, type metadata accessor for HMCDZoneModel, v28);
    v34 = sub_253148F74();

    v35 = sub_253111AE8(v34);

    v36 = [v23 modelID];
    v37 = v54;
    sub_253148924();

    v38 = v53;
    *(v37 + *(v53 + 20)) = v55;
    *(v37 + *(v38 + 24)) = v32;
    *(v37 + *(v38 + 28)) = v35;
    (*v51)(v37, 0, 1, v38);

    if ((*v50)(v37, 1, v38) != 1)
    {
      v39 = v45;
      sub_25311247C(v37, v45, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      sub_25311247C(v39, v47, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      v40 = v49;
      a1 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_2530F46A8(0, v40[2] + 1, 1, v40);
      }

      v41 = v46;
      v10 = v25;
      v43 = v40[2];
      v42 = v40[3];
      v13 = v56;
      if (v43 >= v42 >> 1)
      {
        v40 = sub_2530F46A8((v42 > 1), v43 + 1, 1, v40);
      }

      v40[2] = v43 + 1;
      v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v49 = v40;
      result = sub_25311247C(v47, v40 + v44 + *(v41 + 72) * v43, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      v17 = v52;
      goto LABEL_8;
    }

    result = sub_2530CD33C(v37, &qword_27F581B60, &qword_25314FFC8);
    v18 = v12;
    i = v56;
    a1 = v26;
    v10 = v25;
  }

  v20 = v18;
  v21 = i;
  v12 = v18;
  if (i)
  {
LABEL_13:
    v22 = (v21 - 1) & v21;
    v23 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_2530DFAD4(a1);
    return v49;
  }

  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_25;
    }

    v21 = *(v10 + 8 * v12);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_2531114EC(uint64_t a1)
{
  v62 = sub_253148944();
  v3 = *(v62 - 8);
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B88, &qword_25314FFE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v65 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v10 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v50 - v13;
  v55 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    type metadata accessor for HMCDAccessoryModel();
    sub_2531121C4(&qword_27F581B68, type metadata accessor for HMCDAccessoryModel, MEMORY[0x277D85378]);
    result = sub_253148FC4();
    a1 = v68;
    v15 = v69;
    v16 = v70;
    v17 = v71;
    v18 = v72;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(a1 + 56);

    v17 = 0;
  }

  v54 = v16;
  v22 = (v16 + 64) >> 6;
  v58 = (v3 + 32);
  v52 = v10;
  v63 = (v10 + 48);
  v64 = (v10 + 56);
  v56 = MEMORY[0x277D84F90];
  v57 = a1;
  v59 = v22;
  v23 = v17;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v24 = sub_253149314();
  if (v24 && (v67 = v24, type metadata accessor for HMCDAccessoryModel(), swift_dynamicCast(), v25 = v73, v26 = v23, v27 = v18, v73))
  {
    while (1)
    {
      v30 = [v25 room];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 modelID];

        v33 = v15;
        v34 = v61;
        sub_253148924();

        v66 = v27;
        v35 = *v58;
        v36 = v60;
        v37 = v34;
        v38 = v62;
        (*v58)(v60, v37, v62);
        v39 = [v25 modelID];
        sub_253148924();

        v40 = v65;
        v41 = v36;
        v42 = v38;
        a1 = v57;
        v15 = v33;
        v22 = v59;
        v35(&v9[*(v65 + 20)], v41, v42);
        v27 = v66;
        (*v64)(v9, 0, 1, v40);
      }

      else
      {
        v40 = v65;
        (*v64)(v9, 1, 1, v65);
      }

      if ((*v63)(v9, 1, v40) == 1)
      {
        result = sub_2530CD33C(v9, &qword_27F581B88, &qword_25314FFE0);
        v23 = v26;
        v18 = v27;
        if (a1 < 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v66 = v27;
        v43 = v22;
        v44 = v51;
        sub_25311247C(v9, v51, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        sub_25311247C(v44, v53, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        v45 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2530F4B4C(0, v45[2] + 1, 1, v45);
        }

        v46 = v52;
        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          v45 = sub_2530F4B4C((v47 > 1), v48 + 1, 1, v45);
        }

        v45[2] = v48 + 1;
        v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v56 = v45;
        result = sub_25311247C(v53, v45 + v49 + *(v46 + 72) * v48, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        v22 = v43;
        v18 = v66;
        v23 = v26;
        if (a1 < 0)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      v28 = v23;
      v29 = v18;
      v26 = v23;
      if (!v18)
      {
        break;
      }

LABEL_15:
      v27 = (v29 - 1) & v29;
      v25 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v25)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        goto LABEL_28;
      }

      v29 = *(v15 + 8 * v26);
      ++v28;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    sub_2530DFAD4(a1);
    return v56;
  }

  return result;
}

void *sub_253111AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B78, &qword_25314FFD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v42 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v5 = *(v42 - 8);
  v6 = MEMORY[0x28223BE20](v42);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    type metadata accessor for HMCDZoneModel();
    sub_2531121C4(&qword_27F581B70, type metadata accessor for HMCDZoneModel, MEMORY[0x277D85378]);
    result = sub_253148FC4();
    a1 = v45;
    v10 = v46;
    v11 = v47;
    v12 = v48;
    v13 = v49;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v38 = v11;
  v36 = v5;
  v40 = (v5 + 48);
  v41 = (v5 + 56);
  v39 = MEMORY[0x277D84F90];
  v43 = a1;
LABEL_8:
  v17 = v12;
  v18 = v13;
  if (a1 < 0)
  {
    do
    {
      v22 = sub_253149314();
      if (!v22)
      {
        goto LABEL_26;
      }

      v44 = v22;
      type metadata accessor for HMCDZoneModel();
      swift_dynamicCast();
      v21 = v50;
      v12 = v17;
      v13 = v18;
      if (!v50)
      {
        goto LABEL_26;
      }

LABEL_17:
      v23 = [v21 rooms];
      type metadata accessor for HMCDRoomModel();
      sub_2531121C4(&qword_27F580998, type metadata accessor for HMCDRoomModel, MEMORY[0x277D85378]);
      v24 = sub_253148F74();

      v25 = sub_253110A90(v24);

      v26 = [v21 modelID];
      sub_253148924();

      v27 = v41;
      v28 = v42;
      *&v4[*(v42 + 20)] = v25;
      (*v27)(v4, 0, 1, v28);

      if ((*v40)(v4, 1, v28) != 1)
      {
        v29 = v35;
        sub_25311247C(v4, v35, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        sub_25311247C(v29, v37, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_2530F4B24(0, v39[2] + 1, 1, v39);
        }

        v30 = v36;
        v32 = v39[2];
        v31 = v39[3];
        if (v32 >= v31 >> 1)
        {
          v39 = sub_2530F4B24((v31 > 1), v32 + 1, 1, v39);
        }

        v33 = v39;
        v39[2] = v32 + 1;
        result = sub_25311247C(v37, v33 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v32, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        a1 = v43;
        goto LABEL_8;
      }

      result = sub_2530CD33C(v4, &qword_27F581B78, &qword_25314FFD0);
      v17 = v12;
      v18 = v13;
      a1 = v43;
    }

    while (v43 < 0);
  }

  v19 = v17;
  v20 = v18;
  v12 = v17;
  if (v18)
  {
LABEL_13:
    v13 = (v20 - 1) & v20;
    v21 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v20)))));
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_26:
    a1 = v43;
LABEL_27:
    sub_2530DFAD4(a1);
    return v39;
  }

  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= ((v11 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v20 = *(v10 + 8 * v12);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253112004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 modelID];
  sub_253148924();

  v9 = [a1 homes];
  type metadata accessor for HMCDHomeModel();
  sub_2531121C4(&qword_27F581940, type metadata accessor for HMCDHomeModel, MEMORY[0x277D85378]);
  v10 = sub_253148F74();

  v11 = sub_253110E94(v10);

  *&v7[*(v4 + 20)] = v11;
  sub_25311247C(v7, a2, type metadata accessor for HomesStore.HomesRelationshipModel);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2531121C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25311220C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259BFCF00](a1, a2, v7);
      type metadata accessor for HMCDRoomModel();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for HMCDRoomModel();
    if (sub_2531492C4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2531492D4();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_253149184();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_253149194();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_25311240C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25311247C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_253112510()
{
  result = qword_27F580958;
  if (!qword_27F580958)
  {
    type metadata accessor for HMCDUserModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580958);
  }

  return result;
}

uint64_t sub_253112574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v7 modelID];
  sub_253148924();

  v11 = [a1 handle];
  v12 = sub_253148B64();
  v14 = v13;

  v15 = &v9[*(a2 + 20)];
  *v15 = v12;
  v15[1] = v14;
  sub_2531127F4(v9, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_2531126B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x656C646E6168;
  *(inited + 72) = 0xE600000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0A8 = v1;
  return result;
}

uint64_t sub_253112798()
{
  if (qword_27F5802C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2531127F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253112858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25311A0C8(a3, v25 - v10);
  v12 = sub_253148DE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2530CD33C(v11, &qword_27F580568, &qword_25314BDB0);
  }

  else
  {
    sub_253148DD4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_253148D84();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_253148B94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t HomesStore.AnyChanges.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  v3 = *(v1 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  *(a1 + *(type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0) + 20)) = v3;
}

uint64_t sub_253112BF8()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581B90);
  __swift_project_value_buffer(v0, qword_27F581B90);
  return sub_253148A84();
}

uint64_t sub_253112CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[2] = a3;
  v5[8] = sub_253148974();
  v6 = sub_2531491F4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_2531489E4();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253112DF8, 0, 0);
}

uint64_t sub_253112DF8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  sub_253149104();
  v0[15] = sub_253118FFC();
  v8 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v9 = *(v2 + 8);
  v0[16] = v9;
  v0[17] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v4);
  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  v12 = *(v5 - 8);
  (*(v12 + 16))(v3, v7, v5);
  (*(v12 + 56))(v3, 0, 1, v5);
  v19 = (*(v11 + 16) + **(v11 + 16));
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_253113034;
  v14 = v0[11];
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];

  return v19(v17, v14, v15, v16, v10, v11);
}

uint64_t sub_253113034(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_25311A1F4;
  }

  else
  {
    v4[20] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_2531131BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2531131BC()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  sub_2531490F4();
  v4 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v1(v2, v3);

  v5 = v0[1];
  v6 = v0[20];

  return v5(v6);
}

uint64_t sub_2531132A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[2] = a2;
  v4[7] = sub_253148974();
  v5 = sub_2531491F4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_2531489E4();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531133DC, 0, 0);
}

uint64_t sub_2531133DC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  sub_253149104();
  v0[14] = sub_253118FFC();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v8 = *(v2 + 8);
  v0[15] = v8;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v4);
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v17 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_2531135E4;
  v12 = v0[10];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];

  return v17(v15, v12, v13, v14, v9, v10);
}

uint64_t sub_2531135E4(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_25311A1F8;
  }

  else
  {
    v4[19] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_25311376C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25311376C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  sub_2531490F4();
  v4 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v1(v2, v3);

  v5 = v0[1];
  v6 = v0[19];

  return v5(v6);
}

uint64_t sub_253113850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2531489E4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253113918, 0, 0);
}

uint64_t sub_253113918()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_253149104();
  v0[10] = sub_253118FFC();
  v5 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v6 = *(v2 + 8);
  v0[11] = v6;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  v15 = (*(v8 + 40) + **(v8 + 40));
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_253113AD8;
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return v15(v12, v13, v10, v11, v7, v8);
}

uint64_t sub_253113AD8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_253113C24, 0, 0);
  }
}

uint64_t sub_253113C24()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  sub_2531490F4();
  v4 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_253113CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[2] = swift_getAssociatedTypeWitness();
  v5[8] = sub_253148974();
  v6 = sub_2531491F4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_2531489E4();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253113E54, 0, 0);
}

uint64_t sub_253113E54()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  sub_253149104();
  v0[15] = sub_253118FFC();
  v8 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v9 = *(v2 + 8);
  v0[16] = v9;
  v0[17] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v4);
  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  v12 = *(v5 - 8);
  (*(v12 + 16))(v3, v7, v5);
  (*(v12 + 56))(v3, 0, 1, v5);
  v19 = (*(v11 + 24) + **(v11 + 24));
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_253114090;
  v14 = v0[11];
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];

  return v19(v17, v14, v15, v16, v10, v11);
}

uint64_t sub_253114090(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_2531142FC;
  }

  else
  {
    v4[20] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_253114218;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_253114218()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  sub_2531490F4();
  v4 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v1(v2, v3);

  v5 = v0[1];
  v6 = v0[20];

  return v5(v6);
}

uint64_t sub_2531142FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25311436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[2] = swift_getAssociatedTypeWitness();
  v4[7] = sub_253148974();
  v5 = sub_2531491F4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_2531489E4();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531144CC, 0, 0);
}

uint64_t sub_2531144CC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  sub_253149104();
  v0[14] = sub_253118FFC();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v8 = *(v2 + 8);
  v0[15] = v8;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v4);
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v17 = (*(v10 + 24) + **(v10 + 24));
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_2531146D4;
  v12 = v0[10];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];

  return v17(v15, v12, v13, v14, v9, v10);
}

uint64_t sub_2531146D4(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_253114940;
  }

  else
  {
    v4[19] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_25311485C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25311485C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  sub_2531490F4();
  v4 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v1(v2, v3);

  v5 = v0[1];
  v6 = v0[19];

  return v5(v6);
}

uint64_t sub_253114940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531149B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v3 - 8);
  v22[0] = v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  type metadata accessor for AnyModelStateChange(0);
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v5);
  sub_253148ED4();
  (*(v6 + 8))(v8, v5);
  v16 = sub_253148DE4();
  v17 = v22[0];
  (*(*(v16 - 8) + 56))(v22[0], 1, 1, v16);
  sub_2530C25FC(v22[1] + 16, v24);
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v23;
  sub_2530BDB14(v24, (v19 + 40));
  (*(v10 + 32))(&v19[v18], v13, v9);

  v20 = sub_253112858(0, 0, v17, &unk_25314D930, v19);
  (*(v10 + 8))(v15, v9);
  result = type metadata accessor for HomesStore.AnyChanges(0);
  *(a2 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_253114D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D00, &qword_253150318);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v6[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = type metadata accessor for AnyModelStateChange(0);
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D08, &qword_253150320);
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  v6[27] = v10;
  v6[28] = *(v10 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253114F94, 0, 0);
}

uint64_t sub_253114F94()
{
  v20 = v0;
  v1 = v0[10];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v2, 0);
    v3 = v19;
    v4 = v1 + 40;
    do
    {
      (*(*v4 + 48))(&v18);
      v5 = v18;
      v19 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2530F4DB0((v6 > 1), v7 + 1, 1);
        v3 = v19;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + v7 + 32) = v5;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v8 = v0[11];
  v9 = sub_2530DA748(v3);

  v10 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = sub_2531187A0(*(v9 + 16), 0);
    v14 = sub_253118980(&v19, v13 + 32, v12, v9);
    sub_2530DFAD4(v19);
    if (v14 == v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_10:
  v0[31] = v13;
  v17 = (*(v11 + 32) + **(v11 + 32));
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_2531151EC;

  return v17(v13, v10, v11);
}

uint64_t sub_2531151EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_253115D14;
  }

  else
  {

    v4 = sub_253115308;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_253115308()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_253115438;
  v5 = v0[29];
  v6 = v0[10];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_253115438()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_253115E18;
  }

  else
  {
    v2 = sub_253115554;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253115554()
{
  v1 = *(v0 + 264);
  (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 232), *(v0 + 216));
  v2 = *(v1 + 16);
  v3 = *(v0 + 264);
  if (v2)
  {
    v46 = *(v0 + 104);
    v52 = MEMORY[0x277D84F90];
    sub_2530F4E74(0, v2, 0);
    v50 = v52;
    v4 = v3 + 64;
    v5 = sub_253149264();
    v10 = v5;
    v11 = 0;
    v43 = v3 + 72;
    v44 = v2;
    v51 = v3;
    v45 = v3 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v3 + 32))
    {
      if ((*(v4 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      v49 = v10 >> 6;
      v14 = *(v0 + 120);
      v15 = *(v0 + 128);
      v47 = v11;
      v48 = *(v3 + 36);
      v16 = *(v46 + 48);
      v17 = *(v0 + 112);
      v18 = v0;
      v19 = *(v51 + 48);
      v20 = sub_253148944();
      v21 = *(v20 - 8);
      v22 = v19 + *(v21 + 72) * v10;
      v0 = v18;
      v3 = v51;
      (*(v21 + 16))(v15, v22, v20);
      sub_2530C25FC(*(v51 + 56) + 40 * v10, v15 + v16);
      (*(v21 + 32))(v14, v15, v20);
      sub_2530BDB14((v15 + v16), v14 + *(v46 + 48));
      sub_2530CD2D4(v14, v17, &qword_27F581D00, &qword_253150318);
      sub_2530BDB14((v17 + *(v46 + 48)), v0 + 16);
      v5 = (*(v21 + 8))(v17, v20);
      v23 = v50;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      if (v25 >= v24 >> 1)
      {
        v5 = sub_2530F4E74((v24 > 1), v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v50 = v23;
      v26 = v23 + 40 * v25;
      v27 = *(v0 + 16);
      v28 = *(v0 + 32);
      *(v26 + 64) = *(v0 + 48);
      *(v26 + 32) = v27;
      *(v26 + 48) = v28;
      v12 = 1 << *(v51 + 32);
      if (v10 >= v12)
      {
        goto LABEL_27;
      }

      v4 = v45;
      v29 = *(v45 + 8 * v49);
      if ((v29 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      v6 = v48;
      if (v48 != *(v51 + 36))
      {
        goto LABEL_29;
      }

      v30 = v29 & (-2 << (v10 & 0x3F));
      if (v30)
      {
        v12 = __clz(__rbit64(v30)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v44;
      }

      else
      {
        v31 = v49 << 6;
        v13 = v44;
        v32 = (v43 + 8 * v49);
        v33 = v49 + 1;
        while (v33 < (v12 + 63) >> 6)
        {
          v35 = *v32++;
          v34 = v35;
          v31 += 64;
          ++v33;
          if (v35)
          {
            v5 = sub_2530BA974(v10, v48, 0);
            v12 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        v5 = sub_2530BA974(v10, v48, 0);
LABEL_19:
        v3 = v51;
      }

      v11 = v47 + 1;
      v10 = v12;
      if (v47 + 1 == v13)
      {

        v36 = v50;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
LABEL_22:
    v37 = *(v0 + 208);
    v39 = *(v0 + 192);
    v38 = *(v0 + 200);
    **(v0 + 184) = v36;
    swift_storeEnumTagMultiPayload();
    *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
    sub_253148EE4();
    v40 = *(v38 + 8);
    *(v0 + 304) = v40;
    *(v0 + 312) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v37, v39);
    sub_253148E54();
    v41 = swift_task_alloc();
    *(v0 + 320) = v41;
    *v41 = v0;
    v41[1] = sub_2531159E4;
    v5 = *(v0 + 136);
    v8 = *(v0 + 144);
    v9 = v0 + 64;
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822005A8](v5, v6, v7, v8, v9);
}

uint64_t sub_2531159E4()
{

  if (v0)
  {
    v1 = sub_253115F14;
  }

  else
  {
    v1 = sub_253115AF4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_253115AF4()
{
  v1 = v0[17];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    v2 = v0[30];
    v3 = v0[27];
    v4 = v0[28];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v0[9] = 0;
    sub_253148EF4();
    (*(v4 + 8))(v2, v3);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[38];
    v8 = v0[26];
    v9 = v0[24];
    sub_25311A060(v1, v0[23], type metadata accessor for AnyModelStateChange);
    sub_253148EE4();
    v7(v8, v9);
    v10 = swift_task_alloc();
    v0[40] = v10;
    *v10 = v0;
    v10[1] = sub_2531159E4;
    v11 = v0[17];
    v12 = v0[18];

    return MEMORY[0x2822005A8](v11, 0, 0, v12, v0 + 8);
  }
}

uint64_t sub_253115D14()
{

  v0[7] = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  sub_253148EF4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_253115E18()
{
  v0[7] = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  sub_253148EF4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_253115F14()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);
  v0[7] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  sub_253148EF4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_253116048(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_253148A24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2531489E4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = sub_253148A94();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_253148A14();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253116234, 0, 0);
}

uint64_t sub_253116234()
{
  v31 = v0;
  if (qword_27F5802D0 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(v0[12], qword_27F581B90);

  v2 = sub_253148A74();
  v3 = sub_253149094();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    sub_253148944();
    sub_253119200(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v6 = sub_253148AE4();
    v8 = sub_253146498(v6, v7, &v30);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2530B8000, v2, v3, "Fetching models with model map: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x259BFDC60](v5, -1, -1);
    MEMORY[0x259BFDC60](v4, -1, -1);
  }

  v10 = sub_2530D5AB0(v9);
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = sub_2531187A0(*(v10 + 16), 0);
    v14 = sub_253118980(&v30, v13 + 32, v12, v11);
    sub_2530DFAD4(v30);
    if (v14 == v12)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_9:
  v0[18] = v13;
  (*(v0[13] + 16))(v0[14], v1, v0[12]);
  sub_2531489F4();
  sub_2531489D4();
  v15 = sub_253148A04();
  v16 = sub_253149104();
  if (sub_2531491D4())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_2531489C4();
    _os_signpost_emit_with_name_impl(&dword_2530B8000, v15, v16, v18, "FetchModelsByTypeMap", "", v17, 2u);
    MEMORY[0x259BFDC60](v17, -1, -1);
  }

  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[7];
  v22 = v0[8];
  v23 = v0[3];

  (*(v22 + 16))(v19, v20, v21);
  sub_253148A54();
  swift_allocObject();
  v0[19] = sub_253148A44();
  v24 = *(v22 + 8);
  v0[20] = v24;
  v0[21] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v21);
  v25 = v23[5];
  v26 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v25);
  v29 = (*(v26 + 32) + **(v26 + 32));
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_253116680;

  return v29(v13, v25, v26);
}

uint64_t sub_253116680(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_253116B70;
  }

  else
  {
    v4 = sub_2531167B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2531167B4(uint64_t a1)
{
  v26 = v1;
  v2 = sub_253148A04();
  sub_253148A34();
  v3 = sub_2531490F4();
  if (sub_2531491D4())
  {
    v5 = v1[5];
    v4 = v1[6];
    v6 = v1[4];

    sub_253148A64();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[5] + 8))(v1[6], v1[4]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_2531489C4();
    _os_signpost_emit_with_name_impl(&dword_2530B8000, v2, v3, v9, "FetchModelsByTypeMap", v7, v8, 2u);
    MEMORY[0x259BFDC60](v8, -1, -1);
  }

  v11 = v1[23];
  v10 = v1[24];
  v12 = v1[20];
  v13 = v1[9];
  v14 = v1[7];
  v15 = v1[2];

  v12(v13, v14);
  v16 = swift_task_alloc();
  *(v16 + 16) = v11;
  v17 = sub_253118A7C(v15, sub_253119FE4, v16);
  if (v10)
  {
    (*(v1[16] + 8))(v1[17], v1[15]);

    v18 = v1[1];

    return v18();
  }

  else
  {
    v20 = v17;

    if (*(v20 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580728, &qword_25314C488);
      v21 = sub_2531495D4();
    }

    else
    {
      v21 = MEMORY[0x277D84F98];
    }

    v25 = v21;

    sub_2530CAAE0(v22, 1, &v25);
    (*(v1[16] + 8))(v1[17], v1[15]);

    v23 = v25;

    v24 = v1[1];

    return v24(v23);
  }
}

uint64_t sub_253116B70()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_253116C44(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  if (*(a5 + 16) && (v9 = *a4, v10 = sub_25311D834(a3), (v11 & 1) != 0))
  {
    sub_2530C25FC(*(a5 + 56) + 40 * v10, v22);
    sub_2530BDB14(v22, a2);
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    sub_2530D2104(v12, v13);
    if (LOBYTE(v22[0]) == v9)
    {
      v14 = sub_253148944();
      return (*(*(v14 - 8) + 16))(a1, a3, v14);
    }

    else
    {
      type metadata accessor for HomesStore.Error(0);
      sub_253119200(&qword_27F581528, type metadata accessor for HomesStore.Error, &protocol conformance descriptor for HomesStore.Error);
      swift_allocError();
      v20 = v19;
      v21 = sub_253148944();
      (*(*(v21 - 8) + 16))(v20, a3, v21);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0(a2);
    }
  }

  else
  {
    type metadata accessor for HomesStore.Error(0);
    sub_253119200(&qword_27F581528, type metadata accessor for HomesStore.Error, &protocol conformance descriptor for HomesStore.Error);
    swift_allocError();
    v17 = v16;
    v18 = sub_253148944();
    (*(*(v18 - 8) + 16))(v17, a3, v18);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t HomesStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t HomesStore.AnyChanges.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  *v4 = v2;
  v4[1] = sub_253116FC8;

  return MEMORY[0x2822005B0](a1, v5);
}

uint64_t sub_253116FC8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2531170F8, 0, 0);
  }
}

uint64_t sub_2531170F8()
{
  if (sub_253148EC4())
  {
    type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
    sub_253148EA4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253117190(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  *v5 = v3;
  v5[1] = sub_253117250;

  return MEMORY[0x2822005B0](a1, v6);
}

uint64_t sub_253117250()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_253117380, 0, 0);
  }
}

uint64_t sub_253117380()
{
  if (sub_253148EC4())
  {
    sub_253148EA4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253117410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2531174CC;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2531174CC()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_253148D84();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_25311763C, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_25311763C()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2531176DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  v5 = *(v2 + *(a1 + 20));

  sub_25311A000(v2, type metadata accessor for HomesStore.AnyChanges);
  result = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t HomesStore.Changes.AsyncIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v6 = *(a2 + 16);
  v5[4] = v6;
  v7 = *(a2 + 24);
  v5[5] = v7;
  v5[6] = type metadata accessor for ModelStateChange(255, v6, v7, a4);
  v8 = sub_2531491F4();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v9 = swift_task_alloc();
  v5[10] = v9;
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for AnyModelStateChange(0);
  v5[12] = v10;
  v5[13] = *(v10 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[16] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  *v11 = v5;
  v11[1] = sub_25311794C;

  return MEMORY[0x2822005B0](v9, v12);
}

uint64_t sub_25311794C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_253117DD0;
  }

  else
  {
    v2 = sub_253117A60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253117A60()
{
  if (sub_253148EC4())
  {
    type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
    sub_253148EA4();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_2530CD2D4(v0[10], v3, &qword_27F5807B0, &qword_25314D460);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    v5 = v0[2];
    sub_2530CD33C(v0[11], &qword_27F5807B0, &qword_25314D460);
    (*(*(v4 - 8) + 56))(v5, 1, 1, v4);
  }

  else
  {
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[9];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    sub_25311A060(v0[11], v7, type metadata accessor for AnyModelStateChange);
    sub_253119048(v7, v6);
    sub_25313F98C(v6, v11, v10, v8);
    v12 = *(v9 - 8);
    v13 = (*(v12 + 48))(v8, 1, v9);
    v14 = v0[15];
    v15 = v0[9];
    if (v13 == 1)
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      type metadata accessor for HomesStore.Error(0);
      sub_253119200(&qword_27F581528, type metadata accessor for HomesStore.Error, &protocol conformance descriptor for HomesStore.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25311A000(v14, type metadata accessor for AnyModelStateChange);

      v16 = v0[1];
      goto LABEL_9;
    }

    v17 = v0[6];
    v18 = v0[2];
    sub_25311A000(v0[15], type metadata accessor for AnyModelStateChange);
    (*(v12 + 32))(v18, v15, v17);
    (*(v12 + 56))(v18, 0, 1, v17);
  }

  v16 = v0[1];
LABEL_9:

  return v16();
}

uint64_t sub_253117DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253117E6C(uint64_t a1, uint64_t a2)
{
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530BF218;

  return HomesStore.Changes.AsyncIterator.next()(a1, a2, v5, v6);
}

uint64_t sub_253117F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_253117FE8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_253117FE8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t HomesStore.Changes.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  *&v6[*(v4 + 28)] = *(v1 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  sub_25311A060(v6, a1, type metadata accessor for HomesStore.AnyChanges.AsyncIterator);
}

uint64_t sub_2531181C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  HomesStore.Changes.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t HomesStore.changes<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v29);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v26 = type metadata accessor for HomesStore.AnyChanges(0) - 8;
  MEMORY[0x28223BE20](v26);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581600, &qword_25314E3C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25314D290;
  *(v17 + 32) = v28;
  *(v17 + 40) = a2;
  type metadata accessor for AnyModelStateChange(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D858A0], v6);
  sub_253148ED4();
  (*(v7 + 8))(v9, v6);
  v18 = sub_253148DE4();
  v19 = v30;
  (*(*(v18 - 8) + 56))(v30, 1, 1, v18);
  sub_2530C25FC(v31 + 16, v33);
  v20 = v27;
  v21 = v29;
  (*(v10 + 16))(v27, v14, v29);
  v22 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v17;
  sub_2530BDB14(v33, (v23 + 40));
  (*(v10 + 32))(&v23[v22], v20, v21);
  v24 = sub_253112858(0, 0, v19, &unk_2531500B8, v23);
  (*(v10 + 8))(v14, v21);
  *&v16[*(v26 + 28)] = v24;
  return sub_25311A060(v16, v32, type metadata accessor for HomesStore.AnyChanges);
}

uint64_t sub_253118618(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2530E5ECC;

  return v6(a1);
}

void *sub_253118710(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581CF8, &qword_2531502F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_2531187A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581620, &qword_25314E410);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_253118814(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_2530C25FC(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_2530BDB14(v20, v21);
      sub_2530BDB14(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_253118980(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_253118A7C(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *, char *), uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581540, &qword_25314E0E8);
  v6 = MEMORY[0x28223BE20](v46);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806C0, &qword_25314C460);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v38 - v11;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v56 = MEMORY[0x277D84F90];
  sub_2530F4D70(0, v12, 0);
  v13 = v56;
  v14 = a1 + 64;
  result = sub_253149264();
  v16 = result;
  v17 = 0;
  v55 = *(a1 + 36);
  v39 = a1 + 72;
  v40 = v12;
  v41 = a1 + 64;
  v42 = a1;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_24;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v50 = 1 << v16;
    v51 = v16 >> 6;
    v49 = v17;
    v53 = v13;
    v19 = v46;
    v20 = *(v46 + 48);
    v21 = *(a1 + 48);
    v22 = sub_253148944();
    v23 = *(v22 - 8);
    v52 = v4;
    v24 = *(v23 + 16);
    v13 = v8;
    v25 = v21 + *(v23 + 72) * v16;
    v26 = v45;
    v24(v45, v25, v22);
    *(v26 + v20) = *(*(a1 + 56) + v16);
    v24(v8, v26, v22);
    v27 = *(v19 + 48);
    LOBYTE(v20) = *(v26 + v20);
    sub_2530CD33C(v26, &qword_27F581540, &qword_25314E0E8);
    v8[v27] = v20;
    v28 = v52;
    v47(v54, v54 + *(v44 + 48), v8, &v8[v27]);
    v4 = v28;
    if (v28)
    {
      sub_2530CD33C(v8, &qword_27F581540, &qword_25314E0E8);

      return v13;
    }

    sub_2530CD33C(v8, &qword_27F581540, &qword_25314E0E8);
    v13 = v53;
    v56 = v53;
    v30 = *(v53 + 2);
    v29 = *(v53 + 3);
    if (v30 >= v29 >> 1)
    {
      sub_2530F4D70((v29 > 1), v30 + 1, 1);
      v13 = v56;
    }

    *(v13 + 2) = v30 + 1;
    result = sub_2530CD2D4(v54, &v13[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v30], &qword_27F5806C0, &qword_25314C460);
    a1 = v42;
    v18 = 1 << *(v42 + 32);
    if (v16 >= v18)
    {
      goto LABEL_26;
    }

    v14 = v41;
    v31 = *(v41 + 8 * v51);
    if ((v31 & v50) == 0)
    {
      goto LABEL_27;
    }

    if (v55 != *(v42 + 36))
    {
      goto LABEL_28;
    }

    v32 = v31 & (-2 << (v16 & 0x3F));
    if (v32)
    {
      v18 = __clz(__rbit64(v32)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v51 << 6;
      v34 = v51 + 1;
      v35 = (v39 + 8 * v51);
      while (v34 < (v18 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_2530BA974(v16, v55, 0);
          v18 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_2530BA974(v16, v55, 0);
    }

LABEL_4:
    v17 = v49 + 1;
    v16 = v18;
    if (v49 + 1 == v40)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_253118F00(unsigned __int8 *a1)
{
  v2 = *a1;
  _s17DataSourceFactoryCMa();
  inited = swift_initStackObject();
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  if (v2 == 1)
  {
    v4 = sub_25311C2C4();
    v5 = _s14descr2864E9281O3XPCCMa();
    v6 = &off_2864EA148;
LABEL_6:
    v11 = v5;
    v12 = v6;

    *&v10 = v4;
    sub_2530BDB14(&v10, v9);
    type metadata accessor for HomesStore();
    inited = swift_allocObject();
    sub_2530BDB14(v9, inited + 16);
    return inited;
  }

  v7 = sub_25311C654();
  if (!v1)
  {
    v4 = v7;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D10, &qword_253150328);
    v6 = &off_2864EB3F8;
    goto LABEL_6;
  }

  swift_setDeallocating();

  return inited;
}

unint64_t sub_253118FFC()
{
  result = qword_27F581BA8;
  if (!qword_27F581BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F581BA8);
  }

  return result;
}

uint64_t sub_253119048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_253119200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of HomesStore.fetchModels<A>(for:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 96) + **(*v4 + 96));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25311A1F0;

  return v12(a1, a2, a3, a4);
}

{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25311979C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomesStore.fetchModels<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25311A1F0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25311A1F0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of HomesStore.withTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 112) + **(*v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2530BF218;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_25311979C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2531199F4(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_253119AA8()
{
  if (!qword_27F581BD8)
  {
    v0 = sub_253148EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F581BD8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_253119CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  sub_253119D5C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_253119AA8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_253119D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyModelStateChange(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580730, &qword_25314F190);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_253119E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}