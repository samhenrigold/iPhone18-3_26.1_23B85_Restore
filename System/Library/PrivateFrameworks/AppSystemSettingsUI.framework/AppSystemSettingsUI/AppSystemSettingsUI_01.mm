unint64_t sub_21BB1A4C8()
{
  result = qword_27CDB2930;
  if (!qword_27CDB2930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2938, &qword_21BB259D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2930);
  }

  return result;
}

unint64_t sub_21BB1A544()
{
  result = qword_27CDB2958;
  if (!qword_27CDB2958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB28D0, &qword_21BB25998);
    sub_21BB13E04(&qword_27CDB2948, &qword_27CDB28C0, &qword_21BB25988, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2958);
  }

  return result;
}

uint64_t sub_21BB1A65C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21BB1A710()
{
  result = qword_27CDB2990;
  if (!qword_27CDB2990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2980, &unk_21BB260B0);
    sub_21BB1A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2990);
  }

  return result;
}

unint64_t sub_21BB1A794()
{
  result = qword_27CDB2998;
  if (!qword_27CDB2998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB29A0, &unk_21BB259F0);
    sub_21BB1A84C();
    sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2998);
  }

  return result;
}

unint64_t sub_21BB1A84C()
{
  result = qword_27CDB29A8;
  if (!qword_27CDB29A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB29B0, &unk_21BB260C0);
    sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB29A8);
  }

  return result;
}

unint64_t sub_21BB1A960()
{
  result = qword_27CDB29E0;
  if (!qword_27CDB29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB29E8, &unk_21BB25A20);
    sub_21BB13E04(&qword_27CDB2950, &qword_27CDB28E0, &qword_21BB259A8, MEMORY[0x277CDD938]);
    sub_21BB1A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB29E0);
  }

  return result;
}

uint64_t sub_21BB1AA18@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_21BB2314C();
  MEMORY[0x28223BE20](v2 - 8);
  v31[2] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A00, &qword_21BB25AB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_21BB229FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  swift_beginAccess();
  v14 = *(v1 + 16);
  *&v34 = 0xD000000000000013;
  *(&v34 + 1) = 0x800000021BB27D10;
  v15 = v14;
  v16 = [v15 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v16)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_21BB09870(&v36, &qword_27CDB25D0, &qword_21BB25060);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_9;
  }

  v17 = swift_dynamicCast();
  (*(v8 + 56))(v6, v17 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_9:
    v21 = &qword_27CDB2A00;
    v22 = &qword_21BB25AB8;
    v23 = v6;
LABEL_10:
    sub_21BB09870(v23, v21, v22);
LABEL_11:
    v24 = 1;
    v25 = v32;
    goto LABEL_12;
  }

  (*(v8 + 32))(v13, v6, v7);
  v18 = *(v1 + 16);
  *&v34 = 0xD000000000000023;
  *(&v34 + 1) = 0x800000021BB27D50;
  v19 = v18;
  v20 = [v19 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v20)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    (*(v8 + 8))(v13, v7);
    v21 = &qword_27CDB25D0;
    v22 = &qword_21BB25060;
    v23 = &v36;
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v8 + 8))(v13, v7);
    goto LABEL_11;
  }

  v31[1] = v33;
  v28 = *(v1 + 16);
  strcpy(&v34, "ASBundleName");
  BYTE13(v34) = 0;
  HIWORD(v34) = -5120;
  v29 = v28;
  v30 = [v29 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v30)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v25 = v32;
  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v32 = v33;
      sub_21BB2313C();
      (*(v8 + 16))(v11, v13, v7);
      sub_21BB1B77C(&qword_27CDB2A08, MEMORY[0x277CEC668]);
      sub_21BB1B77C(&qword_27CDB2A10, MEMORY[0x277CEC658]);
      sub_21BB1B77C(&qword_27CDB2A18, MEMORY[0x277CEC660]);
      sub_21BB22EBC();
      (*(v8 + 8))(v13, v7);
      v24 = 0;
    }

    else
    {
      (*(v8 + 8))(v13, v7);

      v24 = 1;
    }
  }

  else
  {
    (*(v8 + 8))(v13, v7);

    sub_21BB09870(&v36, &qword_27CDB25D0, &qword_21BB25060);
    v24 = 1;
  }

LABEL_12:
  v26 = sub_21BB22ECC();
  return (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
}

uint64_t sub_21BB1B0A0(void *a1)
{
  swift_beginAccess();
  if ([*(v1 + 16) propertyForKey_])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21BB09870(v7, &qword_27CDB25D0, &qword_21BB25060);
    return 0;
  }
}

id sub_21BB1B184()
{
  v0 = [objc_opt_self() imageDescriptorNamed_];
  result = [v0 setDrawBorder_];
  qword_27CDB3718 = v0;
  return result;
}

