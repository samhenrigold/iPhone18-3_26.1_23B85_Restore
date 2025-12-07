uint64_t sub_1C0FB126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosDetailsPresentationSourceView(255, *(a1 + 8), *(a1 + 32), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148, &qword_1C12AD448);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92150, &qword_1C12AD450);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92158, &qword_1C12AD458);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_1C0FDB6D4(v4, &qword_1EBE92148, &qword_1C12AD448, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_21();
  sub_1C0FDB6D4(v6, &qword_1EBE92150, &qword_1C12AD450, v7);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EBE92170, &qword_1EBE92158, &qword_1C12AD458, &qword_1C12AD448);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_13_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  sub_1C0FDB6D4(v9, qword_1EBE92178, &unk_1C12AD460, v10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v11, &unk_1EBE92EC0, &qword_1C12A8E00, v12);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v13, &qword_1EBE91C40, &unk_1C12A7010, v14);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v15, &unk_1EBE92ED0, &unk_1C12A8E80, v16);
  swift_getWitnessTable();
  sub_1C100D614();
  swift_getWitnessTable();
  v17 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v17, v8, v18, v19);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB15D8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922D8, &qword_1C12AD590);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C0FB1640(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922D8, &qword_1C12AD590);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FB16B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C0FB170C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 sub_1C0FB179C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FB17A8()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosObservablePerson.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB17D8()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosObservablePerson.selectionIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1808()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosObservablePerson.isPet.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FB1860()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosObservablePerson.isFavorite.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FB18B8()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosObservablePerson.canFavorite.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FB1978()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1073FD8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB19A4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10741A4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB19D0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1074348();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1A50()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1074C2C();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB1A9C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1074E70();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB1AE8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C10750B4();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB1B34()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C10752F8();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB1B80()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C107553C();
  return OUTLINED_FUNCTION_12(v0);
}

void sub_1C0FB1BCC()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C1075780();
  *v0 = v1;
}

uint64_t sub_1C0FB1BF8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10759DC();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB1C24()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1075C6C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1D34(uint64_t a1)
{
  OUTLINED_FUNCTION_0_27();
  result = sub_1C1076D44(v2, v3, &protocol conformance descriptor for PhotosMockAlbum);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FB1D7C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_27();
  result = sub_1C1076D44(v2, v3, &protocol conformance descriptor for PhotosMockAlbum);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FB1DD4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1078370();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1E00()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1078564();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1E2C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1078734();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C0FB1EB0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1078E64();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FB1F04()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1079044();
  *v0 = result & 1;
  return result;
}

void sub_1C0FB1F58()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C10792B4();
  *v0 = v1;
}

uint64_t sub_1C0FB1F8C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10797A4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1FB8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1079914();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB1FE4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.oneUpChromeSpec.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FB2024(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v11 = &a1[*(a3 + 28)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1C0FB20B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = &v5[*(a4 + 28)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FB21D4(void *a1)
{
  sub_1C1263190();
  sub_1C107C3D8();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB2270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1263780();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FB236C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v45 = v2;
  v46 = *(a1 + 8);
  v44 = v46;
  v47 = v3;
  v7 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v45);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  OUTLINED_FUNCTION_14_13();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1C1089684();
  v12 = sub_1C1089FD0();
  v45 = v7;
  *&v46 = MEMORY[0x1E6981CD8];
  *(&v46 + 1) = v8;
  v47 = v9;
  v48 = WitnessTable;
  v49 = MEMORY[0x1E6981CD0];
  v50 = v11;
  v51 = v12;
  OUTLINED_FUNCTION_12_10();
  swift_getOpaqueTypeMetadata2();
  v13 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v13, v6, v14);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v15 = sub_1C12655A0();
  OUTLINED_FUNCTION_22_2(255, v4, v5, v15);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C12652C0();
  v16 = sub_1C1263190();
  v17 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4(v17, v18, v16);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  v19 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_4(v19, v20, v44);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  sub_1C1263C30();
  v21 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_2(v21, v22, v23, v44);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_26();
  sub_1C12652C0();
  OUTLINED_FUNCTION_52();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  sub_1C0FDB6D4(v24, qword_1EBE92178, &unk_1C12AD460, v25);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v26, &unk_1EBE92EC0, &qword_1C12A8E00, v27);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v28, &qword_1EBE91C40, &unk_1C12A7010, v29);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v30, &unk_1EBE92ED0, &unk_1C12A8E80, v31);
  swift_getWitnessTable();
  v32 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v32, v33, v34, v35);
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  v36 = sub_1C1263190();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v37 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v37, v36, v38, v39);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0, &qword_1C12AE8D0);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  sub_1C1263190();
  v40 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_22_2(v40, v41, v42, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12654C0();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  sub_1C100D614();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB2AF0()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1C0FB2B88(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928B0, &qword_1C12AF118);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v1, &qword_1EBE928B0, &qword_1C12AF118, v2);
  return OUTLINED_FUNCTION_0_29();
}

uint64_t sub_1C0FB2C00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosDetailsPresentationSourceView(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1C0FB2C48(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A70, &unk_1C12AF120);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C0FDB6D4(&qword_1EDE7B9F0, &qword_1EBE97A70, &unk_1C12AF120, MEMORY[0x1E6980758]);
  return OUTLINED_FUNCTION_0_29();
}

uint64_t sub_1C0FB2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 16);
  type metadata accessor for PhotosDetailsPresentationSourceView(0, v6, *(v5 + 24), a4);
  OUTLINED_FUNCTION_10_4();
  v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v9 + 8))(v8, v6);

  v10 = v8 + *(v4 + 56);
  if (*(v10 + 32))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }
  }

  else
  {
  }

  v11 = OUTLINED_FUNCTION_6_17(v8 + *(v4 + 60));
  sub_1C1094934(v11, v13, v14, v15, v16, v17, *(v12 + 48));
  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8, &unk_1C12AF160);
  OUTLINED_FUNCTION_4_2();
  (*(v18 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928D0, &qword_1C12AF268);

  return swift_deallocObject();
}

uint64_t sub_1C0FB2EBC()
{
  MEMORY[0x1C68F1710](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C0FB2EF4()
{

  if (*(v0 + 24))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C0FB2F54()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FB2F8C(uint64_t *a1)
{
  sub_1C1034138();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  OUTLINED_FUNCTION_9_16();
  sub_1C1263C30();
  OUTLINED_FUNCTION_9_16();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928C0, &qword_1C12AF258);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_9_16();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928C8, &qword_1C12AF260);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_9_16();
  sub_1C1263C30();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263C30();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v1, &unk_1EBE92EC0, &qword_1C12A8E00, v2);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0, &qword_1C12AF258, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8, &qword_1C12AF260, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1C0FB342C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FB3438()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109AC64();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB3468()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109AD9C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB34F8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C109B19C();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB3548()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C109B2BC();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB3598()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C109B3DC();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB35E8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C109B4FC();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB3638()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C109B61C();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB3688()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109B784();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB36B8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109B8A8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB36E8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109B9E0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB3718()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109BB60();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB3774()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C109BFCC();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB38DC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C68ECE30]();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FB3908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12637A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FB3948()
{

  swift_unknownObjectRelease();

  sub_1C105861C(*(v0 + 64), *(v0 + 72));
  sub_1C1008DBC(*(v0 + 80), *(v0 + 88));
  sub_1C1008DBC(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1C0FB39B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109E9E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FB3A4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosFavoriteBadge(255, *a1, *(a1[2] + 8), a4);
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91358, &qword_1C12A8590);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_8_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  sub_1C0FDB6D4(v4, v5, &qword_1C12A8590, v6);
  swift_getWitnessTable();
  sub_1C109F0EC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91970, &unk_1C12A5EE0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C90, &qword_1C12BC110);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_24();
  sub_1C0FDB6D4(v7, &unk_1EBE91970, &unk_1C12A5EE0, v8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v9, &qword_1EBE95C90, &qword_1C12BC110, v10);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB3CAC(void *a1)
{
  sub_1C1263190();
  sub_1C10A04F0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB3D38@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.shelfHeightOverride.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C0FB3D78()
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  v23[0] = *(v1 + 16);
  v22 = *&v23[0];
  v20 = v3;
  v23[1] = v3;
  v24 = v2;
  v25 = *(v1 + 56);
  v19 = v25;
  type metadata accessor for PhotosItemsListRow(0, v23);
  OUTLINED_FUNCTION_10_4();
  v21 = *(v5 + 64);
  v6 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  OUTLINED_FUNCTION_15_1();
  v8 = *(v7 + 8);
  v9 = *(v7 + 80);
  v10 = v1 + v6;
  v8(v1 + v6, v22);

  v11 = v0[23];
  v13 = type metadata accessor for PhotosScrollViewModel(255, v20, v19, v12);
  OUTLINED_FUNCTION_46_0(v13);
  OUTLINED_FUNCTION_4_2();
  (*(v14 + 8))(v1 + v6 + v11);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v6 + v0[27]));
  OUTLINED_FUNCTION_24_9(v0[28]);
  OUTLINED_FUNCTION_24_9(v0[29]);
  OUTLINED_FUNCTION_1_10((v1 + v6 + v0[30]));
  OUTLINED_FUNCTION_24_9(v0[31]);
  v15 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_4_2();
    (*(v16 + 8))(v10 + v15);
  }

  else
  {
  }

  sub_1C1058610(*(v10 + v0[33]), *(v10 + v0[33] + 8), *(v10 + v0[33] + 9));
  v17 = v10 + v0[34];
  sub_1C1001C04(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));
  OUTLINED_FUNCTION_24_9(v0[35]);
  v8(v1 + ((v6 + v21 + v9) & ~v9), v22);
  return swift_deallocObject();
}

uint64_t sub_1C0FB4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a3 + 16);
  if (*(*(v7 - 8) + 84) != a2)
  {
    if (a2 == 0x7FFFFFFF)
    {
      v8 = *(a1 + *(a3 + 76));
      if (v8 >= 0xFFFFFFFF)
      {
        LODWORD(v8) = -1;
      }

      return (v8 + 1);
    }

    v10 = type metadata accessor for PhotosScrollViewModel(255, *(a3 + 32), *(a3 + 56), a4);
    v11 = OUTLINED_FUNCTION_46_0(v10);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v7 = v11;
      v12 = *(a3 + 92);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
      v12 = *(a3 + 128);
    }

    a1 = v6 + v12;
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_1C0FB4128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a4 + 16);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(result + *(a4 + 76)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for PhotosScrollViewModel(255, *(a4 + 32), *(a4 + 56), v7);
    v10 = OUTLINED_FUNCTION_46_0(v9);
    if (*(*(v10 - 8) + 84) == a3)
    {
      v7 = v10;
      v11 = *(a4 + 92);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
      v11 = *(a4 + 128);
    }

    result = v6 + v11;
  }

  return __swift_storeEnumTagSinglePayload(result, a2, a2, v7);
}

