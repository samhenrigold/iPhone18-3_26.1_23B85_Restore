uint64_t sub_238450358()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23875F700();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x23EE641F0](0);
    v4 = v1;
    v1 = v2;
  }

  MEMORY[0x23EE641F0](v4);
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_2384503D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[2])
  {
    if (v2 == v3)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = (v2 == v3) & ~*(a2 + 16);
    if (a1[1] == a2[1])
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238450410()
{
  swift_getKeyPath(byte_238763FD0);
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();
}

uint64_t sub_2384504B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_238763FD0);
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  *a2 = *(v3 + 32);
}

uint64_t sub_23845058C(uint64_t a1)
{

  v4 = sub_238519C6C(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238763FD0);
    MEMORY[0x28223BE20](KeyPath);
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
    sub_23875BE80();
  }
}

uint64_t sub_2384506E0()
{
  swift_getKeyPath("(E{E");
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();
}

uint64_t sub_238450784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("(E{E");
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  *a2 = *(v3 + 40);
}

uint64_t sub_23845085C(uint64_t a1)
{
  if (sub_238519EAC(*(v1 + 40), a1))
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath("(E{E");
    MEMORY[0x28223BE20](KeyPath);
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
    sub_23875BE80();
  }
}

uint64_t sub_2384509A0()
{
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();
}

uint64_t sub_238450A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  *a2 = *(v3 + 48);
}

uint64_t sub_238450B1C(uint64_t a1)
{
  if (sub_238519EAC(*(v1 + 48), a1))
  {
    *(v1 + 48) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
    sub_23875BE80();
  }
}

id sub_238450C60()
{
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23875C1E0();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE00();
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23875BE20();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758F50();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v50 = sub_23875BC40();
  v56 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[2];
  v16 = [objc_opt_self() currentQueryGenerationToken];
  v59[0] = 0;
  v17 = [v15 setQueryGenerationFromToken:v16 error:v59];

  if (v17)
  {
    v55 = v0;
    v18 = v59[0];
    v19 = sub_238452DA8(v15);
    v47 = v4;
    v20 = v55;
    sub_23845058C(v19);
    swift_getKeyPath(byte_238763FD0);
    v59[0] = v20;
    sub_238453D6C(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
    sub_23875BE90();

    v21 = v20[4];
    if (*(v21 + 16))
    {
      v22 = v48;
      (*(v48 + 16))(v9, v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v7);
      sub_238758E80();
      (*(v22 + 8))(v9, v7);
      v23 = v56;
      v24 = v50;
      (*(v56 + 56))(v12, 0, 1, v50);
      (*(v23 + 32))(v14, v12, v24);
      v25 = v47;
    }

    else
    {
      v28 = v56;
      v24 = v50;
      (*(v56 + 56))(v12, 1, 1, v50);
      sub_23875BBF0();
      v29 = (*(v28 + 48))(v12, 1, v24);
      v25 = v47;
      if (v29 != 1)
      {
        sub_238439884(v12, &qword_27DF12E00, &unk_238763FC0);
      }
    }

    v30 = v49;
    sub_23875BDB0();
    v31 = v54;
    v32 = v52;
    (*(v54 + 104))(v52, *MEMORY[0x277CC9988], v25);
    v33 = sub_23875BE10();
    (*(v31 + 8))(v32, v25);
    (*(v51 + 8))(v30, v53);
    v34 = sub_238453170(v33);
    v42 = v55;
    sub_23845085C(v34);
    v43 = sub_238453698(v33, v15);
    v44 = (v56 + 8);
    sub_238450B1C(v43);
    (*v44)(v14, v24);
    return sub_2384514F0(v42);
  }

  else
  {
    v26 = v59[0];
    v27 = sub_23875B730();

    swift_willThrow();
    sub_23875C120();
    v35 = v27;
    v36 = sub_23875C1B0();
    v37 = sub_23875EFE0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v27;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_2383F8000, v36, v37, "Failed to fetch latest transactions: %@.", v38, 0xCu);
      sub_238439884(v39, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v39, -1, -1);
      MEMORY[0x23EE64DF0](v38, -1, -1);
    }

    else
    {
    }

    return (*(v57 + 8))(v3, v58);
  }
}

id sub_2384514F0(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v21[0] = 0;
  v8 = [v7 setQueryGenerationFromToken:0 error:{v21, v4}];
  v9 = v21[0];
  if (v8)
  {

    return v9;
  }

  else
  {
    v20 = v21[0];
    v11 = v21[0];
    v12 = sub_23875B730();

    swift_willThrow();
    sub_23875C120();
    v13 = v12;
    v14 = sub_23875C1B0();
    v15 = sub_23875EFE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      sub_238439884(v17, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v17, -1, -1);
      MEMORY[0x23EE64DF0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_238451770()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI35GroupedTransactionsViewDataProvider___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroupedTransactionsViewDataProvider(uint64_t a1)
{
  result = qword_27DF09900;
  if (!qword_27DF09900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238451888(uint64_t a1)
{
  result = sub_23875BED0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionGroupUnit(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransactionGroupUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238451A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09918;
  if (!qword_27DF09918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09918);
  }

  return result;
}

uint64_t sub_238451A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23875ED50();
  *(v4 + 24) = sub_23875ED40();
  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238451AF4, v6, v5);
}

uint64_t sub_238451AF4()
{

  sub_238450C60();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238451B58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_23875ED80();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_23875ED50();

  v6 = sub_23875ED40();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_2386C3BA4(0, 0, v4, &unk_238763FB8, v7);
}

uint64_t sub_238451C7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_238451A5C(a1, v4, v5, v6);
}

void sub_238451D30(id *a1)
{
  v1 = [*a1 transactionDate];
  sub_23875BBE0();
}

uint64_t sub_238451D90(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  sub_2385FE76C(0, v3 & ~(v3 >> 63), 0);
  v4 = v11;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE63F70](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_23875F3A0();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09940, &qword_238764028);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09948, &qword_238764030);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2385FE76C((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_23875F3A0();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_238451F44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A50, &qword_2387641A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v20 = &v21[-v10 - 8];
  v11 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  sub_2385FE940(0, v11, 0);
  v12 = v22;
  if (v11)
  {
    v13 = a1 + 32;
    v14 = (v6 + 56);
    while (1)
    {
      sub_238453DB4(v13, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A40, &qword_238777390);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v14)(v4, 0, 1, v5);
      v16 = v20;
      sub_238453E10(v4, v20);
      sub_238453E10(v16, v8);
      v22 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2385FE940((v17 > 1), v18 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v18 + 1;
      sub_238453E10(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
      v13 += 32;
      --v11;
      v5 = v15;
      if (!v11)
      {
        return v12;
      }
    }

    (*v14)(v4, 1, 1, v5);
    sub_238439884(v4, &qword_27DF09A50, &qword_2387641A8);
    return 0;
  }

  return v12;
}

uint64_t sub_2384521E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  sub_2385FE9A0(0, v2, 0);
  v3 = v13;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_238453DB4(i, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A40, &qword_238777390);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A48, &qword_2387641A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v11;
      v13 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2385FE9A0((v6 > 1), v7 + 1, 1);
        v5 = v11;
        v3 = v13;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_238452334(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09950, qword_238764060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2384523A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23875EBF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_238452934(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23875F4B0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_238452934(uint64_t a1, unint64_t a2)
{
  v2 = sub_23875EC00();
  v6 = sub_2384529B4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2384529B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_23875F200();
    if (!v9 || (v10 = v9, v11 = sub_238452334(v9, 0), v12 = sub_238452B0C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_23875EB20();

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
      return sub_23875EB20();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_23875F4B0();
LABEL_4:

  return sub_23875EB20();
}

unint64_t sub_238452B0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_238452D2C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23875EBB0();
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
          result = sub_23875F4B0();
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

    result = sub_238452D2C(v12, a6, a7);
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

    result = sub_23875EB90();
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

unint64_t sub_238452D2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23875EBC0();
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
    v5 = MEMORY[0x23EE63680](15, a1 >> 16);
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

void *sub_238452DA8(uint64_t a1)
{
  v29 = a1;
  v1 = sub_238758F50();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  sub_23875A230();
  v8 = MEMORY[0x23EE5ECD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_238763E70;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  swift_getKeyPath(byte_238764098);
  *(v9 + 32) = sub_23875F040();
  v10 = sub_23875A0C0();
  [v10 setPredicate_];
  v11 = v10;
  v12 = sub_23875EC60();

  [v11 setSortDescriptors_];

  [v11 setFetchLimit_];
  v13 = v29;
  v14 = v30;
  v15 = sub_23875F140();
  if (v14)
  {

    return v13;
  }

  v30 = v15;
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v16 = sub_23875F3A0();
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_5:
  v29 = 0;
  v31 = MEMORY[0x277D84F90];
  result = sub_2385FE728(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v27 = v11;
    v28 = v8;
    v13 = v31;
    v18 = v30;
    v19 = v1;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        MEMORY[0x23EE63F70](v20, v18);
        sub_238758F60();
        v31 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2385FE728((v21 > 1), v22 + 1, 1);
          v13 = v31;
        }

        ++v20;
        *(v13 + 16) = v22 + 1;
        (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22, v7, v19);
        v18 = v30;
      }

      while (v16 != v20);
    }

    else
    {
      v23 = 32;
      do
      {
        v24 = *(v18 + v23);
        sub_238758F60();
        v31 = v13;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2385FE728((v25 > 1), v26 + 1, 1);
          v13 = v31;
        }

        *(v13 + 16) = v26 + 1;
        (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v4, v19);
        v23 += 8;
        --v16;
        v18 = v30;
      }

      while (v16);
    }

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_238453170(uint64_t a1)
{
  sub_23875A230();
  v3 = sub_23875A1A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09940, &qword_238764028);
  v4 = sub_23875F140();
  if (!v1)
  {
    v5 = sub_238451D90(v4);

    v2 = MEMORY[0x277D84F90];
    if (!v5)
    {
      v5 = MEMORY[0x277D84F90];
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
LABEL_88:

      return v2;
    }

    v8 = 0;
    v48 = v47 + 1;
LABEL_7:
    v44 = v2;
    while (1)
    {
      if (v8 >= *(v5 + 16))
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
        return result;
      }

      v9 = *(v5 + 32 + 8 * v8++);
      if (!*(v9 + 16))
      {
        goto LABEL_10;
      }

      v10 = sub_23853B46C(0x646E4168746E6F6DLL, 0xEC00000072616559);
      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_238453DB4(*(v9 + 56) + 32 * v10, v47);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_9;
      }

      result = v46;
      v12 = HIBYTE(v46) & 0xF;
      v13 = v45 & 0xFFFFFFFFFFFFLL;
      if ((v46 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v46) & 0xF;
      }

      else
      {
        v14 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {

LABEL_9:

        goto LABEL_10;
      }

      if ((v46 & 0x1000000000000000) == 0)
      {
        break;
      }

      v18 = sub_2384523A8(v45, v46, 10);
      v43 = v38;

      if ((v43 & 1) == 0)
      {
LABEL_81:
        v2 = v44;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_238497FC0(0, *(v44 + 16) + 1, 1, v44);
          v2 = result;
        }

        v40 = *(v2 + 16);
        v39 = *(v2 + 24);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          result = sub_238497FC0((v39 > 1), v40 + 1, 1, v2);
          v41 = v40 + 1;
          v2 = result;
        }

        *(v2 + 16) = v41;
        v42 = v2 + 24 * v40;
        *(v42 + 32) = v18 / 100;
        *(v42 + 40) = v18 % 100;
        *(v42 + 48) = 0;
        if (v8 == v7)
        {
          goto LABEL_88;
        }

        goto LABEL_7;
      }

LABEL_10:
      if (v8 == v7)
      {
        v2 = v44;
        goto LABEL_88;
      }
    }

    if ((v46 & 0x2000000000000000) != 0)
    {
      v47[0] = v45;
      v47[1] = v46 & 0xFFFFFFFFFFFFFFLL;
      if (v45 == 43)
      {
        if (!v12)
        {
          goto LABEL_93;
        }

        v15 = (v12 - 1);
        if (v12 != 1)
        {
          v18 = 0;
          v29 = v48;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v15)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v45 == 45)
      {
        if (!v12)
        {
          goto LABEL_91;
        }

        v15 = (v12 - 1);
        if (v12 != 1)
        {
          v18 = 0;
          v22 = v48;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v15)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v12)
      {
        v18 = 0;
        v34 = v47;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v12)
          {
LABEL_74:
            LOBYTE(v15) = 0;
            goto LABEL_76;
          }
        }
      }
    }

    else
    {
      if ((v45 & 0x1000000000000000) != 0)
      {
        v15 = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v15 = sub_23875F4B0();
        result = v46;
      }

      v16 = *v15;
      if (v16 == 43)
      {
        if (v13 < 1)
        {
          goto LABEL_94;
        }

        v25 = v13 - 1;
        if (v13 != 1)
        {
          v18 = 0;
          if (!v15)
          {
            goto LABEL_76;
          }

          v26 = v15 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v25)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v16 == 45)
      {
        if (v13 < 1)
        {
          goto LABEL_92;
        }

        v17 = v13 - 1;
        if (v13 != 1)
        {
          v18 = 0;
          if (!v15)
          {
            goto LABEL_76;
          }

          v19 = v15 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v13)
      {
        v18 = 0;
        if (!v15)
        {
          goto LABEL_76;
        }

        while (1)
        {
          v32 = *v15 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v15;
          if (!--v13)
          {
            goto LABEL_74;
          }
        }
      }
    }

    v18 = 0;
    LOBYTE(v15) = 1;
LABEL_76:
    LOBYTE(v45) = v15;
    v37 = v15;

    if ((v37 & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_10;
  }

  return v2;
}

uint64_t sub_238453698(uint64_t a1, uint64_t a2)
{
  sub_23875A230();
  v4 = sub_23875A190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09940, &qword_238764028);
  v5 = sub_23875F140();
  if (!v2)
  {
    v6 = sub_238451D90(v5);

    a2 = MEMORY[0x277D84F90];
    if (!v6)
    {
      v6 = MEMORY[0x277D84F90];
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
LABEL_19:

      return a2;
    }

    v9 = 0;
LABEL_7:
    v10 = v9;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v6 + 32 + 8 * v10);
      if (*(v11 + 16))
      {

        v12 = sub_23853B46C(1918985593, 0xE400000000000000);
        if (v13)
        {
          sub_238453DB4(*(v11 + 56) + 32 * v12, v19);

          result = swift_dynamicCast();
          if (result)
          {
            v18 = v20;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_238497FC0(0, *(a2 + 16) + 1, 1, a2);
              a2 = result;
            }

            v15 = *(a2 + 16);
            v14 = *(a2 + 24);
            v16 = v15 + 1;
            if (v15 >= v14 >> 1)
            {
              result = sub_238497FC0((v14 > 1), v15 + 1, 1, a2);
              v16 = v15 + 1;
              a2 = result;
            }

            v9 = v10 + 1;
            *(a2 + 16) = v16;
            v17 = a2 + 24 * v15;
            *(v17 + 32) = v18;
            *(v17 + 40) = 0;
            *(v17 + 48) = 1;
            if (v8 - 1 == v10)
            {
              goto LABEL_19;
            }

            goto LABEL_7;
          }
        }

        else
        {
        }
      }

      if (v8 == ++v10)
      {
        goto LABEL_19;
      }
    }
  }

  return a2;
}

uint64_t sub_2384538BC()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_23845392C()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_23845396C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_238453A78()
{
  result = qword_27DF099C8;
  if (!qword_27DF099C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF099C0, &qword_238764148);
    sub_238453C50(&qword_27DF099D0, &qword_27DF099B0, qword_238764108);
    sub_238453B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF099C8);
  }

  return result;
}

unint64_t sub_238453B1C()
{
  result = qword_27DF099E0;
  if (!qword_27DF099E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF099A0, &qword_2387640F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF099E0);
  }

  return result;
}

unint64_t sub_238453BAC()
{
  result = qword_27DF09A10;
  if (!qword_27DF09A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A08, &unk_238764190);
    sub_238453C50(&qword_27DF09A18, &qword_27DF09A00, &unk_238764158);
    sub_238453CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09A10);
  }

  return result;
}

uint64_t sub_238453C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23843A3E8(&qword_27DF099D8, &qword_27DF099A8, &qword_238764100, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238453CE8()
{
  result = qword_27DF09A20;
  if (!qword_27DF09A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF099F8, &qword_238764150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09A20);
  }

  return result;
}

uint64_t sub_238453D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238453DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238453E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ContinuousGroupBoxStyle.init()@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(byte_2387641C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ContinuousGroupBoxStyle(0);
  *(a1 + *(result + 20)) = 0x403A000000000000;
  return result;
}

