char *sub_22EDE2D50(char a1)
{
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v39 = &v36 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v36 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  if ((a1 & 1) != 0 && getenv("KTRACE_PROVIDER_PATH"))
  {
    sub_22EE3C214();
    sub_22EE3BBF4();

    v16 = sub_22EDE15FC(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_22EDE15FC((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    (*(v3 + 32))(&v16[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18], v15, v2);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (os_variant_has_internal_content())
  {
    v19 = sub_22EE31EAC();
    v37 = *(v3 + 16);
    v37(v13, v19, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_22EDE15FC(0, *(v16 + 2) + 1, 1, v16);
    }

    v22 = *(v16 + 2);
    v21 = *(v16 + 3);
    if (v22 >= v21 >> 1)
    {
      v16 = sub_22EDE15FC((v21 > 1), v22 + 1, 1, v16);
    }

    *(v16 + 2) = v22 + 1;
    v23 = *(v3 + 32);
    v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v25 = *(v3 + 72);
    v23(&v16[v24 + v25 * v22], v13, v2);
    v26 = sub_22EE321AC();
    v37(v38, v26, v2);
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_22EDE15FC((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v23(&v16[v24 + v28 * v25], v38, v2);
    v29 = sub_22EE3232C();
    v37(v39, v29, v2);
    v31 = *(v16 + 2);
    v30 = *(v16 + 3);
    if (v31 >= v30 >> 1)
    {
      v16 = sub_22EDE15FC((v30 > 1), v31 + 1, 1, v16);
    }

    *(v16 + 2) = v31 + 1;
    v23(&v16[v24 + v31 * v25], v39, v2);
    v6 = v36;
  }

  v32 = sub_22EE3202C();
  (*(v3 + 16))(v6, v32, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_22EDE15FC(0, *(v16 + 2) + 1, 1, v16);
  }

  v34 = *(v16 + 2);
  v33 = *(v16 + 3);
  if (v34 >= v33 >> 1)
  {
    v16 = sub_22EDE15FC((v33 > 1), v34 + 1, 1, v16);
  }

  *(v16 + 2) = v34 + 1;
  (*(v3 + 32))(&v16[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34], v6, v2);
  return v16;
}

uint64_t sub_22EDE31BC(char a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_22EDE2D50(a1);
  v48 = MEMORY[0x277D84F90];
  v43 = *(v7 + 2);
  if (v43)
  {
    v8 = 0;
    v9 = 0;
    v42 = &v7[(*(v3 + 80) + 32) & ~*(v3 + 80)];
    v40 = v2;
    v41 = v3 + 16;
    v35 = (v3 + 8);
    v36 = v7;
    v38 = v5;
    v39 = v3;
    v37 = v6;
    do
    {
      if (v8 >= *(v7 + 2))
      {
        goto LABEL_25;
      }

      (*(v3 + 16))(v5, &v42[*(v3 + 72) * v8], v2);
      sub_22EE3BC84();
      v13 = sub_22EE3C0F4();

      v47 = 0;
      v14 = [v6 contentsOfDirectoryAtPath:v13 error:&v47];

      v15 = v47;
      if (v14)
      {
        v46 = v9;
        v16 = sub_22EE3C3D4();
        v17 = v15;

        v18 = *(v16 + 16);
        if (!v18)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v19 = v47;
        v20 = sub_22EE3BBA4();

        swift_willThrow();
        v46 = 0;
        v16 = MEMORY[0x277D84F90];
        v18 = *(MEMORY[0x277D84F90] + 16);
        if (!v18)
        {
LABEL_3:
          v10 = MEMORY[0x277D84F90];
          goto LABEL_4;
        }
      }

      v21 = 0;
      v22 = v16 + 40;
      v44 = v18 - 1;
      v10 = MEMORY[0x277D84F90];
      v45 = v16 + 40;
      do
      {
        v23 = (v22 + 16 * v21);
        v24 = v21;
        while (1)
        {
          if (v24 >= *(v16 + 16))
          {
            __break(1u);
LABEL_25:
            __break(1u);
          }

          v25 = *(v23 - 1);
          v26 = *v23;
          v21 = v24 + 1;

          if (sub_22EE3C2B4())
          {
            break;
          }

          v23 += 2;
          ++v24;
          if (v18 == v21)
          {
            goto LABEL_4;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EDD2DD4(0, v10[2] + 1, 1);
          v10 = v47;
        }

        v29 = v10[2];
        v28 = v10[3];
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v34 = v29 + 1;
          sub_22EDD2DD4((v28 > 1), v29 + 1, 1);
          v30 = v34;
          v10 = v47;
        }

        v10[2] = v30;
        v31 = &v10[2 * v29];
        v31[4] = v25;
        v31[5] = v26;
        v22 = v45;
      }

      while (v44 != v24);
LABEL_4:
      ++v8;

      MEMORY[0x28223BE20](v11);
      v5 = v38;
      *(&v33 - 2) = v38;
      v9 = v46;
      v12 = sub_22EDDCC20(sub_22EDE43C0, (&v33 - 4), v10);

      sub_22EDDD1C8(v12);
      v2 = v40;
      (*v35)(v5, v40);
      v3 = v39;
      v7 = v36;
      v6 = v37;
    }

    while (v8 != v43);

    return v48;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_22EDE35E8()
{
  result = qword_27DA94F60;
  if (!qword_27DA94F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94F60);
  }

  return result;
}

uint64_t sub_22EDE363C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22EDE36AC()
{
  result = qword_27DA94FD0;
  if (!qword_27DA94FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94FD0);
  }

  return result;
}

uint64_t sub_22EDE3700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FD8, qword_22EE400D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void deprecatedWillEndTracingToFile(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 willEndTracingToFile:a2];
}

uint64_t sub_22EDE386C(uint64_t a1, char a2)
{
  nullsub_1();
  v85 = v4;
  *&v83[0] = sub_22EDE31BC(a2 & 1);

  sub_22EDE1C88(v83);

  v5 = *&v83[0];
  v6 = *(*&v83[0] + 16);
  if (!v6)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_45:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_22EE3F500;
    *&v83[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EDD3F74();
    v55 = sub_22EE3C0B4();
    v57 = v56;

    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    sub_22ED82560();
    sub_22EE3CC44();

    return 0;
  }

  v84 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v6, 0);
  if (!*(v5 + 16))
  {
    goto LABEL_50;
  }

  v7 = 0;
  v63 = v5 + 32;
  v8 = v84;
  v9 = 1;
  v60 = v6;
  v61 = v5;
  while (1)
  {
    v10 = (v63 + (v7 << 6));
    v11 = v9;
    v13 = v10[2];
    v12 = v10[3];
    v14 = v10[1];
    v83[0] = *v10;
    v83[1] = v14;
    v83[2] = v13;
    v83[3] = v12;
    v16 = *(&v83[0] + 1);
    v15 = *&v83[0];
    v17 = *(&v14 + 1);
    v67 = v14;
    v71 = *(&v13 + 1);
    v18 = v13;
    v2 = *(&v12 + 1);
    v19 = v12;
    sub_22EDE4358(v83, &v75);
    v87 = 0;
    v88 = 0xE000000000000000;
    v68 = v17;
    v65 = v15;
    v66 = v16;
    if (v18)
    {
      v75 = v15;
      v76 = v16;

      MEMORY[0x2318F58F0](539831584, 0xE400000000000000);
      MEMORY[0x2318F58F0](v17, v18);
      v20 = v75;
      v16 = v76;
    }

    else
    {

      v20 = v15;
    }

    MEMORY[0x2318F58F0](v20, v16);

    if (v19)
    {
      MEMORY[0x2318F58F0](2570, 0xE200000000000000);
      v75 = 538976288;
      v76 = 0xE400000000000000;
      MEMORY[0x2318F58F0](v71, v19);
      MEMORY[0x2318F58F0](v75, v76);
    }

    v69 = v18;
    v70 = v11;
    if (!v2)
    {
      v22 = v87;
      v23 = v88;
      goto LABEL_38;
    }

    MEMORY[0x2318F58F0](2570, 0xE200000000000000);
    v21 = *(v2 + 16);
    v64 = v19;
    if (v21)
    {
      break;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_37:
    v75 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EDD3F74();
    v48 = sub_22EE3C0B4();
    v50 = v49;

    MEMORY[0x2318F58F0](v48, v50);

    v22 = v87;
    v23 = v88;
    v19 = v64;
LABEL_38:
    v75 = v15;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v80 = v71;
    v81 = v19;
    v82 = v2;
    sub_22EDE4390(&v75);
    v84 = v8;
    v52 = *(v8 + 16);
    v51 = *(v8 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_22EDD2DD4((v51 > 1), v52 + 1, 1);
      v8 = v84;
    }

    *(v8 + 16) = v52 + 1;
    v53 = v8 + 16 * v52;
    *(v53 + 32) = v22;
    *(v53 + 40) = v23;
    v7 = v70;
    if (v70 == v6)
    {

      goto LABEL_45;
    }

    v9 = v70 + 1;
    if (v70 >= *(v5 + 16))
    {
      goto LABEL_50;
    }
  }

  MEMORY[0x2318F58F0](0x6974706F20202020, 0xED00000A3A736E6FLL);
  if (!*(v2 + 16))
  {
    goto LABEL_51;
  }

  v62 = v8;

  v74 = v2;
  if (v21 == 1)
  {
LABEL_23:

    v73 = sub_22EE3C1D4();

    v2 = v74;
    v29 = *(v74 + 16);
    if (v29)
    {
      v86 = MEMORY[0x277D84F90];
      sub_22EDD2DD4(0, v29, 0);
      v30 = 0;
      v24 = v86;
      v31 = (v74 + 64);
      v72 = v29;
      while (v30 < *(v2 + 16))
      {
        v32 = *(v31 - 4);
        v33 = *(v31 - 3);
        v2 = *(v31 - 2);
        v34 = *(v31 - 1);
        v35 = *v31;

        v36 = sub_22EE3C1D4();
        if (__OFSUB__(v73, v36))
        {
          goto LABEL_47;
        }

        if (__OFADD__(v73 - v36, 8))
        {
          goto LABEL_48;
        }

        v75 = 0x2020202020202020;
        v76 = 0xE800000000000000;
        MEMORY[0x2318F58F0](v32, v33);
        v37 = sub_22EE3C2D4();
        v39 = v38;
        v89 = v37;
        v90 = v38;

        MEMORY[0x2318F58F0](v2, v34);
        MEMORY[0x2318F58F0](v89, v90);

        v89 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v40 = sub_22EE3C0B4();
        v42 = v41;

        if (sub_22EE3C1D4() < 1)
        {
        }

        else
        {
          v89 = 0;
          v90 = 0xE000000000000000;
          sub_22EE3C864();

          v89 = v37;
          v90 = v39;
          MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE48370);
          MEMORY[0x2318F58F0](v40, v42);

          MEMORY[0x2318F58F0](v89, v90);
        }

        v2 = v74;

        v43 = v75;
        v44 = v76;
        v86 = v24;
        v46 = *(v24 + 16);
        v45 = *(v24 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_22EDD2DD4((v45 > 1), v46 + 1, 1);
          v24 = v86;
        }

        ++v30;
        *(v24 + 16) = v46 + 1;
        v47 = v24 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
        v31 += 5;
        if (v72 == v30)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_36:
    v8 = v62;
    v6 = v60;
    v5 = v61;
    goto LABEL_37;
  }

  v25 = -v21;
  v26 = v2 + 64;
  v2 = 1;
  v59 = v26;
LABEL_17:
  v27 = v26 + 40 * v2++;
  while ((v2 - 1) < *(v74 + 16))
  {

    v28 = sub_22EE3C1D4();
    if (v28 < sub_22EE3C1D4())
    {

      v26 = v59;
      if (v25 + v2)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    ++v2;
    v27 += 40;
    if (v25 + v2 == 1)
    {
      goto LABEL_23;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  v75 = v65;
  v76 = v66;
  v77 = v67;
  v78 = v68;
  v79 = v69;
  v80 = v71;
  v81 = v64;
  v82 = v2;
  sub_22EDE4390(&v75);

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_22EDE404C()
{
  result = qword_27DA94FF0;
  if (!qword_27DA94FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94FF0);
  }

  return result;
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
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

uint64_t sub_22EDE4118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22EDE4160(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22EDE41C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDE4208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_22EDE4268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22EDE42B0(uint64_t result, int a2, int a3)
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

uint64_t sub_22EDE441C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v3 == 1)
      {
        sub_22EE3C864();

        v11 = v2;
        v4 = 0xD00000000000001FLL;
        v5 = 0x800000022EE484A0;
        goto LABEL_14;
      }

      sub_22EE3C864();

      v11 = v2;
      v9 = ": could not load bundle of passive data source";
    }

    else
    {
      sub_22EE3C864();

      v11 = v2;
      v9 = ": experimental passive data source not allowed";
    }

    v5 = (v9 - 32) | 0x8000000000000000;
    v4 = 0xD00000000000002ELL;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v11 = 0;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](v2, v1);
    v8 = ": no principal class found for passive data source";
  }

  else
  {
    v6 = v0[2];
    v7 = v0[3];
    if (v3 != 4)
    {
      sub_22EE3C864();

      v11 = v2;
      MEMORY[0x2318F58F0](0xD000000000000019, 0x800000022EE483D0);
      MEMORY[0x2318F58F0](v6, v7);
      v4 = 0x696176616E752027;
      v5 = 0xED0000656C62616CLL;
      goto LABEL_14;
    }

    v11 = 0;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](v2, v1);
    MEMORY[0x2318F58F0](0x207373616C63203ALL, 0xE900000000000060);
    MEMORY[0x2318F58F0](v6, v7);
    v8 = "' does not conform to passive data source protocol";
  }

  v4 = 0xD000000000000032;
  v5 = (v8 - 32) | 0x8000000000000000;
LABEL_14:
  MEMORY[0x2318F58F0](v4, v5);
  return v11;
}

__n128 sub_22EDE46A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = *(v5 + 8);

  swift_unknownObjectRetain();
  sub_22EDE4800(a1, a2, a3, a4, a5, v12, v13, &v24);
  if (!v6)
  {
    v15 = v25;
    if (v25)
    {
      v16 = v24;
      v29 = v26;
      v30 = v27;
      v31 = v28;
      v17 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22EDE650C(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v32 = v19 + 1;
        v23 = sub_22EDE650C((v18 > 1), v19 + 1, 1, v17);
        v20 = v32;
        v17 = v23;
      }

      *(v17 + 2) = v20;
      v21 = &v17[56 * v19];
      *(v21 + 4) = v16;
      *(v21 + 5) = v15;
      result = v29;
      v22 = v30;
      *(v21 + 10) = v31;
      *(v21 + 3) = result;
      *(v21 + 4) = v22;
      *v5 = v17;
    }
  }

  return result;
}

uint64_t sub_22EDE4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  LODWORD(v170) = a7;
  v172 = a6;
  v173 = a5;
  v171 = a4;
  v161 = a3;
  v174 = a2;
  v164 = a8;
  v179 = *MEMORY[0x277D85DE8];
  v9 = sub_22EE3BE64();
  v167 = *(v9 - 8);
  v168 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v158 = &v153[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v163 = &v153[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v159 = &v153[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v160 = &v153[-v17];
  MEMORY[0x28223BE20](v16);
  v166 = &v153[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
  MEMORY[0x28223BE20](v19);
  v21 = &v153[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8);
  MEMORY[0x28223BE20](v22);
  v24 = &v153[-v23];
  v25 = sub_22EE3BCB4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v153[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v31 = &v153[-v30];
  v169 = a1;
  v32 = a1;
  v33 = v174;
  sub_22EDE5E60(v32, v174, v170, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v34 = *v21;
    v35 = v21[1];
    v36 = v21[2];
    v37 = v21[3];
    v38 = *(v21 + 32);
    v177[0] = v34;
    v177[1] = v35;
    v177[2] = v36;
    v177[3] = v37;
    v178 = v38;
    sub_22EDE6634();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v39 = v34;
    *(v39 + 8) = v35;
    *(v39 + 16) = v36;
    *(v39 + 24) = v37;
    *(v39 + 32) = v38;
    return swift_unknownObjectRelease();
  }

  sub_22EDE363C(v21, v24);

  (*(v26 + 32))(v31, &v24[*(v22 + 48)], v25);
  if (qword_27DA967D8 != -1)
  {
    swift_once();
  }

  v41 = sub_22EE3BE94();
  v42 = __swift_project_value_buffer(v41, qword_27DA9C918);
  v43 = *(v26 + 16);
  v162 = v31;
  v43(v29, v31, v25);

  v44 = v166;
  sub_22EE3BE54();
  v156 = v42;
  v45 = sub_22EE3BE74();
  v46 = sub_22EE3C584();

  v47 = sub_22EE3C5C4();
  v165 = v26;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v157 = v25;
    v49 = v48;
    v50 = swift_slowAlloc();
    v177[0] = v50;
    *v49 = 136446466;
    *(v49 + 4) = sub_22ED7DF24(v169, v33, v177);
    *(v49 + 12) = 2082;
    v51 = sub_22EE3BC94();
    v53 = v52;
    v54 = *(v165 + 8);
    v54(v29, v157);
    v55 = sub_22ED7DF24(v51, v53, v177);

    *(v49 + 14) = v55;
    v56 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v45, v46, v56, "PassiveDataSourceLoad", "Loading %{public}s from %{public}s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318F8320](v50, -1, -1);
    v57 = v49;
    v25 = v157;
    MEMORY[0x2318F8320](v57, -1, -1);

    v170 = *(v167 + 8);
    v170(v44, v168);
  }

  else
  {

    v170 = *(v167 + 8);
    v170(v44, v168);
    v54 = *(v26 + 8);
    v54(v29, v25);
  }

  v58 = v171;
  v59 = v162;
  sub_22EE3BC94();
  v60 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v61 = sub_22EE3C0F4();

  v62 = [v60 initWithPath_];

  if (!v62)
  {

    sub_22EDE6634();
    swift_allocError();
    v84 = v174;
    *v85 = v169;
    *(v85 + 8) = v84;
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    *(v85 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    return (v54)(v59, v25);
  }

  v63 = [v62 load];
  v64 = v174;
  if ((v63 & 1) == 0)
  {
    v171 = v62;
    v166 = v54;

    v86 = v163;
    sub_22EE3BE54();
    v87 = sub_22EE3BE74();
    v88 = sub_22EE3C584();

    if (sub_22EE3C5C4())
    {
      v89 = v64;
      v90 = swift_slowAlloc();
      v91 = v25;
      v92 = swift_slowAlloc();
      v177[0] = v92;
      *v90 = 136446210;
      v93 = v86;
      v94 = v169;
      *(v90 + 4) = sub_22ED7DF24(v169, v89, v177);
      v95 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v87, v88, v95, "PassiveDataSourceLoadFailure", "Cannot load %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      v96 = v92;
      v25 = v91;
      MEMORY[0x2318F8320](v96, -1, -1);
      v97 = v90;
      v64 = v89;
      v59 = v162;
      MEMORY[0x2318F8320](v97, -1, -1);

      v170(v93, v168);
    }

    else
    {

      v170(v86, v168);
      v94 = v169;
    }

    v177[0] = 0;
    v177[1] = 0xE000000000000000;
    sub_22EE3C864();

    strcpy(v177, "Cannot load ");
    BYTE5(v177[1]) = 0;
    HIWORD(v177[1]) = -5120;
    MEMORY[0x2318F58F0](v94, v64);

    MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE484F0);
    v98 = sub_22EE3C0F4();

    [v172 warnWithMessage_];
    swift_unknownObjectRelease();

    result = (v166)(v59, v25);
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v58 = 0;
    v103 = 0;
    v104 = 0;
    v105 = v164;
    goto LABEL_19;
  }

  if (![v62 principalClass])
  {

    sub_22EDE6634();
    swift_allocError();
    *v106 = v169;
    *(v106 + 8) = v64;
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    *(v106 + 32) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    return (v54)(v59, v25);
  }

  v171 = v62;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v176[1] = &unk_2843A8F88;
  if (!swift_dynamicCastTypeToObjCProtocolConditional())
  {

    v177[0] = ObjCClassMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FC8, &unk_22EE400C0);
    v107 = sub_22EE3C164();
    v109 = v108;
    sub_22EDE6634();
    swift_allocError();
    *v110 = v169;
    *(v110 + 8) = v64;
    *(v110 + 16) = v107;
    *(v110 + 24) = v109;
    *(v110 + 32) = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    return (v54)(v59, v25);
  }

  v166 = v54;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = objc_allocWithZone(ObjCClassFromMetadata);

  v163 = [v67 init];

  v68 = [(objc_class *)ObjCClassFromMetadata availableDataCategories:v161];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95118, &unk_22EE40580);
  v70 = sub_22EE3C064();

  v71 = v160;
  sub_22EE3BE54();
  v72 = sub_22EE3BE74();
  v73 = sub_22EE3C584();

  v74 = sub_22EE3C5C4();
  v157 = v25;
  v155 = v69;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v154 = v73;
    v77 = v71;
    v78 = v76;
    v177[0] = v76;
    *v75 = 136446466;
    *(v75 + 4) = sub_22ED7DF24(v169, v64, v177);
    *(v75 + 12) = 2082;
    v79 = sub_22EE3C074();
    v81 = sub_22ED7DF24(v79, v80, v177);

    *(v75 + 14) = v81;
    v82 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v72, v154, v82, "PassiveDataSourceAvailableDataCategories", "Data source:%{public}s: %{public}s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318F8320](v78, -1, -1);
    MEMORY[0x2318F8320](v75, -1, -1);

    v83 = v77;
  }

  else
  {

    v83 = v71;
  }

  v170(v83, v168);
  v177[0] = MEMORY[0x277D84F90];
  v111 = v173;
  v112 = *(v173 + 16);
  if (!v112)
  {
LABEL_32:

    v120 = v174;

    v121 = v159;
    sub_22EE3BE54();
    v122 = sub_22EE3BE74();
    v123 = sub_22EE3C584();

    if (sub_22EE3C5C4())
    {
      v124 = v121;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v176[0] = v126;
      *v125 = 136446210;
      v127 = v120;
      *(v125 + 4) = sub_22ED7DF24(v169, v120, v176);
      v128 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v122, v123, v128, "PassiveDataSourceConfiguration", "Configuring %{public}s", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      MEMORY[0x2318F8320](v126, -1, -1);
      MEMORY[0x2318F8320](v125, -1, -1);

      v129 = v124;
    }

    else
    {
      v127 = v120;

      v129 = v121;
    }

    v170(v129, v168);
    v132 = v157;
    v133 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    v134 = sub_22EE3C054();
    v135 = sub_22EE3C3C4();

    v176[0] = 0;
    v104 = v161;
    v136 = [v163 configureWithLogger:v172 machine:v161 options:v134 dataCategories:v135 error:v176];

    if (v136)
    {
      v137 = v176[0];

      v100 = v127;

      result = (v166)(v133, v132);
      v102 = v172;
      v103 = v173;
      v105 = v164;
      v99 = v169;
      v101 = v163;
    }

    else
    {
      v138 = v176[0];
      v139 = sub_22EE3BBA4();

      swift_willThrow();
      v140 = v127;

      v141 = v139;
      v142 = v158;
      sub_22EE3BE54();
      v143 = sub_22EE3BE74();
      v144 = sub_22EE3C584();

      if (sub_22EE3C5C4())
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v176[0] = v146;
        *v145 = 136446466;
        v147 = sub_22ED7DF24(v169, v140, v176);

        *(v145 + 4) = v147;
        *(v145 + 12) = 2082;
        v175 = v139;
        v148 = v139;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
        v149 = sub_22EE3C164();
        v151 = sub_22ED7DF24(v149, v150, v176);

        *(v145 + 14) = v151;
        v152 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v143, v144, v152, "PassiveDataSourceConfigurationError", "Failed to configure %{public}s: %{public}s", v145, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318F8320](v146, -1, -1);
        MEMORY[0x2318F8320](v145, -1, -1);

        v170(v142, v168);
        (v166)(v162, v157);
      }

      else
      {

        v170(v142, v168);
        (v166)(v133, v132);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v105 = v164;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v58 = 0;
      v103 = 0;
      v104 = 0;
    }

LABEL_19:
    *v105 = v99;
    v105[1] = v100;
    v105[2] = v101;
    v105[3] = v102;
    v105[4] = v58;
    v105[5] = v103;
    v105[6] = v104;
    return result;
  }

  v113 = 0;
  v114 = (v173 + 40);
  while (1)
  {
    if (v113 >= *(v111 + 16))
    {
      __break(1u);
    }

    v116 = *(v114 - 1);
    v115 = *v114;
    v117 = *(v70 + 16);

    if (!v117)
    {
      break;
    }

    sub_22EDE1B04(v116, v115);
    if ((v118 & 1) == 0)
    {
      break;
    }

    v119 = swift_unknownObjectRetain_n();
    MEMORY[0x2318F5AA0](v119);
    if (*((v177[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22EE3C3F4();
    }

    ++v113;
    sub_22EE3C414();
    swift_unknownObjectRelease();
    v114 += 2;
    v111 = v173;
    if (v112 == v113)
    {
      goto LABEL_32;
    }
  }

  sub_22EDE6634();
  swift_allocError();
  v130 = v174;
  *v131 = v169;
  *(v131 + 8) = v130;
  *(v131 + 16) = v116;
  *(v131 + 24) = v115;
  *(v131 + 32) = 5;
  swift_willThrow();

  (v166)(v162, v157);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_22EDE5B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v33[1] = *MEMORY[0x277D85DE8];
  v25 = sub_22EE3BDA4();
  result = MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  if (v7)
  {
    v23 = (v5 + 8);
    for (i = a3 + 72; ; i += 56)
    {
      v9 = *(i - 32);
      v10 = *(i - 24);
      v28 = v7;
      v29 = v10;
      v12 = *(i - 16);
      v11 = *(i - 8);
      v32 = v9;

      swift_unknownObjectRetain();
      v31 = v12;
      swift_unknownObjectRetain();
      v30 = v11;

      v13 = v24;
      sub_22EE3BA64();
      v14 = sub_22EE3BD44();
      v15 = *v23;
      v16 = v25;
      (*v23)(v13, v25);
      sub_22EE3BA44();
      v17 = sub_22EE3BD44();
      v18 = v16;
      v19 = v29;
      v15(v13, v18);
      v33[0] = 0;
      LODWORD(v15) = [v19 collectToFile:v26 startDate:v14 endDate:v17 error:v33];

      v20 = v33[0];
      if (!v15)
      {
        break;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v7 = v28 - 1;
      if (v28 == 1)
      {
        return result;
      }
    }

    v21 = v20;
    sub_22EE3BBA4();

    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22EDE5DE4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22EE3BE94();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22EE3BE84();
}

void sub_22EDE5E60(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v56 = a2;
  v48 = a4;
  v6 = sub_22EE3BCB4();
  v57 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v46 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - v13;
  has_internal_content = os_variant_has_internal_content();
  v47 = has_internal_content & a3;
  v15 = sub_22EDE6688(has_internal_content & a3);
  v49 = v15[2];
  if (v49)
  {
    v16 = 0;
    v52 = v57 + 16;
    v53 = v15;
    v58 = v57 + 8;
    v50 = a1;
    v51 = v6;
    while (1)
    {
      if (v16 >= v15[2])
      {
        __break(1u);
        return;
      }

      v17 = v57;
      v18 = v54;
      (*(v57 + 16))(v54, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16, v6);
      v19 = v55;
      v20 = v56;
      sub_22EE3BC44();
      v21 = *(v17 + 8);
      v21(v18, v6);
      sub_22EE3BC54();
      v21(v19, v6);
      v22 = objc_opt_self();
      v23 = v20;
      v24 = [v22 defaultManager];
      sub_22EE3BC94();
      v25 = sub_22EE3C0F4();

      v26 = [v24 fileExistsAtPath_];

      if (v26)
      {

        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
        v34 = v48;
        v35 = v51;
        *v48 = v50;
        v34[1] = v23;
        (*(v57 + 32))(v34 + v33, v59, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
        swift_storeEnumTagMultiPayload();
        goto LABEL_10;
      }

      v27 = v21;
      v28 = [v22 defaultManager];
      v29 = v50;
      v30 = sub_22EE3C0F4();
      v31 = [v28 fileExistsAtPath_];

      if (v31)
      {
        break;
      }

      ++v16;
      v6 = v51;
      v21(v59, v51);
      a1 = v29;
      v15 = v53;
      if (v49 == v16)
      {
        goto LABEL_7;
      }
    }

    v36 = v51;
    if (v47)
    {
      v37 = v55;
      sub_22EE3BBF4();
      v38 = v46;
      sub_22EE3BC24();
      v39 = sub_22EE3BC04();
      v41 = v40;
      v27(v38, v36);
      v27(v59, v36);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
      v43 = v48;
      *v48 = v39;
      v43[1] = v41;
      (*(v57 + 32))(v43 + v42, v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
      swift_storeEnumTagMultiPayload();
      return;
    }

    v27(v59, v51);
    v44 = v48;
    v45 = v56;
    *v48 = v29;
    v44[1] = v45;
    v44[2] = 0;
    v44[3] = 0;
    *(v44 + 32) = 0;
  }

  else
  {
LABEL_7:

    v32 = v48;
    *v48 = a1;
    v32[1] = v56;
    v32[2] = 0;
    v32[3] = 0;
    *(v32 + 32) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
  swift_storeEnumTagMultiPayload();
LABEL_10:
}

BOOL sub_22EDE6398(_DWORD *a1, int *a2)
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

_DWORD *sub_22EDE63C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_22EDE63F4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_22EDE64CC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_22EDE6D4C(a1);

  *a2 = v3;
  return result;
}

char *sub_22EDE650C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95148, &qword_22EE40AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_22EDE6634()
{
  result = qword_27DA95050;
  if (!qword_27DA95050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95050);
  }

  return result;
}

void *sub_22EDE6688(char a1)
{
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = sub_22EDDCDCC();
  if ((a1 & 1) != 0 && getenv("KTRACE_PASSIVE_DATA_SOURCE_PATH"))
  {
    sub_22EE3C214();
    sub_22EE3BBF4();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22EDE15FC(0, v12[2] + 1, 1, v12);
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_22EDE15FC((v13 > 1), v14 + 1, 1, v12);
    }

    v12[2] = v14 + 1;
    (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v11, v2);
  }

  if (os_variant_has_internal_content())
  {
    v15 = sub_22EE3237C();
    (*(v3 + 16))(v9, v15, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22EDE15FC(0, v12[2] + 1, 1, v12);
    }

    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      v12 = sub_22EDE15FC((v16 > 1), v17 + 1, 1, v12);
    }

    v12[2] = v17 + 1;
    (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v9, v2);
  }

  v18 = sub_22EE32528();
  (*(v3 + 16))(v6, v18, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_22EDE15FC(0, v12[2] + 1, 1, v12);
  }

  v20 = v12[2];
  v19 = v12[3];
  if (v20 >= v19 >> 1)
  {
    v12 = sub_22EDE15FC((v19 > 1), v20 + 1, 1, v12);
  }

  v12[2] = v20 + 1;
  (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v6, v2);
  return v12;
}

unint64_t sub_22EDE69CC()
{
  result = qword_27DA95120;
  if (!qword_27DA95120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95120);
  }

  return result;
}

uint64_t sub_22EDE6A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDE6A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EDE6AFC(uint64_t *a1, int a2)
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

uint64_t sub_22EDE6B44(uint64_t result, int a2, int a3)
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

uint64_t sub_22EDE6B94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22EDE6BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EDE6CA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassiveDataSourceFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22EDE6D4C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

char *listFiles(in:pathExtension:olderThan:)(uint64_t (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v89 = a3;
  v94 = a2;
  v99 = a1;
  v96 = sub_22EE3BB44();
  *&v97 = *(v96 - 8);
  v5 = MEMORY[0x28223BE20](v96);
  v81 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v71 - v11;
  v12 = sub_22EE3BDA4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = &v71 - v18;
  v19 = sub_22EE3BCB4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v72 = &v71 - v24;
  MEMORY[0x28223BE20](v23);
  v103 = &v71 - v25;
  v26 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95158, &unk_22EE40AF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22EE3FAB0;
  v28 = *MEMORY[0x277CBE838];
  v29 = *MEMORY[0x277CBE8E8];
  *(v27 + 32) = *MEMORY[0x277CBE838];
  *(v27 + 40) = v29;
  v30 = *MEMORY[0x277CBE7C0];
  *(v27 + 48) = *MEMORY[0x277CBE7C0];
  v85 = v28;
  v31 = v29;
  v76 = v30;
  v32 = sub_22EE3C4A4();

  v88 = v32;
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v83 = (v20 + 56);
  v82 = (v20 + 48);
  v84 = (v20 + 32);
  v99 = (v20 + 8);
  v92 = (v13 + 48);
  v91 = (v13 + 32);
  v95 = (v97 + 8);
  v73 = (v13 + 8);
  v87 = v20;
  v86 = (v20 + 16);
  v90 = MEMORY[0x277D84F90];
  v97 = xmmword_22EE3F500;
  v33 = v81;
  v34 = v80;
  while (1)
  {
    if ([v88 nextObject])
    {
      sub_22EE3C794();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v102[0] = v100;
    v102[1] = v101;
    if (!*(&v101 + 1))
    {
      break;
    }

    v35 = swift_dynamicCast();
    (*v83)(v34, v35 ^ 1u, 1, v19);
    if ((*v82)(v34, 1, v19) == 1)
    {
      goto LABEL_28;
    }

    v36 = *v84;
    (*v84)(v103, v34, v19);
    if (sub_22EE3BBD4() == v94 && v37 == v89)
    {
    }

    else
    {
      v38 = sub_22EE3CBA4();

      if ((v38 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v39 = v78;
    sub_22EDE85A0(v79, v78);
    v40 = *v92;
    if ((*v92)(v39, 1, v12) == 1)
    {
      v52 = v39;
      v33 = v81;
LABEL_20:
      sub_22EDDBA48(v52, &qword_27DA94DD0, &unk_22EE40AE0);
      goto LABEL_21;
    }

    v41 = *v91;
    (*v91)(v93, v39, v12);
    inited = swift_initStackObject();
    *(inited + 16) = v97;
    v43 = v76;
    *(inited + 32) = v76;
    v44 = v43;
    sub_22EDE8438(inited);
    swift_setDeallocating();
    v45 = v77;
    sub_22EDE84F4(inited + 32);
    v46 = v103;
    sub_22EE3BBE4();
    if (v4)
    {

      (*v73)(v93, v12);
      (*v99)(v103, v19);
LABEL_41:

      return v46;
    }

    v47 = v75;
    sub_22EE3BB24();
    (*v95)(v45, v96);
    if (v40(v47, 1, v12) == 1)
    {
      (*v73)(v93, v12);
      v52 = v47;
      v33 = v81;
      v34 = v80;
      goto LABEL_20;
    }

    v48 = v74;
    v41(v74, v47, v12);
    sub_22EDE86E8(&qword_27DA94DD8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v49 = v93;
    v50 = sub_22EE3C0C4();
    v51 = *v73;
    (*v73)(v48, v12);
    v51(v49, v12);
    v33 = v81;
    v34 = v80;
    if (v50)
    {
LABEL_21:
      (*v86)(v72, v103, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_22EDE15FC(0, *(v90 + 2) + 1, 1, v90);
      }

      v54 = *(v90 + 2);
      v53 = *(v90 + 3);
      v55 = v87;
      if (v54 >= v53 >> 1)
      {
        v58 = sub_22EDE15FC((v53 > 1), v54 + 1, 1, v90);
        v55 = v87;
        v90 = v58;
      }

      v56 = v55;
      (*(v55 + 8))(v103, v19);
      v57 = v90;
      *(v90 + 2) = v54 + 1;
      v36(&v57[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54], v72, v19);
    }

    else
    {
LABEL_3:
      (*v99)(v103, v19);
    }
  }

  sub_22EDDBA48(v102, &qword_27DA95160, &unk_22EE43B50);
  (*v83)(v34, 1, 1, v19);
LABEL_28:
  result = sub_22EDDBA48(v34, &qword_27DA95150, qword_22EE44A90);
  v60 = 0;
  v61 = 0;
  v46 = v90;
  v103 = *(v90 + 2);
  v62 = v71;
  while (1)
  {
    if (v103 == v60)
    {
      goto LABEL_38;
    }

    if (v60 >= *(v46 + 2))
    {
      break;
    }

    (*(v87 + 16))(v62, &v46[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v60], v19);
    v63 = swift_initStackObject();
    *(v63 + 16) = v97;
    v64 = v85;
    *(v63 + 32) = v85;
    v65 = v64;
    sub_22EDE8438(v63);
    swift_setDeallocating();
    sub_22EDE84F4(v63 + 32);
    v46 = v62;
    sub_22EE3BBE4();
    if (v4)
    {
      (*v99)(v62, v19);

      goto LABEL_41;
    }

    ++v60;
    v66 = sub_22EE3BB34();
    v68 = v67;
    (*v95)(v33, v96);
    result = (*v99)(v62, v19);
    if (v68)
    {
      v69 = 0;
    }

    else
    {
      v69 = v66;
    }

    v70 = __OFADD__(v61, v69);
    v61 += v69;
    v46 = v90;
    if (v70)
    {
      __break(1u);
LABEL_38:

      return v46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDE79C8(uint64_t a1)
{
  v2 = sub_22EDE86E8(&qword_27DA95188, type metadata accessor for URLResourceKey, &unk_22EE40C18);
  v3 = sub_22EDE86E8(&qword_27DA95190, type metadata accessor for URLResourceKey, &unk_22EE40BB8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22EDE7A84(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v7 = sub_22EE3CCC4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_22EE3C124();
      v13 = v12;
      if (v11 == sub_22EE3C124() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_22EE3CBA4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_22EDE7EAC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_22EDE7C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95198, &qword_22EE40CB0);
  result = sub_22EE3C824();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22EE3C124();
      sub_22EE3CC74();
      sub_22EE3C1C4();
      v18 = sub_22EE3CCC4();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22EDE7EAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22EDE7C30(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22EDE8094();
      goto LABEL_16;
    }

    sub_22EDE81E4(v7 + 1);
  }

  v9 = *v3;
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v10 = sub_22EE3CCC4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey();
    do
    {
      v13 = sub_22EE3C124();
      v15 = v14;
      if (v13 == sub_22EE3C124() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22EE3CBA4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22EE3CBD4();
  __break(1u);
  return result;
}

id sub_22EDE8094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95198, &qword_22EE40CB0);
  v2 = *v0;
  v3 = sub_22EE3C814();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_22EDE81E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95198, &qword_22EE40CB0);
  result = sub_22EE3C824();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22EE3C124();
      sub_22EE3CC74();
      v18 = v17;
      sub_22EE3C1C4();
      v19 = sub_22EE3CCC4();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EDE8438(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey();
  v4 = v3;
  v5 = sub_22EDE86E8(&qword_27DA95188, type metadata accessor for URLResourceKey, &unk_22EE40C18);
  result = MEMORY[0x2318F5B30](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_22EDE7A84(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_22EDE84F4(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27DA95168)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA95168);
    }
  }
}

uint64_t sub_22EDE85A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EDE86E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22EDE8730()
{
  sub_22EE3CC74();
  sub_22EE3CC94();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDE87A4(uint64_t a1)
{
  sub_22EE3CC74();
  sub_22EE3CC94();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDE87E8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EDE91BC(*a1);
  *a2 = result;
  return result;
}

BOOL sub_22EDE8864(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_22EDE8894@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_22EDE88C0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_22EDE89A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_22EDE94C8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22EDE89E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6ktrace8Reporter_logger;
  swift_beginAccess();
  v4 = sub_22EE3BF14();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22EDE8AD8(FILE *a1, FILE *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = swift_allocObject();
  sub_22EE3BF04();
  if (a5)
  {
    v9 = sub_22EE102E4(a1);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a1;
    }

    *(v8 + 16) = v10;
    v11 = sub_22EE102E4(a2);
    if (v11)
    {
      a2 = v11;
    }
  }

  else
  {
    *(v8 + 16) = a1;
  }

  *(v8 + 24) = a2;
  sub_22EE3BD94();
  v12 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  *(v8 + OBJC_IVAR____TtC6ktrace8Reporter_initialFormatter) = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v13 setUnitsStyle_];
  [v13 setZeroFormattingBehavior_];
  [v13 setAllowedUnits_];
  *(v8 + OBJC_IVAR____TtC6ktrace8Reporter_updateFormatter) = v13;
  return v8;
}

uint64_t sub_22EDE8C34(uint64_t a1, unint64_t a2)
{
  v5 = sub_22EE3BF14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22EE3F500;
  v10 = sub_22ED81218(a1, a2);
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  swift_beginAccess();
  sub_22ED82560();
  sub_22EE3CC44();
  swift_endAccess();

  (*(*v2 + 176))(v12);

  v13 = sub_22EE3BEF4();
  v14 = sub_22EE3C4B4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22ED7DF24(a1, a2, v19);
    _os_log_impl(&dword_22ED7A000, v13, v14, "%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2318F8320](v16, -1, -1);
    MEMORY[0x2318F8320](v15, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22EDE8F50()
{
  MEMORY[0x2318F58F0]();
  (*(*v0 + 216))(0x3A676E696E726177, 0xE900000000000020, 1, 0);
}

uint64_t sub_22EDE90C0()
{
  v1 = OBJC_IVAR____TtC6ktrace8Reporter_creationDate;
  v2 = sub_22EE3BDA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC6ktrace8Reporter_logger;
  v4 = sub_22EE3BF14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_22EDE91BC(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_22EDE91D4()
{
  result = qword_27DA951B0;
  if (!qword_27DA951B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ANSIColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ANSIColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for Reporter(uint64_t a1)
{
  result = qword_27DA95C50;
  if (!qword_27DA95C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22EDE93DC(uint64_t a1)
{
  result = sub_22EE3BDA4();
  if (v2 <= 0x3F)
  {
    result = sub_22EE3BF14();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22EDE94C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_22EDE950C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_22EE3C864();

        v8 = a1;
        v6 = "g-in to unsafe behavior";
        v5 = 0xD000000000000016;
      }

      else
      {
        sub_22EE3C864();

        v8 = a1;
        v6 = ": missing option";
        v5 = 0xD000000000000012;
      }
    }

    else
    {
      sub_22EE3C864();

      v8 = a1;
      v6 = "itional argument";
      v5 = 0xD000000000000015;
    }

    goto LABEL_13;
  }

  if (a3 > 4u)
  {
    if (a3 != 5)
    {
      return 0xD00000000000002BLL;
    }

    sub_22EE3C864();

    v8 = a1;
    v6 = ": missing argument";
    v5 = 0xD000000000000027;
    goto LABEL_13;
  }

  if (a3 != 3)
  {
    sub_22EE3C864();

    v8 = a1;
    v6 = ": unknown short option";
    v5 = 0xD000000000000020;
LABEL_13:
    v4 = v6 | 0x8000000000000000;
    goto LABEL_14;
  }

  sub_22EE3C864();

  v8 = a1;
  v4 = 0x800000022EE486C0;
  v5 = 0xD000000000000010;
LABEL_14:
  MEMORY[0x2318F58F0](v5, v4);
  return v8;
}

uint64_t sub_22EDE9774(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 128);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EDEBFE4(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_22EDEBFE4((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_22EDE984C;
  v10[5] = v5;
  *(v2 + 128) = v6;
  return result;
}

uint64_t sub_22EDE98D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = *(v10 + 112);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EDEBEC8(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_22EDEBEC8((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 80 * v18;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a3;
  *(v19 + 72) = a4;
  *(v19 + 80) = a7 & 1;
  *(v19 + 81) = *v24;
  *(v19 + 84) = *&v24[3];
  *(v19 + 88) = a8;
  *(v19 + 96) = a9;
  *(v19 + 104) = a10 & 1;
  *(v10 + 112) = v15;
  return result;
}

uint64_t sub_22EDE9A10(char a1)
{
  v96 = *v1;
  v90 = v96;
  sub_22EDE3770(&v96, &v88);
  MEMORY[0x2318F58F0](32, 0xE100000000000000);
  MEMORY[0x2318F58F0](v1[4], v1[5]);
  v4 = *(&v90 + 1);
  v3 = v90;
  v95 = v90;
  v5 = v1[2];
  v83 = a1;
  if (v5)
  {
    v6 = v1[3];

    v8 = v5(v7);
    *&v90 = 539831584;
    *(&v90 + 1) = 0xE400000000000000;
    MEMORY[0x2318F58F0](v8);

    MEMORY[0x2318F58F0](v90, *(&v90 + 1));
    sub_22ED97EE0(v5, v6);

    v4 = *(&v95 + 1);
    v3 = v95;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22EE3F500;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  v94 = v9;
  v84 = v1;
  v10 = v1[14];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = 80;
    do
    {
      v16 = (v10 + 32 + 80 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v11)
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v90 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        *(v93 + 9) = *(v16 + 57);
        v92 = v19;
        v93[0] = v20;
        v91 = v18;
        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_69;
        }

        if ((v93[0] & 1) == 0)
        {
          break;
        }

        ++v17;
        v16 += 5;
        if (v13 == v11)
        {
          goto LABEL_18;
        }
      }

      sub_22EDEC118(&v90, &v88);
      v85 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22EDEC298(0, v14[2] + 1, 1);
        v14 = v85;
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        sub_22EDEC298((v21 > 1), v22 + 1, 1);
        v14 = v85;
      }

      v14[2] = v22 + 1;
      v23 = &v14[10 * v22];
      *(v23 + 2) = v90;
      v24 = v91;
      v25 = v92;
      v26 = v93[0];
      *(v23 + 89) = *(v93 + 9);
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      *(v23 + 3) = v24;
    }

    while (v13 != v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v82 = v10;
  v27 = v14[2];
  if (v27)
  {
    v87 = v12;
    sub_22EDD2DD4(0, v27, 0);
    v28 = v14;
    v29 = v27 - 1;
    v30 = v12;
    for (i = 4; ; i += 10)
    {
      v32 = &v28[i];
      v90 = *v32;
      v33 = *(v32 + 1);
      v34 = *(v32 + 2);
      v35 = *(v32 + 3);
      *(v93 + 9) = *(v32 + 57);
      v92 = v34;
      v93[0] = v35;
      v91 = v33;
      v36 = v90;
      sub_22EDEC118(&v90, &v88);
      MEMORY[0x2318F58F0](v36, *(&v36 + 1));
      v88 = 11565;
      v89 = 0xE200000000000000;
      if (*(&v91 + 1))
      {
        MEMORY[0x2318F58F0](v91);
        MEMORY[0x2318F58F0](2957356, 0xE300000000000000);
      }

      v85 = 2112032;
      v86 = 0xE300000000000000;
      MEMORY[0x2318F58F0](v92, *(&v92 + 1));
      MEMORY[0x2318F58F0](2112032, 0xE300000000000000);

      sub_22EDEC2B8(&v90);
      v38 = v88;
      v37 = v89;
      v87 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22EDD2DD4((v39 > 1), v40 + 1, 1);
        v30 = v87;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      if (!v29)
      {
        break;
      }

      --v29;
      v28 = v14;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v42 = sub_22EE116DC(v30, 58, 0xE100000000000000, 4);

  v14 = &v94;
  sub_22EDEA2C0(v42);
  if (v83)
  {
    v43 = MEMORY[0x277D84F90];
    if (v11)
    {
      v44 = 0;
      v13 = MEMORY[0x277D84F90];
      v15 = 80;
LABEL_31:
      v45 = (v82 + 32 + 80 * v44);
      v46 = v44;
      while (v46 < v11)
      {
        v90 = *v45;
        v47 = v45[1];
        v48 = v45[2];
        v49 = v45[3];
        *(v93 + 9) = *(v45 + 57);
        v92 = v48;
        v93[0] = v49;
        v91 = v47;
        v44 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_71;
        }

        if (v93[0])
        {
          sub_22EDEC118(&v90, &v88);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = &v85;
            sub_22EDEC298(0, *(v13 + 16) + 1, 1);
            v13 = v85;
          }

          v52 = *(v13 + 16);
          v51 = *(v13 + 24);
          if (v52 >= v51 >> 1)
          {
            v14 = &v85;
            sub_22EDEC298((v51 > 1), v52 + 1, 1);
            v13 = v85;
          }

          *(v13 + 16) = v52 + 1;
          v53 = (v13 + 80 * v52);
          v53[2] = v90;
          v54 = v91;
          v55 = v92;
          v56 = v93[0];
          *(v53 + 89) = *(v93 + 9);
          v53[4] = v55;
          v53[5] = v56;
          v53[3] = v54;
          if (v44 != v11)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        ++v46;
        v45 += 5;
        if (v44 == v11)
        {
          goto LABEL_44;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v15 = sub_22EDDA224(0, *(v15 + 16) + 1, 1, v15);
      goto LABEL_64;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_44:
    v57 = *(v13 + 16);
    if (v57)
    {
      v87 = v43;
      sub_22EDD2DD4(0, v57, 0);
      v58 = v57 - 1;
      v59 = v87;
      for (j = 32; ; j += 80)
      {
        v90 = *(v13 + j);
        v61 = *(v13 + j + 16);
        v62 = *(v13 + j + 32);
        v63 = *(v13 + j + 48);
        *(v93 + 9) = *(v13 + j + 57);
        v92 = v62;
        v93[0] = v63;
        v91 = v61;
        v85 = 11565;
        v86 = 0xE200000000000000;
        v64 = v90;
        sub_22EDEC118(&v90, &v88);
        MEMORY[0x2318F58F0](v64, *(&v64 + 1));
        v88 = v85;
        v89 = v86;
        if (*(&v91 + 1))
        {
          v85 = 2957356;
          v86 = 0xE300000000000000;
          MEMORY[0x2318F58F0](v91);
          MEMORY[0x2318F58F0](v85, v86);
        }

        v85 = 2112032;
        v86 = 0xE300000000000000;
        MEMORY[0x2318F58F0](v92, *(&v92 + 1));
        MEMORY[0x2318F58F0](v85, v86);

        sub_22EDEC2B8(&v90);
        v65 = v88;
        v66 = v89;
        v87 = v59;
        v68 = *(v59 + 16);
        v67 = *(v59 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_22EDD2DD4((v67 > 1), v68 + 1, 1);
          v59 = v87;
        }

        *(v59 + 16) = v68 + 1;
        v69 = v59 + 16 * v68;
        *(v69 + 32) = v65;
        *(v69 + 40) = v66;
        if (!v58)
        {
          break;
        }

        --v58;
      }
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    *&v90 = 0x202020200ALL;
    *(&v90 + 1) = 0xE500000000000000;
    if (v84[9])
    {
      v70 = v84[8];
      v71 = v84[9];
    }

    else
    {
      v71 = 0xEF3A736E6F697470;
      v70 = 0x6F20656661736E55;
    }

    MEMORY[0x2318F58F0](v70, v71);

    v72 = v90;
    v73 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_22EDDA224(0, *(v73 + 2) + 1, 1, v73);
    }

    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_22EDDA224((v74 > 1), v75 + 1, 1, v73);
    }

    *(v73 + 2) = v75 + 1;
    *&v73[16 * v75 + 32] = v72;
    v94 = v73;
    v76 = sub_22EE116DC(v59, 58, 0xE100000000000000, 4);

    sub_22EDEA2C0(v76);
  }

  v14 = v84[7];
  v15 = v94;
  if (!v14)
  {
    goto LABEL_67;
  }

  v13 = v84[6];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_64:
  v78 = *(v15 + 16);
  v77 = *(v15 + 24);
  if (v78 >= v77 >> 1)
  {
    v15 = sub_22EDDA224((v77 > 1), v78 + 1, 1, v15);
  }

  *(v15 + 16) = v78 + 1;
  v79 = v15 + 16 * v78;
  *(v79 + 32) = v13;
  *(v79 + 40) = v14;
  v94 = v15;
LABEL_67:
  *&v90 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EDD3F74();
  v80 = sub_22EE3C0B4();

  return v80;
}

char *sub_22EDEA2C0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EDDA224(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_22EDEA3B4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v6 + 3) >> 1, v9 < v7))
  {
    v6 = sub_22EDDA224(isUniquelyReferenced_nonNull_native, v7, 1, v6);
    v9 = *(v6 + 3) >> 1;
  }

  v10 = *(v6 + 2);
  v11 = v9 - v10;
  sub_22EDEC56C(&v34, &v6[16 * v10 + 32], v9 - v10, a1, a2);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    if (v12)
    {
      v14 = *(v6 + 2);
      v15 = __OFADD__(v14, v12);
      v16 = v14 + v12;
      if (v15)
      {
        __break(1u);
        goto LABEL_25;
      }

      *(v6 + 2) = v16;
    }

    v12 = v34;
    if (v13 != v11)
    {
LABEL_9:

      *v2 = v6;
      return;
    }
  }

  v17 = *(v12 + 16);
  if (v35 == v17)
  {
    goto LABEL_9;
  }

  if (v35 < v17)
  {
    v18 = *(v6 + 2);
    v19 = v12 + 16 * v35;
    v20 = v35 + 1;
    v22 = *(v19 + 32);
    v21 = *(v19 + 40);
    v33 = v12;

    v23 = v33;
    while (1)
    {
LABEL_15:
      v24 = *(v6 + 3);
      v25 = v24 >> 1;
      if ((v24 >> 1) < v18 + 1)
      {
        v6 = sub_22EDDA224((v24 > 1), v18 + 1, 1, v6);
        v23 = v33;
        v25 = *(v6 + 3) >> 1;
        v26 = v25 - v18;
        if (v25 > v18)
        {
LABEL_17:
          v32 = v25;
          v27 = 0;
          v28 = v23 + 16 * v20;
          v3 = ~v18;
          v29 = &v6[16 * v18];
          while (1)
          {
            v30 = &v29[v27];
            *(v30 + 4) = v22;
            *(v30 + 5) = v21;
            v31 = *(v23 + 16);
            if (v20 == v31)
            {
              break;
            }

            if (v20 >= v31)
            {
              __break(1u);
              goto LABEL_27;
            }

            ++v20;
            v22 = *(v28 + v27 + 32);
            v21 = *(v28 + v27 + 40);

            v27 += 16;
            --v3;
            --v26;
            v23 = v33;
            if (!v26)
            {
              v18 = v32;
              *(v6 + 2) = v32;
              goto LABEL_15;
            }
          }

LABEL_25:
          *(v6 + 2) = -v3;
          goto LABEL_9;
        }
      }

      else
      {
        v26 = v25 - v18;
        if (v25 > v18)
        {
          goto LABEL_17;
        }
      }

      *(v6 + 2) = v18;
    }
  }

LABEL_27:
  __break(1u);
}

void *sub_22EDEA5A0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EDEC150(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_22EDEA6A8(uint64_t a1)
{
  v3 = v2;
  v4 = MEMORY[0x277D84F90];
  v239 = MEMORY[0x277D84F90];
  v240 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  if (!v5)
  {
    v219 = 0;
    v210 = MEMORY[0x277D84F90];
    v211 = 0;
    v214 = -1;
    v8 = MEMORY[0x277D84F90];
    goto LABEL_140;
  }

  v6 = 0;
  v210 = MEMORY[0x277D84F90];
  v211 = 0;
  v197 = a1 + 32;
  v7 = a1 + 40;
  v199 = *(v1 + 112);
  v218 = v199 + 32;
  v219 = 0;
  v214 = -1;
  v8 = MEMORY[0x277D84F90];
  v208 = *(a1 + 16);
  v200 = a1 + 40;
LABEL_3:
  v9 = v219;
  v220 = v8;
LABEL_4:
  v219 = v9;
LABEL_5:
  v10 = (v7 + 16 * v6);
  v11 = v6;
  while (1)
  {
    if (v11 >= v5)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:

      v193 = v3;
      v194 = v1;
LABEL_221:
      sub_22EDEC85C(v193, v194);
      sub_22EDEC2B8(&v226);

      return;
    }

    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_217;
    }

    v12 = *(v10 - 1);
    v13 = v12 == 11565 && *v10 == 0xE200000000000000;
    if (v13 || (v224 = *v10, v14 = *v10, (sub_22EE3CBA4() & 1) != 0))
    {

      sub_22EDEA3B4(v141, v11 + 1);
      while (1)
      {
LABEL_140:
        v222 = v4;
        v142 = v3;
        v143 = v8 + 5;
        v3 = -v8[2];
        v4 = -1;
        while (1)
        {
          v64 = v3 + v4;
          if (v3 + v4 == -1)
          {
            break;
          }

          v9 = v8[2];
          if (++v4 >= v9)
          {
            __break(1u);
            goto LABEL_213;
          }

          v144 = *(v143 - 1);
          v145 = *v143;
          swift_beginAccess();
          if (v144 != *aUnsafe || v145 != unk_27DA951E0)
          {
            v143 += 12;
            if ((sub_22EE3CBA4() & 1) == 0)
            {
              continue;
            }
          }

          break;
        }

        v220 = v8;
        v147 = v209[16];
        v148 = *(v147 + 16);
        if (v148)
        {
          v149 = *(v222 + 16);
          v241 = (v222 + 32);

          v150 = 0;
          v151 = (v147 + 40);
          v3 = v142;
          while (1)
          {
            v152 = *(v151 - 1);
            v1 = *v151;
            if (v150 == v149)
            {
              v153 = 0;
              v154 = 0;
              v150 = v149;
            }

            else
            {
              if (v150 >= *(v222 + 16))
              {
                goto LABEL_218;
              }

              v155 = v150;
              v156 = v3;
              v157 = v155 + 1;
              v158 = &v241[16 * v155];
              v153 = *v158;
              v154 = *(v158 + 1);

              v159 = v157;
              v3 = v156;
              v150 = v159;
            }

            *&v226 = v153;
            *(&v226 + 1) = v154;

            v152(&v226);
            if (v3)
            {
              break;
            }

            v151 += 2;
            if (!--v148)
            {
              goto LABEL_158;
            }
          }

          sub_22EDEC720(v219, v211, v214);

          goto LABEL_168;
        }

        v150 = 0;
        v3 = v142;
LABEL_158:
        v105 = 1886152040;
        v160 = v220[2];
        v161 = v220 + 5;
        v4 = v160 + 1;
        while (--v4)
        {
          if (*(v161 - 1) != 1886152040 || *v161 != 0xE400000000000000)
          {
            v161 += 12;
            if ((sub_22EE3CBA4() & 1) == 0)
            {
              continue;
            }
          }

          sub_22EDEC720(v219, v211, v214);

          v163 = v209[12];
          if (!v163)
          {
            goto LABEL_168;
          }

          v164 = v209[13];

          v165 = v64 != -1;
          goto LABEL_167;
        }

        v224 = v150;
        v13 = v160 == 1;
        v106 = v209;
        if (v13)
        {
          if (!v220[2])
          {
            __break(1u);
            goto LABEL_229;
          }

          v167 = v220[4];
          v168 = v220[5];
          v4 = aUnsafe;
          swift_beginAccess();
          v169 = v167 == *aUnsafe && v168 == unk_27DA951E0;
          if (v169 || (sub_22EE3CBA4() & 1) != 0)
          {
            sub_22EDEC720(v219, v211, v214);

            v163 = v209[12];
            if (v163)
            {
              v164 = v209[13];

              v165 = 1;
LABEL_167:
              v166 = sub_22EDE9A10(v165);
              v163(v166);

              sub_22ED97EE0(v163, v164);
              goto LABEL_168;
            }

            goto LABEL_168;
          }
        }

        if (v214 != 0xFF)
        {

          swift_bridgeObjectRelease_n();

          sub_22EDEC798();
          swift_allocError();
          *v170 = v219;
          *(v170 + 8) = v211;
          *(v170 + 16) = v214;
          swift_willThrow();
          goto LABEL_168;
        }

        v241 = *(v210 + 2);
        if (!v241)
        {
          break;
        }

        v171 = 0;
        v8 = v210 + 40;
        while (v171 < *(v210 + 2))
        {
          v67 = *(v8 - 1);
          v172 = *v8;
          v173 = v106[10];
          if (!v173)
          {
LABEL_208:
            v188 = v172;

            swift_bridgeObjectRelease_n();

            sub_22EDEC798();
            swift_allocError();
            *v189 = v67;
            *(v189 + 8) = v188;
            *(v189 + 16) = 0;
            swift_willThrow();
            goto LABEL_168;
          }

          v174 = v106;
          v4 = v106[11];
          v175 = *v8;

          sub_22ED971B0(v173, v4);
          v173(v67, v175);
          if (v3)
          {

            sub_22ED97EE0(v173, v4);

            swift_bridgeObjectRelease_n();
            goto LABEL_168;
          }

          ++v171;
          sub_22ED97EE0(v173, v4);

          v8 += 2;
          v106 = v174;
          if (v241 == v171)
          {
            goto LABEL_188;
          }
        }

LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        v195 = v235;
        sub_22EDEC118(&v235, &v226);
        sub_22EDEC720(v219, v211, v214);

        sub_22EDEC2B8(&v235);
        v214 = 2;
        v211 = *(&v195 + 1);
        v219 = v195;
        v3 = v198;
      }

LABEL_188:
      v67 = v220;
      v69 = v220[2];
      if (v64 == -1)
      {
        goto LABEL_195;
      }

      v176 = v69 + 1;
      v177 = 10;
      while (--v176)
      {
        v178 = v220[v177];
        v177 += 12;
        if (v178)
        {
          goto LABEL_195;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_22EDEC798();
      swift_allocError();
      *v190 = 0;
      *(v190 + 8) = 0;
      *(v190 + 16) = 6;
      swift_willThrow();
      goto LABEL_168;
    }

    v223 = v12;
    if (sub_22EE3C2A4())
    {
      v20 = sub_22EDEBD94(61, 0xE100000000000000, v12, v14);
      v22 = v21;

      v215 = sub_22EDEC670(2uLL, v12, v14);
      v212 = v23;
      v204 = v24;
      v26 = v25;

      v27 = v20;
      if (v22)
      {
        v28 = HIBYTE(v224) & 0xF;
        if ((v224 & 0x2000000000000000) == 0)
        {
          v28 = v12;
        }

        v29 = v28 << 16;
        if ((v224 & 0x1000000000000000) == 0 || (v12 & 0x800000000000000) != 0)
        {
          v27 = v29 | 7;
        }

        else
        {
          v27 = v29 | 0xB;
        }
      }

      v205 = v6;
      v221 = v4;
      v198 = v3;
      if (v27 >> 14 < v215 >> 14)
      {
        goto LABEL_226;
      }

      v201 = v20;
      v203 = v26;
      v30 = sub_22EE3C654();
      v34 = v33;
      v35 = *(v199 + 16);
      if (v35)
      {
        v36 = v32;
        v37 = 0;
        v38 = v31 >> 16;
        v1 = MEMORY[0x277D84F90];
        v241 = (v30 >> 16);
        do
        {
          v4 = v218 + 80 * v37;
          v8 = v37;
          while (1)
          {
            if (v8 >= v35)
            {
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
              goto LABEL_225;
            }

            v226 = *v4;
            v39 = *(v4 + 16);
            v40 = *(v4 + 32);
            v41 = *(v4 + 48);
            *&v229[9] = *(v4 + 57);
            v228 = v40;
            *v229 = v41;
            v227 = v39;
            v37 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_223;
            }

            v42 = (*(&v226 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v226 + 1)) & 0xFLL : v226 & 0xFFFFFFFFFFFFLL;
            if (v226 == __PAIR128__(v34, v36) && !v241 && v42 == v38 || (sub_22EE3CB74() & 1) != 0)
            {
              break;
            }

            v8 = (v8 + 1);
            v4 += 80;
            if (v37 == v35)
            {
              v8 = v220;
              goto LABEL_50;
            }
          }

          sub_22EDEC118(&v226, __dst);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v235 = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22EDEC298(0, *(v1 + 16) + 1, 1);
            v1 = v235;
          }

          v8 = v220;
          v45 = *(v1 + 16);
          v44 = *(v1 + 24);
          v46 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            sub_22EDEC298((v44 > 1), v45 + 1, 1);
            v46 = v45 + 1;
            v1 = v235;
          }

          *(v1 + 16) = v46;
          v47 = (v1 + 80 * v45);
          v47[2] = v226;
          v48 = v227;
          v49 = v228;
          v50 = *v229;
          *(v47 + 89) = *&v229[9];
          v47[4] = v49;
          v47[5] = v50;
          v47[3] = v48;
        }

        while (v37 != v35);
      }

      else
      {
        v1 = MEMORY[0x277D84F90];
      }

LABEL_50:

      if (!*(v1 + 16))
      {

        v5 = v208;
        v3 = v198;
        v4 = v221;
        v6 = v205;
        if (v209[10])
        {

          v1 = MEMORY[0x2318F5880](v215, v212, v204, v203);
          v52 = v51;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v210 = sub_22EDDA224(0, *(v210 + 2) + 1, 1, v210);
          }

          v54 = *(v210 + 2);
          v53 = *(v210 + 3);
          if (v54 >= v53 >> 1)
          {
            v210 = sub_22EDDA224((v53 > 1), v54 + 1, 1, v210);
          }

          *(v210 + 2) = v54 + 1;
          v55 = &v210[16 * v54];
          *(v55 + 4) = v1;
          *(v55 + 5) = v52;
          v7 = v200;
          if (v205 == v208)
          {
            goto LABEL_140;
          }

          goto LABEL_5;
        }

        sub_22EDEC720(v219, v211, v214);
        v214 = 0;
        v211 = v224;
        goto LABEL_101;
      }

      v4 = v221;
      v6 = v205;
      v5 = v208;
      if (!*(v1 + 16))
      {
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
        return;
      }

      v93 = *(v1 + 48);
      v94 = *(v1 + 80);
      v228 = *(v1 + 64);
      *v229 = v94;
      *&v229[9] = *(v1 + 89);
      v226 = *(v1 + 32);
      v227 = v93;
      sub_22EDEC118(&v226, __dst);

      sub_22EDEC118(&v226, __dst);
      v61 = sub_22EDEBEC8(0, 1, 1, MEMORY[0x277D84F90]);
      v96 = *(v61 + 2);
      v95 = *(v61 + 3);
      if (v96 >= v95 >> 1)
      {
        v61 = sub_22EDEBEC8((v95 > 1), v96 + 1, 1, v61);
      }

      *(v61 + 2) = v96 + 1;
      v97 = &v61[80 * v96];
      *(v97 + 2) = v226;
      v98 = v227;
      v99 = v228;
      v100 = *v229;
      *(v97 + 89) = *&v229[9];
      *(v97 + 4) = v99;
      *(v97 + 5) = v100;
      *(v97 + 3) = v98;
      if (v22)
      {
        sub_22EDEC2B8(&v226);
        v59 = 0;
        v60 = 0;
        v1 = *(v61 + 2);
        if (v1)
        {
LABEL_117:

          v115 = *(v61 + 2);
          if (v1 > v115)
          {
            goto LABEL_231;
          }

          v217 = v61;
          v116 = &v61[80 * v1];
          v117 = *(v116 - 2);
          v118 = *(v116 - 1);
          v119 = *v116;
          *&v238[9] = *(v116 + 9);
          v120 = *(v116 - 3);
          v237 = v118;
          *v238 = v119;
          v235 = v120;
          v236 = v117;
          if ((v238[24] & 1) != 0 || v60)
          {
            goto LABEL_124;
          }

          if (v6 == v5)
          {
            goto LABEL_227;
          }

          if (v6 >= v5)
          {
            goto LABEL_232;
          }

          if (__OFADD__(v6, 1))
          {
            goto LABEL_233;
          }

          v121 = (v197 + 16 * v6);
          v59 = *v121;
          v60 = v121[1];

          ++v6;
LABEL_124:
          if (v115 == 1)
          {
            sub_22EDEC118(&v235, &v226);

            v122 = MEMORY[0x277D84F90];
          }

          else
          {
            v207 = v6;
            sub_22EDEC118(&v235, &v226);
            v234 = MEMORY[0x277D84F90];

            sub_22EDEC2E8(0, v115 - 1, 0);
            v122 = v234;
            v123 = v115 - 2;
            for (i = 32; ; i += 80)
            {
              v232[0] = *&v217[i];
              v125 = *&v217[i + 16];
              v126 = *&v217[i + 32];
              v127 = *&v217[i + 48];
              *(v233 + 9) = *&v217[i + 57];
              v232[2] = v126;
              v233[0] = v127;
              v232[1] = v125;
              memmove(__dst, &v217[i], 0x49uLL);
              v228 = __dst[2];
              *v229 = __dst[3];
              *&v229[16] = __dst[4];
              v226 = __dst[0];
              v227 = __dst[1];
              sub_22EDEC118(v232, v231);
              v234 = v122;
              v129 = v122[2];
              v128 = v122[3];
              if (v129 >= v128 >> 1)
              {
                sub_22EDEC2E8((v128 > 1), v129 + 1, 1);
                v122 = v234;
              }

              v122[2] = v129 + 1;
              v130 = &v122[12 * v129];
              *(v130 + 2) = v226;
              v131 = v227;
              v132 = v228;
              v133 = *&v229[16];
              *(v130 + 5) = *v229;
              *(v130 + 6) = v133;
              *(v130 + 3) = v131;
              *(v130 + 4) = v132;
              v130[14] = 0;
              v130[15] = 0;
              if (!v123)
              {
                break;
              }

              --v123;
            }

            swift_bridgeObjectRelease_n();
            v6 = v207;
            v5 = v208;
          }

          sub_22EDEA5A0(v122);
          v8 = v239;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_22EDEC150(0, v8[2] + 1, 1, v8);
          }

          v135 = v8[2];
          v134 = v8[3];
          v1 = v135 + 1;
          if (v135 >= v134 >> 1)
          {
            v8 = sub_22EDEC150((v134 > 1), v135 + 1, 1, v8);
          }

          *&v229[9] = *&v238[9];
          v228 = v237;
          *v229 = *v238;
          v226 = v235;
          v136 = v235;
          v227 = v236;
          v8[2] = v1;
          v137 = &v8[12 * v135];
          *(v137 + 2) = v136;
          v138 = v227;
          v139 = v228;
          v140 = *&v229[16];
          *(v137 + 5) = *v229;
          *(v137 + 6) = v140;
          *(v137 + 3) = v138;
          *(v137 + 4) = v139;
          v137[14] = v59;
          v137[15] = v60;
          v239 = v8;
          v3 = v198;
          v7 = v200;
          if (v6 == v5)
          {
            goto LABEL_140;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v216 = v61;
        if (v229[24] == 1)
        {
          sub_22EDEC2B8(&v226);
LABEL_98:
          v59 = 0;
          v60 = 0;
        }

        else
        {

          sub_22EDEC74C(v201, v223, v224);
          v102 = v101;

          v103 = sub_22EE3C614();
          if (v104)
          {
            v103 = v102;
          }

          if (v102 >> 14 < v103 >> 14)
          {
            goto LABEL_234;
          }

          v106 = *(&v226 + 1);
          v105 = v226;
          v107 = sub_22EE3C654();
          v109 = v108;
          v111 = v110;
          v113 = v112;

          v59 = MEMORY[0x2318F5880](v107, v109, v111, v113);
          v60 = v114;

          if (!sub_22EE3C1D4())
          {
LABEL_229:

            sub_22EDEC720(v219, v211, v214);

            sub_22EDEC798();
            swift_allocError();
            *v196 = v105;
            *(v196 + 8) = v106;
            *(v196 + 16) = 2;
            swift_willThrow();

            sub_22EDEC2B8(&v226);
LABEL_168:

            return;
          }

          sub_22EDEC2B8(&v226);
          v4 = v221;
          v6 = v205;
          v5 = v208;
        }

        v61 = v216;
        v1 = *(v216 + 2);
        if (v1)
        {
          goto LABEL_117;
        }
      }

LABEL_100:
      sub_22EDEC720(v219, v211, v214);

      v214 = 3;
      v211 = v224;
      v3 = v198;
LABEL_101:
      v7 = v200;
      v9 = v223;
      if (v6 == v5)
      {
LABEL_213:
        v219 = v9;
        goto LABEL_140;
      }

      goto LABEL_4;
    }

    if (sub_22EE3C2A4())
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22EDDA224(0, *(v4 + 16) + 1, 1, v4);
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    v1 = v16 + 1;
    v17 = v224;
    if (v16 >= v15 >> 1)
    {
      v19 = sub_22EDDA224((v15 > 1), v16 + 1, 1, v4);
      v17 = v224;
      v4 = v19;
    }

    *(v4 + 16) = v1;
    v18 = v4 + 16 * v16;
    *(v18 + 32) = v223;
    *(v18 + 40) = v17;
    ++v11;
    v10 += 2;
    if (v6 == v5)
    {
      goto LABEL_140;
    }
  }

  v56 = sub_22EDEC670(1uLL, v12, v224);
  v58 = v57;

  v202 = v58 >> 14;
  v198 = v3;
  if (v58 >> 14 == v56 >> 14)
  {

    v59 = 0;
    v60 = 0;
    v61 = MEMORY[0x277D84F90];
    v1 = *(MEMORY[0x277D84F90] + 16);
    if (v1)
    {
      goto LABEL_117;
    }

    goto LABEL_100;
  }

  v216 = MEMORY[0x277D84F90];
  v222 = v4;
  v206 = v6;
  v241 = *(v199 + 16);
LABEL_64:
  v64 = sub_22EE3C634();
  v3 = v65;
  v66 = v241;
  v213 = sub_22EE3C604();
  if (!v66)
  {
    v68 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_62;
    }

    goto LABEL_91;
  }

  v67 = 0;
  v68 = MEMORY[0x277D84F90];
LABEL_66:
  v69 = (v199 + 32);
  v4 = v218 + 80 * v67;
  v70 = v67;
  while (v70 < v66)
  {
    v226 = *v4;
    v71 = *(v4 + 16);
    v72 = *(v4 + 32);
    v73 = *(v4 + 48);
    v69 = &v226;
    *&v229[9] = *(v4 + 57);
    v228 = v72;
    *v229 = v73;
    v227 = v71;
    v67 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_194;
    }

    if (*(&v227 + 1))
    {
      v74 = v227;
    }

    else
    {
      v74 = 0;
    }

    if (*(&v227 + 1))
    {
      v75 = *(&v227 + 1);
    }

    else
    {
      v75 = 0xE000000000000000;
    }

    if (v74 == v64 && v75 == v3)
    {
      sub_22EDEC118(&v226, __dst);

LABEL_83:
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v235 = v68;
      if ((v78 & 1) == 0)
      {
        sub_22EDEC298(0, *(v68 + 16) + 1, 1);
        v68 = v235;
      }

      v8 = v220;
      v80 = *(v68 + 16);
      v79 = *(v68 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_22EDEC298((v79 > 1), v80 + 1, 1);
        v68 = v235;
      }

      *(v68 + 16) = v80 + 1;
      v81 = (v68 + 80 * v80);
      v81[2] = v226;
      v82 = v227;
      v83 = v228;
      v84 = *v229;
      *(v81 + 89) = *&v229[9];
      v81[4] = v83;
      v81[5] = v84;
      v81[3] = v82;
      v66 = v241;
      if (v67 != v241)
      {
        goto LABEL_66;
      }

LABEL_88:
      if (!*(v68 + 16))
      {
LABEL_62:

        sub_22EDEC720(v219, v211, v214);
        v214 = 1;
        v219 = v64;
        v211 = v3;
        v4 = v222;
        v6 = v206;
        v5 = v208;
        v62 = v216;
        v63 = v213;
        goto LABEL_63;
      }

LABEL_91:

      if (!*(v68 + 16))
      {
        goto LABEL_224;
      }

      v85 = *(v68 + 48);
      v86 = *(v68 + 80);
      v228 = *(v68 + 64);
      *v229 = v86;
      *&v229[9] = *(v68 + 89);
      v226 = *(v68 + 32);
      v227 = v85;
      sub_22EDEC118(&v226, __dst);

      v62 = v216;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_22EDEBEC8(0, *(v216 + 2) + 1, 1, v216);
      }

      v4 = v222;
      v6 = v206;
      v5 = v208;
      v63 = v213;
      v88 = *(v62 + 2);
      v87 = *(v62 + 3);
      if (v88 >= v87 >> 1)
      {
        v62 = sub_22EDEBEC8((v87 > 1), v88 + 1, 1, v62);
      }

      *(v62 + 2) = v88 + 1;
      v89 = &v62[80 * v88];
      *(v89 + 2) = v226;
      v90 = v227;
      v91 = v228;
      v92 = *v229;
      *(v89 + 89) = *&v229[9];
      *(v89 + 4) = v91;
      *(v89 + 5) = v92;
      *(v89 + 3) = v90;
LABEL_63:
      v216 = v62;
      if (v202 == v63 >> 14)
      {

        goto LABEL_98;
      }

      goto LABEL_64;
    }

    v77 = sub_22EE3CBA4();
    sub_22EDEC118(&v226, __dst);

    if (v77)
    {
      goto LABEL_83;
    }

    sub_22EDEC2B8(&v226);
    ++v70;
    v4 += 80;
    v66 = v241;
    if (v67 == v241)
    {
      v8 = v220;
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  if (v69)
  {
    v179 = 0;
    v241 = v69 - 1;
    v180 = 32;
    while (1)
    {
      v181 = *&v67[v180 + 32];
      v182 = *&v67[v180 + 48];
      v183 = *&v67[v180 + 64];
      v230 = *&v67[v180 + 80];
      *v229 = v182;
      v184 = *&v67[v180 + 16];
      v226 = *&v67[v180];
      v227 = v184;
      *&v229[16] = v183;
      v228 = v181;
      v185 = v230;
      if (v64 == -1 && v229[0])
      {
        v191 = v226;
        sub_22EDEC7EC(&v226, __dst);

        swift_bridgeObjectRelease_n();

        sub_22EDEC798();
        swift_allocError();
        *v192 = v191;
        *(v192 + 16) = 5;
        swift_willThrow();

        sub_22EDEC2B8(&v226);
        goto LABEL_168;
      }

      v186 = v3;
      v3 = *&v229[8];
      v1 = *&v229[16];
      if (v229[24])
      {
        sub_22EDEC7EC(&v226, __dst);
        sub_22EDE976C(v3, v1);

        (v3)(v187);
        if (v186)
        {
          goto LABEL_219;
        }
      }

      else
      {
        if (!*(&v230 + 1))
        {
          goto LABEL_235;
        }

        sub_22EDEC7EC(&v226, __dst);
        sub_22EDE976C(v3, v1);
        (v3)(v185, *(&v185 + 1));
        if (v186)
        {

          v193 = v3;
          v194 = v1;
          goto LABEL_221;
        }
      }

      sub_22EDEC85C(v3, v1);
      sub_22EDEC2B8(&v226);
      if (v241 == v179)
      {
        break;
      }

      ++v179;
      v67 = v220;
      v172 = v220[2];
      v180 += 96;
      v3 = v186;
      if (v179 >= v172)
      {
        __break(1u);
        goto LABEL_208;
      }
    }
  }

  sub_22EDEA3B4(v222, v224);
}

unint64_t sub_22EDEBD94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_22EE3C2F4() != a1 || v9 != a2)
  {
    v10 = sub_22EE3CBA4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_22EE3C1E4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

__n128 sub_22EDEBE9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  return result;
}

char *sub_22EDEBEC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95200, &qword_22EE412B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDEBFE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95208, &qword_22EE412B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95210, &qword_22EE412C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDEC150(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F8, &qword_22EE412A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDEC298(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EDEC308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EDEC2E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EDEC424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EDEC308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95200, &qword_22EE412B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDEC424(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F8, &qword_22EE412A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22EDEC56C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (!a2 || !a3)
  {
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(a4 + 16);
    if (v8 == a5)
    {
      v5 = *(a4 + 16);
LABEL_14:
      *a1 = a4;
      a1[1] = v5;
      return;
    }

    v9 = a2;
    v10 = 0;
    v11 = a3 - 1;
    v12 = a5 - v8;
    v13 = (a4 + 16 * a5 + 40);
    while ((v5 & 0x8000000000000000) == 0)
    {
      if ((v5 + v10) >= *(a4 + 16))
      {
        goto LABEL_16;
      }

      v14 = *v13;
      *v9 = *(v13 - 1);
      v9[1] = v14;
      if (v11 == v10)
      {

        v5 += v10 + 1;
        goto LABEL_14;
      }

      ++v10;
      v13 += 2;
      v9 += 2;
      if (!(v12 + v10))
      {
        v5 = v8;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22EDEC670(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_22EE3C1F4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_22EE3C314();
}

uint64_t sub_22EDEC720(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_22EDEC734(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22EDEC734(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

unint64_t sub_22EDEC74C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22EE3C314();
  }

  __break(1u);
  return result;
}

unint64_t sub_22EDEC798()
{
  result = qword_27DA951E8;
  if (!qword_27DA951E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951E8);
  }

  return result;
}

uint64_t sub_22EDEC7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22EDEC89C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_22EDEC8E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EDEC974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDEC9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22EDECA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_22EDECA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6ktrace12OptionParserV10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_22EDECB08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDECB50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_22EDECB94(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22EDECBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = (a3 / a5) * 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D83A90];
  *(v9 + 16) = xmmword_22EE3F500;
  v11 = MEMORY[0x277D83B08];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v8;
  result = sub_22EE3C134();
  if ((a3 - 0x200000000000000) >> 58 == 63)
  {
    v13 = result;
    v14 = [objc_opt_self() stringFromByteCount:a3 << 6 countStyle:1];
    v15 = sub_22EE3C124();
    v17 = v16;

    sub_22EE3C864();

    MEMORY[0x2318F58F0](0xD000000000000017, 0x800000022EE487A0);
    MEMORY[0x2318F58F0](a1, a2);
    MEMORY[0x2318F58F0](10272, 0xE200000000000000);
    MEMORY[0x2318F58F0](v15, v17);

    MEMORY[0x2318F58F0](11817, 0xE200000000000000);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22EDECD7C(uint64_t a1)
{
  v3 = v1;
  v4 = HIWORD(*(a1 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v23 = v6;
  result = sub_22EDECEF8(v4);
  v9 = v6[2];
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v8;
  if (v6[3] < v12)
  {
    sub_22EDECFB0(v12, isUniquelyReferenced_nonNull_native);
    result = sub_22EDECEF8(v4);
    if ((v2 & 1) == (v13 & 1))
    {
      goto LABEL_6;
    }

    result = sub_22EE3CBE4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  *v3 = v6;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6[(result >> 6) + 8] |= 1 << result;
  *(v6[6] + 2 * result) = v4;
  *(v6[7] + 8 * result) = 1;
  v14 = v6[2];
  v11 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (!v11)
  {
    v6[2] = v15;
    while (1)
    {
LABEL_9:
      v16 = v6[7];
      v17 = *(v16 + 8 * result);
      v11 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v11)
      {
LABEL_13:
        __break(1u);
      }

      else
      {
        *(v16 + 8 * result) = v18;
        v19 = v3[1];
        v20 = __CFADD__(v19, 1);
        v21 = v19 + 1;
        if (!v20)
        {
          v3[1] = v21;
          return result;
        }
      }

      __break(1u);
LABEL_15:
      v22 = result;
      sub_22EDED218();
      result = v22;
      v6 = v23;
      *v3 = v23;
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22EDECEF8(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2318F6350](*(v1 + 40), a1, 2);

  return sub_22EDECF40(v2, v3);
}

unint64_t sub_22EDECF40(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22EDECFB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95218, &qword_22EE41338);
  result = sub_22EE3C9C4();
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
      v20 = *(*(v5 + 48) + 2 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x2318F6350](*(v7 + 40), v20, 2);
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
      *(*(v7 + 48) + 2 * v15) = v20;
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

void *sub_22EDED218()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95218, &qword_22EE41338);
  v2 = *v0;
  v3 = sub_22EE3C9B4();
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
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

unint64_t sub_22EDED364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95218, &qword_22EE41338);
    v3 = sub_22EE3C9D4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_22EDECEF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_22EDED464(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_22EDED4AC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a1;
  return result;
}

uint64_t sub_22EDED4E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22EDED528(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22EDED590(a1, a2, a3);
  return v6;
}

uint64_t sub_22EDED590(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v9 = dispatch_semaphore_create(0);
  *(v5 + 24) = a2;
  *(v5 + 32) = v9;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  type metadata accessor for WakeListener();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = a3;
  *(v5 + 40) = v10;
  v11 = *(a1 + 16);

  v17 = a2;
  v21 = a3;

  if (v11)
  {
    v13 = 0;
    v14 = a1 + 32;
    while (v13 < *(a1 + 16))
    {
      sub_22EDEE72C(v14, v18);
      v15 = v19;
      v16 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v16 + 8))(*(v5 + 24), *(v5 + 32), *(v5 + 40), v15, v16);
      if (v4)
      {

        __swift_destroy_boxed_opaque_existential_0(v18);
        return v5;
      }

      ++v13;
      result = __swift_destroy_boxed_opaque_existential_0(v18);
      v14 += 40;
      if (v11 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v5;
  }

  return result;
}

uint64_t sub_22EDED70C()
{

  return swift_deallocClassInstance();
}

void sub_22EDED75C(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a2;
  v16[4] = sub_22EDEEBE0;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22EDED934;
  v16[3] = &block_descriptor_44;
  v11 = _Block_copy(v16);

  v12 = a2;

  v13 = sub_22EE3C184();
  v14 = notify_register_dispatch((v13 + 32), &out_token, a1, v11);

  _Block_release(v11);
  if (v14)
  {
    type metadata accessor for KTraceRecordError(0);
    sub_22EDEEC38(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    *v15 = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_22EDED934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

double sub_22EDED9A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for NotificationWaiter;
  a3[4] = &off_2843A1820;
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_22EDED9C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v25 = a2;
  v29 = a1;
  v6 = sub_22EE3BFF4();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22EE3C014();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22EE3C034();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_22EE3C024();
  sub_22EE3C044();
  v19 = *(v13 + 8);
  v19(v16, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4 / 1000000000.0;
  v21 = v25;
  *(v20 + 32) = v25;
  aBlock[4] = sub_22EDEEC80;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22ED842DC;
  aBlock[3] = &block_descriptor_50;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  sub_22EE3C004();
  v30 = MEMORY[0x277D84F90];
  sub_22EDEEC38(&qword_27DA95228, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95230, qword_22EE41340);
  sub_22EDEE8B8();
  sub_22EE3C7B4();
  MEMORY[0x2318F5BE0](v18, v11, v8, v22);
  _Block_release(v22);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v11, v27);
  v19(v18, v12);
}

uint64_t sub_22EDEDDA0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v21 = sub_22EE3BFF4();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22EE3C014();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  v13 = sub_22EE3BF54();
  signal(v12, v13);
  sub_22EDEECDC();
  *(v4 + 24) = sub_22EE3C524();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v4;
  v14[4] = a2;
  aBlock[4] = sub_22ED826E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22ED842DC;
  aBlock[3] = &block_descriptor_56;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  sub_22EE3C004();
  sub_22EDEE074();
  sub_22EE3C534();
  _Block_release(v15);
  swift_unknownObjectRelease();
  (*(v19 + 8))(v8, v21);
  (*(v9 + 8))(v11, v20);

  if (*(v4 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22EE3C554();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22EDEE074()
{
  sub_22EE3BFF4();
  sub_22EDEEC38(&qword_27DA95228, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95230, qword_22EE41340);
  sub_22EDEE8B8();
  return sub_22EE3C7B4();
}

uint64_t sub_22EDEE12C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_22EDEE188@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      a4[3] = &type metadata for TimeWaiter;
      a4[4] = &off_2843A1810;
      *a4 = a1;
    }

    else
    {
      a4[3] = &type metadata for NotificationWaiter;
      a4[4] = &off_2843A1820;
      *a4 = a1;
      a4[1] = a2;
    }
  }

  else
  {
    v6 = a1;
    v7 = type metadata accessor for SignalWaiter();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 16) = v6;
    a4[3] = v7;
    a4[4] = &off_2843A1800;
    *a4 = v8;
  }

  return result;
}

uint64_t sub_22EDEE280(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  *(v1 + 28) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_22EDEE318(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a1;
  v6 = sub_22EE3BFF4();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22EE3C014();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(*(v3 + 16));
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a3;
  v12[4] = a2;
  aBlock[4] = sub_22EDEE7F8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22ED842DC;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  v14 = a2;
  sub_22EE3C004();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_22EDEEC38(&qword_27DA95228, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95230, qword_22EE41340);
  sub_22EDEE8B8();
  sub_22EE3C7B4();
  sub_22EE3C4D4();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

void sub_22EDEE5E0(unsigned int a1)
{
  (*(*v1 + 104))(a1);
  v2 = v1[2];

  dispatch_group_leave(v2);
}

uint64_t sub_22EDEE644()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22EDEE67C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = dispatch_group_create();
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  return v0;
}

uint64_t sub_22EDEE72C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22EDEE7F8()
{
  v1 = *(v0 + 24);
  result = (*(**(v0 + 16) + 96))();
  if ((result & 0x100000000) == 0)
  {
    if ((result - 4) <= 2)
    {
      (*(*v1 + 120))(qword_22EE41670[(result - 4)], 0, 3);
    }

    return sub_22EE3C5A4();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22EDEE8B8()
{
  result = qword_27DA95238;
  if (!qword_27DA95238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95230, qword_22EE41340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95238);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6ktrace10WakeReasonO(uint64_t a1)
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

uint64_t sub_22EDEE938(uint64_t a1, unsigned int a2)
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

uint64_t sub_22EDEE980(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22EDEE9C4(uint64_t result, unsigned int a2)
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

uint64_t sub_22EDEEA1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDEEA64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void type metadata accessor for ktrace_end_reason()
{
  if (!qword_27DA952A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA952A0);
    }
  }
}

uint64_t sub_22EDEEB48(uint64_t a1, int a2)
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

uint64_t sub_22EDEEB94(uint64_t result, int a2, int a3)
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

uint64_t sub_22EDEEC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22EDEECDC()
{
  result = qword_27DA952B0;
  if (!qword_27DA952B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA952B0);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22EDEED9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for RecordingOptions.Options(0);
  v8 = (a1 + v7[32]);
  v82 = v8[1];
  v83 = *v8;
  v84 = *(a1 + v7[16]);
  v9 = *(a1 + v7[24]);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_22EDF3184(*(v9 + 16), 0);
    v85 = sub_22EDF3E34(v91, v11 + 4, v10, v9);
    v12 = v91[0];

    sub_22ED97F20(v12);
    if (v85 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v91[0] = v11;
  v13 = 0;
  sub_22EDF3118(v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EDD3F74();
  v14 = sub_22EE3C0B4();
  v78 = v15;
  v79 = v14;

  v16 = *(a1 + v7[25]);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_22EDF3184(v17, 0);
    v19 = sub_22EDF3E34(v91, v18 + 4, v17, v16);
    v20 = v91[0];
    v13 = v91[3];
    v75 = v19;

    sub_22ED97F20(v20);
    if (v75 != v17)
    {
      __break(1u);
      goto LABEL_29;
    }

    v13 = 0;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v91[0] = v18;
  sub_22EDF3118(v91);
  v21 = sub_22EE3C0B4();
  v74 = v22;
  v76 = v21;

  v91[0] = a2;

  sub_22EDF3118(v91);

  v23 = sub_22EE3C0B4();
  v25 = v24;

  v91[0] = a3;

  sub_22EDF3118(v91);

  v26 = sub_22EE3C0B4();
  v88 = v27;
  v90 = v26;

  v28 = (a1 + v7[9]);
  v29 = *v28;
  LOBYTE(v91[0]) = *(v28 + 8);
  v30 = a1 + v7[15];
  v31 = 0.0;
  if ((*(v30 + 8) & 1) == 0)
  {
    v31 = *v30 / 1000000.0;
  }

  v97 = *(v30 + 8);
  v32 = *(*(a1 + v7[12]) + 16);
  v33 = *(*(a1 + v7[13]) + 16);
  v34 = v7[11];
  v35 = (a1 + v7[10]);
  v36 = *v35;
  v96 = *(v35 + 4);
  v37 = *(a1 + v34);
  if ((*(a1 + v34 + 8) & 1) == 0)
  {
    if (!(v37 >> 58))
    {
      v37 <<= 6;
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_17:
  v86 = v25;
  v95 = *(a1 + v34 + 8);
  v38 = a1 + v7[30];
  v39 = 0.0;
  if ((*(v38 + 8) & 1) == 0)
  {
    v39 = *v38 / 1000000000.0;
  }

  v40 = *(a1 + v7[14]);
  v41 = *(a1 + v7[28]);
  v42 = *(a1 + v7[17]);
  v43 = *(a1 + v7[27]);
  v44 = *(a1 + v7[18]);
  v94 = *(v38 + 8);
  v45 = (a1 + v7[19]);
  v46 = *v45;
  v47 = v45[1];
  v48 = (a1 + v7[20]);
  v49 = *v48;
  v13 = v48[1];
  v50 = (a1 + v7[21]);
  v51 = *(v50 + 8);
  v73 = v36;
  v72 = v37;
  v70 = v41;
  v71 = v44;
  v68 = v43;
  v69 = v42;
  v67 = v40;
  v65 = v46;
  v66 = v29;
  v64 = v49;
  if ((v51 & 1) == 0)
  {
    v55 = *v50;
    if ((v55 & 0x8000000000000000) == 0)
    {
      if (!(v55 >> 54))
      {
        if (!(v55 >> 44))
        {
          v52 = v23;
          v53 = v74;
          v54 = v76;
          v63 = v55 << 20;
          goto LABEL_25;
        }

LABEL_32:
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v52 = v23;
  v53 = v74;
  v54 = v76;
  v63 = 0;
LABEL_25:
  v77 = a4 & 1;
  v56 = v33 != 0;
  v57 = v32 != 0;
  v93 = v51;
  v58 = *(a1 + v7[22]);
  v59 = 63;
  if (!v58)
  {
    v59 = 0;
  }

  v81 = v59;

  result = sub_22EDF3F8C(a1);
  *a5 = v83;
  *(a5 + 8) = v82;
  *(a5 + 16) = v79;
  *(a5 + 24) = v78;
  *(a5 + 32) = v54;
  *(a5 + 40) = v53;
  *(a5 + 48) = v52;
  *(a5 + 56) = v86;
  *(a5 + 64) = v90;
  *(a5 + 72) = v88;
  *(a5 + 80) = v66;
  *(a5 + 88) = v91[0];
  *(a5 + 104) = v97;
  *(a5 + 105) = v84;
  *(a5 + 106) = v57;
  *(a5 + 107) = v67;
  *(a5 + 108) = v73;
  *(a5 + 112) = v96;
  *(a5 + 120) = v72;
  *(a5 + 128) = v95;
  *(a5 + 129) = v56;
  *(a5 + 144) = v94;
  *(a5 + 145) = v70;
  *(a5 + 146) = v77;
  *(a5 + 147) = v69;
  *(a5 + 148) = v68;
  *&v62 = v64;
  *&v61 = v65;
  *(&v61 + 1) = v47;
  *(&v62 + 1) = v13;
  *(a5 + 149) = v71;
  *(a5 + 184) = v63;
  *(a5 + 192) = v93;
  *(a5 + 200) = v81;
  v92 = v58 ^ 1;
  *(a5 + 208) = v58 ^ 1;
  *(a5 + 96) = v31;
  *(a5 + 136) = v39;
  *(a5 + 168) = v62;
  *(a5 + 152) = v61;
  return result;
}

unint64_t sub_22EDEF324(char a1)
{
  result = 0x656D614E6E616C70;
  switch(a1)
  {
    case 1:
      result = 0x6465646461;
      break;
    case 2:
      result = 0x64657474696D6FLL;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x73726579616CLL;
      break;
    case 5:
    case 13:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 16:
      result = 0x73736572706D6F63;
      break;
    case 8:
      result = 0x7453796669746F6ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x65644B6E4F646E65;
      break;
    case 12:
      result = 0x6E45796669746F6ELL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x7355656661736E75;
      break;
    case 18:
    case 22:
      result = 0xD000000000000012;
      break;
    case 19:
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22EDEF594@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22EDF413C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22EDEF5D4(uint64_t a1)
{
  v2 = sub_22EDF3FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDEF610(uint64_t a1)
{
  v2 = sub_22EDF3FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDEF64C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95380, &qword_22EE416D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF3FE8();
  sub_22EE3CCE4();
  v12 = 0;
  sub_22EE3CB04();
  if (!v2)
  {
    v12 = 1;
    sub_22EE3CA94();
    v12 = 2;
    sub_22EE3CA94();
    v12 = 3;
    sub_22EE3CB04();
    v12 = 4;
    sub_22EE3CB04();
    v12 = 5;
    sub_22EE3CAB4();
    v12 = 6;
    sub_22EE3CAB4();
    v12 = 7;
    sub_22EE3CB14();
    v12 = 8;
    sub_22EE3CB14();
    v12 = 9;
    sub_22EE3CB14();
    v9 = *(v3 + 112);
    v12 = 10;
    v11[12] = v9;
    sub_22EE3CAE4();
    v12 = 11;
    sub_22EE3CAF4();
    v12 = 12;
    sub_22EE3CB14();
    v12 = 13;
    sub_22EE3CAB4();
    v12 = 14;
    sub_22EE3CB14();
    v12 = 15;
    sub_22EE3CB14();
    v12 = 16;
    sub_22EE3CB14();
    v12 = 17;
    sub_22EE3CB14();
    v12 = 18;
    sub_22EE3CB14();
    v12 = 19;
    sub_22EE3CA94();
    v12 = 20;
    sub_22EE3CA94();
    v12 = 21;
    sub_22EE3CAF4();
    v12 = 22;
    sub_22EE3CAC4();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_22EDEFB14@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  v27 = *(v1 + 224);
  v28 = v3;
  v29 = *(v1 + 256);
  v30 = *(v1 + 272);
  v4 = *(v1 + 176);
  v23 = *(v1 + 160);
  v24 = v4;
  v5 = *(v1 + 208);
  v25 = *(v1 + 192);
  v26 = v5;
  v6 = *(v1 + 112);
  v19 = *(v1 + 96);
  v20 = v6;
  v7 = *(v1 + 144);
  v21 = *(v1 + 128);
  v22 = v7;
  v8 = *(v1 + 80);
  v17 = *(v1 + 64);
  v18 = v8;
  sub_22EDF4064(&v17, &v16);
  v9 = v28;
  *(a1 + 160) = v27;
  *(a1 + 176) = v9;
  *(a1 + 192) = v29;
  *(a1 + 208) = v30;
  v10 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v10;
  v11 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v11;
  v12 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v12;
  v13 = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v13;
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  return result;
}

uint64_t sub_22EDEFBDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v4 = *(v1 + 256);
  v18[11] = *(v1 + 240);
  v18[12] = v4;
  v5 = *(v1 + 160);
  v6 = *(v1 + 192);
  v7 = *(v1 + 208);
  v18[7] = *(v1 + 176);
  v18[8] = v6;
  v19 = *(v1 + 272);
  v18[9] = v7;
  v18[10] = v3;
  v8 = *(v1 + 112);
  v18[2] = *(v1 + 96);
  v18[3] = v8;
  v9 = *(v1 + 144);
  v18[4] = *(v1 + 128);
  v18[5] = v9;
  v18[6] = v5;
  v10 = *(v1 + 80);
  v18[0] = *(v1 + 64);
  v18[1] = v10;
  v11 = *(a1 + 176);
  *(v1 + 224) = *(a1 + 160);
  *(v1 + 240) = v11;
  *(v1 + 256) = *(a1 + 192);
  *(v1 + 272) = *(a1 + 208);
  v12 = *(a1 + 112);
  *(v1 + 160) = *(a1 + 96);
  *(v1 + 176) = v12;
  v13 = *(a1 + 144);
  *(v1 + 192) = *(a1 + 128);
  *(v1 + 208) = v13;
  v14 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v14;
  v15 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v15;
  v16 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v16;
  return sub_22EDF40D4(v18);
}

uint64_t sub_22EDEFD08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x636F725074736F70;
  v5 = 0xEB00000000737365;
  if (a1 != 6)
  {
    v4 = 0x6C61746F74;
    v5 = 0xE500000000000000;
  }

  v6 = 0x6E6964726F636572;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x6E776F6472616574;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x54676E6974696177;
  v9 = 0xEE0074726174536FLL;
  if (a1 != 2)
  {
    v8 = 0x676E697472617473;
    v9 = 0xE800000000000000;
  }

  v10 = 0x7075746573;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 0x6C616974696E69;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEB00000000737365;
        if (v11 != 0x636F725074736F70)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C61746F74)
        {
LABEL_45:
          v14 = sub_22EE3CBA4();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000067;
      if (v11 != 0x6E6964726F636572)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6E776F6472616574)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0074726174536FLL;
      if (v11 != 0x54676E6974696177)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x676E697472617473)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x7075746573)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6C616974696E69)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_22EDEFFB0(uint64_t a1, unsigned __int8 a2)
{
  sub_22EE3C1C4();
}

uint64_t sub_22EDF00F4(uint64_t a1, unsigned __int8 a2)
{
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

unint64_t sub_22EDF0244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EDF48A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22EDF0274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616974696E69;
  v5 = 0xEB00000000737365;
  v6 = 0x636F725074736F70;
  if (v2 != 6)
  {
    v6 = 0x6C61746F74;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6964726F636572;
  if (v2 != 4)
  {
    v8 = 0x6E776F6472616574;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0074726174536FLL;
  v10 = 0x54676E6974696177;
  if (v2 != 2)
  {
    v10 = 0x676E697472617473;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x7075746573;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

double sub_22EDF0380()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22EDF03B8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 280) = a1;
}

double sub_22EDF0400()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22EDF0438(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 288) = a1;
}

unint64_t sub_22EDF04D0()
{
  v1 = *v0;
  v2 = 0x756F436B6E756863;
  v3 = 0x657A6953656C6966;
  v4 = 0xD000000000000015;
  if (v1 == 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
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

uint64_t sub_22EDF05A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22EDF4998(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22EDF05D8(uint64_t a1)
{
  v2 = sub_22EDF48F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF0614(uint64_t a1)
{
  v2 = sub_22EDF48F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF0650(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95390, &qword_22EE416E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF48F0();
  sub_22EE3CCE4();
  v8[15] = 0;
  sub_22EE3CB54();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_22EE3CB54();
  v8[13] = 2;
  sub_22EE3CB54();
  v8[12] = 3;
  sub_22EE3CB54();
  v8[11] = 4;
  sub_22EE3CB54();
  v8[10] = 5;
  sub_22EE3CB54();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22EDF0850@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_22EDF0878(unsigned __int8 a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v7 = *v2 + 208;
  v8 = v6();
  v40 = *(v8 + 16);
  if (!v40)
  {
LABEL_66:
  }

  v39 = v2;
  v38 = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0xEE0074726174536FLL;
  v12 = 0x7075746573;
  v13 = 0xE700000000000000;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_76;
    }

    v14 = *(v8 + v9 + 32);
    if (v14 > 3)
    {
      if (*(v8 + v9 + 32) > 5u)
      {
        if (v14 == 6)
        {
          v19 = 0x636F725074736F70;
          v7 = 0xEB00000000737365;
        }

        else
        {
          v7 = 0xE500000000000000;
          v19 = 0x6C61746F74;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v19 = 0x6E6964726F636572;
        }

        else
        {
          v19 = 0x6E776F6472616574;
        }

        if (v14 == 4)
        {
          v7 = 0xE900000000000067;
        }

        else
        {
          v7 = 0xE800000000000000;
        }
      }
    }

    else
    {
      if (v14 == 2)
      {
        v15 = 0x54676E6974696177;
      }

      else
      {
        v15 = 0x676E697472617473;
      }

      if (v14 == 2)
      {
        v16 = 0xEE0074726174536FLL;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      if (*(v8 + v9 + 32))
      {
        v17 = 0x7075746573;
      }

      else
      {
        v17 = 0x6C616974696E69;
      }

      if (*(v8 + v9 + 32))
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      if (*(v8 + v9 + 32) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (*(v8 + v9 + 32) <= 1u)
      {
        v7 = v18;
      }

      else
      {
        v7 = v16;
      }
    }

    v20 = 0x636F725074736F70;
    if (a1 != 6)
    {
      v20 = 0x6C61746F74;
    }

    v21 = 0xEB00000000737365;
    if (a1 != 6)
    {
      v21 = 0xE500000000000000;
    }

    v22 = 0x6E776F6472616574;
    if (a1 == 4)
    {
      v22 = 0x6E6964726F636572;
    }

    v23 = 0xE900000000000067;
    if (a1 != 4)
    {
      v23 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v20 = v22;
      v21 = v23;
    }

    if (a1 == 2)
    {
      v24 = 0x54676E6974696177;
    }

    else
    {
      v24 = 0x676E697472617473;
    }

    if (a1 == 2)
    {
      v25 = 0xEE0074726174536FLL;
    }

    else
    {
      v25 = 0xE800000000000000;
    }

    if (a1)
    {
      v26 = 0x7075746573;
    }

    else
    {
      v26 = 0x6C616974696E69;
    }

    if (a1)
    {
      v13 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v24 = v26;
      v25 = v13;
    }

    v27 = a1 <= 3u ? v24 : v20;
    v28 = a1 <= 3u ? v25 : v21;
    if (v19 == v27 && v7 == v28)
    {
      break;
    }

    v7 = sub_22EE3CBA4();

    if (v7)
    {
      goto LABEL_70;
    }

    ++v10;
    v9 += 32;
    v13 = 0xE700000000000000;
    if (v40 == v10)
    {
      goto LABEL_66;
    }
  }

LABEL_70:

  v11 = v39;
  v31 = (v6)(v30);
  if (v10 >= *(v31 + 16))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v3 = *(v31 + v9 + 40);
  v4 = *(v31 + v9 + 48);
  v10 = *(v31 + v9 + 56);

  v32 = *(*v39 + 248);
  v9 = v38;

  v11 = v32(v42);
  v7 = v33;
  v12 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_72;
  }

LABEL_77:
  v12 = sub_22EDF3CD8(0, *(v12 + 16) + 1, 1, v12);
  *v7 = v12;
LABEL_72:
  v36 = *(v12 + 16);
  v35 = *(v12 + 24);
  if (v36 >= v35 >> 1)
  {
    v12 = sub_22EDF3CD8((v35 > 1), v36 + 1, 1, v12);
    *v7 = v12;
  }

  *(v12 + 16) = v36 + 1;
  v37 = v12 + 40 * v36;
  *(v37 + 32) = a1;
  *(v37 + 40) = v3;
  *(v37 + 48) = v4;
  *(v37 + 56) = v10;
  *(v37 + 64) = v9;
  return v11(v42, 0);
}

__n128 sub_22EDF0C9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + 296;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22EDF0CF4(uint64_t a1)
{
  v3 = *a1;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(v1 + 296) = *a1;
  *(v1 + 312) = v6;
  *(v1 + 328) = *(a1 + 32);
  *(v1 + 344) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95398, &qword_22EE416E8);
  result = swift_allocObject();
  *(result + 16) = xmmword_22EE41690;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if ((*(a1 + 48) & 1) == 0)
  {
    *(result + 48) = *(a1 + 8);
    *(result + 56) = 0x764567756265644BLL;
    *(result + 64) = 0xEB00000000746E65;
    *(result + 72) = v3;
    *(result + 80) = 0x6441736B6E756843;
    *(result + 88) = 0xEB00000000646564;
    *(result + 96) = v5;
    *(result + 104) = 0x6564644165747942;
    *(result + 112) = 0xE900000000000064;
    *(result + 120) = v4;
    v8 = (*v1 + 264);
    v9 = *v8;
    (*v8)(6, result);

    result = swift_allocObject();
    *(result + 16) = xmmword_22EE416A0;
    *(result + 32) = 0x764567756265644BLL;
    *(result + 40) = 0xEF65747942746E65;
    if ((*(v1 + 344) & 1) == 0)
    {
      v10 = *(v1 + 296);
      *(result + 48) = *(v1 + 304);
      *(result + 56) = 0x764567756265644BLL;
      *(result + 64) = 0xEB00000000746E65;
      *(result + 72) = v10;
      v9(4, result);

      result = swift_allocObject();
      *(result + 16) = xmmword_22EE416A0;
      *(result + 32) = 0x764567756265644BLL;
      *(result + 40) = 0xEF65747942746E65;
      if ((*(v1 + 344) & 1) == 0)
      {
        v11 = *(v1 + 296);
        *(result + 48) = *(v1 + 304);
        *(result + 56) = 0x764567756265644BLL;
        *(result + 64) = 0xEB00000000746E65;
        *(result + 72) = v11;
        v9(5, result);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22EDF0F48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22EDF0F9C;
}

uint64_t sub_22EDF0F9C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if (a2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95398, &qword_22EE416E8);
  result = swift_allocObject();
  *(result + 16) = xmmword_22EE41690;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if (*(v5 + 344))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(v5 + 296);
  v7 = *(v5 + 328);
  v8 = *(v5 + 336);
  *(result + 48) = *(v5 + 304);
  *(result + 56) = 0x764567756265644BLL;
  *(result + 64) = 0xEB00000000746E65;
  *(result + 72) = v6;
  *(result + 80) = 0x6441736B6E756843;
  *(result + 88) = 0xEB00000000646564;
  *(result + 96) = v7;
  *(result + 104) = 0x6564644165747942;
  *(result + 112) = 0xE900000000000064;
  *(result + 120) = v8;
  v9 = *(*v5 + 264);
  v9(6, result);

  result = swift_allocObject();
  *(result + 16) = xmmword_22EE416A0;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if (*(v5 + 344) & 1) != 0 || (v10 = *(*(a1 + 24) + 296), *(result + 48) = *(v5 + 304), *(result + 56) = 0x764567756265644BLL, *(result + 64) = 0xEB00000000746E65, *(result + 72) = v10, v9(4, result), , result = swift_allocObject(), *(result + 16) = xmmword_22EE416A0, *(result + 32) = 0x764567756265644BLL, *(result + 40) = 0xEF65747942746E65, (*(v5 + 344)))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(*(a1 + 24) + 296);
  *(result + 48) = *(v5 + 304);
  *(result + 56) = 0x764567756265644BLL;
  *(result + 64) = 0xEB00000000746E65;
  *(result + 72) = v11;
  v9(5, result);
}

unint64_t sub_22EDF124C()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22EDF12A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22EDF4BA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22EDF12D8(uint64_t a1)
{
  v2 = sub_22EDF4944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF1314(uint64_t a1)
{
  v2 = sub_22EDF4944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF1350(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953A0, &qword_22EE416F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF4944();
  sub_22EE3CCE4();
  v11[15] = 0;
  sub_22EE3CB14();
  if (!v4)
  {
    v11[14] = 1;
    sub_22EE3CB24();
    v11[13] = 2;
    sub_22EE3CB54();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22EDF156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v3[44] = a1;
  v3[45] = a2;
  v3[46] = a3;
  return result;
}

uint64_t sub_22EDF1644(char a1)
{
  result = swift_beginAccess();
  *(v1 + 376) = a1;
  return result;
}

uint64_t sub_22EDF16D4()
{
  v1 = *v0;
  sub_22EE3CC74();
  MEMORY[0x2318F6370](v1);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF171C(uint64_t a1)
{
  v2 = *v1;
  sub_22EE3CC74();
  MEMORY[0x2318F6370](v2);
  return sub_22EE3CCC4();
}

unint64_t sub_22EDF1760()
{
  v1 = *v0;
  v2 = 0x79426465646E65;
  v3 = 0xD000000000000012;
  if (v1 == 4)
  {
    v3 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000021;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
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

uint64_t sub_22EDF182C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22EDF4CCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22EDF1854(uint64_t a1)
{
  v2 = sub_22EDF4F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF1890(uint64_t a1)
{
  v2 = sub_22EDF4F20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22EDF18CC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      *&result = COERCE_DOUBLE(sub_22EDF4ECC(a4));
      if (*(a4 + 24) & 1) != 0 || (*(a4 + 48))
      {
        *&result = 0.0;
        return result;
      }

      v13 = *(a4 + 16);
      v14 = *(a4 + 40);
      v15 = v14 >= v13;
      v16 = v14 - v13;
      if (v15)
      {
        *&result = v16 / 1000000000.0 - *&a1;
        return result;
      }

      __break(1u);
    }

    else
    {
      if (!(a1 | a2))
      {
        sub_22EDF4ECC(a4);
        return 4;
      }

      if (a1 ^ 1 | a2)
      {
        sub_22EDF4ECC(a4);
        return 5;
      }

      *&result = COERCE_DOUBLE(sub_22EDF4ECC(a4));
      if (a6)
      {
        return a5;
      }

      v17 = *(a4 + 8);
      v15 = v17 >= a5;
      v18 = v17 - a5;
      if (v15)
      {
        if (!(v18 >> 58))
        {
          return v18 << 6;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (a3)
  {
    sub_22EDF4ECC(a4);
    sub_22ED83014(a1, a2, 1);
    return 2;
  }

  else
  {
    sub_22EDF4ECC(a4);
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_22EDF1A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v13 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953A8, &qword_22EE416F8);
  v14 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF4F20();
  sub_22EE3CCE4();
  if (!(a5 >> 6))
  {
    v16 = 1;
    sub_22EE3CAB4();
    if (!v5)
    {
      v15 = 2;
      sub_22EE3CAB4();
      v11 = v14;
      goto LABEL_9;
    }

    return (*(v14 + 8))(v10, v8);
  }

  if (a5 >> 6 != 1)
  {
    v11 = v14;
    goto LABEL_9;
  }

  v18 = 3;
  sub_22EE3CAF4();
  if (v5)
  {
    return (*(v14 + 8))(v10, v8);
  }

  v17 = 4;
  sub_22EE3CAB4();
  v11 = v14;
LABEL_9:
  v19 = 0;
  sub_22EE3CB04();
  (*(v11 + 8))(v10, v8);
}

uint64_t sub_22EDF1EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  *(v4 + 400) = a3;
  *(v4 + 408) = a4;
  return result;
}

void *sub_22EDF1F68()
{
  swift_beginAccess();
  v1 = *(v0 + 416);
  v2 = v1;
  return v1;
}

void sub_22EDF1FB0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 416);
  *(v1 + 416) = a1;
}

void *sub_22EDF2048(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953B8, qword_22EE41700);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  (*(*v1 + 184))(&v67, v7);
  v98 = v77;
  v99 = v78;
  v100 = v79;
  v94 = v73;
  v95 = v74;
  v96 = v75;
  v97 = v76;
  v90 = v69;
  v91 = v70;
  v92 = v71;
  v93 = v72;
  v88 = v67;
  v89 = v68;
  v83[10] = v77;
  v83[11] = v78;
  v83[12] = v79;
  v83[6] = v73;
  v83[7] = v74;
  v83[8] = v75;
  v83[9] = v76;
  v83[2] = v69;
  v83[3] = v70;
  v83[4] = v71;
  v83[5] = v72;
  v101 = v80;
  v84 = v80;
  v83[0] = v67;
  v83[1] = v68;
  v10 = sub_22EDF4F74(v83);
  if (v10 != 1)
  {
    sub_22EDEF64C(a1);
    if (v2)
    {
      return sub_22EDF40D4(&v67);
    }

    v10 = sub_22EDF40D4(&v67);
  }

  result = (*(*v1 + 272))(v81, v10);
  if ((v82 & 1) != 0 || (v85 = v81[0], v86 = v81[1], v87 = v81[2], result = sub_22EDF0650(a1), !v2))
  {
    if ((result = (*(*v1 + 344))(result), v14 <= 1u) && (v12 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL || (result = sub_22EDF1A98(a1, result, v12, v13, v14), !v2))
    {
      v15 = (*(*v1 + 296))(result);
      v102 = v9;
      if (v15 == 2 || (result = sub_22EDF1350(a1, v15 & 1, v17, v16), !v2))
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_22EDF4F8C();
        v18 = v102;
        v19 = sub_22EE3CCE4();
        (*(*v1 + 320))(v19);
        v65 = 0xD000000000000010;
        v66 = 0x800000022EE48A60;
        v20 = sub_22EE3CB14();
        if (v2)
        {
          return (*(v6 + 8))(v18, v5);
        }

        v62 = v6;
        v63 = v5;
        result = (*(*v1 + 208))(v20);
        v21 = result;
        v22 = result[2];
        if (v22)
        {
          v23 = 0;
          v24 = result + 7;
          while (v23 < v21[2])
          {
            ++v23;
            v25 = *(v24 - 24);
            v26 = 0x636F725074736F70;
            if (v25 != 6)
            {
              v26 = 0x6C61746F74;
            }

            v27 = 0xEB00000000737365;
            if (v25 != 6)
            {
              v27 = 0xE500000000000000;
            }

            v28 = 0x6E776F6472616574;
            if (v25 == 4)
            {
              v28 = 0x6E6964726F636572;
            }

            v29 = 0xE900000000000067;
            if (v25 != 4)
            {
              v29 = 0xE800000000000000;
            }

            if (*(v24 - 24) <= 5u)
            {
              v26 = v28;
              v27 = v29;
            }

            v30 = 0x676E697472617473;
            if (v25 == 2)
            {
              v30 = 0x54676E6974696177;
            }

            v31 = 0xEE0074726174536FLL;
            if (v25 != 2)
            {
              v31 = 0xE800000000000000;
            }

            v32 = 0x6C616974696E69;
            if (*(v24 - 24))
            {
              v32 = 0x7075746573;
            }

            v33 = 0xE700000000000000;
            if (*(v24 - 24))
            {
              v33 = 0xE500000000000000;
            }

            if (*(v24 - 24) <= 1u)
            {
              v30 = v32;
              v31 = v33;
            }

            if (*(v24 - 24) <= 3u)
            {
              v34 = v30;
            }

            else
            {
              v34 = v26;
            }

            if (*(v24 - 24) <= 3u)
            {
              v35 = v31;
            }

            else
            {
              v35 = v27;
            }

            sub_22EDF28D4(v34, v35, *(v24 - 2), *(v24 - 1), v102, *v24);

            v24 += 4;
            if (v22 == v23)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
          goto LABEL_81;
        }

LABEL_44:

        result = (*(*v3 + 232))(v36);
        v64 = result;
        if (result[2])
        {
          v37 = result[2];
          v38 = 0;
          v39 = v64 + 8;
          while (v38 < v64[2])
          {
            v40 = *(v39 - 3);
            v41 = *(v39 - 2);
            v42 = *(v39 - 1);
            v43 = *v39;
            ++v38;
            v44 = *(v39 - 32);
            v45 = 0x636F725074736F70;
            if (v44 != 6)
            {
              v45 = 0x6C61746F74;
            }

            v46 = 0xEB00000000737365;
            if (v44 != 6)
            {
              v46 = 0xE500000000000000;
            }

            v47 = 0x6E776F6472616574;
            if (v44 == 4)
            {
              v47 = 0x6E6964726F636572;
            }

            v48 = 0xE900000000000067;
            if (v44 != 4)
            {
              v48 = 0xE800000000000000;
            }

            if (*(v39 - 32) <= 5u)
            {
              v45 = v47;
              v46 = v48;
            }

            v49 = 0x676E697472617473;
            if (v44 == 2)
            {
              v49 = 0x54676E6974696177;
            }

            v50 = 0xEE0074726174536FLL;
            if (v44 != 2)
            {
              v50 = 0xE800000000000000;
            }

            v51 = 0x6C616974696E69;
            if (*(v39 - 32))
            {
              v51 = 0x7075746573;
            }

            v52 = 0xE700000000000000;
            if (*(v39 - 32))
            {
              v52 = 0xE500000000000000;
            }

            if (*(v39 - 32) <= 1u)
            {
              v49 = v51;
              v50 = v52;
            }

            if (*(v39 - 32) <= 3u)
            {
              v53 = v49;
            }

            else
            {
              v53 = v45;
            }

            if (*(v39 - 32) <= 3u)
            {
              v54 = v50;
            }

            else
            {
              v54 = v46;
            }

            v55 = v53;
            v56 = v102;
            sub_22EDF2B5C(v55, v54, v40, v41, v102, v42, v43);

            v39 += 5;
            if (v37 == v38)
            {
              goto LABEL_76;
            }
          }

LABEL_81:
          __break(1u);
          return result;
        }

        v56 = v102;
LABEL_76:

        v58 = (*(*v3 + 368))(v57);
        if (v58)
        {
          v59 = v58;
          v65 = v58;
          v60 = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
          sub_22EE3C164();
          v65 = 0x726F727265;
          v66 = 0xE500000000000000;
          v61 = v63;
          sub_22EE3CB04();

          return (*(v62 + 8))(v56, v61);
        }

        else
        {
          return (*(v62 + 8))(v56, v63);
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EDF28D4(uint64_t a1, unint64_t a2, double a3, double a4, uint64_t a5, unint64_t a6)
{

  MEMORY[0x2318F58F0](0x73646E6F636553, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953B8, qword_22EE41700);
  sub_22EE3CB24();

  if (!v6)
  {

    MEMORY[0x2318F58F0](0x6E6F636553555043, 0xEA00000000007364);
    sub_22EE3CB24();

    MEMORY[0x2318F58F0](0x7463757274736E49, 0xEC000000736E6F69);
    sub_22EE3CB54();

    MEMORY[0x2318F58F0](0x6563726550555043, 0xEA0000000000746ELL);
    sub_22EE3CB24();

    sub_22EE3C864();

    MEMORY[0x2318F58F0](0xD000000000000015, 0x800000022EE48A80);
    sub_22EE3CB24();
  }

  return result;
}

uint64_t sub_22EDF2B5C(uint64_t result, unint64_t a2, double a3, double a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = *(a7 + 16);
  if (v9)
  {
    v11 = a7 + 48;
    while (1)
    {
      v18 = v9;
      v12 = *(v11 - 16);
      v13 = *(v11 - 8);
      v14 = result;

      MEMORY[0x2318F58F0](v12, v13);
      MEMORY[0x2318F58F0](0x6F63655372655073, 0xEA0000000000646ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953B8, qword_22EE41700);
      sub_22EE3CB24();

      if (v8)
      {
        break;
      }

      sub_22EE3C864();

      MEMORY[0x2318F58F0](0x6E6F636553555043, 0xED00007265507364);
      MEMORY[0x2318F58F0](v12, v13);
      sub_22EE3CB24();

      sub_22EE3C864();

      v15 = a2;
      v16 = v14;
      v17 = v15;

      MEMORY[0x2318F58F0](0x7463757274736E49, 0xEF726550736E6F69);
      MEMORY[0x2318F58F0](v12, v13);

      sub_22EE3CB24();

      v11 += 24;
      v9 = v18 - 1;
      result = v16;
      a2 = v17;
      if (v18 == 1)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_22EDF2DE0()
{
  v1 = *(v0 + 240);
  v8[10] = *(v0 + 224);
  v8[11] = v1;
  v8[12] = *(v0 + 256);
  v9 = *(v0 + 272);
  v2 = *(v0 + 176);
  v8[6] = *(v0 + 160);
  v8[7] = v2;
  v3 = *(v0 + 208);
  v8[8] = *(v0 + 192);
  v8[9] = v3;
  v4 = *(v0 + 112);
  v8[2] = *(v0 + 96);
  v8[3] = v4;
  v5 = *(v0 + 144);
  v8[4] = *(v0 + 128);
  v8[5] = v5;
  v6 = *(v0 + 80);
  v8[0] = *(v0 + 64);
  v8[1] = v6;
  sub_22EDF40D4(v8);

  return swift_deallocClassInstance();
}

uint64_t sub_22EDF2E6C()
{
  v0 = swift_allocObject();
  sub_22EDF2EA4();
  return v0;
}

uint64_t sub_22EDF2EA4()
{
  *(v0 + 16) = sub_22ED8260C();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_22ED8260C();
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_22EDF403C(v13);
  v5 = v13[11];
  *(v0 + 224) = v13[10];
  *(v0 + 240) = v5;
  *(v0 + 256) = v13[12];
  *(v0 + 272) = v14;
  v6 = v13[7];
  *(v0 + 160) = v13[6];
  *(v0 + 176) = v6;
  v7 = v13[9];
  *(v0 + 192) = v13[8];
  *(v0 + 208) = v7;
  v8 = v13[3];
  *(v0 + 96) = v13[2];
  *(v0 + 112) = v8;
  v9 = v13[5];
  *(v0 + 128) = v13[4];
  *(v0 + 144) = v9;
  v10 = v13[1];
  *(v0 + 64) = v13[0];
  *(v0 + 80) = v10;
  v11 = MEMORY[0x277D84F90];
  *(v0 + 280) = MEMORY[0x277D84F90];
  *(v0 + 288) = v11;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 1;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 352) = 2;
  *(v0 + 376) = 0;
  *(v0 + 384) = xmmword_22EE416B0;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  return v0;
}

Swift::String __swiftcall String.init(intValue:)(Swift::Int intValue)
{
  v1 = sub_22EE3CB84();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22EDF3058()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22EDF3088@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22EDF3090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22EE3CB84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22EDF3118(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EDF3E20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EDF3208(v5);
  *a1 = v2;
  return result;
}

void *sub_22EDF3184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_22EDF3208(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EE3CB64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EE3C404();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EDF33D0(v7, v8, a1, v4);
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
    return sub_22EDF3300(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EDF3300(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22EE3CBA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22EDF33D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22EDF39AC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22EE3CBA4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22EE3CBA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE1A00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22EDE1A00((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22EDF39AC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EDE2794(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22EDE2708(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22EE3CBA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
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
  return result;
}