uint64_t sub_21BB1B1EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A20, &qword_21BB25AC0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A28, &qword_21BB25AC8);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A30, &qword_21BB25AD0);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A38, &qword_21BB25AD8);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A40, qword_21BB25AE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21BB25A30;
  swift_beginAccess();
  v17 = *(v0 + 16);
  swift_getKeyPath();
  v18 = v17;
  sub_21BB228AC();

  sub_21BB13E04(&qword_27CDB2A48, &qword_27CDB2A20, &qword_21BB25AC0, MEMORY[0x277CC9E08]);
  sub_21BB22B4C();
  (*(v2 + 8))(v4, v1);
  sub_21BB13E04(&qword_27CDB2A50, &qword_27CDB2A28, &qword_21BB25AC8, MEMORY[0x277CBCC58]);
  v19 = v26;
  sub_21BB22B3C();
  (*(v27 + 8))(v8, v19);
  sub_21BB13E04(&qword_27CDB2A58, &qword_27CDB2A30, &qword_21BB25AD0, MEMORY[0x277CBCC08]);
  v20 = v25;
  v21 = sub_21BB22B2C();
  (*(v9 + 8))(v11, v20);
  *(v16 + 32) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29F8, "S");
  sub_21BB13E04(&qword_27CDB29F0, &qword_27CDB29F8, "S", MEMORY[0x277CBCD90]);
  sub_21BB22B1C();
  sub_21BB13E04(&qword_27CDB2A60, &qword_27CDB2A38, &qword_21BB25AD8, MEMORY[0x277CBCD48]);
  v22 = v28;
  v23 = sub_21BB22B2C();
  (*(v29 + 8))(v15, v22);
  return v23;
}

uint64_t sub_21BB1B6B4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21BB1B754@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BB1B1EC();
  *a1 = result;
  return result;
}

uint64_t sub_21BB1B77C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21BB229FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21BB1B7D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21BB1B820(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21BB1B86C()
{
  v1 = *(v0 + 8);
  sub_21BB232DC();
  sub_21BB2317C();
  sub_21BB1BDD4(v3, v1);
  return sub_21BB232FC();
}

void sub_21BB1B8C8(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_21BB2317C();

  sub_21BB1BDD4(a1, v3);
}

uint64_t sub_21BB1B914(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_21BB232DC();
  sub_21BB2317C();
  sub_21BB1BDD4(v4, v2);
  return sub_21BB232FC();
}

uint64_t sub_21BB1B96C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_21BB094B0(0, &qword_27CDB2A70, 0x277D82BB8);
  if ((sub_21BB2316C() & 1) == 0)
  {
    return 0;
  }

  return sub_21BB1BA4C(v2, v3);
}

unint64_t sub_21BB1B9F8()
{
  result = qword_27CDB2A68;
  if (!qword_27CDB2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2A68);
  }

  return result;
}

uint64_t sub_21BB1BA4C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_21BB094B0(0, &qword_27CDB2428, 0x277D3FAD8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CEFFBF0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x21CEFFBF0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_21BB2316C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_21BB2316C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21BB2325C();
  }

  result = sub_21BB2325C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_21BB1BC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_21BB094B0(0, &qword_27CDB2A70, 0x277D82BB8);
    v5 = (a2 + 40);
    v6 = (a1 + 40);
    while (1)
    {
      v7 = *v6;
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = *(v6 - 1);

      v11 = v9;

      if ((sub_21BB2316C() & 1) == 0)
      {
        break;
      }

      v12 = sub_21BB1BA4C(v7, v8);

      if (v12)
      {
        v5 += 2;
        v6 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_21BB1BDD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_21BB2325C();
    MEMORY[0x21CEFFD10](v8);
    v3 = sub_21BB2325C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x21CEFFD10](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x21CEFFBF0](i, a2);
      sub_21BB2317C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_21BB2317C();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_21BB1BEC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BB22CCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A78, &qword_21BB25C20);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21BB17ABC(v2, &v14 - v9, &qword_27CDB2A78, &qword_21BB25C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BB22B6C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21BB2311C();
    v13 = sub_21BB22D2C();
    sub_21BB22ADC();

    sub_21BB22CBC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21BB1C0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BB22CCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A80, &qword_21BB25C58);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AUSystemSettingsListContent_v1(0);
  sub_21BB17ABC(v1 + *(v10 + 20), v9, &qword_27CDB2A80, &qword_21BB25C58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BB22D1C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BB2311C();
    v13 = sub_21BB22D2C();
    sub_21BB22ADC();

    sub_21BB22CBC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *AUSystemSettingsListContent_v1.init(applicationBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A78, &qword_21BB25C20);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for AUSystemSettingsListContent_v1(0);
  v7 = *(v6 + 20);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A80, &qword_21BB25C58);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for AUSystemSettingsListContentModel_v1(0);
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__withCurrentHostingController;
  v11 = sub_21BB22D1C();
  v12 = *(*(v11 - 8) + 56);
  v12(&v9[v10], 1, 1, v11);
  v12(&v9[v10], 1, 1, v11);
  *&v9[OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__specifierSections] = MEMORY[0x277D84F90];
  *&v9[OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1____lazy_storage___systemSettingsSpecifiersProvider] = 0;
  sub_21BB2299C();
  v13 = &v9[OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1_applicationBundleIdentifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  v18.receiver = v9;
  v18.super_class = v8;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  sub_21BB1ED74();

  result = sub_21BB22E0C();
  v16 = v20;
  v17 = (a3 + *(v6 + 24));
  *v17 = v19;
  v17[1] = v16;
  return result;
}