uint64_t ContinuousGroupBoxStyle.makeBody(configuration:)@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A60, &qword_2387641F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A68, &qword_238764200);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A70, &qword_238764208);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  *v6 = sub_23875D030();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A78, &qword_238764210);
  sub_23845425C(&v6[*(v13 + 44)]);
  v14 = *(v2 + *(type metadata accessor for ContinuousGroupBoxStyle(0) + 20));
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v6, v9, &qword_27DF09A60, &qword_2387641F8);
  v15 = &v9[*(v7 + 36)];
  v16 = v33;
  *(v15 + 4) = v32;
  *(v15 + 5) = v16;
  *(v15 + 6) = v34;
  v17 = v29;
  *v15 = v28;
  *(v15 + 1) = v17;
  v18 = v31;
  *(v15 + 2) = v30;
  *(v15 + 3) = v18;
  v19 = [objc_opt_self() secondarySystemBackgroundColor];
  v20 = sub_23875DFB0();
  LOBYTE(v6) = sub_23875D780();
  sub_2384396E4(v9, v12, &qword_27DF09A68, &qword_238764200);
  v21 = &v12[*(v10 + 36)];
  *v21 = v20;
  v21[8] = v6;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A80, &qword_238764218) + 36));
  v23 = *(sub_23875C980() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_23875CF50();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  *v22 = v14;
  *(v22 + 1) = v14;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  return sub_2384396E4(v12, a2, &qword_27DF09A70, &qword_238764208);
}

uint64_t sub_23845425C@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v27 = sub_23875D5C0();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_23875D5A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = v13;
  sub_23875D5B0();
  sub_23875D5D0();
  v14 = *(v8 + 16);
  v14(v10, v13, v7);
  v25 = v6;
  v15 = v7;
  v16 = *(v1 + 16);
  v17 = v27;
  v16(v3, v6, v27);
  v24 = v3;
  v18 = v29;
  v14(v29, v10, v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AD8, &unk_238764280);
  v20 = v24;
  v16(&v18[*(v19 + 48)], v24, v17);
  v21 = *(v1 + 8);
  v21(v25, v17);
  v22 = *(v8 + 8);
  v22(v26, v15);
  v21(v20, v17);
  v22(v10, v15);
}

uint64_t sub_238454578(uint64_t a1)
{
  v2 = sub_23875C450();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CA20();
}

uint64_t type metadata accessor for ContinuousGroupBoxStyle(uint64_t a1)
{
  result = qword_27DF09A90;
  if (!qword_27DF09A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384546D0(uint64_t a1)
{
  sub_238438628(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_238454744()
{
  result = qword_27DF09AA0;
  if (!qword_27DF09AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A80, &qword_238764218);
    sub_2384547FC();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AA0);
  }

  return result;
}

unint64_t sub_2384547FC()
{
  result = qword_27DF09AA8;
  if (!qword_27DF09AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A70, &qword_238764208);
    sub_2384548B4();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AA8);
  }

  return result;
}

unint64_t sub_2384548B4()
{
  result = qword_27DF09AB0;
  if (!qword_27DF09AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09A68, &qword_238764200);
    sub_23843A3E8(&qword_27DF09AB8, &qword_27DF09A60, &qword_2387641F8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AB0);
  }

  return result;
}

uint64_t sub_23845496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_23875C1E0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_23875ED50();
  v5[8] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_238454A60, v8, v7);
}

uint64_t sub_238454A60()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v2;

  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AE8, &unk_238764340);
  v6 = sub_238455BF0();
  *v4 = v0;
  v4[1] = sub_238454B80;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CB8](v6, &unk_238764368, v3, v5, v7, v6);
}

uint64_t sub_238454B80()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_238454D04;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_238454C9C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238454C9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238454D04()
{
  v23 = v0;
  v1 = v0[13];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to kick off authorization. Error: %@", v6, 0xCu);
    sub_238455DD4(v7);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[4];
  v12 = v0[5];

  (*(v11 + 8))(v10, v12);
  v14 = *(v13 + 24);
  v15 = v0[13];
  if (v14)
  {
    v16 = *(v13 + 32);
    v21 = v0[13];
    v22 = 1;

    v14(&v21);
    sub_2384348A8(v14, v16);
  }

  v17 = *(v13 + 24);
  v18 = *(v13 + 32);
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  sub_2384348A8(v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_238454ED4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v4;
  return MEMORY[0x2822009F8](sub_238454EF8, 0, 0);
}

uint64_t sub_238454EF8()
{
  receiver = v0[2].receiver;
  super_class = v0[2].super_class;
  v3 = type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = receiver;
  v0[1].receiver = v4;
  v0[1].super_class = v3;

  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  [(objc_class *)super_class authorizeWithParams:v5];

  v6 = v0->super_class;

  return v6();
}

uint64_t sub_238454FC4()
{

  sub_2384348A8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_238455030@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_238455080(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v13 = v1;

  sub_23875A480();
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AE8, &unk_238764340);
  sub_238455BF0();
  sub_238757720();
  *(v1 + 40) = a1;

  v7 = sub_23875ED80();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23875ED50();
  swift_retain_n();

  v8 = sub_23875ED40();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = v2;
  sub_2386C3BA4(0, 0, v6, &unk_238764358, v9);
}

uint64_t sub_238455214(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + 24);
  v3 = *(v1 + 24);
  if (v3)
  {
    v5 = *(v1 + 32);
    v9 = a1;
    v10 = 1;

    v3(&v9);
    sub_2384348A8(v3, v5);
    v6 = *(v2 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 32);
  *v4 = 0;
  v4[1] = 0;

  return sub_2384348A8(v6, v7);
}

void *sub_2384552A4(void *result)
{
  if (result)
  {
    v2 = v1;
    v4 = (v1 + 24);
    v3 = *(v1 + 24);
    if (v3)
    {
      v5 = *(v1 + 32);
      v10 = result;
      v11 = 1;
      v6 = result;
      v7 = result;
      sub_238455C54(v3, v5);
      v3(&v10);
      sub_2384348A8(v3, v5);

      v8 = *(v2 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v2 + 32);
    *v4 = 0;
    v4[1] = 0;

    return sub_2384348A8(v8, v9);
  }

  return result;
}

uint64_t sub_23845536C()
{
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AE8, &unk_238764340);
    sub_238455BF0();
    sub_238757710();
  }

  *(v0 + 40) = 0;
}

uint64_t sub_238455478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v8 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23845556C, v8, v7);
}

uint64_t sub_23845556C()
{
  v21 = v0;
  v1 = v0[3];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFC0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2383F8000, v3, v4, "Extension Host: Result: %@", v6, 0xCu);
    sub_238455DD4(v7);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = v0[2];

  (*(v10 + 8))(v9, v11);
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = *(v12 + 32);
    v19 = *(v0[3] + OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value);
    v20 = 0;

    sub_238455C54(v13, v14);
    v13(&v19);
    sub_2384348A8(v13, v14);

    v15 = *(v12 + 24);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 32);
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  sub_2384348A8(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_238455768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v8 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23845585C, v8, v7);
}

uint64_t sub_23845585C()
{
  v22 = v0;
  v1 = v0[3];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Extension Host: Error: %@", v6, 0xCu);
    sub_238455DD4(v7);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  v13 = v0[2];

  (*(v11 + 8))(v10, v12);
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = *(v13 + 32);
    v20 = v0[3];
    v21 = 1;

    v14(&v20);
    sub_2384348A8(v14, v15);
    v16 = *(v13 + 24);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v13 + 32);
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  sub_2384348A8(v16, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_238455A48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_23875ED80();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_23875ED50();
  v12 = a3;
  swift_retain_n();
  v13 = v12;
  v14 = sub_23875ED40();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = v13;
  sub_2386C3BA4(0, 0, v10, a5, v15);
}

unint64_t sub_238455B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09AE0;
  if (!qword_27DF09AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AE0);
  }

  return result;
}

unint64_t sub_238455BF0()
{
  result = qword_27DF09AF0;
  if (!qword_27DF09AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09AE8, &unk_238764340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09AF0);
  }

  return result;
}

uint64_t sub_238455C54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_238455C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_23845496C(a1, v4, v5, v7, v6);
}

uint64_t sub_238455D24(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384494A4;

  return sub_238454ED4(a1, a2, v6);
}

uint64_t sub_238455DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09930, &unk_2387638C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_238455E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_238455768(a1, v4, v5, v7, v6);
}

uint64_t sub_238455F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_238455478(a1, v4, v5, v7, v6);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_238456034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23845607C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_238456124(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_2384563F8(319, &qword_27DF09B10, MEMORY[0x277CC6C90], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384561E8()
{
  if (!qword_2814F08C0)
  {
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F08C0);
    }
  }
}

void sub_238456280(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_2384563A4(319, &qword_27DF09B28, &qword_27DF09B30, &unk_238764470);
    if (v2 <= 0x3F)
    {
      sub_2384563A4(319, &qword_27DF09B38, &qword_27DF09B40, &qword_238769520);
      if (v3 <= 0x3F)
      {
        sub_2384563F8(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2384563A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875E1E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2384563F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238456480()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C00, &qword_238764638);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C08, &qword_238764640);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  *v5 = sub_23875D020();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C10, &qword_238764648);
  sub_238456748(v1, &v5[*(v9 + 44)]);
  v10 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C18, &unk_238764650) + 36)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v12 = sub_23875DA40();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *v10 = swift_getKeyPath("@B{E");
  KeyPath = swift_getKeyPath(byte_238764690);
  v14 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C28, &qword_2387646C0) + 36)];
  *v14 = KeyPath;
  v14[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v15 = &v5[*(v3 + 44)];
  *v15 = KeyPath;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_23845B480(v5, v8);
  v20 = &v8[*(v6 + 36)];
  v21 = v25[5];
  *(v20 + 4) = v25[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v25[6];
  v22 = v25[1];
  *v20 = v25[0];
  *(v20 + 1) = v22;
  v23 = v25[3];
  *(v20 + 2) = v25[2];
  *(v20 + 3) = v23;
  sub_23845B4F0();
  sub_23875DE00();
  return sub_238439884(v8, &qword_27DF09C08, &qword_238764640);
}

uint64_t sub_238456748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_23875BE40();
  MEMORY[0x28223BE20](v3 - 8);
  v117 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE20();
  MEMORY[0x28223BE20](v5 - 8);
  v115 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v113 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = _s18OrderDateFormatterVMa(0);
  MEMORY[0x28223BE20](v116);
  v114 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = v111 - v11;
  *&v129 = sub_238757F50();
  *&v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v112 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v124 = v111 - v14;
  v123 = sub_23875DFD0();
  v15 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510);
  MEMORY[0x28223BE20](v122);
  v126 = v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v111 - v20;
  sub_23875ED50();
  v125 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  v25 = a1[3];
  v130 = 0;
  LOBYTE(v131) = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v26 = BYTE8(v135);
  v27 = v136;
  *(v21 + 4) = v135;
  v21[40] = v26;
  *(v21 + 6) = v27;
  v130 = 0;
  LOBYTE(v131) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v28 = BYTE8(v135);
  v29 = v136;
  *(v21 + 7) = v135;
  v21[64] = v28;
  *(v21 + 9) = v29;
  v30 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) + 32);
  *&v21[v30] = swift_getKeyPath(byte_2387646E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v118 = a1;
  swift_storeEnumTagMultiPayload();
  *v21 = v23;
  *(v21 + 1) = v22;
  *(v21 + 2) = v24;
  *(v21 + 3) = v25;
  (*(v15 + 104))(v17, *MEMORY[0x277CE0EE0], v123);

  v31 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238764710);
  v33 = &v21[*(v122 + 36)];
  v34 = type metadata accessor for OrderImageStyleModifier(0);
  *&v33[*(v34 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v33[*(v34 + 40)] = swift_getKeyPath(byte_2387646E0);
  v35 = swift_storeEnumTagMultiPayload();
  *v33 = xmmword_2387643A0;
  *(v33 + 2) = 0;
  v33[24] = 1;
  *(v33 + 4) = v31;
  v33[40] = 0;
  *&v135 = v23;
  *(&v135 + 1) = v22;
  v111[1] = sub_2384397A8(v35, v36, v37);
  v38 = sub_23875DAA0();
  v40 = v39;
  v42 = v41;
  sub_23875D830();
  v43 = sub_23875DA60();
  v45 = v44;
  LOBYTE(v23) = v46;

  sub_2384397FC(v38, v40, v42 & 1);

  sub_23875D890();
  v47 = sub_23875D9E0();
  v49 = v48;
  LOBYTE(v38) = v50;
  sub_2384397FC(v43, v45, v23 & 1);

  sub_23875E070();
  v122 = sub_23875DA10();
  v121 = v51;
  v119 = v52;
  v123 = v53;

  sub_2384397FC(v47, v49, v38 & 1);

  v54 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  v55 = v120;
  sub_23843981C(v118 + *(v54 + 24), v120, &qword_27DF09AF8, &qword_238764438);
  v56 = v128;
  v57 = v129;
  if ((*(v128 + 48))(v55, 1, v129) == 1)
  {
    sub_238439884(v55, &qword_27DF09AF8, &qword_238764438);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v58 = qword_2814F1B90;
    v59 = sub_23875EA50();
    v60 = sub_23875EA50();
    v61 = sub_23875EA50();
    v62 = [v58 localizedStringForKey:v59 value:v60 table:v61];

    v63 = sub_23875EA80();
    v65 = v64;

    *&v135 = v63;
    *(&v135 + 1) = v65;
    v66 = sub_23875DAA0();
    v68 = v67;
    LOBYTE(v65) = v69;
    sub_23875D7F0();
    v70 = sub_23875DA60();
    v72 = v71;
    v74 = v73;

    sub_2384397FC(v66, v68, v65 & 1);

    sub_23875E080();
    v75 = sub_23875DA10();
    v77 = v76;
    LOBYTE(v61) = v78;
    v80 = v79;

    sub_2384397FC(v70, v72, v74 & 1);

    v130 = v75;
    v131 = v77;
    v132 = v61 & 1;
    v133 = v80;
    v134 = 1;
    sub_23875D1B0();
  }

  else
  {
    v81 = v124;
    (*(v56 + 32))(v124, v55, v57);
    (*(v56 + 16))(v112, v81, v57);
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    sub_2387595B0();
    sub_23845AFB4(&qword_27DF09C80, _s18OrderDateFormatterVMa, &unk_238764858);
    sub_23845AFB4(&qword_27DF09BD8, MEMORY[0x277CC6C90], MEMORY[0x277CC6C98]);
    v82 = sub_23875DA80();
    v84 = v83;
    v86 = v85;
    sub_23875D7F0();
    v87 = sub_23875DA60();
    v89 = v88;
    v91 = v90;

    sub_2384397FC(v82, v84, v86 & 1);

    sub_23875E080();
    v92 = sub_23875DA10();
    v94 = v93;
    LOBYTE(v81) = v95;
    v97 = v96;

    sub_2384397FC(v87, v89, v91 & 1);

    v130 = v92;
    v131 = v94;
    v132 = v81 & 1;
    v133 = v97;
    v134 = 0;
    sub_23875D1B0();
    (*(v128 + 8))(v124, v129);
  }

  v128 = v135;
  v129 = v136;
  v98 = v137;
  v99 = v126;
  sub_23843981C(v21, v126, &qword_27DF09C70, &unk_238769510);
  v100 = v127;
  sub_23843981C(v99, v127, &qword_27DF09C70, &unk_238769510);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C78, &qword_238764748);
  v102 = v100 + *(v101 + 48);
  v103 = v122;
  v104 = v121;
  *v102 = v122;
  *(v102 + 8) = v104;
  v105 = v119 & 1;
  *(v102 + 16) = v119 & 1;
  v124 = v21;
  *(v102 + 24) = v123;
  v106 = v100 + *(v101 + 64);
  v107 = v129;
  *v106 = v128;
  *(v106 + 16) = v107;
  *(v106 + 32) = v98;
  sub_23843980C(v103, v104, v105);

  v108 = v128;
  v109 = v129;
  sub_23845B7C4(v128, *(&v128 + 1), v129, *(&v129 + 1));
  sub_238439884(v124, &qword_27DF09C70, &unk_238769510);
  sub_23845B800(v108, *(&v108 + 1), v109, *(&v109 + 1));
  sub_2384397FC(v103, v104, v105);

  sub_238439884(v99, &qword_27DF09C70, &unk_238769510);
}

