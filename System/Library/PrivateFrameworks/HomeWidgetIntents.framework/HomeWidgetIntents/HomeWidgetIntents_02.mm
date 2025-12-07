uint64_t sub_2545E22D0()
{
  v10 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = type metadata accessor for HomeSingleTileEntity(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  HomeSingleTileConfigurationIntent.init(home:item:)(v1, v2, v9);
  v5 = v9[1];
  v0[6] = v9[0];
  v0[7] = v5;
  sub_2545FE8F4();
  sub_2545FE8F4();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2545B7D90;
  v7 = v0[5];

  return static SelectedHomeEntity.selectedHome.getter(v7);
}

unint64_t sub_2545E2424()
{
  result = qword_281532E60;
  if (!qword_281532E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E60);
  }

  return result;
}

unint64_t sub_2545E247C()
{
  result = qword_281532E70;
  if (!qword_281532E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E70);
  }

  return result;
}

unint64_t sub_2545E24FC()
{
  result = qword_27F606928;
  if (!qword_27F606928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606928);
  }

  return result;
}

uint64_t HomeID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2545FEB04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeID.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2545E2634()
{
  sub_2545FF834();
  MEMORY[0x259C12730](0);
  return sub_2545FF864();
}

uint64_t sub_2545E26A0(uint64_t a1)
{
  sub_2545FF834();
  MEMORY[0x259C12730](0);
  return sub_2545FF864();
}

uint64_t sub_2545E26EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2545FF7B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2545E2778(uint64_t a1)
{
  v2 = sub_2545E2968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545E27B4(uint64_t a1)
{
  v2 = sub_2545E2968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606930, &qword_254601560);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E2968();
  sub_2545FF884();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606940, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2545FF774();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2545E2968()
{
  result = qword_27F606938;
  if (!qword_27F606938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606938);
  }

  return result;
}

uint64_t HomeID.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_2545FF0C4();
}

uint64_t HomeID.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  return sub_2545FF864();
}

uint64_t HomeID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_2545FEB04();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606948, &unk_254601568);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for HomeID(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E2968();
  sub_2545FF874();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_2545E3658(&qword_27F606950, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2545FF714();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2545E2F94(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2545E2D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2545FEB04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2545E2DB8()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  return sub_2545FF864();
}

uint64_t sub_2545E2E40(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_2545FF0C4();
}

uint64_t sub_2545E2EC4(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  return sub_2545FF864();
}

uint64_t type metadata accessor for HomeID(uint64_t a1)
{
  result = qword_27F606960;
  if (!qword_27F606960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2545E2F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545E3010(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606930, &qword_254601560);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E2968();
  sub_2545FF884();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606940, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2545FF774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static HomeID.entityIdentifier(for:)@<X0>(char *a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_2545FEB04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545FEA84();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2545B1088(v6);
    v11 = 1;
  }

  else
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    v12(a3, v10, v7);
    v11 = 0;
  }

  v13 = type metadata accessor for HomeID(0);
  return (*(*(v13 - 8) + 56))(a3, v11, 1, v13);
}

uint64_t sub_2545E3354@<X0>(uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_2545FEB04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545FEA84();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2545B1088(v8);
    v13 = 1;
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    v14(a4, v12, v9);
    v13 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v13, 1, a3);
}

uint64_t HomeID.debugDescription.getter(uint64_t a1)
{
  v1 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v1);

  return 0x3A4449656D6F48;
}

uint64_t sub_2545E356C(uint64_t a1)
{
  v1 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v1);

  return 0x3A4449656D6F48;
}

uint64_t sub_2545E3658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545E36C8(uint64_t a1)
{
  result = sub_2545FEB04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2545E3750()
{
  result = qword_27F606970;
  if (!qword_27F606970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606970);
  }

  return result;
}

unint64_t sub_2545E37A8()
{
  result = qword_27F606978;
  if (!qword_27F606978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606978);
  }

  return result;
}

unint64_t sub_2545E3800()
{
  result = qword_27F606980;
  if (!qword_27F606980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606980);
  }

  return result;
}

uint64_t sub_2545E385C()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606988);
  __swift_project_value_buffer(v0, qword_27F606988);
  return sub_2545FE994();
}

uint64_t static RecommendedMode.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606988);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RecommendedMode.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x73656E656373;
  }

  return 0x726F737365636361;
}

uint64_t sub_2545E39DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73656E656373;
  if (v2 != 1)
  {
    v4 = 0x726F737365636361;
    v3 = 0xEB00000000736569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656E656373;
  if (*a2 != 1)
  {
    v8 = 0x726F737365636361;
    v7 = 0xEB00000000736569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2545FF7B4();
  }

  return v11 & 1;
}

uint64_t sub_2545E3AE0()
{
  sub_2545FF834();
  sub_2545FF1B4();

  return sub_2545FF864();
}

uint64_t sub_2545E3B80(uint64_t a1)
{
  sub_2545FF1B4();
}

uint64_t sub_2545E3C0C(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FF1B4();

  return sub_2545FF864();
}

unint64_t sub_2545E3CA8@<X0>(Swift::String *a1@<X0>, HomeWidgetIntents::RecommendedMode_optional *a2@<X8>)
{
  result = _s17HomeWidgetIntents15RecommendedModeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_2545E3CD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606988);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545E3D80(uint64_t a1)
{
  v2 = sub_2545B241C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2545E3DD0(uint64_t a1)
{
  v2 = sub_2545E4950();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2545E3E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B8, &qword_254601B50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069C0, &qword_254601B58);
    v7 = sub_2545FF6A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2545FE8F4();
    while (1)
    {
      sub_2545E4CD0(v9, v5);
      v11 = *v5;
      result = sub_2545C57BC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_2545FE8A4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        sub_2545FEA14();
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

unint64_t _s17HomeWidgetIntents15RecommendedModeO26caseDisplayRepresentationsSDyAC03AppC00G14RepresentationVGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v0 - 8);
  v44 = &v26 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v26 - v3;
  v43 = sub_2545FEA44();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2545FEB24();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2545FF154();
  MEMORY[0x28223BE20](v7 - 8);
  v35 = sub_2545FEA64();
  v45 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B0, "f,");
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B8, &qword_254601B50);
  v34 = v8;
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v31 = 2 * v9;
  v11 = swift_allocObject();
  v33 = v11;
  *(v11 + 16) = xmmword_254601820;
  v12 = (v11 + v10);
  v29 = *(v8 + 48);
  *v12 = 0;
  sub_2545FF0F4();
  v42 = &unk_254601AF0;
  sub_2545FEB14();
  v41 = *MEMORY[0x277CC9110];
  v13 = *(v4 + 104);
  v28 = v4 + 104;
  v38 = v13;
  v14 = v30;
  v13(v30);
  sub_2545FEA74();
  v27 = *(v45 + 56);
  v45 += 56;
  v15 = v32;
  v16 = v35;
  v27(v32, 1, 1, v35);
  v37 = sub_2545FE884();
  v17 = *(v37 - 8);
  v36 = *(v17 + 56);
  v39 = v17 + 56;
  v36(v44, 1, 1, v37);
  v40 = v12;
  sub_2545FE894();
  v18 = v34;
  v29 = *(v34 + 48);
  v12[v9] = 1;
  sub_2545FF0F4();
  sub_2545FEB14();
  v38(v14, v41, v43);
  sub_2545FEA74();
  v19 = v15;
  v20 = v16;
  v21 = v27;
  v27(v15, 1, 1, v20);
  v22 = v44;
  v36(v44, 1, 1, v37);
  sub_2545FE894();
  v23 = &v40[v31];
  v31 = *(v18 + 48);
  *v23 = 2;
  sub_2545FF0F4();
  sub_2545FEB14();
  v38(v14, v41, v43);
  sub_2545FEA74();
  v21(v19, 1, 1, v35);
  v36(v22, 1, 1, v37);
  sub_2545FE894();
  v24 = sub_2545E3E2C(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v24;
}

unint64_t _s17HomeWidgetIntents15RecommendedModeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2545FF6B4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2545E46D8()
{
  result = qword_281532D78;
  if (!qword_281532D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D78);
  }

  return result;
}

unint64_t sub_2545E4730()
{
  result = qword_281532DB8[0];
  if (!qword_281532DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281532DB8);
  }

  return result;
}

unint64_t sub_2545E4788()
{
  result = qword_281532D90;
  if (!qword_281532D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D90);
  }

  return result;
}

unint64_t sub_2545E47E0()
{
  result = qword_281532D70;
  if (!qword_281532D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D70);
  }

  return result;
}

unint64_t sub_2545E4850()
{
  result = qword_281532DA0;
  if (!qword_281532DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532DA0);
  }

  return result;
}

unint64_t sub_2545E48A4()
{
  result = qword_281532D98;
  if (!qword_281532D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D98);
  }

  return result;
}

unint64_t sub_2545E48F8()
{
  result = qword_281532DB0;
  if (!qword_281532DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532DB0);
  }

  return result;
}

unint64_t sub_2545E4950()
{
  result = qword_281532DA8;
  if (!qword_281532DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532DA8);
  }

  return result;
}

unint64_t sub_2545E49F8()
{
  result = qword_281532D88;
  if (!qword_281532D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D88);
  }

  return result;
}

unint64_t sub_2545E4A50()
{
  result = qword_281532D68;
  if (!qword_281532D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D68);
  }

  return result;
}

unint64_t sub_2545E4AA8()
{
  result = qword_281532D80;
  if (!qword_281532D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D80);
  }

  return result;
}

