char *sub_25AE8E408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC08, &qword_25AEA4BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AE8E514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E880, &qword_25AEA70A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25AE8E620(uint64_t a1, uint64_t a2)
{
  v2 = sub_25AEA2798();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25AE8E698@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v3 = sub_25AEA1238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E888, &qword_25AEA7130);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = v29 - v10;
  v11 = [objc_opt_self() currentDevice];
  [v11 userInterfaceIdiom];

  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v12 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v13 = qword_27FA22788;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v12 = 0;
  }

  v14 = v12;
  v15 = sub_25AEA0CC8();
  v17 = v16;

  v36 = v15;
  v37 = v17;
  v18 = sub_25AEA2278();
  v29[2] = v19;
  v29[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25AEA3540;
  sub_25AEA1208();
  v36 = v20;
  sub_25AE643C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80, MEMORY[0x277D83970]);
  sub_25AEA2578();
  sub_25AEA1F38();
  v21 = (*(v4 + 8))(v6, v3);
  v29[1] = v29;
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E890, &qword_25AEA7138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF28, &qword_25AEA54E0);
  sub_25AE47F60(&qword_27FA1E898, &qword_27FA1E890, &qword_25AEA7138, MEMORY[0x277CE76B0]);
  sub_25AE47F60(&qword_27FA1DF30, &qword_27FA1DF28, &qword_25AEA54E0, &unk_25AEA5628);
  v23 = v30;
  v24 = sub_25AEA11F8();
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8A0, &qword_25AEA7140);
  sub_25AE47F60(&qword_27FA1E8A8, &qword_27FA1E888, &qword_25AEA7130, MEMORY[0x277CE7668]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E8B0, &qword_25AEA7148);
  v26 = sub_25AE47F60(&qword_27FA1E8B8, &qword_27FA1E8B0, &qword_25AEA7148, MEMORY[0x277CDD7A8]);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_25AEA1D28();
  return (*(v32 + 8))(v23, v27);
}

uint64_t sub_25AE8ED40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8C0, &qword_25AEA7180);
  sub_25AE47F60(&qword_27FA1E8C8, &qword_27FA1E8C0, &qword_25AEA7180, MEMORY[0x277CE14C0]);

  return sub_25AEA1268();
}

uint64_t sub_25AE8EDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AEA1958();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10 & 1;
  *(a3 + 40) = v12;
  *(a3 + 48) = 0;
  *(a3 + 56) = sub_25AE4700C;
  *(a3 + 64) = v13;
}

uint64_t sub_25AE8EEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AEA1A28();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8B0, &qword_25AEA7148);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_25AEA1A18();
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080, MEMORY[0x277CDF028]);
  sub_25AEA1618();
  v9 = sub_25AE47F60(&qword_27FA1E8B8, &qword_27FA1E8B0, &qword_25AEA7148, MEMORY[0x277CDD7A8]);
  MEMORY[0x25F859550](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25AE8F0AC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_25AEA1EB8();
}

uint64_t sub_25AE8F154@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE8F234@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v1 = sub_25AEA1258();
  v48 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v48 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v48 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v48 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v48 - v12;
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  [v14 userInterfaceIdiom];

  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v15 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v16 = qword_27FA22788;
    v17 = qword_27FA22788;
  }

  else
  {
    v17 = [objc_opt_self() mainBundle];
    v16 = 0;
  }

  v18 = v16;
  v19 = sub_25AEA0CC8();
  v21 = v20;

  v56 = v19;
  v57 = v21;
  sub_25AEA2278();
  v22 = objc_opt_self();
  v23 = [v22 systemBlueColor];
  sub_25AEA1D68();
  sub_25AEA1248();
  v24 = v18;
  if (!v15)
  {
    v24 = [objc_opt_self() mainBundle];
  }

  v25 = v18;
  v26 = sub_25AEA0CC8();
  v28 = v27;

  v56 = v26;
  v57 = v28;
  sub_25AEA2278();
  v29 = [v22 systemBlueColor];
  sub_25AEA1D68();
  sub_25AEA1248();
  v30 = [v13 currentDevice];
  v31 = [v30 userInterfaceIdiom];

  if (v31 == 1)
  {
    v32 = v25;
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v32 = v25;
  if (!v15)
  {
LABEL_10:
    v32 = [objc_opt_self() mainBundle];
  }

LABEL_11:
  v33 = v25;
  v34 = sub_25AEA0CC8();
  v36 = v35;

  v56 = v34;
  v57 = v36;
  sub_25AEA2278();
  v37 = [v22 systemBlueColor];
  sub_25AEA1D68();
  v38 = v49;
  sub_25AEA1248();
  v39 = v48;
  v40 = *(v48 + 16);
  v41 = v50;
  v40(v50, v54, v1);
  v42 = v51;
  v40(v51, v55, v1);
  v43 = v52;
  v40(v52, v38, v1);
  v44 = v53;
  v40(v53, v41, v1);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8D0, &qword_25AEA7188);
  v40(&v44[*(v45 + 48)], v42, v1);
  v40(&v44[*(v45 + 64)], v43, v1);
  v46 = *(v39 + 8);
  v46(v38, v1);
  v46(v55, v1);
  v46(v54, v1);
  v46(v43, v1);
  v46(v42, v1);
  return (v46)(v41, v1);
}

uint64_t sub_25AE8F928@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = 2;
  a1[1] = sub_25AE8F9E4;
  a1[2] = v5;
}