id sub_238457438@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v94 = sub_23875D990();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  KeyPath = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23875C450();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v85 - v7;
  v103 = type metadata accessor for MonogramView(0);
  MEMORY[0x28223BE20](v103);
  v10 = (&v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v95 = &v85 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B48, &qword_238764518);
  MEMORY[0x28223BE20](v101);
  v102 = &v85 - v13;
  v14 = type metadata accessor for ExtractedOrderMerchantIcon(0);
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B50, &qword_238764520);
  MEMORY[0x28223BE20](v100);
  v18 = (&v85 - v17);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B58, &qword_238764528);
  MEMORY[0x28223BE20](v97);
  v98 = (&v85 - v19);
  v89 = sub_23875E0E0();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_23875E0F0();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B60, &qword_238764530);
  MEMORY[0x28223BE20](v23);
  v99 = &v85 - v25;
  v26 = *(v2 + 24);
  if (v26)
  {
    v95 = v24;
    v27 = *(v2 + 16);
    v28 = *(v2 + 40);
    v29 = *(v2 + 48);
    v107 = *(v2 + 32);
    v108 = v28;
    v109 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BB8, &qword_238764560);
    sub_23875E1B0();
    v30 = v106;
    if (v106 == 255)
    {
LABEL_5:
      v94 = sub_23875E020();
      KeyPath = swift_getKeyPath(byte_238764568);
      sub_23845AFFC(v2, &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderMerchantIcon);
      v34 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v35 = swift_allocObject();
      v96 = v27;
      v36 = v35;
      sub_23845B070(v16, v35 + v34, type metadata accessor for ExtractedOrderMerchantIcon);
      sub_23845AFFC(v2, v16, type metadata accessor for ExtractedOrderMerchantIcon);
      v37 = swift_allocObject();
      sub_23845B070(v16, v37 + v34, type metadata accessor for ExtractedOrderMerchantIcon);
      v38 = (v37 + ((v34 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v38 = v96;
      v38[1] = v26;
      v39 = (v18 + *(v100 + 36));
      sub_23875C6E0();
      sub_23875ED60();
      *v39 = &unk_2387645A8;
      v39[1] = v37;
      v40 = v94;
      *v18 = KeyPath;
      v18[1] = v40;
      v18[2] = sub_23845817C;
      v18[3] = 0;
      v18[4] = sub_23845B0D8;
      v18[5] = v36;
      sub_23843981C(v18, v98, &qword_27DF09B50, &qword_238764520);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B80, &qword_238764538);
      sub_23845ADC4();
      sub_23845AE40();
      v41 = v99;
      sub_23875D1B0();
      sub_238439884(v18, &qword_27DF09B50, &qword_238764520);
LABEL_14:
      sub_23843981C(v41, v102, &qword_27DF09B60, &qword_238764530);
      swift_storeEnumTagMultiPayload();
      sub_23845AD38();
      sub_23845AFB4(&qword_27DF09BB0, type metadata accessor for MonogramView, &protocol conformance descriptor for MonogramView);
      sub_23875D1B0();
      return sub_238439884(v41, &qword_27DF09B60, &qword_238764530);
    }

    v31 = v105;
    v32 = *(v2 + 64);
    v33 = *(v2 + 72);
    v107 = *(v2 + 56);
    v108 = v32;
    v109 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
    sub_23875E1B0();
    if (v106)
    {
      sub_23845B254(v31, v30);
      goto LABEL_5;
    }

    if ((v30 & 1) == 0)
    {

      sub_23845B26C(v31, 0);
      sub_23875E0C0();
      v77 = v85;
      v78 = v86;
      (*(v85 + 104))(v22, *MEMORY[0x277CE1000], v86);
      sub_23875E100();

      (*(v77 + 8))(v22, v78);
      v79 = v88;
      v80 = v87;
      v81 = v89;
      (*(v88 + 104))(v87, *MEMORY[0x277CE0FE0], v89);
      v82 = sub_23875E150();

      (*(v79 + 8))(v80, v81);
      v105 = v82;
      v106 = 0;
      goto LABEL_13;
    }

    sub_2387588A0();
    result = PKMapsIconForMerchantCategory();
    if (result)
    {

      sub_23875E0C0();
      v71 = v85;
      v72 = v86;
      (*(v85 + 104))(v22, *MEMORY[0x277CE1000], v86);
      sub_23875E100();

      (*(v71 + 8))(v22, v72);
      v73 = v88;
      v74 = v87;
      v75 = v89;
      (*(v88 + 104))(v87, *MEMORY[0x277CE0FE0], v89);
      v76 = sub_23875E150();

      (*(v73 + 8))(v74, v75);
      v105 = v76;
      v106 = 1;
LABEL_13:
      sub_23875D1B0();
      v83 = v108;
      v84 = v98;
      *v98 = v107;
      *(v84 + 8) = v83;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B80, &qword_238764538);
      sub_23845ADC4();
      sub_23845AE40();
      v41 = v99;
      sub_23875D1B0();
      sub_23845B254(v31, v30);

      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    sub_2384D4E38(v8);
    v42 = v90;
    v43 = v91;
    (*(v90 + 104))(v5, *MEMORY[0x277CDF3D0], v91);
    v44 = sub_23875C440();
    v45 = *(v42 + 8);
    v45(v5, v43);
    v45(v8, v43);
    v46 = objc_opt_self();
    v47 = &selRef_systemGray4Color;
    if ((v44 & 1) == 0)
    {
      v47 = &selRef_systemGray2Color;
    }

    v48 = [v46 *v47];
    v49 = sub_23875DFB0();
    v51 = *v2;
    v50 = *(v2 + 8);
    v52 = sub_23875E040();
    v107 = 0x404C000000000000;
    v53 = (*(v92 + 104))(KeyPath, *MEMORY[0x277CE0A68], v94);
    sub_23845A940(v53, v54, v55);
    sub_23875C540();
    *v10 = v49;
    v10[1] = v52;
    v10[3] = v51;
    v10[4] = v50;
    v10[2] = 0x3FC999999999999ALL;
    v56 = sub_23875EAF0();
    v58 = v57;

    v59 = sub_2384F565C(1, v56, v58);
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = MEMORY[0x23EE635F0](v59, v61, v63, v65);
    v68 = v67;

    v10[5] = v66;
    v10[6] = v68;
    v69 = v95;
    sub_23845B070(v10, v95, type metadata accessor for MonogramView);
    sub_23845AFFC(v69, v102, type metadata accessor for MonogramView);
    swift_storeEnumTagMultiPayload();
    sub_23845AD38();
    sub_23845AFB4(&qword_27DF09BB0, type metadata accessor for MonogramView, &protocol conformance descriptor for MonogramView);
    sub_23875D1B0();
    return sub_23845BC48(v69, type metadata accessor for MonogramView);
  }

  return result;
}

uint64_t sub_23845817C@<X0>(double *a1@<X8>)
{
  v2 = sub_23875D2F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875D4B0();
  sub_23875C640();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_238458288(CGFloat *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1B0();
  v10.origin.x = v2;
  v10.origin.y = v3;
  v10.size.width = v4;
  v10.size.height = v5;
  Width = CGRectGetWidth(v10);
  if ((v9 & 1) != 0 || v8 != Width)
  {
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    CGRectGetWidth(v11);
    sub_23875E1C0();
  }
}

uint64_t sub_2384583E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_23875ED50();
  v3[6] = sub_23875ED40();
  v3[7] = sub_23875ED40();
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_2384584B4;

  return sub_238458A9C(a2, a3);
}

uint64_t sub_2384584B4(uint64_t a1)
{
  v2 = *v1;
  v2[9] = a1;

  v4 = sub_23875ECE0();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_238458600, v4, v3);
}

uint64_t sub_238458600()
{
  if (v0[9])
  {

    v0[14] = v0[9];
    v2 = sub_23875ECE0();

    return MEMORY[0x2822009F8](sub_2384588B0, v2, v1);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_238458700;
    v5 = v0[3];
    v4 = v0[4];

    return sub_238458F94(v5, v4);
  }
}

uint64_t sub_238458700(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_238458828, v4, v3);
}

uint64_t sub_238458828()
{

  *(v0 + 112) = *(v0 + 104);
  v2 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384588B0, v2, v1);
}

uint64_t sub_2384588B0()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[2];

  LOBYTE(v2) = v2 == 0;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  sub_23875E500();
  sub_23875C6F0();

  sub_23845B064(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_238458998(uint64_t a1, void *a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23845B26C(a2, a3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BB8, &qword_238764560);
  sub_23875E1C0();
}

uint64_t sub_238458A9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23875ED50();
  v2[4] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_238458B34, v4, v3);
}

uint64_t sub_238458B34()
{
  sub_2387579D0();
  v0[7] = sub_2387579A0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_238458BE8;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282116E08](v3, v2, 1);
}

uint64_t sub_238458BE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_238458DD8;
  }

  else
  {

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_238458D08;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_238458D08()
{
  v1 = v0[10];

  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v6 = sub_23875B980();
    v7 = [v5 initWithData_];

    sub_23844C940(v3, v4);
    v2 = v7;
  }

  v8 = v0[1];

  return v8(v2);
}

uint64_t sub_238458DD8()
{

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_23875C1E0();
  __swift_project_value_buffer(v2, qword_27DF2F690);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Could not fetch icon: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_238458F94(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = sub_23875ED50();
  v2[6] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_238459030, v4, v3);
}

uint64_t sub_238459030()
{
  v1 = objc_allocWithZone(MEMORY[0x277D07080]);
  v2 = sub_23875EA50();
  v3 = [v1 initWithString_];

  if (v3 && (v4 = [v3 highLevelDomain], v3, v4))
  {
    v5 = sub_23875EA80();
    v7 = v6;

    v0[9] = v7;
    v8 = [objc_allocWithZone(MEMORY[0x277D81650]) init];
    v0[10] = v8;
    v9 = sub_23875ED40();
    v0[11] = v9;
    v10 = swift_task_alloc();
    v0[12] = v10;
    v10[2] = v8;
    v10[3] = v5;
    v10[4] = v7;
    v11 = swift_task_alloc();
    v0[13] = v11;
    type metadata accessor for PKMerchantCategory(0);
    *v11 = v0;
    v11[1] = sub_23845922C;
    v13 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v0 + 2, v9, v13, 0xD000000000000019, 0x80000002387860E0, sub_23845B298, v10, v12);
  }

  else
  {

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_23845922C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2384593D4;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_238459364;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238459364()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2384593D4()
{
  v1 = v0[10];

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_23875C1E0();
  __swift_project_value_buffer(v3, qword_27DF2F690);
  v4 = v2;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Could not fetch icon: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

void sub_2384595A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875EA50();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_23845B2A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23848C708;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  [v14 getPKCategoryForDomain:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_2384597E0(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
    return sub_23875ED00();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
    return sub_23875ED10();
  }
}

uint64_t sub_238459864(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v45 = a2;
  v44 = sub_2387595E0();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_238759290();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v36 - v5;
  v6 = sub_23875BC40();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238757F50();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_23875B650();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23875BE20();
  v46 = *(*(v21 - 8) + 56);
  v46(v17, 1, 1, v21);
  v22 = sub_23875BE40();
  v23 = *(*(v22 - 8) + 56);
  v23(v14, 1, 1, v22);
  sub_23875B620();
  v24 = v49;
  sub_2387595D0();
  v23(v14, 0, 1, v22);
  v25 = v24;
  v26 = v47;
  sub_23875B640();
  sub_2387595C0();
  v46(v17, 0, 1, v21);
  sub_23875B630();
  v27 = v48;
  (*(v48 + 16))(v11, v50, v26);
  v28 = (*(v27 + 88))(v11, v26);
  if (v28 == *MEMORY[0x277CC6C88] || v28 == *MEMORY[0x277CC6C80])
  {
    (*(v27 + 96))(v11, v26);
    sub_23875B5E0();
    sub_23875B5F0();
    sub_23875B5B0();
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v29 = v51;
    sub_23875B5C0();
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 48))(v29, 1, v53) != 1)
    {
      v32 = v38;
      (*(v31 + 32))(v38, v29, v30);
      (*(v42 + 16))(v40, v25, v44);
      v33 = v39;
      sub_238759270();
      v34 = sub_238759280();
      (*(v41 + 8))(v33, v43);
      (*(v31 + 8))(v32, v30);
      (*(v36 + 8))(v20, v37);
      return v34;
    }

    __break(1u);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23845A00C()
{
  sub_23875F700();
  MEMORY[0x23EE641F0](0);
  return sub_23875F760();
}

uint64_t sub_23845A050()
{
  sub_23875F700();
  MEMORY[0x23EE641F0](0);
  return sub_23875F760();
}

uint64_t sub_23845A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23875F630();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23845A150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23845BBF4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23845A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23845BBF4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23845A1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2387595E0();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09CD0, &qword_2387648B8);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23875BE40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23875BE20();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_23875BD20();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s18OrderDateFormatterVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23845BBF4(v15, v16, v17);
  v18 = v25;
  sub_23875F780();
  if (!v18)
  {
    v19 = v23;
    sub_23845AFB4(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v24 + 8))(v8, v6);
    (*(v19 + 40))(v14, v5, v3);
    sub_23845AFFC(v14, v22, _s18OrderDateFormatterVMa);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23845BC48(v14, _s18OrderDateFormatterVMa);
}

uint64_t sub_23845A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_238459864(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_23845A598()
{
  sub_23845AFB4(&qword_27DF09CC8, _s18OrderDateFormatterVMa, &unk_238764828);

  return sub_238759950();
}

uint64_t sub_23845A634(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09CE8, &qword_2387648C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23845BBF4(v6, v7, v8);
  sub_23875F790();
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF0, MEMORY[0x277CC7968], MEMORY[0x277CC7970]);
  sub_23875F5C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23845A7AC()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23845A834(uint64_t a1)
{
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);

  return sub_23875E960();
}

uint64_t sub_23845A8B8()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23845AFB4(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

unint64_t sub_23845A940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09B68;
  if (!qword_27DF09B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B68);
  }

  return result;
}

BOOL sub_23845A994(void *a1, void *a2)
{
  v4 = sub_238757F50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BD0, &qword_2387695A0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v24 = v7;
  v16 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v17 = *(v11 + 48);
  sub_23843981C(a1 + v16, v13, &qword_27DF09AF8, &qword_238764438);
  sub_23843981C(a2 + v16, &v13[v17], &qword_27DF09AF8, &qword_238764438);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_23843981C(v13, v10, &qword_27DF09AF8, &qword_238764438);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_15;
    }

    v20 = v24;
    (*(v5 + 32))(v24, &v13[v17], v4);
    sub_23845AFB4(&qword_27DF09BD8, MEMORY[0x277CC6C90], MEMORY[0x277CC6C98]);
    v21 = sub_23875E9E0();
    v22 = *(v5 + 8);
    v22(v20, v4);
    v22(v10, v4);
    sub_238439884(v13, &qword_27DF09AF8, &qword_238764438);
    return (v21 & 1) != 0;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_15:
    sub_238439884(v13, &qword_27DF09BD0, &qword_2387695A0);
    return 0;
  }

  sub_238439884(v13, &qword_27DF09AF8, &qword_238764438);
  return 1;
}

unint64_t sub_23845AD38()
{
  result = qword_27DF09B70;
  if (!qword_27DF09B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B60, &qword_238764530);
    sub_23845ADC4();
    sub_23845AE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B70);
  }

  return result;
}

unint64_t sub_23845ADC4()
{
  result = qword_27DF09B78;
  if (!qword_27DF09B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B80, &qword_238764538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B78);
  }

  return result;
}

unint64_t sub_23845AE40()
{
  result = qword_27DF09B88;
  if (!qword_27DF09B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B50, &qword_238764520);
    sub_23845AEFC();
    sub_23845AFB4(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B88);
  }

  return result;
}

unint64_t sub_23845AEFC()
{
  result = qword_27DF09B90;
  if (!qword_27DF09B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09B98, &unk_238764540);
    sub_2384497EC();
    sub_23843A3E8(&qword_27DF09BA0, &qword_27DF09BA8, &qword_238764558, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09B90);
  }

  return result;
}

uint64_t sub_23845AFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23845AFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_23845B064(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_23845B070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23845B0D8(CGFloat *a1)
{
  v3 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_238458288(a1, v4);
}

uint64_t sub_23845B148()
{
  v2 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2384494A4;

  return sub_2384583E0(v0 + v3, v5, v6);
}

void sub_23845B254(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_23845B064(a1, a2 & 1);
  }
}

id sub_23845B26C(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_23845B2A4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);

  return sub_2384597E0(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23845B3A8()
{
  result = qword_27DF09BF0;
  if (!qword_27DF09BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09BF8, qword_2387645E0);
    sub_23845AD38();
    sub_23845AFB4(&qword_27DF09BB0, type metadata accessor for MonogramView, &protocol conformance descriptor for MonogramView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09BF0);
  }

  return result;
}

uint64_t sub_23845B480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C00, &qword_238764638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23845B4F0()
{
  result = qword_27DF09C30;
  if (!qword_27DF09C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C08, &qword_238764640);
    sub_23845B57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C30);
  }

  return result;
}

unint64_t sub_23845B57C()
{
  result = qword_27DF09C38;
  if (!qword_27DF09C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C00, &qword_238764638);
    sub_23845B608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C38);
  }

  return result;
}

unint64_t sub_23845B608()
{
  result = qword_27DF09C40;
  if (!qword_27DF09C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C28, &qword_2387646C0);
    sub_23845B6C0();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C40);
  }

  return result;
}

unint64_t sub_23845B6C0()
{
  result = qword_27DF09C48;
  if (!qword_27DF09C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C18, &unk_238764650);
    sub_23843A3E8(&qword_27DF09C50, &qword_27DF09C58, &qword_2387646C8, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C48);
  }

  return result;
}

