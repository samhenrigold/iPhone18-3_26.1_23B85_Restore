uint64_t sub_265A2FA08(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_265A4684C();

    return sub_265A466CC();
  }

  else
  {
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    sub_265A466CC();
    sub_265A46CAC();
    swift_getWitnessTable();
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    return sub_265A466CC();
  }
}

uint64_t sub_265A2FB6C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_265A4684C();
    sub_265A466CC();
  }

  else
  {
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    sub_265A466CC();
    sub_265A46CAC();
    swift_getWitnessTable();
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    sub_265A466CC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_265A2FD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A464DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265A2FDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A464DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265A2FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_265A462EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265A2FF50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_265A462EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265A2FFFC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA10, &qword_265A479B0);
  sub_265A31D40(&qword_28002EA18, &qword_28002EA10, &qword_265A479B0, MEMORY[0x277CE00E0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA20, &qword_265A479B8);
  sub_265A466CC();
  swift_getOpaqueTypeConformance2();
  sub_265A31D40(&qword_28002EA28, &qword_28002EA20, &qword_265A479B8, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_265A468AC();
  sub_265A466CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA30, &qword_265A479C0);
  sub_265A466CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA38, &qword_265A479C8);
  sub_265A466CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA40, &qword_265A479D0);
  sub_265A466CC();
  swift_getOpaqueTypeConformance2();
  sub_265A36488(&qword_28002EA50, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_265A31D40(&qword_28002EA58, &qword_28002EA30, &qword_265A479C0, MEMORY[0x277CE08A0]);
  swift_getWitnessTable();
  sub_265A31D40(&qword_28002EA60, &qword_28002EA38, &qword_265A479C8, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_265A31D40(qword_28002EA68, &qword_28002EA40, &qword_265A479D0, MEMORY[0x277CE0740]);
  return swift_getWitnessTable();
}

uint64_t sub_265A30364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_265A4675C();
  *a1 = result;
  return result;
}

uint64_t sub_265A303C0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265A303F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A4634C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265A30464(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A4634C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265A30518@<X0>(uint64_t a1@<X8>)
{
  result = sub_265A4671C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_265A3057C@<X0>(uint64_t a1@<X8>)
{
  result = sub_265A4673C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_265A30608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_265A4635C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_265A30660(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A463CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265A306CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A463CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265A3073C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED10, &qword_265A47D50);
  sub_265A4679C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED08, &qword_265A47D48);
  sub_265A31D40(&qword_28002ED30, &qword_28002ED08, &qword_265A47D48, MEMORY[0x277CDF068]);
  swift_getOpaqueTypeConformance2();
  sub_265A396E0(&qword_28002ED38, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A30970(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC90, &qword_265A47C88);
  sub_265A462EC();
  sub_265A46BEC();
  type metadata accessor for SettingsListItem(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_265A46ADC();
  sub_265A46AFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED58, &qword_265A47E30);
  sub_265A466CC();
  sub_265A385FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A3AB7C();
  return swift_getWitnessTable();
}

uint64_t sub_265A30B24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_265A30B74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A30BB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_265A30BFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A30C34()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A30D2C()
{
  v1 = *(v0 + 32);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v13 = *(*v2 + 64);
  v5 = sub_265A4655C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v12 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = v2[10];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v8, 1, v1))
  {
    (*(v9 + 8))(v0 + v4 + v8, v1);
  }

  v10 = (v4 + v13 + v7) & ~v7;
  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v3 | v7 | 7);
}

uint64_t sub_265A30F10()
{
  v1 = *(v0 + 32);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  v6 = v2[10];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v6, 1, v1))
  {
    (*(v7 + 8))(v0 + v4 + v6, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_265A310C8()
{
  result = [objc_opt_self() imageDescriptorNamed_];
  qword_28002E8C8 = result;
  return result;
}

uint64_t SettingsIcon.init(iconRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A464DC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_265A3118C(void *a1@<X8>)
{
  v27 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E908, &qword_265A478A0);
  MEMORY[0x28223BE20](v25);
  v2 = &v24 - v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E910, &qword_265A478A8);
  MEMORY[0x28223BE20](v24);
  v4 = &v24 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E918, &qword_265A478B0);
  MEMORY[0x28223BE20](v26);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E920, &qword_265A478B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_265A4649C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A464CC();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D4D960])
  {
    (*(v12 + 96))(v14, v11);
    v16 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v17 = sub_265A46B8C();

    [v16 initWithBundleIdentifier_];

    if (qword_28002E8C0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x277D4D958])
  {
    (*(v12 + 96))(v14, v11);
    v18 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v19 = sub_265A46B8C();

    [v18 initWithType_];

    if (qword_28002E8C0 == -1)
    {
LABEL_6:
      v20 = qword_28002E8C8;
      sub_265A465DC();
      (*(v8 + 16))(v4, v10, v7);
      swift_storeEnumTagMultiPayload();
      sub_265A31D40(&qword_28002E938, &qword_28002E920, &qword_265A478B8, MEMORY[0x277D7EA70]);
      sub_265A467EC();
      sub_265A31E0C(v6, v2);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E928, &qword_265A478C0);
      sub_265A31C90();
      sub_265A31D88();
      sub_265A467EC();
      sub_265A31E7C(v6);
      (*(v8 + 8))(v10, v7);
      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x277D4D968])
  {
    (*(v12 + 96))(v14, v11);
    v21 = *(v14 + 2);
    v28 = sub_265A46A3C();
    v29 = 0;

    sub_265A467EC();
    v22 = v31;
    *v2 = v30;
    v2[8] = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E928, &qword_265A478C0);
    sub_265A31C90();
    sub_265A31D88();
    sub_265A467EC();
  }

  else if (v15 == *MEMORY[0x277D4D970])
  {
    v28 = 0;
    v29 = 1;
    sub_265A467EC();
    v23 = v31;
    *v2 = v30;
    v2[8] = v23;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E928, &qword_265A478C0);
    sub_265A31C90();
    sub_265A31D88();
    sub_265A467EC();
  }

  else
  {
    sub_265A46DAC();
    __break(1u);
  }
}

uint64_t sub_265A31868(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265A4684C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  (*(v9 + 16))(v11, a1, a4);
  (*(v9 + 32))(v15, v11, a4);
  v15[*(v12 + 36)] = a2;
  MEMORY[0x266766A10](v15, a3, v12, v17);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_265A31A20()
{
  v1 = *v0;
  sub_265A46DDC();
  MEMORY[0x266766E10](v1);
  return sub_265A46DFC();
}

uint64_t sub_265A31A94(uint64_t a1)
{
  v2 = *v1;
  sub_265A46DDC();
  MEMORY[0x266766E10](v2);
  return sub_265A46DFC();
}

void *sub_265A31AEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for SettingsIcon(uint64_t a1)
{
  result = qword_28002E8E0;
  if (!qword_28002E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A31B94(uint64_t a1)
{
  result = sub_265A464DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

unint64_t sub_265A31C90()
{
  result = qword_28002E930;
  if (!qword_28002E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002E918, &qword_265A478B0);
    sub_265A31D40(&qword_28002E938, &qword_28002E920, &qword_265A478B8, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002E930);
  }

  return result;
}

uint64_t sub_265A31D40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_265A31D88()
{
  result = qword_28002E940;
  if (!qword_28002E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002E928, &qword_265A478C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002E940);
  }

  return result;
}

uint64_t sub_265A31E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E918, &qword_265A478B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A31E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E918, &qword_265A478B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PSSpecifierControllerLoadStyle()
{
  if (!qword_28156B5C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28156B5C8);
    }
  }
}

unint64_t sub_265A31F38()
{
  result = qword_28156B5D0;
  if (!qword_28156B5D0)
  {
    type metadata accessor for PSSpecifierControllerLoadStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156B5D0);
  }

  return result;
}

uint64_t sub_265A31FCC(void *a1)
{
  sub_265A464FC();
  sub_265A4662C();
  sub_265A4661C();
  return v2;
}

uint64_t SettingsListItem.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_265A464FC();
  swift_getWitnessTable();
  *a5 = sub_265A4663C();
  *(a5 + 8) = v10 & 1;
  v11 = *(type metadata accessor for SettingsListItem(0, a2, a3, a4) + 44);
  v12 = sub_265A462EC();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a1, v12);
}

uint64_t SettingsListItem.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v128 = a2;
  v131 = sub_265A4643C();
  v136 = *(v131 - 8);
  v3 = MEMORY[0x28223BE20](v131);
  v133 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v109 = v93 - v5;
  v127 = sub_265A467DC();
  v125 = *(v127 - 8);
  v6 = MEMORY[0x28223BE20](v127);
  v126 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v124 = v93 - v8;
  v112 = sub_265A4686C();
  v111 = *(v112 - 8);
  v9 = MEMORY[0x28223BE20](v112);
  v110 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v134 = *(v11 - 8);
  MEMORY[0x28223BE20](v9);
  v129 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EA10, &qword_265A479B0);
  MEMORY[0x28223BE20](v13);
  v15 = (v93 - v14);
  v16 = sub_265A31D40(&qword_28002EA18, &qword_28002EA10, &qword_265A479B0, MEMORY[0x277CE00E0]);
  v17 = *(a1 + 32);
  v148 = v13;
  v149 = v11;
  v95 = v13;
  v150 = v16;
  v151 = v17;
  v96 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v107 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v102 = v93 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA20, &qword_265A479B8);
  v19 = sub_265A466CC();
  v99 = v19;
  v106 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v101 = v93 - v20;
  v148 = v13;
  v149 = v11;
  v150 = v16;
  v151 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = OpaqueTypeConformance2;
  v22 = sub_265A31D40(&qword_28002EA28, &qword_28002EA20, &qword_265A479B8, MEMORY[0x277CE04A0]);
  v146 = OpaqueTypeConformance2;
  v147 = v22;
  WitnessTable = swift_getWitnessTable();
  v148 = v19;
  v149 = WitnessTable;
  v103 = MEMORY[0x277CDEAE8];
  v100 = swift_getOpaqueTypeMetadata2();
  v104 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v24 = v93 - v23;
  sub_265A468AC();
  v25 = sub_265A466CC();
  v113 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v94 = v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v108 = v93 - v29;
  MEMORY[0x28223BE20](v28);
  v130 = v93 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA30, &qword_265A479C0);
  v114 = v25;
  v31 = sub_265A466CC();
  v116 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v115 = v93 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA38, &qword_265A479C8);
  v117 = v31;
  v33 = sub_265A466CC();
  v120 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v132 = v93 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA40, &qword_265A479D0);
  v121 = v33;
  v123 = sub_265A466CC();
  v122 = *(v123 - 8);
  v35 = MEMORY[0x28223BE20](v123);
  v118 = v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v119 = v93 - v37;
  v38 = a1;
  sub_265A33260(a1, v15);
  v137 = *(a1 + 44);
  v93[1] = *(a1 + 24);
  v135 = sub_265A462EC();
  v39 = v129;
  sub_265A462BC();
  v40 = v102;
  v41 = v11;
  sub_265A31868(v39, 1, v95, v11, v96);
  v42 = *(v134 + 8);
  v134 += 8;
  v96 = v42;
  v42(v39, v11);
  sub_265A3670C(v15, &qword_28002EA10, &qword_265A479B0);
  v43 = sub_265A35350(v38);
  v44 = v101;
  v45 = OpaqueTypeMetadata2;
  sub_265A35630(v43, OpaqueTypeMetadata2, v97);
  (*(v107 + 8))(v40, v45);
  v46 = v110;
  sub_265A4685C();
  v47 = v24;
  v48 = v99;
  v49 = WitnessTable;
  sub_265A4696C();
  (*(v111 + 8))(v46, v112);
  (*(v106 + 8))(v44, v48);
  v50 = v129;
  sub_265A462BC();
  sub_265A4652C();
  v96(v50, v41);
  v148 = v48;
  v149 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v94;
  v53 = v100;
  v112 = v51;
  sub_265A4697C();

  (*(v104 + 8))(v47, v53);
  v54 = v109;
  sub_265A462DC();
  v55 = v133;
  sub_265A463EC();
  v56 = sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920], MEMORY[0x277D4D928]);
  v57 = v54;
  v58 = v131;
  v134 = v56;
  LOBYTE(v13) = sub_265A46CCC();
  v59 = v136 + 8;
  v60 = *(v136 + 8);
  v60(v55, v58);
  v61 = v57;
  v136 = v59;
  v129 = v60;
  v60(v57, v58);
  v62 = v124;
  if (v13)
  {
    sub_265A467CC();
  }

  else
  {
    sub_265A467BC();
  }

  v63 = v108;
  v64 = v114;
  sub_265A466BC();
  v65 = *(v125 + 1);
  v66 = v127;
  v65(v62, v127);
  v67 = *(v113 + 8);
  v67(v52, v64);
  v125 = v67;
  v68 = v126;
  sub_265A467AC();
  sub_265A466BC();
  v65(v68, v66);
  v67(v63, v64);
  sub_265A462DC();
  v69 = v133;
  sub_265A463FC();
  v70 = v131;
  sub_265A46CCC();
  v71 = v129;
  (v129)(v69, v70);
  v71(v61, v70);
  v72 = sub_265A36488(&qword_28002EA50, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v144 = v112;
  v145 = v72;
  v127 = MEMORY[0x277CDFAD8];
  v73 = swift_getWitnessTable();
  v74 = v115;
  v75 = v130;
  sub_265A469DC();
  v125(v75, v64);
  sub_265A462DC();
  sub_265A4640C();
  LOBYTE(v75) = sub_265A46CCC();
  v71(v69, v70);
  v71(v61, v70);
  v76 = sub_265A31D40(&qword_28002EA58, &qword_28002EA30, &qword_265A479C0, MEMORY[0x277CE08A0]);
  v142 = v73;
  v143 = v76;
  v77 = v117;
  v78 = swift_getWitnessTable();
  if (v75)
  {
    v79 = 2;
  }

  else
  {
    v79 = 0;
  }

  v130 = v78;
  sub_265A356DC(v79, v77, v78);
  (*(v116 + 8))(v74, v77);
  sub_265A462DC();
  sub_265A4641C();
  v80 = sub_265A46CCC();
  v71(v69, v70);
  v71(v61, v70);
  if (v80)
  {
    v148 = sub_265A46A0C();
  }

  v148 = sub_265A4666C();
  v81 = sub_265A31D40(&qword_28002EA60, &qword_28002EA38, &qword_265A479C8, MEMORY[0x277CE0868]);
  v140 = v130;
  v141 = v81;
  v82 = v121;
  v83 = swift_getWitnessTable();
  v84 = v118;
  v85 = v132;
  sub_265A4694C();

  (*(v120 + 8))(v85, v82);
  v86 = sub_265A31D40(qword_28002EA68, &qword_28002EA40, &qword_265A479D0, MEMORY[0x277CE0740]);
  v138 = v83;
  v139 = v86;
  v87 = v123;
  swift_getWitnessTable();
  v88 = v122;
  v89 = *(v122 + 16);
  v90 = v119;
  v89(v119, v84, v87);
  v91 = *(v88 + 8);
  v91(v84, v87);
  v89(v128, v90, v87);
  return (v91)(v90, v87);
}