unint64_t sub_2545E4B00()
{
  result = qword_27F6069A0;
  if (!qword_27F6069A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6069A8, &qword_254601AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6069A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendedMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecommendedMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2545E4CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B8, &qword_254601B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2545E4D54(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(type metadata accessor for ElementID(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = MEMORY[0x277D84F90];
  v10 = *(v7 + 72);
  while (1)
  {
    a1(&v14, v8);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      sub_2545D8570(&v14, v16);
      sub_2545D8570(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2545C4704(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2545C4704((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      sub_2545D8570(&v14, &v9[5 * v12 + 4]);
    }

    else
    {
      sub_2545B612C(&v14, &qword_27F606A20, &qword_254601E08);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

uint64_t TileElementInfo.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TileElementInfo(0) + 20));
  sub_2545FE8E4();
  return v1;
}

uint64_t TileElementInfo.iconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for TileElementInfo(0) + 24));
  sub_2545FE8E4();
  return v1;
}

uint64_t TileElementInfo.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TileElementInfo(0) + 28));
  sub_2545FE8E4();
  return v1;
}

uint64_t sub_2545E501C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A18, &qword_254601DB8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v31 - v4;
  v33 = sub_2545FEFB4();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2545FEFC4();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TileElementInfo(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2545F3D54(v15, v16, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_2545FEDC4();
  v18 = &v14[v12[7]];
  *v18 = v17;
  v18[1] = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545FEDE4();
  sub_2545FEF94();
  (*(v8 + 8))(v10, v32);
  v20 = sub_2545FEFA4();
  v22 = v21;
  (*(v5 + 8))(v7, v33);
  v23 = &v14[v12[8]];
  *v23 = v20;
  v23[1] = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_2545FEDD4();
  v25 = &v14[v12[9]];
  *v25 = v24;
  v25[1] = v26;
  sub_2545D850C(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
  v27 = sub_2545FEE24();
  v28 = v34;
  v29 = swift_dynamicCast();
  LOBYTE(v20) = v29;
  (*(*(v27 - 8) + 56))(v28, v29 ^ 1u, 1, v27);
  sub_2545B612C(v28, &qword_27F606A18, &qword_254601DB8);
  v14[v12[10]] = v20;
  sub_2545EBC1C(v14, v35, type metadata accessor for TileElementInfo);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2545E53BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v91 = a2;
  v92 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v75 - v6;
  v7 = sub_2545FEE64();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2545FEEA4();
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2545FEDA4();
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2545FEE44();
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2545FEE84();
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2545FEE24();
  v79 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2545FEE04();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ElementID(0);
  v26 = a1;
  v27 = *(a1 + *(result + 20));
  if (v27 <= 3)
  {
    if (*(a1 + *(result + 20)) <= 1u)
    {
      if (*(a1 + *(result + 20)))
      {
        v52 = sub_2545FED34();
        if (*(v52 + 16))
        {
          v53 = sub_2545C563C(v26);
          if (v54)
          {
            v55 = v79;
            (*(v79 + 16))(v20, *(v52 + 56) + *(v79 + 72) * v53, v18);

            v56 = v92;
            *(v92 + 24) = v18;
            v56[4] = sub_2545EBD04(&qword_27F606A50, MEMORY[0x277D15D80], MEMORY[0x277D15D78]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
            return (*(v55 + 32))(boxed_opaque_existential_1, v20, v18);
          }
        }
      }

      else
      {
        v28 = sub_2545FED44();
        if (*(v28 + 16))
        {
          v29 = sub_2545C563C(v26);
          if (v30)
          {
            (*(v22 + 16))(v24, *(v28 + 56) + *(v22 + 72) * v29, v21);

            v31 = v92;
            *(v92 + 24) = v21;
            v31[4] = sub_2545EBD04(&qword_27F606A58, MEMORY[0x277D15D48], MEMORY[0x277D15D38]);
            v32 = __swift_allocate_boxed_opaque_existential_1(v31);
            return (*(v22 + 32))(v32, v24, v21);
          }
        }
      }

      goto LABEL_29;
    }

    if (v27 == 2)
    {
      v43 = sub_2545FED64();
      if (*(v43 + 16))
      {
        v44 = sub_2545C563C(v26);
        if (v45)
        {
          v46 = v80;
          (*(v80 + 16))(v17, *(v43 + 56) + *(v80 + 72) * v44, v15);

          v47 = v92;
          *(v92 + 24) = v15;
          v47[4] = sub_2545EBD04(&qword_27F606A48, MEMORY[0x277D16448], MEMORY[0x277D16440]);
          v48 = __swift_allocate_boxed_opaque_existential_1(v47);
          return (*(v46 + 32))(v48, v17, v15);
        }
      }

      goto LABEL_29;
    }

    v61 = sub_2545FED54();
    if (*(v61 + 16))
    {
      v62 = sub_2545C563C(v26);
      if (v63)
      {
        v36 = v81;
        v38 = v82;
        v37 = v78;
        (*(v81 + 16))(v78, *(v61 + 56) + *(v81 + 72) * v62, v82);

        v39 = v92;
        *(v92 + 24) = v38;
        v40 = &unk_27F606A40;
        v41 = MEMORY[0x277D16060];
        v42 = MEMORY[0x277D16058];
        goto LABEL_28;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if (*(a1 + *(result + 20)) <= 5u)
  {
    if (v27 == 4)
    {
      v33 = sub_2545FED14();
      if (!*(v33 + 16))
      {
        goto LABEL_29;
      }

      v34 = sub_2545C563C(v26);
      if ((v35 & 1) == 0)
      {
        goto LABEL_29;
      }

      v37 = v83;
      v36 = v84;
      v38 = v85;
      (*(v84 + 16))(v83, *(v33 + 56) + *(v84 + 72) * v34, v85);

      v39 = v92;
      *(v92 + 24) = v38;
      v40 = &unk_27F606A38;
      v41 = MEMORY[0x277D15AC0];
      v42 = MEMORY[0x277D15AB8];
    }

    else
    {
      v58 = sub_2545FED74();
      if (!*(v58 + 16))
      {
        goto LABEL_29;
      }

      v59 = sub_2545C563C(v26);
      if ((v60 & 1) == 0)
      {
        goto LABEL_29;
      }

      v37 = v86;
      v36 = v87;
      v38 = v88;
      (*(v87 + 16))(v86, *(v58 + 56) + *(v87 + 72) * v59, v88);

      v39 = v92;
      *(v92 + 24) = v38;
      v40 = &unk_27F606A30;
      v41 = MEMORY[0x277D164A0];
      v42 = MEMORY[0x277D16498];
    }

LABEL_28:
    v39[4] = sub_2545EBD04(v40, v41, v42);
    v64 = __swift_allocate_boxed_opaque_existential_1(v39);
    return (*(v36 + 32))(v64, v37, v38);
  }

  if (v27 == 6)
  {
    v49 = v90;
    sub_2545B60C4(v89, v90, &qword_27F606758, &unk_254601DD0);
    v50 = sub_2545FEED4();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) != 1)
    {
      v66 = sub_2545FEEB4();
      (*(v51 + 8))(v49, v50);
      if (sub_2545B1170() == 0xDEFFDEED00000000)
      {
        v67 = sub_2545B118C();
        if (!*(v66 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v67 = 0;
        if (!*(v66 + 16))
        {
          goto LABEL_29;
        }
      }

      v68 = sub_2545C56D4(v67);
      if (v69)
      {
        v71 = v75;
        v70 = v76;
        v72 = v77;
        (*(v76 + 16))(v75, *(v66 + 56) + *(v76 + 72) * v68, v77);

        v73 = v92;
        *(v92 + 24) = v72;
        v73[4] = sub_2545EBD04(&qword_27F606A28, MEMORY[0x277D16410], MEMORY[0x277D16400]);
        v74 = __swift_allocate_boxed_opaque_existential_1(v73);
        return (*(v70 + 32))(v74, v71, v72);
      }

      goto LABEL_29;
    }

    result = sub_2545B612C(v49, &qword_27F606758, &unk_254601DD0);
  }

LABEL_30:
  v65 = v92;
  *(v92 + 32) = 0;
  *v65 = 0u;
  v65[1] = 0u;
  return result;
}

uint64_t sub_2545E5DC0()
{
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    type metadata accessor for IntentsService();
    v0[6] = swift_initStaticObject();
    sub_2545FF354();
    v0[7] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545E6080;
  }

  else
  {
    v0[2] = sub_2545FEBD4();
    sub_2545FECE4();
    v0[3] = sub_2545FECD4();
    sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545E5F04;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545E5F04()
{
  sub_2545FEA14();
  *(v0 + 32) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545E5F74, 0, 0);
}

uint64_t sub_2545E5F74()
{
  sub_2545FF354();
  *(v0 + 40) = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E6008, v2, v1);
}

uint64_t sub_2545E6008()
{
  v1 = sub_2545FEA14();
  v2 = MEMORY[0x259C11A70](v1);
  sub_2545FEA14();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2545E6080()
{
  sub_2545FEA14();
  v1 = sub_2545B027C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2545E60E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E6190, 0, 0);
}

uint64_t sub_2545E6190()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    sub_2545FECC4();
    if (sub_2545FECA4() != 7)
    {
      *(v0 + 48) = sub_2545FEBD4();
      sub_2545FECE4();
      *(v0 + 56) = sub_2545FECD4();
      sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
      v9 = sub_2545FF334();
      v11 = v10;
      v5 = sub_2545E6378;
      v6 = v9;
      v7 = v11;

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    v5 = sub_2545FACE8(0);
    if (v5 >> 62)
    {
      v12 = v5;
      v13 = sub_2545FF674();
      v5 = v12;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C124A0](0);
        goto LABEL_11;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v5 + 32);
LABEL_11:
        v1 = v8;

        goto LABEL_2;
      }

      __break(1u);
      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    v1 = 0;
  }

LABEL_2:
  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_2545E6378()
{
  sub_2545FEA14();
  *(v0 + 64) = sub_2545FEBC4();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2545E641C;

  return sub_2545DD5C0(0);
}

uint64_t sub_2545E641C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_2545E67B8;
  }

  else
  {
    sub_2545FEA14();
    v4 = sub_2545E6538;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545E6538()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v3 = sub_2545FEB64();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    (*(v4 + 56))(v2, 0, 1, v3);
  }

  else
  {

    v3 = sub_2545FEB64();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  v5 = *(v0 + 32);
  sub_2545B60C4(*(v0 + 40), v5, &qword_27F606868, &qword_254600F40);
  sub_2545FEB64();
  v6 = *(v3 - 8);
  v7 = (*(v6 + 48))(v5, 1, v3);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  if (v7 == 1)
  {
    sub_2545B612C(*(v0 + 40), &qword_27F606868, &qword_254600F40);
    sub_2545B612C(v8, &qword_27F606868, &qword_254600F40);
    v10 = 0;
  }

  else
  {
    v10 = sub_2545FEB44();
    sub_2545B612C(v9, &qword_27F606868, &qword_254600F40);
    (*(v6 + 8))(v8, v3);
  }

  v11 = *(v0 + 16);

  v12 = *(v0 + 8);

  return v12(v10);
}

uint64_t sub_2545E67B8()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545E6830(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2545FEB04();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v2[8] = swift_task_alloc();
  type metadata accessor for HomeID(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E698C, 0, 0);
}

uint64_t sub_2545E698C()
{
  v0[10] = sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v0[21] = sub_2545FF354();
    v0[22] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545E7104;
  }

  else
  {
    v0[11] = sub_2545FEBD4();
    v0[12] = sub_2545FECE4();
    v0[13] = sub_2545FECD4();
    v0[14] = sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545E6AC8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545E6AC8()
{
  sub_2545FEA14();
  *(v0 + 120) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545E6B3C, 0, 0);
}

uint64_t sub_2545E6B3C()
{
  v1 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  *(v0 + 128) = sub_2545FECD4();
  v3 = sub_2545FF334();
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;

  return MEMORY[0x2822009F8](sub_2545E6BFC, v3, v2);
}

uint64_t sub_2545E6BFC()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[9], v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v2, v5, v6, v7, v8, v1);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_2545E6D54;
  v10 = v0[8];
  v11 = v0[2];
  v12 = MEMORY[0x277D159D8];
  v13 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v11, v10, v12, v13);
}

uint64_t sub_2545E6D54()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2545E6FEC;
  }

  else
  {
    v5 = sub_2545E6E90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545E6E90()
{
  v1 = *(v0 + 72);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545EBD4C(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545E6F20, 0, 0);
}

uint64_t sub_2545E6F20()
{
  v1 = sub_2545FED84();
  (*(*(v1 - 8) + 56))(*(v0 + 16), 0, 1, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545E6FEC()
{
  v1 = *(v0 + 72);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545EBD4C(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545E707C, 0, 0);
}

uint64_t sub_2545E707C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545E7104()
{
  sub_2545FEA14();
  *(v0 + 184) = sub_2545FEC94();

  return MEMORY[0x2822009F8](sub_2545E7178, 0, 0);
}

uint64_t sub_2545E7178()
{
  v1 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  *(v0 + 192) = sub_2545FF344();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E7238, v3, v2);
}

uint64_t sub_2545E7238()
{
  v1 = *(v0 + 184);
  sub_2545FEA14();
  *(v0 + 200) = sub_2545FEC24();

  return MEMORY[0x2822009F8](sub_2545E72AC, 0, 0);
}

uint64_t sub_2545E72AC()
{
  v1 = v0[6];
  if (*(v0[25] + 16))
  {
    v2 = sub_2545C563C(v0[6]);
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    if (v6)
    {
      v7 = v2;
      v8 = v0[2];
      v9 = *(v0[25] + 56);
      v10 = sub_2545FED84();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, v9 + *(v11 + 72) * v7, v10);
      (*(v4 + 8))(v3, v5);

      v12 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = v0[4];
    v14 = v0[5];

    (*(v14 + 8))(v1, v13);
  }

  v10 = sub_2545FED84();
  v11 = *(v10 - 8);
  v12 = 1;
LABEL_7:
  (*(v11 + 56))(v0[2], v12, 1, v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2545E74C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2545FEB04();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E7594, 0, 0);
}

uint64_t sub_2545E7594()
{
  v0[8] = sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v0[15] = sub_2545FF354();
    v0[16] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545E7B88;
  }

  else
  {
    v0[9] = sub_2545FEBD4();
    sub_2545FECE4();
    v0[10] = sub_2545FECD4();
    sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545E76C8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545E76C8()
{
  sub_2545FEA14();
  *(v0 + 88) = sub_2545FEBC4();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_2545E776C;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545E776C(uint64_t a1)
{
  *(*v1 + 104) = a1;

  sub_2545FEA14();
  sub_2545FEF44();
  sub_2545EBD04(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E78E0, v3, v2);
}

uint64_t sub_2545E78E0()
{
  *(v0 + 112) = sub_2545FEF34();
  sub_2545FEA14();

  return MEMORY[0x2822009F8](sub_2545E7954, 0, 0);
}

uint64_t sub_2545E7954()
{
  v1 = *(v0 + 112);
  v2 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  v3 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v4 = sub_2545C563C(*(v0 + 56));
    v5 = *(v0 + 56);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 16);
      v11 = *(*(v0 + 112) + 56);
      v12 = sub_2545FEED4();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v10, v11 + *(v13 + 72) * v9, v12);
      (*(v7 + 8))(v5, v6);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);

    (*(v16 + 8))(v3, v15);
  }

  v12 = sub_2545FEED4();
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 16), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2545E7B88()
{
  sub_2545FEA14();
  *(v0 + 136) = sub_2545FEC94();

  return MEMORY[0x2822009F8](sub_2545E7BFC, 0, 0);
}

uint64_t sub_2545E7BFC()
{
  v1 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  *(v0 + 144) = sub_2545FF344();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E7CBC, v3, v2);
}

uint64_t sub_2545E7CBC()
{
  v1 = *(v0 + 136);
  sub_2545FEA14();
  *(v0 + 152) = sub_2545FEC34();

  return MEMORY[0x2822009F8](sub_2545E7D30, 0, 0);
}

