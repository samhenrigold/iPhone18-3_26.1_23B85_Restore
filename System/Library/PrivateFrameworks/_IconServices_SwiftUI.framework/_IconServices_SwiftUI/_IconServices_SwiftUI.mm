void sub_21C58A670(uint64_t a1)
{
  sub_21C58AA28(319, &qword_2812167C0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    sub_21C58AA28(319, &qword_2812167B8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_21C58AA8C(319, &qword_2812167D0, MEMORY[0x277D85048]);
      if (v4 <= 0x3F)
      {
        sub_21C58AA28(319, &qword_2812167B0, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          sub_21C58AAD8(319, &qword_281216788, &qword_27CDE0648, &qword_21C596758, MEMORY[0x277CDF468]);
          if (v6 <= 0x3F)
          {
            sub_21C58AAD8(319, &qword_2812167A0, &qword_27CDE0640, &qword_21C596750, MEMORY[0x277CDF468]);
            if (v7 <= 0x3F)
            {
              sub_21C58AAD8(319, &qword_281216798, &qword_27CDE0638, &qword_21C596748, MEMORY[0x277CDF468]);
              if (v8 <= 0x3F)
              {
                sub_21C58AAD8(319, &qword_2812167C8, &qword_27CDE0620, &qword_21C596740, MEMORY[0x277CDF468]);
                if (v9 <= 0x3F)
                {
                  sub_21C58AA8C(319, &qword_2812167A8, MEMORY[0x277D839B0]);
                  if (v10 <= 0x3F)
                  {
                    sub_21C58AAD8(319, &qword_281216790, &qword_27CDE0598, &unk_21C596340, MEMORY[0x277CDF468]);
                    if (v11 <= 0x3F)
                    {
                      sub_21C58AB9C(319, &qword_2812166C0, 0x277D1B1A8);
                      if (v12 <= 0x3F)
                      {
                        sub_21C58ABE4(319, &qword_281216710, &qword_281216718, 0x277D1B1C8);
                        if (v13 <= 0x3F)
                        {
                          sub_21C58AC3C();
                          if (v15 <= 0x3F)
                          {
                            type metadata accessor for AsyncIconImage.LoadingState(255, *(a1 + 16), *(a1 + 24), v14);
                            sub_21C5957D8();
                            if (v16 <= 0x3F)
                            {
                              sub_21C58AA28(319, &qword_2812166E0, type metadata accessor for ISImageDescriptorName, MEMORY[0x277D83D88]);
                              if (v17 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C58AA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C58AA8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21C595598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C58AAD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C58AB3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21C58AB9C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_21C58ABE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_21C58AB9C(255, a3, a4);
    v5 = sub_21C595988();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21C58AC3C()
{
  result = qword_2812166A0;
  if (!qword_2812166A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812166A0);
  }

  return result;
}

void sub_21C58ACC0(uint64_t a1)
{
  sub_21C58ABE4(319, &qword_2812166B8, &qword_2812166C0, 0x277D1B1A8);
  if (v1 <= 0x3F)
  {
    sub_21C58ABE4(319, &qword_281216710, &qword_281216718, 0x277D1B1C8);
    if (v2 <= 0x3F)
    {
      sub_21C58AA28(319, &qword_281216800, type metadata accessor for IconEnvironmentTraits, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21C58AAD8(319, &qword_281216738, &qword_27CDE06B0, qword_21C596B60, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for IconEnvironmentTraits(uint64_t a1)
{
  result = qword_281216808;
  if (!qword_281216808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C58AE54(uint64_t a1)
{
  sub_21C595588();
  if (v1 <= 0x3F)
  {
    sub_21C5956C8();
    if (v2 <= 0x3F)
    {
      sub_21C5955C8();
      if (v3 <= 0x3F)
      {
        sub_21C58AFA0(319, &qword_281216728, type metadata accessor for ISIconShape);
        if (v4 <= 0x3F)
        {
          sub_21C58AFF4();
          if (v5 <= 0x3F)
          {
            type metadata accessor for IFAppearance(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for IFAppearanceVariant(319);
              if (v7 <= 0x3F)
              {
                sub_21C58AFA0(319, &qword_2812166A8, sub_21C58B06C);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C58AFA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21C595988();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C58AFF4()
{
  if (!qword_281216748)
  {
    v0 = sub_21C595988();
    if (!v1)
    {
      atomic_store(v0, &qword_281216748);
    }
  }
}

unint64_t sub_21C58B06C()
{
  result = qword_2812166B0;
  if (!qword_2812166B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812166B0);
  }

  return result;
}

uint64_t AsyncIconImage.init<>(icon:descriptor:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0650, &qword_21C596770);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = swift_allocObject();
  v34 = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  swift_storeEnumTagMultiPayload();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0660, &qword_21C5967B0);
  v14 = v13[9];
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v13[10];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v13[11];
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + v13[12];
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  *(v17 + 8) = 0;
  v18 = a3 + v13[13];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a3 + v13[14];
  *v19 = swift_getKeyPath();
  *(v19 + 4) = 0;
  v20 = a3 + v13[15];
  *v20 = swift_getKeyPath();
  *(v20 + 4) = 0;
  v21 = a3 + v13[16];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = a3 + v13[17];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v31 = v13[19];
  *v11 = 0;
  *(v11 + 1) = 0;
  v23 = v6[10];
  v24 = type metadata accessor for IconEnvironmentTraits(0);
  (*(*(v24 - 8) + 56))(&v11[v23], 1, 1, v24);
  *&v11[v6[11]] = 0;
  *&v11[v6[12]] = 0x8000000000000000;
  sub_21C58B790(v11, v9, &qword_27CDE0650, &qword_21C596770);
  v25 = v32;
  v26 = v32;
  v27 = v33;
  sub_21C5957A8();
  result = sub_21C58B988(v11, &qword_27CDE0650, &qword_21C596770);
  *(a3 + v13[23]) = 0;
  *(a3 + v13[18]) = v27;
  *(a3 + v31) = v25;
  *(a3 + v13[20]) = 0;
  v29 = (a3 + v13[21]);
  v30 = v34;
  *v29 = sub_21C58D9B0;
  v29[1] = v30;
  return result;
}

uint64_t sub_21C58B434()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_21C58B5DC@<X0>(void *a1@<X8>)
{
  sub_21C58C118();
  result = sub_21C595668();
  *a1 = v3;
  return result;
}

uint64_t sub_21C58B640(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21C595588();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21C5956C8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_21C5955C8();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C58B790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C58B80C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C595588();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_21C5956C8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_21C5955C8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

unint64_t get_enum_tag_for_layout_string_21_IconServices_SwiftUI05AsyncA10ImagePhaseO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_21C58B988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21C58BA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C58BAA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncIconImage.Inner(255, *a1, a1[1], a4);
  sub_21C5955D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0680, &qword_21C596950);
  sub_21C5955D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0688, &qword_21C596958);
  sub_21C5955D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = MEMORY[0x277CE0400];
  sub_21C58BC30(&qword_281216780, &qword_27CDE0680, &qword_21C596950, MEMORY[0x277CE0400]);
  swift_getWitnessTable();
  sub_21C58BC30(&qword_281216778, &qword_27CDE0688, &qword_21C596958, v4);
  return swift_getWitnessTable();
}

uint64_t sub_21C58BC30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C58BCBC(void *a1)
{
  sub_21C5955D8();
  sub_21C58BD4C();
  swift_getWitnessTable();
  sub_21C595698();
  return swift_getWitnessTable();
}

unint64_t sub_21C58BD4C()
{
  result = qword_281216760;
  if (!qword_281216760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216760);
  }

  return result;
}

double sub_21C58BDA0@<D0>(uint64_t a1@<X8>)
{
  sub_21C58BDF8();
  sub_21C595678();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_21C58BDF8()
{
  result = qword_2812167F0;
  if (!qword_2812167F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167F0);
  }

  return result;
}

void sub_21C58BE4C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *sub_21C58BE5C@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58BEAC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

unint64_t sub_21C58BEAC()
{
  result = qword_281216820;
  if (!qword_281216820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216820);
  }

  return result;
}

void *keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a3@<X8>)
{
  a1();
  result = sub_21C595678();
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

unint64_t sub_21C58BF90()
{
  result = qword_2812167E0;
  if (!qword_2812167E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167E0);
  }

  return result;
}

unint64_t sub_21C58C018()
{
  result = qword_2812167E8;
  if (!qword_2812167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167E8);
  }

  return result;
}

void *sub_21C58C06C@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58C0BC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

unint64_t sub_21C58C0BC()
{
  result = qword_281216828[0];
  if (!qword_281216828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281216828);
  }

  return result;
}

unint64_t sub_21C58C118()
{
  result = qword_2812169D8;
  if (!qword_2812169D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812169D8);
  }

  return result;
}

unint64_t sub_21C58C170()
{
  result = qword_2812169E0[0];
  if (!qword_2812169E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812169E0);
  }

  return result;
}

void *sub_21C58C1C4@<X0>(void *a1@<X8>)
{
  sub_21C58C214();
  result = sub_21C595958();
  *a1 = v3;
  return result;
}

unint64_t sub_21C58C214()
{
  result = qword_2812169B0;
  if (!qword_2812169B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812169B0);
  }

  return result;
}

uint64_t sub_21C58C290(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

void sub_21C58C308(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_21C595868();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_21C58C3B8@<X0>(void *a1@<X8>)
{
  if (qword_2812169C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_281216AB0;
  *a1 = qword_281216AB0;

  return v2;
}

id sub_21C58C428()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_281216AB0 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_281216AB0 = 0;
  return result;
}

uint64_t sub_21C58C4A4()
{
  if (qword_2812169C0 != -1)
  {
    swift_once();
  }

  return byte_281216AA8;
}

id sub_21C58C4F4()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_281216AA8 = result;
  return result;
}

void *sub_21C58C544(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C58C608(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t AsyncIconImage.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v4 = MEMORY[0x28223BE20](v86);
  v83 = (&v75 - v5);
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v12 = *(a1 + 24);
  v95 = *(a1 + 16);
  v13 = v95;
  v94 = v12;
  v15 = type metadata accessor for AsyncIconImage.LoadingState(0, v95, v12, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v80 = type metadata accessor for AsyncIconImage.Inner(255, v13, v12, v19);
  v82 = sub_21C5955D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0680, &qword_21C596950);
  v85 = sub_21C5955D8();
  v90 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v97 = &v75 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0688, &qword_21C596958);
  v89 = sub_21C5955D8();
  v88 = *(v89 - 8);
  v21 = MEMORY[0x28223BE20](v89);
  v84 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v87 = &v75 - v23;
  sub_21C58D090(a1, v24, v25, v26);
  v27 = *&v18[*(v15 + 48)];
  sub_21C58D0E0(v27);
  (*(v16 + 8))(v18, v15);
  v28 = *(a1 + 84);
  v98 = v2;
  v29 = (v2 + v28);
  v30 = *v29;
  v77 = v29[1];
  v111 = v27;
  v112 = v30;
  v113 = v77;
  v31 = v6;
  v100 = *(v6 + 16);
  v99 = v6 + 16;
  v32 = v11;
  v92 = v11;
  v33 = v11;
  v34 = a1;
  v100(v33, v2, a1);
  v35 = *(v6 + 80);
  v36 = (v35 + 32) & ~v35;
  v93 = v9;
  v78 = v35;
  v37 = swift_allocObject();
  v38 = v95;
  v39 = v94;
  *(v37 + 16) = v95;
  *(v37 + 24) = v39;
  v40 = *(v31 + 32);
  v41 = v32;
  v42 = v34;
  v76 = v34;
  v40(v37 + v36, v41, v34);
  v96 = v40;
  v43 = v81;
  v100(v81, v98, v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 24) = v39;
  v45 = v76;
  v40(v44 + v36, v43, v76);
  v79 = v31 + 32;
  v107 = sub_21C58DBB0;
  *&v108 = v37;
  *(&v108 + 1) = sub_21C594B68;
  *&v109 = v44;

  v46 = v80;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x21CF0CD90](&v114, &v107, v46, MEMORY[0x277CE07A0], WitnessTable);

  sub_21C58D478(v111);

  v107 = v114;
  v108 = v115;
  v109 = v116;
  v110 = v117;
  v48 = v83;
  v49 = v45;
  v50 = v98;
  sub_21C58D114(v45, v83);
  v51 = v92;
  v100(v92, v50, v49);
  v52 = swift_allocObject();
  *(v52 + 16) = v38;
  v53 = v94;
  *(v52 + 24) = v94;
  v96(v52 + v36, v51, v49);
  v105 = WitnessTable;
  v106 = MEMORY[0x277CE0790];
  v81 = MEMORY[0x277CDFAD8];
  v54 = swift_getWitnessTable();
  sub_21C58D528();
  sub_21C595778();

  sub_21C58B988(v48, &qword_27CDE0678, &qword_21C596948);
  v55 = v109;
  v56 = v110;
  sub_21C58D478(v107);

  sub_21C58D5DC(v55, *(&v55 + 1));
  sub_21C58D5DC(v56, *(&v56 + 1));
  v57 = v49;
  v114 = *(v98 + *(v49 + 76));
  v58 = v114;
  v59 = v92;
  (v100)(v92);
  v60 = swift_allocObject();
  *(v60 + 16) = v95;
  *(v60 + 24) = v53;
  v96(v60 + v36, v59, v57);
  v61 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0690, &qword_21C596960);
  v62 = MEMORY[0x277CE0400];
  v63 = sub_21C58BC30(&qword_281216780, &qword_27CDE0680, &qword_21C596950, MEMORY[0x277CE0400]);
  v103 = v54;
  v104 = v63;
  v64 = v85;
  v65 = swift_getWitnessTable();
  sub_21C58D654();
  v66 = v84;
  v67 = v97;
  sub_21C595778();

  (*(v90 + 8))(v67, v64);
  v68 = sub_21C58BC30(&qword_281216778, &qword_27CDE0688, &qword_21C596958, v62);
  v101 = v65;
  v102 = v68;
  v69 = v89;
  swift_getWitnessTable();
  v70 = v88;
  v71 = *(v88 + 16);
  v72 = v87;
  v71(v87, v66, v69);
  v73 = *(v70 + 8);
  v73(v66, v69);
  v71(v91, v72, v69);
  return (v73)(v72, v69);
}

uint64_t sub_21C58D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncIconImage.LoadingState(255, *(a1 + 16), *(a1 + 24), a4);
  sub_21C5957D8();
  return sub_21C5957B8();
}

unint64_t sub_21C58D0E0(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
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

uint64_t sub_21C58D114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21C595588();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  if (sub_21C59294C(a1))
  {
    v11 = type metadata accessor for IconEnvironmentTraits(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }

  else
  {
    sub_21C591DC8(v10);
    (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v4);
    v14 = sub_21C595578();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v10, v4);
    v16 = sub_21C592AA0(a1);
    if (v16)
    {
      v17 = v16;
      v18 = [v16 iconServicesAppearanceUsingDarkInterfaceStyle_];
      v19 = [v17 iconServicesAppearanceVariantUsingDarkInterfaceStyle_];
      v20 = [v17 tintColor];
      if (v20 && (v21 = v20, v22 = [v20 UIColor], v21, v22))
      {
        v23 = [v22 CGColor];
        v24 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];
      }

      else
      {

        v24 = 0;
      }
    }

    else
    {
      v19 = 0;
      v24 = 0;
      v18 = (v14 & 1);
    }

    sub_21C591DC8(a2);
    v25 = type metadata accessor for IconEnvironmentTraits(0);
    sub_21C592324(a1, (a2 + v25[5]));
    sub_21C591FC8(a1, (a2 + v25[6]));
    v26 = sub_21C59267C(a1);
    v28 = v27;
    v29 = sub_21C592528(a1);
    v30 = a2 + v25[7];
    *v30 = v26;
    v30[8] = v28 & 1;
    *(a2 + v25[8]) = v29;
    *(a2 + v25[9]) = v18;
    *(a2 + v25[10]) = v19;
    *(a2 + v25[11]) = v24;
    return (*(*(v25 - 1) + 56))(a2, 0, 1, v25);
  }
}

void sub_21C58D478(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_21C58D498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C58D4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C58D528()
{
  result = qword_2812167F8;
  if (!qword_2812167F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0678, &qword_21C596948);
    sub_21C58D4E0(&qword_281216818, type metadata accessor for IconEnvironmentTraits, &unk_21C596488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167F8);
  }

  return result;
}

uint64_t sub_21C58D5DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21C58D5EC()
{
  result = qword_281216700;
  if (!qword_281216700)
  {
    sub_21C58AB9C(255, &qword_281216718, 0x277D1B1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216700);
  }

  return result;
}

unint64_t sub_21C58D654()
{
  result = qword_281216708;
  if (!qword_281216708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0690, &qword_21C596960);
    sub_21C58D5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216708);
  }

  return result;
}

uint64_t sub_21C58D6D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21C5955D8();
  MEMORY[0x28223BE20](v7);
  v8 = *(a1 + 24);
  v21[2] = v8;
  v9 = sub_21C58BD4C();
  v24[1] = v8;
  v24[2] = v9;
  v21[1] = swift_getWitnessTable();
  v10 = sub_21C595698();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v17 = v2[1];
  v24[0] = *v2;
  sub_21C58D0E0(v24[0]);
  v17(v24);
  sub_21C58D478(v24[0]);
  sub_21C595758();
  (*(v22 + 8))(v6, v4);
  sub_21C5956A8();
  swift_getWitnessTable();
  v18 = *(v11 + 16);
  v18(v16, v14, v10);
  v19 = *(v11 + 8);
  v19(v14, v10);
  v18(v23, v16, v10);
  return (v19)(v16, v10);
}

void sub_21C58D9B8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  if (!(*a1 >> 62))
  {

LABEL_10:
    *a4 = v5;
    return;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) init];
    a3 = 0;
    v7 = v8;
  }

  v9 = a3;
  v5 = sub_21C595798();
  v10 = [a2 imageForDescriptor_];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  if ([v10 CGImage])
  {
    [v11 scale];
    v12 = sub_21C595788();

    v5 = v12;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_21C58DAEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for AsyncIconImage(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void *sub_21C58DB84(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_21C58DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v10 = type metadata accessor for AsyncIconImage(0, a2, a3, v9);
  v11 = *(a1 + *(v10 + 72));
  sub_21C58D114(v10, v8);
  sub_21C58DCA4(v11, v8, *(a1 + *(v10 + 76)), v10);
  return sub_21C58B988(v8, &qword_27CDE0678, &qword_21C596948);
}

void sub_21C58DCA4(void *a1, char *a2, void *a3, uint64_t a4)
{
  v100 = a3;
  v101 = a2;
  v103 = a1;
  v93 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v94 = v6;
  v96 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06B8, &qword_21C596BC8);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v86 - v8;
  v9 = type metadata accessor for IconEnvironmentTraits(0);
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06C0, &qword_21C596BD0);
  MEMORY[0x28223BE20](v89);
  v92 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v88 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);
  v97 = &v86 - v17;
  v98 = v15;
  v99 = v16;
  v19 = type metadata accessor for AsyncIconImage.LoadingState(0, v15, v16, v18);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v86 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v87 = &v86 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v86 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = (&v86 - v32);
  v104 = v4;
  v105 = a4;
  sub_21C58D090(a4, v34, v35, v36);
  v37 = *v33;
  v38 = *(v20 + 8);
  v39 = *v33;
  v40 = v33;
  v41 = v19;
  v38(v40, v19);
  v102 = v19;
  if (!v37)
  {
    goto LABEL_9;
  }

  sub_21C58AB9C(0, &qword_2812166C0, 0x277D1B1A8);
  v45 = v103;
  v46 = sub_21C595968();

  v41 = v102;
  if ((v46 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21C58D090(v105, v42, v43, v44);
  v47 = v97;
  sub_21C58B790(v31 + *(v41 + 40), v97, &qword_27CDE0678, &qword_21C596948);
  v48 = v31;
  v49 = v47;
  v38(v48, v41);
  v50 = *(v89 + 48);
  v51 = v92;
  sub_21C58B790(v101, v92, &qword_27CDE0678, &qword_21C596948);
  sub_21C58B790(v49, &v51[v50], &qword_27CDE0678, &qword_21C596948);
  v52 = v91;
  v53 = *(v90 + 48);
  if (v53(v51, 1, v91) != 1)
  {
    v54 = v88;
    sub_21C58B790(v51, v88, &qword_27CDE0678, &qword_21C596948);
    if (v53(&v51[v50], 1, v52) != 1)
    {
      v79 = v86;
      sub_21C58F034(&v51[v50], v86);
      v80 = sub_21C58FB14(v54, v79);
      sub_21C58F208(v79);
      sub_21C58B988(v97, &qword_27CDE0678, &qword_21C596948);
      sub_21C58F208(v54);
      sub_21C58B988(v51, &qword_27CDE0678, &qword_21C596948);
      v41 = v102;
      if ((v80 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    sub_21C58B988(v97, &qword_27CDE0678, &qword_21C596948);
    sub_21C58F208(v54);
LABEL_8:
    sub_21C58B988(v51, &qword_27CDE06C0, &qword_21C596BD0);
    v41 = v102;
    goto LABEL_9;
  }

  sub_21C58B988(v49, &qword_27CDE0678, &qword_21C596948);
  if (v53(&v51[v50], 1, v52) != 1)
  {
    goto LABEL_8;
  }

  sub_21C58B988(v51, &qword_27CDE0678, &qword_21C596948);
  v41 = v102;
LABEL_20:
  v81 = v87;
  sub_21C58D090(v105, v42, v43, v44);
  v82 = *(v81 + 1);
  v83 = v82;
  v38(v81, v41);
  if (v100)
  {
    if (v82)
    {
      sub_21C58AB9C(0, &qword_281216718, 0x277D1B1C8);
      v84 = v100;
      v85 = sub_21C595968();

      v41 = v102;
      if (v85)
      {
        return;
      }
    }
  }

  else
  {
    if (!v82)
    {
      return;
    }
  }

LABEL_9:
  sub_21C58D090(v105, v42, v43, v44);
  if (*(v26 + *(v41 + 44)))
  {

    v38(v26, v41);
    sub_21C595908();
  }

  else
  {
    v38(v26, v41);
  }

  v56 = v100;
  v55 = v101;
  v57 = v104;
  v58 = sub_21C58EB88(v101, v100, v105);
  v59 = v103;
  v97 = v58;
  v60 = [v103 imageForDescriptor_];
  sub_21C5957D8();
  sub_21C5957B8();
  v61 = *v23;
  v92 = v59;

  *v23 = v59;
  sub_21C5957C8();
  sub_21C5957B8();
  sub_21C58F264(v55, v23 + *(v41 + 40));
  sub_21C5957C8();
  v62 = v56;
  sub_21C5957B8();

  v23[1] = v56;
  sub_21C5957C8();
  if (v60)
  {
    v63 = v97;
    if (([v60 placeholder] & 1) != 0 || (v64 = objc_msgSend(v60, sel_CGImage)) == 0)
    {
      v66 = sub_21C5958F8();
      (*(*(v66 - 8) + 56))(v95, 1, 1, v66);
      v67 = v93;
      v68 = *(v93 + 16);
      v103 = v60;
      v69 = v105;
      v68(v96, v57, v105);
      sub_21C5958D8();
      v101 = v92;
      v70 = v63;
      v71 = sub_21C5958C8();
      v72 = (*(v67 + 80) + 64) & ~*(v67 + 80);
      v73 = swift_allocObject();
      v74 = MEMORY[0x277D85700];
      *(v73 + 2) = v71;
      *(v73 + 3) = v74;
      v75 = v99;
      *(v73 + 4) = v98;
      *(v73 + 5) = v75;
      *(v73 + 6) = v101;
      *(v73 + 7) = v70;
      (*(v67 + 32))(&v73[v72], v96, v69);
      v76 = sub_21C594754(0, 0, v95, &unk_21C596BE0, v73);
      sub_21C5957B8();
      v77 = *(v102 + 44);

      *(v23 + v77) = v76;
      sub_21C5957C8();
    }

    else
    {

      MEMORY[0x28223BE20](*(v57 + *(v105 + 80)));
      v65 = v99;
      *(&v86 - 4) = v98;
      *(&v86 - 3) = v65;
      *(&v86 - 2) = v60;
      *(&v86 - 1) = v57;
      sub_21C5955E8();
    }
  }

  else
  {
    MEMORY[0x28223BE20](*(v57 + *(v105 + 80)));
    v78 = v99;
    *(&v86 - 4) = v98;
    *(&v86 - 3) = v78;
    *(&v86 - 2) = v57;
    sub_21C5955E8();
  }
}

uint64_t sub_21C58E6EC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21C58E6F8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_21C58E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for AsyncIconImage(0, v5, v6, a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 64) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  swift_unknownObjectRelease();

  v11 = v4 + v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21C595588();
    (*(*(v12 - 8) + 8))(v4 + v9, v12);
  }

  else
  {
  }

  v13 = v7[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21C5955C8();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  else
  {
  }

  sub_21C58E6EC(*(v11 + v7[10]), *(v11 + v7[10] + 8));
  v15 = v7[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21C5956C8();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
  }

  sub_21C58FB08(*(v11 + v7[12]), *(v11 + v7[12] + 8), *(v11 + v7[12] + 16), *(v11 + v7[12] + 17));
  sub_21C58E6EC(*(v11 + v7[13]), *(v11 + v7[13] + 8));
  sub_21C58E6F8(*(v11 + v7[14]), *(v11 + v7[14] + 8), *(v11 + v7[14] + 9));
  sub_21C58E6F8(*(v11 + v7[15]), *(v11 + v7[15] + 8), *(v11 + v7[15] + 9));
  sub_21C58E6EC(*(v11 + v7[16]), *(v11 + v7[16] + 8));
  sub_21C58FAFC(*(v11 + v7[17]), *(v11 + v7[17] + 8));

  v17 = (v11 + v7[22]);

  v19 = type metadata accessor for AsyncIconImage.LoadingState(0, v5, v6, v18);
  v20 = v17 + *(v19 + 40);
  v21 = type metadata accessor for IconEnvironmentTraits(0);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v22 = sub_21C595588();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = v10;
    v24 = v21[5];
    v25 = sub_21C5956C8();
    (*(*(v25 - 8) + 8))(&v20[v24], v25);
    v26 = v21[6];
    v27 = sub_21C5955C8();
    v28 = &v20[v26];
    v10 = v23;
    v9 = (v8 + 64) & ~v8;
    (*(*(v27 - 8) + 8))(v28, v27);
  }

  sub_21C58D478(*(v17 + *(v19 + 48)));
  sub_21C5957D8();

  return MEMORY[0x2821FE8E8](v4, v9 + v10, v8 | 7);
}

id sub_21C58EB88(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21C5955C8();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21C5956C8();
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for IconEnvironmentTraits(0);
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) init];
  }

  sub_21C58B790(a1, v13, &qword_27CDE0678, &qword_21C596948);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = a2;
    sub_21C58B988(v13, &qword_27CDE0678, &qword_21C596948);
  }

  else
  {
    sub_21C58F034(v13, v17);
    v20 = a2;
    v21 = sub_21C5927E4(a3);
    if (v22)
    {
      if (a2)
      {
        [v20 scale];
      }

      else
      {
        v23 = sub_21C5921CC(a3);
      }

      v24 = v23;
    }

    else
    {
      v24 = *&v21;
    }

    [v18 setAppearance_];
    if (*&v17[v14[11]])
    {
      [v18 setTintColor_];
    }

    [v18 setAppearanceVariant_];
    v25 = v39;
    (*(v8 + 104))(v10, *MEMORY[0x277CE0210], v39);
    v26 = sub_21C595578();
    (*(v8 + 8))(v10, v25);
    [v18 setContrast_];
    v28 = v40;
    v27 = v41;
    v29 = v42;
    (*(v41 + 104))(v40, *MEMORY[0x277CDFA88], v42);
    v30 = sub_21C5955B8();
    (*(v27 + 8))(v28, v29);
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    [v18 setLanguageDirection_];
    [v18 setScale_];
    v32 = &v17[v14[7]];
    if ((v32[8] & 1) == 0)
    {
      [v18 setShape_];
    }

    v33 = v17[v14[8]];
    if (v33 != 2)
    {
      [v18 setDrawBorder_];
    }

    v34 = sub_21C58F098(a3);
    if ((v36 & 1) == 0)
    {
      [v18 setSize_];
    }

    sub_21C58F208(v17);
  }

  return v18;
}

uint64_t sub_21C58F034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconEnvironmentTraits(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C58F098(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  result = *v7;
  v9 = *(v7 + 16);
  if (*(v7 + 17) != 1)
  {
    v10 = *v7;
    v11 = *(v7 + 8);

    sub_21C595928();
    v12 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58FB08(v10, v11, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v13[1];
  }

  return result;
}

uint64_t sub_21C58F208(uint64_t a1)
{
  v2 = type metadata accessor for IconEnvironmentTraits(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C58F264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21C58F2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = a4;
  v8 = a3;
  v30[3] = a2;
  v10 = type metadata accessor for AsyncIconImage.LoadingState(0, a3, a4, a4);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  if (qword_2812167D8 != -1)
  {
    swift_once();
  }

  v13 = sub_21C595538();
  __swift_project_value_buffer(v13, qword_281216A80);
  v14 = a1;
  v15 = sub_21C595518();
  v16 = sub_21C595918();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30[1] = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30[0] = v10;
    v20 = v8;
    v21 = v7;
    v22 = a5;
    v23 = v19;
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v24 = v14;
    v25 = v22;
    v7 = v21;
    v8 = v20;
    v10 = v30[0];
    _os_log_impl(&dword_21C589000, v15, v16, v25, v18, 0xCu);
    sub_21C58B988(v23, &qword_27CDE06C8, &qword_21C596BE8);
    MEMORY[0x21CF0D450](v23, -1, -1);
    MEMORY[0x21CF0D450](v18, -1, -1);
  }

  result = [v14 CGImage];
  if (result)
  {
    [v14 scale];
    v27 = sub_21C595788();
    type metadata accessor for AsyncIconImage(0, v8, v7, v28);
    sub_21C5957D8();
    sub_21C5957B8();
    v29 = *(v10 + 48);
    sub_21C58D478(*&v12[v29]);
    *&v12[v29] = v27;
    return sub_21C5957C8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21C58F5AC()
{
  v0 = sub_21C595538();
  __swift_allocate_value_buffer(v0, qword_281216A80);
  __swift_project_value_buffer(v0, qword_281216A80);
  return sub_21C595528();
}

uint64_t objectdestroy_39Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for AsyncIconImage(0, v5, v6, a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = v4 + v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21C595588();
    (*(*(v12 - 8) + 8))(v4 + v9, v12);
  }

  else
  {
  }

  v13 = v7[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21C5955C8();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  else
  {
  }

  sub_21C58E6EC(*(v11 + v7[10]), *(v11 + v7[10] + 8));
  v15 = v7[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21C5956C8();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
  }

  sub_21C58FB08(*(v11 + v7[12]), *(v11 + v7[12] + 8), *(v11 + v7[12] + 16), *(v11 + v7[12] + 17));
  sub_21C58E6EC(*(v11 + v7[13]), *(v11 + v7[13] + 8));
  sub_21C58E6F8(*(v11 + v7[14]), *(v11 + v7[14] + 8), *(v11 + v7[14] + 9));
  sub_21C58E6F8(*(v11 + v7[15]), *(v11 + v7[15] + 8), *(v11 + v7[15] + 9));
  sub_21C58E6EC(*(v11 + v7[16]), *(v11 + v7[16] + 8));
  sub_21C58FAFC(*(v11 + v7[17]), *(v11 + v7[17] + 8));

  v17 = (v11 + v7[22]);

  v19 = type metadata accessor for AsyncIconImage.LoadingState(0, v5, v6, v18);
  v20 = v17 + *(v19 + 40);
  v21 = type metadata accessor for IconEnvironmentTraits(0);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v22 = sub_21C595588();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = v10;
    v24 = v21[5];
    v25 = sub_21C5956C8();
    (*(*(v25 - 8) + 8))(&v20[v24], v25);
    v26 = v21[6];
    v27 = sub_21C5955C8();
    v28 = &v20[v26];
    v10 = v23;
    v9 = (v8 + 32) & ~v8;
    (*(*(v27 - 8) + 8))(v28, v27);
  }

  sub_21C58D478(*(v17 + *(v19 + 48)));
  sub_21C5957D8();

  return MEMORY[0x2821FE8E8](v4, v9 + v10, v8 | 7);
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

void sub_21C58FAFC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21C58FB08(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

uint64_t sub_21C58FB14(uint64_t a1, uint64_t a2)
{
  if ((sub_21C595578() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for IconEnvironmentTraits(0);
  if ((sub_21C595578() & 1) == 0 || (sub_21C5955B8() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[8];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }

LABEL_15:
    if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
    {
      return 0;
    }

    v14 = v4[11];
    v15 = *(a1 + v14);
    v16 = *(a2 + v14);
    if (v15)
    {
      if (!v16)
      {
        return 0;
      }

      sub_21C58B06C();
      v17 = v16;
      v18 = v15;
      v19 = sub_21C595968();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v12 != 2 && ((v12 ^ v11) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

void *sub_21C58FCB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_21C58FCCC@<D0>(uint64_t a1@<X8>)
{
  sub_21C58BDF8();
  sub_21C595678();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void *sub_21C58FD78@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58BEAC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

void *sub_21C58FE94@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58C0BC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

uint64_t sub_21C58FFDC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C59001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0698, &qword_21C596A70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A0, &qword_21C596A78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = *(a3 + 36);
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A8, &qword_21C596A80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = *(a3 + 44);
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + *(a3 + 72));
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    type metadata accessor for AsyncIconImage.LoadingState(255, *(a3 + 16), *(a3 + 24), v15);
    v18 = sub_21C5957D8();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + *(a3 + 88);

    return v19(v20, a2, v18);
  }
}

uint64_t sub_21C59020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0698, &qword_21C596A70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A0, &qword_21C596A78);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a4 + 36);
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A8, &qword_21C596A80);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = *(a4 + 44);
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  else
  {
    type metadata accessor for AsyncIconImage.LoadingState(255, *(a4 + 16), *(a4 + 24), v17);
    v18 = sub_21C5957D8();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 88);

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_21C5903FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C590434()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C59050C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C590608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C590DD4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C59066C()
{
  sub_21C58C118();
  sub_21C595668();
  return v1;
}

uint64_t sub_21C5906A8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v5 = v2;
  return sub_21C5905A4(v2, v3, v4);
}

uint64_t sub_21C590700(uint64_t a1, id *a2)
{
  result = sub_21C595848();
  *a2 = 0;
  return result;
}

uint64_t sub_21C590778(uint64_t a1, id *a2)
{
  v3 = sub_21C595858();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C5907F8@<X0>(uint64_t *a1@<X8>)
{
  sub_21C595868();
  v2 = sub_21C595838();

  *a1 = v2;
  return result;
}

uint64_t sub_21C59083C()
{
  v1 = *v0;
  sub_21C595A18();
  MEMORY[0x21CF0D050](v1);
  return sub_21C595A48();
}

uint64_t sub_21C590884(uint64_t a1)
{
  v2 = *v1;
  sub_21C595A18();
  MEMORY[0x21CF0D050](v2);
  return sub_21C595A48();
}

uint64_t sub_21C5908C8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21C595838();

  *a2 = v3;
  return result;
}

uint64_t sub_21C590910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C595868();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C59093C(uint64_t a1)
{
  v2 = sub_21C590C6C(&qword_27CDE05B0, type metadata accessor for ISImageDescriptorName, &unk_21C596248);
  v3 = sub_21C590C6C(&qword_27CDE05B8, type metadata accessor for ISImageDescriptorName, &unk_21C5961F0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C5909F8()
{
  v0 = sub_21C595868();
  v1 = MEMORY[0x21CF0CEC0](v0);

  return v1;
}

uint64_t sub_21C590A34(uint64_t a1)
{
  sub_21C595868();
  sub_21C595888();
}

uint64_t sub_21C590A88(uint64_t a1)
{
  sub_21C595868();
  sub_21C595A18();
  sub_21C595888();
  v1 = sub_21C595A48();

  return v1;
}

uint64_t sub_21C590AFC(void *a1, uint64_t *a2)
{
  v2 = sub_21C595868();
  v4 = v3;
  if (v2 == sub_21C595868() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21C5959C8();
  }

  return v7 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C590B94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C590BB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21C590C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C590DD4()
{
  result = qword_27CDE0590;
  if (!qword_27CDE0590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0598, &unk_21C596340);
    sub_21C590C6C(&qword_27CDE05A0, sub_21C590ED0, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0590);
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

unint64_t sub_21C590ED0()
{
  result = qword_27CDE05A8;
  if (!qword_27CDE05A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE05A8);
  }

  return result;
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

void sub_21C590FEC(uint64_t a1)
{
  sub_21C595588();
  sub_21C58D498(&qword_27CDE05C0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
  sub_21C595828();
  v2 = type metadata accessor for IconEnvironmentTraits(0);
  sub_21C5956C8();
  sub_21C58D498(&qword_27CDE05C8, MEMORY[0x277CE0228], MEMORY[0x277CE0238]);
  sub_21C595828();
  sub_21C5955C8();
  sub_21C58D498(&qword_27CDE05D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
  sub_21C595828();
  v3 = (v1 + v2[7]);
  if (*(v3 + 8) == 1)
  {
    sub_21C595A38();
  }

  else
  {
    v4 = *v3;
    sub_21C595A38();
    MEMORY[0x21CF0D050](v4);
  }

  if (*(v1 + v2[8]) != 2)
  {
    sub_21C595A38();
  }

  sub_21C595A38();
  MEMORY[0x21CF0D050](*(v1 + v2[9]));
  MEMORY[0x21CF0D050](*(v1 + v2[10]));
  v5 = *(v1 + v2[11]);
  if (v5)
  {
    sub_21C595A38();
    v6 = v5;
    sub_21C595978();
  }

  else
  {
    sub_21C595A38();
  }
}

uint64_t sub_21C591220()
{
  sub_21C595A18();
  sub_21C590FEC(v1);
  return sub_21C595A48();
}

uint64_t sub_21C591264(uint64_t a1)
{
  sub_21C595A18();
  sub_21C590FEC(v2);
  return sub_21C595A48();
}

uint64_t sub_21C5912A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591C58();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C591304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591BDC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C591368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591B28();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C5913CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591A50();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C59143C()
{
  sub_21C58BDF8();
  sub_21C595678();
  return v1;
}

uint64_t sub_21C59147C()
{
  sub_21C58BEAC();
  sub_21C595678();
  return v1;
}

uint64_t sub_21C5914F8(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_21C595678();
  return v3;
}

uint64_t sub_21C591544()
{
  sub_21C58C0BC();
  sub_21C595678();
  return v1;
}

uint64_t View.iconSize(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t View.iconDrawsBorder(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t sub_21C591758(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t View.disableIconEnviromentSettings(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySo6CGSizeVSgGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_21C5955D8();
  sub_21C5919AC(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_21C5919AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C591A50()
{
  result = qword_27CDE0618;
  if (!qword_27CDE0618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0620, &qword_21C596740);
    sub_21C591AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0618);
  }

  return result;
}

unint64_t sub_21C591AD4()
{
  result = qword_27CDE0628;
  if (!qword_27CDE0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0628);
  }

  return result;
}

unint64_t sub_21C591B28()
{
  result = qword_27CDE0630;
  if (!qword_27CDE0630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0638, &qword_21C596748);
    sub_21C591D0C(&qword_27CDE0560, type metadata accessor for ISIconShape, &unk_21C595FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0630);
  }

  return result;
}

unint64_t sub_21C591BDC()
{
  result = qword_281216740;
  if (!qword_281216740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0640, &qword_21C596750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216740);
  }

  return result;
}

unint64_t sub_21C591C58()
{
  result = qword_2812166C8;
  if (!qword_2812166C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0648, &qword_21C596758);
    sub_21C591D0C(&qword_2812166D8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812166C8);
  }

  return result;
}

uint64_t sub_21C591D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AsyncIconImagePhase.image.getter()
{
  if (*v0 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t AsyncIconImagePhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t sub_21C591DC8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21C595658();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21C58B790(v2, &v14 - v9, &qword_27CDE0658, &qword_21C5967A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21C595588();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21C595928();
    v13 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21C591FC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_21C595658();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21C58B790(v2 + *(a1 + 36), &v15 - v10, &qword_27CDE0668, &qword_21C5967E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21C5955C8();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21C595928();
    v14 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_21C5921CC(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 40));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_21C595928();
  v10 = sub_21C595708();
  sub_21C595508();

  sub_21C595648();
  swift_getAtKeyPath();
  sub_21C58E6EC(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_21C592324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_21C595658();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21C58B790(v2 + *(a1 + 44), &v15 - v10, &qword_27CDE0670, &qword_21C596850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21C5956C8();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21C595928();
    v14 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21C592528(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_21C595928();
    v9 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_21C59267C(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  result = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {
    v10 = *v7;

    sub_21C595928();
    v11 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6F8(v10, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v12;
  }

  return result;
}

uint64_t sub_21C5927E4(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 60);
  result = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {
    v10 = *v7;

    sub_21C595928();
    v11 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6F8(v10, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v12;
  }

  return result;
}

uint64_t sub_21C59294C(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_21C595928();
    v9 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void *sub_21C592AA0(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_21C595928();
    v10 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58FAFC(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_21C592BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncIconImage.LoadingState(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v9 - v7, a1, v5);
  sub_21C5957A8();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_21C592CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v5 = type metadata accessor for AsyncIconImage.LoadingState(0, a1, a2, a3);
  *a4 = 0;
  *(a4 + 1) = 0;
  v6 = v5[10];
  v7 = type metadata accessor for IconEnvironmentTraits(0);
  result = (*(*(v7 - 8) + 56))(&a4[v6], 1, 1, v7);
  *&a4[v5[11]] = 0;
  *&a4[v5[12]] = 0x8000000000000000;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AsyncIconImage.init(icon:descriptor:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v34 = a4;
  v35 = a5;
  v14 = type metadata accessor for AsyncIconImage.LoadingState(0, a6, a7, a4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for AsyncIconImage(0, a6, a7, v17);
  v19 = v18[9];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  swift_storeEnumTagMultiPayload();
  v20 = a8 + v18[10];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v18[11];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  swift_storeEnumTagMultiPayload();
  v22 = a8 + v18[12];
  *v22 = swift_getKeyPath();
  *(v22 + 1) = 0;
  *(v22 + 8) = 0;
  v23 = a8 + v18[13];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a8 + v18[14];
  *v24 = swift_getKeyPath();
  *(v24 + 4) = 0;
  v25 = a8 + v18[15];
  *v25 = swift_getKeyPath();
  *(v25 + 4) = 0;
  v26 = a8 + v18[16];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a8 + v18[17];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v18[19];
  sub_21C592CF0(a6, a7, v29, v16);
  result = sub_21C592BFC(v16, a6, a7, v30);
  *(a8 + v18[23]) = 0;
  *(a8 + v18[18]) = a1;
  *(a8 + v28) = a2;
  *(a8 + v18[20]) = a3;
  v32 = (a8 + v18[21]);
  v33 = v35;
  *v32 = v34;
  v32[1] = v33;
  return result;
}

uint64_t AsyncIconImage.init<A, B>(icon:descriptor:transaction:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  v19 = sub_21C5956F8();
  WitnessTable = swift_getWitnessTable();
  return AsyncIconImage.init(icon:descriptor:transaction:content:)(a1, a2, a3, sub_21C594B34, v18, v19, WitnessTable, a9);
}

uint64_t sub_21C593148@<X0>(unint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v48 = a7;
  v49 = a8;
  v42 = a4;
  v43 = a3;
  v12 = *(a5 - 8);
  v44 = a2;
  v45 = v12;
  v50 = a9;
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  v26 = sub_21C5956F8();
  v46 = *(v26 - 8);
  v47 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v41 - v28;
  v30 = *a1;
  if (v30 >> 62)
  {
    v42(v27);
    v36 = *(v20 + 16);
    v36(v25, v23, a6);
    v37 = *(v20 + 8);
    v37(v23, a6);
    v36(v23, v25, a6);
    v35 = v48;
    sub_21C593614(v23, a5, a6, v48, v50);
    v37(v23, a6);
    v37(v25, a6);
  }

  else
  {

    v44(v31);
    v32 = v45;
    v33 = *(v45 + 16);
    v33(v18, v15, a5);
    v34 = *(v32 + 8);
    v34(v15, a5);
    v33(v15, v18, a5);
    v35 = v48;
    sub_21C59351C(v15, a5, a6, v48, v50);
    sub_21C58D478(v30);
    v34(v15, a5);
    v34(v18, a5);
  }

  v51 = v35;
  v52 = v50;
  v38 = v47;
  swift_getWitnessTable();
  v39 = v46;
  (*(v46 + 16))(v49, v29, v38);
  return (*(v39 + 8))(v29, v38);
}

uint64_t sub_21C59351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21C5956D8();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21C5956E8();
}

uint64_t sub_21C593614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21C5956D8();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21C5956E8();
}

uint64_t sub_21C59370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AsyncIconImage.LoadingState(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v11 = type metadata accessor for AsyncIconImage(0, a2, a3, v10);
  sub_21C58D090(v11, v12, v13, v14);
  if (!*&v9[*(v6 + 44)])
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = *(v7 + 8);

  v15(v9, v6);
  sub_21C595908();
}

uint64_t sub_21C59384C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = *a1;
  v13 = type metadata accessor for AsyncIconImage(0, a3, a4, v12);
  v14 = *(a2 + *(v13 + 72));
  sub_21C58D114(v13, v10);
  sub_21C58DCA4(v14, v10, v11, v13);
  return sub_21C58B988(v10, &qword_27CDE0678, &qword_21C596948);
}

uint64_t sub_21C593934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = type metadata accessor for AsyncIconImage.LoadingState(0, a7, a8, a4);
  v8[9] = swift_task_alloc();
  v8[10] = sub_21C5958D8();
  v8[11] = sub_21C5958C8();
  v10 = sub_21C5958A8();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x2822009F8](sub_21C593A10, v10, v9);
}

uint64_t sub_21C593A10()
{
  v7 = *(v0 + 24);
  v1 = sub_21C5958C8();
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D0, &qword_21C596C08);
  *v3 = v0;
  v3[1] = sub_21C593B3C;
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 16, v1, v5, 0xD00000000000002CLL, 0x800000021C597E90, sub_21C595380, v2, v4);
}

uint64_t sub_21C593B3C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21C593C9C, v3, v2);
}

uint64_t sub_21C593C9C()
{

  v2 = *(v0 + 16);
  if (v2)
  {
    if (([*(v0 + 16) placeholder] & 1) != 0 || (v4 = objc_msgSend(v2, sel_CGImage)) == 0)
    {
      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v13 = *(v0 + 48);
      v12 = *(v0 + 56);
      type metadata accessor for AsyncIconImage.LoadingError(0, v13, v12, v3);
      swift_getWitnessTable();
      v14 = swift_allocError() | 0x4000000000000000;
      type metadata accessor for AsyncIconImage(0, v13, v12, v15);
      sub_21C5957D8();
      sub_21C5957B8();
      v16 = *(v11 + 48);
      sub_21C58D478(*(v10 + v16));
      *(v10 + v16) = v14;
      sub_21C5957C8();

      goto LABEL_8;
    }

    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    type metadata accessor for AsyncIconImage(0, v6, v5, v8);
    v9 = swift_task_alloc();
    v9[2] = v6;
    v9[3] = v5;
    v9[4] = v2;
    v9[5] = v7;
    sub_21C5955E8();
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    v19 = *(v0 + 40);
    type metadata accessor for AsyncIconImage(0, v17, v18, v1);
    v20 = swift_task_alloc();
    v20[2] = v17;
    v20[3] = v18;
    v20[4] = v19;
    sub_21C5955E8();
  }

LABEL_8:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21C593EE8(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v31 = sub_21C5957E8();
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C595818();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = sub_21C5957F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58AB9C(0, &qword_2812166F8, 0x277D85C78);
  (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);
  v27 = sub_21C595948();
  (*(v13 + 8))(v15, v12);
  (*(v9 + 16))(v11, v28, v8);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v19 = v29;
  v18 = v30;
  *(v17 + 16) = v29;
  *(v17 + 24) = v18;
  (*(v9 + 32))(v17 + v16, v11, v8);
  aBlock[4] = sub_21C5953C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C5945E4;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  v22 = v18;
  sub_21C595808();
  v35 = MEMORY[0x277D84F90];
  sub_21C58D4E0(&qword_281216758, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE06E0, &qword_21C596C18);
  sub_21C58BC30(&qword_281216750, qword_27CDE06E0, &qword_21C596C18, MEMORY[0x277D83970]);
  v23 = v31;
  sub_21C595998();
  v24 = v27;
  MEMORY[0x21CF0CF60](0, v7, v4, v20);
  _Block_release(v20);

  (*(v34 + 8))(v4, v23);
  (*(v32 + 8))(v7, v33);
}

void sub_21C594370(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_21C595450;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C594578;
  aBlock[3] = &block_descriptor_93;
  v12 = _Block_copy(aBlock);

  [a1 getImageForImageDescriptor:a2 completion:v12];
  _Block_release(v12);
}

uint64_t sub_21C594528(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  return sub_21C5958B8();
}

void sub_21C594578(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21C5945E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21C594628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AsyncIconImage.LoadingState(0, a2, a3, a4);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  type metadata accessor for AsyncIconImage.LoadingError(0, a2, a3, v9);
  swift_getWitnessTable();
  v10 = swift_allocError() | 0x4000000000000000;
  type metadata accessor for AsyncIconImage(0, a2, a3, v11);
  sub_21C5957D8();
  sub_21C5957B8();
  v12 = *(v6 + 48);
  sub_21C58D478(*&v8[v12]);
  *&v8[v12] = v10;
  return sub_21C5957C8();
}

uint64_t sub_21C594754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06B8, &qword_21C596BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C58B790(a3, v25 - v10, &qword_27CDE06B8, &qword_21C596BC8);
  v12 = sub_21C5958F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C58B988(v11, &qword_27CDE06B8, &qword_21C596BC8);
  }

  else
  {
    sub_21C5958E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21C5958A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21C595878() + 32;
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

      sub_21C58B988(a3, &qword_27CDE06B8, &qword_21C596BC8);

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

  sub_21C58B988(a3, &qword_27CDE06B8, &qword_21C596BC8);
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

uint64_t sub_21C594A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_21C594B80(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AsyncIconImage(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_21C58DCA4(*(v7 + *(v6 + 72)), a1, *(v7 + *(v6 + 76)), v6);
}

uint64_t sub_21C594BF8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AsyncIconImage(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21C59384C(a1, v9, v6, v7);
}

uint64_t sub_21C594C90(uint64_t a1, unsigned int a2)
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

uint64_t sub_21C594CEC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C594D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21C594DAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21C594E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v7 = v4[5];
  v9 = *(type metadata accessor for AsyncIconImage(0, v8, v7, a4) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_21C594F2C;

  return sub_21C593934(a1, v11, v12, v13, v14, v4 + v10, v8, v7);
}

uint64_t sub_21C594F2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C595020(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21C595118;

  return v6(a1);
}

uint64_t sub_21C595118()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C595210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C595500;

  return sub_21C595020(a1, v4);
}

uint64_t sub_21C5952C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C594F2C;

  return sub_21C595020(a1, v4);
}

void sub_21C5953C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_21C594370(v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C595450(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);

  return sub_21C594528(a1);
}