uint64_t sub_265A33260@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v189 = a2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB10, &qword_265A47AA0);
  MEMORY[0x28223BE20](v140);
  v138 = &v133 - v3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB18, &qword_265A47AA8);
  MEMORY[0x28223BE20](v156);
  v157 = (&v133 - v4);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB20, &qword_265A47AB0);
  MEMORY[0x28223BE20](v193);
  v159 = &v133 - v5;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB28, &qword_265A47AB8);
  v139 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v137 = &v133 - v6;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB30, &qword_265A47AC0);
  v134 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v133 = &v133 - v7;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB38, &qword_265A47AC8);
  v136 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v135 = &v133 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB40, &qword_265A47AD0);
  MEMORY[0x28223BE20](v155);
  v160 = &v133 - v9;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB48, &qword_265A47AD8);
  MEMORY[0x28223BE20](v183);
  v163 = &v133 - v10;
  v11 = a1[2];
  v12 = sub_265A46CAC();
  MEMORY[0x28223BE20](v12 - 8);
  v165 = &v133 - v13;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB50, &qword_265A47AE0);
  v146 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v145 = &v133 - v14;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB58, &qword_265A47AE8);
  v153 = *(v187 - 8);
  v15 = MEMORY[0x28223BE20](v187);
  v152 = &v133 - v16;
  v154 = a1;
  v17 = *--a1;
  v151 = v17;
  MEMORY[0x28223BE20](v15);
  v149 = v18;
  v150 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB60, &qword_265A47AF0);
  v142 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v141 = &v133 - v19;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB68, &qword_265A47AF8);
  v144 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v143 = &v133 - v20;
  v175 = sub_265A4643C();
  v174 = *(v175 - 8);
  v21 = MEMORY[0x28223BE20](v175);
  v172 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v173 = &v133 - v23;
  v176 = sub_265A4634C();
  v167 = *(v176 - 8);
  v24 = MEMORY[0x28223BE20](v176);
  v166 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v180 = &v133 - v26;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB70, &qword_265A47B00);
  MEMORY[0x28223BE20](v192);
  v190 = &v133 - v27;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB78, &qword_265A47B08);
  MEMORY[0x28223BE20](v185);
  v184 = &v133 - v28;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB80, &qword_265A47B10);
  MEMORY[0x28223BE20](v177);
  v30 = &v133 - v29;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB88, &qword_265A47B18);
  MEMORY[0x28223BE20](v186);
  v32 = &v133 - v31;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB90, &qword_265A47B20);
  MEMORY[0x28223BE20](v191);
  v182 = &v133 - v33;
  v179 = type metadata accessor for SettingsListToggle(0);
  MEMORY[0x28223BE20](v179);
  v170 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_265A463CC();
  v35 = *(v188 - 1);
  MEMORY[0x28223BE20](v188);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_265A4644C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (&v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = a1[4];
  v43 = a1[5];
  v169 = v11;
  v147 = v42;
  v168 = v43;
  v171 = sub_265A462EC();
  sub_265A462CC();
  v44 = (*(v39 + 88))(v41, v38);
  if (v44 == *MEMORY[0x277D4D940])
  {
    (*(v39 + 96))(v41, v38);
    v45 = v35;
    v46 = *(v35 + 32);
    v47 = v188;
    v46(v37, v41, v188);
    v48 = v170;
    (*(v45 + 16))(v170, v37, v47);
    sub_265A3676C(v48, v30);
    swift_storeEnumTagMultiPayload();
    sub_265A36488(&qword_28002EBE8, type metadata accessor for SettingsListToggle, &protocol conformance descriptor for SettingsListToggle);
    v49 = sub_265A31D40(&qword_28002EBF0, &qword_28002EB60, &qword_265A47AF0, MEMORY[0x277CDF028]);
    v50 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8, MEMORY[0x277CDE368]);
    v199 = v178;
    v200 = v187;
    v201 = v49;
    v202 = v50;
    swift_getOpaqueTypeConformance2();
    sub_265A467EC();
    sub_265A366A4(v32, v184, &qword_28002EB88, &qword_265A47B18);
    swift_storeEnumTagMultiPayload();
    sub_265A35FEC();
    sub_265A36178();
    v51 = v182;
    sub_265A467EC();
    sub_265A3670C(v32, &qword_28002EB88, &qword_265A47B18);
    sub_265A366A4(v51, v190, &qword_28002EB90, &qword_265A47B20);
    swift_storeEnumTagMultiPayload();
    sub_265A35F60();
    sub_265A36300();
    sub_265A467EC();
    sub_265A3670C(v51, &qword_28002EB90, &qword_265A47B20);
    sub_265A367D0(v48);
    return (*(v45 + 8))(v37, v188);
  }

  v170 = v30;
  v188 = v32;
  v53 = v44 == *MEMORY[0x277D4D930];
  v148 = v41;
  if (v53)
  {
    v54 = v41;
    (*(v39 + 96))(v41, v38);
    v55 = v167;
    (*(v167 + 16))(v180, v54, v176);
    v56 = v194;
    v57 = v173;
    sub_265A462DC();
    v58 = v172;
    sub_265A463DC();
    sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920], MEMORY[0x277D4D928]);
    v59 = v175;
    LOBYTE(v54) = sub_265A46CCC();
    v60 = *(v174 + 8);
    v60(v58, v59);
    v60(v57, v59);
    if (v54)
    {
      v61 = v151;
      v62 = v150;
      v63 = v154;
      (*(v151 + 16))(v150, v56, v154);
      v64 = (*(v61 + 80) + 40) & ~*(v61 + 80);
      v65 = swift_allocObject();
      v66 = v147;
      *(v65 + 2) = v169;
      *(v65 + 3) = v66;
      *(v65 + 4) = v168;
      v67 = (*(v61 + 32))(&v65[v64], v62, v63);
      MEMORY[0x28223BE20](v67);
      *(&v133 - 2) = v180;
      type metadata accessor for SettingsListLabel(0);
      sub_265A36488(&qword_28002EC20, type metadata accessor for SettingsListLabel, &protocol conformance descriptor for SettingsListLabel);
      v68 = v141;
      sub_265A46A5C();
      v69 = v55;
      v70 = v152;
      sub_265A467FC();
      v71 = sub_265A31D40(&qword_28002EBF0, &qword_28002EB60, &qword_265A47AF0, MEMORY[0x277CDF028]);
      v72 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8, MEMORY[0x277CDE368]);
      v73 = v143;
      v74 = v178;
      v75 = v187;
      sub_265A4690C();
      (*(v153 + 8))(v70, v75);
      (*(v142 + 8))(v68, v74);
      v76 = v144;
      v77 = v181;
      (*(v144 + 16))(v170, v73, v181);
      swift_storeEnumTagMultiPayload();
      sub_265A36488(&qword_28002EBE8, type metadata accessor for SettingsListToggle, &protocol conformance descriptor for SettingsListToggle);
      v199 = v74;
      v200 = v75;
      v201 = v71;
      v202 = v72;
      swift_getOpaqueTypeConformance2();
      v78 = v188;
      sub_265A467EC();
      sub_265A366A4(v78, v184, &qword_28002EB88, &qword_265A47B18);
      swift_storeEnumTagMultiPayload();
      sub_265A35FEC();
      sub_265A36178();
      v79 = v182;
      sub_265A467EC();
      sub_265A3670C(v78, &qword_28002EB88, &qword_265A47B18);
      sub_265A366A4(v79, v190, &qword_28002EB90, &qword_265A47B20);
      swift_storeEnumTagMultiPayload();
      sub_265A35F60();
      sub_265A36300();
      sub_265A467EC();
      sub_265A3670C(v79, &qword_28002EB90, &qword_265A47B20);
      (*(v76 + 8))(v73, v77);
      v80 = *(v69 + 8);
      v81 = v176;
      v80(v180, v176);
      return (v80)(v148, v81);
    }

    else
    {
      v115 = *(v55 + 8);
      v181 = v55 + 8;
      v188 = v115;
      v116 = v176;
      (v115)(v180, v176);
      v117 = v166;
      (*(v55 + 32))();
      v118 = v165;
      sub_265A462BC();
      v119 = (*(*(v169 - 8) + 56))(v118, 0, 1, v169);
      MEMORY[0x28223BE20](v119);
      *(&v133 - 2) = v117;
      type metadata accessor for SettingsListLabel(0);
      sub_265A36488(&qword_28002EC20, type metadata accessor for SettingsListLabel, &protocol conformance descriptor for SettingsListLabel);
      v120 = v145;
      sub_265A4668C();
      v121 = v146;
      v122 = v162;
      (*(v146 + 16))(v160, v120, v162);
      swift_storeEnumTagMultiPayload();
      sub_265A31D40(&qword_28002EC08, &qword_28002EB50, &qword_265A47AE0, MEMORY[0x277CDD938]);
      v123 = sub_265A31D40(&qword_28002EC10, &qword_28002EB30, &qword_265A47AC0, MEMORY[0x277CDF028]);
      v124 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8, MEMORY[0x277CDE368]);
      v199 = v161;
      v200 = v187;
      v201 = v123;
      v202 = v124;
      swift_getOpaqueTypeConformance2();
      v125 = v163;
      sub_265A467EC();
      sub_265A366A4(v125, v184, &qword_28002EB48, &qword_265A47AD8);
      swift_storeEnumTagMultiPayload();
      sub_265A35FEC();
      sub_265A36178();
      v126 = v182;
      sub_265A467EC();
      sub_265A3670C(v125, &qword_28002EB48, &qword_265A47AD8);
      sub_265A366A4(v126, v190, &qword_28002EB90, &qword_265A47B20);
      swift_storeEnumTagMultiPayload();
      sub_265A35F60();
      sub_265A36300();
      sub_265A467EC();
      sub_265A3670C(v126, &qword_28002EB90, &qword_265A47B20);
      (*(v121 + 8))(v120, v122);
      return (v188)(v166, v116);
    }
  }

  else
  {
    if (v44 == *MEMORY[0x277D4D938])
    {
      (*(v39 + 96))(v41, v38);
      sub_265A35C74(v41, &v199);
      v82 = v194;
      v83 = v173;
      sub_265A462DC();
      v84 = v172;
      sub_265A4642C();
      sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920], MEMORY[0x277D4D928]);
      v85 = v175;
      v86 = sub_265A46CCC();
      v87 = *(v174 + 8);
      v87(v84, v85);
      v87(v83, v85);
      if (v86 & 1) != 0 && (sub_265A462DC(), sub_265A463DC(), v88 = sub_265A46CCC(), v87(v84, v85), v87(v83, v85), (v88))
      {
        v89 = v151;
        v90 = v150;
        v91 = v154;
        (*(v151 + 16))(v150, v82, v154);
        v92 = (*(v89 + 80) + 40) & ~*(v89 + 80);
        v93 = swift_allocObject();
        v94 = v147;
        *(v93 + 2) = v169;
        *(v93 + 3) = v94;
        *(v93 + 4) = v168;
        v95 = (*(v89 + 32))(&v93[v92], v90, v91);
        MEMORY[0x28223BE20](v95);
        *(&v133 - 2) = &v199;
        v96 = v133;
        sub_265A46A5C();
        v97 = v152;
        sub_265A467FC();
        v98 = sub_265A31D40(&qword_28002EC10, &qword_28002EB30, &qword_265A47AC0, MEMORY[0x277CDF028]);
        v99 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8, MEMORY[0x277CDE368]);
        v100 = v135;
        v101 = v161;
        v102 = v187;
        sub_265A4690C();
        (*(v153 + 8))(v97, v102);
        (*(v134 + 8))(v96, v101);
        v103 = v136;
        v104 = v164;
        (*(v136 + 16))(v160, v100, v164);
        swift_storeEnumTagMultiPayload();
        sub_265A31D40(&qword_28002EC08, &qword_28002EB50, &qword_265A47AE0, MEMORY[0x277CDD938]);
        v195 = v101;
        v196 = v102;
        v197 = v98;
        v198 = v99;
        swift_getOpaqueTypeConformance2();
        v105 = v163;
        sub_265A467EC();
        sub_265A366A4(v105, v184, &qword_28002EB48, &qword_265A47AD8);
        swift_storeEnumTagMultiPayload();
        sub_265A35FEC();
        sub_265A36178();
        v106 = v182;
        sub_265A467EC();
        sub_265A3670C(v105, &qword_28002EB48, &qword_265A47AD8);
        sub_265A366A4(v106, v190, &qword_28002EB90, &qword_265A47B20);
        swift_storeEnumTagMultiPayload();
        sub_265A35F60();
        sub_265A36300();
        sub_265A467EC();
        sub_265A3670C(v106, &qword_28002EB90, &qword_265A47B20);
        (*(v103 + 8))(v100, v104);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v199);
        sub_265A35C74(v148, &v199);
        sub_265A462DC();
        sub_265A4642C();
        v107 = sub_265A46CCC();
        v87(v84, v85);
        v87(v83, v85);
        if ((v107 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(&v199);
          sub_265A35D24(v148, &v199);
          v127 = v202;
          v128 = v203;
          v129 = __swift_project_boxed_opaque_existential_1(&v199, v202);
          v130 = v190;
          if (qword_28002E8D0 != -1)
          {
            v132 = v129;
            swift_once();
            v129 = v132;
          }

          sub_265A36860(v129, v127, v128);
          sub_265A35D80();
          *v157 = sub_265A46A7C();
          swift_storeEnumTagMultiPayload();
          sub_265A31D40(&qword_28002EBD0, &qword_28002EB28, &qword_265A47AB8, MEMORY[0x277CDD938]);

          v131 = v159;
          sub_265A467EC();
          sub_265A35EF0(v131, v130);
          swift_storeEnumTagMultiPayload();
          sub_265A35F60();
          sub_265A36300();
          sub_265A467EC();

          sub_265A363B8(v131);
          v114 = &v199;
          return __swift_destroy_boxed_opaque_existential_1(v114);
        }

        v108 = v165;
        sub_265A462BC();
        v109 = (*(*(v169 - 8) + 56))(v108, 0, 1, v169);
        MEMORY[0x28223BE20](v109);
        *(&v133 - 2) = &v199;
        v110 = v137;
        sub_265A4668C();
        v111 = v139;
        v112 = v158;
        (*(v139 + 16))(v157, v110, v158);
        swift_storeEnumTagMultiPayload();
        sub_265A31D40(&qword_28002EBD0, &qword_28002EB28, &qword_265A47AB8, MEMORY[0x277CDD938]);
        v113 = v159;
        sub_265A467EC();
        sub_265A35EF0(v113, v190);
        swift_storeEnumTagMultiPayload();
        sub_265A35F60();
        sub_265A36300();
        sub_265A467EC();
        sub_265A363B8(v113);
        (*(v111 + 8))(v110, v112);
      }

      __swift_destroy_boxed_opaque_existential_1(&v199);
      v114 = v148;
      return __swift_destroy_boxed_opaque_existential_1(v114);
    }

    result = sub_265A46DAC();
    __break(1u);
  }

  return result;
}