uint64_t sub_2545E7D30()
{
  v1 = v0[6];
  if (*(v0[19] + 16))
  {
    v2 = sub_2545C563C(v0[6]);
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    if (v6)
    {
      v7 = v2;
      v8 = v0[2];
      v9 = *(v0[19] + 56);
      v10 = sub_2545FEED4();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, v9 + *(v11 + 72) * v7, v10);
      (*(v4 + 8))(v3, v5);

      v12 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = v0[4];
    v14 = v0[5];

    (*(v14 + 8))(v1, v13);
  }

  v10 = sub_2545FEED4();
  v11 = *(v10 - 8);
  v12 = 1;
LABEL_7:
  (*(v11 + 56))(v0[2], v12, 1, v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2545E7F48()
{
  v1 = *v0;
  sub_2545FF834();
  MEMORY[0x259C12730](v1);
  return sub_2545FF864();
}

uint64_t sub_2545E7FBC(uint64_t a1)
{
  v2 = *v1;
  sub_2545FF834();
  MEMORY[0x259C12730](v2);
  return sub_2545FF864();
}

uint64_t sub_2545E8000()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x626D79536E6F6369;
  v4 = 0x656D614E6D6F6F72;
  if (v1 != 3)
  {
    v4 = 0x656E6563537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2545E809C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2545EBA68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2545E80D0(uint64_t a1)
{
  v2 = sub_2545E9A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545E810C(uint64_t a1)
{
  v2 = sub_2545E9A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TileElementInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069C8, &qword_254601B60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E9A94();
  sub_2545FF884();
  v8[15] = 0;
  type metadata accessor for ElementID(0);
  sub_2545EBD04(&qword_27F6069D8, type metadata accessor for ElementID, &protocol conformance descriptor for ElementID);
  sub_2545FF774();
  if (!v1)
  {
    type metadata accessor for TileElementInfo(0);
    v8[14] = 1;
    sub_2545FF754();
    v8[13] = 2;
    sub_2545FF754();
    v8[12] = 3;
    sub_2545FF744();
    v8[11] = 4;
    sub_2545FF764();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TileElementInfo.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254601E28[*(v1 + *(v2 + 20))]);
  v3 = type metadata accessor for TileElementInfo(0);
  sub_2545FF1B4();
  sub_2545FF1B4();
  if (*(v1 + *(v3 + 28) + 8))
  {
    sub_2545FF854();
    sub_2545FF1B4();
  }

  else
  {
    sub_2545FF854();
  }

  return sub_2545FF854();
}

uint64_t TileElementInfo.hashValue.getter()
{
  sub_2545FF834();
  TileElementInfo.hash(into:)(v1);
  return sub_2545FF864();
}

uint64_t TileElementInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for ElementID(0);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069E0, &qword_254601B68);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TileElementInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E9A94();
  v31 = v7;
  sub_2545FF874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v28;
  v12 = v10;
  v36 = 0;
  sub_2545EBD04(&qword_27F6069E8, type metadata accessor for ElementID, &protocol conformance descriptor for ElementID);
  v14 = v29;
  v13 = v30;
  sub_2545FF714();
  sub_2545EBC1C(v14, v12, type metadata accessor for ElementID);
  v35 = 1;
  v15 = sub_2545FF6F4();
  v16 = (v12 + v8[5]);
  *v16 = v15;
  v16[1] = v17;
  v34 = 2;
  v18 = sub_2545FF6F4();
  v19 = (v12 + v8[6]);
  *v19 = v18;
  v19[1] = v20;
  v33 = 3;
  v21 = sub_2545FF6E4();
  v22 = (v12 + v8[7]);
  *v22 = v21;
  v22[1] = v23;
  v32 = 4;
  v24 = sub_2545FF704();
  (*(v11 + 8))(v31, v13);
  *(v12 + v8[8]) = v24 & 1;
  sub_2545E9AE8(v12, v27, type metadata accessor for TileElementInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2545EBD4C(v12, type metadata accessor for TileElementInfo);
}

uint64_t sub_2545E89B8()
{
  sub_2545FF834();
  TileElementInfo.hash(into:)(v1);
  return sub_2545FF864();
}

uint64_t sub_2545E89FC(uint64_t a1)
{
  sub_2545FF834();
  TileElementInfo.hash(into:)(v2);
  return sub_2545FF864();
}

uint64_t sub_2545E8A6C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = type metadata accessor for ElementID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v22 - v9;
  v24 = v2;
  v10 = *v2;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v26 = v4;
  v11 = qword_254601E28[*(a2 + *(v4 + 20))];
  MEMORY[0x259C12730](v11);
  v12 = sub_2545FF864();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    do
    {
      sub_2545E9AE8(*(v10 + 48) + v16 * v14, v8, type metadata accessor for ElementID);
      if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
      {
        v17 = v8[*(v26 + 20)];
        sub_2545EBD4C(v8, type metadata accessor for ElementID);
        if (qword_254601E28[v17] == v11)
        {
          sub_2545EBD4C(a2, type metadata accessor for ElementID);
          sub_2545E9AE8(*(v10 + 48) + v16 * v14, v25, type metadata accessor for ElementID);
          return 0;
        }
      }

      else
      {
        sub_2545EBD4C(v8, type metadata accessor for ElementID);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v23;
  sub_2545E9AE8(a2, v23, type metadata accessor for ElementID);
  v27 = *v19;
  sub_2545E90EC(v21, v14, isUniquelyReferenced_nonNull_native);
  *v19 = v27;
  sub_2545EBC1C(a2, v25, type metadata accessor for ElementID);
  return 1;
}

uint64_t sub_2545E8D78(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ElementID(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A60, &unk_254601E10);
  result = sub_2545FF564();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_2545EBC1C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for ElementID);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2545FF0C4();
      MEMORY[0x259C12730](qword_254601E28[v5[*(v34 + 20)]]);
      result = sub_2545FF864();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2545EBC1C(v5, *(v8 + 48) + v16 * v21, type metadata accessor for ElementID);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  result = sub_2545FEA14();
  *v2 = v8;
  return result;
}

uint64_t sub_2545E90EC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ElementID(0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_2545E8D78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2545E93C8();
      goto LABEL_15;
    }

    sub_2545E95E0(v10 + 1);
  }

  v12 = *v3;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v13 = qword_254601E28[*(a1 + *(v7 + 20))];
  MEMORY[0x259C12730](v13);
  v14 = sub_2545FF864();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v26 + 72);
    do
    {
      sub_2545E9AE8(*(v12 + 48) + v17 * a2, v9, type metadata accessor for ElementID);
      if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
      {
        v18 = v9[*(v7 + 20)];
        sub_2545EBD4C(v9, type metadata accessor for ElementID);
        if (qword_254601E28[v18] == v13)
        {
          sub_2545FF7C4();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_2545EBD4C(v9, type metadata accessor for ElementID);
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2545EBC1C(a1, *(v19 + 48) + *(v26 + 72) * a2, type metadata accessor for ElementID);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_2545E93C8()
{
  v1 = v0;
  v2 = type metadata accessor for ElementID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A60, &unk_254601E10);
  v6 = *v0;
  v7 = sub_2545FF554();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_2545E9AE8(*(v6 + 48) + v21, v5, type metadata accessor for ElementID);
        result = sub_2545EBC1C(v5, *(v8 + 48) + v21, type metadata accessor for ElementID);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        result = sub_2545FEA14();
        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_2545FEA14();
LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2545E95E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ElementID(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A60, &unk_254601E10);
  result = sub_2545FF564();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_2545E9AE8(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for ElementID);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2545FF0C4();
      MEMORY[0x259C12730](qword_254601E28[v5[*(v33 + 20)]]);
      result = sub_2545FF864();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2545EBC1C(v5, *(v8 + 48) + v16 * v21, type metadata accessor for ElementID);
      ++*(v8 + 16);
      v6 = v31;
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
        result = sub_2545FEA14();
        v2 = v30;
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
    result = sub_2545FEA14();
LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = type metadata accessor for ElementID(0);
  if (qword_254601E28[*(a1 + *(v4 + 20))] != qword_254601E28[*(a2 + *(v4 + 20))])
  {
    goto LABEL_22;
  }

  v5 = type metadata accessor for TileElementInfo(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_2545FF7B4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = v5[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_2545FF7B4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20)
    {
      v21 = *v17 == *v19 && v18 == v20;
      if (v21 || (sub_2545FF7B4() & 1) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  if (v20)
  {
    goto LABEL_22;
  }

LABEL_20:
  v22 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  return v22 & 1;
}

uint64_t type metadata accessor for TileElementInfo(uint64_t a1)
{
  result = qword_281532D58;
  if (!qword_281532D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2545E9A94()
{
  result = qword_27F6069D0;
  if (!qword_27F6069D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6069D0);
  }

  return result;
}

uint64_t sub_2545E9AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2545E9C08(uint64_t a1)
{
  type metadata accessor for ElementID(319);
  if (v1 <= 0x3F)
  {
    sub_2545E9CA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2545E9CA4()
{
  if (!qword_27F6069F8)
  {
    v0 = sub_2545FF4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F6069F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TileElementInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TileElementInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2545E9E48()
{
  result = qword_27F606A00;
  if (!qword_27F606A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A00);
  }

  return result;
}

unint64_t sub_2545E9EA0()
{
  result = qword_27F606A08;
  if (!qword_27F606A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A08);
  }

  return result;
}

unint64_t sub_2545E9EF8()
{
  result = qword_27F606A10;
  if (!qword_27F606A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A10);
  }

  return result;
}

uint64_t sub_2545E9F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElementID(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(v14 + 80);
  v32 = *(v14 + 72);
  v29 = (v18 + 32) & ~v18;
  v19 = a1 + v29;
  v20 = MEMORY[0x277D84F90];
  v30 = v7;
  v31 = a2;
  do
  {
    sub_2545E9AE8(v19, v16, type metadata accessor for ElementID);
    sub_2545E9AE8(v16, v10, type metadata accessor for ElementID);
    v22 = sub_2545E8A6C(v13, v10);
    sub_2545EBD4C(v13, type metadata accessor for ElementID);
    if (v22)
    {
      sub_2545EBC1C(v16, v7, type metadata accessor for ElementID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2545DBDE4(0, *(v20 + 16) + 1, 1);
        v20 = v33;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2545DBDE4((v24 > 1), v25 + 1, 1);
        v20 = v33;
      }

      *(v20 + 16) = v25 + 1;
      v21 = v32;
      v26 = v20 + v29 + v25 * v32;
      v7 = v30;
      sub_2545EBC1C(v30, v26, type metadata accessor for ElementID);
    }

    else
    {
      sub_2545EBD4C(v16, type metadata accessor for ElementID);
      v21 = v32;
    }

    v19 += v21;
    --v17;
  }

  while (v17);
  return v20;
}

uint64_t sub_2545EA1F8(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A18, &qword_254601DB8);
  v2[19] = swift_task_alloc();
  v3 = sub_2545FEFB4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = sub_2545FEFC4();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for TileElementInfo(0);
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0);
  v2[30] = swift_task_alloc();
  v6 = sub_2545FED84();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545EA48C, 0, 0);
}

uint64_t sub_2545EA48C()
{
  v11 = v0;
  if (*(v0[17] + 16))
  {
    v1 = swift_task_alloc();
    v0[36] = v1;
    *v1 = v0;
    v1[1] = sub_2545EA6FC;

    return sub_2545E5DA4();
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v3 = sub_2545FF0A4();
    __swift_project_value_buffer(v3, qword_27F60ADD8);
    v4 = sub_2545FF084();
    v5 = sub_2545FF454();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2545F0FB4(0xD000000000000012, 0x8000000254603C70, &v10);
      _os_log_impl(&dword_2545AB000, v4, v5, "%s no elements to build", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x259C12CB0](v7, -1, -1);
      MEMORY[0x259C12CB0](v6, -1, -1);
    }

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_2545EA6FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2545EA8C0, 0, 0);
  }
}

uint64_t sub_2545EA8C0()
{
  v1 = v0[37];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[38] = v3;
    *v3 = v0;
    v3[1] = sub_2545EAA2C;
    v4 = v0[18];

    return sub_2545E60E8(v4, v2);
  }

  else
  {

    v6 = v0[1];
    v7 = MEMORY[0x277D84F90];

    return v6(v7);
  }
}

uint64_t sub_2545EAA2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_2545EB894;
  }

  else
  {

    v4 = sub_2545EAB48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545EAB48()
{
  v14 = v0;
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 328) = v2;
    *v2 = v0;
    v2[1] = sub_2545EAE10;
    v3 = *(v0 + 280);

    return sub_2545E6830(v3, v1);
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v5 = sub_2545FF0A4();
    __swift_project_value_buffer(v5, qword_27F60ADD8);
    v6 = sub_2545FF084();
    v7 = sub_2545FF454();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_2545F0FB4(0xD000000000000012, 0x8000000254603C70, &v13);
      *(v8 + 12) = 2112;
      *(v8 + 14) = 0;
      *v9 = 0;
      _os_log_impl(&dword_2545AB000, v6, v7, "%s home=%@ not found, returning 0 elements", v8, 0x16u);
      sub_2545B612C(v9, &qword_27F606658, &qword_254600D70);
      MEMORY[0x259C12CB0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x259C12CB0](v10, -1, -1);
      MEMORY[0x259C12CB0](v8, -1, -1);
    }

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_2545EAE10()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2545EB97C;
  }

  else
  {
    v2 = sub_2545EAF24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2545EAF24()
{
  v23 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_2545B60C4(*(v0 + 280), v1, &qword_27F606760, &qword_254600C40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2545B612C(*(v0 + 272), &qword_27F606760, &qword_254600C40);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = sub_2545FF0A4();
    __swift_project_value_buffer(v5, qword_27F60ADD8);
    v6 = v4;
    v7 = sub_2545FF084();
    v8 = sub_2545FF454();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 144);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_2545F0FB4(0xD000000000000012, 0x8000000254603C70, &v22);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v6;
      *v11 = v9;
      v13 = v6;
      _os_log_impl(&dword_2545AB000, v7, v8, "%s home=%@ not found in DataModel StateSnapshot", v10, 0x16u);
      sub_2545B612C(v11, &qword_27F606658, &qword_254600D70);
      MEMORY[0x259C12CB0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C12CB0](v12, -1, -1);
      MEMORY[0x259C12CB0](v10, -1, -1);
    }

    v14 = *(v0 + 296);
    v15 = *(v0 + 280);

    sub_2545B612C(v15, &qword_27F606760, &qword_254600C40);

    v16 = *(v0 + 8);
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }

  else
  {
    v19 = *(v0 + 312);
    (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 272), *(v0 + 248));
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_2545EB298;
    v21 = *(v0 + 240);

    return sub_2545E74C8(v21, v19);
  }
}