uint64_t sub_25AE8F9AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE8F9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA1838();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE8FA1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA1838();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE8FA4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E888, &qword_25AEA7130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E8A0, &qword_25AEA7140);
  sub_25AE47F60(&qword_27FA1E8A8, &qword_27FA1E888, &qword_25AEA7130, MEMORY[0x277CE7668]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E8B0, &qword_25AEA7148);
  sub_25AE47F60(&qword_27FA1E8B8, &qword_27FA1E8B0, &qword_25AEA7148, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for AudioEnrollmentProgress(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
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

_WORD *storeEnumTagSinglePayload for AudioEnrollmentProgress(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_25AE8FCE0(char a1)
{
  if (byte_286C3CBB0 == a1)
  {
    v1 = 1u;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  if (byte_286C3CBB1 == a1)
  {
    v1 = 2u;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  if (byte_286C3CBB2 == a1)
  {
    v1 = 3u;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  if (byte_286C3CBB3 == a1)
  {
    v1 = 0;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  return 0;
}

uint64_t sub_25AE8FD5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE8FFF4(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioEnrollmentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioEnrollmentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25AE8FEE0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25AE8FEF4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_25AE8FF28()
{
  result = qword_27FA1E8D8;
  if (!qword_27FA1E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DD80, "xp");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E8D8);
  }

  return result;
}

BOOL sub_25AE8FFA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_25AE8FFF4(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_25AE90034()
{
  result = qword_27FA1E8E0;
  if (!qword_27FA1E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E8E0);
  }

  return result;
}

id sub_25AE90094(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v16 = a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_25AEA21D8();
  v8 = v7;
  v9 = objc_opt_self();
  v10 = sub_25AEA2178();
  v11 = *(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  v12 = [v9 entityForName:v10 inManagedObjectContext:{v11, v16}];

  if (v12)
  {

    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntity:v12 insertIntoManagedObjectContext:v11];
  }

  else
  {
    sub_25AEA2688();

    MEMORY[0x25F859D40](v6, v8);

    v13 = 0xD000000000000018;
    sub_25AE426AC();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 0xD000000000000018;
    *(v14 + 16) = 0x800000025AEA9FF0;
    swift_willThrow();
  }

  return v13;
}

uint64_t NREnrolledName.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NREnrolledName.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NREnrolledName.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NREnrolledName.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void NREnrolledName.init(nameConfig:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25AEA0E48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = [a1 identifier];
  if (v14)
  {
    v15 = v14;
    sub_25AEA0E28();

    (*(v5 + 56))(v11, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
  }

  sub_25AE62AE0(v11, v13);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_25AE626EC(v13);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_25AE626EC(v13);
    v16 = sub_25AEA0E08();
    v17 = v18;
    (*(v5 + 8))(v7, v4);
  }

  v19 = [a1 humanReadableName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_25AEA21A8();
    v23 = v22;
  }

  else
  {

    v21 = 0;
    v23 = 0xE000000000000000;
  }

  *a2 = v16;
  a2[1] = v17;
  a2[2] = v21;
  a2[3] = v23;
}

uint64_t static NREnrolledName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AEA2828(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AEA2828();
    }
  }

  return result;
}

uint64_t sub_25AE9064C()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_25AE90684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_25AEA2828() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AEA2828();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25AE90774(uint64_t a1)
{
  v2 = sub_25AE90980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE907B0(uint64_t a1)
{
  v2 = sub_25AE90980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NREnrolledName.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8F0, &qword_25AEA73D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE90980();
  sub_25AEA28F8();
  v12 = 0;
  v8 = v10[3];
  sub_25AEA27D8();
  if (!v8)
  {
    v11 = 1;
    sub_25AEA27D8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25AE90980()
{
  result = qword_27FA1E8F8;
  if (!qword_27FA1E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E8F8);
  }

  return result;
}

uint64_t NREnrolledName.hash(into:)(uint64_t a1)
{
  sub_25AEA21F8();

  return sub_25AEA21F8();
}

uint64_t NREnrolledName.hashValue.getter()
{
  sub_25AEA28B8();
  sub_25AEA21F8();
  sub_25AEA21F8();
  return sub_25AEA28D8();
}

uint64_t NREnrolledName.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E900, &qword_25AEA73D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE90980();
  sub_25AEA28E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_25AEA27B8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_25AEA27B8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25AE90C8C()
{
  sub_25AEA28B8();
  sub_25AEA21F8();
  sub_25AEA21F8();
  return sub_25AEA28D8();
}

uint64_t sub_25AE90CF4(uint64_t a1)
{
  sub_25AEA21F8();

  return sub_25AEA21F8();
}

uint64_t sub_25AE90D44(uint64_t a1)
{
  sub_25AEA28B8();
  sub_25AEA21F8();
  sub_25AEA21F8();
  return sub_25AEA28D8();
}

uint64_t sub_25AE90DD8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AEA2828(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AEA2828();
    }
  }

  return result;
}

uint64_t sub_25AE90E7C()
{
  type metadata accessor for EnrollmentStore(0);
  swift_allocObject();
  result = sub_25AE916BC();
  qword_27FA1E8E8 = result;
  return result;
}

uint64_t static EnrollmentStore.shared.getter()
{
  if (qword_27FA1D280 != -1)
  {
    swift_once();
  }
}

uint64_t EnrollmentStore.isStoreReady.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE90F94@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE91018(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t EnrollmentStore.isStoreReady.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

void (*EnrollmentStore.isStoreReady.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE864A8;
}

uint64_t EnrollmentStore.$isStoreReady.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE91218(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE91290(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t EnrollmentStore.$isStoreReady.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*EnrollmentStore.$isStoreReady.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE5522C;
}

uint64_t sub_25AE916BC()
{
  v1 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v29 = *(v27 - 8);
  v2 = MEMORY[0x28223BE20](v27);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E968, &qword_25AEA76C8);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v30 = 0;
  sub_25AEA1438();
  (*(v11 + 32))(v1 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database;
  *(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database) = 0;
  type metadata accessor for CoreDataDatabaseService(0);
  swift_allocObject();
  v16 = sub_25AE483B4();
  v24 = v14;
  v25 = v7;
  v26 = v4;
  *(v1 + v15) = v16;

  if (*(v1 + v15))
  {
    swift_beginAccess();

    sub_25AEA1448();
    swift_endAccess();

    sub_25AE47F60(&qword_27FA1E970, &qword_27FA1DA38, &qword_25AEA4748, MEMORY[0x277CBCEC8]);
    v17 = v9;
    v18 = v27;
    sub_25AEA14A8();
    v19 = v29;
    v23 = *(v29 + 8);
    v23(v6, v18);
    swift_beginAccess();
    sub_25AEA1448();
    swift_endAccess();
    sub_25AE47F60(&qword_27FA1E978, &qword_27FA1E968, &qword_25AEA76C8, MEMORY[0x277CBCBE0]);
    v20 = v25;
    sub_25AEA14D8();
    (*(v28 + 8))(v17, v20);
    (*(v19 + 16))(v26, v6, v18);
    swift_beginAccess();
    sub_25AEA1458();
    swift_endAccess();
    v23(v6, v18);
  }

  return v1;
}

char *sub_25AE91B6C()
{
  v2 = sub_25AEA0E48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = EnrollmentStore.fetchNameConfigurations()();
  if (v0)
  {
    return v1;
  }

  v13 = v12;
  v34 = 0;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v14 = sub_25AEA25B8();
  if (!v14)
  {
LABEL_23:

    return MEMORY[0x277D84F90];
  }

LABEL_4:
  v37 = v5;
  v46 = MEMORY[0x277D84F90];
  result = sub_25AE8E108(0, v14 & ~(v14 >> 63), 0);
  v44 = v14;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v1 = v46;
    v39 = (v3 + 56);
    v40 = v13 & 0xC000000000000001;
    v38 = (v3 + 48);
    v35 = (v3 + 8);
    v36 = (v3 + 16);
    v42 = v11;
    v43 = v9;
    v41 = v13;
    do
    {
      if (v40)
      {
        v17 = MEMORY[0x25F85A1C0](v16, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 identifier];
      if (v19)
      {
        v20 = v19;
        sub_25AEA0E28();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      (*v39)(v9, v21, 1, v2);
      sub_25AE62AE0(v9, v11);
      if ((*v38)(v11, 1, v2))
      {
        sub_25AE626EC(v11);
        v45 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v23 = v37;
        (*v36)(v37, v11, v2);
        sub_25AE626EC(v11);
        v45 = sub_25AEA0E08();
        v22 = v24;
        (*v35)(v23, v2);
      }

      v25 = v2;
      v26 = [v18 humanReadableName];
      if (v26)
      {
        v27 = v26;
        v28 = sub_25AEA21A8();
        v30 = v29;
      }

      else
      {

        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v46 = v1;
      v32 = *(v1 + 16);
      v31 = *(v1 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25AE8E108((v31 > 1), v32 + 1, 1);
        v1 = v46;
      }

      ++v16;
      *(v1 + 16) = v32 + 1;
      v33 = (v1 + 32 * v32);
      v33[4] = v45;
      v33[5] = v22;
      v33[6] = v28;
      v33[7] = v30;
      v9 = v43;
      v2 = v25;
      v13 = v41;
      v11 = v42;
    }

    while (v44 != v16);

    return v1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnrollmentStore.deleteAllNames()()
{
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1478(&v2);

    if (v2 == 1)
    {
      sub_25AE49500();

      return;
    }
  }

  sub_25AE426AC();
  swift_allocError();
  *v1 = 4;
  *(v1 + 8) = 0xD000000000000023;
  *(v1 + 16) = 0x800000025AEA9F50;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnrollmentStore.deleteName(withIdentifier:)(Swift::String withIdentifier)
{
  v3 = *(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v3)
  {
    goto LABEL_6;
  }

  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  object = withIdentifier._object;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(&v9);

  if (v9 != 1)
  {

LABEL_6:
    sub_25AE426AC();
    swift_allocError();
    *v7 = 4;
    *(v7 + 8) = 0xD000000000000023;
    *(v7 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return;
  }

  v6 = sub_25AE48F1C(countAndFlagsBits, object);
  if (v2)
  {
  }

  else
  {
    v8 = v6;
    [*(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) deleteObject_];
    sub_25AE493E4();
  }
}

void EnrollmentStore.add(nameConfig:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v3)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(&v8);

  if (v8 != 1)
  {

LABEL_6:
    sub_25AE426AC();
    swift_allocError();
    *v6 = 4;
    *(v6 + 8) = 0xD000000000000023;
    *(v6 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return;
  }

  sub_25AE922F0(a1);
  if (v2)
  {
  }

  else
  {
    v7 = v5;
    [*(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) insertObject_];
    sub_25AE493E4();
  }
}

void sub_25AE922F0(uint64_t a1)
{
  v44 = type metadata accessor for NRCollectedEnrollment(0);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database;
  v43 = v1;
  if (*(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {

    v13 = sub_25AE90094(type metadata accessor for NameConfiguration, &qword_27FA1E960, &qword_25AEA76C0);

    if (!v2)
    {
      sub_25AE6884C(a1, v11);
      v14 = sub_25AEA0E48();
      v15 = *(v14 - 8);
      v16 = *(v15 + 48);
      v40 = v15 + 48;
      v41 = v14;
      v39 = v16;
      v17 = 0;
      if ((v16)(v11, 1) != 1)
      {
        v17 = sub_25AEA0E18();
        (*(v15 + 8))(v11, v41);
      }

      [v13 setIdentifier_];

      v18 = type metadata accessor for NRNameConfiguration(0);
      if (*(a1 + v18[5] + 8))
      {
        v19 = sub_25AEA2178();
      }

      else
      {
        v19 = 0;
      }

      [v13 setHumanReadableName_];

      if (*(a1 + v18[6] + 8))
      {
        v21 = sub_25AEA2178();
      }

      else
      {
        v21 = 0;
      }

      [v13 setLocaleIdentifier_];

      v46 = MEMORY[0x277D84FA0];
      v22 = *(a1 + v18[7]);
      if (v22)
      {
        v37 = *(v22 + 16);
        if (v37)
        {
          v38 = v13;
          v23 = 0;
          v36 = (v15 + 8);
          while (v23 < *(v22 + 16))
          {
            sub_25AE6301C(v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v23, v5);
            if (!*(v43 + v12))
            {

              sub_25AE426AC();
              swift_allocError();
              *v32 = 4;
              *(v32 + 8) = 0xD000000000000023;
              *(v32 + 16) = 0x800000025AEA9F50;
              swift_willThrow();

              sub_25AE62F6C(v5);
              return;
            }

            v25 = sub_25AE90094(type metadata accessor for CollectedEnrollment, &qword_27FA1E958, &qword_25AEA76B8);
            v26 = v12;

            sub_25AE6884C(v5, v9);
            v27 = v41;
            if (v39(v9, 1, v41) == 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = sub_25AEA0E18();
              (*v36)(v9, v27);
            }

            [v25 setIdentifier_];

            v12 = v26;
            if (*&v5[*(v44 + 20) + 8])
            {
              v29 = sub_25AEA2178();
            }

            else
            {
              v29 = 0;
            }

            [v25 setAudioSourceRawValue_];

            if (*&v5[*(v44 + 24) + 8] >> 60 == 15)
            {
              v24 = 0;
            }

            else
            {
              v24 = sub_25AEA0DD8();
            }

            ++v23;
            [v25 setAudioData_];

            [v25 setNameConfiguration_];
            sub_25AE9CF60(&v45, v25);

            sub_25AE62F6C(v5);
            if (v37 == v23)
            {
              v31 = v46;
              v13 = v38;
              goto LABEL_32;
            }
          }

          __break(1u);
        }

        else
        {
          v31 = MEMORY[0x277D84FA0];
LABEL_32:
          sub_25AE92B18(v31);

          v33 = objc_allocWithZone(MEMORY[0x277CBEB98]);
          v34 = sub_25AEA23E8();

          v35 = [v33 initWithSet_];

          [v13 setCollectedEnrollments_];
        }
      }

      else
      {
        sub_25AE426AC();
        swift_allocError();
        *v30 = 4;
        *(v30 + 8) = 0xD000000000000021;
        *(v30 + 16) = 0x800000025AEA9FC0;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_25AE426AC();
    swift_allocError();
    *v20 = 4;
    *(v20 + 8) = 0xD000000000000023;
    *(v20 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
  }
}

uint64_t EnrollmentStore.fetchNameConfigurations()()
{
  if (!*(v0 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {
    goto LABEL_5;
  }

  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(&v8);

  if (v8 != 1)
  {

LABEL_5:
    sub_25AE426AC();
    swift_allocError();
    *v6 = 4;
    *(v6 + 8) = 0xD000000000000023;
    *(v6 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return v2;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_25AEA2178();
  v5 = [v3 initWithEntityName_];

  type metadata accessor for NameConfiguration();
  v2 = sub_25AEA24E8();

  return v2;
}

uint64_t sub_25AE92B18(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_25AEA25B8())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E948, &qword_25AEA76B0);
  v3 = sub_25AEA2658();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_25AEA25A8();
  type metadata accessor for CollectedEnrollment();
  sub_25AE93258();
  result = sub_25AEA2418();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_25AEA25D8();
    if (!v16)
    {
LABEL_34:
      sub_25AE932B0(v1);

      return v3;
    }

    *&v27 = v16;
    type metadata accessor for CollectedEnrollment();
    swift_dynamicCast();
LABEL_25:
    type metadata accessor for CollectedEnrollment();
    swift_dynamicCast();
    result = sub_25AEA25E8();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t EnrollmentStore.deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t EnrollmentStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_25AE92F80()
{
  result = qword_27FA1E918;
  if (!qword_27FA1E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E918);
  }

  return result;
}

uint64_t sub_25AE92FD4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for EnrollmentStore(uint64_t a1)
{
  result = qword_27FA1E920;
  if (!qword_27FA1E920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE93090(uint64_t a1)
{
  sub_25AE49B94();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_25AE93154()
{
  result = qword_27FA1E930;
  if (!qword_27FA1E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E930);
  }

  return result;
}

unint64_t sub_25AE931AC()
{
  result = qword_27FA1E938;
  if (!qword_27FA1E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E938);
  }

  return result;
}

unint64_t sub_25AE93204()
{
  result = qword_27FA1E940;
  if (!qword_27FA1E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E940);
  }

  return result;
}

unint64_t sub_25AE93258()
{
  result = qword_27FA1E950;
  if (!qword_27FA1E950)
  {
    type metadata accessor for CollectedEnrollment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E950);
  }

  return result;
}

void sub_25AE932B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25AE93330(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25AE93374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25AE479E0(a3, v22 - v9, &qword_27FA1E9B0, &qword_25AEA5C40);
  v11 = sub_25AEA2388();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25AE41938(v10, &qword_27FA1E9B0, &qword_25AEA5C40);
  }

  else
  {
    sub_25AEA2378();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25AEA2348();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25AEA21E8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_25AE93620()
{
  result = [objc_allocWithZone(type metadata accessor for NameTriggerController()) init];
  qword_27FA1E980 = result;
  return result;
}

id static NameTriggerController.shared.getter()
{
  if (qword_27FA1D288 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA1E980;

  return v1;
}

char *sub_25AE936AC()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager] = 0;
  v2 = &v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState] = 0;
  *&v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownTimer] = 0;
  *&v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownInterval] = 0x4014000000000000;
  v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent] = 0;
  v3 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_lastModifiedUserConfigDate;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  if (qword_27FA1D280 != -1)
  {
    swift_once();
  }

  *&v1[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store] = qword_27FA1E8E8;
  type metadata accessor for NotificationManager();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager] = sub_25AE3E25C();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NameTriggerController();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager;
  v6 = *(*&v4[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager] + 16);
  v7 = v4;
  [v6 setDelegate_];
  [*(*&v4[v5] + 16) setWantsNotificationResponsesDelivered];

  return v7;
}

void sub_25AE93850()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager) + 16);
  v10 = sub_25AE3F1F8;
  v11 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE932B8;
  v9 = &block_descriptor_7;
  v3 = _Block_copy(aBlock);

  [v2 requestAuthorizationWithOptions:32 completionHandler:v3];
  _Block_release(v3);

  sub_25AE945B0();
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState) != 3)
  {
    sub_25AE943EC();
    sub_25AE81178(aBlock, v7);
    v4 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
    swift_beginAccess();
    sub_25AE9466C(v7, v1 + v4);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_0(aBlock, v9);
    sub_25AEA1078();

    v5 = *(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v5)
    {
      v6 = v5;
      sub_25AE502C8();
    }

    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE93A74()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
  swift_beginAccess();
  sub_25AE479E0(v1 + v2, (v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
  if (v0[5])
  {
    sub_25AE81178((v0 + 2), (v0 + 7));
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_25AE93C0C;

    return MEMORY[0x2821E1330](v3, v4);
  }

  else
  {
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v6 = v0[15];
    v7 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager;
    v8 = *(v6 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v8)
    {
      v9 = v8;
      sub_25AE504C4();

      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25AE93C0C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25AE93DB8;
  }

  else
  {
    v2 = sub_25AE93D20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AE93D20()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager;
  v3 = *(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
  if (v3)
  {
    v4 = v3;
    sub_25AE504C4();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_25AE93DB8()
{
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25AE93E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if (*(v2 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState) == 3)
  {
    v8 = sub_25AEA2388();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v2;
    v10 = v2;
    sub_25AE82E98(0, 0, v7, a2, v9);
  }

  return result;
}

uint64_t sub_25AE93F80()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
  swift_beginAccess();
  sub_25AE479E0(v1 + v2, (v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
  if (v0[5])
  {
    sub_25AE81178((v0 + 2), (v0 + 7));
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_25AE9410C;

    return MEMORY[0x2821E1330](v3, v4);
  }

  else
  {
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v6 = *(v0[15] + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v6)
    {
      v7 = v6;
      sub_25AE506C0();
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25AE9410C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25AE97368;
  }

  else
  {
    v2 = sub_25AE94220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AE94220()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = *(v0[15] + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
  if (v1)
  {
    v2 = v1;
    sub_25AE506C0();
  }

  v3 = v0[1];

  return v3();
}

void sub_25AE942A4()
{
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState) != 3)
  {
    v1 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
    swift_beginAccess();
    sub_25AE479E0(v0 + v1, v5, &qword_27FA1E9A0, &unk_25AEA76E0);
    if (v6)
    {
      sub_25AE81178(v5, v4);
      sub_25AE41938(v5, &qword_27FA1E9A0, &unk_25AEA76E0);
      __swift_project_boxed_opaque_existential_0(v4, v4[3]);
      sub_25AEA1078();

      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else
    {
      sub_25AE41938(v5, &qword_27FA1E9A0, &unk_25AEA76E0);
    }

    v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v2)
    {
      v3 = v2;
      sub_25AE50794();
    }
  }
}

unint64_t sub_25AE943EC()
{
  v1 = sub_25AEA10E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = EnrollmentStore.fetchNameConfigurations()();
  if (!v0)
  {
    sub_25AE43A48(result, v4);
    v8[1] = 0;
    sub_25AEA1138();
    sub_25AEA1128();
    sub_25AEA1118();
    sub_25AEA1198();
    sub_25AE97308(&qword_27FA1EA68, v6, type metadata accessor for NameTriggerController, &protocol conformance descriptor for NameTriggerController);
    sub_25AE97308(&unk_27FA1EA70, v7, type metadata accessor for NameTriggerController, &protocol conformance descriptor for NameTriggerController);
    sub_25AEA1188();
    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_25AE945B0()
{
  v1 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager;
  if (!*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager))
  {
    v2 = [objc_allocWithZone(type metadata accessor for AudioManager(0)) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      *&v4[OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate + 8] = &off_286C3F350;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_25AE9466C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9A0, &unk_25AEA76E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE946E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE47200;

  return sub_25AE93A54(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE947D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE93F60(a1, v4, v5, v6);
}

id NameTriggerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NameTriggerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AE9497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = sub_25AEA1028();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE94A40, 0, 0);
}

uint64_t sub_25AE94A40()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  sub_25AEA1018();
  v3 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
  swift_beginAccess();
  sub_25AE479E0(v1 + v3, v0 + 16, &qword_27FA1E9A0, &unk_25AEA76E0);
  if (*(v0 + 40))
  {
    sub_25AE81178(v0 + 16, v0 + 56);
    sub_25AE41938(v0 + 16, &qword_27FA1E9A0, &unk_25AEA76E0);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), v4);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_25AE94BEC;
    v7 = *(v0 + 160);

    return MEMORY[0x2821E1340](v7, v4, v5);
  }

  else
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_25AE41938(v0 + 16, &qword_27FA1E9A0, &unk_25AEA76E0);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_25AE94BEC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_25AE94D84;
  }

  else
  {
    v2 = sub_25AE94D00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AE94D00()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25AE94D84()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25AE94E0C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_25AEA2388();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;
  v10 = a1;
  v11 = v2;
  sub_25AE93374(0, 0, v7, &unk_25AEA77D8, v9);
}

uint64_t NameTriggerController.didDetectName(event:)(uint64_t a1)
{
  v3 = sub_25AEA20C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25AEA20E8();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent) = 1;
    sub_25AE604A0();
    v12 = sub_25AEA24C8();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_25AE96BA8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25AE93330;
    aBlock[3] = &block_descriptor_14;
    v15 = _Block_copy(aBlock);

    sub_25AEA20D8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25AE97308(&qword_27FA1D908, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
    sub_25AE96BB0();
    sub_25AEA2578();
    MEMORY[0x25F859FF0](0, v11, v6, v15);
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_25AE95238(uint64_t a1)
{
  v1 = sub_25AEA0E48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXIsInternalInstall())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_25AEA10A8();
      v7 = sub_25AEA0E08();
      v9 = v8;
      (*(v2 + 8))(v4, v1);
      v10 = sub_25AEA1098();
      sub_25AE95404(v7, v9, v10);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_25AEA10A8();
      v13 = sub_25AEA0E08();
      v15 = v14;
      (*(v2 + 8))(v4, v1);
      sub_25AE95404(v13, v15, 0);
    }
  }
}

void sub_25AE95404(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!*(*(v3 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store) + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(aBlock);

  if (LOBYTE(aBlock[0]) != 1)
  {

LABEL_5:
    sub_25AE426AC();
    v8 = swift_allocError();
    *v9 = 4;
    *(v9 + 8) = 0xD000000000000023;
    *(v9 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
LABEL_6:
    NRLogError(_:additionalMessage:)(v8, 0, 0);

    goto LABEL_7;
  }

  v15 = sub_25AE48F1C(a1, a2);

  v16 = [v15 humanReadableName];
  if (!v16)
  {
    sub_25AE426AC();
    v8 = swift_allocError();
    *v27 = 6;
    *(v27 + 8) = 0xD000000000000024;
    *(v27 + 16) = 0x800000025AEAA1C0;
    swift_willThrow();

    goto LABEL_6;
  }

  v17 = v16;
  v18 = sub_25AEA21A8();
  v20 = v19;

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v21 = sub_25AEA12C8();
  __swift_project_value_buffer(v21, qword_27FA1DF50);

  v22 = sub_25AEA12A8();
  v23 = sub_25AEA24A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v28 = v18;
    aBlock[0] = swift_slowAlloc();
    v25 = aBlock[0];
    *v24 = 136315138;
    *(v24 + 4) = sub_25AE65D2C(a1, a2, aBlock);
    _os_log_impl(&dword_25AE3C000, v22, v23, "✅ Match found for id: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    v18 = v28;
    MEMORY[0x25F85AB80](v26, -1, -1);
    MEMORY[0x25F85AB80](v24, -1, -1);
  }

  sub_25AE3E874(v18, v20, a1, a2, a3);

LABEL_7:
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_25AE972F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE95880;
  aBlock[3] = &block_descriptor_51;
  v12 = _Block_copy(aBlock);

  v13 = [v10 scheduledTimerWithTimeInterval:0 repeats:v12 block:5.0];
  _Block_release(v12);
  v14 = *(v4 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownTimer);
  *(v4 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownTimer) = v13;
}

void sub_25AE95828(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent] = 0;
  }
}

void sub_25AE95880(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t NameTriggerController.userNotificationCenter(_:didReceive:withCompletionHandler:)(int a1, id a2, uint64_t (*a3)(uint64_t))
{
  v5 = [a2 actionIdentifier];
  v6 = sub_25AEA21A8();
  v8 = v7;

  v9 = v6 == 0xD000000000000041 && 0x800000025AEA7D20 == v8;
  if (!v9 && (sub_25AEA2828() & 1) == 0)
  {
    if (v6 == 0xD00000000000003DLL && 0x800000025AEA7CB0 == v8)
    {
    }

    else
    {
      v18 = sub_25AEA2828();

      if ((v18 & 1) == 0)
      {
        return a3(v15);
      }
    }

    sub_25AEA2478();
    v19 = MEMORY[0x25F859F80]();
    [v19 setNameRecognitionEnabled_];

    return a3(v15);
  }

  v10 = [a2 notification];
  v11 = [v10 request];

  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = sub_25AEA2138();
  sub_25AE95B14(v14);

  return a3(v15);
}

void sub_25AE95B14(uint64_t a1)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v2 = sub_25AEA0D38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_25AEA0DB8();
  v63 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v64 = 0xD000000000000011;
  v65 = 0x800000025AEA7DB0;
  sub_25AEA2608();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v15 = sub_25AE6F6C8(&v66);
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_25AE418A4(*(a1 + 56) + 32 * v15, v68);
  sub_25AE41798(&v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v17 = v65;
  v61 = v64;
  v64 = 0xD000000000000017;
  v65 = 0x800000025AEA7DD0;
  sub_25AEA2608();
  if (!*(a1 + 16) || (v62 = v17, v18 = sub_25AE6F6C8(&v66), (v19 & 1) == 0))
  {

LABEL_9:
    sub_25AE41798(&v66);
    return;
  }

  sub_25AE418A4(*(a1 + 56) + 32 * v18, v68);
  sub_25AE41798(&v66);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v59 = v64;
  v60 = v65;
  v58 = sub_25AE964B0(v64, v65);
  v64 = 0x7479426F69647561;
  v65 = 0xEA00000000007365;
  sub_25AEA2608();
  if (!*(a1 + 16) || (v20 = sub_25AE6F6C8(&v66), (v21 & 1) == 0))
  {
    sub_25AE41798(&v66);
    goto LABEL_20;
  }

  sub_25AE418A4(*(a1 + 56) + 32 * v20, v68);
  sub_25AE41798(&v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D8, &unk_25AEA7830);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v30 = v58;
LABEL_21:
    sub_25AE6BE70(v61, v62, v59, v60, v30);

    return;
  }

  v22 = *(v64 + 16);
  if (v22 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = sub_25AE96604(v64 + 32, v64 + 32 + 2 * v22);
  v56 = v24;
  v57 = v23;

  if (qword_27FA1D268 != -1)
  {
LABEL_33:
    swift_once();
  }

  v54 = qword_27FA1E0E8;
  v66 = qword_27FA1E0E8;
  v67 = qword_27FA1E0F0;
  v55 = qword_27FA1E0F0;

  MEMORY[0x25F859D40](0xD000000000000016, 0x800000025AEAA1F0);
  v26 = v66;
  v25 = v67;
  (*(v63 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
  v27 = v25;

  v53 = v26;
  sub_25AEA0DA8();
  v28 = [objc_opt_self() defaultManager];
  sub_25AEA0D98();
  v29 = sub_25AEA2178();

  LODWORD(v25) = [v28 fileExistsAtPath_];

  if (v25)
  {

    v31 = v57;
    v30 = v58;
    v32 = v56;
LABEL_26:
    (*(v63 + 32))(v14, v12, v9);
    v38 = sub_25AEA0D98();
    v40 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_25AE5BA20(0, *(v30 + 2) + 1, 1, v30);
    }

    v42 = *(v30 + 2);
    v41 = *(v30 + 3);
    if (v42 >= v41 >> 1)
    {
      v30 = sub_25AE5BA20((v41 > 1), v42 + 1, 1, v30);
    }

    sub_25AE42754(v31, v32);
    (*(v63 + 8))(v14, v9);
    *(v30 + 2) = v42 + 1;
    v43 = &v30[16 * v42];
    *(v43 + 4) = v38;
    *(v43 + 5) = v40;
    goto LABEL_21;
  }

  LOBYTE(v68[0]) = 1;
  v33 = sub_25AEA2178();
  v34 = [v28 fileExistsAtPath:v33 isDirectory:v68];

  v31 = v57;
  if (v34)
  {
LABEL_25:
    v32 = v56;
    sub_25AEA0DF8();
    v30 = v58;

    goto LABEL_26;
  }

  v35 = sub_25AEA2178();
  v66 = 0;
  v36 = [v28 createDirectoryAtPath:v35 withIntermediateDirectories:1 attributes:0 error:&v66];

  if (v36)
  {
    v37 = v66;
    goto LABEL_25;
  }

  v44 = v66;

  v45 = sub_25AEA0D08();

  v46 = v45;
  swift_willThrow();

  v47 = v56;
  sub_25AE6A0A8(v53, v27);

  v66 = 0;
  v67 = 0xE000000000000000;
  sub_25AEA2688();
  MEMORY[0x25F859D40](0xD00000000000001BLL, 0x800000025AEAA210);
  v68[0] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
  sub_25AEA2738();
  v48 = v66;
  v49 = v67;
  sub_25AE426AC();
  v50 = swift_allocError();
  *v51 = 10;
  *(v51 + 8) = v48;
  *(v51 + 16) = v49;
  swift_willThrow();

  sub_25AE42754(v31, v47);
  (*(v63 + 8))(v12, v9);

  NRLogError(_:additionalMessage:)(v50, 0, 0);
}

char *sub_25AE964B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store) + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(&v10);

  if (v10 != 1)
  {

LABEL_6:
    v4 = 0x800000025AEA9F50;
    sub_25AE426AC();
    swift_allocError();
    *v8 = 4;
    *(v8 + 8) = 0xD000000000000023;
    *(v8 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return v4;
  }

  v7 = sub_25AE48F1C(a1, a2);

  if (!v3)
  {
    v4 = sub_25AE68B10(v7);
  }

  return v4;
}

uint64_t sub_25AE96604(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_25AE96E38(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_25AE96F74(v3, v4);
    }

    else
    {
      v6 = sub_25AE96EF0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

Swift::Void __swiftcall NameTriggerController.automationHandleAudioInput(buffer:time:)(AVAudioPCMBuffer buffer, Swift::UInt64 time)
{
  impl = buffer.super._impl;
  isa = buffer.super.super.isa;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_25AEA2388();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = isa;
  v9[5] = impl;
  v9[6] = v2;
  v10 = isa;
  v11 = v2;
  sub_25AE93374(0, 0, v7, &unk_25AEA7720, v9);
}

void _s15NameRecognition0A17TriggerControllerC18didStopWithSummary4json4uuid8perfLogsySS_10Foundation4UUIDVSaySSGSgtF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25AEA0E48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v12 = sub_25AEA12C8();
  __swift_project_value_buffer(v12, qword_27FA1DF50);
  (*(v9 + 16))(v11, a3, v8);

  v13 = sub_25AEA12A8();
  v14 = sub_25AEA24A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = a1;
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v16 = 136315906;
    *(v16 + 4) = sub_25AE65D2C(0xD000000000000027, 0x800000025AEAA230, &v28);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_25AE65D2C(v15, a2, &v28);
    *(v16 + 22) = 2080;
    sub_25AE97308(&qword_27FA1EA58, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_25AEA27F8();
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_25AE65D2C(v17, v19, &v28);

    *(v16 + 24) = v20;
    *(v16 + 32) = 2080;
    v27 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA60, &qword_25AEA7840);
    v21 = sub_25AEA21D8();
    v23 = sub_25AE65D2C(v21, v22, &v28);

    *(v16 + 34) = v23;
    _os_log_impl(&dword_25AE3C000, v13, v14, "%s\n json: %s\n uuid: %s\n perfLogs: %s", v16, 0x2Au);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v24, -1, -1);
    MEMORY[0x25F85AB80](v16, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_25AE96B30()
{
  MEMORY[0x25F85AC20](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AE96B68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25AE96BB0()
{
  result = qword_27FA1D918;
  if (!qword_27FA1D918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D910, &qword_25AEA4DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D918);
  }

  return result;
}

uint64_t sub_25AE96C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AE4F874;

  return sub_25AE9497C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25AE96E38(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_25AE96EF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25AEA0C88();
  swift_allocObject();
  result = sub_25AEA0C48();
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

uint64_t sub_25AE96F74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25AEA0C88();
  swift_allocObject();
  result = sub_25AEA0C48();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25AEA0DC8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25AE96FF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 actionIdentifier];
  v6 = sub_25AEA21A8();
  v8 = v7;

  v9 = v6 == 0xD000000000000041 && 0x800000025AEA7D20 == v8;
  if (v9 || (sub_25AEA2828() & 1) != 0)
  {

    v10 = [a1 notification];
    v11 = [v10 request];

    v12 = [v11 content];
    v13 = [v12 userInfo];

    v14 = sub_25AEA2138();
    sub_25AE95B14(v14);

    goto LABEL_7;
  }

  if (v6 == 0xD00000000000003DLL && 0x800000025AEA7CB0 == v8)
  {
  }

  else
  {
    v18 = sub_25AEA2828();

    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_25AEA2478();
  v19 = MEMORY[0x25F859F80]();
  [v19 setNameRecognitionEnabled_];

LABEL_7:
  v15 = *(a3 + 16);

  return v15(a3);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25AE97230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AE47200;

  return sub_25AE9497C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25AE97308(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_25AE9736C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25AE40C38(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25AEA0EB8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_25AE6F8F0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25AE41408();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25AEA0EB8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25AE40628(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25AEA0EB8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_25AE9752C()
{
  type metadata accessor for LanguageAssetDownloader(0);
  swift_allocObject();
  result = sub_25AE9A454();
  qword_27FA227A8 = result;
  return result;
}

uint64_t sub_25AE9756C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB40, &unk_25AEA7A08);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v3 = sub_25AEA0EB8();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE976D0, 0, 0);
}

uint64_t sub_25AE976D0()
{
  v79 = v0;
  if (*(sub_25AEA0E88() + 16))
  {
  }

  else
  {

    sub_25AEA0E68();
  }

  sub_25AEA0E58();
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  v0[38] = __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v78 = v5;
    *v4 = 136315394;
    swift_beginAccess();
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v6 = sub_25AEA27F8();
    v8 = sub_25AE65D2C(v6, v7, &v78);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    sub_25AEA0E88();
    v9 = MEMORY[0x25F859E20]();
    v11 = v10;

    v12 = sub_25AE65D2C(v9, v11, &v78);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_25AE3C000, v2, v3, "Name Recognition current locale: %s\nPreferredLanguages: %s\n", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v13 = v0[27];
  v14 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales;
  v0[39] = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (*(v15 + 16))
  {
    v16 = v0[37];
    swift_beginAccess();

    LOBYTE(v16) = sub_25AE4E0DC(v16, v15);

    if (v16)
    {
      sub_25AEA2478();
      v17 = MEMORY[0x25F859F80]();
      v18 = *MEMORY[0x277CE7928];
      swift_beginAccess();
      v19 = *&v17[v18];

      sub_25AEA2458();
    }

    else
    {

      v22 = sub_25AEA12A8();
      v23 = sub_25AEA24A8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v78 = v25;
        *v24 = 136315394;
        sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v26 = sub_25AEA27F8();
        v28 = sub_25AE65D2C(v26, v27, &v78);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        v29 = sub_25AEA27F8();
        v31 = sub_25AE65D2C(v29, v30, &v78);

        *(v24 + 14) = v31;
        _os_log_impl(&dword_25AE3C000, v22, v23, "Name Recognition changing from current locale %s to default english locale %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F85AB80](v25, -1, -1);
        MEMORY[0x25F85AB80](v24, -1, -1);
      }

      v32 = v0[37];
      v33 = v0[34];
      v34 = v0[35];
      v35 = v0[27];
      sub_25AEA2478();
      v36 = MEMORY[0x25F859F80]();
      v37 = *MEMORY[0x277CE7928];
      swift_beginAccess();
      v38 = *&v36[v37];

      sub_25AEA2458();
      v39 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_defaultEnglishLocale;
      swift_beginAccess();
      (*(v34 + 24))(v32, v35 + v39, v33);
    }

    v40 = v0[37];
    v41 = v0[34];
    v42 = v0[35];
    v44 = v0[32];
    v43 = v0[33];
    v46 = v0[28];
    v45 = v0[29];
    v47 = v0[27];
    v48 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
    swift_beginAccess();
    v76 = v47;
    sub_25AE9FD88(v47 + v48, v43);
    v77 = v42[2];
    v77(v44, v40, v41);
    v75 = v42[7];
    v75(v44, 0, 1, v41);
    v49 = *(v46 + 48);
    sub_25AE9FD88(v43, v45);
    sub_25AE9FD88(v44, v45 + v49);
    v50 = v42[6];
    v51 = v50(v45, 1, v41);
    v52 = v0[34];
    if (v51 == 1)
    {
      v53 = v0[33];
      sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
      sub_25AE41938(v53, &qword_27FA1E7E8, &qword_25AEA6E30);
      v54 = v50(v45 + v49, 1, v52);
      v55 = v77;
      if (v54 == 1)
      {
        sub_25AE41938(v0[29], &qword_27FA1E7E8, &qword_25AEA6E30);
LABEL_24:
        v62 = v0[37];
        v63 = v0[34];
        v64 = v0[35];
        v55(v0[26], v62, v63);
        (*(v64 + 8))(v62, v63);

        v65 = v0[1];

        return v65();
      }
    }

    else
    {
      sub_25AE9FD88(v0[29], v0[31]);
      if (v50(v45 + v49, 1, v52) != 1)
      {
        v67 = v0[35];
        v66 = v0[36];
        v68 = v0[34];
        v69 = v0[31];
        v73 = v0[32];
        v74 = v0[33];
        v70 = v0[29];
        (*(v67 + 32))(v66, v45 + v49, v68);
        sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
        v71 = sub_25AEA2168();
        v72 = *(v67 + 8);
        v72(v66, v68);
        sub_25AE41938(v73, &qword_27FA1E7E8, &qword_25AEA6E30);
        sub_25AE41938(v74, &qword_27FA1E7E8, &qword_25AEA6E30);
        v72(v69, v68);
        sub_25AE41938(v70, &qword_27FA1E7E8, &qword_25AEA6E30);
        v55 = v77;
        if (v71)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v56 = v0[34];
      v57 = v0[35];
      v58 = v0[33];
      v59 = v0[31];
      sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
      sub_25AE41938(v58, &qword_27FA1E7E8, &qword_25AEA6E30);
      (*(v57 + 8))(v59, v56);
      v55 = v77;
    }

    sub_25AE41938(v0[29], &qword_27FA1EB40, &unk_25AEA7A08);
LABEL_23:
    v60 = v0[34];
    v61 = v0[30];
    v55(v61, v0[37], v60);
    v75(v61, 0, 1, v60);
    swift_beginAccess();
    sub_25AE9FDF8(v61, v76 + v48);
    swift_endAccess();
    goto LABEL_24;
  }

  v20 = swift_task_alloc();
  v0[40] = v20;
  *v20 = v0;
  v20[1] = sub_25AE98078;

  return sub_25AE9BF44();
}

uint64_t sub_25AE98078()
{

  return MEMORY[0x2822009F8](sub_25AE98174, 0, 0);
}

uint64_t sub_25AE98174()
{
  v64 = v0;
  v1 = *(v0[27] + v0[39]);
  v2 = v0[37];
  swift_beginAccess();

  LOBYTE(v2) = sub_25AE4E0DC(v2, v1);

  if (v2)
  {
    sub_25AEA2478();
    v3 = MEMORY[0x25F859F80]();
    v4 = *MEMORY[0x277CE7928];
    swift_beginAccess();
    v5 = *&v3[v4];

    sub_25AEA2458();
  }

  else
  {

    v6 = sub_25AEA12A8();
    v7 = sub_25AEA24A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v63 = v9;
      *v8 = 136315394;
      sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v10 = sub_25AEA27F8();
      v12 = sub_25AE65D2C(v10, v11, &v63);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_25AEA27F8();
      v15 = sub_25AE65D2C(v13, v14, &v63);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_25AE3C000, v6, v7, "Name Recognition changing from current locale %s to default english locale %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85AB80](v9, -1, -1);
      MEMORY[0x25F85AB80](v8, -1, -1);
    }

    v16 = v0[37];
    v17 = v0[34];
    v18 = v0[35];
    v19 = v0[27];
    sub_25AEA2478();
    v20 = MEMORY[0x25F859F80]();
    v21 = *MEMORY[0x277CE7928];
    swift_beginAccess();
    v22 = *&v20[v21];

    sub_25AEA2458();
    v23 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_defaultEnglishLocale;
    swift_beginAccess();
    (*(v18 + 24))(v16, v19 + v23, v17);
  }

  v24 = v0[37];
  v25 = v0[34];
  v26 = v0[35];
  v28 = v0[32];
  v27 = v0[33];
  v30 = v0[28];
  v29 = v0[29];
  v31 = v0[27];
  v32 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  v61 = v31;
  sub_25AE9FD88(v31 + v32, v27);
  v62 = v26[2];
  v62(v28, v24, v25);
  v60 = v26[7];
  v60(v28, 0, 1, v25);
  v33 = *(v30 + 48);
  sub_25AE9FD88(v27, v29);
  sub_25AE9FD88(v28, v29 + v33);
  v34 = v26[6];
  v35 = v34(v29, 1, v25);
  v36 = v0[34];
  if (v35 == 1)
  {
    v37 = v0[33];
    sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
    sub_25AE41938(v37, &qword_27FA1E7E8, &qword_25AEA6E30);
    v38 = v34(v29 + v33, 1, v36);
    v39 = v62;
    if (v38 == 1)
    {
      sub_25AE41938(v0[29], &qword_27FA1E7E8, &qword_25AEA6E30);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_25AE9FD88(v0[29], v0[31]);
  if (v34(v29 + v33, 1, v36) == 1)
  {
    v40 = v0[34];
    v41 = v0[35];
    v42 = v0[33];
    v43 = v0[31];
    sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
    sub_25AE41938(v42, &qword_27FA1E7E8, &qword_25AEA6E30);
    (*(v41 + 8))(v43, v40);
    v39 = v62;
LABEL_11:
    sub_25AE41938(v0[29], &qword_27FA1EB40, &unk_25AEA7A08);
LABEL_12:
    v44 = v0[34];
    v45 = v0[30];
    v39(v45, v0[37], v44);
    v60(v45, 0, 1, v44);
    swift_beginAccess();
    sub_25AE9FDF8(v45, v61 + v32);
    swift_endAccess();
    goto LABEL_13;
  }

  v52 = v0[35];
  v51 = v0[36];
  v53 = v0[34];
  v54 = v0[31];
  v58 = v0[32];
  v59 = v0[33];
  v55 = v0[29];
  (*(v52 + 32))(v51, v29 + v33, v53);
  sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v56 = sub_25AEA2168();
  v57 = *(v52 + 8);
  v57(v51, v53);
  sub_25AE41938(v58, &qword_27FA1E7E8, &qword_25AEA6E30);
  sub_25AE41938(v59, &qword_27FA1E7E8, &qword_25AEA6E30);
  v57(v54, v53);
  sub_25AE41938(v55, &qword_27FA1E7E8, &qword_25AEA6E30);
  v39 = v62;
  if ((v56 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v46 = v0[37];
  v47 = v0[34];
  v48 = v0[35];
  v39(v0[26], v46, v47);
  (*(v48 + 8))(v46, v47);

  v49 = v0[1];

  return v49();
}

uint64_t sub_25AE98864()
{
  v1[34] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  v1[35] = swift_task_alloc();
  v2 = sub_25AEA0EB8();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v1[38] = *(v3 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  if (qword_27FA1D298 != -1)
  {
    swift_once();
  }

  v4 = qword_27FA227B0;
  v1[45] = qword_27FA227B0;

  return MEMORY[0x2822009F8](sub_25AE989D8, v4, 0);
}

uint64_t sub_25AE989D8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  sub_25AE9FD88(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25AE41938(v0[35], &qword_27FA1E7E8, &qword_25AEA6E30);
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_25AE98BBC;
    v7 = v0[43];

    return sub_25AE9756C(v7);
  }

  else
  {
    v9 = v0[37];
    v10 = *(v9 + 32);
    v10(v0[43], v0[35], v0[36]);
    v11 = v0[43];
    v12 = v0[44];
    v13 = v0[36];
    v0[47] = v10;
    v0[48] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v12, v11, v13);
    v14 = sub_25AE9A5A4(v12);
    v0[49] = v14;

    v15 = swift_task_alloc();
    v0[50] = v15;
    *v15 = v0;
    v15[1] = sub_25AE98DA4;
    v16 = v0[44];

    return sub_25AE9FEB4(v14, v16);
  }
}

uint64_t sub_25AE98BBC()
{
  v1 = *(*v0 + 360);

  return MEMORY[0x2822009F8](sub_25AE98CCC, v1, 0);
}

uint64_t sub_25AE98CCC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = *(v2 + 32);
  v4 = v0[43];
  v5 = v0[44];
  v0[47] = v3;
  v0[48] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v3(v5, v4, v1);
  v6 = sub_25AE9A5A4(v5);
  v0[49] = v6;

  v7 = swift_task_alloc();
  v0[50] = v7;
  *v7 = v0;
  v7[1] = sub_25AE98DA4;
  v8 = v0[44];

  return sub_25AE9FEB4(v6, v8);
}

uint64_t sub_25AE98DA4(char a1)
{
  v2 = *(*v1 + 360);
  *(*v1 + 520) = a1;

  return MEMORY[0x2822009F8](sub_25AE98ED8, v2, 0);
}

uint64_t sub_25AE98ED8()
{
  v77 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = sub_25AEA12C8();
  *(v0 + 408) = __swift_project_value_buffer(v5, qword_27FA1DF50);
  v6 = *(v4 + 16);
  *(v0 + 416) = v6;
  *(v0 + 424) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74 = v6;
  v6(v2, v1, v3);
  v7 = sub_25AEA12A8();
  v8 = sub_25AEA24A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 520);
    v10 = *(v0 + 336);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76 = v72;
    *v13 = 136315394;
    if (v9)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v9)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_25AE65D2C(v14, v15, &v76);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v17 = v10;
    v18 = sub_25AEA27F8();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v17, v12);
    v22 = sub_25AE65D2C(v18, v20, &v76);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_25AE3C000, v7, v8, "Name Recognition has assets: %s for locale: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v72, -1, -1);
    MEMORY[0x25F85AB80](v13, -1, -1);
  }

  else
  {
    v23 = *(v0 + 336);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);

    v21 = *(v25 + 8);
    v21(v23, v24);
  }

  *(v0 + 432) = v21;
  if (*(v0 + 520) == 1)
  {
    v26 = *(v0 + 352);
    v27 = *(v0 + 288);
    sub_25AE9B5E0(0, 1, v26);

    v21(v26, v27);
LABEL_26:

    v64 = *(v0 + 8);

    return v64();
  }

  v74(*(v0 + 328), *(v0 + 352), *(v0 + 288));
  v28 = sub_25AEA12A8();
  v29 = sub_25AEA24A8();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 328);
  v32 = *(v0 + 288);
  v73 = v21;
  if (v30)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v76 = v34;
    *v33 = 136315138;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v35 = sub_25AEA27F8();
    v36 = v21;
    v37 = v35;
    v39 = v38;
    v36(v31, v32);
    v40 = sub_25AE65D2C(v37, v39, &v76);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_25AE3C000, v28, v29, "Name Recognition will start downloading assets for locale: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F85AB80](v34, -1, -1);
    MEMORY[0x25F85AB80](v33, -1, -1);
  }

  else
  {

    v21(v31, v32);
  }

  v41 = *(v0 + 272);
  v42 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  *(v0 + 440) = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  swift_beginAccess();
  v43 = *(v41 + v42);
  if (*(v43 + 16))
  {
    v44 = *(v0 + 352);

    v45 = sub_25AE6F8F0(v44);
    if (v46)
    {
      v47 = *(*(v43 + 56) + 8 * v45);
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v0 + 272);
  v49 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloaders;
  *(v0 + 448) = v47;
  *(v0 + 456) = v49;
  swift_beginAccess();
  v50 = *(v48 + v49);
  if (*(v50 + 16))
  {
    v51 = *(v0 + 352);

    v52 = sub_25AE6F8F0(v51);
    if (v53)
    {
      v70 = *(v0 + 376);
      v54 = *(v0 + 352);
      v55 = *(v0 + 320);
      v56 = *(v0 + 296);
      v57 = *(v0 + 288);
      v58 = *(v0 + 272);
      v71 = *(*(v50 + 56) + 8 * v52);

      sub_25AE9B5E0(v47, 0, v54);
      v59 = sub_25AEA13E8();
      *(v0 + 264) = v59;
      swift_getKeyPath();
      v74(v55, v54, v57);
      v60 = (*(v56 + 80) + 24) & ~*(v56 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      v70(v61 + v60, v55, v57);

      v62 = sub_25AEA0D28();

      v73(v54, v57);
      v63 = *(v58 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver);
      *(v58 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver) = v62;

      goto LABEL_26;
    }
  }

  v66 = *(v0 + 392);
  sub_25AEA12F8();
  *(v0 + 464) = sub_25AEA12D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB70, qword_25AEA7A38);
  v67 = swift_allocObject();
  *(v0 + 472) = v67;
  *(v67 + 16) = xmmword_25AEA3540;
  v68 = sub_25AEA06F8(&qword_27FA1EB78, 255, MEMORY[0x277CDCD60], MEMORY[0x277CDCD58]);
  *(v67 + 32) = v66;
  *(v67 + 40) = v68;
  v75 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

  v69 = swift_task_alloc();
  *(v0 + 480) = v69;
  *v69 = v0;
  v69[1] = sub_25AE996FC;

  return v75(v67, 0x6F636552656D614ELL, 0xEF6E6F6974696E67);
}

uint64_t sub_25AE996FC(uint64_t a1)
{
  v2 = *(*v1 + 360);
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_25AE99854, v2, 0);
}

uint64_t sub_25AE99854()
{
  v38 = v0;
  v1 = v0[61];
  if (v1)
  {
    v2 = v0[56];
    v3 = v0[55];
    v4 = v0[52];
    v35 = v0[47];
    v5 = v0[44];
    v6 = v0[40];
    v34 = v0[37];
    v7 = v0[36];
    v8 = v0[34];
    v4(v6, v5, v7);
    swift_beginAccess();
    v1;
    sub_25AE9736C(v1, v6);
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v8 + v3);
    *(v8 + v3) = 0x8000000000000000;
    sub_25AE40A94(v5, isUniquelyReferenced_nonNull_native, *&v2);
    *(v8 + v3) = v37;
    swift_endAccess();
    sub_25AE9B5E0(v2, 0, v5);
    v10 = sub_25AEA13E8();
    v0[31] = v10;
    swift_getKeyPath();
    v4(v6, v5, v7);
    v11 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v35(v12 + v11, v6, v7);

    v13 = sub_25AEA0D28();

    v14 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver;
    v0[62] = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver;
    v15 = *(v8 + v14);
    *(v8 + v14) = v13;

    v16 = swift_task_alloc();
    v0[63] = v16;
    *v16 = v0;
    v16[1] = sub_25AE99D18;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    (v0[52])(v0[39], v0[44], v0[36]);
    v17 = sub_25AEA12A8();
    v18 = sub_25AEA24A8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[54];
    v21 = v0[39];
    v22 = v0[36];
    if (v19)
    {
      v36 = v0[54];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v25 = sub_25AEA27F8();
      v27 = v26;
      v36(v21, v22);
      v28 = sub_25AE65D2C(v25, v27, &v37);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25AE3C000, v17, v18, "Name Recognition asset present for locale: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x25F85AB80](v24, -1, -1);
      MEMORY[0x25F85AB80](v23, -1, -1);
    }

    else
    {

      v20(v21, v22);
    }

    v29 = v0[54];
    v30 = v0[44];
    v31 = v0[36];
    sub_25AE9B5E0(0, 1, v30);

    v29(v30, v31);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_25AE99D18()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_25AE99FC0;
  }

  else
  {
    v4 = sub_25AE99E44;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25AE99E44()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[44];
  v9 = v0[36];
  v10 = v0[54];
  v4 = v0[34];
  sub_25AE9B5E0(0, 1, v3);
  v5 = *(v4 + v2);
  *(v4 + v2) = 0;

  swift_beginAccess();
  v6 = sub_25AE9A2B0(v3);
  swift_endAccess();

  swift_beginAccess();
  sub_25AE9A378(v3);
  swift_endAccess();

  v10(v3, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25AE99FC0()
{
  v1 = v0[64];
  v2 = v0[62];
  v3 = v0[55];
  v17 = v0[61];
  v18 = v0[54];
  v4 = v0[44];
  v16 = v0[36];
  v5 = v0[34];
  sub_25AEA2688();
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  MEMORY[0x25F859D40](0xD000000000000025, 0x800000025AEAA3C0);
  sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
  v6 = sub_25AEA27F8();
  MEMORY[0x25F859D40](v6);

  MEMORY[0x25F859D40](8236, 0xE200000000000000);
  v0[32] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
  sub_25AEA2738();
  v7 = v0[29];
  v8 = v0[30];
  sub_25AE426AC();
  v9 = swift_allocError();
  *v10 = 11;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8;
  NRLogError(_:additionalMessage:)(v9, 0, 0);

  sub_25AE9B5E0(1, 1, v4);
  v11 = *(v5 + v2);
  *(v5 + v2) = 0;

  swift_beginAccess();
  v12 = sub_25AE9A2B0(v4);
  swift_endAccess();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + v3);
  *(v5 + v3) = 0x8000000000000000;
  sub_25AE40A94(v4, isUniquelyReferenced_nonNull_native, 0.0);
  *(v5 + v3) = v19;
  swift_endAccess();

  v18(v4, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_25AE9A2B0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25AE6F8F0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25AE41408();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_25AEA0EB8();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_25AE40628(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_25AE9A378(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25AE6F8F0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25AE41194();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_25AEA0EB8();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_25AE40628(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_25AE9A454()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  v3 = sub_25AEA0EB8();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_activeDownloader) = 0;
  v4 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloaders;
  v5 = MEMORY[0x277D84F90];
  *(v1 + v4) = sub_25AE702C4(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  *(v1 + v6) = sub_25AE704AC(v5);
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales) = MEMORY[0x277D84FA0];
  sub_25AEA2478();
  v7 = MEMORY[0x25F859F80]();
  v8 = *MEMORY[0x277CE7928];
  swift_beginAccess();
  v9 = *&v7[v8];

  sub_25AEA2438();
  return v1;
}

uint64_t sub_25AE9A5A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25AEA13A8();
  v53 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v43 - v7;
  v8 = sub_25AEA0EB8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB40, &unk_25AEA7A08);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v50 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber;
  v22 = *(v2 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber);
  if (!v22)
  {
    goto LABEL_9;
  }

  v47 = v4;
  v23 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v49 = a1;
  v44 = v24;
  v45 = v9 + 16;
  v24(v21, a1, v8);
  (*(v9 + 56))(v21, 0, 1, v8);
  v25 = *(v13 + 48);
  v46 = v2;
  sub_25AE9FD88(v2 + v23, v15);
  sub_25AE9FD88(v21, &v15[v25]);
  v26 = *(v9 + 48);
  if (v26(v15, 1, v8) != 1)
  {
    sub_25AE9FD88(v15, v19);
    if (v26(&v15[v25], 1, v8) != 1)
    {
      v30 = v54;
      (*(v9 + 32))(v54, &v15[v25], v8);
      sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);

      v31 = sub_25AEA2168();
      v32 = *(v9 + 8);
      v32(v30, v8);
      sub_25AE41938(v21, &qword_27FA1E7E8, &qword_25AEA6E30);
      v32(v19, v8);
      sub_25AE41938(v15, &qword_27FA1E7E8, &qword_25AEA6E30);
      a1 = v49;
      v4 = v47;
      if (v31)
      {
        goto LABEL_12;
      }

      v2 = v46;
LABEL_9:
      v27 = v52;
      sub_25AE9BB98();
      sub_25AEA13C8();
      (*(v9 + 16))(v54, a1, v8);
      v28 = v53;
      (*(v53 + 16))(v51, v27, v4);
      v22 = sub_25AEA13B8();
      (*(v28 + 8))(v27, v4);
      *(v2 + v50) = v22;

      return v22;
    }

    sub_25AE41938(v21, &qword_27FA1E7E8, &qword_25AEA6E30);
    (*(v9 + 8))(v19, v8);
LABEL_8:
    a1 = v49;
    v2 = v46;
    v4 = v47;
    sub_25AE41938(v15, &qword_27FA1EB40, &unk_25AEA7A08);
    goto LABEL_9;
  }

  sub_25AE41938(v21, &qword_27FA1E7E8, &qword_25AEA6E30);
  if (v26(&v15[v25], 1, v8) != 1)
  {

    goto LABEL_8;
  }

  sub_25AE41938(v15, &qword_27FA1E7E8, &qword_25AEA6E30);
  a1 = v49;
LABEL_12:
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v33 = sub_25AEA12C8();
  __swift_project_value_buffer(v33, qword_27FA1DF50);
  v34 = v48;
  v44(v48, a1, v8);
  v35 = sub_25AEA12A8();
  v36 = sub_25AEA24A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v39 = sub_25AEA27F8();
    v41 = v40;
    (*(v9 + 8))(v34, v8);
    v42 = sub_25AE65D2C(v39, v41, &v55);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_25AE3C000, v35, v36, "Language Asset Downloader has an active transcriber with locale: %s. No need to build new transcriber", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x25F85AB80](v38, -1, -1);
    MEMORY[0x25F85AB80](v37, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v34, v8);
  }

  return v22;
}

uint64_t sub_25AE9AD04(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25AEA0EB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = sub_25AEA2388();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  (*(v8 + 16))(v10, a4, v7);
  v16 = qword_27FA1D298;
  v17 = a3;

  v26 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v19 = qword_27FA227B0;
  v20 = sub_25AEA06F8(&qword_27FA1EAD0, v18, type metadata accessor for LanguageAssetDownloadActor, &unk_25AEA794C);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v19;
  *(v23 + 3) = v20;
  *(v23 + 4) = v17;
  (*(v8 + 32))(&v23[v21], v10, v7);
  *&v23[v22] = v26;

  sub_25AE82E98(0, 0, v13, &unk_25AEA7A90, v23);
}

uint64_t sub_25AE9AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_25AEA0EB8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  if (qword_27FA1D298 != -1)
  {
    swift_once();
  }

  v8 = qword_27FA227B0;

  return MEMORY[0x2822009F8](sub_25AE9B094, v8, 0);
}

uint64_t sub_25AE9B094()
{
  v60 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = &off_27992A000;
  if (*(v3 + 16))
  {
    v5 = *(v0 + 48);

    v6 = sub_25AE6F8F0(v5);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      if (v8 != 0.0)
      {
        [*(v0 + 56) fractionCompleted];
        if (v9 == 0.0)
        {
          if (qword_27FA1D248 != -1)
          {
            swift_once();
          }

          v10 = *(v0 + 88);
          v11 = *(v0 + 64);
          v12 = *(v0 + 72);
          v13 = *(v0 + 48);
          v14 = *(v0 + 56);
          v15 = sub_25AEA12C8();
          __swift_project_value_buffer(v15, qword_27FA1DF50);
          (*(v12 + 16))(v10, v13, v11);
          v16 = v14;
          v17 = sub_25AEA12A8();
          v18 = sub_25AEA24A8();

          v19 = os_log_type_enabled(v17, v18);
          v20 = *(v0 + 88);
          v22 = *(v0 + 64);
          v21 = *(v0 + 72);
          if (v19)
          {
            v23 = *(v0 + 56);
            v24 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v59 = v58;
            *v24 = 134218498;
            *(v24 + 4) = v8;
            *(v24 + 12) = 2080;
            [v23 fractionCompleted];
            v25 = sub_25AEA23B8();
            v27 = sub_25AE65D2C(v25, v26, &v59);

            *(v24 + 14) = v27;
            *(v24 + 22) = 2080;
            sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
            v28 = sub_25AEA27F8();
            v30 = v29;
            (*(v21 + 8))(v20, v22);
            v31 = sub_25AE65D2C(v28, v30, &v59);
            v4 = &off_27992A000;

            *(v24 + 24) = v31;
            _os_log_impl(&dword_25AE3C000, v17, v18, "Name Recognition: Asset downloading saved progress: %f, new progress: %s for locale: %s", v24, 0x20u);
            swift_arrayDestroy();
            v32 = v58;
LABEL_14:
            MEMORY[0x25F85AB80](v32, -1, -1);
            MEMORY[0x25F85AB80](v24, -1, -1);

            goto LABEL_16;
          }

          (*(v21 + 8))(v20, v22);
          goto LABEL_16;
        }
      }
    }

    else
    {
    }
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 72);
  v33 = *(v0 + 80);
  v36 = *(v0 + 56);
  v35 = *(v0 + 64);
  v37 = *(v0 + 48);
  v38 = sub_25AEA12C8();
  __swift_project_value_buffer(v38, qword_27FA1DF50);
  (*(v34 + 16))(v33, v37, v35);
  v39 = v36;
  v17 = sub_25AEA12A8();
  v40 = sub_25AEA24A8();

  v41 = os_log_type_enabled(v17, v40);
  v43 = *(v0 + 72);
  v42 = *(v0 + 80);
  v44 = *(v0 + 64);
  if (v41)
  {
    v45 = *(v0 + 56);
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v24 = 136315394;
    [v45 fractionCompleted];
    v47 = sub_25AEA23B8();
    v49 = sub_25AE65D2C(v47, v48, &v59);

    *(v24 + 4) = v49;
    *(v24 + 12) = 2080;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v50 = sub_25AEA27F8();
    v52 = v51;
    (*(v43 + 8))(v42, v44);
    v53 = sub_25AE65D2C(v50, v52, &v59);
    v4 = &off_27992A000;

    *(v24 + 14) = v53;
    _os_log_impl(&dword_25AE3C000, v17, v40, "Name Recognition: Asset downloading updated progress: %s for locale: %s", v24, 0x16u);
    swift_arrayDestroy();
    v32 = v46;
    goto LABEL_14;
  }

  (*(v43 + 8))(v42, v44);
LABEL_16:
  v54 = *(v0 + 48);
  [*(v0 + 56) v4[326]];
  sub_25AE9B5E0(v55, 0, v54);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_25AE9B5E0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v6) = a2;
  v37 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_25AEA0EB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v14 = sub_25AEA12C8();
  __swift_project_value_buffer(v14, qword_27FA1DF50);
  (*(v11 + 16))(v13, a3, v10);
  v15 = sub_25AEA12A8();
  v16 = sub_25AEA24A8();
  if (os_log_type_enabled(v15, v16))
  {
    v35 = v3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315394;
    v36 = v6;
    if (v6)
    {
      if (v37)
      {
        v19 = 0x64656C696146;
      }

      else
      {
        v19 = 0x7964616552;
      }

      if (v37)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }
    }

    else
    {
      v21 = *&v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_25AEA3540;
      v23 = MEMORY[0x277D83A80];
      *(v22 + 56) = MEMORY[0x277D839F8];
      *(v22 + 64) = v23;
      *(v22 + 32) = v21 * 100.0;
      v19 = sub_25AEA21C8();
      v20 = v24;
    }

    v25 = sub_25AE65D2C(v19, v20, &v38);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v26 = sub_25AEA27F8();
    v6 = v27;
    (*(v11 + 8))(v13, v10);
    v28 = sub_25AE65D2C(v26, v6, &v38);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_25AE3C000, v15, v16, "Name Recognition asset state: %s for locale: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v18, -1, -1);
    MEMORY[0x25F85AB80](v17, -1, -1);

    LOBYTE(v6) = v36;
    v4 = v35;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v29 = sub_25AEA2388();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_25AEA2368();

  v30 = sub_25AEA2358();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  v33 = v37;
  *(v31 + 32) = v4;
  *(v31 + 40) = v33;
  *(v31 + 48) = v6 & 1;
  sub_25AE83198(0, 0, v9, &unk_25AEA79F8, v31);
}

uint64_t sub_25AE9BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  sub_25AEA2368();
  *(v6 + 40) = sub_25AEA2358();
  v8 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE9BAFC, v8, v7);
}

uint64_t sub_25AE9BAFC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_25AE8A044(*(v0 + 32), *(v0 + 48) & 1, v2);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25AE9BB98()
{
  sub_25AEA1398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAE0, &qword_25AEA79B8);
  v0 = sub_25AEA1318();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25AEA3540;
  sub_25AEA1308();
  sub_25AE9F308(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  sub_25AEA1358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAE8, &qword_25AEA79C0);
  v4 = sub_25AEA1338();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25AEA3F30;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277CDCD08], v4);
  v10(v9 + v6, *MEMORY[0x277CDCD10], v4);
  v10(v9 + 2 * v6, *MEMORY[0x277CDCD00], v4);
  sub_25AE9F630(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25AEA1388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAF0, &qword_25AEA79C8);
  v11 = sub_25AEA1348();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25AEA3550;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x277CDCD38], v11);
  v17(v16 + v13, *MEMORY[0x277CDCD30], v11);
  sub_25AE9F958(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25AEA1378();
  v18 = sub_25AEA1368();
  sub_25AEA1328();
  return v18(&v20, 0);
}

uint64_t sub_25AE9BF44()
{
  v1[8] = v0;
  v2 = sub_25AEA0EB8();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_25AEA12E8();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE9C078, 0, 0);
}

uint64_t sub_25AE9C078()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_25AEA12F8();
  v0[17] = sub_25AEA12D8();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v7 = (*MEMORY[0x277CDCC50] + MEMORY[0x277CDCC50]);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_25AE9C170;
  v5 = v0[16];

  return v7(v5);
}

uint64_t sub_25AE9C170(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 152) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_25AE9C2EC, 0, 0);
}