BOOL sub_265A35350(void *a1)
{
  v1 = sub_265A4643C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_265A462EC();
  sub_265A462DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EAF8, &qword_265A47A90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_265A479A0;
  sub_265A463DC();
  sub_265A463FC();
  v16[1] = v13;
  sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920], MEMORY[0x277D4D928]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB00, &qword_265A47A98);
  sub_265A31D40(&qword_28002EB08, &qword_28002EB00, &qword_265A47A98, MEMORY[0x277D83970]);
  sub_265A46CFC();
  (*(v2 + 16))(v16[0], v12, v1);
  sub_265A46CDC();
  LOBYTE(v13) = sub_265A46CEC();
  v14 = *(v2 + 8);
  v14(v7, v1);
  v14(v10, v1);
  v14(v12, v1);
  return (v13 & 1) == 0;
}

uint64_t sub_265A35630(char a1, uint64_t a2, uint64_t a3)
{
  sub_265A4687C();
  sub_265A36488(&qword_28002EAF0, MEMORY[0x277CDE390], MEMORY[0x277CDE388]);
  return sub_265A469CC();
}

uint64_t sub_265A356DC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_265A4691C();
}

uint64_t sub_265A35750@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_265A4634C();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
}

uint64_t sub_265A35830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_265A46CAC();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for SettingsListItem(0, a2, a3, a4);
  sub_265A31FCC(v11);
  sub_265A462EC();
  sub_265A462BC();
  (*(*(a2 - 8) + 56))(v10, 0, 1, a2);
  sub_265A464EC();
}

uint64_t sub_265A359BC@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB10, &qword_265A47AA0);
  MEMORY[0x28223BE20](v5);
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  if (qword_28002E8D0 != -1)
  {
    v11 = v8;
    swift_once();
    v8 = v11;
  }

  sub_265A36860(v8, v7, v6);
  sub_265A35D80();
  v9 = sub_265A46A7C();

  *a3 = v9;
  return result;
}

uint64_t sub_265A35B94(void *a1)
{
  sub_265A464FC();
  result = sub_265A4662C();
  if (v2 <= 0x3F)
  {
    result = sub_265A462EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_265A35C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_265A35D24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

unint64_t sub_265A35D80()
{
  result = qword_28002EB98;
  if (!qword_28002EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB10, &qword_265A47AA0);
    sub_265A35E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EB98);
  }

  return result;
}

unint64_t sub_265A35E0C()
{
  result = qword_28002EBA0;
  if (!qword_28002EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EBA8, &qword_265A47B28);
    sub_265A31D40(&qword_28002EBB0, &qword_28002EBB8, &unk_265A47B30, MEMORY[0x277CDEFF0]);
    sub_265A31D40(&qword_28002EBC0, &qword_28002EBC8, &unk_265A47BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EBA0);
  }

  return result;
}

uint64_t sub_265A35EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB20, &qword_265A47AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265A35F60()
{
  result = qword_28002EBD8;
  if (!qword_28002EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB90, &qword_265A47B20);
    sub_265A35FEC();
    sub_265A36178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EBD8);
  }

  return result;
}

unint64_t sub_265A35FEC()
{
  result = qword_28002EBE0;
  if (!qword_28002EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB88, &qword_265A47B18);
    sub_265A36488(&qword_28002EBE8, type metadata accessor for SettingsListToggle, &protocol conformance descriptor for SettingsListToggle);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB60, &qword_265A47AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB58, &qword_265A47AE8);
    sub_265A31D40(&qword_28002EBF0, &qword_28002EB60, &qword_265A47AF0, MEMORY[0x277CDF028]);
    sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8, MEMORY[0x277CDE368]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EBE0);
  }

  return result;
}

unint64_t sub_265A36178()
{
  result = qword_28002EC00;
  if (!qword_28002EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB48, &qword_265A47AD8);
    sub_265A31D40(&qword_28002EC08, &qword_28002EB50, &qword_265A47AE0, MEMORY[0x277CDD938]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB30, &qword_265A47AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB58, &qword_265A47AE8);
    sub_265A31D40(&qword_28002EC10, &qword_28002EB30, &qword_265A47AC0, MEMORY[0x277CDF028]);
    sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8, MEMORY[0x277CDE368]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EC00);
  }

  return result;
}

unint64_t sub_265A36300()
{
  result = qword_28002EC18;
  if (!qword_28002EC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB20, &qword_265A47AB0);
    sub_265A31D40(&qword_28002EBD0, &qword_28002EB28, &qword_265A47AB8, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EC18);
  }

  return result;
}

uint64_t sub_265A363B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB20, &qword_265A47AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A36488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for SettingsListItem(0, v0[2], v0[3], v0[4]) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  v6 = sub_265A462EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265A365F0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for SettingsListItem(0, v3, v4, v5) - 8);
  return sub_265A35830(v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), v3, v4, v5, a1);
}

uint64_t sub_265A366A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265A3670C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_265A3676C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsListToggle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A367D0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsListToggle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_265A36860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EBA8, &qword_265A47B28);
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC40, &unk_265A47BB0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24[-1] - v12);
  DynamicType = swift_getDynamicType();
  swift_beginAccess();
  v15 = *(v4 + 16);
  if (*(v15 + 16) && (v16 = sub_265A37080(DynamicType), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 16 * v16);
    swift_endAccess();
    v24[3] = a2;
    v24[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);

    v18(&v23, v24);

    v20 = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    *v13 = v20;
    swift_storeEnumTagMultiPayload();
    sub_265A35E0C();
    return sub_265A467EC();
  }

  else
  {
    v22 = swift_endAccess();
    MEMORY[0x28223BE20](v22);
    *(&v23 - 4) = a2;
    *(&v23 - 3) = a3;
    *(&v23 - 2) = a1;
    sub_265A46A4C();
    *&v10[*(v8 + 36)] = sub_265A46A1C();
    sub_265A377C0(v10, v13);
    swift_storeEnumTagMultiPayload();
    sub_265A35E0C();
    sub_265A467EC();
    return sub_265A37830(v10);
  }
}

uint64_t SettingsListItemCustomViewRegistry.register<A, B>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a2;
  v16[7] = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v8 + 16);
  *(v8 + 16) = 0x8000000000000000;
  sub_265A373A4(sub_265A36E4C, v16, a1, isUniquelyReferenced_nonNull_native);
  *(v8 + 16) = v19;
  return swift_endAccess();
}

unint64_t sub_265A36C30()
{
  type metadata accessor for SettingsListItemCustomViewRegistry();
  v0 = swift_allocObject();
  result = sub_265A376A4(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_28002EC28 = v0;
  return result;
}

uint64_t static SettingsListItemCustomViewRegistry.shared.getter()
{
  if (qword_28002E8D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_265A36CD4@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X3>, uint64_t *a6@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = MEMORY[0x28223BE20](v10);
  sub_265A35C74(v13, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC38, &unk_265A47BA0);
  swift_dynamicCast();
  a2(v12);
  (*(v9 + 8))(v12, a3);
  result = sub_265A46A7C();
  *a6 = result;
  return result;
}

uint64_t sub_265A36E5C@<X0>(uint64_t a3@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A46D2C();

  swift_getDynamicType();
  v4 = sub_265A46E0C();
  MEMORY[0x266766BE0](v4);

  *a3 = 0xD000000000000017;
  *(a3 + 8) = 0x8000000265A49A60;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_265A36F7C@<X0>(uint64_t *a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_265A46A2C();

  *a1 = v2;
  return result;
}

uint64_t SettingsListItemCustomViewRegistry.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_265A37080(uint64_t a1)
{
  v2 = sub_265A46DCC();

  return sub_265A370C4(a1, v2);
}

unint64_t sub_265A370C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_265A37130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC30, &qword_265A47B98);
  result = sub_265A46D8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_265A46DCC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_265A373A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_265A37080(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265A37130(v16, a4 & 1);
      result = sub_265A37080(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_265A46DBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_265A37540();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_265A37540()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC30, &qword_265A47B98);
  v2 = *v0;
  v3 = sub_265A46D7C();
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
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_265A376A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC30, &qword_265A47B98);
  v3 = sub_265A46D9C();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_265A37080(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_265A37080(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265A377C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EBA8, &qword_265A47B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A37830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EBA8, &qword_265A47B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SettingsListLabel.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A4634C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_265A3796C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v36 = sub_265A464DC();
  v2 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC68, &qword_265A47C60);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v28 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC70, &qword_265A47C68) - 8;
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC78, &qword_265A47C70);
  MEMORY[0x28223BE20](v34);
  v31 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC80, &qword_265A47C78);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v32 = &v28 - v13;
  v41 = v1;
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC88, &qword_265A47C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC90, &qword_265A47C88);
  sub_265A31D40(&qword_28002EC98, &qword_28002EC88, &qword_265A47C80, MEMORY[0x277CDEFF0]);
  sub_265A385FC();
  sub_265A4667C();
  KeyPath = swift_getKeyPath();
  sub_265A4632C();
  sub_265A464BC();
  v15 = MEMORY[0x2667664D0](v7, v5);
  v16 = *(v2 + 8);
  v17 = v36;
  v16(v5, v36);
  v16(v7, v17);
  v18 = v29;
  (*(v33 + 32))(v29, v9, v35);
  v19 = v18 + *(v30 + 44);
  *v19 = KeyPath;
  *(v19 + 8) = 0;
  *(v19 + 16) = (v15 & 1) == 0;
  v20 = swift_getKeyPath();
  sub_265A4632C();
  sub_265A464BC();
  LOBYTE(KeyPath) = MEMORY[0x2667664D0](v7, v5);
  v16(v5, v17);
  v16(v7, v17);
  v21 = v31;
  sub_265A38678(v18, v31);
  v22 = v21 + *(v34 + 36);
  *v22 = v20;
  *(v22 + 8) = 0;
  *(v22 + 16) = (KeyPath & 1) == 0;
  sub_265A4630C();
  sub_265A38718(&qword_28002ECA8, &qword_28002EC78, &qword_265A47C70, sub_265A386E8);
  v23 = v32;
  sub_265A469AC();
  sub_265A38880(v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ECD0, &qword_265A47CF8);
  v25 = v39;
  v26 = (v39 + *(v24 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ECD8, &qword_265A47D00);
  sub_265A4669C();
  *v26 = swift_getKeyPath();
  return (*(v37 + 32))(v25, v23, v38);
}

uint64_t sub_265A37EBC@<X0>(uint64_t *a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((sub_265A462FC() & 1) != 0 || (sub_265A4631C(), !v2))
  {

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v14 = 0;
  }

  else
  {
    sub_265A38A18();
    v3 = sub_265A468DC();
    v5 = v4;
    v7 = v6;
    sub_265A4683C();
    v8 = sub_265A468BC();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_265A38A6C(v3, v5, v7 & 1);

    v16 = v12 & 1;
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v16;
  a1[3] = v14;
  return result;
}

uint64_t sub_265A38030()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ECE0, &qword_265A47D38);
  type metadata accessor for SettingsIcon(0);
  sub_265A31D40(&qword_28002ECE8, &qword_28002ECE0, &qword_265A47D38, MEMORY[0x277CE14C0]);
  sub_265A389C0();
  sub_265A46A4C();
}

uint64_t sub_265A381BC@<X0>(uint64_t a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4633C();
  sub_265A38A18();
  v2 = sub_265A468DC();
  v4 = v3;
  v6 = v5;
  sub_265A4682C();
  v7 = sub_265A468BC();
  v9 = v8;
  v28 = v10;
  v12 = v11;
  sub_265A38A6C(v2, v4, v6 & 1);

  if ((sub_265A462FC() & 1) != 0 && (sub_265A4631C(), v13))
  {
    v14 = sub_265A468DC();
    v16 = v15;
    v18 = v17;
    sub_265A4683C();
    v19 = sub_265A468BC();
    v21 = v20;
    v27 = v22;
    v24 = v23;
    sub_265A38A6C(v14, v16, v18 & 1);

    v25 = v27 & 1;
    sub_265A38A7C(v19, v21, v27 & 1);
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v25 = 0;
    v24 = 0;
  }

  sub_265A38A7C(v7, v9, v28 & 1);

  sub_265A38A8C(v19, v21, v25, v24);
  sub_265A38AD0(v19, v21, v25, v24);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v25;
  *(a1 + 56) = v24;
  sub_265A38AD0(v19, v21, v25, v24);
  sub_265A38A6C(v7, v9, v28 & 1);
}

uint64_t sub_265A38458()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4632C();
}

uint64_t type metadata accessor for SettingsListLabel(uint64_t a1)
{
  result = qword_28002EC48;
  if (!qword_28002EC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A38580(uint64_t a1)
{
  result = sub_265A4634C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_265A385FC()
{
  result = qword_28002ECA0;
  if (!qword_28002ECA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC90, &qword_265A47C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECA0);
  }

  return result;
}

uint64_t sub_265A38678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC70, &qword_265A47C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A38718(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_265A31D40(&qword_28002ECC0, &qword_28002ECC8, &qword_265A47CF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265A387C8()
{
  result = qword_28002ECB8;
  if (!qword_28002ECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC68, &qword_265A47C60);
    sub_265A31D40(&qword_28002EC98, &qword_28002EC88, &qword_265A47C80, MEMORY[0x277CDEFF0]);
    sub_265A385FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECB8);
  }

  return result;
}

uint64_t sub_265A38880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC78, &qword_265A47C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A388E8(uint64_t a1)
{
  v2 = sub_265A466AC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_265A4670C();
}

unint64_t sub_265A389C0()
{
  result = qword_28002ECF0;
  if (!qword_28002ECF0)
  {
    type metadata accessor for SettingsIcon(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECF0);
  }

  return result;
}

unint64_t sub_265A38A18()
{
  result = qword_28002ECF8;
  if (!qword_28002ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECF8);
  }

  return result;
}

uint64_t sub_265A38A6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_265A38A7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_265A38A8C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_265A38A7C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_265A38AD0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_265A38A6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t SettingsListToggle.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A463CC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SettingsListToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_265A4679C();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2);
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED00, &qword_265A47D40);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED08, &qword_265A47D48);
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED10, &qword_265A47D50);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x28223BE20](v15);
  v30 = v29 - v17;
  v29[1] = swift_allocBox();
  v19 = v18;
  sub_265A463BC();
  sub_265A4638C();
  sub_265A396E0(&qword_28002ED18, MEMORY[0x277D4D918], MEMORY[0x277D4D908]);
  sub_265A46B2C();
  (*(v6 + 16))(v9, v19, v5);
  sub_265A46B1C();
  v20 = *(v6 + 8);
  v20(v9, v5);
  swift_getKeyPath();
  sub_265A46B3C();

  v20(v11, v5);
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED20, &qword_265A47D88);
  sub_265A31D40(&qword_28002ED28, &qword_28002ED20, &qword_265A47D88, MEMORY[0x277CDEFF0]);
  sub_265A46A6C();
  sub_265A463BC();
  LOBYTE(v11) = sub_265A4635C();

  LOBYTE(v39) = v11 & 1;
  v21 = sub_265A31D40(&qword_28002ED30, &qword_28002ED08, &qword_265A47D48, MEMORY[0x277CDF068]);

  v22 = MEMORY[0x277D839B0];
  v23 = MEMORY[0x277D839C8];
  v24 = v30;
  sub_265A469FC();

  (*(v31 + 8))(v14, v12);
  v25 = v34;
  sub_265A4678C();
  v39 = v12;
  v40 = v22;
  v41 = v21;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  sub_265A396E0(&qword_28002ED38, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v26 = v32;
  v27 = v35;
  sub_265A4692C();
  (*(v36 + 8))(v25, v27);
  (*(v33 + 8))(v24, v26);
}