double sub_23845B7C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_23843980C(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_23845B800(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2384397FC(a1, a2, a3 & 1);
}

uint64_t __swift_get_extra_inhabitant_index_34Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_23845B960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23845B9D0()
{
  result = qword_27DF09C98;
  if (!qword_27DF09C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09CA0, &qword_238764768);
    sub_23845B4F0();
    sub_23845AFB4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C98);
  }

  return result;
}

unint64_t sub_23845BBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09CD8;
  if (!qword_27DF09CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09CD8);
  }

  return result;
}

uint64_t sub_23845BC48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23845BCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09D00;
  if (!qword_27DF09D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09D00);
  }

  return result;
}

unint64_t sub_23845BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09D08;
  if (!qword_27DF09D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09D08);
  }

  return result;
}

unint64_t sub_23845BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09D10;
  if (!qword_27DF09D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09D10);
  }

  return result;
}

uint64_t sub_23845BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ConsentManagementView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875A9F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_23875A9D0();
  objc_allocWithZone(type metadata accessor for BankConnectAccountConsentManagementViewController(0));
  (*(v8 + 16))(v6, v10, v7);
  v11 = sub_23875D080();
  (*(v8 + 8))(v10, v7);
  return v11;
}

id BankConnectAccountConsentManagementViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAccountConsentManagementViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountConsentManagementViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_23845C348()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_23845C47C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23845C4BC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_23845C56C(uint64_t a1)
{
  result = sub_23875A9F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23845C5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875A9F0();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1, v4);
  sub_23845C7DC(v6, a1);
  KeyPath = swift_getKeyPath(byte_238764AF8);
  v9 = sub_238758890();
  v10 = sub_238758880();
  v19[3] = v9;
  v19[4] = MEMORY[0x277CC70D0];
  v19[0] = v10;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DB8, &qword_238764B20) + 36));
  sub_23845C998(v19, (v11 + 1));
  *v11 = KeyPath;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = swift_getKeyPath(byte_238764B28);
  v19[0] = sub_238758880();
  v13 = sub_238758A30();

  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DC0, &qword_238764B58) + 36));
  *v14 = v12;
  v14[1] = v13;
  v15 = swift_getKeyPath("pC{E");
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DC8, &qword_238764B88) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90);
  result = sub_23875C120();
  *v16 = v15;
  return result;
}

uint64_t sub_23845C7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AccountConsentManagementViewFetchingWrapper(0) + 20);
  *(a2 + v4) = swift_getKeyPath("pC{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_238759780();
  v5 = sub_238759710();
  v6 = MEMORY[0x23EE5E1A0](a1);
  [v5 setPredicate_];

  [v5 setFetchBatchSize_];
  [v5 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763E70;
  sub_23845CA1C();
  swift_getKeyPath("0C{E");
  *(v7 + 32) = sub_23875F040();
  v8 = sub_23875EC60();

  [v5 setSortDescriptors_];

  sub_23875C4F0();
  v9 = sub_23875A9F0();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

uint64_t sub_23845C998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23845CA1C()
{
  result = qword_27DF09960;
  if (!qword_27DF09960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF09960);
  }

  return result;
}

void sub_23845CA9C(uint64_t a1)
{
  sub_23845CB80(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
  if (v1 <= 0x3F)
  {
    sub_23845CB80(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23845CB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23845CBE4()
{
  result = qword_27DF09E30;
  if (!qword_27DF09E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09DC8, &qword_238764B88);
    sub_23845CC9C();
    sub_23843A3E8(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09E30);
  }

  return result;
}

unint64_t sub_23845CC9C()
{
  result = qword_27DF09E38;
  if (!qword_27DF09E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09DC0, &qword_238764B58);
    sub_23845CD54();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09E38);
  }

  return result;
}

unint64_t sub_23845CD54()
{
  result = qword_27DF09E40;
  if (!qword_27DF09E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09DB8, &qword_238764B20);
    sub_23845D50C(&qword_27DF09E48, type metadata accessor for AccountConsentManagementViewFetchingWrapper, &unk_238764C20);
    sub_23843A3E8(&qword_27DF09E50, &unk_27DF09E58, &unk_238764C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09E40);
  }

  return result;
}

void *sub_23845CE58@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for AccountConsentManagementViewFetchingWrapper(0);
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E78, &unk_238764C70);
  MEMORY[0x28223BE20](v27);
  v5 = (&v23 - v4);
  v6 = sub_238758680();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AccountConsentManagementView(0);
  MEMORY[0x28223BE20](v28);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  if (v32 == v30[0])
  {
    (*(v11 + 8))(v13, v10);
    v14 = v25;
    sub_23845D634(v1, v25, type metadata accessor for AccountConsentManagementViewFetchingWrapper);
    v15 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v16 = swift_allocObject();
    sub_23845D69C(v14, v16 + v15);
    *v5 = sub_23845D700;
    v5[1] = v16;
    v5[2] = 0;
    v5[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23845D50C(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView, &protocol conformance descriptor for AccountConsentManagementView);
    sub_23845D554();
    return sub_23875D1B0();
  }

  else
  {
    v18 = sub_23875EF20();
    v20 = *v19;
    v18(v30, 0);
    (*(v11 + 8))(v13, v10);
    v21 = v20;
    sub_238758690();
    LOBYTE(v32) = 1;
    sub_23875E330();
    v22 = v26;
    AccountConsentManagementView.init(account:dismissedMismatchedAccountSettingsTile:)(v8, v30[0], v30[1], v31, v26);
    sub_23845D634(v22, v5, type metadata accessor for AccountConsentManagementView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23845D50C(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView, &protocol conformance descriptor for AccountConsentManagementView);
    sub_23845D554();
    sub_23875D1B0();

    return sub_23845D5D8(v22);
  }
}

uint64_t sub_23845D350()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccountConsentManagementViewFetchingWrapper(0);
  sub_2384D5160(v3);
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2383F8000, v4, v5, "Selected account was not found in the store.", v6, 2u);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_23845D50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23845D554()
{
  result = qword_27DF09EA0;
  if (!qword_27DF09EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09E90, &qword_238764C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09EA0);
  }

  return result;
}

uint64_t sub_23845D5D8(uint64_t a1)
{
  v2 = type metadata accessor for AccountConsentManagementView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23845D634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23845D69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementViewFetchingWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23845D700()
{
  type metadata accessor for AccountConsentManagementViewFetchingWrapper(0);

  return sub_23845D350();
}

unint64_t sub_23845D760()
{
  result = qword_27DF09EA8;
  if (!qword_27DF09EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF09EB0, &qword_238764C88);
    sub_23845D50C(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView, &protocol conformance descriptor for AccountConsentManagementView);
    sub_23845D554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09EA8);
  }

  return result;
}

id sub_23845D87C()
{
  sub_238758890();
  sub_238758880();
  v0 = sub_238758870();

  Controller = type metadata accessor for ApplePayOrderFetchController();
  v2 = objc_allocWithZone(Controller);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI28ApplePayOrderFetchController_store] = v0;
  v4.receiver = v2;
  v4.super_class = Controller;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_23845D998(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875C1E0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23845DA68, 0, 0);
}

uint64_t sub_23845DA68(uint64_t a1)
{
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[5];
    v4 = v1[3];
    v5 = sub_238757FF0();
    v6 = [v5 viewContext];

    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v2;
    v7[4] = v6;
    v7[5] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EC8, &qword_238764C98);
    sub_23875F120();

    v15 = v1[2];
  }

  else
  {
    sub_23875C180();
    v8 = sub_23875C1B0();
    v9 = sub_23875EFE0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[9];
    v12 = v1[6];
    v13 = v1[7];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2383F8000, v8, v9, "TransactionId does not exist for this transaction", v14, 2u);
      MEMORY[0x23EE64DF0](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);
    v15 = 0;
  }

  v16 = v1[1];

  return v16(v15);
}

void sub_23845DD68(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  sub_238757DF0();
  v8 = sub_238757D70();
  if (!v4)
  {
    if (v8 >> 62)
    {
      v16 = v8;
      v17 = sub_23875F3A0();
      v8 = v16;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE63F70](0);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 ecommerceOrderContent];
      if (v11)
      {
        v12 = v11;
        v13 = sub_238462008(v10, v11);
        v14 = sub_2384622F4(v10, v12, a1, a2);
        v15 = [objc_allocWithZone(FKApplePayRowViewModelCollection) initWithOrderRowViewModel:v13 barcodeRowViewModel:0 receiptRowViewModel:v14];
      }

      else
      {
        v15 = [objc_allocWithZone(FKApplePayRowViewModelCollection) init];
      }

      goto LABEL_12;
    }

    v15 = [objc_allocWithZone(FKApplePayRowViewModelCollection) init];
LABEL_12:
    *a4 = v15;
  }
}

uint64_t sub_23845E0C0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_23875EA80();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23845E1A4;

  return sub_23845D998(a1, v7);
}

uint64_t sub_23845E1A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);

  if (v3)
  {
    v9 = sub_23875B720();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_23845E35C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v5 = sub_23875BC40();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v42 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F40, &qword_238764DC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_23875D990();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ApplePayOrderRow(0);
  v17 = v16[5];
  v18 = sub_23875B0A0();
  v19 = *(v18 - 8);
  v46 = *(v19 + 56);
  v47 = v17;
  v44 = v18;
  v45 = v19 + 56;
  v46(a3 + v17, 1, 1);
  v49 = 0x4046800000000000;
  v20 = (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  sub_23845A940(v20, v21, v22);
  sub_23875C540();
  v23 = v16[8];
  *(a3 + v23) = swift_getKeyPath(" B{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v24 = sub_23875A4F0();
  v25 = *(v24 + 16);
  if (!v25)
  {

    a2;
    sub_238759060();
    v34 = sub_23875A5A0();
    if (v34 >> 62)
    {
      v35 = sub_23875F3A0();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + v16[6]) = v35;
    v36 = sub_2387598F0();
    (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
    goto LABEL_9;
  }

  v43 = a2;
  v26 = *(v24 + 32);
  v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);

  if (v25 == 1)
  {
    sub_238759910();
    v28 = [v43 createdDate];
    sub_23875BBE0();

    sub_2387590A0();
    v29 = sub_238759910();
    if (v29 >> 62)
    {
      v30 = sub_23875F3A0();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + v16[6]) = v30;
    *v8 = v26;
    v31 = *MEMORY[0x277CC7B30];
    v32 = sub_2387598F0();
    v33 = *(v32 - 8);
    (*(v33 + 104))(v8, v31, v32);
    (*(v33 + 56))(v8, 0, 1, v32);
LABEL_9:
    sub_23875B080();
    (v46)(v11, 0, 1, v44);
    return sub_2384628F8(v11, a3 + v47);
  }

  v38 = v43;
  sub_238759060();
  v39 = sub_23875A5A0();
  if (v39 >> 62)
  {
    v40 = sub_23875F3A0();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a3 + v16[6]) = v40;
  v41 = v47;
  sub_238439884(a3 + v47, &qword_27DF09F40, &qword_238764DC8);
  return (v46)(a3 + v41, 1, 1, v44);
}

uint64_t sub_23845E8C4(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F20, &qword_238764DB8);
  v4[4] = sub_23843A3E8(&qword_27DF09F28, &qword_27DF09F20, &qword_238764DB8, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v4);
  type metadata accessor for ApplePayOrderRow(0);
  sub_2384627BC(&qword_27DF09F30, type metadata accessor for ApplePayOrderRow, &unk_238764E44);
  sub_23875D450();
  MEMORY[0x23EE63B10](v4);
}

uint64_t sub_23845EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238462CEC(a1, a2, type metadata accessor for ApplePayOrderRow);
}

uint64_t sub_23845EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF8, &qword_238764DB0);
  v7[4] = sub_23843A3E8(&qword_27DF09F00, &qword_27DF09EF8, &qword_238764DB0, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v7);
  type metadata accessor for ApplePayReceiptRow(0);
  sub_2384627BC(&qword_27DF09F08, type metadata accessor for ApplePayReceiptRow, &unk_238764E94);
  sub_23875D450();
  MEMORY[0x23EE63B10](v7);
}

uint64_t sub_23845ECCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875A710();
  (*(*(v9 - 8) + 16))(a5, a1, v9);
  v10 = type metadata accessor for ApplePayReceiptRow(0);
  v11 = (a5 + *(v10 + 20));
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5 + *(v10 + 24));
  type metadata accessor for ApplePayReceiptRowModel(0);
  sub_2384627BC(&qword_27DF09F10, type metadata accessor for ApplePayReceiptRowModel, &unk_238764CF8);

  v13 = sub_23875C7A0();
  v15 = v14;

  *v12 = v13;
  v12[1] = v15;
  return result;
}

uint64_t sub_23845EE38(uint64_t a1)
{
  swift_getKeyPath(byte_238764D30);
  swift_getKeyPath(byte_238764D58);

  return sub_23875C2E0();
}

id ApplePayOrderFetchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePayOrderFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23845EEF0()
{
  swift_getKeyPath(byte_238764D30);
  swift_getKeyPath(byte_238764D58);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23845EF64()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUIP33_A0204AFFABB04678ACF84C566797848323ApplePayReceiptRowModel__isReceiptPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23845F00C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ApplePayReceiptRowModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_23845F04C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = type metadata accessor for ApplePayReceiptRow(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_23845F390(v19);
  v15 = v19[1];
  v16 = v19[0];
  v14 = v20;
  v17 = v21;
  type metadata accessor for ApplePayReceiptRowModel(0);
  sub_2384627BC(&qword_27DF09F10, type metadata accessor for ApplePayReceiptRowModel, &unk_238764CF8);
  sub_23875C7B0();
  swift_getKeyPath(byte_238764D30);
  sub_23875C7C0();

  sub_238462CEC(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ApplePayReceiptRow);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_238462D54(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for ApplePayReceiptRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F80, &qword_238764EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F88, &qword_238764EF0);
  sub_238462E2C();
  sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0, MEMORY[0x277CDD978]);
  v8 = v18;
  sub_23875DED0();

  sub_2384397FC(v16, v15, v14);

  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FA0, &qword_238764EF8) + 36);
  v10 = sub_23875A710();
  (*(*(v10 - 8) + 16))(v9, v2, v10);
  v11 = v9 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
  result = swift_getKeyPath(byte_238764F00);
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_23845F390@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  sub_23875DFC0();
  v14 = sub_23875DA10();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v10, v12, v4 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_23845F594@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_238764D30);
  swift_getKeyPath(byte_238764D58);
  sub_23875C2D0();

  *a2 = v4;
  return result;
}

uint64_t sub_23845F614(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_238764D30);
  swift_getKeyPath(byte_238764D58);

  return sub_23875C2E0();
}

uint64_t sub_23845F688(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_238462EB0(v2, v3, v4);
  sub_23875C790();
}

uint64_t sub_23845F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for ApplePayReceiptRow(0) + 20));
  v5 = v4[1];
  *a2 = *v4;
  *(a2 + 8) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB0, &qword_238766040);
  sub_23875E1A0();
  *(a2 + 16) = v7;
  *(a2 + 32) = swift_getKeyPath(byte_238764F30);
  *(a2 + 72) = 0;
}