uint64_t sub_25AE9C2EC()
{
  v28 = v0;
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v25 = (v3 - 8);
    v26 = *(v3 + 56);
    v24 = v5;
    v5(v0[13], v6, v0[9]);
    while (1)
    {
      sub_25AEA0E68();
      v11 = sub_25AEA2258();

      v12 = v0[13];
      if (v11)
      {
        v8 = v0[11];
        v7 = v0[12];
        v9 = v0[9];
        v4(v8, v0[13], v9);
        swift_beginAccess();
        v4 = v24;
        sub_25AE9CB28(v7, v8);
        v10 = *v25;
        (*v25)(v7, v9);
        swift_endAccess();
        v10(v12, v9);
      }

      else
      {
        (*v25)(v0[13], v0[9]);
      }

      v6 += v26;
      if (!--v2)
      {
        break;
      }

      v4(v0[13], v6, v0[9]);
    }
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v13 = sub_25AEA12C8();
  __swift_project_value_buffer(v13, qword_27FA1DF50);

  v14 = sub_25AEA12A8();
  v15 = sub_25AEA24A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);

    v18 = sub_25AEA2408();
    v20 = v19;

    v21 = sub_25AE65D2C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_25AE3C000, v14, v15, "Language Asset Downloader supported English locales: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F85AB80](v17, -1, -1);
    MEMORY[0x25F85AB80](v16, -1, -1);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_25AE9C68C()
{
  sub_25AE53634(v0 + 16);
  sub_25AE41938(v0 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale, &qword_27FA1E7E8, &qword_25AEA6E30);

  v1 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_defaultEnglishLocale;
  v2 = sub_25AEA0EB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25AE9C774()
{
  sub_25AE9C68C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LanguageAssetDownloader(uint64_t a1)
{
  result = qword_27FA1EAB8;
  if (!qword_27FA1EAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE9C820(uint64_t a1)
{
  sub_25AE9C918(319);
  if (v1 <= 0x3F)
  {
    sub_25AEA0EB8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25AE9C918(uint64_t a1)
{
  if (!qword_27FA1EAC8)
  {
    sub_25AEA0EB8();
    v1 = sub_25AEA2538();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1EAC8);
    }
  }
}

uint64_t sub_25AE9C970@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LanguageAssetDownloader(0);
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

uint64_t sub_25AE9C9B0()
{
  type metadata accessor for LanguageAssetDownloadActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27FA227B0 = v0;
  return result;
}

uint64_t sub_25AE9C9EC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25AE9CA94()
{
  if (qword_27FA1D298 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25AE9CAF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LanguageAssetDownloadActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_25AE9CB28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25AEA0EB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v33 = a2;
  v11 = sub_25AEA2148();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v21 = sub_25AEA2168();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25AE9DBC4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25AE9CE10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25AEA28B8();
  sub_25AEA21F8();
  v8 = sub_25AEA28D8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25AEA2828() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25AE9DE70(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25AE9CF60(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25AEA25C8();

    if (v9)
    {

      type metadata accessor for CollectedEnrollment();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_25AEA25B8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_25AE9D178(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_25AE9D918(v20 + 1);
    }

    v18 = v8;
    sub_25AE9DB40(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for CollectedEnrollment();
  v11 = sub_25AEA2518();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_25AE9DFF0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_25AEA2528();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_25AE9D178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
    v2 = sub_25AEA2648();
    v15 = v2;
    sub_25AEA25A8();
    if (sub_25AEA25D8())
    {
      type metadata accessor for CollectedEnrollment();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_25AE9D918(v9 + 1);
        }

        v2 = v15;
        result = sub_25AEA2518();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_25AEA25D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25AE9D358(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25AEA0EB8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAD8, &qword_25AEA79B0);
  result = sub_25AEA2638();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_25AEA2148();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25AE9D6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1EB80, qword_25AEA7A98);
  result = sub_25AEA2638();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25AEA28B8();
      sub_25AEA21F8();
      result = sub_25AEA28D8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25AE9D918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
  result = sub_25AEA2638();
  v5 = result;
  if (*(v3 + 16))
  {
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
      result = sub_25AEA2518();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25AE9DB40(uint64_t a1, uint64_t a2)
{
  sub_25AEA2518();
  result = sub_25AEA2598();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25AE9DBC4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25AEA0EB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AE9D358(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25AE9E150();
      goto LABEL_12;
    }

    sub_25AE9E634(v10 + 1);
  }

  v12 = *v3;
  sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v13 = sub_25AEA2148();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v21 = sub_25AEA2168();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25AEA2848();
  __break(1u);
  return result;
}

uint64_t sub_25AE9DE70(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25AE9D6B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25AE9E388();
      goto LABEL_16;
    }

    sub_25AE9E954(v8 + 1);
  }

  v10 = *v4;
  sub_25AEA28B8();
  sub_25AEA21F8();
  result = sub_25AEA28D8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25AEA2828();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25AEA2848();
  __break(1u);
  return result;
}

void sub_25AE9DFF0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AE9D918(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25AE9E4E4();
      goto LABEL_12;
    }

    sub_25AE9EB8C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_25AEA2518();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CollectedEnrollment();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_25AEA2528();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25AEA2848();
  __break(1u);
}

void *sub_25AE9E150()
{
  v1 = v0;
  v2 = sub_25AEA0EB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAD8, &qword_25AEA79B0);
  v6 = *v0;
  v7 = sub_25AEA2628();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25AE9E388()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1EB80, qword_25AEA7A98);
  v2 = *v0;
  v3 = sub_25AEA2628();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_25AE9E4E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
  v2 = *v0;
  v3 = sub_25AEA2628();
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

uint64_t sub_25AE9E634(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25AEA0EB8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAD8, &qword_25AEA79B0);
  v7 = sub_25AEA2638();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_25AEA2148();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25AE9E954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1EB80, qword_25AEA7A98);
  result = sub_25AEA2638();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25AEA28B8();

      sub_25AEA21F8();
      result = sub_25AEA28D8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_25AE9EB8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
  result = sub_25AEA2638();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_25AEA2518();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

void sub_25AE9EDA0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25AEA25B8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB48, &qword_25AEA7A18);
      v3 = sub_25AEA2658();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25AEA25B8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F85A1C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_25AEA2518();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_25AE9FE68();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_25AEA2528();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_25AEA2518();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_25AE9FE68();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_25AEA2528();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_25AE9F06C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_25AEA25B8();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB50, &qword_25AEA7A20);
      result = sub_25AEA2658();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_25AEA25B8();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x25F85A1C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_25AEA1418();
    sub_25AEA06F8(&qword_27FA1EB58, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_25AEA2148();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_25AEA06F8(&qword_27FA1EB60, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_25AEA2168();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25AE9F308(uint64_t a1)
{
  v2 = sub_25AEA1318();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB28, &unk_25AEA79E0);
    v9 = sub_25AEA2658();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25AEA06F8(&qword_27FA1EB30, 255, MEMORY[0x277CDCCE8], MEMORY[0x277CDCCF0]);
      v16 = sub_25AEA2148();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25AEA06F8(&qword_27FA1EB38, 255, MEMORY[0x277CDCCE8], MEMORY[0x277CDCCF8]);
          v23 = sub_25AEA2168();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AE9F630(uint64_t a1)
{
  v2 = sub_25AEA1338();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB10, &qword_25AEA79D8);
    v9 = sub_25AEA2658();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25AEA06F8(&qword_27FA1EB18, 255, MEMORY[0x277CDCD18], MEMORY[0x277CDCD20]);
      v16 = sub_25AEA2148();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25AEA06F8(&qword_27FA1EB20, 255, MEMORY[0x277CDCD18], MEMORY[0x277CDCD28]);
          v23 = sub_25AEA2168();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AE9F958(uint64_t a1)
{
  v2 = sub_25AEA1348();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAF8, &qword_25AEA79D0);
    v9 = sub_25AEA2658();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25AEA06F8(&qword_27FA1EB00, 255, MEMORY[0x277CDCD40], MEMORY[0x277CDCD48]);
      v16 = sub_25AEA2148();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25AEA06F8(&qword_27FA1EB08, 255, MEMORY[0x277CDCD40], MEMORY[0x277CDCD50]);
          v23 = sub_25AEA2168();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AE9FC80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25AE9FCC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AE4F874;

  return sub_25AE9BA5C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25AE9FD88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE9FDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE9FE68()
{
  result = qword_27FA1D2B0;
  if (!qword_27FA1D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA1D2B0);
  }

  return result;
}

uint64_t sub_25AE9FEB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_25AEA0EB8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_25AEA12E8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_25AEA06F8(&qword_27FA1EB78, 255, MEMORY[0x277CDCD60], MEMORY[0x277CDCD58]);

  return MEMORY[0x2822009F8](sub_25AEA000C, 0, 0);
}

uint64_t sub_25AEA000C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[11] = sub_25AEA12F8();
  v0[12] = sub_25AEA12D8();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v7 = (*MEMORY[0x277CDCC48] + MEMORY[0x277CDCC48]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25AEA0108;
  v5 = v0[9];

  return v7(v5);
}

uint64_t sub_25AEA0108(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 112) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_25AEA0284, 0, 0);
}