uint64_t sub_265A39110()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v1);
  type metadata accessor for SettingsIcon(0);
  sub_265A396E0(&qword_28002ECF0, type metadata accessor for SettingsIcon, &protocol conformance descriptor for SettingsIcon);
  sub_265A46A4C();
}

uint64_t sub_265A39288@<X0>(uint64_t a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A463AC();
  sub_265A38A18();
  v2 = sub_265A468DC();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_265A3936C()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4639C();
}

uint64_t sub_265A3941C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED00, &qword_265A47D40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *a2;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = swift_projectBox();
  (*(v5 + 16))(v7, v9, v4);
  sub_265A46B0C();
  (*(v5 + 8))(v7, v4);
  v10 = sub_265A4637C();

  v10(v8);
}

uint64_t type metadata accessor for SettingsListToggle(uint64_t a1)
{
  result = qword_28002ED40;
  if (!qword_28002ED40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A39664(uint64_t a1)
{
  result = sub_265A463CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265A396E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SettingsListSection.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_265A4623C();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED50, &unk_265A47E20);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v59 - v10;
  v11 = sub_265A4651C();
  v12 = *(v11 - 8);
  v72 = v11;
  v73 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC90, &qword_265A47C88);
  v17 = a1[3];
  v19 = a1[5];
  v18 = a1[6];
  sub_265A462EC();
  v20 = sub_265A46BEC();
  v21 = type metadata accessor for SettingsListItem(255, v17, v19, v18);
  WitnessTable = swift_getWitnessTable();
  *&v99 = v20;
  *(&v99 + 1) = v17;
  *&v100 = v21;
  *(&v100 + 1) = WitnessTable;
  v101 = v18;
  v23 = sub_265A46ADC();
  v24 = sub_265A46AFC();
  v77 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED58, &qword_265A47E30);
  v78 = v24;
  v71 = sub_265A466CC();
  v79 = *(v71 - 8);
  v27 = MEMORY[0x28223BE20](v71);
  v74 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v76 = &v59 - v29;
  *&v30 = a1[2];
  *(&v30 + 1) = v17;
  *&v31 = a1[4];
  *(&v31 + 1) = v19;
  v65 = v31;
  v66 = v30;
  v89 = v30;
  v90 = v31;
  v91 = v18;
  v92 = v69;
  v85[1] = v30;
  v85[2] = v31;
  v86 = v18;
  v87 = v69;
  v82[1] = v30;
  v82[2] = v31;
  v83 = v18;
  v84 = v69;
  v32 = sub_265A385FC();
  v98 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v75 = v26;
  sub_265A3A81C(sub_265A3A1D8, v88, sub_265A3A494, v85, sub_265A3A5A8, v82, v16, v23, v16, v32, v67, v32);
  v99 = v66;
  v100 = v65;
  v101 = v18;
  sub_265A4648C();
  v33 = v68;
  sub_265A4647C();
  v34 = v70;
  sub_265A4650C();
  sub_265A3AFE8(&qword_28002ED60, MEMORY[0x277D4D980], MEMORY[0x277D4D988]);
  v35 = v72;
  LOBYTE(a1) = sub_265A46CCC();
  v36 = *(v73 + 8);
  v36(v34, v35);
  v36(v33, v35);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (a1)
  {
    v41 = v80;
    sub_265A4645C();
    v42 = v62;
    sub_265A3ABE0(v41, v62);
    v44 = v63;
    v43 = v64;
    if ((*(v63 + 48))(v42, 1, v64) == 1)
    {
      sub_265A3670C(v80, &qword_28002ED50, &unk_265A47E20);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v45 = v61;
      (*(v44 + 32))(v61, v42, v43);
      (*(v44 + 16))(v60, v45, v43);
      v37 = sub_265A468CC();
      v38 = v46;
      v48 = v47;
      v40 = v49;
      (*(v44 + 8))(v45, v43);
      sub_265A3670C(v80, &qword_28002ED50, &unk_265A47E20);
      v39 = v48 & 1;
    }
  }

  v95 = v32;
  v96 = v67;
  v97 = v32;
  v50 = v78;
  v51 = swift_getWitnessTable();
  v53 = v74;
  v52 = v75;
  sub_265A3A948(v37, v38, v39, v40, v50, v51);
  sub_265A38AD0(v37, v38, v39, v40);
  (*(v77 + 8))(v52, v50);
  v54 = sub_265A3AB7C();
  v93 = v51;
  v94 = v54;
  v55 = v71;
  swift_getWitnessTable();
  v56 = v76;
  sub_265A3685C();
  v57 = *(v79 + 8);
  v57(v53, v55);
  sub_265A3685C();
  return (v57)(v56, v55);
}

uint64_t sub_265A39F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a4;
  v24 = a1;
  v25 = a7;
  sub_265A462EC();
  v27 = sub_265A46BEC();
  v28 = a3;
  v21 = type metadata accessor for SettingsListItem(255, a3, a5, a6);
  v29 = v21;
  WitnessTable = swift_getWitnessTable();
  v31 = a6;
  v10 = sub_265A46ADC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = v22;
  v28 = a3;
  v29 = v23;
  WitnessTable = a5;
  v31 = a6;
  v17 = type metadata accessor for SettingsListSection(0, &v27);
  sub_265A3A1E8(v17, v14);
  v26 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A3685C();
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_265A3685C();
  v18(v16, v10);
}

uint64_t sub_265A3A1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v25 = sub_265A462EC();
  v24 = sub_265A46BEC();
  v6 = type metadata accessor for SettingsListItem(255, v3, v4, v5);
  WitnessTable = swift_getWitnessTable();
  *&v28 = v24;
  *(&v28 + 1) = v3;
  *&v29 = v6;
  *(&v29 + 1) = WitnessTable;
  v30 = v5;
  v7 = sub_265A46ADC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  *&v14 = a1[2];
  *(&v14 + 1) = v3;
  *&v15 = a1[4];
  *(&v15 + 1) = v4;
  v21 = v15;
  v22 = v14;
  v29 = v15;
  v28 = v14;
  v30 = v5;
  sub_265A4648C();
  *&v28 = sub_265A4646C();
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v22;
  *(v16 + 32) = v17;
  *(v16 + 48) = v5;
  v18 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A46ACC();
  v27 = v18;
  swift_getWitnessTable();
  sub_265A3685C();
  v19 = *(v8 + 8);
  v19(v11, v7);
  sub_265A3685C();
  return (v19)(v13, v7);
}

double sub_265A3A4B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a7)(uint64_t)@<X7>, _OWORD *a8@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a3;
  *(&v19 + 1) = a4;
  v20 = a5;
  v14 = type metadata accessor for SettingsListSection(0, &v18);
  sub_265A3A5F0(v14, a7, &v18);

  result = *&v18;
  v16 = v19;
  *a8 = v18;
  a8[1] = v16;
  return result;
}

uint64_t sub_265A3A5F0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED50, &unk_265A47E20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_265A4623C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v28[0] = *(a1 + 16);
  v28[1] = v17;
  v29 = v16;
  v18 = sub_265A4648C();
  a2(v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_265A3670C(v8, &qword_28002ED50, &unk_265A47E20);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v20 = sub_265A468CC();
    v21 = v24;
    v26 = v25;
    v23 = v27;
    result = (*(v10 + 8))(v15, v9);
    v22 = v26 & 1;
  }

  *a3 = v20;
  a3[1] = v21;
  a3[2] = v22;
  a3[3] = v23;
  return result;
}

uint64_t sub_265A3A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = MEMORY[0x28223BE20](a1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v15(v14);
  a5(v16);
  return sub_265A46AEC();
}

uint64_t sub_265A3A948(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EDF0, &qword_265A47EC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  if (a4)
  {
    *v12 = a1;
    *(v12 + 1) = a2;
    v13 = a3 & 1;
    v12[16] = v13;
    *(v12 + 3) = a4;
    v14 = *MEMORY[0x277CDDDD0];
    v15 = sub_265A4677C();
    v20 = a1;
    v21 = a2;
    v16 = v15;
    v17 = *(v15 - 8);
    (*(v17 + 104))(v12, v14, v15);
    (*(v17 + 56))(v12, 0, 1, v16);
    sub_265A38A7C(v20, v21, v13);
  }

  else
  {
    v18 = sub_265A4677C();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  sub_265A4680C();
  sub_265A3AFE8(&qword_28002EDF8, MEMORY[0x277CDE050], MEMORY[0x277CDE048]);
  sub_265A469CC();
  return sub_265A3670C(v12, &qword_28002EDF0, &qword_265A47EC8);
}

unint64_t sub_265A3AB7C()
{
  result = qword_28002ED68[0];
  if (!qword_28002ED68[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED58, &qword_265A47E30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28002ED68);
  }

  return result;
}

uint64_t sub_265A3ABE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED50, &unk_265A47E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A3AC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v22 = a1;
  v25 = a5;
  v21 = sub_265A462EC();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v23 = a3;
  v24 = a4;
  v11 = type metadata accessor for SettingsListItem(0, a2, a3, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, v22, v21);
  SettingsListItem.init(model:)(v10, a2, v23, v24, v15);
  swift_getWitnessTable();
  sub_265A3685C();
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_265A3685C();
  v18(v17, v11);
}

uint64_t sub_265A3AF28(uint64_t a1)
{
  result = sub_265A4648C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265A3AFE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PreferencesControllerNavigationCoordinator.preferencesViewController(_:push:animated:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_265A4689C();
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v10 = sub_265A4660C();
  v11 = __swift_project_value_buffer(v10, qword_28156B870);

  v12 = a1;
  v13 = a2;
  v14 = sub_265A465EC();
  v15 = sub_265A46C3C();

  v67 = v14;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v66 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&aBlock = v63;
    *v17 = 136316675;
    v19 = sub_265A46E0C();
    v21 = v12;
    v22 = v13;
    v23 = v4;
    v24 = v8;
    v25 = a3;
    v26 = sub_265A3C540(v19, v20, &aBlock);

    *(v17 + 4) = v26;
    a3 = v25;
    v8 = v24;
    v4 = v23;
    v13 = v22;
    v12 = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_265A3C540(0xD00000000000002BLL, 0x8000000265A49B50, &aBlock);
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2113;
    *(v17 + 34) = v21;
    *(v17 + 42) = 2160;
    *(v17 + 44) = 1752392040;
    *(v17 + 52) = 2113;
    *(v17 + 54) = v13;
    *v18 = v21;
    v18[1] = v13;
    *(v17 + 62) = 1024;
    *(v17 + 64) = a3 & 1;
    v27 = v21;
    v28 = v13;
    v29 = v67;
    _os_log_impl(&dword_265A2E000, v67, v15, "Start (%s.%s), viewController: '%{private,mask.hash}@', viewControllerToPush: '%{private,mask.hash}@', animated: '%{BOOL}d'…", v17, 0x44u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v18, -1, -1);
    v30 = v63;
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v30, -1, -1);
    v31 = v17;
    v11 = v66;
    MEMORY[0x2667673B0](v31, -1, -1);
  }

  else
  {
  }

  v32 = [v12 navigationController];
  if (v32 && (v33 = v32, v34 = sub_265A416D8(), v33, (v34 & 1) != 0))
  {
    v75 = &unk_287756368;
    v35 = swift_dynamicCastObjCProtocolConditional();
    v66 = v11;
    if (v35)
    {
      v70 = sub_265A465AC();
      v71 = sub_265A3CCD0(qword_28156B608, MEMORY[0x277D40250], MEMORY[0x277D40258]);
      __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v36 = v13;
      sub_265A4657C();
    }

    else
    {
      v70 = sub_265A465BC();
      v71 = sub_265A3CCD0(&unk_28002EE60, MEMORY[0x277D402E0], MEMORY[0x277D402F0]);
      __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v43 = v13;
      sub_265A465CC();
    }

    sub_265A35D24(&aBlock, v76);
    sub_265A35C74(v76, v74);
    v44 = v73;
    sub_265A35C74(v74, v73);
    v45 = swift_allocObject();
    v46 = a3 & 1;
    *(v45 + 16) = v46;
    *(v45 + 24) = v4;
    *(v45 + 32) = v12;
    *(v45 + 40) = v13;
    sub_265A35D24(v74, v45 + 48);

    v47 = v12;
    v48 = v13;
    v49 = [v47 transitionCoordinator];
    if (v49)
    {
      v50 = v49;
      __swift_destroy_boxed_opaque_existential_1(v73);
      v51 = sub_265A465EC();
      v52 = sub_265A46C3C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_265A2E000, v51, v52, "controller has an active transition is flight, deferring navigation push to after active transition completes.", v53, 2u);
        MEMORY[0x2667673B0](v53, -1, -1);
      }

      v71 = sub_265A3C18C;
      v72 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v69 = sub_265A3C21C;
      v70 = &block_descriptor;
      v54 = _Block_copy(&aBlock);
      v55 = swift_allocObject();
      *(v55 + 16) = sub_265A3CC70;
      *(v55 + 24) = v45;
      v71 = sub_265A3CCC8;
      v72 = v55;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v69 = sub_265A3C21C;
      v70 = &block_descriptor_9;
      v56 = _Block_copy(&aBlock);

      [v50 animateAlongsideTransition:v54 completion:v56];
      _Block_release(v56);
      _Block_release(v54);

      swift_unknownObjectRelease();
      v44 = v76;
    }

    else
    {
      *&aBlock = 0;
      sub_265A4664C();
      v57 = swift_allocObject();
      *(v57 + 16) = v4;
      *(v57 + 24) = v47;
      *(v57 + 32) = v48;
      *(v57 + 40) = v46;

      v58 = v47;
      v59 = v48;
      v60 = v64;
      sub_265A4688C();
      sub_265A4665C();

      v61 = (*(v65 + 8))(v60, v8);
      MEMORY[0x28223BE20](v61);
      *(&v62 - 2) = v58;
      *(&v62 - 1) = v73;
      sub_265A466DC();

      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v37 = v12;
    v38 = sub_265A465EC();
    v39 = sub_265A46C3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_265A2E000, v38, v39, "viewController that requested presentation is not from a managed navigation stack, defer to default implementation.", v40, 2u);
      MEMORY[0x2667673B0](v40, -1, -1);
    }

    if (a3)
    {

      [v37 showViewController:v13 sender:v37];
    }

    else
    {
      v41 = [v37 navigationController];
      if (v41)
      {
        v67 = v41;
        [v41 pushViewController:v13 animated:0];
        v42 = v67;
      }
    }
  }
}

uint64_t sub_265A3BA40(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_265A4689C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = 0;
  sub_265A4664C();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a1;

  v15 = a3;
  v16 = a4;
  sub_265A4688C();
  sub_265A4665C();

  (*(v11 + 8))(v13, v10);
  v19 = v15;
  v20 = a5;
  sub_265A466DC();
}