uint64_t sub_23845F874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v108 = a2;
  v91 = sub_23875B1B0();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F40, &qword_238764DC8);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v88 - v4;
  v5 = sub_23875DA00();
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x28223BE20](v5);
  v100 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C880();
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v97 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE40();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BE20();
  MEMORY[0x28223BE20](v12 - 8);
  v111 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875BD20();
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2387595E0();
  MEMORY[0x28223BE20](v16 - 8);
  v109 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2387590C0();
  MEMORY[0x28223BE20](v18);
  v19 = sub_2387590B0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v96);
  v107 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - v25;
  MEMORY[0x28223BE20](v27);
  v105 = &v88 - v28;
  sub_23875ED50();
  v106 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v101;
  (*(v20 + 16))(v22, v101, v19);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_2384627BC(&qword_27DF0A030, MEMORY[0x277CC7708], MEMORY[0x277CC76E8]);
  sub_2384627BC(&qword_27DF0A038, MEMORY[0x277CC76F0], MEMORY[0x277CC76F8]);
  v30 = sub_23875DA80();
  v32 = v31;
  v88 = v11;
  v34 = v33;
  sub_23875D820();
  v94 = sub_23875DA60();
  v93 = v35;
  v92 = v36;
  v95 = v37;

  sub_2384397FC(v30, v32, v34 & 1);

  v38 = type metadata accessor for ApplePayOrderRow(0);
  v39 = v97;
  sub_2384D5138(v97);
  LOBYTE(v30) = sub_23875C860();
  (*(v98 + 8))(v39, v99);
  if (v30)
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

  KeyPath = swift_getKeyPath("HA{E");
  v43 = v102;
  v42 = v103;
  if (*(v29 + *(v38 + 24)) <= 1)
  {
    v44 = MEMORY[0x277CE0B28];
  }

  else
  {
    v44 = MEMORY[0x277CE0B30];
  }

  v45 = v100;
  (*(v102 + 104))(v100, *v44, v103);
  v46 = swift_getKeyPath(" A{E");
  v47 = &v26[*(v96 + 36)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0);
  (*(v43 + 32))(v47 + *(v48 + 28), v45, v42);
  *v47 = v46;
  v49 = v93;
  *v26 = v94;
  *(v26 + 1) = v49;
  v26[16] = v92 & 1;
  *(v26 + 3) = v95;
  *(v26 + 4) = KeyPath;
  *(v26 + 5) = v40;
  v26[48] = 0;
  v50 = v105;
  sub_238462F04(v26, v105);
  v51 = v104;
  sub_23843981C(v29 + *(v38 + 20), v104, &qword_27DF09F40, &qword_238764DC8);
  v52 = sub_23875B0A0();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_238439884(v51, &qword_27DF09F40, &qword_238764DC8);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v54 = qword_2814F1B90;
    v55 = sub_23875EA50();
    v56 = sub_23875EA50();
    v57 = sub_23875EA50();
    v58 = [v54 localizedStringForKey:v55 value:v56 table:v57];

    v59 = sub_23875EA80();
    v61 = v60;
  }

  else
  {
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    sub_2387595B0();
    v65 = v89;
    sub_23875B1A0();
    sub_2384627BC(&qword_27DF0A050, MEMORY[0x277CC8560], MEMORY[0x277CC8558]);
    v66 = v91;
    sub_23875B090();
    (*(v90 + 8))(v65, v66);
    v62 = (*(v53 + 8))(v51, v52);
    v59 = v112;
    v61 = v113;
  }

  v112 = v59;
  v113 = v61;
  sub_2384397A8(v62, v63, v64);
  v67 = sub_23875DAA0();
  v69 = v68;
  v71 = v70;
  sub_23875D7F0();
  v72 = sub_23875DA60();
  v74 = v73;
  v76 = v75;

  sub_2384397FC(v67, v69, v71 & 1);

  LODWORD(v112) = sub_23875D440();
  v77 = sub_23875DA20();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_2384397FC(v72, v74, v76 & 1);

  v84 = v107;
  sub_23843981C(v50, v107, &qword_27DF0A028, &qword_238764FC0);
  v85 = v108;
  sub_23843981C(v84, v108, &qword_27DF0A028, &qword_238764FC0);
  v86 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A048, &qword_238765030) + 48);
  *v86 = v77;
  *(v86 + 8) = v79;
  v81 &= 1u;
  *(v86 + 16) = v81;
  *(v86 + 24) = v83;
  sub_23843980C(v77, v79, v81);

  sub_238439884(v50, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v77, v79, v81);

  sub_238439884(v84, &qword_27DF0A028, &qword_238764FC0);
}

uint64_t sub_2384603E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v82 = sub_23875D2C0();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v87 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v68 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FC8, &qword_238764F68);
  MEMORY[0x28223BE20](v85);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD0, &qword_238764F70);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = (&v68 - v11);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD8, &qword_238764F78);
  MEMORY[0x28223BE20](v75);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FE0, &qword_238764F80);
  MEMORY[0x28223BE20](v79);
  v17 = &v68 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FE8, &qword_238764F88);
  MEMORY[0x28223BE20](v81);
  v19 = &v68 - v18;
  v20 = sub_23875C880();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FF0, &unk_238764F90);
  MEMORY[0x28223BE20](v24 - 8);
  v84 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v89 = &v68 - v27;
  sub_23875ED50();
  v83 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ApplePayOrderRow(0);
  sub_2384D5138(v23);
  v28 = sub_23875C860();
  (*(v21 + 8))(v23, v20);
  if (v28)
  {
    *v19 = sub_23875D030();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A020, &qword_238764FB8);
    sub_238460E3C(a1, &v19[*(v29 + 44)]);
    sub_23843981C(v19, v17, &qword_27DF09FE8, &qword_238764F88);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0A008, &qword_27DF09FE8, &qword_238764F88, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0A010, &qword_27DF09FC8, &qword_238764F68, MEMORY[0x277CE14C0]);
    v30 = v89;
    sub_23875D1B0();
    v31 = v19;
    v32 = &qword_27DF09FE8;
    v33 = &qword_238764F88;
  }

  else
  {
    v73 = sub_23875E0D0();
    v72 = sub_23875E040();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
    sub_23875C550();
    sub_23875C550();
    sub_23875E4A0();
    sub_23875C5C0();
    v34 = v94;
    v69 = v96;
    v71 = v98;
    v70 = v99;
    v91 = v95;
    v90 = v97;
    v68 = sub_23875E010();
    v35 = sub_23875D780();
    v74 = v17;
    v36 = v91;
    v37 = v7;
    v38 = v90;
    v39 = &v15[*(v75 + 36)];
    v40 = *(sub_23875C980() + 20);
    v41 = *MEMORY[0x277CE0118];
    v42 = sub_23875CF50();
    (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
    __asm { FMOV            V0.2D, #4.0 }

    *v39 = _Q0;
    *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
    v48 = v72;
    *v15 = v73;
    *(v15 + 1) = v48;
    *(v15 + 2) = v34;
    v15[24] = v36;
    *(v15 + 25) = v93[0];
    *(v15 + 7) = *(v93 + 3);
    *(v15 + 4) = v69;
    v15[40] = v38;
    *(v15 + 41) = *v92;
    *(v15 + 11) = *&v92[3];
    v49 = v70;
    *(v15 + 6) = v71;
    *(v15 + 7) = v49;
    *(v15 + 8) = v68;
    v15[72] = v35;
    v50 = sub_23875D030();
    v51 = v78;
    *v78 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FF8, &qword_238764FA0);
    sub_23845F874(a1, v51 + *(v52 + 44));
    v53 = v76;
    sub_23843981C(v15, v76, &qword_27DF09FD8, &qword_238764F78);
    v54 = v77;
    sub_23843981C(v51, v77, &qword_27DF09FD0, &qword_238764F70);
    sub_23843981C(v53, v37, &qword_27DF09FD8, &qword_238764F78);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A000, &qword_238764FA8);
    sub_23843981C(v54, v37 + *(v55 + 48), &qword_27DF09FD0, &qword_238764F70);
    sub_238439884(v54, &qword_27DF09FD0, &qword_238764F70);
    sub_238439884(v53, &qword_27DF09FD8, &qword_238764F78);
    sub_23843981C(v37, v74, &qword_27DF09FC8, &qword_238764F68);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0A008, &qword_27DF09FE8, &qword_238764F88, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0A010, &qword_27DF09FC8, &qword_238764F68, MEMORY[0x277CE14C0]);
    v30 = v89;
    sub_23875D1B0();
    sub_238439884(v37, &qword_27DF09FC8, &qword_238764F68);
    sub_238439884(v51, &qword_27DF09FD0, &qword_238764F70);
    v31 = v15;
    v32 = &qword_27DF09FD8;
    v33 = &qword_238764F78;
  }

  sub_238439884(v31, v32, v33);
  v56 = v86;
  sub_23875D2B0();
  v57 = v84;
  sub_23843981C(v30, v84, &qword_27DF09FF0, &unk_238764F90);
  LOBYTE(v93[0]) = 1;
  v58 = v80;
  v59 = *(v80 + 16);
  v60 = v87;
  v61 = v82;
  v59(v87, v56, v82);
  v62 = v88;
  sub_23843981C(v57, v88, &qword_27DF09FF0, &unk_238764F90);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A018, &qword_238764FB0);
  v64 = v62 + *(v63 + 48);
  v65 = v93[0];
  *v64 = 0;
  *(v64 + 8) = v65;
  v59((v62 + *(v63 + 64)), v60, v61);
  v66 = *(v58 + 8);
  v66(v56, v61);
  sub_238439884(v89, &qword_27DF09FF0, &unk_238764F90);
  v66(v60, v61);
  sub_238439884(v57, &qword_27DF09FF0, &unk_238764F90);
}

uint64_t sub_238460E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD0, &qword_238764F70);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FD8, &qword_238764F78);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = sub_23875E0D0();
  v39 = sub_23875E040();
  type metadata accessor for ApplePayOrderRow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  sub_23875C550();
  sub_23875E4A0();
  sub_23875C5C0();
  v38 = a1;
  v13 = v49;
  v37 = v53;
  v35 = v51;
  v36 = v54;
  v46 = v50;
  v45 = v52;
  v14 = sub_23875E010();
  v15 = sub_23875D780();
  v16 = v46;
  v17 = v45;
  v18 = &v12[*(v8 + 36)];
  v19 = *(sub_23875C980() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_23875CF50();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #4.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  v27 = v39;
  *v12 = v40;
  *(v12 + 1) = v27;
  *(v12 + 2) = v13;
  v12[24] = v16;
  *(v12 + 25) = *v48;
  *(v12 + 7) = *&v48[3];
  *(v12 + 4) = v35;
  v12[40] = v17;
  *(v12 + 41) = *v47;
  *(v12 + 11) = *&v47[3];
  v28 = v36;
  *(v12 + 6) = v37;
  *(v12 + 7) = v28;
  *(v12 + 8) = v14;
  v12[72] = v15;
  *v7 = sub_23875D030();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FF8, &qword_238764FA0);
  sub_23845F874(v38, &v7[*(v29 + 44)]);
  v30 = v42;
  sub_23843981C(v12, v42, &qword_27DF09FD8, &qword_238764F78);
  v31 = v44;
  sub_23843981C(v7, v44, &qword_27DF09FD0, &qword_238764F70);
  v32 = v43;
  sub_23843981C(v30, v43, &qword_27DF09FD8, &qword_238764F78);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A000, &qword_238764FA8);
  sub_23843981C(v31, v32 + *(v33 + 48), &qword_27DF09FD0, &qword_238764F70);
  sub_238439884(v7, &qword_27DF09FD0, &qword_238764F70);
  sub_238439884(v12, &qword_27DF09FD8, &qword_238764F78);
  sub_238439884(v31, &qword_27DF09FD0, &qword_238764F70);
  sub_238439884(v30, &qword_27DF09FD8, &qword_238764F78);
}

uint64_t sub_23846128C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_23875CE60();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB8, &qword_238764F58);
  sub_2384603E8(v1, a1 + *(v3 + 44));

  v4 = sub_23875D000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FC0, &qword_238764F60);
  v6 = (a1 + *(result + 36));
  *v6 = v4;
  v6[1] = sub_23843480C;
  v6[2] = 0;
  return result;
}

void sub_238461390(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_2384613F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_23875EA50();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461390;
  aBlock[3] = &block_descriptor_0;
  v12 = _Block_copy(aBlock);
  v16[4] = a5;
  v16[5] = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_238461548;
  v16[3] = &block_descriptor_31;
  v13 = _Block_copy(v16);
  v14 = [v6 initWithReceiptName:v11 cellConfigurationHandler:v12 cellSelectionHandler:v13];
  _Block_release(v12);

  _Block_release(v13);

  return v14;
}

uint64_t sub_238461548(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_2384615AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238461BA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_238453DB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t dispatch thunk of ApplePayOrderFetchController.fetchAllRowViewModelsForTransaction(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384617DC;

  return v9(a1, a2);
}

uint64_t sub_2384617DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_238461900(uint64_t a1)
{
  sub_238461990();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_238461990()
{
  if (!qword_27DF09EE8)
  {
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09EE8);
    }
  }
}

uint64_t sub_2384619E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2384494A4;

  return sub_23845E0C0(v2, v3, v4);
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238461AD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_2386E64F0(a1, v4, v5, v6);
}

unint64_t sub_238461BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_238461CAC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23875F4B0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_238461CAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_238461CF8(a1, a2);
  sub_238461E28(&unk_284B24AA0);
  return v3;
}