uint64_t sub_1C0FB4248(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50, &qword_1C12B0388);
  v68 = *(a1 + 16);
  v2 = *(a1 + 16);
  v61 = *(a1 + 40);
  v3 = v61;
  OUTLINED_FUNCTION_28_6();
  v4 = sub_1C12656A0();
  sub_1C10A3184();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for LazyHGridOrVGrid(v5, v4, v6, v7);
  v8 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for PhotosItemsListRow.ItemContainerView(v8, v9);
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosItemsListCellContainer(v11, v10, v12, v13);
  sub_1C1263190();
  OUTLINED_FUNCTION_8_19();
  swift_getWitnessTable();
  sub_1C1001354();
  swift_getWitnessTable();
  v14 = OUTLINED_FUNCTION_28_6();
  v16 = type metadata accessor for PhotosDraggableForEach(v14, v15);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v17 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for LazyHGridOrVGrid(v17, v16, v18, v19);
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_28_6();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  v20 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v21 = sub_1C12655C0();
  OUTLINED_FUNCTION_17_15(v21);
  v22 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosTestableScrollView(v22, v20, v23, v24);
  OUTLINED_FUNCTION_26_1();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A60, &unk_1C12B03A0);
  OUTLINED_FUNCTION_11_0();
  v25 = sub_1C1263190();
  OUTLINED_FUNCTION_23_5(v25, v26, v27, v28, v29, v30, v31, v32, v61, *(&v61 + 1), v68, *(&v68 + 1));
  OUTLINED_FUNCTION_9_3();
  sub_1C0FDB6D4(v33, &qword_1EBE92A60, &unk_1C12B03A0, v34);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_23_5(OpaqueTypeMetadata2, v36, v37, v38, v39, v40, v41, v42, v62, v65, v69, v72);
  swift_getOpaqueTypeMetadata2();
  v43 = sub_1C12643E0();
  OUTLINED_FUNCTION_23_5(v43, v44, v45, v46, v47, v48, v49, v50, v63, v66, v70, v73);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PhotosScrollPositionModifier(255, v2, v3, v51);
  v52 = sub_1C1263190();
  OUTLINED_FUNCTION_23_5(v52, v53, v54, v55, v56, v57, v58, v59, v64, v67, v71, v74);
  OUTLINED_FUNCTION_14_7();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB472C(void *a1)
{
  sub_1C1265AB0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262920();
  sub_1C1263C30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB4848(void *a1)
{
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C20, &unk_1C12A73D0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A78, &unk_1C12B07C8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  sub_1C0FDB6D4(v1, &qword_1EBE90C20, &unk_1C12A73D0, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v3, &qword_1EBE91C40, &unk_1C12A7010, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  sub_1C0FDB6D4(v5, &qword_1EBE92A78, &unk_1C12B07C8, v6);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB4AB4(void *a1)
{
  sub_1C1263190();
  sub_1C10A9F9C();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB4B18()
{

  OUTLINED_FUNCTION_2_10();

  return swift_deallocObject();
}

uint64_t sub_1C0FB4B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A98, &qword_1C12B07E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0FB4BE0()
{
  sub_1C0FF9034(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1C0FB4C1C()
{
  sub_1C0FF9034(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C0FB4D1C()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C88, &unk_1C12B0FE8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C0FB4D90(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1C1263190();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v2, &unk_1EBE92EC0, &qword_1C12A8E00, v3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v4, &qword_1EBE91C40, &unk_1C12A7010, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v6, &unk_1EBE92ED0, &unk_1C12A8E80, v7);
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v8, v1, v9, v10);
  sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  sub_1C1025E04();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB4F64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92990, &qword_1C12B1390);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  OUTLINED_FUNCTION_5_20(&qword_1EBE92E08);
  v4 = sub_1C1262E70();
  v7[0] = v1;
  v7[1] = &type metadata for OneUpToolbarSpacer;
  v7[2] = v2;
  v7[3] = &type metadata for OneUpToolbarSpacer;
  v7[4] = v3;
  OUTLINED_FUNCTION_9_17(v4, v5, v7);
  sub_1C1265B00();
  sub_1C1263C30();
  OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB50B8()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosHorizontalContainerLength.getter();
  return OUTLINED_FUNCTION_32(v0, v1);
}

uint64_t sub_1C0FB50E4()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosVerticalContainerLength.getter();
  return OUTLINED_FUNCTION_32(v0, v1);
}

uint64_t sub_1C0FB5110(void *a1)
{
  sub_1C1263190();
  sub_1C1001354();
  return OUTLINED_FUNCTION_10_7();
}

uint64_t sub_1C0FB5158(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92E20, &qword_1C12B1448);
  sub_1C1263190();
  sub_1C0FDB6D4(&qword_1EDE76D38, &qword_1EBE92E20, &qword_1C12B1448, MEMORY[0x1E6980A18]);
  return OUTLINED_FUNCTION_10_7();
}

uint64_t sub_1C0FB51E8()
{
  sub_1C1008DBC(*(v0 + 64), *(v0 + 72));
  sub_1C1058610(*(v0 + 80), *(v0 + 88), *(v0 + 89));
  sub_1C1058610(*(v0 + 96), *(v0 + 104), *(v0 + 105));

  return swift_deallocObject();
}

uint64_t sub_1C0FB5244()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92E28, &qword_1C12B1698);
  sub_1C0FDB6D4(&qword_1EDE7BB00, &qword_1EBE92E28, &qword_1C12B1698, MEMORY[0x1E697FDF8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FB52E0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C0FB5388@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C10B452C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0FB53B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosSnapshotProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FB5498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosMaterialTitleCellContentView(255, *(a1 + 8), *(a1 + 24), a4);
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_1C100D614();
  OUTLINED_FUNCTION_2_26();
  swift_getWitnessTable();
  sub_1C10A04F0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB5550(uint64_t *a1)
{
  type metadata accessor for PhotosAssetView(255);
  sub_1C1263C30();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EB8, &qword_1C12B19D8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1C1263190();
  OUTLINED_FUNCTION_10_17();
  sub_1C10B9338(v2, v3, &protocol conformance descriptor for PhotosAssetView);
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  sub_1C10239B0(v4, &qword_1EBE92EB8, &qword_1C12B19D8, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C10239B0(v6, &unk_1EBE92EC0, &qword_1C12A8E00, v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C10239B0(v8, &qword_1EBE91C40, &unk_1C12A7010, v9);
  OUTLINED_FUNCTION_22_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C10239B0(v10, &unk_1EBE92ED0, &unk_1C12A8E80, v11);
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  v12 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v12, v1, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EE8, &qword_1C12B19E0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  v15 = MEMORY[0x1E6980758];
  sub_1C10239B0(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  OUTLINED_FUNCTION_22_8();
  swift_getWitnessTable();
  sub_1C10239B0(&qword_1EDE7B9C8, &qword_1EBE92EE8, &qword_1C12B19E0, v15);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB58A8(uint64_t *a1)
{
  type metadata accessor for PhotosLegibilityBlurModifier(255);
  sub_1C1263190();
  sub_1C10BA420(qword_1EDE79E80, type metadata accessor for PhotosLegibilityBlurModifier, &unk_1C12B1EE4);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB5944(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
    v11 = &a1[*(a3 + 32)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1C0FB59D8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
    v8 = &v5[*(a4 + 32)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FB5A74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  v10[0] = *(v0 + 16);
  v10[1] = v1;
  v10[2] = v2;
  v4 = *(v0 + 56);
  v11 = *(v0 + 40);
  v9 = v11;
  v12 = v4;
  v13 = *(v0 + 72);
  v14 = v3;
  v5 = (type metadata accessor for PhotosMemoryCell(0, v10) - 8);
  v6 = v0 + ((*(*v5 + 80) + 96) & ~*(*v5 + 80));

  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v6 + v5[28], v1);
  (*(*(v2 - 8) + 8))(v6 + v5[29], v2);
  (*(*(v9 - 8) + 8))(v6 + v5[30]);
  v7 = v6 + v5[32];
  sub_1C1001C10(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), *(v7 + 104), *(v7 + 112), *(v7 + 120), *(v7 + 128), *(v7 + 136), *(v7 + 144), *(v7 + 152), *(v7 + 160), *(v7 + 168), *(v7 + 176), *(v7 + 184), *(v7 + 192), *(v7 + 200), *(v7 + 208));
  return swift_deallocObject();
}

uint64_t sub_1C0FB5C88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  v3 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0, &qword_1C12B2018);
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  sub_1C1263190();
  sub_1C10BB310();
  OUTLINED_FUNCTION_5_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, v1, v2, *(v3 + 16));
  sub_1C1264360();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  v4 = OUTLINED_FUNCTION_16_13();
  type metadata accessor for PhotosFavoriteBadge(v4, v1, v5, v6);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_10_18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  v7 = sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v8, &unk_1EBE92EC0, &qword_1C12A8E00, v9);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v10, &qword_1EBE91C40, &unk_1C12A7010, v11);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v12, &unk_1EBE92ED0, &unk_1C12A8E80, v13);
  swift_getWitnessTable();
  v14 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v14, v7, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_10_5();
  sub_1C0FDB6D4(v17, &unk_1EBE91C30, &qword_1C12B2020, v18);
  swift_getWitnessTable();
  sub_1C1025E04();
  swift_getWitnessTable();
  sub_1C10136B0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB6180()
{
  OUTLINED_FUNCTION_2_28(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C0FB6270(void *a1)
{
  v1 = sub_1C1263190();
  OUTLINED_FUNCTION_2_29(v1, MEMORY[0x1E6981840], v1);
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_1C12654C0();
  OUTLINED_FUNCTION_1_11();

  return swift_getWitnessTable();
}

uint64_t sub_1C0FB6398(uint64_t *a1)
{
  type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(255);
  sub_1C1263190();
  sub_1C0FFD15C();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB6404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1263420();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C0FB64B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C1263420();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0FB6558()
{
  v1 = (type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1C1263420();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v2);

  v4 = v2 + v1[8];
  sub_1C1001C10(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));

  return swift_deallocObject();
}

uint64_t sub_1C0FB674C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB6908()
{

  swift_unknownObjectRelease();
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FB69A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C0FB69F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C0FB6A84(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93490, &unk_1C12B3480);
  sub_1C1263190();
  sub_1C10C8D94();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB6AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1261E20();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C0FB6BB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C1261E20();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

__n128 sub_1C0FB6C94(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FB6CA0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FB6D10(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  v2 = OUTLINED_FUNCTION_3_5();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber.LibraryScrubberMask(v2, v3, v1, v4);
  OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_3_5();
  sub_1C1262B80();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_29();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C10CAB10();
  swift_getWitnessTable();
  sub_1C109739C();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB6ED8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C0FB6F10()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C0FB6F50()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

void sub_1C0FB6FD8()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C10CDE2C();
  *v0 = v1;
}

void sub_1C0FB7004()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C10CDDEC();
  *v0 = v1;
}

uint64_t sub_1C0FB7030()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10CDD50();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB7080()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10CDBAC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB716C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10CCA58();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB71BC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10CC9A8();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB7214()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10CB924();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB7298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FB732C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FB748C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.oneUpChromeActionsDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FB756C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93668, &unk_1C12B42F0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93670, &qword_1C12A7770);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  type metadata accessor for PhotosLegibilityBlurModifier(255);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  OUTLINED_FUNCTION_15_20();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  sub_1C1263190();
  v35 = v1;
  v36 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v33[22] = WitnessTable;
  v34 = sub_1C0FDB6D4(v3, &qword_1EBE91C40, &unk_1C12A7010, v4);
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  v33[20] = v5;
  v33[21] = sub_1C0FDB6D4(v6, &qword_1EBE93668, &unk_1C12B42F0, v7);
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x1E6980A18];
  v33[18] = v8;
  v33[19] = sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_24();
  v33[16] = v10;
  v33[17] = sub_1C10D7E94(v11, v12, &unk_1C12B1EE4);
  v33[14] = swift_getWitnessTable();
  v33[15] = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, v9);
  v33[12] = swift_getWitnessTable();
  v33[13] = v34;
  v13 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v33[10] = v13;
  v33[11] = sub_1C0FDB6D4(v14, &unk_1EBE92ED0, &unk_1C12A8E80, v15);
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5();
  v33[8] = v16;
  v33[9] = sub_1C0FDB6D4(v17, &unk_1EBE91C30, &qword_1C12B2020, v18);
  swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v19, v20, v21, v22);
  sub_1C1263190();
  sub_1C1263C30();
  OUTLINED_FUNCTION_20_0();
  v23 = sub_1C1263190();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640, &qword_1C12B42D8);
  v33[6] = WitnessTable;
  v33[7] = v1;
  OUTLINED_FUNCTION_19_0();
  v33[4] = swift_getWitnessTable();
  v33[5] = v34;
  v33[0] = v23;
  v33[1] = v24;
  v33[2] = swift_getWitnessTable();
  v33[3] = sub_1C10D3E38();
  type metadata accessor for PhotosContentTitleCard(255, v33);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_15_20();
  sub_1C1263190();
  OUTLINED_FUNCTION_17_17();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_7_23();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  sub_1C0FDB6D4(v25, qword_1EBE92178, &unk_1C12AD460, v26);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v27 = sub_1C12655C0();
  OUTLINED_FUNCTION_13_17(v27);
  v28 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v28, v29, v30, v31);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  sub_1C1263C30();
  swift_getWitnessTable();
  sub_1C100D614();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB7C5C()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1041AD8();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB7C88()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C11FDFD0();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FB7CE8()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FB7D30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93948, &qword_1C12B4EA8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FB7D90()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FB7DD0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosActionManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FB7E00(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A18, &qword_1C12B4F78);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_18();
  v4(v3);
  return a2;
}

uint64_t sub_1C0FB7E64(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A18, &qword_1C12B4F78);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FB7EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PhotosCellBadgeView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);
  v8 = v4 + v7 + v6[13];

  if (*(v8 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FB80C0(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(255, *a1, a1[1]);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_1_1();

  return swift_getWitnessTable();
}

uint64_t sub_1C0FB8124(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  OUTLINED_FUNCTION_4(255, v1, v1);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_2_35();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  v4 = sub_1C1263190();
  v5 = MEMORY[0x1E6981840];
  OUTLINED_FUNCTION_4(255, v4, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_4(255, v1, v2);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  v6 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4(v6, v7, v3);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262C50();
  OUTLINED_FUNCTION_22();
  v8 = sub_1C1263C30();
  sub_1C1263190();
  v9 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v9, v5, v10);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v11 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v11, v8, v12);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB83A8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A48, &qword_1C12B5338);
  sub_1C1263190();
  sub_1C10E3B04();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB84A0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10E5224();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB84CC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10E50A4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB84F8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C10E53B8();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB8544()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C10E55D4();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB8590()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C10E57F0();
  return OUTLINED_FUNCTION_12(v0);
}

void sub_1C0FB85DC()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C10E5A0C();
  *v0 = v1;
}

uint64_t sub_1C0FB8608()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10E5C34();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FB8634()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10E5E44();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C0FB8668()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C10E6014();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FB86B4(uint64_t a1)
{
  result = sub_1C10E6608(&qword_1EBE93A90, &protocol conformance descriptor for PhotosMockPerson);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FB8720(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AC8, &qword_1C12B5C18);
  sub_1C1263190();
  sub_1C0FDB6D4(&qword_1EBE93AD0, &qword_1EBE93AC8, &qword_1C12B5C18, MEMORY[0x1E6980758]);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB87D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  type metadata accessor for PhotosMemoryCellTextOverlayView(0, v7, *(v4 + 24), a4);
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_51_2();
  (*(v8 + 8))(v6, v7);
  v9 = v6 + *(v5 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AF0, &qword_1C12B5C70);
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AF8, &qword_1C12B5C78);

  return swift_deallocObject();
}

uint64_t sub_1C0FB8958(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_54(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AE0, &unk_1C12B5C60);
  v3 = OUTLINED_FUNCTION_26_7();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C0FB89D8()
{
  OUTLINED_FUNCTION_37_1();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AE0, &unk_1C12B5C60);
    v3 = OUTLINED_FUNCTION_26_7();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1C0FB8AA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosMemoryCellTextOverlay(255, a1[1], a1[3], a4);
  OUTLINED_FUNCTION_18_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB8B48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PhotosMemoryCellTextOverlay(255, *a1, a1[1], a4);
  v5 = OUTLINED_FUNCTION_4(255, MEMORY[0x1E6981840], v4);
  OUTLINED_FUNCTION_43_4(v5);
  OUTLINED_FUNCTION_19_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  v6 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_4();
  sub_1C0FDB6D4(v8, &qword_1EBE93AE8, &qword_1C12B77B0, v9);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB8C6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0, &qword_1C12B6058);
  OUTLINED_FUNCTION_38();
  if (*(v5 + 84) != a2)
  {
    return OUTLINED_FUNCTION_40_4();
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

void sub_1C0FB8D0C()
{
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0, &qword_1C12B6058);
  OUTLINED_FUNCTION_38();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_48_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 32)) = v0 + 3;
  }
}