void sub_265A3BBE4(void *a1, void *a2, void *a3, char a4)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v7 = sub_265A4660C();
  __swift_project_value_buffer(v7, qword_28156B870);

  v8 = a2;
  v9 = a3;
  oslog = sub_265A465EC();
  v10 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136316675;
    v14 = sub_265A46E0C();
    v16 = sub_265A3C540(v14, v15, &v20);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_265A3C540(0xD00000000000002BLL, 0x8000000265A49B50, &v20);
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2113;
    *(v11 + 34) = v8;
    *(v11 + 42) = 2160;
    *(v11 + 44) = 1752392040;
    *(v11 + 52) = 2113;
    *(v11 + 54) = v9;
    *v12 = v8;
    v12[1] = v9;
    *(v11 + 62) = 1024;
    *(v11 + 64) = a4 & 1;
    v17 = v8;
    v18 = v9;
    _os_log_impl(&dword_265A2E000, oslog, v10, "…Complete (%s.%s), viewController: '%{private,mask.hash}@', viewControllerToPush: '%{private,mask.hash}@', animated: '%{BOOL}d'.", v11, 0x44u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v13, -1, -1);
    MEMORY[0x2667673B0](v11, -1, -1);
  }
}

uint64_t sub_265A3BED4(void *a1, void *a2)
{
  v4 = sub_265A46B7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A46C2C();
  v20 = sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v8 = sub_265A4660C();
  __swift_project_value_buffer(v8, qword_28156B870);
  v9 = a1;
  v10 = sub_265A465EC();
  v11 = sub_265A46C3C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2113;
    *(v13 + 14) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&dword_265A2E000, v10, v11, "Appending %{private,mask.hash}@ to the navigation path.", v13, 0x16u);
    sub_265A3CDC8(v14);
    MEMORY[0x2667673B0](v14, -1, -1);
    v4 = v19;
    MEMORY[0x2667673B0](v13, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = [v9 traitCollection];
  sub_265A46C4C();

  sub_265A46B6C();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_265A3C18C()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_265A3C21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_265A3C27C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_265A3C434(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_265A3C480(uint64_t (*a1)(void))
{
  a1();

  return sub_265A46E0C();
}

uint64_t sub_265A3C4E4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_265A3C540(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_265A3C540(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265A3C60C(v11, 0, 0, 1, a1, a2);
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
    sub_265A3CD68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_265A3C60C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265A3C718(a5, a6);
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
    result = sub_265A46D4C();
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

void *sub_265A3C718(uint64_t a1, unint64_t a2)
{
  v3 = sub_265A3C764(a1, a2);
  sub_265A3C894(&unk_2877514B0);
  return v3;
}

void *sub_265A3C764(uint64_t a1, unint64_t a2)
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

  v6 = sub_265A3C980(v5, 0);
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

  result = sub_265A46D4C();
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
        v10 = sub_265A46BCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265A3C980(v10, 0);
        result = sub_265A46D1C();
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

uint64_t sub_265A3C894(uint64_t result)
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

  result = sub_265A3C9F4(result, v11, 1, v3);
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

void *sub_265A3C980(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EEE0, &qword_265A47F50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265A3C9F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EEE0, &qword_265A47F50);
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

_BYTE **sub_265A3CAE8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_265A3CAF8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_265A3CB40(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_265A3CC08@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A3CCD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265A3CD68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265A3CDC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t PreferencesListControllerNavigationCoordinator.listControllerShouldDeselect(afterFormSheetDisappearance:given:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v7 = sub_265A4660C();
  __swift_project_value_buffer(v7, qword_28156B870);
  v8 = a2;
  v9 = v3;
  v10 = a1;
  v11 = sub_265A465EC();
  v12 = sub_265A46C3C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136316419;
    swift_getObjectType();
    v15 = sub_265A46E0C();
    v17 = sub_265A3C540(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_265A3C540(0xD000000000000040, 0x8000000265A49C30, &v26);
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2113;
    *(v13 + 34) = v10;
    *v14 = v10;
    *(v13 + 42) = 2160;
    *(v13 + 44) = 1752392040;
    *(v13 + 52) = 2081;
    v18 = v10;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v20 = sub_265A46BAC();
    v22 = sub_265A3C540(v20, v21, &v26);

    *(v13 + 54) = v22;
    _os_log_impl(&dword_265A2E000, v11, v12, "Start (%s.%s), listController: '%{private,mask.hash}@', rootController: '%{private,mask.hash}s'…", v13, 0x3Eu);
    sub_265A3CDC8(v14);
    MEMORY[0x2667673B0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v25, -1, -1);
    MEMORY[0x2667673B0](v13, -1, -1);
  }

  if (a2)
  {
    v27.receiver = v9;
    v27.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v27, sel_listControllerShouldDeselectAfterFormSheetDisappearance_givenRootController_, v10, v8);
  }

  else
  {
    v23 = 1;
  }

  sub_265A3D164(v9, v10, a2);
  return v23;
}

void sub_265A3D164(void *a1, void *a2, void *a3)
{
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v6 = sub_265A4660C();
  __swift_project_value_buffer(v6, qword_28156B870);
  v7 = a3;
  v8 = a1;
  v9 = a2;
  oslog = sub_265A465EC();
  v10 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136316419;
    swift_getObjectType();
    v14 = sub_265A46E0C();
    v16 = sub_265A3C540(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_265A3C540(0xD000000000000040, 0x8000000265A49C30, &v23);
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2113;
    *(v11 + 34) = v9;
    *v12 = v9;
    *(v11 + 42) = 2160;
    *(v11 + 44) = 1752392040;
    *(v11 + 52) = 2081;
    v17 = v9;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v19 = sub_265A46BAC();
    v21 = sub_265A3C540(v19, v20, &v23);

    *(v11 + 54) = v21;
    _os_log_impl(&dword_265A2E000, oslog, v10, "…Complete (%s.%s), listController: '%{private,mask.hash}@', rootController: '%{private,mask.hash}s'.", v11, 0x3Eu);
    sub_265A3CDC8(v12);
    MEMORY[0x2667673B0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v13, -1, -1);
    MEMORY[0x2667673B0](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t PreferencesListControllerNavigationCoordinator.listControllerShouldNotDeselect(afterAppearing:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v5 = sub_265A4660C();
  __swift_project_value_buffer(v5, qword_28156B870);
  v6 = v2;
  v7 = a1;
  v8 = sub_265A465EC();
  v9 = sub_265A46C3C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v10 = 136315907;
    swift_getObjectType();
    v13 = sub_265A46E0C();
    v15 = sub_265A3C540(v13, v14, &v32);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_265A3C540(0xD000000000000030, 0x8000000265A49C80, &v32);
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2113;
    *(v10 + 34) = v7;
    *v11 = v7;
    v16 = v7;
    _os_log_impl(&dword_265A2E000, v8, v9, "Start (%s.%s), listController: '%{private,mask.hash}@'…", v10, 0x2Au);
    sub_265A3CDC8(v11);
    MEMORY[0x2667673B0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v12, -1, -1);
    MEMORY[0x2667673B0](v10, -1, -1);
  }

  v17 = [v7 navigationController];
  if (!v17 || (v18 = v17, v19 = sub_265A416D8(), v18, (v19 & 1) == 0))
  {
    v33.receiver = v6;
    v33.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v33, sel_listControllerShouldNotDeselectAfterAppearing_, v7);
LABEL_26:
    sub_265A3D8A8(v6, v7);
    return v28;
  }

  v20 = [v7 navigationController];
  v21 = [v7 splitViewController];
  if (!v21)
  {
LABEL_20:
    v27 = 0;
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 viewControllers];

  sub_265A3F594();
  v24 = sub_265A46BDC();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  result = sub_265A46D6C();
  if (!result)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_10:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x266766D60](0, v24);
LABEL_13:
    v27 = v26;

    if (!v20)
    {
LABEL_14:
      if (!v27)
      {
        v28 = 1;
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

LABEL_21:

    if (v27)
    {
      swift_unknownObjectRelease();
      v28 = v20 == v27;
      goto LABEL_24;
    }

LABEL_23:
    v28 = 0;
LABEL_24:
    v29 = [v7 splitViewController];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 isCollapsed];

      v28 = (v31 ^ 1) & v28;
    }

    goto LABEL_26;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v24 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_265A3D8A8(void *a1, void *a2)
{
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v4 = sub_265A4660C();
  __swift_project_value_buffer(v4, qword_28156B870);
  v5 = a1;
  v6 = a2;
  oslog = sub_265A465EC();
  v7 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315907;
    swift_getObjectType();
    v11 = sub_265A46E0C();
    v13 = sub_265A3C540(v11, v12, &v16);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_265A3C540(0xD000000000000030, 0x8000000265A49C80, &v16);
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2113;
    *(v8 + 34) = v6;
    *v9 = v6;
    v14 = v6;
    _os_log_impl(&dword_265A2E000, oslog, v7, "…Complete (%s.%s), listController: '%{private,mask.hash}@'.", v8, 0x2Au);
    sub_265A3CDC8(v9);
    MEMORY[0x2667673B0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v10, -1, -1);
    MEMORY[0x2667673B0](v8, -1, -1);
  }
}

void PreferencesListControllerNavigationCoordinator.listController(_:push:given:withModalStylePopupStateApplicator:animated:)(void *a1, void *a2, void *a3, uint64_t (*a4)(), uint64_t a5, char a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v13 = sub_265A4660C();
  __swift_project_value_buffer(v13, qword_28156B870);
  v14 = a3;
  v15 = v7;
  v16 = v14;
  v17 = v15;
  v18 = a1;
  v19 = a2;
  v20 = sub_265A465EC();
  v21 = sub_265A46C3C();

  v93 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v87 = ObjectType;
    v23 = swift_slowAlloc();
    v91 = v16;
    v24 = swift_slowAlloc();
    *&aBlock = v24;
    *v22 = 136317187;
    swift_getObjectType();
    v25 = sub_265A46E0C();
    v85 = v17;
    v83 = a6;
    v27 = v19;
    v28 = sub_265A3C540(v25, v26, &aBlock);

    *(v22 + 4) = v28;
    v19 = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_265A3C540(0xD000000000000049, 0x8000000265A49CC0, &aBlock);
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2113;
    *(v22 + 34) = v18;
    *(v22 + 42) = 2160;
    *(v22 + 44) = 1752392040;
    *(v22 + 52) = 2113;
    *(v22 + 54) = v27;
    *v23 = v18;
    v23[1] = v27;
    *(v22 + 62) = 2160;
    *(v22 + 64) = 1752392040;
    *(v22 + 72) = 2081;
    v98[0] = a3;
    v29 = v18;
    v30 = v27;
    v31 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v32 = sub_265A46BAC();
    v34 = sub_265A3C540(v32, v33, &aBlock);

    *(v22 + 74) = v34;
    a6 = v83;
    v17 = v85;
    *(v22 + 82) = 1024;
    *(v22 + 84) = v83 & 1;
    _os_log_impl(&dword_265A2E000, v20, v21, "Start (%s.%s), listController: '%{private,mask.hash}@', viewController: '%{private,mask.hash}@', 'rootController: '%{private,mask.hash}s', animated: '%{BOOL}d'…", v22, 0x58u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    v35 = v23;
    ObjectType = v87;
    MEMORY[0x2667673B0](v35, -1, -1);
    swift_arrayDestroy();
    v36 = v24;
    v16 = v91;
    MEMORY[0x2667673B0](v36, -1, -1);
    MEMORY[0x2667673B0](v22, -1, -1);
  }

  if (a3)
  {
    v37 = v16;
    v38 = sub_265A465EC();
    v39 = sub_265A46C3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_265A2E000, v38, v39, "rootController is non-nil, defer to default implementation.", v40, 2u);
      MEMORY[0x2667673B0](v40, -1, -1);
    }

    v103 = a4;
    v104 = a5;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v101 = sub_265A3EB2C;
    v102 = &block_descriptor_15;
    v41 = _Block_copy(&aBlock);
    v42 = v37;

    v94.receiver = v17;
    v94.super_class = ObjectType;
    v18 = v93;
    objc_msgSendSuper2(&v94, sel_listController_pushViewController_givenRootController_withModalStylePopupStateApplicator_animated_, v93, v19, v42, v41, a6 & 1);
    _Block_release(v41);
  }

  else
  {
    v43 = [v18 navigationController];
    if (v43)
    {
      v44 = v43;
      v45 = sub_265A416D8();
    }

    else
    {
      v45 = 0;
    }

    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      v88 = ObjectType;
      v86 = v19;
      v48 = sub_265A465EC();
      v49 = sub_265A46C3C();
      v92 = v16;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *&aBlock = v84;
        *v50 = 136315138;
        swift_getObjectType();
        v51 = sub_265A46E0C();
        v53 = v47;
        v54 = v45;
        v55 = v19;
        v56 = v17;
        v57 = a6;
        v58 = sub_265A3C540(v51, v52, &aBlock);

        *(v50 + 4) = v58;
        a6 = v57;
        v17 = v56;
        v19 = v55;
        v45 = v54;
        v47 = v53;
        _os_log_impl(&dword_265A2E000, v48, v49, "viewController is a '%s', defer to default implementation.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        v18 = v93;
        MEMORY[0x2667673B0](v84, -1, -1);
        MEMORY[0x2667673B0](v50, -1, -1);
      }

      if (v45)
      {
        v59 = sub_265A465EC();
        v60 = sub_265A46C3C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_265A2E000, v59, v60, "setupController is being presented from a list controller that is in a managed navigation controller, hooking up dismissal.", v61, 2u);
          MEMORY[0x2667673B0](v61, -1, -1);
        }

        [v47 setTransitioningDelegate_];
      }

      v103 = a4;
      v104 = a5;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v101 = sub_265A3EB2C;
      v102 = &block_descriptor_12;
      v62 = _Block_copy(&aBlock);
      v63 = v86;

      v95.receiver = v17;
      v95.super_class = v88;
      objc_msgSendSuper2(&v95, sel_listController_pushViewController_givenRootController_withModalStylePopupStateApplicator_animated_, v18, v47, v92, v62, a6 & 1);
      _Block_release(v62);
    }

    else if (v45)
    {
      v102 = swift_getObjectType();
      *&aBlock = v19;
      v64 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EEF8, qword_265A47F98);
      if (swift_dynamicCast())
      {

        v102 = sub_265A465AC();
        v103 = sub_265A3CCD0(qword_28156B608, MEMORY[0x277D40250], MEMORY[0x277D40258]);
        __swift_allocate_boxed_opaque_existential_1(&aBlock);
        v65 = v64;
        sub_265A4657C();
      }

      else
      {
        v102 = sub_265A465BC();
        v103 = sub_265A3CCD0(&unk_28002EE60, MEMORY[0x277D402E0], MEMORY[0x277D402F0]);
        __swift_allocate_boxed_opaque_existential_1(&aBlock);
        v70 = v64;
        sub_265A465CC();
      }

      sub_265A35D24(&aBlock, v98);
      sub_265A35C74(v98, v97);
      v71 = v96;
      sub_265A35C74(v97, v96);
      v72 = swift_allocObject();
      *(v72 + 16) = a6 & 1;
      *(v72 + 24) = v64;
      sub_265A35D24(v97, v72 + 32);
      *(v72 + 72) = v18;
      v73 = v18;
      v64;
      v74 = [v73 transitionCoordinator];
      if (v74)
      {
        v75 = v74;
        __swift_destroy_boxed_opaque_existential_1(v96);
        v76 = sub_265A465EC();
        v77 = sub_265A46C3C();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_265A2E000, v76, v77, "listController has an active transition is flight, deferring navigation push to after active transition completes.", v78, 2u);
          MEMORY[0x2667673B0](v78, -1, -1);
        }

        v103 = sub_265A3EEBC;
        v104 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v101 = sub_265A3C21C;
        v102 = &block_descriptor_3;
        v79 = _Block_copy(&aBlock);
        v80 = swift_allocObject();
        *(v80 + 16) = sub_265A3F5F8;
        *(v80 + 24) = v72;
        v103 = sub_265A3F62C;
        v104 = v80;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v101 = sub_265A3C21C;
        v102 = &block_descriptor_9_0;
        v81 = _Block_copy(&aBlock);

        [v75 animateAlongsideTransition:v79 completion:v81];
        _Block_release(v81);
        _Block_release(v79);

        swift_unknownObjectRelease();
        v71 = v98;
      }

      else
      {
        *&aBlock = 0;
        v82 = sub_265A4664C();
        MEMORY[0x28223BE20](v82);
        sub_265A466DC();

        __swift_destroy_boxed_opaque_existential_1(v98);
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      v66 = sub_265A465EC();
      v67 = sub_265A46C3C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_265A2E000, v66, v67, "listController that requested presentation is not from a managed navigation stack, defer to default implementation.", v68, 2u);
        MEMORY[0x2667673B0](v68, -1, -1);
      }

      v103 = a4;
      v104 = a5;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v101 = sub_265A3EB2C;
      v102 = &block_descriptor_0;
      v69 = _Block_copy(&aBlock);

      v99.receiver = v17;
      v99.super_class = ObjectType;
      objc_msgSendSuper2(&v99, sel_listController_pushViewController_givenRootController_withModalStylePopupStateApplicator_animated_, v18, v19, v16, v69, a6 & 1);
      _Block_release(v69);
    }

    a3 = 0;
  }

  sub_265A3E82C(v17, v18, v19, a3, a6 & 1);
}