void *sub_238461CF8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_238452334(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23875F4B0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23875EB80();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238452334(v10, 0);
        result = sub_23875F460();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_238461E28(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_238461F14(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_238461F14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09950, qword_238764060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_238462008(void *a1, void *a2)
{
  v4 = type metadata accessor for ApplePayOrderRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_23875A710();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757D40();
  sub_23845E35C(a1, a2, v10);
  sub_23875A6F0();
  sub_23875A6D0();
  sub_238462CEC(v10, v7, type metadata accessor for ApplePayOrderRow);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_238462D54(v7, v15 + v14, type metadata accessor for ApplePayOrderRow);
  v16 = objc_allocWithZone(FKApplePayOrderRowViewModel);
  v17 = sub_23875EA50();

  v18 = sub_23875EA50();

  aBlock[4] = sub_238462824;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461390;
  aBlock[3] = &block_descriptor_37;
  v19 = _Block_copy(aBlock);
  v20 = [v16 initWithOrderTypeIdentifier:v17 orderIdentifier:v18 fulfillmentIdentifier:0 cellConfigurationHandler:v19];

  _Block_release(v19);
  sub_238462894(v10);
  (*(v22 + 8))(v13, v23);

  return v20;
}

id sub_2384622F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  result = [a2 payment];
  if (result)
  {
    v14 = result;
    v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v7;
    v15 = sub_238758FC0();

    v49 = v6;
    v50 = v12;
    v45 = a1;
    v46 = v8;
    if (v15 >> 62)
    {
LABEL_19:
      v16 = sub_23875F3A0();
      if (v16)
      {
LABEL_4:
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x23EE63F70](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v18 applePayTransactionIdentifier];
          if (v21)
          {
            v22 = v21;
            v23 = sub_23875EA80();
            v25 = v24;

            v55 = v23;
            v56 = v25;
            v53 = v51;
            v54 = v52;
            sub_2384397A8(v26, v27, v28);
            v29 = sub_23875F270();

            if (!v29)
            {
              break;
            }
          }

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_20;
          }
        }

        v30 = [v19 receiptName];
        if (v30)
        {
          v31 = v30;
          v52 = sub_23875EA80();
          v33 = v32;

          v34 = v50;
          sub_238757D40();
          type metadata accessor for ApplePayReceiptRowModel(0);
          v35 = swift_allocObject();
          LOBYTE(v55) = 0;
          sub_23875C290();
          v36 = v47;
          v37 = v48;
          v38 = v49;
          (*(v48 + 16))(v47, v34, v49);
          v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
          v40 = (v46 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = swift_allocObject();
          (*(v37 + 32))(v41 + v39, v36, v38);
          v42 = (v41 + v40);
          v43 = v52;
          *v42 = v52;
          v42[1] = v33;
          *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
          objc_allocWithZone(FKApplePayReceiptRowViewModel);

          v44 = sub_2384613F8(v43, v33, sub_2384626C4, v41, sub_238462770, v35);

          (*(v37 + 8))(v50, v38);
          return v44;
        }

        return 0;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_4;
      }
    }

LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_2384626C4(uint64_t a1)
{
  v3 = *(sub_23875A710() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_23845EB1C(a1, v1 + v4, v9, v10, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2384627BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238462824(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplePayOrderRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23845E8C4(a1, v4);
}

uint64_t sub_238462894(uint64_t a1)
{
  v2 = type metadata accessor for ApplePayOrderRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384628F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F40, &qword_238764DC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_238462990(uint64_t a1)
{
  sub_2387590B0();
  if (v1 <= 0x3F)
  {
    sub_238462B08(319, &qword_27DF09F58, MEMORY[0x277CC8540], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_238462AAC(319, v2, v3);
      if (v4 <= 0x3F)
      {
        sub_238462B08(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238462AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27DF09F60)
  {
    sub_23845A940(0, a2, a3);
    v3 = sub_23875C560();
    if (!v4)
    {
      atomic_store(v3, &qword_27DF09F60);
    }
  }
}

void sub_238462B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238462B94(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    sub_238462C20(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238462C20(uint64_t a1)
{
  if (!qword_27DF09F78)
  {
    type metadata accessor for ApplePayReceiptRowModel(255);
    sub_2384627BC(&qword_27DF09F10, type metadata accessor for ApplePayReceiptRowModel, &unk_238764CF8);
    v1 = sub_23875C7D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF09F78);
    }
  }
}

uint64_t sub_238462CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238462D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238462DBC()
{
  v1 = *(type metadata accessor for ApplePayReceiptRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23845F688(v2);
}

unint64_t sub_238462E2C()
{
  result = qword_27DF09F90;
  if (!qword_27DF09F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F80, &qword_238764EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09F90);
  }

  return result;
}

unint64_t sub_238462EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09FA8;
  if (!qword_27DF09FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09FA8);
  }

  return result;
}

uint64_t sub_238462F04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238462F74()
{
  result = qword_27DF0A058;
  if (!qword_27DF0A058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09FA0, &qword_238764EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F80, &qword_238764EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F88, &qword_238764EF0);
    sub_238462E2C();
    sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0, MEMORY[0x277CDD978]);
    swift_getOpaqueTypeConformance2();
    sub_2384627BC(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A058);
  }

  return result;
}

unint64_t sub_2384630CC()
{
  result = qword_27DF0A068;
  if (!qword_27DF0A068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09FC0, &qword_238764F60);
    sub_238463158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A068);
  }

  return result;
}

unint64_t sub_238463158()
{
  result = qword_27DF0A070;
  if (!qword_27DF0A070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A078, &qword_238765038);
    sub_23843A3E8(&qword_27DF0A080, &qword_27DF0A088, &qword_238765040, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A070);
  }

  return result;
}

uint64_t type metadata accessor for AccountLogo(uint64_t a1)
{
  result = qword_27DF0A098;
  if (!qword_27DF0A098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23846328C(uint64_t a1)
{
  sub_238758A00();
  if (v1 <= 0x3F)
  {
    sub_2384633E8(319, &qword_27DF0A0A8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2384633E8(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2384563A4(319, &qword_27DF0A0B8, &qword_27DF0A0C0, &qword_238771EF0);
        if (v4 <= 0x3F)
        {
          sub_2384563A4(319, &qword_27DF0A0C8, &qword_27DF09540, &unk_238763800);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384633E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_238463454()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AccountLogo(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_23875EFF0();
  v8 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();
  sub_2384348B8(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

id sub_2384635B0(double a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_23875B940();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238758A00();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v4, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277CC7158])
  {
    return 0;
  }

  if (v14 == *MEMORY[0x277CC7170] || v14 == *MEMORY[0x277CC7178] || v14 == *MEMORY[0x277CC7168])
  {
    result = PKPassKitUIBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_23875EA50();

      v18 = sub_23875EA50();
      v19 = [v16 URLForResource:v17 withExtension:v18];

      if (v19)
      {
        sub_23875B8B0();

        v20 = sub_23875B860();
        (*(v6 + 8))(v8, v5);
      }

      else
      {
        v20 = 0;
      }

      v21 = PKUIImageFromPDF();

      return v21;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v14 == *MEMORY[0x277CC7160])
    {
      return 0;
    }

    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return result;
}

void *sub_2384638EC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0D0, &qword_2387650B8);
  MEMORY[0x28223BE20](v51);
  v4 = &v46 - v3;
  v5 = type metadata accessor for AccountLogo(0);
  v47 = *(v5 - 1);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0D8, &qword_2387650C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0E0, &qword_2387650C8);
  MEMORY[0x28223BE20](v46);
  v11 = &v46 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0E8, &qword_2387650D0);
  MEMORY[0x28223BE20](v50);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - v15;
  v16 = sub_238758A00();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v2, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277CC7158])
  {
    goto LABEL_2;
  }

  if (v21 != *MEMORY[0x277CC7170] && v21 != *MEMORY[0x277CC7178] && v21 != *MEMORY[0x277CC7168])
  {
    if (v21 != *MEMORY[0x277CC7160])
    {
      (*(v17 + 8))(v20, v16);
    }

LABEL_2:
    v22 = (v2 + v5[5]);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v2 + v5[6]);
    KeyPath = swift_getKeyPath(byte_2387650D8);
    v55 = 0;
    v53 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    sub_23875E1A0();
    v27 = v54;
    v28 = v55;
    *v4 = v24;
    *(v4 + 1) = v23;
    v4[16] = v25;
    *(v4 + 3) = 0x3FB999999999999ALL;
    *(v4 + 4) = KeyPath;
    v4[40] = v28;
    *(v4 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    v29 = sub_238464754();
    sub_2384648F0(v29, v30, v31);
    return sub_23875D1B0();
  }

  *v9 = sub_23875D020();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A110, &qword_238765108);
  sub_238463EF0(v2, &v9[*(v33 + 44)]);
  v34 = v2 + v5[8];
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v54) = v35;
  *(&v54 + 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  if (v53)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  sub_2384396E4(v9, v11, &qword_27DF0A0D8, &qword_2387650C0);
  *&v11[*(v46 + 36)] = v37;
  v38 = v49;
  sub_238464944(v2, v49);
  v39 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v40 = swift_allocObject();
  sub_238464CAC(v38, v40 + v39, type metadata accessor for AccountLogo);
  v41 = &v13[*(v50 + 36)];
  sub_23875C6E0();
  sub_23875ED60();
  *v41 = &unk_238765118;
  *(v41 + 1) = v40;
  sub_2384396E4(v11, v13, &qword_27DF0A0E0, &qword_2387650C8);
  v42 = v48;
  sub_2384396E4(v13, v48, &qword_27DF0A0E8, &qword_2387650D0);
  sub_23843981C(v42, v4, &qword_27DF0A0E8, &qword_2387650D0);
  swift_storeEnumTagMultiPayload();
  v43 = sub_238464754();
  sub_2384648F0(v43, v44, v45);
  sub_23875D1B0();
  return sub_238439884(v42, &qword_27DF0A0E8, &qword_2387650D0);
}

uint64_t sub_238463EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v38 = sub_23875C980();
  MEMORY[0x28223BE20](v38);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875E0E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A128, &qword_2387660A0);
  MEMORY[0x28223BE20](v42);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A130, &qword_238765120);
  MEMORY[0x28223BE20](v40);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A138, &qword_238765128);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for AccountLogo(0);
  v18 = v39;
  v46 = *(v39 + *(v17 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1B0();
  if (v45)
  {
    v36 = v45;
    sub_23875E0C0();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v35 = sub_23875E150();

    (*(v5 + 8))(v7, v4);
    v19 = *(v18 + *(v17 + 24));
    sub_23875E4A0();
    sub_23875C5C0();
    LOBYTE(v45) = 1;
    *&v44[6] = v46;
    *&v44[22] = v47;
    *&v44[38] = v48;
    v20 = qword_238765168[v19];
    v21 = *(v38 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_23875CF50();
    (*(*(v23 - 8) + 104))(&v3[v21], v22, v23);
    *v3 = v20;
    *(v3 + 1) = v20;
    v24 = &v9[*(v42 + 36)];
    sub_238464CAC(v3, v24, MEMORY[0x277CDFC08]);
    *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    v25 = *&v44[16];
    *(v9 + 18) = *v44;
    *v9 = v35;
    *(v9 + 1) = 0;
    *(v9 + 8) = 1;
    *(v9 + 34) = v25;
    *(v9 + 50) = *&v44[32];
    *(v9 + 8) = *&v44[46];
    v26 = v37;
    sub_2384396E4(v9, v37, &qword_27DF0A128, &qword_2387660A0);
    sub_23843981C(v26, v13, &qword_27DF0A128, &qword_2387660A0);
    swift_storeEnumTagMultiPayload();
    v27 = sub_238464A90();
    sub_238464C58(v27, v28, v29);
    sub_23875D1B0();

    sub_238439884(v26, &qword_27DF0A128, &qword_2387660A0);
  }

  else
  {
    *v13 = *(v18 + *(v17 + 24));
    swift_storeEnumTagMultiPayload();
    v30 = sub_238464A90();
    sub_238464C58(v30, v31, v32);
    sub_23875D1B0();
  }

  sub_2384396E4(v16, v43, &qword_27DF0A138, &qword_238765128);
}

uint64_t sub_238464490(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_23875ED50();
  *(v1 + 48) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238464528, v3, v2);
}

uint64_t sub_238464528()
{
  v1 = *(v0 + 40);

  v2 = type metadata accessor for AccountLogo(0);
  v3 = dbl_238765198[*(v1 + *(v2 + 24))];
  v4 = *(v0 + 40);
  v5 = sub_238463454();
  v6 = sub_2384635B0(v3, v3, v5);
  *(v0 + 16) = *(v4 + *(v2 + 40));
  *(v0 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1C0();
  *(swift_task_alloc() + 16) = v4;
  sub_23875E500();
  sub_23875C6F0();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_238464660()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccountLogo(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

unint64_t sub_238464754()
{
  result = qword_27DF0A0F0;
  if (!qword_27DF0A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A0E8, &qword_2387650D0);
    sub_2384647E0();
    sub_238464898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A0F0);
  }

  return result;
}

unint64_t sub_2384647E0()
{
  result = qword_27DF0A0F8;
  if (!qword_27DF0A0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A0E0, &qword_2387650C8);
    sub_23843A3E8(&qword_27DF0A100, &qword_27DF0A0D8, &qword_2387650C0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A0F8);
  }

  return result;
}

unint64_t sub_238464898()
{
  result = qword_27DF08DC8;
  if (!qword_27DF08DC8)
  {
    sub_23875C6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DC8);
  }

  return result;
}

unint64_t sub_2384648F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A108;
  if (!qword_27DF0A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A108);
  }

  return result;
}

uint64_t sub_238464944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLogo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384649A8()
{
  v2 = *(type metadata accessor for AccountLogo(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_238464490(v0 + v3);
}

unint64_t sub_238464A90()
{
  result = qword_27DF0A140;
  if (!qword_27DF0A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A128, &qword_2387660A0);
    sub_238464B48();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A140);
  }

  return result;
}

unint64_t sub_238464B48()
{
  result = qword_27DF0A148;
  if (!qword_27DF0A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A150, &unk_238766130);
    sub_238464BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A148);
  }

  return result;
}

unint64_t sub_238464BD4()
{
  result = qword_27DF0A158;
  if (!qword_27DF0A158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A160, &unk_23876F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A158);
  }

  return result;
}

unint64_t sub_238464C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A168;
  if (!qword_27DF0A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A168);
  }

  return result;
}

uint64_t sub_238464CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_238464D14()
{
  result = qword_27DF0A170;
  if (!qword_27DF0A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A178, &qword_238765130);
    v3 = sub_238464754();
    sub_2384648F0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A170);
  }

  return result;
}

uint64_t type metadata accessor for AccountConsentManagementBalanceHistoryView(uint64_t a1)
{
  result = qword_27DF0A188;
  if (!qword_27DF0A188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238464E14(uint64_t a1)
{
  sub_238464EC8(319);
  if (v1 <= 0x3F)
  {
    sub_238464F2C(319);
    if (v2 <= 0x3F)
    {
      sub_238757AD0();
      if (v3 <= 0x3F)
      {
        sub_238759550();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238464EC8(uint64_t a1)
{
  if (!qword_27DF0A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A1A0, &qword_238765210);
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0A198);
    }
  }
}

void sub_238464F2C(uint64_t a1)
{
  if (!qword_27DF0A1A8)
  {
    sub_23875A7A0();
    v1 = sub_23875C520();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0A1A8);
    }
  }
}

uint64_t sub_238464FA0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1B0, &qword_238765268);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1B8, &qword_238765270);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1C0, &qword_238765278);
  sub_238466FF4();
  sub_23875D9C0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v32 = v14;
  v33 = v16;
  sub_2384397A8(v17, v18, v19);
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v12) = v23;
  v24 = sub_23843A3E8(&qword_27DF0A1E0, &qword_27DF0A1B0, &qword_238765268, MEMORY[0x277CDE5A0]);
  sub_23875DC60();
  sub_2384397FC(v20, v22, v12 & 1);

  (*(v3 + 8))(v5, v2);
  v32 = v2;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_23875DE00();
  return (*(v28 + 8))(v8, v25);
}

uint64_t sub_238465324(uint64_t a1)
{
  v2 = type metadata accessor for AccountConsentManagementBalanceHistoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1E8, &qword_238765288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A180, &unk_2387651D0);
  sub_23875C500();
  sub_23852F140(v8);
  v10 = v9;
  sub_238439884(v8, &qword_27DF0A1E8, &qword_238765288);
  v15[1] = v10;
  swift_getKeyPath(byte_238765290);
  sub_2384670A4(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_238467108(v5, v12 + v11);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_23846716C;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1F0, &qword_2387652C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1D8, &qword_238765280);
  sub_23843A3E8(&qword_27DF0A1F8, &qword_27DF0A1F0, &qword_2387652C8, MEMORY[0x277D83980]);
  sub_2384673C0(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23843A3E8(&qword_27DF0A1D0, &qword_27DF0A1D8, &qword_238765280, MEMORY[0x277CE14C0]);
  sub_23875E370();
}

uint64_t sub_238465668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a3;
  v118 = a1;
  v135 = a4;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A208, &unk_2387652D0);
  v136 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v119 = v110 - v5;
  v6 = sub_238757AD0();
  v115 = *(v6 - 8);
  v116 = v6;
  MEMORY[0x28223BE20](v6);
  v114 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v110 - v11;
  v13 = sub_23875BC40();
  v124 = *(v13 - 8);
  v125 = v13;
  MEMORY[0x28223BE20](v13);
  v121 = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = v110 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A210, &unk_2387652E0);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v110 - v20;
  v22 = sub_2387591B0();
  v137 = *(v22 - 8);
  v138 = v22;
  MEMORY[0x28223BE20](v22);
  v123 = v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v122 = v110 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v26 - 8);
  v128 = v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v110 - v29;
  v141 = sub_238758090();
  v31 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v127 = v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v126 = v110 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A218, &qword_2387652F0);
  MEMORY[0x28223BE20](v35 - 8);
  v134 = v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v133 = v110 - v38;
  MEMORY[0x28223BE20](v39);
  v131 = v110 - v40;
  MEMORY[0x28223BE20](v41);
  v139 = v110 - v42;
  sub_23875ED50();
  v132 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875A740();
  v43 = *(v31 + 48);
  v44 = v141;
  v45 = v43(v30, 1, v141);
  v130 = v31;
  if (v45 == 1)
  {
    sub_238439884(v30, &unk_27DF0B080, &unk_2387662A0);
    v46 = v140;
LABEL_10:
    v57 = *(v136 + 56);
    v58 = v139;
    v57(v139, 1, 1, v46);
    v59 = v128;
    v60 = v129;
    goto LABEL_11;
  }

  v112 = v43;
  v47 = v126;
  (*(v31 + 32))(v126, v30, v44);
  sub_23875A790();
  v48 = v137;
  v49 = v138;
  if ((*(v137 + 48))(v21, 1, v138) == 1)
  {
    (*(v31 + 8))(v47, v44);
    v50 = &qword_27DF0A210;
    v51 = &unk_2387652E0;
    v52 = v21;
LABEL_9:
    sub_238439884(v52, v50, v51);
    v46 = v140;
    v43 = v112;
    goto LABEL_10;
  }

  v53 = v122;
  (*(v48 + 32))(v122, v21, v49);
  v54 = v48;
  sub_23875A760();
  v56 = v124;
  v55 = v125;
  if ((*(v124 + 48))(v12, 1, v125) == 1)
  {
    (*(v54 + 8))(v53, v49);
    (*(v130 + 8))(v126, v141);
    v50 = &qword_27DF12E00;
    v51 = &unk_238763FC0;
    v52 = v12;
    goto LABEL_9;
  }

  v110[1] = a2;
  (*(v56 + 32))(v120, v12, v55);
  v111 = type metadata accessor for AccountConsentManagementBalanceHistoryView(0);
  v81 = v114;
  v80 = v115;
  v82 = v116;
  (*(v115 + 104))(v114, *MEMORY[0x277CC6B50], v116);
  sub_2384673C0(&qword_27DF0A228, MEMORY[0x277CC6B60], MEMORY[0x277CC6B78]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v80 + 8))(v81, v82);
  sub_238759530();
  v111 = v83;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v84 = qword_2814F1B90;
  v85 = sub_23875EA50();

  v86 = sub_23875EA50();
  v87 = sub_23875EA50();
  v88 = [v84 localizedStringForKey:v85 value:v86 table:v87];

  v89 = sub_23875EA80();
  v91 = v90;

  v92 = sub_23875D030();
  LOBYTE(v143) = 1;
  sub_238466AC8(v89, v91, &v165);
  v153 = v171;
  v154 = v172;
  v149 = v167;
  v150 = v168;
  v151 = v169;
  v152 = v170;
  v147 = v165;
  v148 = v166;
  v162 = v171;
  v163 = v172;
  v158 = v167;
  v159 = v168;
  v160 = v169;
  v161 = v170;
  v155 = v173;
  v164 = v173;
  v156 = v165;
  v157 = v166;
  sub_23843981C(&v147, &v144, &qword_27DF0A230, &qword_238765300);
  sub_238439884(&v156, &qword_27DF0A230, &qword_238765300);

  *(&v142[6] + 7) = v153;
  *(&v142[5] + 7) = v152;
  *(&v142[2] + 7) = v149;
  *(&v142[1] + 7) = v148;
  *(&v142[7] + 7) = v154;
  *(&v142[8] + 7) = v155;
  *(&v142[3] + 7) = v150;
  *(&v142[4] + 7) = v151;
  *(v142 + 7) = v147;
  *(&v145[5] + 1) = v142[5];
  *(&v145[6] + 1) = v142[6];
  *(&v145[7] + 1) = v142[7];
  v145[8] = *(&v142[7] + 15);
  *(&v145[1] + 1) = v142[1];
  *(&v145[2] + 1) = v142[2];
  *(&v145[3] + 1) = v142[3];
  *(&v145[4] + 1) = v142[4];
  v144 = v92;
  LOBYTE(v145[0]) = v143;
  *(v145 + 1) = v142[0];
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  sub_23875F470();

  *&v165 = 0xD00000000000001ELL;
  *(&v165 + 1) = 0x80000002387866A0;
  v143 = v118;
  v93 = sub_23875F600();
  MEMORY[0x23EE63650](v93);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A238, &qword_238765308);
  sub_23843A3E8(&qword_27DF0A240, &qword_27DF0A238, &qword_238765308, MEMORY[0x277CE1198]);
  v94 = v119;
  sub_23875DE00();

  v171 = v145[5];
  v172 = v145[6];
  v173 = v145[7];
  v174 = v145[8];
  v167 = v145[1];
  v168 = v145[2];
  v169 = v145[3];
  v170 = v145[4];
  v165 = v144;
  v166 = v145[0];
  sub_238439884(&v165, &qword_27DF0A238, &qword_238765308);
  (*(v137 + 8))(v122, v138);
  (*(v130 + 8))(v126, v141);
  (*(v124 + 8))(v120, v125);
  v95 = v94;
  v58 = v139;
  sub_238467224(v95, v139);
  v57 = *(v136 + 56);
  v57(v58, 0, 1, v140);
  v59 = v128;
  v60 = v129;
  v43 = v112;