uint64_t sub_1C0FB8DCC(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_54(*(a1 + 8));
  }

  type metadata accessor for TextAttributes(0);
  v3 = OUTLINED_FUNCTION_26_7();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C0FB8E40()
{
  OUTLINED_FUNCTION_37_1();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for TextAttributes(0);
    v3 = OUTLINED_FUNCTION_26_7();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1C0FB8EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhotosMemoryTitleLook(0);
  OUTLINED_FUNCTION_38();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1C12647F0();
    OUTLINED_FUNCTION_38();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 32);
    }

    else
    {
      v8 = sub_1C1263880();
      v12 = *(a3 + 36);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1C0FB8F84()
{
  OUTLINED_FUNCTION_25_5();
  type metadata accessor for PhotosMemoryTitleLook(0);
  OUTLINED_FUNCTION_38();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C12647F0();
    OUTLINED_FUNCTION_38();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 32);
    }

    else
    {
      v6 = sub_1C1263880();
      v10 = *(v2 + 36);
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1C0FB9058(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextAttributes(0);
  OUTLINED_FUNCTION_38();
  if (*(v5 + 84) != a2)
  {
    return OUTLINED_FUNCTION_40_4();
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

void sub_1C0FB90EC()
{
  OUTLINED_FUNCTION_25_5();
  type metadata accessor for TextAttributes(0);
  OUTLINED_FUNCTION_38();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_48_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 32)) = v0 + 3;
  }
}

uint64_t sub_1C0FB921C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C0FB9254()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C0FB92F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C58, &qword_1C12B6278);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C50, &qword_1C12B6270);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91A60, &qword_1C12AB090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C48, &qword_1C12B6268);
  sub_1C10F07D0();
  sub_1C1073248();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FB9404(uint64_t *a1)
{
  OUTLINED_FUNCTION_41_3();
  v4 = OUTLINED_FUNCTION_4(v1, v2, v3);
  OUTLINED_FUNCTION_43_4(v4);
  OUTLINED_FUNCTION_19_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v5 = sub_1C12655A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0, &unk_1C12AC500);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v6 = OUTLINED_FUNCTION_4(255, v5, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_43_4(v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_41_3();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_43_4(TupleTypeMetadata3);
  OUTLINED_FUNCTION_33_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  v8 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_43_4(v8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  sub_1C1263C30();
  sub_1C1263C30();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB9694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10521F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FB97C4(uint64_t a1)
{
  sub_1C1265710();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  sub_1C12655A0();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FB986C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C117024C();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FB98B4()
{
  OUTLINED_FUNCTION_10_20();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_31();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
  v5 = OUTLINED_FUNCTION_45(*(v4 + 52));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C0FB9930(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_20();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = OUTLINED_FUNCTION_45(*(v7 + 52));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1C0FB99B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneUpChromeBarlessView.ChromeBody(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D70, &qword_1C12B69E0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78, &qword_1C12B69E8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  swift_getWitnessTable();
  sub_1C10F8E04(&qword_1EDE7B960);
  OUTLINED_FUNCTION_2_26();
  swift_getWitnessTable();
  sub_1C10F8E04(&unk_1EDE7B970);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB9AEC()
{
  OUTLINED_FUNCTION_10_20();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_31();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
  v5 = OUTLINED_FUNCTION_45(*(v4 + 48));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C0FB9B68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_20();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
    v8 = OUTLINED_FUNCTION_45(*(v7 + 48));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1C0FB9C00(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E38, &qword_1C12B6BF8);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_18();
  v4(v3);
  return a2;
}

uint64_t sub_1C0FB9C64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for OneUpChromeBarlessView.ChromeBody.SafeAreaSpacer(255, *a1, v5, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D90, &qword_1C12B6B08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D98, &qword_1C12B6B10);
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(255, v4, v5, v6);
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78, &qword_1C12B69E8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_26();
  swift_getWitnessTable();
  sub_1C10F8E04(&unk_1EDE7B970);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FB9F94(void *a1)
{
  sub_1C1263190();
  sub_1C10FD204();
  OUTLINED_FUNCTION_1_34();
  return swift_getWitnessTable();
}

char *sub_1C0FB9FF4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

void sub_1C0FBA01C()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C10FEB40();
  *v0 = v1;
}

unint64_t sub_1C0FBA048(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1C1266BB0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1C0FE5EE8();
      sub_1C116E150(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1C0FBA0DC()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C10FF9C8();
  *v0 = v1;
}

uint64_t sub_1C0FBA108()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosSelection.isSelectionBandActive.getter();
  *v0 = result & 1;
  return result;
}

void sub_1C0FBA15C()
{
  OUTLINED_FUNCTION_13_1();
  PhotosSelection.preselectedIdentifiers.getter();
  *v0 = v1;
}

uint64_t sub_1C0FBA188()
{
  OUTLINED_FUNCTION_13_1();
  result = PhotosSelection.delegate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FBA1F4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  sub_1C1263190();
  sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBA2A0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C10FFD40();
  *v0 = result & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySo6CGSizeVGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C0FBA330()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FBA368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94190, &qword_1C12B7800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_1C0FBA414(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C0FBA4F0(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(255, v3);
  sub_1C1263190();
  sub_1C1263C30();
  OUTLINED_FUNCTION_1_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBA5E4()
{
  v1 = *(v0 + 56);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = v10;
  v13 = *(v0 + 40);
  v14 = v1;
  v2 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell(0, &v11);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80));
  swift_unknownObjectRelease();
  if (*(v3 + 16))
  {
  }

  (*(*(v10 - 8) + 8))(v3 + v2[23]);

  v4 = v2[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941E0, &qword_1C12B7CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263A80();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v2[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = v3 + v2[29];
  sub_1C1001C10(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104), *(v8 + 112), *(v8 + 120), *(v8 + 128), *(v8 + 136), *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168), *(v8 + 176), *(v8 + 184), *(v8 + 192), *(v8 + 200), *(v8 + 208));
  sub_1C1008DBC(*(v3 + v2[30]), *(v3 + v2[30] + 8));
  return swift_deallocObject();
}

uint64_t sub_1C0FBA8A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0, &unk_1C12B7CA0);
  v4 = *(v3 + 8);
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, v1, v2, v4);
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge(255, v1, *(v4 + 8), v5);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  v6 = sub_1C1263190();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v7, v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D8, &unk_1C12B7CB0);
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  swift_getWitnessTable();
  sub_1C100D614();
  swift_getWitnessTable();
  sub_1C10A04F0();
  swift_getWitnessTable();
  sub_1C10136B0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBAD7C(void *a1)
{
  sub_1C1263C30();
  OUTLINED_FUNCTION_19_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBAE0C(void *a1)
{
  sub_1C1265930();
  OUTLINED_FUNCTION_0_47();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBAE70(void *a1)
{
  sub_1C1265930();
  OUTLINED_FUNCTION_0_47();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBAED0(uint64_t a1)
{
  sub_1C1265930();
  OUTLINED_FUNCTION_0_47();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBB0CC()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FBB11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 24);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = *(a3 + 24);
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  v8 = *(a3 + 40);
  OUTLINED_FUNCTION_11_22();
  if (*(*(swift_getAssociatedTypeWitness() - 8) + 84) == v3)
  {
    a1 = OUTLINED_FUNCTION_45(*(a3 + 52));
    goto LABEL_5;
  }

  if (v3 == 0x7FFFFFFF)
  {
    v10 = *(v4 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = *(a3 + 32);
    v15[0] = *(a3 + 16);
    v15[1] = v5;
    v15[2] = v11;
    v15[3] = v8;
    type metadata accessor for PhotosAsyncImage.LoadingState(255, v15);
    sub_1C1262900();
    v12 = OUTLINED_FUNCTION_45(*(a3 + 64));
    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

uint64_t sub_1C0FBB27C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 + 24);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = a2;
    v8 = *(a4 + 24);
  }

  else
  {
    v11 = *(a4 + 40);
    result = swift_getAssociatedTypeWitness();
    if (*(*(result - 8) + 84) != a3)
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + *(a4 + 60)) = (a2 - 1);
      }

      else
      {
        v13 = *(a4 + 32);
        v17[0] = *(a4 + 16);
        v17[1] = v6;
        v17[2] = v13;
        v17[3] = v11;
        type metadata accessor for PhotosAsyncImage.LoadingState(255, v17);
        sub_1C1262900();
        v14 = OUTLINED_FUNCTION_45(*(a4 + 64));
        return __swift_storeEnumTagSinglePayload(v14, v15, a2, v16);
      }

      return result;
    }

    a1 = OUTLINED_FUNCTION_45(*(a4 + 52));
    v7 = a2;
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, v7, v8);
}

uint64_t sub_1C0FBB410(uint64_t a1)
{
  v1 = *(a1 + 24);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = v1;
  type metadata accessor for PhotosAsyncImage.Inner(255, &v12);
  v2 = sub_1C1263190();
  type metadata accessor for CGSize(255);
  v4 = v3;
  OUTLINED_FUNCTION_3_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C111A1EC();
  v12 = v2;
  *&v13 = v4;
  *(&v13 + 1) = WitnessTable;
  v14 = v6;
  OUTLINED_FUNCTION_4_38();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = v2;
  *&v13 = v4;
  *(&v13 + 1) = WitnessTable;
  v14 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = OpaqueTypeMetadata2;
  *&v13 = AssociatedTypeWitness;
  *(&v13 + 1) = OpaqueTypeConformance2;
  v14 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A70, &unk_1C12AF120);
  sub_1C1263190();
  v12 = OpaqueTypeMetadata2;
  *&v13 = AssociatedTypeWitness;
  *(&v13 + 1) = OpaqueTypeConformance2;
  v14 = v10;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C111AFBC();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBB670()
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  v15 = v1[2];
  v16 = v2;
  v17 = v4;
  v18 = v3;
  v5 = OUTLINED_FUNCTION_26_2();
  type metadata accessor for PhotosAsyncImage(v5, v6);
  OUTLINED_FUNCTION_17_10();
  v8 = v1 + ((*(v7 + 80) + 49) & ~*(v7 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v9 + 8))(v8, v2);
  v10 = v0[15];
  OUTLINED_FUNCTION_11_22();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_2();
  (*(v11 + 8))(&v8[v10]);

  v12 = &v8[v0[18]];
  v16 = v2;
  v17 = v4;
  v18 = v3;
  type metadata accessor for PhotosAsyncImage.LoadingState(255, &v15);
  OUTLINED_FUNCTION_36_0();
  sub_1C1265AC0();
  OUTLINED_FUNCTION_4_2();
  (*(v13 + 8))(v12);
  OUTLINED_FUNCTION_36_0();
  sub_1C1265AD0();

  return swift_deallocObject();
}

uint64_t sub_1C0FBB824(void *a1)
{
  sub_1C1263900();

  return swift_getWitnessTable();
}

uint64_t sub_1C0FBB8BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8, &qword_1C12AC400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE944B0, &unk_1C12B8660);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v1, &unk_1EBE92EC0, &qword_1C12A8E00, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v3, &qword_1EBE91C40, &unk_1C12A7010, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v5, &unk_1EBE92ED0, &unk_1C12A8E80, v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v7 = sub_1C12655A0();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v8, v7, v9, v10);
  sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  sub_1C100D614();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBBB0C(uint64_t a1)
{
  result = sub_1C111E1A0(&qword_1EBE94558, type metadata accessor for PhotosSocialGroupCell_Previews.MockModel, &unk_1C12B87C4);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1C0FBBBA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C0FBBBE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C111EB24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FBBC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollPositionModifier(255, a1[1], a1[3], a4);
  sub_1C1263190();
  OUTLINED_FUNCTION_14_7();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBBCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v6 = sub_1C1265790();

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1C0FBBD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  v6 = sub_1C1265790();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t sub_1C0FBBD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C111F674();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FBBE5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollPositionModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_14_7();
  swift_getWitnessTable();
  sub_1C1263DE0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FBBF6C()
{
  v1 = *(type metadata accessor for PhotosContainerWidthBlurLegibilityGradient(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + *(type metadata accessor for PhotosBlurLegibilityGradientSpec(0) + 40) + v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {

    v5 = *(v4 + 48);
    sub_1C1265A90();
    OUTLINED_FUNCTION_3();
    (*(v6 + 8))(v3 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FBC08C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_25();
  v5 = type metadata accessor for PhotosBlurLegibilityGradientSpec(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1C0FBC0D0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_25();
  v5 = type metadata accessor for PhotosBlurLegibilityGradientSpec(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1C0FBC118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_9_25();
  v7 = type metadata accessor for PhotosBlurLegibilityGradientSpec(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(v3 + *(a3 + 20));
      if (v10 >= 2)
      {
        return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1C0FBC1FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_9_25();
  result = type metadata accessor for PhotosBlurLegibilityGradientSpec(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v11 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C0FBC2CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
    v11 = &a1[*(a3 + 40)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1C0FBC354(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
    v8 = &v5[*(a4 + 40)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FBC3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0FBC424(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1C0FBC4B4()
{
  type metadata accessor for PhotosBlurLegibilityGradient(255);
  sub_1C11217A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FBC568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1125C88(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FBC59C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosPrefetchable.Image.SymbolVariants.Shape.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FBC638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C12636F0();
  *a1 = result;
  return result;
}

__n128 sub_1C0FBC840(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1C0FBC898(uint64_t a1)
{
  v2 = *(a1 + 32);
  v34 = *(a1 + 16);
  v36 = *a1;
  v35 = v36;
  v37 = v34;
  v38 = v2;
  v39 = *(a1 + 40);
  v33 = v39;
  v3 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(255, &v36);
  OUTLINED_FUNCTION_4_40();
  WitnessTable = swift_getWitnessTable();
  v36.i64[0] = v3;
  v36.i64[1] = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_14();
  OUTLINED_FUNCTION_11_0();
  v5 = sub_1C12655C0();
  v36 = vzip1q_s64(v35, v34);
  v37.i64[0] = v5;
  v37.i64[1] = v2;
  v38 = v33;
  sub_1C12656A0();
  OUTLINED_FUNCTION_13_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v6 = sub_1C12628C0();
  OUTLINED_FUNCTION_7_28();
  v7 = swift_getWitnessTable();
  v36.i64[0] = v6;
  v36.i64[1] = v7;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_14();
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosTestableScrollView(v8, v1, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90, &qword_1C12A9910);
  OUTLINED_FUNCTION_22_13(v11);
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(255, v34.i64[0], v33, v12);
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94750, &qword_1C12B9D28);
  OUTLINED_FUNCTION_11_0();
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_26_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  sub_1C0FDB6D4(v14, &qword_1EBE90B90, &qword_1C12A9910, v15);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_23();
  sub_1C112CDA8(v16, v17, &unk_1C12A9AE4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_23();
  sub_1C0FDB6D4(v18, &qword_1EBE94750, &qword_1C12B9D28, v19);
  v20 = swift_getWitnessTable();
  v36.i64[0] = v13;
  v36.i64[1] = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A60, &unk_1C12B03A0);
  OUTLINED_FUNCTION_11_0();
  v21 = sub_1C1263190();
  v36.i64[0] = v13;
  v36.i64[1] = v20;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9_3();
  sub_1C0FDB6D4(v22, &qword_1EBE92A60, &unk_1C12B03A0, v23);
  v24 = swift_getWitnessTable();
  v36.i64[0] = v21;
  v36.i64[1] = v24;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PhotosScrollPositionModifier(255, v34.i64[0], v33, v25);
  v26 = sub_1C1263190();
  v36.i64[0] = v21;
  v36.i64[1] = v24;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_14_7();
  swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = MEMORY[0x1E697C890];
  v36.i64[0] = v26;
  v36.i64[1] = MEMORY[0x1E697C890];
  v29 = MEMORY[0x1E697C888];
  v37.i64[0] = v27;
  v37.i64[1] = MEMORY[0x1E697C888];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36.i64[0] = v26;
  v36.i64[1] = v28;
  v37.i64[0] = v27;
  v37.i64[1] = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36.i64[0] = OpaqueTypeMetadata2;
  v36.i64[1] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_1_38();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FBCDE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosSelectionBandDisabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FBCEB8@<X0>(uint64_t *a1@<X8>)
{
  result = PXSyntheticAsset.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FBCEE4()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FBCF34(uint64_t *a1)
{
  type metadata accessor for PhotosTaskWithDelayViewModifier(255);
  sub_1C1263190();
  sub_1C11326C0(&qword_1EBE94840, type metadata accessor for PhotosTaskWithDelayViewModifier, &unk_1C12BA334);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBCFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1262720();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FBD058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1262720();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FBD0D8()
{
  type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  OUTLINED_FUNCTION_17_10();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = *(v0 + 32);
  sub_1C1262720();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_1C0FBD1AC()
{
  type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  OUTLINED_FUNCTION_17_10();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 32);
  sub_1C1262720();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_1C0FBD2D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94880, &qword_1C12BA3F8);
  type metadata accessor for PhotosFavoriteBadge(255, v1, *(v2 + 8), v3);
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888, &qword_1C12BA400);
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0, &unk_1C12AC500);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v4, &unk_1EBE92EC0, &qword_1C12A8E00, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v6, &qword_1EBE91C40, &unk_1C12A7010, v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v8, &unk_1EBE92ED0, &unk_1C12A8E80, v9);
  return swift_getWitnessTable();
}

__n128 sub_1C0FBD690(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1C0FBD6A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94960, &unk_1C12BA920);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FBD77C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94960, &unk_1C12BA920);
  sub_1C1266790();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  sub_1C12639F0();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BE8, &unk_1C12AC0F8);
  sub_1C1263190();
  OUTLINED_FUNCTION_8_34();
  sub_1C0FDB6D4(v1, &qword_1EBE94960, &unk_1C12BA920, v2);
  OUTLINED_FUNCTION_6_29();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61_0();
  sub_1C0FDB6D4(v3, &qword_1EBE91BE8, &unk_1C12AC0F8, v4);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBD914()
{
  OUTLINED_FUNCTION_19_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1C0FBD9E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v8 = v1;
  v3 = *(type metadata accessor for PhotosLoopingItemsPageControl(0, v7) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1C0FBDB0C()
{
  v1 = *(v0 + 48);
  v11 = *(v0 + 32);
  v2 = *(v0 + 32);
  v3 = *(sub_1C1266790() - 8);
  v4 = *(v3 + 64);
  v5 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v12[0] = *(v0 + 16);
  v12[1] = v11;
  v13 = v1;
  type metadata accessor for PhotosLoopingItemsPageControl(0, v12);
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 80);
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v2))
  {
    OUTLINED_FUNCTION_15_1();
    (*(v8 + 8))(v0 + v5, v2);
  }

  OUTLINED_FUNCTION_15_1();
  (*(v9 + 8))(v0 + ((v5 + v4 + v7) & ~v7));

  return swift_deallocObject();
}

uint64_t sub_1C0FBDD24()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C113C7F4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FBDD78()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C113CA18();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FBDDD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_1C0FBDE08()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C113CB98();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FBDE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PhotosShapeOverlay(255, *(a1 + 8), *(a1 + 24), a4);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_1_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBDED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosShapeOverlay(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_1_39();
  swift_getWitnessTable();
  sub_1C1263DE0();
  sub_1C100AE3C();
  sub_1C12638F0();
  OUTLINED_FUNCTION_4_43();
  swift_getWitnessTable();
  sub_1C12629C0();
  OUTLINED_FUNCTION_3_38();
  swift_getWitnessTable();
  v4 = sub_1C12633A0();
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_5_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBDFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FBE070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FBE144(void *a1)
{
  sub_1C1263190();
  sub_1C100D614();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBE1B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11418D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FBE220(uint64_t *a1)
{
  type metadata accessor for PhotosKeySelection(255);
  sub_1C1263190();
  sub_1C1142350(qword_1EDE82888, type metadata accessor for PhotosKeySelection, &unk_1C12BB4C4);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBE2BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1C1263240();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C0FBE38C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1C1263240();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C0FBE45C()
{
  v1 = type metadata accessor for PhotosKeySelection(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1C1008DBC(*v2, *(v2 + 8));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  sub_1C1263240();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

uint64_t sub_1C0FBE5C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1142774();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FBE5F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11429A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FBE61C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C0FBE6B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FBE770()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C0FBE7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CA8, &qword_1C12BBB10);
  sub_1C1263270();
  sub_1C114615C();
  sub_1C1146240(&qword_1EBE94CE8, MEMORY[0x1E697C1D8], MEMORY[0x1E697C1D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FBE8E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11480C8();
  *a1 = result & 1;
  return result;
}

__n128 sub_1C0FBE940(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C0FBEA18@<X0>(void *a1@<X8>)
{
  result = sub_1C1262D40();
  *a1 = v3;
  return result;
}

uint64_t sub_1C0FBEA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 196);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
      v10 = *(a3 + 200);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C0FBEB64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 196);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
      v10 = *(a4 + 200);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_1C0FBEC44()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA0, &qword_1C12BBEE0);
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8, &qword_1C12BBEE8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_28_10();
  sub_1C1263E60();
  OUTLINED_FUNCTION_65_0();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  sub_1C10239B0(v0, &qword_1EBE94EA8, &qword_1C12BBEE8, v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8, &unk_1C12BBEF0);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_28_10();
  sub_1C1263190();
  OUTLINED_FUNCTION_26();
  sub_1C1263E60();
  OUTLINED_FUNCTION_42_3();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_2();
  swift_getOpaqueTypeMetadata2();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8, &qword_1C12BBF08);
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0, &qword_1C12BBF10);
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8, &qword_1C12BBF18);
  sub_1C1263C40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0, &qword_1C12BBF20);
  v2 = OUTLINED_FUNCTION_22_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2, v3);
  OUTLINED_FUNCTION_15_2();
  sub_1C10239B0(v4, &qword_1EBE90560, &qword_1C12A5E00, v5);
  sub_1C114C53C();
  OUTLINED_FUNCTION_14_20();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_22();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_17();
  sub_1C1162924(v6, v7, MEMORY[0x1E697C650]);
  OUTLINED_FUNCTION_11_25();
  swift_getOpaqueTypeConformance2();
  v8 = OUTLINED_FUNCTION_55_2();
  type metadata accessor for PhotosNotchToolbar(v8, v9);
  OUTLINED_FUNCTION_10_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_55_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0, &qword_1C12BBF28);
  sub_1C1263190();
  v11 = OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_22_2(v11, v12, v10, v13);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12654C0();
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v14 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v14);
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  v15 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8, &qword_1C12BBF30);
  v16 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_22_2(v16, v17, v15, v18);
  OUTLINED_FUNCTION_22();
  v19 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v19);
  OUTLINED_FUNCTION_12_2();
  sub_1C1262C50();
  OUTLINED_FUNCTION_34_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_55_2();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v20 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00, &qword_1C12BBF38);
  v21 = OUTLINED_FUNCTION_55_2();
  type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v21, v22);
  OUTLINED_FUNCTION_3_5();
  sub_1C1263E60();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_39_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v23 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v23);
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  v24 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_22_2(v24, v20, v25, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  v26 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v26);
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_65_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v27 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v27);
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_22();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08, &qword_1C12BBF48);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v28 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v28);
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  OUTLINED_FUNCTION_6_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v29 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v29);
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263E60();
  OUTLINED_FUNCTION_28_10();
  sub_1C1263190();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  v30 = sub_1C1265B00();
  OUTLINED_FUNCTION_41_5(v30);
  OUTLINED_FUNCTION_12_2();
  sub_1C12655C0();
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  sub_1C1263190();
  OUTLINED_FUNCTION_42_3();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F10, &qword_1C12BBF50);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_13_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v31 = MEMORY[0x1E69802E0];
  sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C10239B0(&qword_1EBE94F18, &qword_1EBE94F10, &qword_1C12BBF50, v31);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C0FBF7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FBF860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1C0FBF900()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C11653E4();
  *v0 = v1;
}