void sub_265A3E82C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v10 = sub_265A4660C();
  __swift_project_value_buffer(v10, qword_28156B870);
  v11 = a4;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  oslog = sub_265A465EC();
  v15 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v16 = 136317187;
    swift_getObjectType();
    v19 = sub_265A46E0C();
    v28 = a5;
    v21 = sub_265A3C540(v19, v20, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_265A3C540(0xD000000000000049, 0x8000000265A49CC0, &v30);
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2113;
    *(v16 + 34) = v13;
    *(v16 + 42) = 2160;
    *(v16 + 44) = 1752392040;
    *(v16 + 52) = 2113;
    *(v16 + 54) = v14;
    *v17 = v13;
    v17[1] = v14;
    *(v16 + 62) = 2160;
    *(v16 + 64) = 1752392040;
    *(v16 + 72) = 2081;
    v22 = v13;
    v23 = v14;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v25 = sub_265A46BAC();
    v27 = sub_265A3C540(v25, v26, &v30);

    *(v16 + 74) = v27;
    *(v16 + 82) = 1024;
    *(v16 + 84) = v28 & 1;
    _os_log_impl(&dword_265A2E000, oslog, v15, "…Complete (%s.%s), listController: '%{private,mask.hash}@', viewController: '%{private,mask.hash}@', 'rootController: '%{private,mask.hash}s', animated: '%{BOOL}d'.", v16, 0x58u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v18, -1, -1);
    MEMORY[0x2667673B0](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_265A3EB2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_265A3EB80(char a1)
{
  sub_265A4664C();
  sub_265A466DC();
}

uint64_t sub_265A3EC10(void *a1, void *a2, void *a3)
{
  v17 = a3;
  v18 = sub_265A46B7C();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v8 = sub_265A4660C();
  __swift_project_value_buffer(v8, qword_28156B870);
  v9 = a1;
  v10 = sub_265A465EC();
  v11 = sub_265A46C3C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2113;
    *(v12 + 14) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_265A2E000, v10, v11, "Appending %{private,mask.hash}@ to the navigation path.", v12, 0x16u);
    sub_265A3CDC8(v13);
    MEMORY[0x2667673B0](v13, -1, -1);
    MEMORY[0x2667673B0](v12, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = [v17 traitCollection];
  sub_265A46C4C();

  sub_265A46B6C();
  (*(v5 + 8))(v7, v18);
}

uint64_t sub_265A3EEBC()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_265A3EF4C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t PreferencesListControllerNavigationCoordinator.listControllerIs(onTopOfNavigationStack:searchTopMostViewControllerChildren:)(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = [a1 navigationController];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  if ((sub_265A416D8() & 1) == 0)
  {

LABEL_9:
    v15.receiver = v2;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_listControllerIsOnTopOfNavigationStack_searchTopMostViewControllerChildren_, a1, a2 & 1);
  }

  v8 = [v7 topViewController];
  v9 = a1;
  do
  {
    if (v8)
    {
      sub_265A3F594();
      v11 = v9;
      v12 = v8;
      v13 = sub_265A46C9C();

      if (v13)
      {

        return 1;
      }
    }

    v10 = [v9 parentViewController];

    v9 = v10;
  }

  while (v10);

  return 0;
}

id PreferencesListControllerNavigationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreferencesListControllerNavigationCoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PreferencesListControllerNavigationCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_265A3F594()
{
  result = qword_28156B5E0;
  if (!qword_28156B5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156B5E0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s14SettingsHostUI46PreferencesListControllerNavigationCoordinatorC09animationF012forDismissedSo06UIViewF21AnimatedTransitioning_pSgSo0lF0C_tF_0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 parentController];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    v8 = [v6 rootController];
    if (v8)
    {
      v9 = v8;

      return;
    }

    v10 = [v4 usePopupStyle];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {

      return;
    }

    v12 = v11;
    v13 = v7;
    if (!v10)
    {
      v1 = &off_279BB2000;
      if ([v4 modalPresentationStyle] != 2)
      {

        goto LABEL_49;
      }

      [v12 formSheetViewWillDisappear];
      v21 = [v12 childViewControllers];
      sub_265A3F594();
      v15 = sub_265A46BDC();

      if (!(v15 >> 62))
      {
        v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
LABEL_48:

          goto LABEL_49;
        }

LABEL_22:
        if (v22 < 1)
        {
          __break(1u);
          goto LABEL_65;
        }

        for (i = 0; i != v22; ++i)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x266766D60](i, v15);
          }

          else
          {
            v24 = *(v15 + 8 * i + 32);
          }

          v25 = v24;
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (v26)
          {
            [v26 formSheetViewWillDisappear];
          }
        }

        v1 = &off_279BB2000;
LABEL_49:
        v13 = v13;
        if ([v4 v1[83]] != 2)
        {

          return;
        }

        [v12 formSheetViewDidDisappear];
        v31 = [v12 childViewControllers];
        sub_265A3F594();
        v32 = sub_265A46BDC();

        if (v32 >> 62)
        {
          v33 = sub_265A46D6C();
          if (v33)
          {
LABEL_52:
            if (v33 >= 1)
            {
              for (j = 0; j != v33; ++j)
              {
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v35 = MEMORY[0x266766D60](j, v32);
                }

                else
                {
                  v35 = *(v32 + 8 * j + 32);
                }

                v36 = v35;
                objc_opt_self();
                v37 = swift_dynamicCastObjCClass();
                if (v37)
                {
                  [v37 formSheetViewDidDisappear];
                }
              }

              goto LABEL_62;
            }

LABEL_65:
            __break(1u);
            return;
          }
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_52;
          }
        }

LABEL_62:

        return;
      }

LABEL_47:
      v22 = sub_265A46D6C();
      if (!v22)
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    [v12 popupViewWillDisappear];
    v14 = [v12 childViewControllers];
    v4 = sub_265A3F594();
    v15 = sub_265A46BDC();

    if (v15 >> 62)
    {
      v16 = sub_265A46D6C();
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    for (k = 0; k != v16; ++k)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x266766D60](k, v15);
      }

      else
      {
        v18 = *(v15 + 8 * k + 32);
      }

      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        [v20 popupViewWillDisappear];
      }
    }

LABEL_33:

    v13 = v13;
    v1 = &off_279BB2000;
    [v12 popupViewDidDisappear];
    v15 = [v12 childViewControllers];
    v12 = sub_265A46BDC();

    if (v12 >> 62)
    {
      v4 = sub_265A46D6C();
      if (!v4)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_62;
      }
    }

    if (v4 >= 1)
    {
      for (m = 0; m != v4; ++m)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x266766D60](m, v12);
        }

        else
        {
          v28 = *(v12 + 8 * m + 32);
        }

        v29 = v28;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          [v30 popupViewDidDisappear];
        }
      }

      goto LABEL_62;
    }

    goto LABEL_46;
  }
}

uint64_t sub_265A3FC90()
{
  result = sub_265A402CC(&unk_2877514D8);
  qword_28156B6C0 = result;
  return result;
}

BOOL sub_265A3FCBC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_265A46DDC();
  MEMORY[0x266766E10](a1);
  v4 = sub_265A46DFC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_265A3FE60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265A462AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  if ([v1 propertyForKey_])
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_265A4624C();

      sub_265A4627C();
      sub_265A4628C();
      v10 = *(v4 + 8);
      v10(v7, v3);
      sub_265A46C6C();
      v10(v9, v3);
      v11 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    sub_265A3670C(&v19, &unk_28002EFF0, &qword_265A48078);
  }

  v12 = sub_265A46B8C();
  v13 = [v1 propertyForKey_];

  if (v13)
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v16 == 1)
    {
      sub_265A46C5C();
      v11 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    sub_265A3670C(&v19, &unk_28002EFF0, &qword_265A48078);
  }

  if ([v1 propertyForKey_])
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
    sub_265A416C8(&v17, &v19);
    sub_265A3670C(&v19, &unk_28002EFF0, &qword_265A48078);
    sub_265A46C7C();
    v11 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    sub_265A3670C(&v19, &unk_28002EFF0, &qword_265A48078);
    v11 = 1;
  }

LABEL_19:
  v14 = sub_265A46C8C();
  return (*(*(v14 - 8) + 56))(a1, v11, 1, v14);
}

uint64_t sub_265A402CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F000, qword_265A48080);
    v3 = sub_265A46D0C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_265A46DDC();
      MEMORY[0x266766E10](v10);
      result = sub_265A46DFC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_44shouldPerformDefaultDeferredBundleLoadingForSbSo06PSListF0C_So11PSSpecifierCtF_0(void *a1, void *a2)
{
  v3 = [a1 navigationController];
  if (!v3 || (v4 = v3, v5 = sub_265A416D8(), v4, (v5 & 1) == 0))
  {
    if (qword_28156B600 != -1)
    {
      swift_once();
    }

    v16 = sub_265A4660C();
    __swift_project_value_buffer(v16, qword_28156B870);
    v8 = sub_265A465EC();
    v17 = sub_265A46C3C();
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_265A2E000, v8, v17, "listController that requested presentation is not from a managed navigation stack, defer to default implementation.", v18, 2u);
    v15 = v18;
    goto LABEL_14;
  }

  v6 = [a2 controllerLoadStyle];
  if (qword_28156B6B8 != -1)
  {
    swift_once();
  }

  if (sub_265A3FCBC(v6, qword_28156B6C0))
  {
    if (qword_28156B600 != -1)
    {
      swift_once();
    }

    v7 = sub_265A4660C();
    __swift_project_value_buffer(v7, qword_28156B870);
    v8 = sub_265A465EC();
    v9 = sub_265A46C3C();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    type metadata accessor for PSSpecifierControllerLoadStyle();
    v12 = sub_265A46BAC();
    v14 = sub_265A3C540(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_265A2E000, v8, v9, "Controller load style %{public}s is unsupported, defer to default implementation.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2667673B0](v11, -1, -1);
    v15 = v10;
LABEL_14:
    MEMORY[0x2667673B0](v15, -1, -1);
LABEL_15:

    return 1;
  }

  return 0;
}

uint64_t _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_07presentF3ForySo06PSListF0C_So11PSSpecifierCtF_0(void *a1, void *a2)
{
  v4 = sub_265A46B7C();
  v88 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v87 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFD0, &qword_265A48058);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = v75 - v7;
  v84 = sub_265A46B4C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFD8, &qword_265A48060);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v75 - v10;
  v78 = sub_265A462AC();
  v77 = *(v78 - 8);
  v12 = MEMORY[0x28223BE20](v78);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = v75 - v15;
  v85 = sub_265A465AC();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFE0, &qword_265A48068);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v75 - v18;
  v20 = sub_265A46C8C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v75 - v26;
  MEMORY[0x28223BE20](v25);
  v90 = v75 - v28;
  v86 = a1;
  [a2 setParentController_];
  v29 = [a2 controllerLoadStyle];
  v89 = v4;
  if (v29 == 1)
  {
    sub_265A3FE60(v19);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      (*(v21 + 32))(v90, v19, v20);
      v30 = &off_279BB2000;
      if ([a2 propertyForKey_])
      {
        sub_265A46CBC();
        swift_unknownObjectRelease();
      }

      else
      {
        v92 = 0u;
        v93 = 0u;
      }

      v96 = v92;
      v97 = v93;
      if (*(&v93 + 1))
      {
        if (swift_dynamicCast())
        {
          sub_265A4629C();

          v32 = v77;
          v33 = v78;
          if ((*(v77 + 48))(v11, 1, v78) != 1)
          {
            (*(v32 + 32))(v76, v11, v33);
            v60 = v33;
            sub_265A4626C();
            v75[1] = sub_265A4625C();
            v61 = *(v32 + 8);
            v61(v14, v60);
            (*(v21 + 16))(v27, v90, v20);
            if ([a2 propertyForKey_])
            {
              sub_265A46CBC();
              swift_unknownObjectRelease();
            }

            else
            {
              v92 = 0u;
              v93 = 0u;
            }

            v35 = v80;
            v96 = v92;
            v97 = v93;
            if (*(&v93 + 1))
            {
              swift_dynamicCast();
            }

            else
            {
              sub_265A3670C(&v96, &unk_28002EFF0, &qword_265A48078);
            }

            v62 = a2;
            sub_265A4659C();
            v61(v76, v78);
            goto LABEL_27;
          }

          sub_265A3670C(v11, &qword_28002EFD8, &qword_265A48060);
          v30 = &off_279BB2000;
        }
      }

      else
      {
        sub_265A3670C(&v96, &unk_28002EFF0, &qword_265A48078);
      }

      v34 = [a2 v30[92]];
      v35 = v80;
      if (v34)
      {
        sub_265A46CBC();
        swift_unknownObjectRelease();
      }

      else
      {
        v92 = 0u;
        v93 = 0u;
      }

      v96 = v92;
      v97 = v93;
      if (*(&v93 + 1))
      {
        if (swift_dynamicCast())
        {
          (*(v21 + 16))(v24, v90, v20);
          if ([a2 v30[92]])
          {
            sub_265A46CBC();
            swift_unknownObjectRelease();
          }

          else
          {
            v92 = 0u;
            v93 = 0u;
          }

          v96 = v92;
          v97 = v93;
          if (*(&v93 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_265A3670C(&v96, &unk_28002EFF0, &qword_265A48078);
          }

          v36 = a2;
          sub_265A4659C();
LABEL_27:
          v37 = v82;
          sub_265A4656C();
          v38 = v83;
          v39 = v84;
          if ((*(v83 + 48))(v37, 1, v84) == 1)
          {
            sub_265A3670C(v37, &qword_28002EFD0, &qword_265A48058);
            v40 = v85;
            *(&v97 + 1) = v85;
            v98 = sub_265A41680(qword_28156B608, MEMORY[0x277D40250], MEMORY[0x277D40258]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v96);
            (*(v81 + 32))(boxed_opaque_existential_1, v35, v40);
          }

          else
          {
            v42 = *(v38 + 32);
            v43 = v79;
            v42(v79, v37, v39);
            *(&v97 + 1) = v39;
            v98 = sub_265A41680(&unk_28156B5F0, MEMORY[0x277D4D798], MEMORY[0x277D4D7A0]);
            v44 = __swift_allocate_boxed_opaque_existential_1(&v96);
            v42(v44, v43, v39);
            (*(v81 + 8))(v35, v85);
          }

          (*(v21 + 8))(v90, v20);
          goto LABEL_31;
        }
      }

      else
      {
        sub_265A3670C(&v96, &unk_28002EFF0, &qword_265A48078);
      }

      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_265A46D2C();
      MEMORY[0x266766BE0](0xD000000000000072, 0x8000000265A49FA0);
      v68 = [a2 identifier];
      if (v68)
      {
        v69 = v68;
        v70 = sub_265A46B9C();
        v72 = v71;
      }

      else
      {
        v70 = 0;
        v72 = 0;
      }

      *&v92 = v70;
      *(&v92 + 1) = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFE8, &qword_265A48070);
      v73 = sub_265A46BAC();
      MEMORY[0x266766BE0](v73);

      MEMORY[0x266766BE0](11817, 0xE200000000000000);
LABEL_56:
      result = sub_265A46D5C();
      __break(1u);
      return result;
    }