uint64_t AUSystemSettingsListContent_v1.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AUSystemSettingsListContent_v1(0);
  v4 = v3 - 8;
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BB22B6C();
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A88, &qword_21BB25C60);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x28223BE20](v11);
  v36 = &v36 - v13;
  v14 = (v1 + *(v4 + 32));
  v16 = *v14;
  v15 = v14[1];
  v46[0] = v16;
  v46[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A90, &qword_21BB25C68);
  sub_21BB22E1C();
  v17 = v45;
  swift_getKeyPath();
  v46[0] = v17;
  sub_21BB1EBEC(&qword_27CDB2C70, type metadata accessor for AUSystemSettingsListContentModel_v1, "IZqf4>");
  sub_21BB2296C();

  v18 = *&v17[OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__specifierSections];

  v46[0] = v18;
  KeyPath = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A98, &qword_21BB25CC8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2AA0, &qword_21BB25CD0);
  v22 = sub_21BB13E04(&qword_27CDB2AA8, &qword_27CDB2A98, &qword_21BB25CC8, MEMORY[0x277D83980]);
  v23 = sub_21BB1DF8C();
  v24 = sub_21BB1E008();
  sub_21BB22E7C(v46, KeyPath, sub_21BB1CA78, 0, v20, v21, v22, v23, v24);
  v38 = v2;
  sub_21BB1BEC4(v10);
  v37 = type metadata accessor for AUSystemSettingsListContent_v1;
  sub_21BB1EC34(v2, v6, type metadata accessor for AUSystemSettingsListContent_v1);
  v25 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v26 = swift_allocObject();
  v27 = v6;
  sub_21BB1E458(v6, v26 + v25);
  sub_21BB1E53C(&qword_27CDB2B38, &qword_27CDB2A88, &qword_21BB25C60, sub_21BB1E008);
  sub_21BB1EBEC(&qword_27CDB2B40, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v28 = v44;
  v29 = v10;
  v30 = v40;
  v31 = v42;
  v32 = v36;
  sub_21BB22DBC();

  (*(v43 + 8))(v29, v31);
  (*(v41 + 8))(v32, v30);
  sub_21BB1EC34(v38, v27, v37);
  v33 = swift_allocObject();
  sub_21BB1E458(v27, v33 + v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B48, &qword_21BB25D10);
  v35 = (v28 + *(result + 36));
  *v35 = sub_21BB1E75C;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  return result;
}

void sub_21BB1C9A0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BB22FCC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21BB1CA08(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_21BB22FAC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdentifier_];
}

uint64_t sub_21BB1CA78(__int128 *a1)
{
  v7 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v7 au_titleString];
  if (v2)
  {
    v3 = v2;
    sub_21BB22FCC();

    sub_21BB13BE0();
    sub_21BB22D6C();
  }

  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v7 au_footerString];
  if (v4)
  {
    v5 = v4;
    sub_21BB22FCC();

    sub_21BB13BE0();
    sub_21BB22D6C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2938, &qword_21BB259D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2AC8, &qword_21BB25CD8);
  sub_21BB1A4C8();
  sub_21BB1E53C(&qword_27CDB2AC0, &qword_27CDB2AC8, &qword_21BB25CD8, sub_21BB1E0C4);
  sub_21BB22E9C();
}

uint64_t sub_21BB1CDB4(uint64_t a1, uint64_t a2)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a2;
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B98, &qword_21BB25E28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2AD8, &qword_21BB25CE0);
  v6 = sub_21BB13E04(&qword_27CDB2BA0, &qword_27CDB2B98, &qword_21BB25E28, MEMORY[0x277D83980]);
  v7 = sub_21BB1DF8C();
  v8 = sub_21BB1E0C4();
  sub_21BB22E7C(&v10, KeyPath, sub_21BB1CF20, 0, v4, v5, v6, v7, v8);
}

id sub_21BB1CF20@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2AF8, &qword_21BB25CF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2AE8, &qword_21BB25CE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2AD8, &qword_21BB25CE0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB1D1E0(v12, v5);
  result = [v12 identifier];
  if (result)
  {
    v14 = result;
    sub_21BB22FCC();

    sub_21BB1E238();
    sub_21BB22DAC();

    sub_21BB09870(v5, &qword_27CDB2AF8, &qword_21BB25CF0);
    v15 = [v12 au_isUserInteractive] ^ 1;
    KeyPath = swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_21BB1EB84(v8, v11, &qword_27CDB2AE8, &qword_21BB25CE8);
    v18 = &v11[*(v9 + 36)];
    *v18 = KeyPath;
    v18[1] = sub_21BB1EB6C;
    v18[2] = v17;
    sub_21BB1EB84(v11, v20, &qword_27CDB2AD8, &qword_21BB25CE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BB1D1E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AULinkSpecifierView_v1(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2BA8, &qword_21BB25E60);
  MEMORY[0x28223BE20](v38);
  v36 = (v33 - v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB2BB0, &unk_21BB25E68);
  MEMORY[0x28223BE20](v34);
  v9 = (v33 - v8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B18, &unk_21BB25D00);
  MEMORY[0x28223BE20](v37);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B08, &qword_21BB25CF8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - v13;
  sub_21BB230CC();
  v35 = sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = [a1 cellType];
  if ((v15 - 1) >= 2)
  {
    if (v15 == 6)
    {
      type metadata accessor for AUSpecifier();
      *(swift_allocObject() + 16) = a1;
      sub_21BB1EBEC(&qword_27CDB28A8, type metadata accessor for AUSpecifier, &unk_21BB25A78);
      v22 = a1;
      *v9 = sub_21BB22BFC();
      v9[1] = v23;
      swift_storeEnumTagMultiPayload();
      sub_21BB1E404();
      sub_21BB1EBEC(&qword_27CDB2B28, type metadata accessor for AULinkSpecifierView_v1, &unk_21BB25928);

      sub_21BB22CFC();
      sub_21BB17ABC(v11, v36, &qword_27CDB2B18, &unk_21BB25D00);
      swift_storeEnumTagMultiPayload();
      sub_21BB1E348();
      sub_21BB22CFC();

      sub_21BB09870(v11, &qword_27CDB2B18, &unk_21BB25D00);
    }

    else
    {
      sub_21BB22DDC();
      v24 = sub_21BB22D4C();
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = v36;
      *v36 = v24;
      v31[1] = v26;
      *(v31 + 16) = v28 & 1;
      v31[3] = v30;
      swift_storeEnumTagMultiPayload();
      sub_21BB1E348();
      sub_21BB22CFC();
    }
  }

  else
  {
    type metadata accessor for AUSpecifier();
    *(swift_allocObject() + 16) = a1;
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29D8, qword_21BB25E90);
    swift_storeEnumTagMultiPayload();
    v16 = a2;
    v17 = (v6 + *(v4 + 20));
    sub_21BB1EBEC(&qword_27CDB28A8, type metadata accessor for AUSpecifier, &unk_21BB25A78);
    v33[0] = v11;
    v33[1] = v4;
    v18 = a1;
    *v17 = sub_21BB22BFC();
    v17[1] = v19;
    a2 = v16;
    v20 = v6;
    sub_21BB1EC34(v6, v9, type metadata accessor for AULinkSpecifierView_v1);
    swift_storeEnumTagMultiPayload();
    sub_21BB1E404();
    sub_21BB1EBEC(&qword_27CDB2B28, type metadata accessor for AULinkSpecifierView_v1, &unk_21BB25928);
    v21 = v33[0];
    sub_21BB22CFC();
    sub_21BB17ABC(v21, v36, &qword_27CDB2B18, &unk_21BB25D00);
    swift_storeEnumTagMultiPayload();
    sub_21BB1E348();
    sub_21BB22CFC();
    sub_21BB09870(v21, &qword_27CDB2B18, &unk_21BB25D00);
    sub_21BB1EC9C(v20);
  }

  sub_21BB1EB84(v14, a2, &qword_27CDB2B08, &qword_21BB25CF8);
}