uint64_t sub_2545EB298()
{

  return MEMORY[0x2822009F8](sub_2545EB394, 0, 0);
}

uint64_t sub_2545EB394()
{
  v55 = v0;
  v1 = v0[33];
  v2 = v0[30];
  v53 = MEMORY[0x277D84FA0];
  v3 = sub_2545FE8E4();
  v4 = sub_2545E9F4C(v3, &v53);

  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = sub_2545E4D54(sub_2545EBC84, v5, v4);

  v7 = v6[2];
  if (v7)
  {
    v46 = v0[26];
    v47 = v0[27];
    v8 = v0[24];
    v9 = v0[21];
    v54 = MEMORY[0x277D84F90];
    sub_2545DBDC4(0, v7, 0);
    v10 = (v6 + 4);
    v45 = (v8 + 8);
    v11 = v54;
    v44 = (v9 + 8);
    do
    {
      v51 = v0[29];
      v52 = v7;
      v12 = v0[28];
      v13 = v0[25];
      v14 = v0[22];
      v48 = v0[23];
      v49 = v0[20];
      v50 = v0[19];
      sub_2545D850C(v10, (v0 + 2));
      sub_2545D850C((v0 + 2), (v0 + 7));
      v15 = v11;
      v16 = v0[10];
      v17 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v16);
      sub_2545F3D54(v16, v17, v12);
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v18 = sub_2545FEDC4();
      v19 = (v12 + v46[5]);
      *v19 = v18;
      v19[1] = v20;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v11 = v15;
      sub_2545FEDE4();
      sub_2545FEF94();
      (*v45)(v13, v48);
      v21 = sub_2545FEFA4();
      v23 = v22;
      (*v44)(v14, v49);
      v24 = (v12 + v46[6]);
      *v24 = v21;
      v24[1] = v23;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v25 = sub_2545FEDD4();
      v26 = (v12 + v46[7]);
      *v26 = v25;
      v26[1] = v27;
      sub_2545D850C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
      v28 = sub_2545FEE24();
      v29 = swift_dynamicCast();
      LOBYTE(v21) = v29;
      (*(*(v28 - 8) + 56))(v50, v29 ^ 1u, 1, v28);
      sub_2545B612C(v50, &qword_27F606A18, &qword_254601DB8);
      *(v12 + v46[8]) = v21;
      sub_2545EBC1C(v12, v51, type metadata accessor for TileElementInfo);
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v54 = v11;
      v31 = *(v11 + 16);
      v30 = *(v11 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2545DBDC4((v30 > 1), v31 + 1, 1);
        v11 = v54;
      }

      v32 = v0[29];
      *(v11 + 16) = v31 + 1;
      sub_2545EBC1C(v32, v11 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, type metadata accessor for TileElementInfo);
      v10 += 40;
      v7 = v52 - 1;
    }

    while (v52 != 1);
    v33 = v0[39];
    v34 = v0[37];
    sub_2545B612C(v0[35], &qword_27F606760, &qword_254600C40);
  }

  else
  {
    v35 = v0[39];
    v36 = v0[37];
    v37 = v0[35];

    sub_2545B612C(v37, &qword_27F606760, &qword_254600C40);
    v11 = MEMORY[0x277D84F90];
  }

  v39 = v0[32];
  v38 = v0[33];
  v41 = v0[30];
  v40 = v0[31];

  sub_2545B612C(v41, &qword_27F606758, &unk_254601DD0);
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];

  return v42(v11);
}

uint64_t sub_2545EB894()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545EB97C()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545EBA68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2545FF7B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_2545FF7B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_2545FF7B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_2545FF7B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6563537369 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2545FF7B4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2545EBC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_2545EBD04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545EBD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ToggleControlEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064C0, &qword_254601E70);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545EBE1C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2545B3CAC(a1, &v10 - v7);
  sub_2545B3CAC(v8, v6);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v8, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t sub_2545EBF64()
{
  v1 = *(v0 + 16);
  v2 = sub_2545FEF74();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2545EC020;

  return sub_2545CE4F0(1, v1, v2);
}

uint64_t sub_2545EC020(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_2545EC450;
  }

  else
  {
    v4 = sub_2545EC134;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545EC134()
{
  v29 = v0;
  if (*(v0[4] + 16))
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v1 = sub_2545FF0A4();
    __swift_project_value_buffer(v1, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545FE8E4();
    v2 = sub_2545FF084();
    v3 = sub_2545FF474();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[4];
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136315394;
      v8 = type metadata accessor for ElementID(0);
      v9 = MEMORY[0x259C121B0](v5, v8);
      v11 = sub_2545F0FB4(v9, v10, &v28);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = type metadata accessor for ToggleControlEntity(0);
      v13 = MEMORY[0x259C121B0](v4, v12);
      v15 = sub_2545F0FB4(v13, v14, &v28);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_2545AB000, v2, v3, "ToggleControlEntityQuery.entities(for: %s) returned %s", v6, 0x16u);
      swift_arrayDestroy();
      v16 = v7;
LABEL_10:
      MEMORY[0x259C12CB0](v16, -1, -1);
      MEMORY[0x259C12CB0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v17 = sub_2545FF0A4();
    __swift_project_value_buffer(v17, qword_27F60ADD8);
    sub_2545FE8E4();
    v2 = sub_2545FF084();
    v18 = sub_2545FF454();

    if (os_log_type_enabled(v2, v18))
    {
      v19 = v0[2];
      v6 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v6 = 136315138;
      v21 = type metadata accessor for ElementID(0);
      v22 = MEMORY[0x259C121B0](v19, v21);
      v24 = sub_2545F0FB4(v22, v23, &v28);

      *(v6 + 4) = v24;
      _os_log_impl(&dword_2545AB000, v2, v18, "ToggleControlEntityQuery.entities(for: %s) returned empty", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v16 = v20;
      goto LABEL_10;
    }
  }

  v25 = v0[4];
  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_2545EC450()
{
  v21 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = type metadata accessor for ElementID(0);
    v12 = MEMORY[0x259C121B0](v7, v11);
    v14 = sub_2545F0FB4(v12, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_2545AB000, v4, v5, "ToggleControlEntityQuery.entities(for: %s) threw error %@", v8, 0x16u);
    sub_2545B612C(v9, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C12CB0](v10, -1, -1);
    MEMORY[0x259C12CB0](v8, -1, -1);
  }

  v17 = *(v0 + 8);
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

uint64_t ToggleControlEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for SelectedHomeEntity(0);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A68, &qword_254601EC0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[10] = v6;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2545EC7C0, 0, 0);
}

uint64_t sub_2545EC7C0()
{
  if (sub_2545FE964())
  {
    v2 = v0[5];
    v1 = v0[6];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v2, v1);
    sub_2545EDCCC(v2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for HomeID(0);
  (*(*(v6 - 8) + 56))(v4, v3, 1, v6);
  v7 = sub_2545FEF74();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_2545EC93C;
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[3];

  return sub_2545BCAA8(v9, v11, v5, v10, v7);
}

uint64_t sub_2545EC93C()
{
  v2 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  sub_2545B612C(v2, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v3 = sub_2545ECE40;
  }

  else
  {
    v3 = sub_2545ECA7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545ECA7C()
{
  v33 = v0;
  v1 = *(sub_2545FE864() + 16);

  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = sub_2545FF0A4();
    __swift_project_value_buffer(v6, qword_27F60ADD8);
    (*(v5 + 16))(v2, v3, v4);
    sub_2545FE8E4();
    v7 = sub_2545FF084();
    v8 = sub_2545FF474();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    if (v9)
    {
      v14 = v0[3];
      v13 = v0[4];
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315394;
      *(v15 + 4) = sub_2545F0FB4(v14, v13, &v32);
      *(v15 + 12) = 2080;
      v16 = sub_2545FE864();
      v17 = type metadata accessor for ToggleControlEntity(0);
      v18 = MEMORY[0x259C121B0](v16, v17);
      v20 = v19;

      (*(v11 + 8))(v10, v12);
      v21 = sub_2545F0FB4(v18, v20, &v32);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2545AB000, v7, v8, "ToggleControlEntityQuery.entities(matching: %s) returned %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v31, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v22 = sub_2545FF0A4();
    __swift_project_value_buffer(v22, qword_27F60ADD8);
    sub_2545FE8E4();
    v23 = sub_2545FF084();
    v24 = sub_2545FF454();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[3];
      v25 = v0[4];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2545F0FB4(v26, v25, &v32);
      _os_log_impl(&dword_2545AB000, v23, v24, "ToggleControlEntityQuery.entities(matching: %s) returned empty", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259C12CB0](v28, -1, -1);
      MEMORY[0x259C12CB0](v27, -1, -1);
    }
  }

  (*(v0[8] + 32))(v0[2], v0[10], v0[7]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_2545ECE40()
{
  v18 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2545F0FB4(v8, v7, &v17);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2545AB000, v4, v5, "ToggleControlEntityQuery.entities(matching: %s) threw error %@", v9, 0x16u);
    sub_2545B612C(v10, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C12CB0](v11, -1, -1);
    MEMORY[0x259C12CB0](v9, -1, -1);
  }

  v14 = v0[13];
  type metadata accessor for ToggleControlEntity(0);
  sub_2545EDE20(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
  sub_2545FE854();

  v15 = v0[1];

  return v15();
}

uint64_t ToggleControlEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[2] = a1;
  type metadata accessor for SelectedHomeEntity(0);
  v2[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A68, &qword_254601EC0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[8] = v4;
  v2[9] = v5;

  return MEMORY[0x2822009F8](sub_2545ED204, 0, 0);
}

uint64_t sub_2545ED204()
{
  if (sub_2545FE964())
  {
    v2 = v0[3];
    v1 = v0[4];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v2, v1);
    sub_2545EDCCC(v2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[4];
  v5 = type metadata accessor for HomeID(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = sub_2545FEF74();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2545ED37C;
  v8 = v0[8];
  v9 = v0[4];

  return sub_2545BCAA8(v8, 0, 0, v9, v6);
}

uint64_t sub_2545ED37C()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  sub_2545B612C(v2, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v3 = sub_2545ED7DC;
  }

  else
  {
    v3 = sub_2545ED4BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545ED4BC()
{
  v28 = v0;
  v1 = *(sub_2545FE864() + 16);

  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = sub_2545FF0A4();
    __swift_project_value_buffer(v6, qword_27F60ADD8);
    (*(v5 + 16))(v2, v3, v4);
    v7 = sub_2545FF084();
    v8 = sub_2545FF474();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v13 = 136315138;
      v14 = sub_2545FE864();
      v15 = type metadata accessor for ToggleControlEntity(0);
      v16 = MEMORY[0x259C121B0](v14, v15);
      v18 = v17;

      (*(v11 + 8))(v10, v12);
      v19 = sub_2545F0FB4(v16, v18, &v27);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_2545AB000, v7, v8, "ToggleControlEntityQuery.suggestedEntities() returned %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259C12CB0](v26, -1, -1);
      MEMORY[0x259C12CB0](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v20 = sub_2545FF0A4();
    __swift_project_value_buffer(v20, qword_27F60ADD8);
    v21 = sub_2545FF084();
    v22 = sub_2545FF454();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2545AB000, v21, v22, "ToggleControlEntityQuery.suggestedEntities() returned empty", v23, 2u);
      MEMORY[0x259C12CB0](v23, -1, -1);
    }
  }

  (*(v0[6] + 32))(v0[2], v0[8], v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2545ED7DC()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2545AB000, v4, v5, "ToggleControlEntityQuery.suggestedEntities() threw error %@", v7, 0xCu);
    sub_2545B612C(v8, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v11 = *(v0 + 88);

  type metadata accessor for ToggleControlEntity(0);
  sub_2545EDE20(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
  sub_2545FE854();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2545ED9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return ToggleControlEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_2545EDAA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064C0, &qword_254601E70);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545EDAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return ToggleControlEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545EDB80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return ToggleControlEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545EDC18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545AFC7C();
  *v5 = v2;
  v5[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_2545EDCCC(uint64_t a1)
{
  v2 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2545EDD2C()
{
  result = qword_27F606A70;
  if (!qword_27F606A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A70);
  }

  return result;
}

unint64_t sub_2545EDD84()
{
  result = qword_27F606A78;
  if (!qword_27F606A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A78);
  }

  return result;
}

uint64_t sub_2545EDE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2545EDE6C()
{
  result = qword_27F606A80;
  if (!qword_27F606A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A80);
  }

  return result;
}

unint64_t sub_2545EDF0C()
{
  result = qword_27F606A88[0];
  if (!qword_27F606A88[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606A68, &qword_254601EC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F606A88);
  }

  return result;
}

uint64_t sub_2545EDFF0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2545FF3F4();
  if (!v19)
  {
    return sub_2545FF2E4();
  }

  v41 = v19;
  v45 = sub_2545FF654();
  v32 = sub_2545FF664();
  sub_2545FF614();
  result = sub_2545FF3C4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2545FF414();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);
        sub_2545FEA14();
        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2545FF644();
      result = sub_2545FF404();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2545EE410()
{
  v1 = *(v0 + 8);
  sub_2545FF834();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x259C12730](1);
      sub_2545FF1B4();
      return sub_2545FF864();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C12730](v2);
  return sub_2545FF864();
}

uint64_t sub_2545EE490(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x259C12730](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x259C12730](v3);
  }

  MEMORY[0x259C12730](1);

  return sub_2545FF1B4();
}

uint64_t sub_2545EE518(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2545FF834();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x259C12730](1);
      sub_2545FF1B4();
      return sub_2545FF864();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C12730](v3);
  return sub_2545FF864();
}