uint64_t sub_1C0FBF92C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C0FBF964()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_24_11();

  return swift_deallocObject();
}

void sub_1C0FBF9C8()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C11652F0();
  *v0 = v1;
}

uint64_t sub_1C0FBF9FC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1165174();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FBFA58()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1164D00();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FBFAB4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C116F2B8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FBFB08()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C116EC28();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FBFB34()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C116EF70();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FBFB60()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C116F5B8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FBFB8C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosSummary.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FBFC10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C0FBFCA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FBFD30()
{
  v0 = OUTLINED_FUNCTION_19_18();
  type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_19_18();
  type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar(v4, v5, v6, v7);
  OUTLINED_FUNCTION_42_3();
  sub_1C1263C30();
  v8 = OUTLINED_FUNCTION_19_18();
  type metadata accessor for OneUpChromeView.ChromeWithRightToolbar(v8, v9, v10, v11);
  OUTLINED_FUNCTION_37();
  sub_1C1263C30();
  sub_1C12652C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D70, &qword_1C12B69E0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78, &qword_1C12B69E8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_20_0();
  sub_1C1266790();
  OUTLINED_FUNCTION_6_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_45();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_8();
  sub_1C1179D7C(v12, &qword_1EBE93D70, &qword_1C12B69E0);
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78, &qword_1C12B69E8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FBFF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0FBFF6C()
{

  j__swift_release_1();

  return swift_deallocObject();
}

uint64_t sub_1C0FBFFD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = OUTLINED_FUNCTION_37();
  type metadata accessor for OneUpChromeView.TopBar(v2, v3, v1, v4);
  OUTLINED_FUNCTION_7_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955D8, &qword_1C12BCF30);
  v5 = OUTLINED_FUNCTION_37();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v5, v6, v1, v7);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v8 = OUTLINED_FUNCTION_37();
  type metadata accessor for OneUpChromeView.Toolbar(v8, v9, v1, v10);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_16_0();
  sub_1C1263190();
  v11 = OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_22_2(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_1C12655A0();
  v15 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_22_2(v15, v16, v17, v18);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC019C(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_14_22();
  type metadata accessor for OneUpChromeView.Toolbar(v1, v2, v3, v4);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_16_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v5 = OUTLINED_FUNCTION_14_22();
  v20[0] = type metadata accessor for OneUpChromeView.TopBar(v5, v6, v7, v8);
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  v9 = OUTLINED_FUNCTION_14_22();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v9, v10, v11, v12);
  OUTLINED_FUNCTION_22();
  v21 = sub_1C1263190();
  v22 = &type metadata for OneUpChromeDebugBar;
  OUTLINED_FUNCTION_28_12(v21, v13, v20);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_26_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  v14 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600, &unk_1C12BCFD8);
  v15 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_22_2(v15, v16, v14, v17);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_16_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_42_3();
  sub_1C1263190();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C1179D7C(v18, &qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC03C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600, &unk_1C12BCFD8);
  v0 = OUTLINED_FUNCTION_14_22();
  v19[0] = type metadata accessor for OneUpChromeView.TopBar(v0, v1, v2, v3);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  v4 = OUTLINED_FUNCTION_14_22();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v4, v5, v6, v7);
  v20 = sub_1C1263190();
  v21 = &type metadata for OneUpChromeDebugBar;
  OUTLINED_FUNCTION_28_12(v20, v8, v19);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_1C12655A0();
  v9 = sub_1C1263190();
  v10 = OUTLINED_FUNCTION_14_22();
  type metadata accessor for OneUpChromeView.Toolbar(v10, v11, v12, v13);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v14 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_2(v14, v15, v9, v16);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_42_3();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C1179D7C(v17, &qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_9_4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC0614()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95740, &qword_1C12BD498);
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_18();
  v2(v1);
  return v0;
}

uint64_t sub_1C0FC0674()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95758, &qword_1C12BD4B0);
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_18();
  v2(v1);
  return v0;
}

uint64_t sub_1C0FC06D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95758, &qword_1C12BD4B0);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FC0734()
{
  j__swift_release_1();

  return swift_deallocObject();
}