LABEL_46:
    sub_265A3670C(v19, &qword_28002EFE0, &qword_265A48068);
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_265A46D2C();
    MEMORY[0x266766BE0](0xD00000000000007ALL, 0x8000000265A49F20);
    v63 = [a2 identifier];
    if (v63)
    {
      v64 = v63;
      v65 = sub_265A46B9C();
      v67 = v66;
    }

    else
    {
      v65 = 0;
      v67 = 0;
    }

    *&v92 = v65;
    *(&v92 + 1) = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFE8, &qword_265A48070);
    v74 = sub_265A46BAC();
    MEMORY[0x266766BE0](v74);

    MEMORY[0x266766BE0](46, 0xE100000000000000);
    goto LABEL_56;
  }

  if (v29 != 2)
  {
    goto LABEL_56;
  }

  if (![a2 detailControllerClass])
  {
    __break(1u);
    goto LABEL_45;
  }

  swift_getObjCClassMetadata();
  v91 = &unk_287756368;
  swift_dynamicCastTypeToObjCProtocolUnconditional();
  sub_265A3F594();
  if (!swift_dynamicCastMetatype())
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(&v93 + 1) = v85;
  v94 = sub_265A41680(qword_28156B608, MEMORY[0x277D40250], MEMORY[0x277D40258]);
  __swift_allocate_boxed_opaque_existential_1(&v92);
  v31 = a2;
  sub_265A4658C();
  sub_265A35D24(&v92, &v96);
LABEL_31:
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v45 = sub_265A4660C();
  __swift_project_value_buffer(v45, qword_28156B870);
  sub_265A35C74(&v96, &v92);
  v46 = sub_265A465EC();
  v47 = sub_265A46C3C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v95 = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    v50 = __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    MEMORY[0x28223BE20](v50);
    (*(v52 + 16))(v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    v53 = sub_265A46BAC();
    v55 = v54;
    __swift_destroy_boxed_opaque_existential_1(&v92);
    v56 = sub_265A3C540(v53, v55, &v95);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_265A2E000, v46, v47, "Appending %{private,mask.hash}s to the navigation path.", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x2667673B0](v49, -1, -1);
    MEMORY[0x2667673B0](v48, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v92);
  }

  __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
  v57 = [v86 traitCollection];
  v58 = v87;
  sub_265A46C4C();

  sub_265A46B6C();
  (*(v88 + 8))(v58, v89);
  return __swift_destroy_boxed_opaque_existential_1(&v96);
}

uint64_t sub_265A41680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_265A416C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_265A416D8()
{
  v1 = v0;
  v2 = sub_265A46B7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v6 = objc_getAssociatedObject(v0, &unk_28002F010);
  swift_endAccess();
  if (v6)
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v21[15];
      return (v7 & 1);
    }
  }

  else
  {
    sub_265A419CC(v24);
  }

  v8 = [v1 splitViewController];
  if (!v8)
  {
LABEL_16:
    v7 = 0;
    return (v7 & 1);
  }

  v9 = v8;
  v10 = [v8 parentViewController];
  if (!v10)
  {

    goto LABEL_16;
  }

  v11 = v10;
  result = [v1 view];
  if (result)
  {
    v13 = result;
    v14 = [result window];

    v15 = [v14 rootViewController];
    v16 = [v1 traitCollection];
    sub_265A46C4C();

    v7 = sub_265A46B5C();
    (*(v3 + 8))(v5, v2);
    if (!v15 || (sub_265A3F594(), v17 = v11, v18 = v15, v19 = sub_265A46C9C(), v18, v17, (v19 & 1) == 0))
    {
      v7 = 0;
    }

    v20 = sub_265A46BFC();
    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_28002F010, v20, 0);
    swift_endAccess();

    return (v7 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_265A419CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EFF0, &qword_265A48078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.alert<A, B>(_:item:match:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a5;
  v70 = a6;
  v71 = a8;
  v60 = a1;
  v61 = a4;
  v56 = a3;
  v58 = a2;
  v59 = a9;
  v68 = a11;
  v69 = a12;
  v66 = a10;
  v67 = a7;
  v13 = sub_265A4655C();
  v63 = v13;
  v14 = *(v13 - 8);
  v65 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v48 - v15;
  v54 = v48 - v15;
  sub_265A46CAC();
  v53 = sub_265A46ABC();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v53);
  v64 = v48 - v19;
  v20 = *(v17 + 16);
  v51 = v17 + 16;
  v57 = v20;
  v20();
  v55 = *(v14 + 16);
  v55(v16, a3, v13);
  sub_265A46C2C();
  v21 = sub_265A46C1C();
  v22 = *(v17 + 80);
  v23 = *(v14 + 80);
  v24 = (v22 + 80) & ~v22;
  v50 = v24;
  v25 = (v18 + v24 + v23) & ~v23;
  v52 = v22 | v23;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v21;
  *(v26 + 3) = v27;
  v28 = v67;
  *(v26 + 4) = v70;
  *(v26 + 5) = v28;
  v29 = v66;
  *(v26 + 6) = v71;
  *(v26 + 7) = v29;
  v30 = v69;
  *(v26 + 8) = v68;
  *(v26 + 9) = v30;
  v31 = *(v17 + 32);
  v48[1] = v17 + 32;
  v49 = v31;
  v32 = &v26[v24];
  v33 = v64;
  v34 = v53;
  v31(v32, v64, v53);
  v35 = *(v14 + 32);
  v48[0] = v14 + 32;
  v36 = v54;
  v37 = v63;
  v35(&v26[v25], v54, v63);
  (v57)(v33, v58, v34);
  v38 = v36;
  v55(v36, v56, v37);
  v39 = sub_265A46C1C();
  v40 = v25;
  v41 = swift_allocObject();
  *(v41 + 2) = v39;
  v43 = v70;
  v42 = v71;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v43;
  v44 = v66;
  *(v41 + 5) = v67;
  *(v41 + 6) = v42;
  v45 = v68;
  v46 = v69;
  *(v41 + 7) = v44;
  *(v41 + 8) = v45;
  *(v41 + 9) = v46;
  v49(&v41[v50], v64, v34);
  v35(&v41[v40], v38, v63);
  sub_265A46AAC();
  sub_265A426E8(v60, v72, v73, v74, v61);
}

uint64_t sub_265A41E78@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v28 = a5;
  v29 = a6;
  v25[1] = a1;
  v26 = a4;
  v10 = sub_265A46CAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  sub_265A46C2C();
  v27 = sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_265A46ABC();
  MEMORY[0x266766AB0](v14);
  sub_265A4655C();
  v15 = sub_265A4654C();
  v16 = MEMORY[0x28223BE20](v15);
  v25[-8] = a2;
  v25[-7] = a3;
  v17 = v28;
  v25[-6] = v26;
  v25[-5] = v17;
  v25[-4] = a7;
  v25[-3] = a8;
  v25[-2] = v16;
  v25[-1] = v18;
  MEMORY[0x28223BE20](v16);
  v25[-8] = a2;
  v25[-7] = a3;
  v25[-6] = v20;
  v25[-5] = v19;
  v25[-4] = a7;
  v25[-3] = a8;
  v25[-2] = sub_265A43774;
  v25[-1] = v21;
  sub_265A440A4(sub_265A437A8, &v25[-10], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v22, &v30);

  (*(v11 + 8))(v13, v10);
  v23 = v30;

  *v29 = (v23 & 1) == 0;
  return result;
}

uint64_t sub_265A420E4@<X0>(BOOL *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  sub_265A46CAC();
  v9 = *(sub_265A46ABC() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_265A4655C() - 8);
  return sub_265A41E78(v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, v5, v6, a1, v7, v8);
}

uint64_t sub_265A42210(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_265A46CAC();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = *a1;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v12)
  {
    sub_265A4655C();
    v13 = sub_265A4653C();
    v13();

    (*(*(a7 - 8) + 56))(v11, 0, 1, a7);
  }

  else
  {
    (*(*(a7 - 8) + 56))(v11, 1, 1, a7);
  }

  sub_265A46ABC();
  sub_265A46A9C();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 40);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v13 = *(*v2 + 64);
  v5 = sub_265A4655C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v12 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = v2[10];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v8, 1, v1))
  {
    (*(v9 + 8))(v0 + v4 + v8, v1);
  }

  v10 = (v4 + v13 + v7) & ~v7;
  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v3 | v7 | 7);
}

uint64_t sub_265A425B8(unsigned __int8 *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_265A46CAC();
  v5 = *(sub_265A46ABC() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_265A4655C() - 8);
  return sub_265A42210(a1, v1[2], v1[3], v1 + v6, v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v3, v4);
}

uint64_t sub_265A426E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v17 = a5;
  v16 = a4;
  v15[0] = a2;
  v15[1] = a3;
  v6 = sub_265A4623C();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_265A468CC();
  v11 = v10;
  v13 = v12;
  sub_265A4699C();
  sub_265A38A6C(v9, v11, v13 & 1);
}

uint64_t View.alert<A, B, C>(_:item:match:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v78 = a7;
  v85 = a8;
  v76 = a5;
  v77 = a6;
  v75 = a4;
  v68 = a3;
  v70 = a2;
  v73 = a9;
  v74 = a1;
  v86 = a14;
  v87 = a16;
  v72 = a13;
  v83 = a12;
  v84 = a15;
  v71 = a11;
  v82 = a10;
  v17 = sub_265A4655C();
  v79 = v17;
  v18 = *(v17 - 8);
  v64 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v56 - v19;
  v80 = v56 - v19;
  sub_265A46CAC();
  v65 = sub_265A46ABC();
  v21 = *(v65 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v65);
  v81 = v56 - v23;
  v24 = *(v21 + 16);
  v62 = v21 + 16;
  v69 = v24;
  v24();
  v25 = *(v18 + 16);
  v61 = v18 + 16;
  v67 = v25;
  v25(v20, a3, v17);
  v66 = sub_265A46C2C();
  v26 = sub_265A46C1C();
  v27 = *(v21 + 80);
  v28 = *(v18 + 80);
  v29 = v18;
  v30 = (v27 + 96) & ~v27;
  v60 = v30;
  v31 = (v22 + v28 + v30) & ~v28;
  v63 = v27 | v28;
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 2) = v26;
  *(v32 + 3) = v33;
  v35 = v82;
  v34 = v83;
  *(v32 + 4) = v85;
  *(v32 + 5) = v35;
  v37 = v71;
  v36 = v72;
  *(v32 + 6) = v71;
  *(v32 + 7) = v34;
  v38 = v86;
  *(v32 + 8) = v36;
  *(v32 + 9) = v38;
  v39 = v87;
  *(v32 + 10) = v84;
  *(v32 + 11) = v39;
  v40 = *(v21 + 32);
  v58 = v21 + 32;
  v59 = v40;
  v41 = &v32[v30];
  v42 = v81;
  v43 = v65;
  v40(v41, v81, v65);
  v44 = *(v29 + 32);
  v56[1] = v29 + 32;
  v57 = v44;
  v45 = v79;
  v46 = v80;
  v44(&v32[v31], v80, v79);
  (v69)(v42, v70, v43);
  v67(v46, v68, v45);
  v47 = sub_265A46C1C();
  v48 = swift_allocObject();
  *(v48 + 2) = v47;
  v50 = v84;
  v49 = v85;
  *(v48 + 3) = MEMORY[0x277D85700];
  *(v48 + 4) = v49;
  v51 = v83;
  *(v48 + 5) = v82;
  *(v48 + 6) = v37;
  *(v48 + 7) = v51;
  *(v48 + 8) = v36;
  v52 = v87;
  *(v48 + 9) = v86;
  *(v48 + 10) = v50;
  *(v48 + 11) = v52;
  v59(&v48[v60], v81, v43);
  v57(&v48[v31], v80, v79);
  sub_265A46AAC();
  *&v55 = v51;
  *(&v55 + 1) = v36;
  *&v54 = v49;
  *(&v54 + 1) = v37;
  sub_265A4358C(v74, v88, v89, v90, v75, v76, v77, v78, v54, v55);
}

uint64_t sub_265A42CF4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a5;
  v36 = a6;
  v32 = a10;
  v33 = a4;
  v30[1] = a1;
  v31 = a9;
  v12 = sub_265A46CAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  sub_265A46C2C();
  v34 = sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_265A46ABC();
  MEMORY[0x266766AB0](v16);
  sub_265A4655C();
  v17 = sub_265A4654C();
  v18 = MEMORY[0x28223BE20](v17);
  v30[-10] = a2;
  v30[-9] = a3;
  v19 = v32;
  v20 = v35;
  v30[-8] = v33;
  v30[-7] = v20;
  v30[-6] = a7;
  v30[-5] = a8;
  v30[-4] = v31;
  v30[-3] = v19;
  v30[-2] = v18;
  v30[-1] = v21;
  MEMORY[0x28223BE20](v18);
  v30[-10] = a2;
  v30[-9] = a3;
  v30[-8] = v23;
  v30[-7] = v22;
  v30[-6] = a7;
  v30[-5] = a8;
  v30[-4] = v24;
  v30[-3] = v25;
  v30[-2] = sub_265A436F8;
  v30[-1] = v26;
  sub_265A440A4(sub_265A43730, &v30[-12], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v27, &v37);

  (*(v13 + 8))(v15, v12);
  v28 = v37;

  *v36 = (v28 & 1) == 0;
  return result;
}