BOOL sub_2545EE594(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v3 >= 2)
      {
        sub_2545D8470();
        return sub_2545FF514() == -1;
      }

      v2 = 1;
    }
  }

  v4 = 1;
  if (v3 == 1)
  {
    v4 = 2;
  }

  return v3 && v4 > v2;
}

uint64_t sub_2545EE6EC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_2545FF7B4();
  }

  return 1;
}

uint64_t sub_2545EE74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a5 == 1)
      {
LABEL_12:
        MEMORY[0x28223BE20](a1);
        sub_2545FF314();
        sub_2545FE8E4();
        sub_2545FE8E4();
        swift_getWitnessTable();
        v6 = sub_2545FF274();

        return v6 & 1;
      }
    }

    else if (a5 >= 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_12;
      }

      a1 = sub_2545FF7B4();
      if (a1)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!a5)
  {
    goto LABEL_12;
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t sub_2545EE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ElementID(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v13 = *(a5 + 16);
  v13(a3, a5);
  v13(a3, a5);
  v14 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
  v15 = sub_2545FEB04();
  v16 = *(*(v15 - 8) + 8);
  v16(v10, v15);
  v16(v12, v15);
  return v14 & 1;
}

uint64_t sub_2545EEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x259C12730](1);
      v13 = sub_2545FF1B4();
      goto LABEL_7;
    }

    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x259C12730](v12, a2);
LABEL_7:
  v20[7] = a4;
  MEMORY[0x28223BE20](v13);
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v14 = sub_2545FF314();
  v15 = type metadata accessor for ElementID(0);
  sub_2545FE8E4();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_2545EDFF0(sub_2545EEFD0, v20, v14, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  sub_2545EF018(a1, v18);
}

uint64_t sub_2545EEB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2545FF834();
  sub_2545EEA1C(v13, a1, a2, a3, a4, a5, a6);
  return sub_2545FF864();
}

uint64_t sub_2545EEC08@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2545D71E4(v2, v3);
}

uint64_t sub_2545EEC44(uint64_t a1, uint64_t *a2)
{
  sub_2545FF834();
  sub_2545EEA1C(v5, *v2, v2[1], v2[2], a2[2], a2[3], a2[4]);
  return sub_2545FF864();
}

uint64_t get_enum_tag_for_layout_string_17HomeWidgetIntents14CollectionTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2545EED2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2545EED80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2545EEDDC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2545EEE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2545EEE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2545EEEB0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2545EEF28()
{
  result = qword_27F606B90;
  if (!qword_27F606B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606B90);
  }

  return result;
}

unint64_t sub_2545EEF7C()
{
  result = qword_27F606B98;
  if (!qword_27F606B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606B98);
  }

  return result;
}

uint64_t sub_2545EF018(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ElementID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x259C12730](v7);
  if (v7)
  {
    v9 = *(v3 + 20);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_2545EF160(v10, v6);
      sub_2545FEB04();
      sub_2545EF1C4();
      sub_2545FF0C4();
      MEMORY[0x259C12730](qword_254602308[v6[v9]]);
      result = sub_2545EF21C(v6);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2545EF160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElementID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545EF1C4()
{
  result = qword_27F606430;
  if (!qword_27F606430)
  {
    sub_2545FEB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606430);
  }

  return result;
}

uint64_t sub_2545EF21C(uint64_t a1)
{
  v2 = type metadata accessor for ElementID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SelectedHomeEntity.init(id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545E2F94(a1, a4);
  result = type metadata accessor for SelectedHomeEntity(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t type metadata accessor for SelectedHomeEntity(uint64_t a1)
{
  result = qword_2815330F0;
  if (!qword_2815330F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectedHomeEntity.selectedHome.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2545FEB04();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_2545EF43C;

  return sub_2545B0448();
}

uint64_t sub_2545EF43C(uint64_t a1)
{
  *(*v2 + 56) = a1;

  if (v1)
  {

    v3 = sub_2545EF938;
  }

  else
  {
    v3 = sub_2545EF558;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545EF558()
{
  v32 = v0;
  v1 = v0[7];
  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    v3 = v1;
    v4 = sub_2545FF084();
    v5 = sub_2545FF474();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v9 = 136315394;
      *(v9 + 4) = sub_2545F0FB4(0x64657463656C6573, 0xEC000000656D6F48, &v31);
      *(v9 + 12) = 2080;
      v10 = [v3 uniqueIdentifier];
      sub_2545FEAC4();

      sub_2545F1944(&qword_27F606BB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v11 = sub_2545FF794();
      v13 = v12;
      (*(v7 + 8))(v6, v8);
      v14 = sub_2545F0FB4(v11, v13, &v31);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_2545AB000, v4, v5, "%s WidgetDataModel.home=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v30, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v15 = v0[2];
    v16 = [v3 uniqueIdentifier];
    sub_2545FEAC4();

    v17 = [v3 name];
    v18 = sub_2545FF174();
    v20 = v19;

    v21 = type metadata accessor for SelectedHomeEntity(0);
    v22 = 0;
    v23 = (v15 + *(v21 + 20));
    *v23 = v18;
    v23[1] = v20;
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v24 = sub_2545FF0A4();
    __swift_project_value_buffer(v24, qword_27F60ADD8);
    v25 = sub_2545FF084();
    v26 = sub_2545FF454();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2545AB000, v25, v26, "SelectedHomeEntity.selectedHome homes not loaded", v27, 2u);
      MEMORY[0x259C12CB0](v27, -1, -1);
    }

    v21 = type metadata accessor for SelectedHomeEntity(0);
    v22 = 1;
  }

  (*(*(v21 - 8) + 56))(v0[2], v22, 1);

  v28 = v0[1];

  return v28();
}

uint64_t sub_2545EF938()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  v2 = sub_2545FF084();
  v3 = sub_2545FF454();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2545AB000, v2, v3, "SelectedHomeEntity.selectedHome homes not loaded", v4, 2u);
    MEMORY[0x259C12CB0](v4, -1, -1);
  }

  v5 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v5 - 8) + 56))(*(v0 + 16), 1, 1);

  v6 = *(v0 + 8);

  return v6();
}

unint64_t SelectedHomeEntity.description.getter()
{
  sub_2545FF594();

  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_2545EFB28()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606BA0);
  __swift_project_value_buffer(v0, qword_27F606BA0);
  return sub_2545FE994();
}

uint64_t static SelectedHomeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SelectedHomeEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2545FEA64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2545FF134();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2545FF124();
  sub_2545FF114();
  type metadata accessor for SelectedHomeEntity(0);
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2545FE884();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2545FE894();
}

uint64_t SelectedHomeEntity.init()@<X0>(uint64_t a1@<X8>)
{
  sub_2545FEAF4();
  result = type metadata accessor for SelectedHomeEntity(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  return result;
}

uint64_t SelectedHomeEntity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for SelectedHomeEntity(0) + 20));
  sub_2545FE8E4();
  return v1;
}

uint64_t SelectedHomeEntity.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SelectedHomeEntity(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static SelectedHomeEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SelectedHomeEntity(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_2545FF7B4();
}

uint64_t sub_2545F0098()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2545F00C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2545FF7B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2545FF7B4();

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

uint64_t sub_2545F01A0(uint64_t a1)
{
  v2 = sub_2545F154C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545F01DC(uint64_t a1)
{
  v2 = sub_2545F154C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectedHomeEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606BC0, &qword_254602358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F154C();
  sub_2545FF884();
  v8[15] = 0;
  type metadata accessor for HomeID(0);
  sub_2545F1944(&qword_27F606BD0, type metadata accessor for HomeID, &protocol conformance descriptor for HomeID);
  sub_2545FF774();
  if (!v1)
  {
    type metadata accessor for SelectedHomeEntity(0);
    v8[14] = 1;
    sub_2545FF754();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SelectedHomeEntity.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  type metadata accessor for SelectedHomeEntity(0);

  return sub_2545FF1B4();
}

uint64_t SelectedHomeEntity.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  type metadata accessor for SelectedHomeEntity(0);
  sub_2545FF1B4();
  return sub_2545FF864();
}

uint64_t SelectedHomeEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for HomeID(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606BD8, &qword_254602360);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for SelectedHomeEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F154C();
  sub_2545FF874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_2545F1944(&qword_27F606BE0, type metadata accessor for HomeID, &protocol conformance descriptor for HomeID);
  v14 = v25;
  v13 = v26;
  sub_2545FF714();
  sub_2545E2F94(v14, v11);
  v27 = 1;
  v15 = sub_2545FF6F4();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = (v11 + *(v22 + 20));
  *v19 = v15;
  v19[1] = v17;
  sub_2545F15A0(v11, v18, type metadata accessor for SelectedHomeEntity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2545DBEA4(v11, type metadata accessor for SelectedHomeEntity);
}

uint64_t sub_2545F0868(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  sub_2545FF1B4();
  return sub_2545FF864();
}

uint64_t sub_2545F0910(uint64_t a1, uint64_t a2)
{
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();

  return sub_2545FF1B4();
}

uint64_t sub_2545F09AC(uint64_t a1, uint64_t a2)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  sub_2545FF1B4();
  return sub_2545FF864();
}

uint64_t sub_2545F0A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_2545FF7B4();
}

uint64_t sub_2545F0B08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545F0BB0(uint64_t a1)
{
  v2 = sub_2545F1944(&qword_27F606558, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545F0C2C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_2545FEA64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = sub_2545FF134();
  MEMORY[0x28223BE20](v9 - 8);
  sub_2545FF124();
  sub_2545FF114();
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v8 + 56))(v6, 1, 1, v7);
  v10 = sub_2545FE884();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_2545FE894();
}

uint64_t sub_2545F0E84(uint64_t a1)
{
  v2 = sub_2545F1944(&qword_281533110, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_2545F0F24()
{
  sub_2545FF594();

  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_2545F0FB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_2545FE8E4();
  v6 = sub_2545F1080(v11, 0, 0, 1, a1, a2);
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
    sub_2545DD564(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2545F1080(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2545F118C(a5, a6);
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
    result = sub_2545FF5E4();
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

void *sub_2545F118C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2545F11D8(a1, a2);
  sub_2545F1308(&unk_286677F20);
  return v3;
}

void *sub_2545F11D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2545F619C(v5, 0);
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

  result = sub_2545FF5E4();
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
        v10 = sub_2545FF1D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2545F619C(v10, 0);
        result = sub_2545FF584();
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

uint64_t sub_2545F1308(uint64_t result)
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

  result = sub_2545F13F4(result, v11, 1, v3);
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

char *sub_2545F13F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C20, &qword_2546027C8);
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

uint64_t sub_2545F14E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545F154C()
{
  result = qword_27F606BC8;
  if (!qword_27F606BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606BC8);
  }

  return result;
}

uint64_t sub_2545F15A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2545F1850()
{
  result = qword_27F606BF8;
  if (!qword_27F606BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606C00, &qword_254602568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606BF8);
  }

  return result;
}

uint64_t sub_2545F1944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545F19B4(uint64_t a1)
{
  result = type metadata accessor for HomeID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectedHomeEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SelectedHomeEntity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2545F1B88()
{
  result = qword_27F606C08;
  if (!qword_27F606C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C08);
  }

  return result;
}

unint64_t sub_2545F1BE0()
{
  result = qword_27F606C10;
  if (!qword_27F606C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C10);
  }

  return result;
}

unint64_t sub_2545F1C38()
{
  result = qword_27F606C18;
  if (!qword_27F606C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C18);
  }

  return result;
}

uint64_t sub_2545F1C94(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2545B3CAC(a1, &v10 - v7);
  sub_2545B3CAC(v8, v6);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v8, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t HomeSingleTileEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C28, &qword_2546027D0);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545F1E28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_2545FEF64();
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_2545F1EE4;

  return sub_2545D2BB4(1, v2, v3);
}

uint64_t sub_2545F1EE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_2545B8EEC;
  }

  else
  {
    v4 = sub_2545F1FF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545F1FF8()
{
  v29 = v0;
  if (*(v0[4] + 16))
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v1 = sub_2545FF0A4();
    __swift_project_value_buffer(v1, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545FE8E4();
    v2 = sub_2545FF084();
    v3 = sub_2545FF434();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[4];
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136315394;
      v8 = type metadata accessor for ElementID(0);
      v9 = MEMORY[0x259C121B0](v5, v8);
      v11 = sub_2545F0FB4(v9, v10, &v28);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = type metadata accessor for HomeSingleTileEntity(0);
      v13 = MEMORY[0x259C121B0](v4, v12);
      v15 = sub_2545F0FB4(v13, v14, &v28);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_2545AB000, v2, v3, "entities(for: %s returned %s", v6, 0x16u);
      swift_arrayDestroy();
      v16 = v7;
LABEL_10:
      MEMORY[0x259C12CB0](v16, -1, -1);
      MEMORY[0x259C12CB0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v17 = sub_2545FF0A4();
    __swift_project_value_buffer(v17, qword_27F60ADD8);
    sub_2545FE8E4();
    v2 = sub_2545FF084();
    v18 = sub_2545FF454();

    if (os_log_type_enabled(v2, v18))
    {
      v19 = v0[2];
      v6 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v6 = 136315138;
      v21 = type metadata accessor for ElementID(0);
      v22 = MEMORY[0x259C121B0](v19, v21);
      v24 = sub_2545F0FB4(v22, v23, &v28);

      *(v6 + 4) = v24;
      _os_log_impl(&dword_2545AB000, v2, v18, "entities(for: %s returned empty", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v16 = v20;
      goto LABEL_10;
    }
  }

  v25 = v0[4];
  v26 = v0[1];

  return v26(v25);
}

uint64_t HomeSingleTileEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for SelectedHomeEntity(0);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C30, &qword_254602820);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[10] = v6;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2545F2458, 0, 0);
}