void sub_25AEA0284()
{
  v1 = 0;
  v2 = v0[14];
  v3 = v0[5];
  v4 = *(v2 + 16);
  v0[15] = v4;
  do
  {
    v0[16] = v1;
    if (v4 == v1)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    (*(v3 + 16))(v5, v0[14] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1++, v6);
    LOBYTE(v7) = MEMORY[0x25F8589B0](v5, v7);
    (*(v3 + 8))(v5, v6);
  }

  while ((v7 & 1) == 0);
  v8 = v0[10];
  v9 = v0[2];

  v0[17] = sub_25AEA12D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB70, qword_25AEA7A38);
  v10 = swift_allocObject();
  v0[18] = v10;
  *(v10 + 16) = xmmword_25AEA3540;
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;
  v12 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_25AEA044C;

  v12(v10);
}

uint64_t sub_25AEA044C(char a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_25AEA0588, 0, 0);
}

uint64_t sub_25AEA0588()
{
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 128) != *(v0 + 120);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v5;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v4;
    _os_log_impl(&dword_25AE3C000, v2, v3, "Is current locale installed: %{BOOL}d. Has transcriber assets installed: %{BOOL}d", v6, 0xEu);
    MEMORY[0x25F85AB80](v6, -1, -1);
  }

  v7 = *(v0 + 160);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);

  v10 = *(v0 + 8);

  return v10((v8 != v9) & v7);
}

uint64_t sub_25AEA06F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_25AEA074C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_25AEA0EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AEA084C(void **a1, uint64_t a2)
{
  v5 = *(sub_25AEA0EB8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_25AE9AD04(a1, a2, v6, v7);
}

uint64_t sub_25AEA08D0()
{
  v1 = sub_25AEA0EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25AEA09B0(uint64_t a1)
{
  v4 = *(sub_25AEA0EB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25AE47200;

  return sub_25AE9AF90(a1, v6, v7, v8, v1 + v5, v9);
}