void sub_21BB1D834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21BB22B6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CDD6B8], v4);
  v8 = sub_21BB22B5C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = (a3 + *(type metadata accessor for AUSystemSettingsListContent_v1(0) + 24));
    v11 = *v9;
    v10 = v9[1];
    v13[2] = v11;
    v13[3] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A90, &qword_21BB25C68);
    sub_21BB22E1C();
    v12 = v13[1];
    sub_21BB1ED74();
  }

  else
  {
  }
}

void sub_21BB1D9F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B90, &qword_21BB25DC0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  sub_21BB230CC();
  v20 = sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = (a1 + *(type metadata accessor for AUSystemSettingsListContent_v1(0) + 24));
  v18 = a1;
  v8 = *v7;
  v9 = v7[1];
  v24 = *v7;
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A90, &qword_21BB25C68);
  sub_21BB22E1C();
  v10 = v22;
  swift_getKeyPath();
  v24 = v10;
  sub_21BB1EBEC(&qword_27CDB2C70, type metadata accessor for AUSystemSettingsListContentModel_v1, "IZqf4>");
  sub_21BB2296C();

  v11 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__withCurrentHostingController;
  swift_beginAccess();
  sub_21BB17ABC(v10 + v11, v6, &qword_27CDB2B90, &qword_21BB25DC0);

  v12 = sub_21BB22D1C();
  v13 = *(v12 - 8);
  LODWORD(v10) = (*(v13 + 48))(v6, 1, v12);
  sub_21BB09870(v6, &qword_27CDB2B90, &qword_21BB25DC0);
  if (v10 == 1)
  {
    v22 = v8;
    v23 = v9;
    sub_21BB22E1C();
    v14 = v21;
    v15 = v19;
    sub_21BB1C0C4(v19);
    (*(v13 + 56))(v15, 0, 1, v12);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v18 - 2) = v14;
    *(&v18 - 1) = v15;
    v22 = v14;
    sub_21BB2295C();

    sub_21BB09870(v15, &qword_27CDB2B90, &qword_21BB25DC0);
  }

  v22 = v8;
  v23 = v9;
  sub_21BB22E1C();
  v17 = v21;
  sub_21BB1ED74();
}

uint64_t sub_21BB1DD8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BB1EBEC(&qword_27CDB2C70, type metadata accessor for AUSystemSettingsListContentModel_v1, "IZqf4>");
  sub_21BB2296C();

  *a2 = *(v3 + OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__specifierSections);
}

uint64_t sub_21BB1DE6C(uint64_t a1)
{
  v2 = sub_21BB22B6C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BB22C4C();
}

uint64_t type metadata accessor for AUSystemSettingsListContent_v1(uint64_t a1)
{
  result = qword_27CDB2B60;
  if (!qword_27CDB2B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BB1DF8C()
{
  result = qword_27CDB2AB0;
  if (!qword_27CDB2AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2480, &qword_21BB25210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2AB0);
  }

  return result;
}

unint64_t sub_21BB1E008()
{
  result = qword_27CDB2AB8;
  if (!qword_27CDB2AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2AA0, &qword_21BB25CD0);
    sub_21BB1A4C8();
    sub_21BB1E53C(&qword_27CDB2AC0, &qword_27CDB2AC8, &qword_21BB25CD8, sub_21BB1E0C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2AB8);
  }

  return result;
}

unint64_t sub_21BB1E0C4()
{
  result = qword_27CDB2AD0;
  if (!qword_27CDB2AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2AD8, &qword_21BB25CE0);
    sub_21BB1E17C();
    sub_21BB13E04(&qword_27CDB2848, &qword_27CDB2850, &qword_21BB258D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2AD0);
  }

  return result;
}

unint64_t sub_21BB1E17C()
{
  result = qword_27CDB2AE0;
  if (!qword_27CDB2AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2AE8, &qword_21BB25CE8);
    sub_21BB1E238();
    sub_21BB1EBEC(&qword_27CDB2B30, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2AE0);
  }

  return result;
}