uint64_t sub_2545F2458()
{
  if (sub_2545FE964())
  {
    v2 = v0[5];
    v1 = v0[6];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v2, v1);
    sub_2545EDCCC(v2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for HomeID(0);
  (*(*(v6 - 8) + 56))(v4, v3, 1, v6);
  v7 = sub_2545FEF64();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_2545F25D4;
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[3];

  return sub_2545BF5DC(v9, v11, v5, v10, v7);
}

uint64_t sub_2545F25D4()
{
  v2 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  sub_2545B612C(v2, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v3 = sub_2545F2AD8;
  }

  else
  {
    v3 = sub_2545F2714;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545F2714()
{
  v33 = v0;
  v1 = *(sub_2545FE864() + 16);

  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = sub_2545FF0A4();
    __swift_project_value_buffer(v6, qword_27F60ADD8);
    (*(v5 + 16))(v2, v3, v4);
    sub_2545FE8E4();
    v7 = sub_2545FF084();
    v8 = sub_2545FF434();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    if (v9)
    {
      v14 = v0[3];
      v13 = v0[4];
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315394;
      *(v15 + 4) = sub_2545F0FB4(v14, v13, &v32);
      *(v15 + 12) = 2080;
      v16 = sub_2545FE864();
      v17 = type metadata accessor for HomeSingleTileEntity(0);
      v18 = MEMORY[0x259C121B0](v16, v17);
      v20 = v19;

      (*(v11 + 8))(v10, v12);
      v21 = sub_2545F0FB4(v18, v20, &v32);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2545AB000, v7, v8, "entities(matching: %s returned %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v31, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v22 = sub_2545FF0A4();
    __swift_project_value_buffer(v22, qword_27F60ADD8);
    sub_2545FE8E4();
    v23 = sub_2545FF084();
    v24 = sub_2545FF454();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[3];
      v25 = v0[4];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2545F0FB4(v26, v25, &v32);
      _os_log_impl(&dword_2545AB000, v23, v24, "entities(matching: %s returned empty", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259C12CB0](v28, -1, -1);
      MEMORY[0x259C12CB0](v27, -1, -1);
    }
  }

  (*(v0[8] + 32))(v0[2], v0[10], v0[7]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_2545F2AD8()
{
  v18 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2545F0FB4(v8, v7, &v17);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2545AB000, v4, v5, "entities(matching: %s threw error %@", v9, 0x16u);
    sub_2545B612C(v10, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C12CB0](v11, -1, -1);
    MEMORY[0x259C12CB0](v9, -1, -1);
  }

  v14 = v0[13];
  type metadata accessor for HomeSingleTileEntity(0);
  sub_2545F3AB4(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
  sub_2545FE854();

  v15 = v0[1];

  return v15();
}

uint64_t HomeSingleTileEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[2] = a1;
  type metadata accessor for SelectedHomeEntity(0);
  v2[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C30, &qword_254602820);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[8] = v4;
  v2[9] = v5;

  return MEMORY[0x2822009F8](sub_2545F2E9C, 0, 0);
}

uint64_t sub_2545F2E9C()
{
  if (sub_2545FE964())
  {
    v2 = v0[3];
    v1 = v0[4];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v2, v1);
    sub_2545EDCCC(v2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[4];
  v5 = type metadata accessor for HomeID(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = sub_2545FEF64();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2545F3014;
  v8 = v0[8];
  v9 = v0[4];

  return sub_2545BF5DC(v8, 0, 0, v9, v6);
}

uint64_t sub_2545F3014()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  sub_2545B612C(v2, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v3 = sub_2545F3474;
  }

  else
  {
    v3 = sub_2545F3154;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545F3154()
{
  v28 = v0;
  v1 = *(sub_2545FE864() + 16);

  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = sub_2545FF0A4();
    __swift_project_value_buffer(v6, qword_27F60ADD8);
    (*(v5 + 16))(v2, v3, v4);
    v7 = sub_2545FF084();
    v8 = sub_2545FF434();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v13 = 136315138;
      v14 = sub_2545FE864();
      v15 = type metadata accessor for HomeSingleTileEntity(0);
      v16 = MEMORY[0x259C121B0](v14, v15);
      v18 = v17;

      (*(v11 + 8))(v10, v12);
      v19 = sub_2545F0FB4(v16, v18, &v27);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_2545AB000, v7, v8, "suggestedEntities() returned %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259C12CB0](v26, -1, -1);
      MEMORY[0x259C12CB0](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v20 = sub_2545FF0A4();
    __swift_project_value_buffer(v20, qword_27F60ADD8);
    v21 = sub_2545FF084();
    v22 = sub_2545FF454();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2545AB000, v21, v22, "suggestedEntities() returned empty", v23, 2u);
      MEMORY[0x259C12CB0](v23, -1, -1);
    }
  }

  (*(v0[6] + 32))(v0[2], v0[8], v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2545F3474()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2545AB000, v4, v5, "suggestedEntities() threw error %@", v7, 0xCu);
    sub_2545B612C(v8, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v11 = *(v0 + 88);

  type metadata accessor for HomeSingleTileEntity(0);
  sub_2545F3AB4(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
  sub_2545FE854();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2545F3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return HomeSingleTileEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_2545F3738@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C28, &qword_2546027D0);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545F3784(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return HomeSingleTileEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545F3818(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return HomeSingleTileEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545F38B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545F3968();
  *v5 = v2;
  v5[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_2545F3968()
{
  result = qword_27F606C38;
  if (!qword_27F606C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C38);
  }

  return result;
}

unint64_t sub_2545F39C0()
{
  result = qword_281532E98;
  if (!qword_281532E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E98);
  }

  return result;
}

unint64_t sub_2545F3A18()
{
  result = qword_281532E90;
  if (!qword_281532E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E90);
  }

  return result;
}

uint64_t sub_2545F3AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2545F3B00()
{
  result = qword_281532EA0;
  if (!qword_281532EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532EA0);
  }

  return result;
}

unint64_t sub_2545F3BA0()
{
  result = qword_27F606C40;
  if (!qword_27F606C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606C30, &qword_254602820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C40);
  }

  return result;
}

BOOL static ElementID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID(0);
  return qword_254602E18[*(a1 + *(v4 + 20))] == qword_254602E18[*(a2 + *(v4 + 20))];
}

{
  return *(a1 + *(type metadata accessor for ElementID(0) + 20)) == 6 && sub_2545B1170() == 0xDEFFDEED00000000 && sub_2545B118C() == a2;
}

uint64_t type metadata accessor for ElementID(uint64_t a1)
{
  result = qword_281532CA0;
  if (!qword_281532CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ElementID.entityIdentifierString.getter()
{
  type metadata accessor for ElementID(0);
  v2 = sub_2545FF794();
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  return v2;
}

uint64_t sub_2545F3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v86 = a3;
  v71 = sub_2545FEE64();
  v67 = *(v71 - 8);
  v4 = MEMORY[0x28223BE20](v71);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v64 - v6;
  v75 = sub_2545FEEA4();
  v69 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v64 - v9;
  v79 = sub_2545FEDA4();
  v73 = *(v79 - 8);
  v10 = MEMORY[0x28223BE20](v79);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v64 - v12;
  v83 = sub_2545FEE44();
  v77 = *(v83 - 8);
  v13 = MEMORY[0x28223BE20](v83);
  v76 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v64 - v15;
  v85 = sub_2545FEE84();
  v81 = *(v85 - 8);
  v16 = MEMORY[0x28223BE20](v85);
  v80 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = sub_2545FEE24();
  v84 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  v26 = sub_2545FEE04();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v64 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v36;
  (*(v36 + 16))(v35, v88, a1);
  if (swift_dynamicCast())
  {
    (*(v27 + 32))(v30, v33, v26);
    v37 = v86;
    sub_2545FEDF4();
    (*(v27 + 8))(v30, v26);
    *(v37 + *(type metadata accessor for ElementID(0) + 20)) = 0;
  }

  else
  {
    v38 = v86;
    if (!swift_dynamicCast())
    {
      v40 = v85;
      if (swift_dynamicCast())
      {
        v42 = v80;
        v41 = v81;
        (*(v81 + 32))(v80, v19, v40);
        v43 = v38;
        sub_2545FEE74();
        (*(v41 + 8))(v42, v40);
        v44 = *(type metadata accessor for ElementID(0) + 20);
        v45 = 2;
      }

      else
      {
        v47 = v82;
        v46 = v83;
        v43 = v38;
        if (swift_dynamicCast())
        {
          v48 = v76;
          v49 = v77;
          (*(v77 + 32))(v76, v47, v46);
          sub_2545FEE34();
          (*(v49 + 8))(v48, v46);
          v44 = *(type metadata accessor for ElementID(0) + 20);
          v45 = 3;
        }

        else
        {
          v51 = v78;
          v50 = v79;
          if (swift_dynamicCast())
          {
            v52 = v72;
            v53 = v73;
            (*(v73 + 32))(v72, v51, v50);
            sub_2545FED94();
            (*(v53 + 8))(v52, v50);
            v44 = *(type metadata accessor for ElementID(0) + 20);
            v45 = 4;
          }

          else
          {
            v55 = v74;
            v54 = v75;
            if (swift_dynamicCast())
            {
              v56 = v68;
              v57 = v69;
              (*(v69 + 32))(v68, v55, v54);
              sub_2545FEE94();
              (*(v57 + 8))(v56, v54);
              v44 = *(type metadata accessor for ElementID(0) + 20);
              v45 = 5;
            }

            else
            {
              v59 = v70;
              v58 = v71;
              if (swift_dynamicCast())
              {
                v60 = v67;
                v61 = v65;
                (*(v67 + 32))(v65, v59, v58);
                v62 = sub_2545FEE54();
                ElementID.init(nodeID:)(v62, v43);
                (*(v60 + 8))(v61, v58);
                return (*(v87 + 8))(v35, a1);
              }

              sub_2545FF5A4();
              v44 = *(type metadata accessor for ElementID(0) + 20);
              v45 = 7;
            }
          }
        }
      }

      *(v43 + v44) = v45;
      return (*(v87 + 8))(v35, a1);
    }

    v39 = v84;
    (*(v84 + 32))(v23, v25, v20);
    sub_2545FEE14();
    (*(v39 + 8))(v23, v20);
    *(v38 + *(type metadata accessor for ElementID(0) + 20)) = 1;
  }

  return (*(v87 + 8))(v35, a1);
}

unint64_t ElementID.nodeID.getter()
{
  if (*(v0 + *(type metadata accessor for ElementID(0) + 20)) == 6 && sub_2545B1170() == 0xDEFFDEED00000000)
  {
    return sub_2545B118C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2545F46A8@<X0>(Swift::Int *a1@<X0>, HomeWidgetIntents::ElementID::Kind_optional *a2@<X8>)
{
  result = _s17HomeWidgetIntents9ElementIDV4KindO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_2545F46EC()
{
  v1 = *v0;
  sub_2545FF834();
  MEMORY[0x259C12730](qword_254602E18[v1]);
  return sub_2545FF864();
}

uint64_t sub_2545F4774(uint64_t a1)
{
  v2 = *v1;
  sub_2545FF834();
  MEMORY[0x259C12730](qword_254602E18[v2]);
  return sub_2545FF864();
}

uint64_t ElementID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2545FEB04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElementID.init(id:kind:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2545FEB04();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ElementID(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2545F499C()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2545F49C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2545FF7B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2545FF7B4();

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

uint64_t sub_2545F4A98(uint64_t a1)
{
  v2 = sub_2545F6C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545F4AD4(uint64_t a1)
{
  v2 = sub_2545F6C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElementID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C48, "B ");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F6C84();
  sub_2545FF884();
  v10[15] = 0;
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606940, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2545FF774();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ElementID(0) + 20));
    v10[13] = 1;
    sub_2545F6CD8();
    sub_2545FF774();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ElementID.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID(0);
  return MEMORY[0x259C12730](qword_254602E18[*(v1 + *(v2 + 20))]);
}

uint64_t ElementID.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254602E18[*(v0 + *(v1 + 20))]);
  return sub_2545FF864();
}

uint64_t ElementID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_2545FEB04();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C60, &unk_254602A18);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ElementID(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F6C84();
  sub_2545FF874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_2545F6E68(&qword_27F606950, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v27;
  v16 = v25;
  sub_2545FF714();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_2545F6D2C();
  sub_2545FF714();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_2545EF160(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2545EF21C(v18);
}

uint64_t sub_2545F5188(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  MEMORY[0x259C12730](qword_254602E18[*(v1 + *(a1 + 20))]);
  return sub_2545FF864();
}

uint64_t sub_2545F5238(uint64_t a1, uint64_t a2)
{
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  return MEMORY[0x259C12730](qword_254602E18[*(v2 + *(a2 + 20))]);
}

uint64_t sub_2545F52D0(uint64_t a1, uint64_t a2)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  MEMORY[0x259C12730](qword_254602E18[*(v2 + *(a2 + 20))]);
  return sub_2545FF864();
}

uint64_t static ElementID.entityIdentifier(for:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_2545FEB04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v68 = a2;
  v65 = 58;
  v66 = 0xE100000000000000;
  sub_2545D8470();
  v14 = sub_2545FF4F4();
  if (v14[2] != 2)
  {
    goto LABEL_65;
  }

  v16 = v14[4];
  v15 = v14[5];
  v17 = HIBYTE(v15) & 0xF;
  v18 = v16 & 0xFFFFFFFFFFFFLL;
  if (!((v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : v16 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v64 = v14;
    v60 = v15;
    sub_2545FE8E4();
    v23 = sub_2545F6210(v16, v60, 10);
    v62 = v61;

    v14 = v64;
    if (v62)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v67 = v14[4];
    v68 = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (!v17)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        swift_once();
        goto LABEL_75;
      }

      v20 = v17 - 1;
      if (v17 != 1)
      {
        v23 = 0;
        v34 = &v67 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v20)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v16 == 45)
    {
      if (!v17)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v20 = v17 - 1;
      if (v17 != 1)
      {
        v23 = 0;
        v27 = &v67 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v20)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v17)
    {
      v23 = 0;
      v39 = &v67;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        v39 = (v39 + 1);
        if (!--v17)
        {
LABEL_61:
          LOBYTE(v20) = 0;
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      v20 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = v14;
      v20 = sub_2545FF5E4();
      v14 = v3;
    }

    v21 = *v20;
    if (v21 == 43)
    {
      if (v18 < 1)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v30 = v18 - 1;
      if (v18 != 1)
      {
        v23 = 0;
        if (!v20)
        {
          goto LABEL_63;
        }

        v31 = (v20 + 1);
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v30)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v21 == 45)
    {
      if (v18 < 1)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v22 = v18 - 1;
      if (v18 != 1)
      {
        v23 = 0;
        if (!v20)
        {
          goto LABEL_63;
        }

        v24 = (v20 + 1);
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v22)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v18)
    {
      v23 = 0;
      if (!v20)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v37 = *v20 - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        ++v20;
        if (!--v18)
        {
          goto LABEL_61;
        }
      }
    }
  }

  v23 = 0;
  LOBYTE(v20) = 1;
LABEL_63:
  LOBYTE(v65) = v20;
  if (v20)
  {
LABEL_65:

LABEL_66:
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v43 = sub_2545FF0A4();
    __swift_project_value_buffer(v43, qword_27F60ADD8);
    sub_2545FE8E4();
    v44 = sub_2545FF084();
    v45 = sub_2545FF444();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_2545F0FB4(a1, a2, &v67);
      _os_log_impl(&dword_2545AB000, v44, v45, "[entityIdentifier] Failed to convert string: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x259C12CB0](v47, -1, -1);
      MEMORY[0x259C12CB0](v46, -1, -1);
    }

    v48 = type metadata accessor for ElementID(0);
    return (*(*(v48 - 8) + 56))(a3, 1, 1, v48);
  }

LABEL_64:
  v3 = v14;
  v42 = _s17HomeWidgetIntents9ElementIDV4KindO8rawValueAESgSi_tcfC_0(v23);
  if (v42 == 8)
  {
    goto LABEL_65;
  }

  LODWORD(v64) = v42;
  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_82;
  }

  v51 = v3[6];
  v50 = v3[7];
  sub_2545FE8E4();

  v67 = v51;
  v68 = v50;
  sub_2545FF224();
  sub_2545FEA84();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2545B1088(v9);
    goto LABEL_66;
  }

  v3 = *(v11 + 32);
  (v3)(v13, v9, v10);
  if (qword_27F6063A0 != -1)
  {
    goto LABEL_86;
  }

LABEL_75:
  v52 = sub_2545FF0A4();
  __swift_project_value_buffer(v52, qword_27F60ADD8);
  sub_2545FE8E4();
  v53 = sub_2545FF084();
  v54 = sub_2545FF444();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v63 = v3;
    v56 = v55;
    v57 = swift_slowAlloc();
    v67 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_2545F0FB4(a1, a2, &v67);
    _os_log_impl(&dword_2545AB000, v53, v54, "[entityIdentifier] Converting String: '%s' to ElementID", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x259C12CB0](v57, -1, -1);
    v58 = v56;
    v3 = v63;
    MEMORY[0x259C12CB0](v58, -1, -1);
  }

  (v3)(a3, v13, v10);
  v59 = type metadata accessor for ElementID(0);
  *(a3 + *(v59 + 20)) = v64;
  return (*(*(v59 - 8) + 56))(a3, 0, 1, v59);
}

uint64_t sub_2545F5BC8()
{
  v2 = sub_2545FF794();
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  return v2;
}

uint64_t ElementID.Kind.description.getter(unsigned __int8 a1)
{
  v1 = 0x726F737365636341;
  v2 = 0x614D65766974614ELL;
  if (a1 != 6)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  v3 = 0x65636976726553;
  if (a1 != 4)
  {
    v3 = 0x4765636976726553;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6F7250616964654DLL;
  if (a1 != 2)
  {
    v4 = 0x737953616964654DLL;
  }

  if (a1)
  {
    v1 = 0x656E656353;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2545F5D70()
{
  v1 = *v0;
  v2 = 0x726F737365636341;
  v3 = 0x614D65766974614ELL;
  if (v1 != 6)
  {
    v3 = 0x6E776F6E6B6E55;
  }

  v4 = 0x65636976726553;
  if (v1 != 4)
  {
    v4 = 0x4765636976726553;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F7250616964654DLL;
  if (v1 != 2)
  {
    v5 = 0x737953616964654DLL;
  }

  if (*v0)
  {
    v2 = 0x656E656353;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ElementID.debugDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElementID(0) + 20));
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        v2 = 0xEC00000072657474;
        v3 = 0x614D65766974614ELL;
      }

      else
      {
        v2 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
      }
    }

    else if (v1 == 4)
    {
      v2 = 0xE700000000000000;
      v3 = 0x65636976726553;
    }

    else
    {
      v2 = 0xEC00000070756F72;
      v3 = 0x4765636976726553;
    }
  }

  else if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xEC000000656C6966;
      v3 = 0x6F7250616964654DLL;
    }

    else
    {
      v2 = 0xEB000000006D6574;
      v3 = 0x737953616964654DLL;
    }
  }

  else if (v1)
  {
    v2 = 0xE500000000000000;
    v3 = 0x656E656353;
  }

  else
  {
    v2 = 0xE900000000000079;
    v3 = 0x726F737365636341;
  }

  MEMORY[0x259C120B0](v3, v2);

  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v4 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v4);

  return 0x49746E656D656C45;
}