uint64_t sub_265A42F74@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v14 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  sub_265A46CAC();
  v9 = *(sub_265A46ABC() - 8);
  v10 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_265A4655C() - 8);
  return sub_265A42CF4(v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, v5, v6, a1, v14, *(&v14 + 1), v7, v8);
}

uint64_t sub_265A430B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_265A46CAC();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = *a1;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v12)
  {
    sub_265A4655C();
    v13 = sub_265A4653C();
    v13();

    (*(*(a7 - 8) + 56))(v11, 0, 1, a7);
  }

  else
  {
    (*(*(a7 - 8) + 56))(v11, 1, 1, a7);
  }

  sub_265A46ABC();
  sub_265A46A9C();
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 40);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v13 = *(*v2 + 64);
  v5 = sub_265A4655C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v12 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = v2[10];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v8, 1, v1))
  {
    (*(v9 + 8))(v0 + v4 + v8, v1);
  }

  v10 = (v4 + v13 + v7) & ~v7;
  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v3 | v7 | 7);
}

uint64_t sub_265A43458(unsigned __int8 *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_265A46CAC();
  v5 = *(sub_265A46ABC() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_265A4655C() - 8);
  return sub_265A430B0(a1, v1[2], v1[3], v1 + v6, v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v3, v4);
}

uint64_t sub_265A4358C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v24 = a5;
  v23 = a4;
  v21 = a2;
  v22 = a3;
  v20[0] = a10;
  v20[1] = a9;
  v11 = sub_265A4623C();
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v14 = sub_265A468CC();
  v16 = v15;
  v18 = v17;
  sub_265A4698C();
  sub_265A38A6C(v14, v16, v18 & 1);
}

uint64_t sub_265A43730@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result & 1;
  return result;
}

void *sub_265A437E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a1;
  v33 = a4;
  v34 = *(a2 + 16);
  v35 = a3;
  v32 = *(v34 + 16);
  v6 = sub_265A4655C();
  v27 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v28 = v25 - v9;
  v26 = a2;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v11 + 16);
  v29(v13, v4);
  (*(v7 + 16))(v10, v31, v6);
  v14 = *(v11 + 80);
  v15 = (v14 + 48) & ~v14;
  v31 = v15 + v12;
  v25[1] = v14 | 7;
  v16 = (v15 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v32;
  v19 = v35;
  *(v17 + 4) = v32;
  *(v17 + 5) = v19;
  v20 = *(v11 + 32);
  v21 = v26;
  v20(&v17[v15], v13, v26);
  (*(v7 + 32))(&v17[v16], v28, v27);
  (v29)(v13, v30, v21);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v35;
  *(v22 + 4) = v18;
  *(v22 + 5) = v23;
  v20(&v22[v15], v13, v21);
  return sub_265A46AAC();
}

uint64_t sub_265A43A90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, char *a4@<X8>)
{
  v25[1] = a1;
  v27 = a4;
  v26 = sub_265A46CAC();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = v25 - v7;
  v9 = sub_265A46CAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_265A46ABC();
  MEMORY[0x266766AB0](v17);
  if ((*(v14 + 48))(v13, 1, a2) == 1)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v18 = *(v14 + 32);
    v18(v16, v13, a2);
    sub_265A4655C();
    v19 = sub_265A4654C();
    v19(v16);

    v20 = (*(*(a3 - 8) + 48))(v8, 1, a3);
    (*(v6 + 8))(v8, v26);
    if (v20 != 1)
    {
      v23 = v27;
      v18(v27, v16, a2);
      v22 = v23;
      v21 = 0;
      return (*(v14 + 56))(v22, v21, 1, a2);
    }

    (*(v14 + 8))(v16, a2);
  }

  v21 = 1;
  v22 = v27;
  return (*(v14 + 56))(v22, v21, 1, a2);
}

uint64_t sub_265A43DB0@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_265A46CAC();
  v5 = *(sub_265A46ABC() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_265A4655C() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_265A43A90(v9, v3, v4, a1);
}

uint64_t sub_265A43EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_265A46CAC();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  sub_265A46ABC();
  return sub_265A46A9C();
}

uint64_t sub_265A43F90(uint64_t a1)
{
  v3 = v1[4];
  sub_265A46CAC();
  v4 = *(sub_265A46ABC() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_265A43EB4(a1, v5, v6, v7, v3);
}

uint64_t sub_265A44060@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265A440A4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t View.sheet<A, B>(item:match:onDismiss:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = a6;
  v59 = a4;
  v60 = a5;
  v57 = a9;
  v58 = a3;
  v54 = a2;
  v56 = a1;
  v69 = a13;
  v70 = a7;
  v67 = a11;
  v68 = a12;
  v65 = a10;
  v66 = a8;
  v14 = sub_265A4655C();
  v62 = v14;
  v15 = *(v14 - 8);
  v64 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - v16;
  v52 = v47 - v16;
  sub_265A46CAC();
  v18 = sub_265A46ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = v47 - v21;
  v22 = *(v19 + 16);
  v50 = v19 + 16;
  v55 = v22;
  v22();
  v53 = *(v15 + 16);
  v53(v17, a2, v14);
  sub_265A46C2C();
  v23 = sub_265A46C1C();
  v24 = *(v19 + 80);
  v25 = *(v15 + 80);
  v26 = (v24 + 80) & ~v24;
  v49 = v26;
  v27 = (v20 + v26 + v25) & ~v25;
  v51 = v24 | v25;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v23;
  *(v28 + 3) = v29;
  v30 = v65;
  v31 = v66;
  *(v28 + 4) = v70;
  *(v28 + 5) = v31;
  *(v28 + 6) = v30;
  v32 = v68;
  *(v28 + 7) = v67;
  *(v28 + 8) = v32;
  *(v28 + 9) = v69;
  v33 = *(v19 + 32);
  v47[1] = v19 + 32;
  v48 = v33;
  v34 = &v28[v26];
  v35 = v63;
  v33(v34, v63, v18);
  v36 = v15 + 32;
  v37 = *(v15 + 32);
  v47[0] = v36;
  v38 = v52;
  v39 = v62;
  v37(&v28[v27], v52, v62);
  (v55)(v35, v56, v18);
  v53(v38, v54, v39);
  v40 = sub_265A46C1C();
  v41 = swift_allocObject();
  *(v41 + 2) = v40;
  v43 = v69;
  v42 = v70;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v42;
  v44 = v65;
  *(v41 + 5) = v66;
  *(v41 + 6) = v44;
  v45 = v68;
  *(v41 + 7) = v67;
  *(v41 + 8) = v45;
  *(v41 + 9) = v43;
  v48(&v41[v49], v63, v18);
  v37(&v41[v27], v38, v62);
  sub_265A46AAC();
  sub_265A469BC();
}

uint64_t View.fullScreenCover<A, B>(item:match:onDismiss:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = a6;
  v59 = a4;
  v60 = a5;
  v57 = a9;
  v58 = a3;
  v54 = a2;
  v56 = a1;
  v69 = a13;
  v70 = a7;
  v67 = a11;
  v68 = a12;
  v65 = a10;
  v66 = a8;
  v14 = sub_265A4655C();
  v62 = v14;
  v15 = *(v14 - 8);
  v64 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - v16;
  v52 = v47 - v16;
  sub_265A46CAC();
  v18 = sub_265A46ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = v47 - v21;
  v22 = *(v19 + 16);
  v50 = v19 + 16;
  v55 = v22;
  v22();
  v53 = *(v15 + 16);
  v53(v17, a2, v14);
  sub_265A46C2C();
  v23 = sub_265A46C1C();
  v24 = *(v19 + 80);
  v25 = *(v15 + 80);
  v26 = (v24 + 80) & ~v24;
  v49 = v26;
  v27 = (v20 + v26 + v25) & ~v25;
  v51 = v24 | v25;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v23;
  *(v28 + 3) = v29;
  v30 = v65;
  v31 = v66;
  *(v28 + 4) = v70;
  *(v28 + 5) = v31;
  *(v28 + 6) = v30;
  v32 = v68;
  *(v28 + 7) = v67;
  *(v28 + 8) = v32;
  *(v28 + 9) = v69;
  v33 = *(v19 + 32);
  v47[1] = v19 + 32;
  v48 = v33;
  v34 = &v28[v26];
  v35 = v63;
  v33(v34, v63, v18);
  v36 = v15 + 32;
  v37 = *(v15 + 32);
  v47[0] = v36;
  v38 = v52;
  v39 = v62;
  v37(&v28[v27], v52, v62);
  (v55)(v35, v56, v18);
  v53(v38, v54, v39);
  v40 = sub_265A46C1C();
  v41 = swift_allocObject();
  *(v41 + 2) = v40;
  v43 = v69;
  v42 = v70;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v42;
  v44 = v65;
  *(v41 + 5) = v66;
  *(v41 + 6) = v44;
  v45 = v68;
  *(v41 + 7) = v67;
  *(v41 + 8) = v45;
  *(v41 + 9) = v43;
  v48(&v41[v49], v63, v18);
  v37(&v41[v27], v38, v62);
  sub_265A46AAC();
  sub_265A4695C();
}

uint64_t sub_265A44C8C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(char *, char *))
{
  v32 = a4;
  v33 = a5;
  v29[1] = a1;
  v35 = a6;
  v34 = a11;
  v30 = a10;
  v31 = a2;
  v12 = sub_265A46CAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - v14;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_265A46ABC();
  MEMORY[0x266766AB0](v16);
  sub_265A4655C();
  v17 = sub_265A4654C();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = v32;
  v29[-8] = v31;
  v29[-7] = a3;
  v20 = v33;
  v29[-6] = v19;
  v29[-5] = v20;
  v29[-4] = a7;
  v29[-3] = a8;
  v29[-2] = v18;
  v29[-1] = v21;
  MEMORY[0x28223BE20](v18);
  v29[-8] = v22;
  v29[-7] = a3;
  v29[-6] = v24;
  v29[-5] = v23;
  v29[-4] = a7;
  v29[-3] = a8;
  v29[-2] = v30;
  v29[-1] = v25;
  sub_265A440A4(v34, &v29[-10], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v26, &v36);

  (*(v13 + 8))(v15, v12);
  v27 = v36;

  *v35 = (v27 & 1) == 0;
  return result;
}

uint64_t sub_265A44F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *)@<X2>, BOOL *a4@<X8>)
{
  v9 = v4[5];
  v16 = v4[6];
  v17 = v4[4];
  v15 = v4[7];
  v11 = v4[8];
  v10 = v4[9];
  sub_265A46CAC();
  v12 = *(sub_265A46ABC() - 8);
  v13 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  sub_265A4655C();
  return sub_265A44C8C(v4 + v13, v17, v9, v16, v15, a4, v11, v10, a1, a2, a3);
}

uint64_t sub_265A4505C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = sub_265A46CAC();
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v17 = *a1;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v17)
  {
    sub_265A4655C();
    v18 = sub_265A4653C();
    v18();

    (*(*(a7 - 8) + 56))(v16, 0, 1, a7);
  }

  else
  {
    (*(*(a7 - 8) + 56))(v16, 1, 1, a7);
  }

  sub_265A46ABC();
  sub_265A46A9C();
}

uint64_t sub_265A45220(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v14 = *(v2 + 56);
  v8 = *(v2 + 72);
  sub_265A46CAC();
  v9 = *(sub_265A46ABC() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_265A4655C() - 8);
  return sub_265A4505C(a1, *(v2 + 16), *(v2 + 24), v2 + v10, v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v5, v6, v7, v14, *(&v14 + 1), v8, a2);
}

uint64_t sub_265A453BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(char *, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v45 = a4;
  v46 = a5;
  v49 = a2;
  v50 = a3;
  v47 = a8;
  v48 = a15;
  v51 = a16;
  v43 = a6;
  v44 = a12;
  v39 = a13;
  v41 = a14;
  v42 = a10;
  v18 = sub_265A4655C();
  v35 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v36 = &v34 - v20;
  v37 = a7;
  sub_265A46CAC();
  v38 = sub_265A46ABC();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v23 = &v34 - v22;
  sub_265A437E0(a1, v24, a9, (&v34 - v22));
  (*(v19 + 16))(v21, a1, v18);
  v25 = (*(v19 + 80) + 88) & ~*(v19 + 80);
  v26 = swift_allocObject();
  v27 = v43;
  *(v26 + 2) = v43;
  *(v26 + 3) = a7;
  *(v26 + 4) = a9;
  v28 = v42;
  *(v26 + 5) = v42;
  *(v26 + 6) = a11;
  v30 = v44;
  v29 = v45;
  v31 = v39;
  *(v26 + 7) = v44;
  *(v26 + 8) = v31;
  v32 = v46;
  *(v26 + 9) = v29;
  *(v26 + 10) = v32;
  (*(v19 + 32))(&v26[v25], v36, v35);

  v51(v23, v49, v50, v48, v26, v27, v37, v28, a11, v30, v31);

  return (*(v40 + 8))(v23, v38);
}

uint64_t sub_265A45648@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a4;
  v32 = a1;
  v28[1] = a3;
  v29 = a2;
  v30 = a8;
  v14 = sub_265A46CAC();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v28 - v16;
  v18 = *(a7 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v28 - v22;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4655C();
  v24 = sub_265A4654C();
  v24(v32);
  v25 = *(a6 - 8);
  result = (*(v25 + 48))(v17, 1, a6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v29(v17);
    (*(v25 + 8))(v17, a6);
    sub_265A3685C();
    v27 = *(v18 + 8);
    v27(v21, a7);
    sub_265A3685C();
    v27(v23, a7);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = sub_265A4655C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265A459B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v12 = *(v3 + 48);
  v9 = *(v3 + 64);
  v10 = *(sub_265A4655C() - 8);
  return sub_265A45648(a1, *(v3 + 72), *(v3 + 80), v3 + ((*(v10 + 80) + 88) & ~*(v10 + 80)), v7, v8, a3, v12, *(&v12 + 1), v9, a2);
}

uint64_t sub_265A45B0C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 64))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_265A45BA4()
{
  v0 = sub_265A4660C();
  __swift_allocate_value_buffer(v0, qword_28156B870);
  __swift_project_value_buffer(v0, qword_28156B870);
  return sub_265A465FC();
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

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_28002F370 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_28002F364 > a2)
  {
    return 1;
  }

  if (dword_28002F364 < a2)
  {
    return 0;
  }

  return dword_28002F368 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_28002F378 == -1)
  {
    if (qword_28002F380)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_28002F380)
    {
      return _availability_version_check();
    }
  }

  if (qword_28002F370 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_28002F364 > a3)
      {
        return 1;
      }

      if (dword_28002F364 >= a3)
      {
        return dword_28002F368 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_28002F380;
  if (qword_28002F380)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_28002F380 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x266766F10](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_28002F364, &dword_28002F368);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}