uint64_t sub_1C0FC0770()
{
  v0 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95730, &qword_1C12BD488);
  sub_1C1179D7C(&unk_1EDE7BB58, &qword_1EBE95728, &qword_1C12BD480);
  sub_1C1178E2C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC0920()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_1C1154CB4(*(v0 + 48), *(v0 + 56), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FC09B4()
{

  OUTLINED_FUNCTION_15_24();

  return swift_deallocObject();
}

uint64_t sub_1C0FC09E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 48);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C0FC0AC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 48);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C0FC0BA8()
{
  v0 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_1C12632E0();
  OUTLINED_FUNCTION_15_2();
  sub_1C1184EC0(v2);
  OUTLINED_FUNCTION_5_31();
  sub_1C118468C(v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC0C68(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95AC8, &qword_1C12BD8E8);
  sub_1C1263190();
  OUTLINED_FUNCTION_0_0();
  sub_1C1184EC0(v1);
  OUTLINED_FUNCTION_0_54();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC0CF4()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC0D44()
{
  MEMORY[0x1C68F1710](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C0FC0D7C()
{

  OUTLINED_FUNCTION_15_24();

  return swift_deallocObject();
}

uint64_t sub_1C0FC0DB4()
{
  OUTLINED_FUNCTION_15_24();

  return swift_deallocObject();
}

uint64_t sub_1C0FC0DF8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C68ED050]();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC0E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C0FF9EE4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C0FC0F04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11859D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FC0F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1185C5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FC0FBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C0FC0FF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FC1080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FC1128()
{
  v1 = type metadata accessor for OneUpChromeVideoControls(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  j__swift_release_1();

  sub_1C0FF9034(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  v4 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v6 = *(v1 + 32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v3 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FC1358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C118971C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FC1428(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E60, &qword_1C12BE630);
  OUTLINED_FUNCTION_20_0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E68, &qword_1C12BE638);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  OUTLINED_FUNCTION_6_32();
  OUTLINED_FUNCTION_20_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E70, &qword_1C12BE640);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E78, &qword_1C12BE648);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8, &qword_1C12BE650);
  OUTLINED_FUNCTION_1_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5();
  sub_1C0FDB6D4(v1, &qword_1EBE95E70, &qword_1C12BE640, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  sub_1C0FDB6D4(v3, &qword_1EBE95E78, &qword_1C12BE648, v4);
  swift_getWitnessTable();
  sub_1C10450CC();
  swift_getOpaqueTypeMetadata2();
  sub_1C1266790();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_7();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC1680()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C0FC1734(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E68, &qword_1C12BE638);
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C0FC17A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E68, &qword_1C12BE638);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FC1804()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

__n128 sub_1C0FC1884(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C0FC1924(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148, &qword_1C12AD448);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EB8, &qword_1C12BE8E0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95EC0, &qword_1C12BE8E8);
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1C1263190();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v2, &unk_1EBE92EC0, &qword_1C12A8E00, v3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  sub_1C0FDB6D4(v4, &qword_1EBE91C40, &unk_1C12A7010, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v6, &unk_1EBE92ED0, &unk_1C12A8E80, v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_1C0FDB6D4(v8, &qword_1EBE92148, &qword_1C12AD448, v9);
  swift_getWitnessTable();
  v10 = MEMORY[0x1E697EC18];
  sub_1C0FDB6D4(&qword_1EBE95EC8, &qword_1EBE95EB8, &qword_1C12BE8E0, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EBE95ED0, &qword_1EBE95EC0, &qword_1C12BE8E8, v10);
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v11, v1, v12, v13);
  sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  sub_1C100D614();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC1C54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1052230();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC1CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FC1D78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FC1ED8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96110, &qword_1C12BF138);
  sub_1C1263C30();
  sub_1C1198CA4();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC1F88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C0FC1FC0()
{

  return swift_deallocObject();
}

__n128 sub_1C0FC202C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FC2038(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FC2250()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE964C0, &qword_1C12BFBB8);
  sub_1C12632E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE964C8, &qword_1C12BFBC0);
  sub_1C12630D0();
  sub_1C119EE2C(&qword_1EDE7BAD0, &qword_1EBE964C8, &qword_1C12BFBC0);
  sub_1C119EDE4(&qword_1EDE7BFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_61();
  v11 = sub_1C119EDE4(v1, v2, MEMORY[0x1E697C240]);
  return OUTLINED_FUNCTION_1_45(v11, v3, v4, v5, v6, v7, v8, v9, v0);
}

uint64_t sub_1C0FC237C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE964D0, &qword_1C12BFBC8);
  sub_1C12632E0();
  sub_1C119EE2C(&qword_1EDE7BAC8, &unk_1EBE964D0, &qword_1C12BFBC8);
  OUTLINED_FUNCTION_0_61();
  v11 = sub_1C119EDE4(v1, v2, MEMORY[0x1E697C240]);
  return OUTLINED_FUNCTION_1_45(v11, v3, v4, v5, v6, v7, v8, v9, v0);
}

uint64_t sub_1C0FC2488(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE964E0, &qword_1C12BFBF8);
  type metadata accessor for PhotosAssetView(255);
  sub_1C1263C30();
  swift_getTupleTypeMetadata();
  sub_1C1265B00();
  return swift_getWitnessTable();
}

__n128 sub_1C0FC2584(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1C0FC263C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FC266C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FC2734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965C8, &unk_1C12C06F0);
    v8 = a1 + *(a3 + 60);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1C0FC2820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965C8, &unk_1C12C06F0);
    v10 = a1 + *(a4 + 60);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C0FC2954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C11A7D0C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C0FC2A68()
{
  sub_1C0FF9034(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C0FC2B58()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC2C08(uint64_t a1)
{
  sub_1C1263900();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96748, &unk_1C12C0F30);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_39();
  sub_1C0FDB6D4(v1, &qword_1EBE96748, &unk_1C12C0F30, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v3, &qword_1EBE91BF0, &qword_1C12A6E10, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  sub_1C0FDB6D4(v5, qword_1EBE92178, &unk_1C12AD460, v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C11ADA7C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C12630A0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_20();
  sub_1C11AE598(v7, v8, MEMORY[0x1E697C100]);
  OUTLINED_FUNCTION_10_31();
  swift_getOpaqueTypeMetadata2();
  v9 = OUTLINED_FUNCTION_23_12();
  type metadata accessor for PhotosDraggableItemView.RectTuple(v9, v10);
  sub_1C1266790();
  OUTLINED_FUNCTION_16_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263FF0();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8, &qword_1C12B77B0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  v11 = OUTLINED_FUNCTION_23_12();
  type metadata accessor for PhotosDraggableItemView.OnDropModifier(v11, v12);
  sub_1C1263190();
  swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x1E69802E0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8, &qword_1C12B77B0, v13);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_44();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC30C0(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  type metadata accessor for PhotosDraggableItemView.OnDropModifier(255, v5);
  OUTLINED_FUNCTION_3_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v2 = sub_1C1263DE0();
  WitnessTable = swift_getWitnessTable();
  *&v5[0] = v2;
  *(&v5[0] + 1) = WitnessTable;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC3174@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosExportManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC31A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11AF048();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FC31D4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96780, &unk_1C12C1330);
  sub_1C1263190();
  sub_1C11AF738();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC324C()
{
  sub_1C0FF9034(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C0FC3340(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v63 = a1[2];
  v58 = *a1;
  v59 = a1[3];
  v64 = a1[5];
  v61 = a1[6];
  type metadata accessor for PhotosCellBadgeView(255, *a1, a1[4], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  v5 = sub_1C1263190();
  OUTLINED_FUNCTION_22_2(255, v4, &type metadata for PhotosLegibilityGradient, v5);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_65_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  OUTLINED_FUNCTION_13_0();
  WitnessTable = swift_getWitnessTable();
  v62 = MEMORY[0x1E6980A18];
  v85 = WitnessTable;
  v86 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v83 = v7;
  v84 = sub_1C10239B0(v8, &qword_1EBE91C40, &unk_1C12A7010, v9);
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v81 = v10;
  v82 = sub_1C10239B0(v11, &unk_1EBE92ED0, &unk_1C12A8E80, v12);
  swift_getWitnessTable();
  v13 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v13, v14, v15, v16);
  sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  v17 = sub_1C1263190();
  v79 = v64;
  v80 = v86;
  v77 = swift_getWitnessTable();
  v78 = v84;
  v75 = swift_getWitnessTable();
  v76 = v82;
  swift_getWitnessTable();
  v18 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v18, v17, v19, v20);
  sub_1C1263190();
  v21 = OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_4(v21, v22, v23);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_1C12655C0();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_4_3();
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_32();
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0, &qword_1C12C1600);
  v25 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_22_2(v25, v26, v24, v27);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  v60 = sub_1C12654C0();
  OUTLINED_FUNCTION_33_11(v60, v60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190, &unk_1C12A8368);
  OUTLINED_FUNCTION_16_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v28 = sub_1C1263190();
  v29 = sub_1C1266790();
  v30 = MEMORY[0x1E6981840];
  OUTLINED_FUNCTION_22_2(255, MEMORY[0x1E6981840], v63, v29);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v31 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_2(v31, v32, v30, v33);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v34 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v34, v28, v35);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v57 = sub_1C12654C0();
  OUTLINED_FUNCTION_33_11(v57, v57);
  sub_1C1263C30();
  type metadata accessor for PhotosFavoriteBadge(255, v58, *(*(v59 + 8) + 8), v36);
  v37 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v37, v30, v38);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v39 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v39, v4, v40);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v41 = sub_1C12655C0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8, &qword_1C12C1608);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0, &qword_1C12C1610);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8, &qword_1C12C1618);
  v68 = v63;
  v69 = sub_1C11B248C();
  v70 = sub_1C11B26B8();
  v71 = sub_1C11B2B94();
  v72 = v61;
  v42 = type metadata accessor for PhotosTitleAccessoryStack(255, &v65);
  v43 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_21();
  v44 = swift_getWitnessTable();
  v65 = v41;
  v66 = v42;
  v67 = v43;
  v68 = v44;
  type metadata accessor for PhotosContentTitleCard(255, &v65);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93660, &qword_1C12B42E8);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868, &unk_1C12C1690);
  OUTLINED_FUNCTION_4(255, v63, v29);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_32();
  sub_1C12655A0();
  v45 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_22_2(v45, v46, MEMORY[0x1E6981840], v47);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v48 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4(v48, v49, v50);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_65_0();
  sub_1C1263C30();
  sub_1C1263C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_65_0();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_29_10();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_28();
  swift_getWitnessTable();
  sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, v62);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v51 = MEMORY[0x1E6980468];
  sub_1C10239B0(&qword_1EDE7BA68, qword_1EBE92178, &unk_1C12AD460, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v52 = OUTLINED_FUNCTION_16_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v52, v53, v54, v55);
  sub_1C1263190();
  sub_1C1263C30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C10239B0(&qword_1EDE7BA70, &qword_1EBE91190, &unk_1C12A8368, v51);
  swift_getWitnessTable();
  sub_1C100D614();
  swift_getWitnessTable();
  sub_1C10A04F0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1C0FC3E84()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = sub_1C11C003C();
  *(v0 + 8) = v1;
}

uint64_t sub_1C0FC3EB0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11C0718();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC3EFC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11C07DC();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC3F48(void *a1)
{
  sub_1C1263190();
  sub_1C1045BCC();
  return swift_getWitnessTable();
}

void sub_1C0FC3FB0()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C11C117C();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1C0FC400C()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC4044()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11C0D78();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC4090()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11C0CF0();
  *v0 = result;
  return result;
}

void sub_1C0FC40DC()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = sub_1C11C0C40();
  *(v0 + 8) = v1;
}

uint64_t sub_1C0FC4138()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C0FC4170()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96920, &qword_1C12C1AC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96928, &qword_1C12C1AD0);
  sub_1C1262FB0();
  sub_1C11C20A4();
  sub_1C11C2198(&qword_1EDE7BFB0, MEMORY[0x1E697E4B8], MEMORY[0x1E697E4C8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1C0FC427C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C0FC4358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 72));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C0FC4410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90F80, &unk_1C12BE0D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0FC44C4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96AF8, &qword_1C12C21D8);
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00, &qword_1C12C21E0);
  OUTLINED_FUNCTION_4_6();
  sub_1C10239B0(v1, &qword_1EBE96B00, &qword_1C12C21E0, v2);
  OUTLINED_FUNCTION_2_54();
  swift_getOpaqueTypeMetadata2();
  v3 = sub_1C1263190();
  v4 = OUTLINED_FUNCTION_2_29(v3, MEMORY[0x1E6981840], v3);
  OUTLINED_FUNCTION_43_4(v4);
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C12654C0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_43_4(TupleTypeMetadata3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_40_0();
  sub_1C10239B0(v6, v7, v8, v9);
  OUTLINED_FUNCTION_9_32();
  sub_1C1262E70();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_40_0();
  sub_1C10239B0(v10, v11, v12, v13);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC46DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HoverEffectModifier(255, a1[1], a1[3], a4);
  sub_1C1263190();
  OUTLINED_FUNCTION_0_70();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC479C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HoverEffectModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_70();
  swift_getWitnessTable();
  sub_1C1263DE0();
  OUTLINED_FUNCTION_1_50();

  return swift_getWitnessTable();
}

uint64_t sub_1C0FC4850()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11CF2BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC487C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11CF468();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC48A8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11CF5EC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC48D4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11CF7B8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC4908(uint64_t a1)
{
  result = sub_1C11CFDB4(&qword_1EBE96D88, &protocol conformance descriptor for PhotosMockMap);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FC494C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D03D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FC4980()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC49B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D3174();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC4A10(uint64_t *a1)
{
  type metadata accessor for PhotosScrollRequestHandlerModifier(255);
  sub_1C1263190();
  sub_1C11D3760();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC4A7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF0, &qword_1C12C3538);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C0FC4B10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF0, &qword_1C12C3538);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FC4B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C0FC4BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C0FC4C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E50, &qword_1C12C3768);
  OUTLINED_FUNCTION_38();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58, &unk_1C12C3770);
  OUTLINED_FUNCTION_38();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C0FC4D84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E50, &qword_1C12C3768);
  OUTLINED_FUNCTION_38();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58, &unk_1C12C3770);
    OUTLINED_FUNCTION_38();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

__n128 sub_1C0FC4F38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FC4F44()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11D8DF0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC4F74()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11D8E54();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC4FA4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11D8F84();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC4FD4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11D90BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1C0FC505C()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C11D9890();
  *v0 = v1;
}

uint64_t sub_1C0FC508C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11D99E4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FC50E4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11D9B2C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC5138(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FC5224(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F70, &unk_1C12C4048);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FC5294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90F88, &unk_1C12A81A0);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C0FC5378(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90F88, &unk_1C12A81A0);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C0FC5458()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F70, &unk_1C12C4048);
  sub_1C11DCF6C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC54BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FB8, &qword_1C12C40B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FB0, &qword_1C12C40B0);
  sub_1C1263130();
  sub_1C11DF8C8();
  OUTLINED_FUNCTION_4_49();
  sub_1C11DD054(v0, v1, MEMORY[0x1E697E750]);
  swift_getOpaqueTypeConformance2();
  sub_1C10C8ACC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC55A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97000, &qword_1C12C4128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94FC0, qword_1C12BC080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FF8, &qword_1C12C4120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97060, &qword_1C12C4158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FF0, &qword_1C12C4118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FA8, &qword_1C12C40A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FE8, &qword_1C12C4110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FE0, &qword_1C12C4108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97010, &qword_1C12C4138);
  OUTLINED_FUNCTION_8_34();
  sub_1C0FDB6D4(v0, &qword_1EBE96FE0, &qword_1C12C4108, v1);
  sub_1C11E084C();
  OUTLINED_FUNCTION_5_33();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  v2 = sub_1C11E0BB4();
  OUTLINED_FUNCTION_13_25(v2, v3);
  v4 = sub_1C11E0D08();
  OUTLINED_FUNCTION_13_25(v4, v5);
  v8 = sub_1C11E0C38();
  return OUTLINED_FUNCTION_13_25(v8, v6);
}