unint64_t sub_21BB1E238()
{
  result = qword_27CDB2AF0;
  if (!qword_27CDB2AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2AF8, &qword_21BB25CF0);
    sub_21BB1E2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2AF0);
  }

  return result;
}

unint64_t sub_21BB1E2BC()
{
  result = qword_27CDB2B00;
  if (!qword_27CDB2B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2B08, &qword_21BB25CF8);
    sub_21BB1E348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2B00);
  }

  return result;
}

unint64_t sub_21BB1E348()
{
  result = qword_27CDB2B10;
  if (!qword_27CDB2B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2B18, &unk_21BB25D00);
    sub_21BB1E404();
    sub_21BB1EBEC(&qword_27CDB2B28, type metadata accessor for AULinkSpecifierView_v1, &unk_21BB25928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2B10);
  }

  return result;
}

unint64_t sub_21BB1E404()
{
  result = qword_27CDB2B20;
  if (!qword_27CDB2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2B20);
  }

  return result;
}

uint64_t sub_21BB1E458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AUSystemSettingsListContent_v1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21BB1E4BC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AUSystemSettingsListContent_v1(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21BB1D834(a1, a2, v6);
}

uint64_t sub_21BB1E53C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for AUSystemSettingsListContent_v1(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A78, &qword_21BB25C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BB22B6C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2A80, &qword_21BB25C58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BB22D1C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_21BB1E75C()
{
  v1 = *(type metadata accessor for AUSystemSettingsListContent_v1(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21BB1D9F8(v2);
}

void sub_21BB1E800(uint64_t a1)
{
  sub_21BB1E92C(319, &qword_27CDB2B70, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21BB1E92C(319, &qword_27CDB2B78, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21BB1E92C(319, &qword_27CDB2B80, type metadata accessor for AUSystemSettingsListContentModel_v1, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BB1E92C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21BB1E990()
{
  result = qword_27CDB2B88;
  if (!qword_27CDB2B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2B48, &qword_21BB25D10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2A88, &qword_21BB25C60);
    sub_21BB22B6C();
    sub_21BB1E53C(&qword_27CDB2B38, &qword_27CDB2A88, &qword_21BB25C60, sub_21BB1E008);
    sub_21BB1EBEC(&qword_27CDB2B40, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2B88);
  }

  return result;
}

uint64_t sub_21BB1EB00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BB22C9C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB1EB84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21BB1EBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21BB1EC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BB1EC9C(uint64_t a1)
{
  v2 = type metadata accessor for AULinkSpecifierView_v1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB1ECF8()
{
  swift_getKeyPath();
  sub_21BB1FAF8();
  sub_21BB2296C();
}

uint64_t sub_21BB1ED74()
{
  v0 = sub_21BB1F328();
  v1 = [v0 specifiers];

  sub_21BB1FCE8();
  v2 = sub_21BB2306C();

  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_25:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  while (!__OFSUB__(v3--, 1))
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEFFBF0](v3, v2);
LABEL_11:
      v6 = v5;
      if ([v5 cellType])
      {
        [v6 loadValuesAndTitlesFromDataSource];
        [v6 au_loadValueFromCell];
        if (v9 >> 62 && sub_21BB2325C() < 0)
        {
          __break(1u);
          break;
        }

        sub_21BB09360(0, 0, v6);

        if (!v3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_21BB08D84(0, 0, v6, v9);
        v9 = MEMORY[0x277D84F90];
        if (!v3)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 32 + 8 * v3);
        goto LABEL_11;
      }

      __break(1u);
LABEL_24:
      v3 = sub_21BB2325C();
      if (!v3)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_18:

  v7 = v10;
LABEL_19:

  return sub_21BB1F1FC(v7);
}

uint64_t sub_21BB1EF60@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21BB1FAF8();
  sub_21BB2296C();

  v3 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__withCurrentHostingController;
  swift_beginAccess();
  return sub_21BB1FB50(v5 + v3, a1);
}

uint64_t sub_21BB1EFF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BB1FAF8();
  sub_21BB2296C();

  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__withCurrentHostingController;
  swift_beginAccess();
  return sub_21BB1FB50(v3 + v4, a2);
}

uint64_t sub_21BB1F090(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B90, &qword_21BB25DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21BB1FB50(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21BB1FAF8();
  sub_21BB2295C();

  return sub_21BB1FBCC(v6);
}

uint64_t sub_21BB1F190(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__withCurrentHostingController;
  swift_beginAccess();
  sub_21BB1FC34(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21BB1F1FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__specifierSections;

  sub_21BB1BC9C(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BB1FAF8();
    sub_21BB2295C();
  }
}

id sub_21BB1F328()
{
  v1 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1____lazy_storage___systemSettingsSpecifiersProvider;
  v2 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1____lazy_storage___systemSettingsSpecifiersProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1____lazy_storage___systemSettingsSpecifiersProvider);
  }

  else
  {
    v4 = objc_allocWithZone(AUSystemSettingsSpecifiersProvider);
    v5 = sub_21BB22FAC();
    v6 = [v4 initWithApplicationBundleIdentifier_];

    [v6 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t type metadata accessor for AUSystemSettingsListContentModel_v1(uint64_t a1)
{
  result = qword_27CDB2BF0;
  if (!qword_27CDB2BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB1F57C(uint64_t a1)
{
  sub_21BB1F66C(319);
  if (v1 <= 0x3F)
  {
    sub_21BB229AC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BB1F66C(uint64_t a1)
{
  if (!qword_27CDB2C00)
  {
    sub_21BB22D1C();
    v1 = sub_21BB2318C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB2C00);
    }
  }
}

uint64_t sub_21BB1F6C4(void *a1, uint64_t a2, char a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    [a1 presentViewController:a2 animated:a3 & 1 completion:0];
  }
}

uint64_t sub_21BB1F938(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B90, &qword_21BB25DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  swift_getKeyPath();
  v14 = v2;
  sub_21BB1FAF8();
  sub_21BB2296C();

  v9 = OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__withCurrentHostingController;
  swift_beginAccess();
  sub_21BB1FB50(v3 + v9, v8);
  v10 = sub_21BB22D1C();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v13 - 2) = a1;
    *(&v13 - 8) = a2 & 1;
    sub_21BB22D0C();
    return (*(v11 + 8))(v8, v10);
  }

  return result;
}

unint64_t sub_21BB1FAF8()
{
  result = qword_27CDB2C70;
  if (!qword_27CDB2C70)
  {
    type metadata accessor for AUSystemSettingsListContentModel_v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2C70);
  }

  return result;
}

uint64_t sub_21BB1FB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B90, &qword_21BB25DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB1FBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B90, &qword_21BB25DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB1FC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B90, &qword_21BB25DC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB1FCA4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1__specifierSections) = *(v0 + 24);
}

unint64_t sub_21BB1FCE8()
{
  result = qword_27CDB2428;
  if (!qword_27CDB2428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB2428);
  }

  return result;
}

uint64_t sub_21BB1FD34(uint64_t a1, int a2)
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

uint64_t sub_21BB1FD7C(uint64_t result, int a2, int a3)
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

id sub_21BB1FDE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 au_BOOLValue];
  *a2 = result;
  return result;
}