uint64_t ElementID.init(nodeID:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2545B10F0(a1, 0xDEFFDEED00000000);
  result = type metadata accessor for ElementID(0);
  *(a2 + *(result + 20)) = 6;
  return result;
}

uint64_t ElementID.matterObjectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ElementID(0) + 20)) == 6 && sub_2545B1170() == 0xDEFFDEED00000000)
  {
    sub_2545B118C();
    sub_2545FEAA4();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void *sub_2545F619C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C20, &qword_2546027C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2545F6210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_2545FE8E4();
  result = sub_2545FF224();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2545F679C(result, v5);
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
      result = sub_2545FF5E4();
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

uint64_t sub_2545F679C(uint64_t a1, unint64_t a2)
{
  v2 = sub_2545FF234();
  v6 = sub_2545F681C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2545F681C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2545FF4E4();
    if (!v9 || (v10 = v9, v11 = sub_2545F619C(v9, 0), v12 = sub_2545F6974(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_2545FE8E4(), , v12 == v10))
    {
      v13 = sub_2545FF1A4();
      sub_2545FEA14();
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
      return sub_2545FF1A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2545FF5E4();
LABEL_4:

  return sub_2545FF1A4();
}

unint64_t sub_2545F6974(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2545F6B94(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2545FF204();
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
          result = sub_2545FF5E4();
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

    result = sub_2545F6B94(v12, a6, a7);
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

    result = sub_2545FF1E4();
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

unint64_t sub_2545F6B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2545FF214();
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
    v5 = MEMORY[0x259C120E0](15, a1 >> 16);
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

uint64_t _s17HomeWidgetIntents9ElementIDV4KindO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 3)
  {
    if (result <= 6)
    {
      return result;
    }

    if (result == 10000)
    {
      return 7;
    }

    return 8;
  }

  if (result < 0)
  {
    return 8;
  }

  return result;
}

unint64_t sub_2545F6C84()
{
  result = qword_27F606C50;
  if (!qword_27F606C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C50);
  }

  return result;
}

unint64_t sub_2545F6CD8()
{
  result = qword_27F606C58;
  if (!qword_27F606C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C58);
  }

  return result;
}

unint64_t sub_2545F6D2C()
{
  result = qword_27F606C68;
  if (!qword_27F606C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C68);
  }

  return result;
}

unint64_t sub_2545F6D84()
{
  result = qword_27F606C70;
  if (!qword_27F606C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C70);
  }

  return result;
}

uint64_t sub_2545F6E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545F6ED8(uint64_t a1)
{
  result = sub_2545FEB04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementID.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ElementID.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2545F70B0()
{
  result = qword_27F606C80;
  if (!qword_27F606C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C80);
  }

  return result;
}

unint64_t sub_2545F7108()
{
  result = qword_27F606C88;
  if (!qword_27F606C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C88);
  }

  return result;
}

unint64_t sub_2545F7160()
{
  result = qword_27F606C90;
  if (!qword_27F606C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C90);
  }

  return result;
}

unint64_t sub_2545F71B4()
{
  result = qword_27F606C98;
  if (!qword_27F606C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C98);
  }

  return result;
}

uint64_t INIntent.Error.hashValue.getter()
{
  sub_2545FF834();
  MEMORY[0x259C12730](0);
  return sub_2545FF864();
}

id sub_2545F7294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[7] = a1;
  v14[8] = a2;
  v14[9] = a3;
  v14[10] = a4;
  swift_beginAccess();
  sub_2545B40B0();
  sub_2545FE8E4();
  sub_2545FE6C4();
  sub_2545FE654();
  v6 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v7 = sub_2545FF164();

  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v8 = sub_2545FF7A4();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v9 = [v6 initWithAppBundleIdentifier:v7 linkAction:v8 linkActionMetadata:sub_2545FF7A4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  v10 = v9;
  v11 = sub_2545FF164();
  [v10 _setExtensionBundleId_];

  return v10;
}

id sub_2545F7448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[7] = a1;
  v12[8] = a2;
  swift_beginAccess();
  sub_2545E1578();
  sub_2545FE8E4();
  sub_2545FE6C4();
  sub_2545FE654();
  v4 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v5 = sub_2545FF164();

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v6 = sub_2545FF7A4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v7 = [v4 initWithAppBundleIdentifier:v5 linkAction:v6 linkActionMetadata:sub_2545FF7A4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v8 = v7;
  v9 = sub_2545FF164();
  [v8 _setExtensionBundleId_];

  return v8;
}

id static INIntent.createFromAppIntent<A>(_:extensionBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2545FE5F4();
  sub_2545FE6C4();
  sub_2545FE654();
  v5 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v6 = sub_2545FF164();

  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v7 = sub_2545FF7A4();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v8 = [v5 initWithAppBundleIdentifier:v6 linkAction:v7 linkActionMetadata:sub_2545FF7A4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);
  v9 = v8;
  v10 = sub_2545FF164();
  [v9 _setExtensionBundleId_];

  return v9;
}

id static INIntent.XLModuleDefaultConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v16 - v1;
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v3 = sub_2545B027C();
  if (v3 && (v4 = v3, v5 = sub_2545FA83C(), v4, v5))
  {
    v6 = v5;
    v7 = [v6 uniqueIdentifier];
    sub_2545FEAC4();

    v8 = [v6 name];
    v9 = sub_2545FF174();
    v11 = v10;

    v12 = type metadata accessor for SelectedHomeEntity(0);
    v13 = &v2[*(v12 + 20)];
    *v13 = v9;
    v13[1] = v11;
    (*(*(v12 - 8) + 56))(v2, 0, 1, v12);
    HomeXLModuleConfigurationIntent.init(home:)(v2, v16);
  }

  else
  {
    HomeXLModuleConfigurationIntent.init()(v16);
  }

  v14 = sub_2545F7294(v16[0], v16[1], v16[2], v16[3], 0xD000000000000029, 0x8000000254603C90);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return v14;
}

id static INIntent.SingleTileDefaultConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v6 = sub_2545B027C();
  if (v6 && (v7 = v6, v8 = sub_2545FA83C(), v7, v8))
  {
    v9 = v8;
    v10 = [v9 uniqueIdentifier];
    sub_2545FEAC4();

    v11 = [v9 name];
    v12 = sub_2545FF174();
    v14 = v13;

    v15 = type metadata accessor for SelectedHomeEntity(0);
    v16 = &v5[*(v15 + 20)];
    *v16 = v12;
    v16[1] = v14;
    (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
    v17 = type metadata accessor for HomeSingleTileEntity(0);
    (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
    HomeSingleTileConfigurationIntent.init(home:item:)(v5, v2, v22);
  }

  else
  {
    v18 = type metadata accessor for SelectedHomeEntity(0);
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = type metadata accessor for HomeSingleTileEntity(0);
    (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
    HomeSingleTileConfigurationIntent.init(home:item:)(v5, v2, v22);
  }

  v20 = sub_2545F7448(v22[0], v22[1], 0xD000000000000029, 0x8000000254603C90);
  sub_2545FEA14();
  sub_2545FEA14();
  return v20;
}

uint64_t sub_2545F7C30()
{
  type metadata accessor for AppIntentRegistration();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_27F60AE08 = v0;
  return result;
}

uint64_t sub_2545F7C74()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CE8, &qword_254602FB0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545F7D10, v0, 0);
}