void sub_1C0FC5798()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C11DD2FC();
  *v0 = v1;
}

uint64_t sub_1C0FC57C4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C11DDB10();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC593C()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970A0, &qword_1C12C4868);
  OUTLINED_FUNCTION_3();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C0FC5A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE972C0, &unk_1C12C4C90);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C0FC5A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE972C0, &unk_1C12C4C90);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C0FC5ADC()
{
  v0 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle(255);
  sub_1C0FDB6D4(&qword_1EDE76C20, &qword_1EBE97298, &qword_1C12C4C78, MEMORY[0x1E697D6A8]);
  sub_1C11E4E04(&qword_1EBE972A8, type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle, &unk_1C12C4CB8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC5BB8()
{
  sub_1C12640E0();
  OUTLINED_FUNCTION_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C0FC5CDC(uint64_t a1, uint64_t a2)
{
  if (a2 == 2147483646)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97520, &unk_1C12C54F0);
    v6 = OUTLINED_FUNCTION_46_5();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }
}

void sub_1C0FC5D78()
{
  OUTLINED_FUNCTION_17_4();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97520, &unk_1C12C54F0);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_45_8();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C0FC5DF8()
{
  OUTLINED_FUNCTION_17_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C0FC5E48()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
  OUTLINED_FUNCTION_45_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C0FC5F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_4();
  sub_1C1264060();
  OUTLINED_FUNCTION_38();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v10 = *(v4 + *(a3 + 20));
      if (v10 >= 2)
      {
        return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
    v9 = OUTLINED_FUNCTION_46_5();
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1C0FC6010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_4();
  sub_1C1264060();
  OUTLINED_FUNCTION_38();
  if (*(v8 + 84) != a3)
  {
    if (a3 == 254)
    {
      *(v5 + *(a4 + 20)) = v4 + 1;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
    OUTLINED_FUNCTION_46_5();
  }

  OUTLINED_FUNCTION_45_8();

  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1C0FC60D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_4();
  sub_1C1264060();
  OUTLINED_FUNCTION_38();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1C0FC6174(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17_4();
  sub_1C1264060();
  OUTLINED_FUNCTION_38();
  if (*(v4 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  }

  OUTLINED_FUNCTION_45_8();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C0FC6218()
{
  sub_1C12640E0();
  OUTLINED_FUNCTION_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C0FC6344()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C12637B0();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C0FC6378()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C12636D0();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC63D4()
{

  sub_1C1008DBC(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1C0FC6448()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC64BC(uint64_t a1)
{
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_36(&unk_1EDE7B940);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_51(&qword_1EDE7C030);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v2, &unk_1EBE92ED0, &unk_1C12A8E80, v3);
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v4, v1, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EE8, &qword_1C12B19E0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  v7 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978D8, &qword_1C12C5E58);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  v8 = sub_1C1266790();
  OUTLINED_FUNCTION_4(255, v8, &type metadata for TitleSubtitleView);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978E0, &unk_1C12C5E60);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v9 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v9, v7, v10);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08, &unk_1C12B0EB0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_7();
  sub_1C0FDB6D4(v11, &qword_1EBE90C08, &unk_1C12B0EB0, v12);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC6864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936B8, &unk_1C12C60C0);
  v9 = sub_1C10D8034();
  return OUTLINED_FUNCTION_5_35(v9, v1, v2, v3, v4, v5, v6, v7, v0);
}

uint64_t sub_1C0FC68AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97900, &unk_1C12C60D0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936B8, &unk_1C12C60C0);
  v1 = sub_1C10D8034();
  OUTLINED_FUNCTION_5_35(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC6930()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosSelection.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC695C()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosSelectionCoordinator.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC6988()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosSelectModeEnabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FC69DC()
{

  sub_1C1008DBC(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1C0FC6A60()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C0FF80A0();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC6A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC6AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollView(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_79();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94168, &qword_1C12B77D8);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_52();
  sub_1C0FDB6D4(v4, &qword_1EBE94168, &qword_1C12B77D8, v5);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97920, &qword_1C12C6160);
  swift_getOpaqueTypeConformance2();
  sub_1C11F7898();
  v7 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGPoint(255);
  OUTLINED_FUNCTION_9_35(v8, v9, v10, v11, v12, v13, v14, v15, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_6_37();
  sub_1C11F8D90(v16, v17, MEMORY[0x1E695EFB8]);
  v18 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9_35(v18, v19, v20, v21, v22, v23, v24, v25, v7);
  v26 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosTestableScrollViewReader(v26, v18, v27, v28);
  OUTLINED_FUNCTION_3_49();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC6D0C(uint64_t *a1)
{
  sub_1C1264360();
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1C1263190();
  OUTLINED_FUNCTION_2_60();
  sub_1C11F8D90(v2, v3, MEMORY[0x1E697CBD8]);
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9_35(OpaqueTypeMetadata2, v5, v6, v7, v8, v9, v10, v11, v1);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263340();
  OUTLINED_FUNCTION_5_36();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC6DE0()
{
  sub_1C1263240();
  OUTLINED_FUNCTION_1_22();
  v3 = v2;
  v4 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1C0FC6E94()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC6ECC()
{
  sub_1C1263240();
  OUTLINED_FUNCTION_1_22();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1C0FC6FF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11FA920();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FC7064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11FA940();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FC7148()
{

  sub_1C1008DBC(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1C0FC71F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979A0, &qword_1C12C6B20);
  OUTLINED_FUNCTION_12_2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979A8, &qword_1C12C6B28);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  OUTLINED_FUNCTION_13_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_1C0FDB6D4(v0, &qword_1EBE979A8, &qword_1C12C6B28, v1);
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC7334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979F0, &unk_1C12C6CC0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FC73C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979F0, &unk_1C12C6CC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FC7448(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A00, &qword_1C12C6D18);
  sub_1C1263190();
  sub_1C11FEC3C();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC74C8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C10B452C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0FC74F8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A08, &unk_1C12C6EF0);
  sub_1C1263190();
  sub_1C11FFA64();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC7578()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosImageProvider.getter();
  *v0 = result;
  return result;
}

void sub_1C0FC75CC()
{
  OUTLINED_FUNCTION_35();
  sub_1C1263500();
  *v0 = v1;
}

uint64_t sub_1C0FC761C()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosIsDragPreview.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FC7680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FC7714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FC77A4()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC7838(void *a1)
{
  sub_1C1263190();
  sub_1C1202B38();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC789C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  j__swift_release_0();

  return swift_deallocObject();
}

uint64_t sub_1C0FC78E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1203384();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC7914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12031C8();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC7978()
{
  type metadata accessor for PhotosScrollViewDisabledModifier(255);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  sub_1C1204770(qword_1EDE80028, type metadata accessor for PhotosScrollViewDisabledModifier, &unk_1C12C7690);
  return OUTLINED_FUNCTION_10_7();
}

uint64_t sub_1C0FC79F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B00, &qword_1C12C75D8);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  sub_1C0FDB6D4(&qword_1EBE97B08, &qword_1EBE97B00, &qword_1C12C75D8, MEMORY[0x1E6980A18]);
  return OUTLINED_FUNCTION_10_7();
}

uint64_t sub_1C0FC7A78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollView.ScrollContentView(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_2_61();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C1262940();
  OUTLINED_FUNCTION_0_81();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_53();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC7B34(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B10, &unk_1C12C7640);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1C0FC7BC8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B10, &unk_1C12C7640);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FC7C50()
{
  v1 = type metadata accessor for PhotosScrollViewDisabledModifier(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B28, &qword_1C12C7740);
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B30, &qword_1C12C7748);

  return swift_deallocObject();
}

uint64_t sub_1C0FC7D5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1204004();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FC7DBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B18, &qword_1C12C7730);
  sub_1C1204614();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC7E80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B48, &unk_1C12C7880);
  OUTLINED_FUNCTION_13_28();
  sub_1C12656A0();
  sub_1C12052E4();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262920();
  v0 = OUTLINED_FUNCTION_13_28();
  v2 = type metadata accessor for PhotosItemsListFeed.ItemContainerView(v0, v1);
  OUTLINED_FUNCTION_2_62();
  swift_getWitnessTable();
  v3 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosItemsListCellContainer(v3, v2, v4, v5);
  OUTLINED_FUNCTION_9_37();
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_13_28();
  type metadata accessor for PhotosDraggableForEach(v6, v7);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262920();
  OUTLINED_FUNCTION_7_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_13_28();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  sub_1C1263190();
  OUTLINED_FUNCTION_13_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC8098(void *a1)
{
  sub_1C1263190();
  sub_1C1202800();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC8128(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_5();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_5();
  swift_getAssociatedTypeWitness();
  sub_1C12661A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0, &qword_1C12A35E0);
  OUTLINED_FUNCTION_1_55();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1C12656A0();
  sub_1C0FDC834();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_5();
  sub_1C1265AF0();
  OUTLINED_FUNCTION_2_64();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC82B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1C0FC8398(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C0FC83D0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FC8438()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C0FC8470()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC84BC()
{
  OUTLINED_FUNCTION_2_65();
  sub_1C1263D00();
  v1 = OUTLINED_FUNCTION_7_43();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C0FC84F8()
{
  OUTLINED_FUNCTION_2_65();
  sub_1C1263D00();
  v0 = OUTLINED_FUNCTION_48_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C0FC85C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60, &qword_1C12C81A8);
  v3 = OUTLINED_FUNCTION_7_43();

  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_1C0FC8610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60, &qword_1C12C81A8);
  v0 = OUTLINED_FUNCTION_48_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C0FC865C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_2_65();
  if (*(*(type metadata accessor for PhotosOffsetReaderContainer(v6) - 8) + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_7_43();
LABEL_8:

    return __swift_getEnumTagSinglePayload(v7, v3, v8);
  }

  if (v3 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
    v7 = v4 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(v4 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1C0FC872C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_2_65();
  result = type metadata accessor for PhotosOffsetReaderContainer(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20)) = (v4 - 1);
      return result;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
    v11 = v5 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1C0FC87FC()
{
  v1 = *(type metadata accessor for PhotosOffsetReaderContainerModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60, &qword_1C12C81A8) + 32);
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1C0FC88FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DD8, &qword_1C12C82F0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DD0, &qword_1C12C82E8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DC8, &qword_1C12C82E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DC0, &qword_1C12C82D8);
  sub_1C1263150();
  sub_1C1210078();
  sub_1C120E8C0(&qword_1EBE97E08, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F8]);
  swift_getOpaqueTypeConformance2();
  v3 = sub_1C0FF9EE4();
  v11 = OUTLINED_FUNCTION_4_56(v3, v4, v5, v6, v7, v8, v9, v10, v2);
  v27 = OUTLINED_FUNCTION_4_56(v11, v12, v13, v14, v15, v16, v17, v18, v1);
  return OUTLINED_FUNCTION_4_56(v27, v19, v20, v21, v22, v23, v24, v25, v0);
}

uint64_t sub_1C0FC8B74()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C12127FC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC8CB8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1212EF0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC8D3C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1213E54(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1C0FC8DDC()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = sub_1C1214144();
  *(v0 + 8) = v1;
}

uint64_t sub_1C0FC8E60()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214494();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FC8FE4()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214BC0();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FC9030()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214B58();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FC907C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214AF0();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FC90C8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214C90();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FC9114()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214C28();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FC91F8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1214570();
  return OUTLINED_FUNCTION_12(v0);
}

void sub_1C0FC929C()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = sub_1C1214208();
  *(v0 + 8) = v1;
}

void sub_1C0FC9314()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C1213F08();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1C0FC9398()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1212FC4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC94DC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1212858();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FC9588@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosResetNotificationCoordinator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC95B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1216A24();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FC960C(void *a1)
{
  sub_1C1263190();
  sub_1C1216CFC();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC9670()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC96A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E48, &unk_1C12C8FA0);
  sub_1C121709C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FC9720()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1052410();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FC9770()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1217328();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FC97F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v0, qword_1EBE90EF8, &qword_1C12AC0F0, v1);
  sub_1C1262E70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E50, &qword_1C12C8FB0);
  sub_1C1263190();
  OUTLINED_FUNCTION_5_0();
  sub_1C0FDB6D4(v2, qword_1EBE90EF8, &qword_1C12AC0F0, v3);
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  v4 = MEMORY[0x1E6980A18];
  sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7B938, &qword_1EBE97E50, &qword_1C12C8FB0, v4);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC99E8()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47_6();

  return swift_deallocObject();
}

uint64_t sub_1C0FC9A2C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47_6();

  return swift_deallocObject();
}