uint64_t sub_21BB1FE2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AUSpecifier();
  sub_21BB20914();
  sub_21BB22C0C();
  swift_getKeyPath();
  sub_21BB22C1C();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2C78, &qword_21BB26098);
  sub_21BB22E5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2928, &unk_21BB260A0);
  sub_21BB13E04(&qword_27CDB2920, &qword_27CDB2928, &unk_21BB260A0, MEMORY[0x277CDEFF0]);
  return sub_21BB22E2C();
}

uint64_t sub_21BB1FFC4(uint64_t a1, uint64_t a2)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2938, &qword_21BB259D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2980, &unk_21BB260B0);
  sub_21BB1A4C8();
  sub_21BB1A710();
  sub_21BB22DFC();
}

uint64_t sub_21BB20134@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v4 = [*(a1 + 16) au_titleString];
  if (v4)
  {
    v5 = v4;
    sub_21BB22FCC();

    sub_21BB13BE0();
    v6 = sub_21BB22D6C();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14 = v10 & 1;
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_21BB20268@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB2031C(a2, x8_0);
}

uint64_t sub_21BB2031C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29C0, &unk_21BB25A00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29C8, &unk_21BB260D0);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29D0, &unk_21BB25A10);
  MEMORY[0x28223BE20](v10);
  v12 = (v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29B0, &unk_21BB260C0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  swift_beginAccess();
  if ([*(a1 + 16) au_image])
  {
    *v12 = sub_21BB22DEC();
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);

    sub_21BB22CFC();
    sub_21BB20984(v15, v9);
    swift_storeEnumTagMultiPayload();
    sub_21BB1A84C();
    v16 = v34;
    sub_21BB22CFC();

    sub_21BB209F4(v15);
  }

  else
  {
    v32 = v4;
    v33 = v9;
    v31[1] = v13;
    sub_21BB1B088();
    if (v17)
    {
      v18 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v19 = sub_21BB22FAC();

      [v18 initWithType_];

      v20 = v33;
      if (qword_27CDB23E8 != -1)
      {
        swift_once();
      }

      v21 = qword_27CDB3718;
      sub_21BB22ACC();
      v22 = v32;
      (*(v32 + 16))(v12, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);
      sub_21BB22CFC();
      sub_21BB20984(v15, v20);
      swift_storeEnumTagMultiPayload();
      sub_21BB1A84C();
      v16 = v34;
      sub_21BB22CFC();
      sub_21BB209F4(v15);
    }

    else
    {
      sub_21BB1B094();
      v23 = v33;
      if (!v24)
      {
        v28 = 1;
        v16 = v34;
        goto LABEL_13;
      }

      v25 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v26 = sub_21BB22FAC();

      [v25 initWithBundleIdentifier_];

      if (qword_27CDB23E8 != -1)
      {
        swift_once();
      }

      v27 = qword_27CDB3718;
      sub_21BB22ACC();
      v22 = v32;
      (*(v32 + 16))(v23, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_21BB1A84C();
      sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);
      v16 = v34;
      sub_21BB22CFC();
    }

    (*(v22 + 8))(v6, v3);
  }

  v28 = 0;
LABEL_13:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29A0, &unk_21BB259F0);
  return (*(*(v29 - 8) + 56))(v16, v28, 1, v29);
}

unint64_t sub_21BB20914()
{
  result = qword_27CDB28A8;
  if (!qword_27CDB28A8)
  {
    type metadata accessor for AUSpecifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB28A8);
  }

  return result;
}