LABEL_11:
  sub_23875A720();
  v61 = v141;
  if (v43(v59, 1, v141) == 1)
  {
    sub_238439884(v59, &unk_27DF0B080, &unk_2387662A0);
LABEL_18:
    v74 = v131;
    v57(v131, 1, 1, v140);
    goto LABEL_19;
  }

  v129 = v57;
  v62 = v130;
  v63 = v127;
  (*(v130 + 32))(v127, v59, v61);
  v64 = v61;
  sub_23875A780();
  v65 = v137;
  v66 = v60;
  v67 = v60;
  v68 = v138;
  if ((*(v137 + 48))(v66, 1, v138) == 1)
  {
    (*(v62 + 8))(v63, v64);
    sub_238439884(v67, &qword_27DF0A210, &unk_2387652E0);
LABEL_17:
    v57 = v129;
    goto LABEL_18;
  }

  v69 = v123;
  (*(v65 + 32))(v123, v67, v68);
  v70 = v113;
  v71 = v65;
  sub_23875A750();
  v73 = v124;
  v72 = v125;
  if ((*(v124 + 48))(v70, 1, v125) == 1)
  {
    (*(v71 + 8))(v69, v68);
    (*(v130 + 8))(v127, v141);
    sub_238439884(v70, &qword_27DF12E00, &unk_238763FC0);
    v58 = v139;
    goto LABEL_17;
  }

  (*(v73 + 32))(v121, v70, v72);
  type metadata accessor for AccountConsentManagementBalanceHistoryView(0);
  v96 = v114;
  v97 = v115;
  v98 = v116;
  (*(v115 + 104))(v114, *MEMORY[0x277CC6B50], v116);
  sub_2384673C0(&qword_27DF0A228, MEMORY[0x277CC6B60], MEMORY[0x277CC6B78]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v97 + 8))(v96, v98);
  sub_238759520();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v99 = qword_2814F1B90;
  v100 = sub_23875EA50();

  v101 = sub_23875EA50();
  v102 = sub_23875EA50();
  v103 = [v99 localizedStringForKey:v100 value:v101 table:v102];

  v104 = sub_23875EA80();
  v106 = v105;

  v107 = sub_23875D030();
  LOBYTE(v143) = 1;
  sub_238466AC8(v104, v106, &v165);
  v153 = v171;
  v154 = v172;
  v149 = v167;
  v150 = v168;
  v151 = v169;
  v152 = v170;
  v147 = v165;
  v148 = v166;
  v162 = v171;
  v163 = v172;
  v158 = v167;
  v159 = v168;
  v160 = v169;
  v161 = v170;
  v155 = v173;
  v164 = v173;
  v156 = v165;
  v157 = v166;
  sub_23843981C(&v147, &v144, &qword_27DF0A230, &qword_238765300);
  sub_238439884(&v156, &qword_27DF0A230, &qword_238765300);

  *(&v146[6] + 7) = v153;
  *(&v146[5] + 7) = v152;
  *(&v146[2] + 7) = v149;
  *(&v146[1] + 7) = v148;
  *(&v146[7] + 7) = v154;
  *(&v146[8] + 7) = v155;
  *(&v146[3] + 7) = v150;
  *(&v146[4] + 7) = v151;
  *(v146 + 7) = v147;
  *(&v145[5] + 1) = v146[5];
  *(&v145[6] + 1) = v146[6];
  *(&v145[7] + 1) = v146[7];
  v145[8] = *(&v146[7] + 15);
  *(&v145[1] + 1) = v146[1];
  *(&v145[2] + 1) = v146[2];
  *(&v145[3] + 1) = v146[3];
  *(&v145[4] + 1) = v146[4];
  v144 = v107;
  LOBYTE(v145[0]) = v143;
  *(v145 + 1) = v146[0];
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  sub_23875F470();

  *&v165 = 0xD00000000000001BLL;
  *(&v165 + 1) = 0x80000002387865F0;
  v143 = v118;
  v108 = sub_23875F600();
  MEMORY[0x23EE63650](v108);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A238, &qword_238765308);
  sub_23843A3E8(&qword_27DF0A240, &qword_27DF0A238, &qword_238765308, MEMORY[0x277CE1198]);
  v109 = v119;
  sub_23875DE00();

  v171 = v145[5];
  v172 = v145[6];
  v173 = v145[7];
  v174 = v145[8];
  v167 = v145[1];
  v168 = v145[2];
  v169 = v145[3];
  v170 = v145[4];
  v165 = v144;
  v166 = v145[0];
  sub_238439884(&v165, &qword_27DF0A238, &qword_238765308);
  (*(v137 + 8))(v123, v138);
  (*(v130 + 8))(v127, v141);
  (*(v124 + 8))(v121, v125);
  v74 = v131;
  sub_238467224(v109, v131);
  (v129)(v74, 0, 1, v140);
  v58 = v139;
LABEL_19:
  v75 = v133;
  sub_23843981C(v58, v133, &qword_27DF0A218, &qword_2387652F0);
  v76 = v134;
  sub_23843981C(v74, v134, &qword_27DF0A218, &qword_2387652F0);
  v77 = v135;
  sub_23843981C(v75, v135, &qword_27DF0A218, &qword_2387652F0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A220, &qword_2387652F8);
  sub_23843981C(v76, v77 + *(v78 + 48), &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v74, &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v58, &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v76, &qword_27DF0A218, &qword_2387652F0);
  sub_238439884(v75, &qword_27DF0A218, &qword_2387652F0);
}

uint64_t sub_238466AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>)
{
  v7 = HIDWORD(a1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  DWORD1(v49) = v7;
  *(&v49 + 1) = a2;
  sub_2384397A8(isCurrentExecutor, v10, v11);

  v12 = sub_23875DAA0();
  v14 = v13;
  v16 = v15;
  sub_23875D7F0();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  LODWORD(v49) = sub_23875D440();
  v22 = sub_23875DA20();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v17, v19, v21 & 1);

  v29 = sub_23875CE60();
  v39[0] = 1;
  sub_238466E2C(&v49);
  v42 = *v50;
  v43 = *&v50[16];
  v44 = *&v50[32];
  v45 = *&v50[48];
  v41 = v49;
  v46[1] = *v50;
  v46[2] = *&v50[16];
  v46[3] = *&v50[32];
  v46[4] = *&v50[48];
  v46[0] = v49;
  sub_23843981C(&v41, v47, &qword_27DF0A248, &unk_238765310);
  sub_238439884(v46, &qword_27DF0A248, &unk_238765310);
  *&v40[71] = v45;
  *&v40[55] = v44;
  *&v40[39] = v43;
  *&v40[23] = v42;
  *&v40[7] = v41;
  v47[0] = v29;
  v47[1] = 0;
  v48[0] = 1;
  v30 = *&v40[16];
  *&v48[17] = *&v40[16];
  v31 = *v40;
  *&v48[1] = *v40;
  *&v48[80] = *(&v45 + 1);
  v32 = *&v40[64];
  *&v48[65] = *&v40[64];
  v33 = *&v40[48];
  *&v48[49] = *&v40[48];
  v34 = *&v40[32];
  *&v48[33] = *&v40[32];
  v35 = *v48;
  *(a6 + 32) = v29;
  *(a6 + 48) = v35;
  v36 = *&v48[64];
  *(a6 + 96) = *&v48[48];
  *(a6 + 112) = v36;
  v37 = *&v48[32];
  *(a6 + 64) = *&v48[16];
  *(a6 + 80) = v37;
  *&v50[17] = v30;
  *&v50[1] = v31;
  v39[104] = v26 & 1;
  *a6 = v22;
  *(a6 + 8) = v24;
  *(a6 + 16) = v26 & 1;
  *(a6 + 24) = v28;
  *(a6 + 128) = *&v48[80];
  v49 = v29;
  v50[0] = 1;
  *&v51[15] = *&v40[79];
  *v51 = v32;
  *&v50[49] = v33;
  *&v50[33] = v34;
  sub_23843980C(v22, v24, v26 & 1);

  sub_23843981C(v47, v39, &qword_27DF0A250, &qword_238768E60);
  sub_238439884(&v49, &qword_27DF0A250, &qword_238768E60);
  sub_2384397FC(v22, v24, v26 & 1);
}

uint64_t sub_238466E2C@<X0>(uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8(isCurrentExecutor, v5, v6);

  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_23875BC10();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17 & 1;
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v14;
  *(a3 + 56) = v15;
  *(a3 + 64) = v17 & 1;
  *(a3 + 72) = v19;
  sub_23843980C(v7, v9, v11 & 1);

  sub_23843980C(v14, v16, v18);

  sub_2384397FC(v14, v16, v18);

  sub_2384397FC(v7, v9, v11 & 1);
}

unint64_t sub_238466FF4()
{
  result = qword_27DF0A1C8;
  if (!qword_27DF0A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A1C0, &qword_238765278);
    sub_23843A3E8(&qword_27DF0A1D0, &qword_27DF0A1D8, &qword_238765280, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A1C8);
  }

  return result;
}

uint64_t sub_2384670A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementBalanceHistoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238467108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementBalanceHistoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23846716C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AccountConsentManagementBalanceHistoryView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_238465668(a1, a2, v8, a3);
}

uint64_t sub_238467224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A208, &unk_2387652D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238467294()
{
  result = qword_27DF0A258;
  if (!qword_27DF0A258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A260, qword_238765320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A1B0, &qword_238765268);
    sub_23843A3E8(&qword_27DF0A1E0, &qword_27DF0A1B0, &qword_238765268, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_2384673C0(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A258);
  }

  return result;
}

uint64_t sub_2384673C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DataRestrictedTransactionPickerView.init(cancelAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DataRestrictedTransactionPickerView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A268, &qword_238765360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A270, &qword_238765368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A278, &qword_238765370);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368, MEMORY[0x277CDE158]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A288, &qword_238765378);
  sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C790();
}

uint64_t sub_238467590@<X0>(uint64_t a3@<X8>)
{
  v11[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A270, &qword_238765368);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  sub_23875ED50();
  v11[0] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D400();
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A278, &qword_238765370);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368, MEMORY[0x277CDE158]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A288, &qword_238765378);
  v9 = sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378, MEMORY[0x277CDDB60]);
  v11[2] = v8;
  v11[3] = v9;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_238467898@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_238467A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v5 = sub_23875D2A0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A288, &qword_238765378);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D250();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  v13[-1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  sub_23875C990();
  v11 = sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v9, v6, v11);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_238467CB8(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);

  sub_23875E230();
}

uint64_t sub_238467E68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A268, &qword_238765360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A270, &qword_238765368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A278, &qword_238765370);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368, MEMORY[0x277CDE158]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A288, &qword_238765378);
  sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C790();
}

uint64_t sub_23846800C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_238468054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2384680A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_bridgeObjectRetain_n();

  v10 = sub_23875E030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238763310;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 32) = 0xD000000000000027;
  *(v11 + 40) = 0x8000000238786800;
  *(v11 + 56) = v12;
  *(v11 + 64) = 0xD000000000000027;
  *(v11 + 72) = 0x8000000238786800;
  *(v11 + 88) = v12;
  *(v11 + 96) = 0xD000000000000020;
  *(v11 + 104) = 0x8000000238786830;
  *(v11 + 152) = v12;
  *(v11 + 120) = v12;
  *(v11 + 128) = a3;
  *(v11 + 136) = a4;
  v13 = sub_23875EA50();
  v14 = sub_23875EC60();

  v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:v14];

  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v10;
  a5[5] = 0x65746F6E6B6E6162;
  a5[7] = 0x79636E6572727543;
  a5[8] = 0xE800000000000000;
  a5[6] = 0xE800000000000000;
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = v15;
  a5[9] = &unk_2387654B0;
  a5[10] = result;
  return result;
}

uint64_t sub_23846826C()
{
  result = MEMORY[0x23EE607D0]();
  qword_27DF2F640 = result;
  return result;
}

uint64_t sub_238468298(void *a1, uint64_t a2)
{
  v3 = sub_2384682F4(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

void *sub_2384682F4(void *a1, uint64_t a2)
{
  v4 = sub_23875BD00();
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v75 = a1;
  if ((sub_23875EB40() - 4) < 0xFFFFFFFFFFFFFFFELL)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_27DF08CA8 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v11 = qword_27DF2F640;
    v12 = *(qword_27DF2F640 + 16);
    v73 = v4;
    v69 = v12;
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v63 = (v76 + 8);
    v65 = (v76 + 32);
    v66 = v76 + 16;
    v72 = MEMORY[0x277D84F90];
    v64 = v10;
    v67 = qword_27DF2F640;
    while (v13 < *(v11 + 16))
    {
      v74 = ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v14 = *(v76 + 72);
      (*(v76 + 16))(v10, &v74[v11 + v14 * v13], v4);
      v15 = v4;
      *&v81 = sub_23875BCE0();
      *(&v81 + 1) = v16;
      v79 = v75;
      v80 = a2;
      sub_2384397A8(v81, v16, v17);
      v77 = sub_23875F250();
      v78 = v18;
      v20 = sub_2384688CC(v77, v18, v19);
      sub_238468920(v20, v21, v22);
      v23 = sub_23875E970();

      if (v23)
      {
        v24 = *v65;
        (*v65)(v70, v10, v15);
        v25 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v25;
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v15;
        }

        else
        {
          sub_2385FE7CC(0, *(v25 + 16) + 1, 1);
          v4 = v73;
          v25 = v82;
        }

        v11 = v67;
        v27 = v74;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        v30 = v25;
        if (v29 >= v28 >> 1)
        {
          sub_2385FE7CC((v28 > 1), v29 + 1, 1);
          v4 = v73;
          v30 = v82;
        }

        *(v30 + 16) = v29 + 1;
        v72 = v30;
        v24(&v27[v30 + v29 * v14], v70, v4);
        v10 = v64;
      }

      else
      {
        (*v63)(v10, v15);
        v4 = v15;
        v11 = v67;
      }

      if (v69 == ++v13)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v72 = MEMORY[0x277D84F90];
LABEL_16:
  v31 = *(v72 + 16);
  if (v31)
  {
    v32 = v72;
    v79 = MEMORY[0x277D84F90];
    sub_2385FE7AC(0, v31, 0);
    v33 = v73;
    v34 = v79;
    v74 = *(v76 + 16);
    v35 = v32 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v36 = *(v76 + 72);
    v76 += 16;
    v69 = (v76 - 8);
    v70 = v36;
    v68 = a2;
    do
    {
      v37 = v71;
      v38 = (v74)(v71, v35, v33);
      *&v81 = v75;
      *(&v81 + 1) = a2;
      sub_2384397A8(v38, v39, v40);
      v41 = sub_23875F250();
      v43 = v42;
      v44 = sub_23875BCE0();
      v33 = v73;
      v45 = v44;
      v47 = v46;
      (*v69)(v37, v73);
      v79 = v34;
      v49 = v34[2];
      v48 = v34[3];
      if (v49 >= v48 >> 1)
      {
        sub_2385FE7AC((v48 > 1), v49 + 1, 1);
        v33 = v73;
        v34 = v79;
      }

      v34[2] = v49 + 1;
      v50 = &v34[4 * v49];
      v50[4] = v41;
      v50[5] = v43;
      v50[6] = v45;
      v50[7] = v47;
      v35 += v70;
      --v31;
      a2 = v68;
    }

    while (v31);

    v51 = v34[2];
    if (v51)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v34 = MEMORY[0x277D84F90];
  v51 = *(MEMORY[0x277D84F90] + 16);
  if (!v51)
  {
LABEL_28:

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  v79 = MEMORY[0x277D84F90];
  sub_2385FE78C(0, v51, 0);
  v52 = v79;
  v53 = v34 + 7;
  do
  {
    v54 = *(v53 - 3);
    v55 = *(v53 - 2);
    v56 = *(v53 - 1);
    v57 = *v53;
    v58 = swift_allocObject();
    v58[2] = v54;
    v58[3] = v55;
    v58[4] = v56;
    v58[5] = v57;
    v79 = v52;
    v59 = v52[2];
    v60 = v52[3];

    if (v59 >= v60 >> 1)
    {
      sub_2385FE78C((v60 > 1), v59 + 1, 1);
      v52 = v79;
    }

    v52[2] = v59 + 1;
    v61 = &v52[6 * v59];
    v61[4] = v58;
    *(v61 + 5) = v81;
    v61[7] = &type metadata for CurrencyCodeTokenProvider;
    v61[8] = &off_284B261A8;
    *(v61 + 72) = 0;
    v53 += 4;
    --v51;
  }

  while (v51);

  return v52;
}

unint64_t sub_2384688CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A2A8;
  if (!qword_27DF0A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A2A8);
  }

  return result;
}

unint64_t sub_238468920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A2B0;
  if (!qword_27DF0A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A2B0);
  }

  return result;
}