uint64_t sub_1C0FC9A70()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FC9AA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88, &qword_1C12C92A8);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C0FC9B74()
{
  swift_unknownObjectRelease();

  sub_1C100DC0C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1C0FC9C5C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EB8, &qword_1C12C9568);
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  OUTLINED_FUNCTION_5_41(&qword_1EDE7C010);
  sub_1C1262E70();
  sub_1C1263C30();
  OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC9E04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  sub_1C1265580();
  sub_1C100EF98();
  sub_1C12656A0();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  sub_1C1264740();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FC9EEC()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_2_68();
  type metadata accessor for PhotosStaticListPicker(v2, v3, v4, v5);
  OUTLINED_FUNCTION_10_4();
  v7 = v0 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  sub_1C1266790();
  v8 = *(sub_1C1265640() + 32);
  if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v7 + v8, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FCA078(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C0FCA10C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FCA19C(void *a1)
{
  sub_1C1263190();
  sub_1C1221970();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCA204()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FD0, &unk_1C12C9A58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FD8, &qword_1C12C9A68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FE0, &qword_1C12C9A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FE8, &qword_1C12C9A78);
  sub_1C1221EA8();
  sub_1C1221F0C();
  swift_getOpaqueTypeConformance2();
  sub_1C1222044();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FCA314()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1226204();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCA360()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1222940();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCA3AC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1222B04();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCA3F8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1222D18();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCA444()
{
  OUTLINED_FUNCTION_13_1();
  v1 = sub_1C1222EDC(v0);
  return OUTLINED_FUNCTION_12(v1);
}

uint64_t sub_1C0FCA490()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C12230A0();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCA798()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1224874();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCA7EC()
{
  OUTLINED_FUNCTION_13_1();
  v1 = sub_1C1224CE0(v0);
  return OUTLINED_FUNCTION_12(v1);
}

uint64_t sub_1C0FCA854()
{
  OUTLINED_FUNCTION_13_1();
  v1 = sub_1C1225BFC(v0);
  return OUTLINED_FUNCTION_12(v1);
}

uint64_t sub_1C0FCA9C0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1224CE4();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAAF8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1225C6C();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAB68()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C12248E4();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAE70()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1223110();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAEBC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1222F4C();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAF08()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1222D88();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAF54()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C1222BC4();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAFA0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_1C12229B0();
  return OUTLINED_FUNCTION_12(v0);
}

uint64_t sub_1C0FCAFEC()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCB050()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C1229FCC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FCB07C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122A1A0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FCB0A8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122A34C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FCB0D4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122A4F8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FCB128()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122AD48();
  *v0 = result & 1;
  return result;
}

void sub_1C0FCB17C()
{
  OUTLINED_FUNCTION_13_1();
  sub_1C122B1AC();
  *v0 = v1;
}

void *sub_1C0FCB1A8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122AF2C();
  *v0 = result;
  return result;
}