uint64_t sub_21BB20984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29B0, &unk_21BB260C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB209F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29B0, &unk_21BB260C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21BB20AE0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a3;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_21BB22FAC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_21BB20B5C(uint64_t a1)
{
  v1 = *MEMORY[0x277D6C100];
  if (!*MEMORY[0x277D6C100])
  {
    __break(1u);
    goto LABEL_49;
  }

  type metadata accessor for CFString(0);
  sub_21BB22194();
  v2 = sub_21BB229BC();

  if (v2)
  {
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D6C118];
  if (!*MEMORY[0x277D6C118])
  {
    __break(1u);
    goto LABEL_53;
  }

  v4 = sub_21BB229BC();

  if (v4)
  {
LABEL_8:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_21BB2288C();

    return;
  }

  v5 = *MEMORY[0x277D6C1E0];
  if (!*MEMORY[0x277D6C1E0])
  {
    __break(1u);
    goto LABEL_57;
  }

  v6 = sub_21BB229BC();

  if (v6)
  {
    goto LABEL_8;
  }

  v9 = *MEMORY[0x277D6C230];
  if (!*MEMORY[0x277D6C230])
  {
    __break(1u);
    goto LABEL_61;
  }

  v10 = sub_21BB229BC();

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277D6C1D0];
  if (!*MEMORY[0x277D6C1D0])
  {
    __break(1u);
    goto LABEL_65;
  }

  v12 = sub_21BB229BC();

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = *MEMORY[0x277D6C110];
  if (!*MEMORY[0x277D6C110])
  {
    __break(1u);
    return;
  }

  v14 = sub_21BB229BC();

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = *MEMORY[0x277D6C1A8];
  if (!*MEMORY[0x277D6C1A8])
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v16 = sub_21BB229BC();

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = *MEMORY[0x277D6C218];
  if (!*MEMORY[0x277D6C218])
  {
    goto LABEL_71;
  }

  v18 = sub_21BB229BC();

  if (v18)
  {
    goto LABEL_8;
  }

  v19 = *MEMORY[0x277D6C168];
  if (!*MEMORY[0x277D6C168])
  {
    goto LABEL_72;
  }

  v20 = sub_21BB229BC();

  if (v20)
  {
    goto LABEL_8;
  }

  v21 = *MEMORY[0x277D6C1B0];
  if (!*MEMORY[0x277D6C1B0])
  {
    goto LABEL_73;
  }

  v22 = sub_21BB229BC();

  if (v22)
  {
    goto LABEL_8;
  }

  v23 = *MEMORY[0x277D6C258];
  if (!*MEMORY[0x277D6C258])
  {
    goto LABEL_74;
  }

  v24 = sub_21BB229BC();

  if (v24)
  {
    goto LABEL_8;
  }

  v25 = *MEMORY[0x277D6C148];
  if (!*MEMORY[0x277D6C148])
  {
    goto LABEL_75;
  }

  v26 = sub_21BB229BC();

  if (v26)
  {
    goto LABEL_8;
  }

  v27 = *MEMORY[0x277D6C248];
  if (!*MEMORY[0x277D6C248])
  {
    goto LABEL_76;
  }

  v28 = sub_21BB229BC();

  if (v28)
  {
    goto LABEL_8;
  }

  v29 = *MEMORY[0x277D6C188];
  if (!*MEMORY[0x277D6C188])
  {
    goto LABEL_77;
  }

  v30 = sub_21BB229BC();

  if (v30)
  {
    goto LABEL_8;
  }

  v31 = *MEMORY[0x277D6C1A0];
  if (!*MEMORY[0x277D6C1A0])
  {
    goto LABEL_78;
  }

  v32 = sub_21BB229BC();

  if (v32)
  {
    goto LABEL_8;
  }

  v33 = *MEMORY[0x277D6C198];
  if (!*MEMORY[0x277D6C198])
  {
    goto LABEL_79;
  }

  v34 = sub_21BB229BC();

  if (v34)
  {
    goto LABEL_8;
  }

  v35 = *MEMORY[0x277D6C250];
  if (!*MEMORY[0x277D6C250])
  {
    goto LABEL_80;
  }

  v36 = sub_21BB229BC();

  if (v36)
  {
    goto LABEL_8;
  }

  v37 = *MEMORY[0x277D6C238];
  if (!*MEMORY[0x277D6C238])
  {
    goto LABEL_81;
  }

  v38 = sub_21BB229BC();

  if (v38)
  {
    goto LABEL_8;
  }

  v39 = *MEMORY[0x277D6C1C8];
  if (!*MEMORY[0x277D6C1C8])
  {
    goto LABEL_82;
  }

  v40 = sub_21BB229BC();

  if (v40)
  {
    goto LABEL_8;
  }

  v41 = *MEMORY[0x277D6C180];
  if (!*MEMORY[0x277D6C180])
  {
    goto LABEL_83;
  }

  v42 = sub_21BB229BC();

  if (v42)
  {
    goto LABEL_8;
  }

LABEL_49:
  v43 = *MEMORY[0x277D6C1B8];
  if (!*MEMORY[0x277D6C1B8])
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v44 = sub_21BB229BC();

  if (v44)
  {
    goto LABEL_8;
  }

LABEL_53:
  v45 = *MEMORY[0x277D6C158];
  if (!*MEMORY[0x277D6C158])
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v46 = sub_21BB229BC();

  if (v46)
  {
    goto LABEL_8;
  }

LABEL_57:
  v47 = *MEMORY[0x277D6C1E8];
  if (!*MEMORY[0x277D6C1E8])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v48 = sub_21BB229BC();

  if (v48)
  {
    goto LABEL_8;
  }

LABEL_61:
  v49 = *MEMORY[0x277D6C128];
  if (!*MEMORY[0x277D6C128])
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v50 = sub_21BB229BC();

  if (v50)
  {
    goto LABEL_8;
  }