uint64_t sub_238468974(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2384494A4;

  return sub_23874E920(a1, v4);
}

uint64_t sub_238468A30(uint64_t a1)
{
  v2 = sub_238757E10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if ((*(v3 + 48))(a1, 1, v2, v7) == 1)
  {
    sub_238468C90(a1);
  }

  else
  {
    v10 = *(v3 + 32);
    v10(v9, a1, v2);
    v10(v5, v9, v2);
    v11 = (*(v3 + 88))(v5, v2);
    if (v11 != *MEMORY[0x277CC6C48])
    {
      if (v11 == *MEMORY[0x277CC6C28])
      {
        return 1;
      }

      if (v11 == *MEMORY[0x277CC6C58])
      {
        return 2;
      }

      if (v11 == *MEMORY[0x277CC6C40])
      {
        return 3;
      }

      if (v11 == *MEMORY[0x277CC6C50])
      {
        return 4;
      }

      if (v11 == *MEMORY[0x277CC6C30])
      {
        return 5;
      }

      if (v11 == *MEMORY[0x277CC6C38])
      {
        return 6;
      }

      if (v11 == *MEMORY[0x277CC6C60])
      {
        return 7;
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  return 0;
}

uint64_t sub_238468C90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238468D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238468D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238468DB0(uint64_t a1)
{
  sub_2387579D0();
  sub_2387579A0();
  sub_238757820();
}

uint64_t sub_238468F4C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 12) = *(a1 + 28);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 12) = *(a2 + 28);
  return sub_23846C7F4(&v5, &v7) & 1;
}

uint64_t sub_238468F98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v4 = v3 - 8;
  v61 = *(v3 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = (v59 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = v59 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2D8, &qword_2387655A0);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v12 = v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2E0, &qword_2387655A8);
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = v59 - v14;
  v74 = v2;
  v73 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2E8, &unk_2387655B0);
  type metadata accessor for ExtractedOrderActionsItems(0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
  v16 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  v19 = sub_23846CBA0(v16, v17, v18);
  v75 = v15;
  v76 = &type metadata for OrderActionsMenuLabelStyle;
  v77 = v16;
  v78 = v19;
  swift_getOpaqueTypeConformance2();
  sub_23846CEF4(&qword_27DF0A308, type metadata accessor for ExtractedOrderActionsItems, &unk_238765668);
  v66 = v12;
  sub_23875D9D0();
  v20 = v2 + *(v4 + 32);
  v21 = *v20;
  v22 = *(v20 + 8);
  v83 = v21;
  v84 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v64 = v75;
  v65 = v77;
  v23 = *(v2 + 32);
  v60 = *(v2 + 24);
  v59[2] = v23;
  sub_23846D3EC(v2, v10, type metadata accessor for ExtractedOrderActionsMenu);
  v24 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v25 = swift_allocObject();
  sub_23846D454(v10, v25 + v24, type metadata accessor for ExtractedOrderActionsMenu);
  v26 = v62;
  sub_23846D3EC(v2, v62, type metadata accessor for ExtractedOrderActionsMenu);
  v27 = swift_allocObject();
  sub_23846D454(v26, v27 + v24, type metadata accessor for ExtractedOrderActionsMenu);
  v28 = v63;
  sub_23846D3EC(v2, v63, type metadata accessor for ExtractedOrderActionsMenu);
  v29 = swift_allocObject();
  sub_23846D454(v28, v29 + v24, type metadata accessor for ExtractedOrderActionsMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v30 = qword_2814F1B90;
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v33 = sub_23875EA50();
  v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_23875EA80();
  v37 = v36;
  v63 = v36;

  v62 = v59;
  v75 = v35;
  v76 = v37;
  MEMORY[0x28223BE20](v38);
  v59[-10] = sub_23846CBF4;
  v59[-9] = v25;
  v61 = v25;
  v59[1] = v29;
  v59[0] = v27;
  MEMORY[0x28223BE20](v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A310, &unk_2387655D0);
  v60 = v40;
  v41 = sub_23843A3E8(&qword_27DF0A318, &qword_27DF0A2D8, &qword_2387655A0, MEMORY[0x277CDE5B0]);
  v44 = sub_2384397A8(v41, v42, v43);
  v45 = sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0, MEMORY[0x277CE14C0]);
  v57 = v45;
  v58 = MEMORY[0x277CE0BC8];
  v55 = v41;
  v56 = v44;
  v53 = v40;
  v54 = MEMORY[0x277CE0BD8];
  v52 = MEMORY[0x277D837D0];
  v46 = v69;
  v51 = v69;
  v47 = v68;
  v48 = v66;
  sub_23875DEC0();

  (*(v67 + 8))(v48, v46);

  v75 = v46;
  v76 = MEMORY[0x277D837D0];
  v77 = v60;
  v78 = MEMORY[0x277CE0BD8];
  v79 = v41;
  v80 = v44;
  v81 = v45;
  v82 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v49 = v71;
  sub_23875DE00();
  return (*(v70 + 8))(v47, v49);
}

uint64_t sub_238469804@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  *(v17 + 12) = *(a1 + 28);
  sub_23846D3EC(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ExtractedOrderActionsMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23846D454(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ExtractedOrderActionsMenu);
  sub_23875EA80();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  sub_23846CF68(&v16, v15);
  v11 = sub_23875EA50();
  [v10 initWithSuiteName_];

  *a2 = sub_23875C370();
  v12 = v17[0];
  *(a2 + 8) = v16;
  *(a2 + 24) = v12;
  *(a2 + 36) = *(v17 + 12);
  *(a2 + 56) = sub_23846CF3C;
  *(a2 + 64) = v9;
  v13 = *(type metadata accessor for ExtractedOrderActionsItems(0) + 28);
  *(a2 + v13) = swift_getKeyPath(byte_238765610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_238469A70(uint64_t a1)
{
  type metadata accessor for ExtractedOrderActionsMenu(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_238469AE4(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  v21[0] = v11;
  v21[1] = v13;
  sub_2384397A8(v14, v15, v16);
  sub_23875E190();
  LOBYTE(v21[0]) = *a1;
  v17 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23846CBA0(v17, v18, v19);
  sub_23875DB00();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_238469D98(__int128 *a1)
{
  v26 = sub_23875C1E0();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0x6574656C6564;
  v11 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xE600000000000000;
  *(v7 + 80) = v11;
  if (v4)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  *(v7 + 88) = sub_238449A8C(v12);
  *(v7 + 96) = v13;
  v14 = v8;
  v15 = v10;
  v16 = v11;
  v17 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = v17;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v27);

  v19 = *MEMORY[0x277D38548];
  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v21 = sub_23875E910();

  [v20 subject:v19 sendEvent:v21];

  v22 = a1[1];
  v27 = *a1;
  v28[0] = v22;
  *(v28 + 12) = *(a1 + 28);
  type metadata accessor for ExtractedOrderActionsMenu(0);
  sub_2384D5160(v3);
  sub_238468DB0(0);
  return (*(v25 + 8))(v3, v26);
}

uint64_t sub_23846A110(__int128 *a1)
{
  v26 = sub_23875C1E0();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0xD000000000000016;
  v11 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0x8000000238785C30;
  *(v7 + 80) = v11;
  if (v4)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  *(v7 + 88) = sub_238449A8C(v12);
  *(v7 + 96) = v13;
  v14 = v8;
  v15 = v10;
  v16 = v11;
  v17 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = v17;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v27);

  v19 = *MEMORY[0x277D38548];
  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v21 = sub_23875E910();

  [v20 subject:v19 sendEvent:v21];

  v22 = a1[1];
  v27 = *a1;
  v28[0] = v22;
  *(v28 + 12) = *(a1 + 28);
  type metadata accessor for ExtractedOrderActionsMenu(0);
  sub_2384D5160(v3);
  sub_238468DB0(1);
  return (*(v25 + 8))(v3, v26);
}

void sub_23846A490(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v3 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(v4 + 32) = *MEMORY[0x277D383D8];
  *(v4 + 40) = sub_23875EA80();
  *(v4 + 48) = v6;
  v7 = *MEMORY[0x277D38390];
  *(v4 + 56) = *MEMORY[0x277D38390];
  *(v4 + 64) = 0x776F4E746F6ELL;
  v8 = *MEMORY[0x277D384B8];
  *(v4 + 72) = 0xE600000000000000;
  *(v4 + 80) = v8;
  if (v1)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(v4 + 88) = sub_238449A8C(v9);
  *(v4 + 96) = v10;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v14 = sub_23854B138(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

  v16 = *MEMORY[0x277D38548];
  v17 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v18 = sub_23875E910();

  [v17 subject:v16 sendEvent:v18];
}

uint64_t sub_23846A728@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v84 = a8;
  v81 = a6;
  v82 = a7;
  v80 = a5;
  v76 = a3;
  v77 = a4;
  v74 = a1;
  v88 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v71 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v93 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v14 = v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = v71 - v18;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v20;
  MEMORY[0x28223BE20](v21);
  v79 = v71 - v22;
  MEMORY[0x28223BE20](v23);
  v92 = v71 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v71 - v26;
  sub_23875ED50();
  v83 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v75 = a10;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v28 = qword_2814F1B90;
  v72 = qword_2814F1B90;
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v71[1] = "_DETAILS_HEADER_VIEW_SUBTITLE";
  v31 = sub_23875EA50();
  v32 = [v28 localizedStringForKey:v29 value:v30 table:v31];

  v33 = sub_23875EA80();
  v35 = v34;

  v94 = v33;
  v95 = v35;
  sub_23875C390();
  v90 = sub_23875C3C0();
  v36 = *(v90 - 8);
  v89 = *(v36 + 56);
  v71[2] = v36 + 56;
  v37 = v89(v12, 0, 1, v90);
  v91 = sub_2384397A8(v37, v38, v39);

  sub_23875E220();
  v40 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v73 = v27;
  v41 = v78;
  v74 = v40;
  sub_23875DE00();
  v42 = *(v93 + 8);
  v93 += 8;
  v42(v14, v41);
  v43 = sub_23875EA50();
  v44 = sub_23875EA50();
  v45 = sub_23875EA50();
  v46 = v72;
  v47 = [v72 localizedStringForKey:v43 value:v44 table:v45];

  v48 = sub_23875EA80();
  v50 = v49;

  v94 = v48;
  v95 = v50;
  sub_23875C390();
  v89(v12, 0, 1, v90);

  sub_23875E220();
  sub_23875DE00();
  v42(v14, v41);
  v51 = sub_23875EA50();
  v52 = sub_23875EA50();
  v53 = sub_23875EA50();
  v54 = [v46 localizedStringForKey:v51 value:v52 table:v53];

  v55 = sub_23875EA80();
  v57 = v56;

  v94 = v55;
  v95 = v57;
  sub_23875C3B0();
  v89(v12, 0, 1, v90);
  v58 = swift_allocObject();
  v59 = v80;
  v60 = v81;
  *(v58 + 16) = v80;
  *(v58 + 24) = v60;
  v61 = v84;
  *(v58 + 32) = v82;
  *(v58 + 40) = v61;
  *(v58 + 48) = v75 & 1;
  sub_238455C54(v59, v60);

  sub_23875E220();
  v62 = v79;
  sub_23875DE00();
  v42(v14, v41);
  v63 = v73;
  v64 = v85;
  sub_23846CE84(v73, v85);
  v65 = v92;
  v66 = v86;
  sub_23846CE84(v92, v86);
  v67 = v87;
  sub_23846CE84(v62, v87);
  v68 = v88;
  sub_23846CE84(v64, v88);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A338, &qword_2387655F8);
  sub_23846CE84(v66, v68 + *(v69 + 48));
  sub_23846CE84(v67, v68 + *(v69 + 64));
  sub_238439884(v62, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v65, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v63, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v67, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v66, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v64, &qword_27DF0A330, &qword_2387655F0);
}

uint64_t sub_23846AF90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(isCurrentExecutor);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();
}

uint64_t sub_23846B088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238763B60;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v8 = sub_238448C58(v5, v6, v7);
  *(v5 + 64) = v8;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v9 = qword_2814F0880;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  v15 = sub_23875EA80();
  v17 = v16;

  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = v8;
  *(v5 + 72) = v15;
  *(v5 + 80) = v17;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v10 localizedStringForKey:v18 value:v19 table:v20];

  sub_23875EA80();
  sub_23875EAA0();

  sub_2384397A8(v22, v23, v24);
  v25 = sub_23875DAA0();
  v27 = v26;
  LOBYTE(v18) = v28;
  v30 = v29;

  *a3 = v25;
  *(a3 + 8) = v27;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v30;
  return result;
}

uint64_t sub_23846B364@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A370, &qword_2387656B8);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = type metadata accessor for ExtractedOrderActionsItems(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (v1[50] == 1)
  {
    v10 = v1[51];
    sub_23846D3EC(v1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderActionsItems);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    sub_23846D454(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v13, type metadata accessor for ExtractedOrderActionsItems);

    v11 = sub_23846D608;
  }

  v38 = v11;
  if (v1[49] == 1 && (v9 = sub_23875C380(), (v42 & 1) == 0))
  {
    v17 = v7;
    v14 = v12;
    v15 = v1[48];
    sub_23846D3EC(v1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderActionsItems);
    v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v19 = swift_allocObject();
    sub_23846D454(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ExtractedOrderActionsItems);
    v36 = v19;

    v16 = sub_23846D4BC;
  }

  else
  {
    v14 = v12;
    v15 = 0;
    v16 = 0;
    v36 = 0;
  }

  MEMORY[0x28223BE20](v9);
  *(&v33 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A378, &qword_2387656C0);
  sub_23846D304();
  v20 = v5;
  v35 = v5;
  sub_23875E3D0();
  v21 = v37;
  v22 = *(v37 + 16);
  v23 = v40;
  v22(v41, v20, v40);
  v25 = v38;
  v24 = v39;
  *v39 = v10;
  v24[1] = v25;
  v34 = v14;
  v24[2] = v14;
  v24[3] = v15;
  v26 = v16;
  v24[4] = v16;
  v27 = v36;
  v24[5] = v36;
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A398, &qword_2387656D0) + 64);
  v29 = v41;
  v22(v28, v41, v23);
  v30 = v34;
  sub_2383FE9BC(v10, v25, v34);
  sub_2383FE9BC(v15, v26, v27);
  sub_2383FE9CC(v15, v26, v27);
  sub_2383FE9CC(v10, v25, v30);
  v31 = *(v21 + 8);
  v31(v35, v23);
  v31(v29, v23);
  sub_2383FE9CC(v15, v26, v27);
  return sub_2383FE9CC(v10, v25, v30);
}

uint64_t sub_23846B798(int a1, uint64_t a2)
{
  v33 = sub_23875C1E0();
  v32[1] = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32[0] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23875BC40();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v7 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  v12 = sub_23875EA80();
  v13 = MEMORY[0x277D38390];
  *(v10 + 40) = v12;
  *(v10 + 48) = v14;
  v15 = *v13;
  *(v10 + 56) = *v13;
  v36 = a1;
  if (a1)
  {
    v16 = 18;
  }

  else
  {
    v16 = 19;
  }

  v17 = sub_23844B4DC(v16);
  v18 = MEMORY[0x277D384B8];
  *(v10 + 64) = v17;
  *(v10 + 72) = v19;
  v20 = *v18;
  *(v10 + 80) = *v18;
  if (v7)
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  *(v10 + 88) = sub_238449A8C(v21);
  *(v10 + 96) = v22;
  v23 = v11;
  v24 = v15;
  v25 = v20;
  v26 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v26;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v38);

  v28 = *MEMORY[0x277D38548];
  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v30 = sub_23875E910();

  [v29 subject:v28 sendEvent:v30];

  sub_2387579D0();
  sub_2387579A0();
  sub_23875BBF0();
  sub_238757970();
  (*(v34 + 8))(v6, v35);
}