uint64_t sub_2545F7D10()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 112));
  if (*(v1 + 120))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v3 = v0[3];
    sub_2545FF364();
    v4 = sub_2545FF384();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v2 = sub_2545F8678(0, 0, v3, &unk_254602FC0, v5);
    sub_2545B612C(v3, &qword_27F606CE8, &qword_254602FB0);
    *(v1 + 120) = v2;
    sub_2545FE8F4();
  }

  v0[4] = v2;
  sub_2545FE8F4();
  os_unfair_lock_unlock((v1 + 112));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2545F7E9C;

  return MEMORY[0x282200460]();
}

uint64_t sub_2545F7E9C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2545F7FAC, v1, 0);
}

uint64_t sub_2545F7FAC()
{
  sub_2545FEA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545F8014()
{
  v1 = sub_2545FEFF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545F80D0, 0, 0);
}

uint64_t sub_2545F80D0()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  v2 = sub_2545FF084();
  v3 = sub_2545FF474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2545AB000, v2, v3, "AppIntentRegistration.registerWidgetIntents() started", v4, 2u);
    MEMORY[0x259C12CB0](v4, -1, -1);
  }

  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = sub_2545FF024();
  v9 = __swift_project_value_buffer(v8, qword_27F60ADF0);
  sub_2545FEFE4();
  sub_2545F83E0("AppManager.register", 19, 2, v5, v9);
  (*(v6 + 8))(v5, v7);
  v10 = sub_2545FF084();
  v11 = sub_2545FF474();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2545AB000, v10, v11, "AppIntentRegistration.registerWidgetIntents() finished", v12, 2u);
    MEMORY[0x259C12CB0](v12, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2545F83E0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v25 = a1;
  v9 = sub_2545FEFF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a5;
  v13 = sub_2545FF014();
  v14 = sub_2545FF494();
  result = sub_2545FF4C4();
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v10 + 16))(v12, a4, v9);
    sub_2545FF064();
    swift_allocObject();
    v18 = sub_2545FF054();
    sub_2545FE6F4();
    sub_2545FE6D4();
    type metadata accessor for IntentsService();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_2545FE6E4();
    sub_2545FEA14();

    sub_2545FA594(v24, v25, a2, v7, v18);
    return sub_2545FEA14();
  }

  v23 = v7;
  v22 = a2;
  if ((v7 & 1) == 0)
  {
    if (v25)
    {
      v16 = v25;
LABEL_10:
      v7 = swift_slowAlloc();
      *v7 = 0;
      v17 = sub_2545FEFD4();
      _os_signpost_emit_with_name_impl(&dword_2545AB000, v13, v14, v17, v16, "", v7, 2u);
      MEMORY[0x259C12CB0](v7, -1, -1);

      LOBYTE(v7) = v23;
      a2 = v22;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v25 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v16 = &v26;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2545F8678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CE8, &qword_254602FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2545FA3B4(a3, v25 - v10);
  v12 = sub_2545FF384();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_2545FE8F4();
  if (v14 == 1)
  {
    sub_2545B612C(v11, &qword_27F606CE8, &qword_254602FB0);
  }

  else
  {
    sub_2545FF374();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();
  sub_2545FEA14();
  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2545FF334();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2545FF194() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_2545FE8F4();
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
      sub_2545FEA14();
      sub_2545FEA14();
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

uint64_t sub_2545F8928()
{
  sub_2545B612C(v0 + 120, &qword_27F606CE0, &qword_254602FA8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static INIntentUtils.fromTypeErasedAppIntent(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x2822009F8](sub_2545F899C, 0, 0);
}

uint64_t sub_2545F899C()
{
  v73 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_2545FF0A4();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v72[0] = v8;
    *v7 = 136315138;
    *(v0 + 128) = v6;
    sub_2545FA224(0, &qword_27F606CC8, 0x277CD3D30);
    v9 = v6;
    v10 = sub_2545FF184();
    v12 = sub_2545F0FB4(v10, v11, v72);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2545AB000, v4, v5, "INIntentUtils.fromTypeErasedAppIntent attempting to resolve %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    v21 = INTypedIntentWithIntent();
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    v23 = sub_2545FF084();
    v24 = sub_2545FF454();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v72[0] = v26;
      *v25 = 136315138;
      *(v0 + 112) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CA8, &qword_254602E68);
      v27 = sub_2545FF184();
      v29 = sub_2545F0FB4(v27, v28, v72);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2545AB000, v23, v24, "INIntent does not conform to AppIntent: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259C12CB0](v26, -1, -1);
      MEMORY[0x259C12CB0](v25, -1, -1);
    }

    sub_2545F9F90();
    swift_allocError();
    swift_willThrow();
    goto LABEL_35;
  }

  v14 = *(v0 + 144);
LABEL_7:
  *(v0 + 160) = v13;
  sub_2545FECC4();
  v15 = v13;
  if (sub_2545FECA4() == 7 || [objc_opt_self() isSpringBoard])
  {
    v16 = sub_2545FF084();
    v17 = sub_2545FF444();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2545AB000, v16, v17, "INIntentUtils.fromTypeErasedAppIntent called from inside SpringBoard", v18, 2u);
      MEMORY[0x259C12CB0](v18, -1, -1);
    }

    if (qword_27F6063E0 != -1)
    {
      swift_once();
    }

    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_2545F9380;

    return sub_2545F7C74();
  }

  v30 = [*(v0 + 160) linkAction];
  *(v0 + 176) = v30;
  if (!v30)
  {
    v53 = *(v0 + 160);
    v54 = sub_2545FF084();
    v55 = sub_2545FF454();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 160);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72[0] = v58;
      *v57 = 136315138;
      *(v0 + 120) = v56;
      sub_2545FA224(0, &qword_27F606CB0, 0x277CD3A70);
      v59 = v56;
      v60 = sub_2545FF184();
      v62 = sub_2545F0FB4(v60, v61, v72);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_2545AB000, v54, v55, "Failed to lazily load link for: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x259C12CB0](v58, -1, -1);
      MEMORY[0x259C12CB0](v57, -1, -1);
    }

    v63 = *(v0 + 160);
    sub_2545F9F90();
    swift_allocError();
    swift_willThrow();

LABEL_35:
    v64 = *(v0 + 8);

    return v64();
  }

  v31 = v30;
  v32 = sub_2545FF084();
  v33 = sub_2545FF474();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v72[0] = v35;
    *v34 = 136315138;
    v36 = [v31 identifier];
    v37 = sub_2545FF174();
    v39 = v38;

    v40 = sub_2545F0FB4(v37, v39, v72);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_2545AB000, v32, v33, "INIntentUtils.fromTypeErasedAppIntent resolving %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x259C12CB0](v35, -1, -1);
    MEMORY[0x259C12CB0](v34, -1, -1);
  }

  v41 = [v31 identifier];
  v42 = sub_2545FF174();
  v44 = v43;

  if (v42 == 0xD00000000000001FLL && 0x8000000254603CC0 == v44 || (sub_2545FF7B4() & 1) != 0)
  {
    v45 = *(v0 + 136);

    *(v0 + 104) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
    *(v0 + 80) = v31;
    v46 = v0 + 80;
    v47 = &type metadata for HomeXLModuleConfigurationIntent;
    v45[3] = &type metadata for HomeXLModuleConfigurationIntent;
    v48 = sub_2545B40B0();
    v45[4] = v48;
    v49 = swift_allocObject();
    *v45 = v49;
    v50 = v31;
    v51 = swift_task_alloc();
    *(v0 + 184) = v51;
    *v51 = v0;
    v51[1] = sub_2545F9A40;
    v52 = v49 + 16;
LABEL_29:

    return MEMORY[0x28210B540](v52, v46, v47, v48);
  }

  if (v42 == 0xD000000000000021 && 0x8000000254603CE0 == v44)
  {

LABEL_42:
    v66 = *(v0 + 136);
    *(v0 + 72) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
    *(v0 + 48) = v31;
    v46 = v0 + 48;
    v47 = &type metadata for HomeSingleTileConfigurationIntent;
    *(v66 + 24) = &type metadata for HomeSingleTileConfigurationIntent;
    v48 = sub_2545E1578();
    *(v66 + 32) = v48;
    v67 = v31;
    v68 = swift_task_alloc();
    *(v0 + 200) = v68;
    *v68 = v0;
    v68[1] = sub_2545F9BCC;
    v52 = *(v0 + 136);
    goto LABEL_29;
  }

  v65 = sub_2545FF7B4();

  if (v65)
  {
    goto LABEL_42;
  }

  *(v0 + 40) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
  *(v0 + 16) = v31;
  v69 = v31;
  v70 = swift_task_alloc();
  *(v0 + 216) = v70;
  *v70 = v0;
  v70[1] = sub_2545F9CE8;
  v71 = *(v0 + 136);

  return MEMORY[0x28210B2A0](v71, v0 + 16);
}

uint64_t sub_2545F9380()
{

  return MEMORY[0x2822009F8](sub_2545F947C, 0, 0);
}

uint64_t sub_2545F947C()
{
  v46 = v0;
  v1 = [*(v0 + 160) linkAction];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_2545FF084();
    v4 = sub_2545FF474();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v45[0] = v6;
      *v5 = 136315138;
      v7 = [v2 identifier];
      v8 = sub_2545FF174();
      v10 = v9;

      v11 = sub_2545F0FB4(v8, v10, v45);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_2545AB000, v3, v4, "INIntentUtils.fromTypeErasedAppIntent resolving %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x259C12CB0](v6, -1, -1);
      MEMORY[0x259C12CB0](v5, -1, -1);
    }

    v12 = [v2 identifier];
    v13 = sub_2545FF174();
    v15 = v14;

    v16 = v13 == 0xD00000000000001FLL && 0x8000000254603CC0 == v15;
    if (v16 || (sub_2545FF7B4() & 1) != 0)
    {
      v17 = *(v0 + 136);

      *(v0 + 104) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
      *(v0 + 80) = v2;
      v18 = v0 + 80;
      v19 = &type metadata for HomeXLModuleConfigurationIntent;
      v17[3] = &type metadata for HomeXLModuleConfigurationIntent;
      v20 = sub_2545B40B0();
      v17[4] = v20;
      v21 = swift_allocObject();
      *v17 = v21;
      v22 = v2;
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v23[1] = sub_2545F9A40;
      v24 = v21 + 16;
LABEL_10:

      return MEMORY[0x28210B540](v24, v18, v19, v20);
    }

    if (v13 == 0xD000000000000021 && 0x8000000254603CE0 == v15)
    {

LABEL_22:
      v38 = *(v0 + 136);
      *(v0 + 72) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
      *(v0 + 48) = v2;
      v18 = v0 + 48;
      v19 = &type metadata for HomeSingleTileConfigurationIntent;
      *(v38 + 24) = &type metadata for HomeSingleTileConfigurationIntent;
      v20 = sub_2545E1578();
      *(v38 + 32) = v20;
      v39 = v2;
      v40 = swift_task_alloc();
      *(v0 + 200) = v40;
      *v40 = v0;
      v40[1] = sub_2545F9BCC;
      v24 = *(v0 + 136);
      goto LABEL_10;
    }

    v37 = sub_2545FF7B4();

    if (v37)
    {
      goto LABEL_22;
    }

    *(v0 + 40) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
    *(v0 + 16) = v2;
    v41 = v2;
    v42 = swift_task_alloc();
    *(v0 + 216) = v42;
    *v42 = v0;
    v42[1] = sub_2545F9CE8;
    v43 = *(v0 + 136);

    return MEMORY[0x28210B2A0](v43, v0 + 16);
  }

  else
  {
    v25 = *(v0 + 160);
    v26 = sub_2545FF084();
    v27 = sub_2545FF454();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 160);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45[0] = v30;
      *v29 = 136315138;
      *(v0 + 120) = v28;
      sub_2545FA224(0, &qword_27F606CB0, 0x277CD3A70);
      v31 = v28;
      v32 = sub_2545FF184();
      v34 = sub_2545F0FB4(v32, v33, v45);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2545AB000, v26, v27, "Failed to lazily load link for: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C12CB0](v30, -1, -1);
      MEMORY[0x259C12CB0](v29, -1, -1);
    }

    v35 = *(v0 + 160);
    sub_2545F9F90();
    swift_allocError();
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_2545F9A40()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    v3 = sub_2545F9E1C;
  }

  else
  {
    v3 = sub_2545F9B5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545F9B5C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545F9BCC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_2545F9E94;
  }

  else
  {
    v3 = sub_2545FA830;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545F9CE8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = sub_2545F9F0C;
  }

  else
  {
    sub_2545B612C(v2 + 16, &qword_27F606CC0, &qword_254602E70);
    v3 = sub_2545FA830;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545F9E1C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2545F9E94()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2545F9F0C()
{
  v1 = *(v0 + 160);

  sub_2545B612C(v0 + 16, &qword_27F606CC0, &qword_254602E70);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_2545F9F90()
{
  result = qword_27F606CA0;
  if (!qword_27F606CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606CA0);
  }

  return result;
}