LABEL_65:
  v51 = *MEMORY[0x277D6C120];
  if (!*MEMORY[0x277D6C120])
  {
LABEL_88:
    __break(1u);
    return;
  }

  v52 = sub_21BB229BC();

  if (v52)
  {
    goto LABEL_8;
  }
}

id AUHelperFunctions.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AUHelperFunctions();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_21BB21ACC(uint64_t a1)
{
  v1 = *MEMORY[0x277D6C248];
  if (!*MEMORY[0x277D6C248])
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for CFString(0);
  sub_21BB22194();
  v2 = sub_21BB229BC();

  if (v2)
  {
    return;
  }

  v3 = *MEMORY[0x277D6C128];
  if (!*MEMORY[0x277D6C128])
  {
    goto LABEL_31;
  }

  v4 = sub_21BB229BC();

  if (v4)
  {
    return;
  }

  v5 = *MEMORY[0x277D6C1E8];
  if (!*MEMORY[0x277D6C1E8])
  {
    goto LABEL_32;
  }

  v6 = sub_21BB229BC();

  if (v6)
  {
    return;
  }

  v7 = *MEMORY[0x277D6C188];
  if (!*MEMORY[0x277D6C188])
  {
    goto LABEL_33;
  }

  v8 = sub_21BB229BC();

  if (v8)
  {
    return;
  }

  v9 = *MEMORY[0x277D6C110];
  if (!*MEMORY[0x277D6C110])
  {
    goto LABEL_34;
  }

  v10 = sub_21BB229BC();

  if (v10)
  {
    return;
  }

  v11 = *MEMORY[0x277D6C1A8];
  if (!*MEMORY[0x277D6C1A8])
  {
    goto LABEL_35;
  }

  v12 = sub_21BB229BC();

  if (v12)
  {
    return;
  }

  v13 = *MEMORY[0x277D6C218];
  if (!*MEMORY[0x277D6C218])
  {
    goto LABEL_36;
  }

  v14 = sub_21BB229BC();

  if (v14)
  {
    return;
  }

  v15 = *MEMORY[0x277D6C168];
  if (!*MEMORY[0x277D6C168])
  {
    goto LABEL_37;
  }

  v16 = sub_21BB229BC();

  if (v16)
  {
    return;
  }

  v17 = *MEMORY[0x277D6C1B0];
  if (!*MEMORY[0x277D6C1B0])
  {
    goto LABEL_38;
  }

  v18 = sub_21BB229BC();

  if (v18)
  {
    return;
  }

  v19 = *MEMORY[0x277D6C198];
  if (!*MEMORY[0x277D6C198])
  {
    goto LABEL_39;
  }

  v20 = sub_21BB229BC();

  if (v20)
  {
    return;
  }

  v21 = *MEMORY[0x277D6C180];
  if (!*MEMORY[0x277D6C180])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v22 = sub_21BB229BC();

  if ((v22 & 1) == 0)
  {
    v23 = *MEMORY[0x277D6C1B8];
    if (*MEMORY[0x277D6C1B8])
    {
      v24 = sub_21BB229BC();

      if (v24)
      {
        return;
      }

      v25 = *MEMORY[0x277D6C120];
      if (*MEMORY[0x277D6C120])
      {
        sub_21BB229BC();

        return;
      }

LABEL_42:
      __break(1u);
      return;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }
}

void sub_21BB21F20(uint64_t a1)
{
  v1 = *MEMORY[0x277D6C100];
  if (!*MEMORY[0x277D6C100])
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for CFString(0);
  sub_21BB22194();
  v2 = sub_21BB229BC();

  if (v2)
  {
    return;
  }

  v3 = *MEMORY[0x277D6C118];
  if (!*MEMORY[0x277D6C118])
  {
    goto LABEL_17;
  }

  v4 = sub_21BB229BC();

  if (v4)
  {
    return;
  }

  v5 = *MEMORY[0x277D6C1E0];
  if (!*MEMORY[0x277D6C1E0])
  {
    goto LABEL_18;
  }

  v6 = sub_21BB229BC();

  if (v6)
  {
    return;
  }

  v7 = *MEMORY[0x277D6C1D0];
  if (!*MEMORY[0x277D6C1D0])
  {
    goto LABEL_19;
  }

  v8 = sub_21BB229BC();

  if (v8)
  {
    return;
  }

  v9 = *MEMORY[0x277D6C258];
  if (!*MEMORY[0x277D6C258])
  {
    goto LABEL_20;
  }

  v10 = sub_21BB229BC();

  if (v10)
  {
    return;
  }

  v11 = *MEMORY[0x277D6C148];
  if (!*MEMORY[0x277D6C148])
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v12 = sub_21BB229BC();

  if ((v12 & 1) == 0)
  {
    v13 = *MEMORY[0x277D6C1A0];
    if (*MEMORY[0x277D6C1A0])
    {
      sub_21BB229BC();

      return;
    }

    goto LABEL_22;
  }
}

unint64_t sub_21BB22194()
{
  result = qword_27CDB2C90;
  if (!qword_27CDB2C90)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2C90);
  }

  return result;
}

void __AUGetAuthorizationStatesForService_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21BAF4000, log, OS_LOG_TYPE_ERROR, "Error when requesting TCC for service: %@ error: %@", &v4, 0x16u);
}

void __PSCalendarAuthorizationStates_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BAF4000, a2, OS_LOG_TYPE_ERROR, "Error when requesting TCC for kTCCServiceCalendar error: %@", &v2, 0xCu);
}