uint64_t sub_1C0FCB1D4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122B428();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FCB228()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122B618();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C0FCB25C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122B8BC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FCB2B0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C122A6EC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C0FCB2DC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_85();
  result = sub_1C122C890(v2, v3, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1C0FCB360(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1C0FCB374(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  swift_getTupleTypeMetadata2();
  sub_1C12661A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538, &unk_1C12A9380);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_55();
  swift_getWitnessTable();
  sub_1C12656A0();
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v1, qword_1EBE90EF8, &qword_1C12AC0F0, v2);
  sub_1C1262E70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C12661A0();
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12639F0();
  sub_1C1263190();
  OUTLINED_FUNCTION_5_0();
  sub_1C0FDB6D4(v3, qword_1EBE90EF8, &qword_1C12AC0F0, v4);
  v5 = MEMORY[0x1E697FDC0];
  sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCB6E4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981B0, &qword_1C12CAAB8);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C0FCB74C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981B0, &qword_1C12CAAB8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FCB7DC()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCB834()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCB8B0()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCB8E8()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCB930()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCB9F8(void *a1)
{
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92420, &qword_1C12CACB0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98270, &unk_1C12CACB8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08, &unk_1C12B0EB0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_52();
  sub_1C0FDB6D4(v1, &qword_1EBE92420, &qword_1C12CACB0, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_60();
  sub_1C0FDB6D4(v3, &qword_1EBE98270, &unk_1C12CACB8, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_7();
  sub_1C0FDB6D4(v5, &qword_1EBE90C08, &unk_1C12B0EB0, v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654A0();
  OUTLINED_FUNCTION_8_1();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCBBB0()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCBDBC(_OWORD *a1)
{
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  type metadata accessor for HeaderTitle(255, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98398, &qword_1C12CB5F8);
  v2 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4(v2, v3, v4);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCBF94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12635D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FCC014(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983E8, &qword_1C12CB8F8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FCC084(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983B8, &unk_1C12CB8C0);
  OUTLINED_FUNCTION_4(255, v1, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v3 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4(v3, v4, v2);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  sub_1C0FDB6D4(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  sub_1C1262E70();
  sub_1C0FDB6D4(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCC2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FCC368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FCC3F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C0, &qword_1C12CC178);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C8, &qword_1C12CC180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984D0, &qword_1C12CC188);
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  OUTLINED_FUNCTION_3_5();
  sub_1C1263C30();
  v3 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v3, v1, v4);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  v5 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v5, v2, v6);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v7 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v7, v0, v8);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_3_5();
  sub_1C1263190();
  sub_1C1266790();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_3();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCC68C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosInlinePlaybackSupportedByDevice.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FCC6E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98550, &qword_1C12CC3D0);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C0FCC748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for PhotosScenePhase(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578, &qword_1C12CC420);
      v12 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1C0FCC820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for PhotosScenePhase(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578, &qword_1C12CC420);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C0FCC8F0(uint64_t *a1)
{
  type metadata accessor for PhotosInlinePlaybackEnvironment(255);
  sub_1C1263190();
  sub_1C0F9B7EC(&unk_1EDE80370, type metadata accessor for PhotosInlinePlaybackEnvironment, &protocol conformance descriptor for PhotosInlinePlaybackEnvironment);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCC98C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98560, &qword_1C12CC3E0);
  sub_1C1262930();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98558, &qword_1C12CC3D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98550, &qword_1C12CC3D0);
  sub_1C1241878();
  sub_1C1188E24();
  swift_getOpaqueTypeConformance2();
  sub_1C1241CE0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_55();
  sub_1C0F9B7EC(v0, v1, MEMORY[0x1E697BE50]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FCCB00@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosPrefetchable.Font.Design.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FCCD08@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.visibleItemLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C0FCCDA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v17 = *a1;
  v1 = v17;
  v18 = v2;
  v19 = *(a1 + 16);
  v15 = v19;
  v20 = v3;
  v21 = *(a1 + 40);
  v16 = v21;
  v4 = type metadata accessor for PhotosItemsFeed.ItemContainerView(255, &v17);
  OUTLINED_FUNCTION_4_59();
  WitnessTable = swift_getWitnessTable();
  v17 = v1;
  v18 = v2;
  *&v19 = v15;
  *(&v19 + 1) = v4;
  v20 = v3;
  *&v21 = v16;
  *(&v21 + 1) = WitnessTable;
  type metadata accessor for PhotosDraggableForEach(255, &v17);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v6 = sub_1C1265AF0();
  OUTLINED_FUNCTION_2_64();
  v7 = swift_getWitnessTable();
  v17 = v6;
  v18 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  sub_1C1265AB0();
  OUTLINED_FUNCTION_8_44();
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for PhotosScrollView(v8, v9, v10, v11);
  sub_1C1263C30();
  v17 = v6;
  v18 = v7;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  sub_1C12655A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90, &qword_1C12A9910);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  sub_1C0FDB6D4(v12, &qword_1EBE90B90, &qword_1C12A9910, v13);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCD018(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE986F0, &unk_1C12CD5B0);
  OUTLINED_FUNCTION_6_0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  sub_1C1263C30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCD224(uint64_t *a1)
{
  OUTLINED_FUNCTION_37();
  sub_1C1262B50();
  sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1262B90();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C1263C00();
  sub_1C1263190();
  OUTLINED_FUNCTION_2_73();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_65();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCD34C(uint64_t *a1)
{
  sub_1C1262B90();
  sub_1C1263190();
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37();
  sub_1C1263C00();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_65();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL sub_1C0FCD420(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C0FCD44C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C12636F0();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FCD48C()
{
  OUTLINED_FUNCTION_19_23();
  if (v3)
  {
    return OUTLINED_FUNCTION_54(*(v0 + 16));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
  OUTLINED_FUNCTION_38();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);
    v8 = *(v5 + 40);
  }

  v9 = OUTLINED_FUNCTION_45(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C0FCD554()
{
  OUTLINED_FUNCTION_37_1();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FA0, &unk_1C12ACD90);
    OUTLINED_FUNCTION_38();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);
      v8 = *(v5 + 40);
    }

    v9 = OUTLINED_FUNCTION_45(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1C0FCD620()
{
  OUTLINED_FUNCTION_19_23();
  if (v2)
  {
    return OUTLINED_FUNCTION_54(*v0);
  }

  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A0, &qword_1C12CD858);
  v5 = OUTLINED_FUNCTION_45(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C0FCD69C()
{
  OUTLINED_FUNCTION_37_1();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A0, &qword_1C12CD858);
    v5 = OUTLINED_FUNCTION_45(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C0FCD718()
{
  OUTLINED_FUNCTION_19_23();
  if (v2)
  {
    return OUTLINED_FUNCTION_54(*(v0 + 8));
  }

  v4 = v1;
  sub_1C1261AD0();
  v5 = OUTLINED_FUNCTION_45(*(v4 + 40));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C0FCD788()
{
  OUTLINED_FUNCTION_37_1();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C1261AD0();
    v5 = OUTLINED_FUNCTION_45(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C0FCD7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_17();
  sub_1C1261E20();
  OUTLINED_FUNCTION_38();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_54(*(v3 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_1C0FCD894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C1261E20();
  OUTLINED_FUNCTION_38();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1C0FCD978()
{
  type metadata accessor for PhotosSearchSuggestionView(0);
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  j__swift_release_2();
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 40);
  sub_1C1263D00();
  OUTLINED_FUNCTION_4_2();
  (*(v7 + 8))(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);

  return swift_deallocObject();
}

uint64_t sub_1C0FCDAFC()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCDB34()
{
  type metadata accessor for PhotosSearchSuggestionView(0);
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  j__swift_release_2();
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);

  return swift_deallocObject();
}

uint64_t sub_1C0FCDCB4()
{
  type metadata accessor for PhotosSearchSuggestionView(0);
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  j__swift_release_2();
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);

  return swift_deallocObject();
}

uint64_t sub_1C0FCDE54(void *a1)
{
  sub_1C12656E0();

  return swift_getWitnessTable();
}

uint64_t sub_1C0FCDEB0()
{

  OUTLINED_FUNCTION_0_92();

  return swift_deallocObject();
}

uint64_t sub_1C0FCDEE4()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCDF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  type metadata accessor for OldValue(255, v7, *(a3 + 24), a4);
  v8 = sub_1C1262900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = a1;
    v11 = a2;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, v11, v9);
  }

  if (*(*(v7 - 8) + 84) == a2)
  {
    v10 = a1 + *(a3 + 36);
    v11 = a2;
    v9 = v7;
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1C0FCE020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  type metadata accessor for OldValue(255, v8, *(a4 + 24), a4);
  result = sub_1C1262900();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = a1;
    v12 = a2;
    v13 = a2;
  }

  else
  {
    if (*(*(v8 - 8) + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v11 = a1 + *(a4 + 36);
    v12 = a2;
    v13 = a2;
    v10 = v8;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
}

uint64_t sub_1C0FCE138()
{

  OUTLINED_FUNCTION_0_92();

  return swift_deallocObject();
}

uint64_t sub_1C0FCE170(void *a1)
{
  sub_1C1263190();
  sub_1C1069CEC();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCE200(void *a1)
{
  sub_1C1263190();
  sub_1C1255A4C();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCE268()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C0FCE2A0()
{

  return swift_deallocObject();
}

uint64_t sub_1C0FCE37C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98CC0, &qword_1C12CE2D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
  sub_1C1256EB0();
  OUTLINED_FUNCTION_20_1();
  sub_1C0FDB6D4(v0, &qword_1EBE92FE0, &qword_1C12A7730, v1);
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1C0FCE45C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C0FCE470@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosObservableFace.selectionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FCE4DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D50, &unk_1C12CE600);
  OUTLINED_FUNCTION_3_57(v0);
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  OUTLINED_FUNCTION_13_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCE58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90F88, &unk_1C12A81A0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0FCE620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90F88, &unk_1C12A81A0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0FCE6D0(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for PhotosInformationalPopover(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCE768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C0FCE820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91900, &unk_1C12AD6A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0FCE8D4(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DC0, &qword_1C12AA0A0);
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1C1263190();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v2, &unk_1EBE91DC0, &qword_1C12AA0A0, v3);
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosInformationalPopoverContent(v4, v1, v5, v6);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FCEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PhotosInformationalPopoverContent(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_4_2();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FCEB48(void *a1)
{
  sub_1C1262940();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE933F0, &qword_1C12A43F0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D80, &unk_1C12CE960);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1265930();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1265930();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8, &qword_1C12B77B0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  sub_1C0FDB6D4(v1, &qword_1EBE933F0, &qword_1C12A43F0, v2);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EBE98D88, &qword_1EBE98D80, &unk_1C12CE960, MEMORY[0x1E6980758]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8, &qword_1C12B77B0, MEMORY[0x1E69802E0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C0FCEF70(void *a1)
{
  sub_1C1263190();
  sub_1C1263C30();
  sub_1C126118C();
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  return swift_getWitnessTable();
}

uint64_t sub_1C0FCF004(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C0FCF038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C0FF9E60();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

char *sub_1C0FCF108(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

double sub_1C0FCF150@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s17PhotosSwiftUICore16PhotosNotchSpecsVwet_0(uint64_t a1, int a2)
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

uint64_t sub_1C0FCF1B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void PhotosDetailsNavigationContext.init(name:representedItemTransform:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C1261E20();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = type metadata accessor for PhotosDetailsNavigationTransitionInfoRepository();
  v18 = OUTLINED_FUNCTION_24_0(v17);
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = MEMORY[0x1E69E7CC8];
  v7[2] = v18;
  v20 = type metadata accessor for PhotosDetailsNavigationMediaRepository();
  v21 = OUTLINED_FUNCTION_24_0(v20);
  *(v21 + 16) = v19;
  v7[3] = v21;
  MEMORY[0x1C68EF850](45, 0xE100000000000000);
  sub_1C1261E10();
  OUTLINED_FUNCTION_7_5();
  sub_1C0FD1868(v22, v23, MEMORY[0x1E69695E0]);
  v24 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v24);

  (*(v10 + 8))(v14, v8);
  *v7 = v5;
  v7[1] = v3;
  v7[4] = v16;
  v7[5] = v15;
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosDetailsNavigationContext.imageContentRect(for:targetPixelSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v10 = *v4;
  v9 = v4[1];
  v11 = v4[4];
  if (v11)
  {
    v12 = v4[5];

    v11(&v30, a1);
    sub_1C0FCF004(v11, v12);
    sub_1C0FD09FC(&v30, v29);
  }

  else
  {
    sub_1C0FA139C(a1, v29);
  }

  sub_1C10C8EF4(v29, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  *&v30 = v10;
  *(&v30 + 1) = v9;

  sub_1C0FF9388(&v30, v29);
  sub_1C0FD0AC4();
  if (v25 == 1)
  {
    sub_1C0FD1A5C(v29, &qword_1EBE8FE10, qword_1C12A1CA0);
    sub_1C0FD0978(&v30);
    v13 = v24;
    v14 = &qword_1EBE8FE10;
    v15 = qword_1C12A1CA0;
LABEL_9:
    result = sub_1C0FD1A5C(v13, v14, v15);
    v20 = 0uLL;
    v18 = 1;
    v21 = 0uLL;
    goto LABEL_10;
  }

  sub_1C0FD0AC4();
  sub_1C0FD09A8(v24);
  v16 = v27;
  if (!v27)
  {
    sub_1C0FD1A5C(v29, &qword_1EBE8FE10, qword_1C12A1CA0);
    sub_1C0FD0978(&v30);
    v14 = &unk_1EBE8FE18;
    v15 = &qword_1C12B1780;
    v13 = v26;
    goto LABEL_9;
  }

  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v17 + 24))(v32, &v30, v16, v17, a3, a4);
  v22 = v32[1];
  v23 = v32[0];
  v18 = v33;
  sub_1C0FD1A5C(v29, &qword_1EBE8FE10, qword_1C12A1CA0);
  sub_1C0FD0978(&v30);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v26);
  v21 = v22;
  v20 = v23;
LABEL_10:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v18;
  return result;
}

double PhotosDetailsNavigationContext.finalizeRepresentedItem(_:enableDiagnostics:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[4];
  if (v7)
  {
    v8 = v2[5];

    v7(v10, a1);
    sub_1C0FCF004(v7, v8);
    sub_1C0FD09FC(v10, v11);
  }

  else
  {
    sub_1C0FA139C(a1, v11);
  }

  sub_1C10C8EF4(v11, a2 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  *a2 = v6;
  a2[1] = v5;

  return result;
}

_OWORD *PhotosDetailsNavigationContextualItem.init(contextID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_1C0FD09FC(a3, a4 + 1);
}

uint64_t PhotosDetailsNavigationContext.isPlaceholder.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDE80640 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_1EDE80640);
  }

  if (v1 == qword_1EDE80648 && v2 == unk_1EDE80650)
  {
    return 1;
  }

  OUTLINED_FUNCTION_18();

  return sub_1C1266D50();
}

uint64_t sub_1C0FCF70C()
{
  v0 = sub_1C1261E20();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  v7 = type metadata accessor for PhotosDetailsNavigationTransitionInfoRepository();
  v8 = OUTLINED_FUNCTION_24_0(v7);
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDE80658 = v8;
  v10 = type metadata accessor for PhotosDetailsNavigationMediaRepository();
  v11 = OUTLINED_FUNCTION_24_0(v10);
  *(v11 + 16) = v9;
  qword_1EDE80660 = v11;
  MEMORY[0x1C68EF850](45, 0xE100000000000000);
  sub_1C1261E10();
  OUTLINED_FUNCTION_7_5();
  sub_1C0FD1868(v12, v13, MEMORY[0x1E69695E0]);
  v14 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v14);

  result = (*(v2 + 8))(v6, v0);
  qword_1EDE80648 = 0x6C6F686563616C70;
  unk_1EDE80650 = 0xEB00000000726564;
  qword_1EDE80668 = 0;
  unk_1EDE80670 = 0;
  return result;
}

uint64_t static PhotosDetailsNavigationContext.placeholder.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDE80640 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_1EDE80640);
  }

  v2 = unk_1EDE80650;
  v3 = qword_1EDE80658;
  v4 = qword_1EDE80660;
  v5 = qword_1EDE80668;
  v6 = unk_1EDE80670;
  *a1 = qword_1EDE80648;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;

  return sub_1C0FCF1B4(v5, v6);
}

uint64_t sub_1C0FCF91C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosDetailsNavigationContext.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnvironmentValues.detailsNavigationContext.getter()
{
  sub_1C0FD0A0C();

  return sub_1C12637F0();
}

double sub_1C0FCF98C@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.detailsNavigationContext.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  result = *&v6;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1C0FCF9E0(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v12[0] = *a1;
  v12[1] = v1;
  v12[2] = v2;
  v12[3] = v3;
  v12[4] = v4;
  v12[5] = v5;

  sub_1C0FCF1B4(v4, v5);
  return EnvironmentValues.detailsNavigationContext.setter(v12, v6, v7, v8, v9, v10);
}

void (*EnvironmentValues.detailsNavigationContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v3;
  v3[12] = v1;
  v3[13] = sub_1C0FD0A0C();
  sub_1C12637F0();
  return sub_1C0FCFB30;
}

void sub_1C0FCFB30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[6] = v4;
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v2[7] = v3;
  v2[8] = v6;
  v2[9] = v5;
  v2[10] = v7;
  v2[11] = v8;
  if (a2)
  {

    sub_1C0FCF1B4(v7, v8);
    sub_1C1263800();
    v9 = v2[4];
    v10 = v2[5];

    sub_1C0FCF004(v9, v10);
  }

  else
  {
    sub_1C1263800();
  }

  free(v2);
}

uint64_t sub_1C0FCFC24()
{
  if (qword_1EDE80640 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE80668;
  v1 = unk_1EDE80670;
  qword_1EDE7FEE0 = qword_1EDE80648;
  *algn_1EDE7FEE8 = unk_1EDE80650;
  qword_1EDE7FEF0 = qword_1EDE80658;
  unk_1EDE7FEF8 = qword_1EDE80660;
  qword_1EDE7FF00 = qword_1EDE80668;
  unk_1EDE7FF08 = unk_1EDE80670;

  return sub_1C0FCF1B4(v0, v1);
}

uint64_t sub_1C0FCFCCC@<X0>(void *a1@<X8>)
{
  if (qword_1EDE7FED8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EDE7FEE8;
  v3 = qword_1EDE7FEF0;
  v4 = unk_1EDE7FEF8;
  v5 = qword_1EDE7FF00;
  v6 = unk_1EDE7FF08;
  *a1 = qword_1EDE7FEE0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;

  return sub_1C0FCF1B4(v5, v6);
}

uint64_t PhotosDetailsNavigationContextualItem.description.getter()
{
  MEMORY[0x1C68EF850](*v0, v0[1]);
  MEMORY[0x1C68EF850](47, 0xE100000000000000);
  v1 = sub_1C0FD0524();
  MEMORY[0x1C68EF850](v1);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 91;
}

uint64_t static PhotosDetailsNavigationContextualItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  return sub_1C0FCFE68(v1 + 16, (v0 + 2));
}

uint64_t sub_1C0FCFE68(uint64_t a1, uint64_t a2)
{
  sub_1C0FA139C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90068, &qword_1C12A26A0);
  if (swift_dynamicCast())
  {
    sub_1C0F9DDE4(v19, &v16);
    sub_1C0FA139C(a2, v14);
    if (swift_dynamicCast())
    {
      sub_1C0F9DDE4(v12, v15);
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_1C0FD0164();
      v5 = v4;
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_1C0FD1A5C(v12, &qword_1EBE90070, &qword_1C12A26A8);
      v5 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    return v5 & 1;
  }

  else
  {
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_1C1266940();

    OUTLINED_FUNCTION_9_6();
    v16 = v8;
    v17 = v7;
    sub_1C0FA139C(a1, v19);
    v9 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v9);

    result = OUTLINED_FUNCTION_12_4("Fatal error", v10, v11, v16, v17, "PhotosSwiftUICore/PhotosDetailsNavigationContext.swift");
    __break(1u);
  }

  return result;
}

uint64_t PhotosDetailsNavigationContextualItem.hashValue.getter()
{
  sub_1C1266E90();
  sub_1C1265EF0();
  sub_1C0FD0300();
  return sub_1C1266EE0();
}

uint64_t sub_1C0FD00B4(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C1265EF0();
  sub_1C0FD0300();
  return sub_1C1266EE0();
}

uint64_t areSameRepresentedItems(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C0FA139C(a1, v5);
  sub_1C0FA139C(a2, v4);
  LOBYTE(a2) = sub_1C0FCFE68(v5, v4);
  sub_1C0FD0A94(v4);
  sub_1C0FD0A94(v5);
  return a2 & 1;
}

void sub_1C0FD0164()
{
  OUTLINED_FUNCTION_23();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C1266950();
  swift_getAssociatedConformanceWitness();
  sub_1C12668E0();
  sub_1C1266950();
  swift_getAssociatedConformanceWitness();
  sub_1C12668E0();
  MEMORY[0x1C68F0200](v3, v2);
  sub_1C0FD1A08(v2);
  sub_1C0FD1A08(v3);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C0FD0300()
{
  OUTLINED_FUNCTION_23();
  sub_1C0FA139C(v0, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90068, &qword_1C12A26A0);
  if (swift_dynamicCast())
  {
    sub_1C0F9DDE4(v16, &v13);
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_0();
    v3 = v2;
    OUTLINED_FUNCTION_19();
    MEMORY[0x1EEE9AC00](v4);
    v6 = &v13 - v5;
    sub_1C1266950();
    swift_getAssociatedConformanceWitness();
    v7 = sub_1C1265D40();
    (*(v3 + 8))(v6, AssociatedTypeWitness);
    MEMORY[0x1C68F07E0](v7);
    __swift_destroy_boxed_opaque_existential_0Tm(&v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_22_0();
  }

  else
  {
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    sub_1C1266940();

    OUTLINED_FUNCTION_9_6();
    v13 = v9;
    v14 = v8;
    sub_1C0FA139C(v0, v16);
    v10 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v10);

    OUTLINED_FUNCTION_12_4("Fatal error", v11, v12, v13, v14, "PhotosSwiftUICore/PhotosDetailsNavigationContext.swift");
    __break(1u);
  }
}

uint64_t sub_1C0FD0524()
{
  sub_1C0FA139C(v0, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90068, &qword_1C12A26A0);
  if (swift_dynamicCast())
  {
    sub_1C0F9DDE4(v13, &v10);
    __swift_project_boxed_opaque_existential_1(&v10, v12);
    swift_getDynamicType();
    v9[5] = sub_1C1266FF0();
    v9[6] = v1;
    MEMORY[0x1C68EF850](45, 0xE100000000000000);
    __swift_project_boxed_opaque_existential_1(&v10, v12);
    v9[3] = swift_getAssociatedTypeWitness();
    v9[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v9);
    sub_1C1266950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078, &qword_1C12A26B0);
    v2 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v2);

    __swift_destroy_boxed_opaque_existential_0Tm(&v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    return OUTLINED_FUNCTION_18();
  }

  else
  {
    *&v13[0] = 0;
    *(&v13[0] + 1) = 0xE000000000000000;
    sub_1C1266940();

    OUTLINED_FUNCTION_9_6();
    v10 = v5;
    v11 = v4;
    sub_1C0FA139C(v0, v13);
    v6 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v6);

    result = OUTLINED_FUNCTION_12_4("Fatal error", v7, v8, v10, v11, "PhotosSwiftUICore/PhotosDetailsNavigationContext.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0FD071C()
{
  sub_1C1266E90();
  sub_1C0FD0300();
  return sub_1C1266EE0();
}

uint64_t sub_1C0FD0764(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C0FD0300();
  return sub_1C1266EE0();
}

void sub_1C0FD07AC()
{
  OUTLINED_FUNCTION_23();
  v21 = v0;
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = sub_1C1264130();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_19();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v19 - v17;
  (*(v8 + 16))(v11, v7, v2, v16);
  sub_1C0FD1474(v11, v5, v2, v18);
  MEMORY[0x1C68EE920](v18, v20, v12, v21);
  (*(v14 + 8))(v18, v12);
  OUTLINED_FUNCTION_22_0();
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

_OWORD *sub_1C0FD09FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C0FD0A0C()
{
  result = qword_1EDE7FED0;
  if (!qword_1EDE7FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FED0);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C0FD0AC4()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_18();
  v4(v3);
  return v0;
}

uint64_t sub_1C0FD0B20@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1265460();
  v2 = *MEMORY[0x1E697C8C0];
  sub_1C1263FA0();
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1C0FD0B94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 != 4)
  {
    MEMORY[0x1C68EDE20](a5);
  }

  return sub_1C1264A70();
}

void sub_1C0FD0C60()
{
  OUTLINED_FUNCTION_1_2();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1C0FD0C88(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C68F0770](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1C0FD0CDC()
{
  OUTLINED_FUNCTION_17_4();

  result = sub_1C1265E80();
  *v0 = 0;
  return result;
}

uint64_t sub_1C0FD0D50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1266E40();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1C0FD0DA8()
{
  OUTLINED_FUNCTION_17_4();

  v2 = sub_1C1265E90();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1C0FD0E34(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1C1261FC0();
}

uint64_t sub_1C0FD0EA0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0FD0ED4(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C0FD0F30@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1C0FD0E24();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FD0F5C(uint64_t a1)
{
  v1 = sub_1C1265EA0();
  v2 = MEMORY[0x1C68EF880](v1);

  return v2;
}

uint64_t sub_1C0FD0FBC(uint64_t a1, uint64_t a2)
{
  sub_1C1265EA0();
  sub_1C1265EF0();
}

uint64_t sub_1C0FD101C(uint64_t a1, uint64_t a2)
{
  sub_1C1265EA0();
  sub_1C1266E90();
  sub_1C1265EF0();
  v2 = sub_1C1266EE0();

  return v2;
}

void *sub_1C0FD1090@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C0FD1150(uint64_t a1, uint64_t a2)
{
  sub_1C1266E90();
  swift_getWitnessTable();
  sub_1C1261FD0();
  return sub_1C1266EE0();
}

uint64_t sub_1C0FD11B8(uint64_t a1)
{
  sub_1C0FD1868(&unk_1EDE76A50, type metadata accessor for CIContextOption, &unk_1C12A2AD8);
  sub_1C0FD1868(&qword_1EBE90118, type metadata accessor for CIContextOption, &unk_1C12A2874);

  return sub_1C1266BE0();
}