uint64_t sub_1D53550CC(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v9 = v2[10];
  v8 = v2[11];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1D4E73560;

  return sub_1D5354154(a1, a2, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D53551C4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  OUTLINED_FUNCTION_1_0();
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1D560CBA8();
  OUTLINED_FUNCTION_69(v9);
  v11 = (v8 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = *(v1 + v8);
  v16 = *(v1 + ((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1D4E73560;

  return sub_1D5354BC0(a1, v13, v14, v1 + v6, v15, v1 + v11, v16, v4);
}

void OUTLINED_FUNCTION_33_48()
{

  JUMPOUT(0x1DA6EAC70);
}

double OUTLINED_FUNCTION_37_38()
{
  result = 0.0;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_32()
{

  return swift_beginAccess();
}

uint64_t _s14TransientEntryVMa(uint64_t a1)
{
  result = qword_1EDD5B0B0;
  if (!qword_1EDD5B0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D535549C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return 0;
  }

  _s15PersistentEntryVMa(0);
  if ((sub_1D560D8C8() & 1) == 0 || (sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + *(_s14TransientEntryVMa(0) + 20));

  return sub_1D4F3C87C(v3);
}

uint64_t sub_1D535553C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736973726570 && a2 == 0xEF7972746E45746ELL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5355608(char a1)
{
  if (a1)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x6574736973726570;
  }
}

uint64_t sub_1D5355648(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F48D0, &qword_1D5655FA0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D535614C();
  sub_1D56163D8();
  v14[15] = 0;
  _s15PersistentEntryVMa(0);
  OUTLINED_FUNCTION_1_145();
  sub_1D5356368(v11, v12, &unk_1D5668C50);
  sub_1D56160C8();
  if (!v2)
  {
    v14[14] = *(v3 + *(_s14TransientEntryVMa(0) + 20));
    v14[13] = 1;
    sub_1D5356314();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D53557FC(uint64_t a1)
{
  sub_1D560D838();
  OUTLINED_FUNCTION_0_190();
  sub_1D5356368(v1, v2, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  _s15PersistentEntryVMa(0);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_3_150();
  sub_1D5356368(v3, v4, MEMORY[0x1E6974F88]);
  sub_1D5614CB8();
  sub_1D560C328();
  OUTLINED_FUNCTION_2_143();
  sub_1D5356368(v5, v6, MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  _s14TransientEntryVMa(0);
  sub_1D5614E28();
}

uint64_t sub_1D5355978()
{
  sub_1D56162D8();
  sub_1D560D838();
  OUTLINED_FUNCTION_0_190();
  sub_1D5356368(v0, v1, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  _s15PersistentEntryVMa(0);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_3_150();
  sub_1D5356368(v2, v3, MEMORY[0x1E6974F88]);
  sub_1D5614CB8();
  sub_1D560C328();
  OUTLINED_FUNCTION_2_143();
  sub_1D5356368(v4, v5, MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  _s14TransientEntryVMa(0);
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5355AF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  _s15PersistentEntryVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F48B8, &qword_1D5655F98);
  OUTLINED_FUNCTION_4();
  v21 = v7;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = _s14TransientEntryVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D535614C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v13;
  v15 = v21;
  v26 = 0;
  OUTLINED_FUNCTION_1_145();
  sub_1D5356368(v16, v17, &unk_1D5668CB8);
  v18 = v22;
  sub_1D5615FD8();
  sub_1D53561A0(v23, v14);
  v24 = 1;
  sub_1D5356204();
  sub_1D5615FD8();
  (*(v15 + 8))(v9, v18);
  *(v14 + *(v10 + 20)) = v25;
  sub_1D5356258(v14, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D53562BC(v14, _s14TransientEntryVMa);
}

uint64_t sub_1D5355DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D535553C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5355DF4(uint64_t a1)
{
  v2 = sub_1D535614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5355E30(uint64_t a1)
{
  v2 = sub_1D535614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5355EA8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D560D838();
  sub_1D5356368(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  _s15PersistentEntryVMa(0);
  sub_1D560D9A8();
  sub_1D5356368(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
  sub_1D5614CB8();
  sub_1D560C328();
  sub_1D5356368(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5356058(uint64_t a1, uint64_t a2)
{
  _s15PersistentEntryVMa(0);

  return sub_1D560C2D8();
}

uint64_t sub_1D53560D8(uint64_t a1)
{
  result = _s15PersistentEntryVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D535614C()
{
  result = qword_1EC7F48C0;
  if (!qword_1EC7F48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48C0);
  }

  return result;
}

uint64_t sub_1D53561A0(uint64_t a1, uint64_t a2)
{
  v4 = _s15PersistentEntryVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5356204()
{
  result = qword_1EC7F48C8;
  if (!qword_1EC7F48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48C8);
  }

  return result;
}

uint64_t sub_1D5356258(uint64_t a1, uint64_t a2)
{
  v4 = _s14TransientEntryVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53562BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D5356314()
{
  result = qword_1EC7F48D8;
  if (!qword_1EC7F48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48D8);
  }

  return result;
}

uint64_t sub_1D5356368(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s14TransientEntryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5356490()
{
  result = qword_1EC7F48E0;
  if (!qword_1EC7F48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48E0);
  }

  return result;
}

unint64_t sub_1D53564E8()
{
  result = qword_1EC7F48E8;
  if (!qword_1EC7F48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48E8);
  }

  return result;
}

unint64_t sub_1D5356540()
{
  result = qword_1EC7F48F0;
  if (!qword_1EC7F48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48F0);
  }

  return result;
}

uint64_t sub_1D5356598(uint64_t a1)
{
  v1 = sub_1D5613578();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v2 + 104))(v4, *MEMORY[0x1E6976A78], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D560CD48();
  sub_1D5356FE8(&qword_1EC7ECE40, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BC0]);
  sub_1D560DA98();
  (*(v2 + 8))(v4, v1);
  v9 = sub_1D56123B8();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t MusicTopPlayedSongsResponse.songs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicTopPlayedSongsResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D5613838();
  OUTLINED_FUNCTION_0_191();
  sub_1D5356FE8(v2, v3, MEMORY[0x1E6976C00]);

  return sub_1D560DAA8();
}

uint64_t MusicTopPlayedSongsResponse.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();

  return sub_1D5614CB8();
}

uint64_t MusicTopPlayedSongsResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicTopPlayedSongsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34[6] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  OUTLINED_FUNCTION_4();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  v12 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v34);
  v18 = sub_1D502A3D0(v34);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v18;
  v29[2] = 0;
  v30 = v14;
  v31 = v11;
  v32 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5616378();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29[1] = sub_1D5616368();
  if (v20 < 2)
  {
  }

  v21 = v12;
  v22 = v6;
  v23 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v24 = v31;
  sub_1D56123A8();
  v25 = sub_1D560CD98();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v25);
  sub_1D5613838();
  OUTLINED_FUNCTION_0_191();
  sub_1D5356FE8(v26, v27, MEMORY[0x1E6976BC0]);
  v28 = v32;
  sub_1D5612368();

  sub_1D4E6C9CC(v22, &qword_1EC7EA7D8, &unk_1D561E8B0);
  (*(v33 + 8))(v24, v28);
  (*(v23 + 8))(v17, v21);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicTopPlayedSongsResponse.encode(to:)(void *a1)
{
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v9 = sub_1D5356598(v8);
  if (v1)
  {
    sub_1D4E6C9CC(v12, &qword_1EC7EF298, &qword_1D5630DA0);
    return (*(v5 + 8))(v8, v3);
  }

  else
  {
    v11 = v9;
    sub_1D4E6C9CC(v12, &qword_1EC7EF298, &qword_1D5630DA0);
    (*(v5 + 8))(v8, v3);
    sub_1D502A128(a1, v11);
    return sub_1D4EA7410(v11);
  }
}

unint64_t sub_1D5356EA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514E2CC();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t sub_1D5356FE8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MusicTopPlayedSongsResponse(uint64_t a1)
{
  result = qword_1EC7F4900;
  if (!qword_1EC7F4900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D53570B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicShareableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5357120(uint64_t a1)
{
  v2 = sub_1D53572F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D535715C(uint64_t a1)
{
  v2 = sub_1D53572F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicShareableItemResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4910, &qword_1D5656200);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D53572F4();
  sub_1D56163D8();
  type metadata accessor for MusicShareableItem(0);
  OUTLINED_FUNCTION_0_192();
  sub_1D5357758(v8, v9, &protocol conformance descriptor for MusicShareableItem);
  sub_1D56160C8();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1D53572F4()
{
  result = qword_1EC7F4918;
  if (!qword_1EC7F4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4918);
  }

  return result;
}

uint64_t MusicShareableItemResponse.hashValue.getter()
{
  sub_1D56162D8();
  MusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t MusicShareableItemResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for MusicShareableItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4928, &qword_1D5656208);
  OUTLINED_FUNCTION_4();
  v20 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MusicShareableItemResponse(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D53572F4();
  sub_1D5616398();
  if (!v2)
  {
    v14 = v19;
    OUTLINED_FUNCTION_0_192();
    sub_1D5357758(v15, v16, &protocol conformance descriptor for MusicShareableItem);
    v17 = v21;
    sub_1D5615FD8();
    (*(v20 + 8))(v10, v6);
    sub_1D53576A8(v17, v13, type metadata accessor for MusicShareableItem);
    sub_1D53576A8(v13, v14, type metadata accessor for MusicShareableItemResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5357620(uint64_t a1)
{
  sub_1D56162D8();
  MusicShareableItem.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t type metadata accessor for MusicShareableItemResponse(uint64_t a1)
{
  result = qword_1EC7F4938;
  if (!qword_1EC7F4938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D53576A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5357758(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D53577C8(uint64_t a1)
{
  result = type metadata accessor for MusicShareableItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicShareableItemResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D53578E4()
{
  result = qword_1EC7F4948;
  if (!qword_1EC7F4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4948);
  }

  return result;
}

unint64_t sub_1D535793C()
{
  result = qword_1EC7F4950;
  if (!qword_1EC7F4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4950);
  }

  return result;
}

unint64_t sub_1D5357994()
{
  result = qword_1EC7F4958;
  if (!qword_1EC7F4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4958);
  }

  return result;
}

uint64_t VideoArtwork.FileAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C0A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void static VideoArtwork.FileAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D560BFB8())
  {
    v4 = type metadata accessor for VideoArtwork.FileAsset(0);
    if (*(a1 + v4[5]) == *(a2 + v4[5]) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
    {

      sub_1D4F286E0();
    }
  }
}

void VideoArtwork.FileAsset.hash(into:)(uint64_t a1)
{
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_193();
  sub_1D5358384(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  v4 = type metadata accessor for VideoArtwork.FileAsset(0);
  MEMORY[0x1DA6EC0D0](*(v1 + v4[5]));
  MEMORY[0x1DA6EC0D0](*(v1 + v4[6]));
  v5 = *(v1 + v4[7]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v5);

  sub_1D4F31AC0();
}

uint64_t VideoArtwork.FileAsset.hashValue.getter()
{
  sub_1D56162D8();
  VideoArtwork.FileAsset.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5357C70(uint64_t a1)
{
  sub_1D56162D8();
  VideoArtwork.FileAsset.hash(into:)(v2);
  return sub_1D5616328();
}

void VideoArtwork.FileAsset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v26 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  OUTLINED_FUNCTION_4();
  v24 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v28 = a1;
  sub_1D4E628D4(a1, v27);
  sub_1D5611218();
  v17 = MEMORY[0x1E6976120];
  sub_1D5358384(&qword_1EC7F4960, MEMORY[0x1E6976120], MEMORY[0x1E6976130]);
  OUTLINED_FUNCTION_1_146();
  sub_1D5358384(v18, v17, v19);
  sub_1D5610768();
  if (v2)
  {
    v27[0] = v2;
    v21 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v22 = v26;
      (*(v26 + 32))(v9, v11, v4);
      sub_1D5615C18();
      swift_allocError();
      v23 = v28;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v23);
      (*(v22 + 8))(v9, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    sub_1D546214C(v25);
    v20 = (v24 + 8);
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*v20)(v16, v12);
  }
}

uint64_t VideoArtwork.FileAsset.encode(to:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1D5462674();
  v7 = MEMORY[0x1E6976120];
  sub_1D5358384(&qword_1EC7F4960, MEMORY[0x1E6976120], MEMORY[0x1E6976130]);
  OUTLINED_FUNCTION_1_146();
  sub_1D5358384(v8, v7, v9);
  sub_1D5610778();
  return (*(v3 + 8))(v6, v1);
}

uint64_t VideoArtwork.FileAsset.description.getter()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D568BEC0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_193();
  sub_1D5358384(v0, v1, MEMORY[0x1E6968FE0]);
  v2 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](0x6874646977202C22, 0xEA0000000000203ALL);
  type metadata accessor for VideoArtwork.FileAsset(0);
  v3 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x746867696568202CLL, 0xEA0000000000203ALL);
  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  sub_1D5615568();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D5358384(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D5358410(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5358450(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D53584AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 8);
  v13[3] = a3;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v11 = *(a3 - 8);
  (*(v11 + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1D535856C(v13, a2, a5);
  return (*(v11 + 8))(a1, a3);
}

uint64_t sub_1D535856C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  sub_1D4E628D4(a1, a3);
  *(a3 + 40) = a2;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  sub_1D53588D0(v8, a3, v6, v7);
  sub_1D5358624(a2);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5358624(uint64_t a1)
{
  v2 = sub_1D56131C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D555A4A8();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      v17 = v1;
      v21 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v16 = v7;
      v9 = v7 + 32;
      v10 = *MEMORY[0x1E6976988];
      v11 = (v3 + 104);
      v12 = (v3 + 8);
      do
      {
        sub_1D4E628D4(v9, v18);
        v13 = v19;
        v14 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        (*v11)(v5, v10, v2);
        sub_1D5159364(v5, v13, v14);
        (*v12)(v5, v2);
        __swift_destroy_boxed_opaque_existential_1(v18);
        sub_1D5615C88();
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v9 += 40;
        --v8;
      }

      while (v8);

      v15 = v21;
      v1 = v17;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1D535885C(v15, *(v1 + 48));
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

void sub_1D535885C(uint64_t a1, void *a2)
{
  sub_1D4F688F0();
  v3 = sub_1D5615158();

  [a2 setRelatedModelObjects_];
}

uint64_t sub_1D53588D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1D4E628D4(v26, v25);
  sub_1D4E628D4(v26, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v18, v22);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1D4E48324(v21, v25);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    v19 = 0u;
    v18 = 0u;
    sub_1D4E6C9CC(&v18, &qword_1EC7EC520, &unk_1D5621050);
  }

  sub_1D4E628D4(v25, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v18, v22);
    v13 = *(a2 + 48);
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v9 + 104))(v11, *MEMORY[0x1E6976988], v8);
    v16 = sub_1D5159364(v11, v14, v15);
    (*(v9 + 8))(v11, v8);
    [v13 setModelObject_];

    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v20 = 0;
    v19 = 0u;
    v18 = 0u;
    sub_1D4E6C9CC(&v18, &unk_1EC7ED400, &qword_1D5620CF0);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x206D657469206E41, 0xE800000000000000);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000071, 0x80000001D568B9C0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5358C80()
{
  type metadata accessor for UserStateViewModel(0);
  swift_allocObject();
  result = sub_1D5358D1C();
  qword_1EDD55F60 = result;
  return result;
}

uint64_t static UserStateViewModel.shared.getter()
{
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D5358D1C()
{
  v1 = v0;
  v105[2] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v97 = &v86 - v3;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_notificationCoalescer) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation) = 0;
  v4 = [objc_opt_self() sharedController];
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_cloudAvailabilityController) = v4;
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [v6 autoupdatingDefaultMediaIdentity];
  v8 = [v5 sharedMonitorForIdentity_];

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) = v8;
  v94 = objc_opt_self();
  v9 = [v94 defaultIdentityStore];
  v10 = [v6 defaultMediaIdentity];
  aBlock = 0;
  v11 = [v9 DSIDForUserIdentity:v10 outError:&aBlock];

  if (v11)
  {
    v12 = aBlock;
  }

  else
  {
    v13 = aBlock;
    v14 = sub_1D560BE98();

    swift_willThrow();
  }

  if (qword_1EDD5B420 != -1)
  {
    swift_once();
  }

  sub_1D528BCC0();
  v15 = aBlock;
  sub_1D528BCC0();
  LODWORD(v95) = BYTE2(aBlock);
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  v18 = [v17 ageVerificationState];

  if (v18)
  {
    v19 = [v18 status];
  }

  else
  {
    v19 = 0;
  }

  v96 = v16;
  v20 = [v16 defaultManager];
  v21 = [v20 ageVerificationState];

  if (v21)
  {
    v22 = [v21 treatment];
  }

  else
  {
    v22 = 0;
  }

  v23 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor;
  v93 = v1;
  v24 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) subscriptionStatus];
  if (v18)
  {
    sub_1D54C7EA8(v19, &aBlock);
    v25 = aBlock;
  }

  else
  {
    v25 = 4;
  }

  v92 = v25;
  if (v21)
  {
    sub_1D54EA538(v22, &aBlock);
    v26 = aBlock;
  }

  else
  {
    v26 = 2;
  }

  v91 = v26;
  v27 = v15;
  v98 = v11;
  v28 = v11 != 0;
  v29 = qword_1EDD5D8A0;
  v30 = v24;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_1D560C758();
  __swift_project_value_buffer(v31, qword_1EDD76DB0);
  v32 = v30;
  v33 = sub_1D560C738();
  v34 = sub_1D56156E8();
  v90 = v32;

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v89 = v23;
    v37 = v36;
    v105[0] = v36;
    *v35 = 136446210;
    v87 = v28;
    v88 = v27;
    LOBYTE(aBlock) = v27;
    v38 = v95;
    BYTE1(aBlock) = v95;
    BYTE2(aBlock) = v28;
    v39 = v91;
    v40 = v92;
    BYTE3(aBlock) = v92;
    BYTE4(aBlock) = v91;
    v100 = v24;
    v48 = UserState.debugDescription.getter(v36, v41, v42, v43, v44, v45, v46, v47);
    v50 = sub_1D4E6835C(v48, v49, v105);

    *(v35 + 4) = v50;
    v51 = v34;
    v52 = v87;
    _os_log_impl(&dword_1D4E3F000, v33, v51, "Initial user state: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v53 = v37;
    v23 = v89;
    MEMORY[0x1DA6ED200](v53, -1, -1);
    MEMORY[0x1DA6ED200](v35, -1, -1);

    v54 = v88;
  }

  else
  {

    v54 = v27;
    v38 = v95;
    v52 = v28;
    v39 = v91;
    v40 = v92;
  }

  v55 = v93;
  swift_beginAccess();
  LOBYTE(v105[0]) = v54;
  BYTE1(v105[0]) = v38;
  BYTE2(v105[0]) = v52;
  BYTE3(v105[0]) = v40;
  BYTE4(v105[0]) = v39;
  v105[1] = v24;
  v56 = v55;
  v95 = v90;
  sub_1D560C8B8();
  swift_endAccess();
  v57 = *(v55 + v23);
  v58 = swift_allocObject();
  swift_weakInit();
  v103 = sub_1D535C204;
  v104 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_1D4E73058;
  v102 = &block_descriptor_24_0;
  v59 = _Block_copy(&aBlock);
  v60 = v57;

  v61 = [v60 beginObservingSubscriptionStatusWithHandler_];
  _Block_release(v59);

  *(v56 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken) = v61;
  swift_unknownObjectRelease();
  aBlock = MEMORY[0x1E69E7CC0];
  v62 = objc_opt_self();
  v63 = [v62 defaultCenter];
  v64 = [v94 defaultIdentityStore];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v65);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v66 = [v62 defaultCenter];
  v67 = objc_opt_self();
  v68 = [v67 preferredResolutionsDidChangeNotification];
  v69 = [v67 standardUserDefaults];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v70);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v71 = sub_1D5615458();
  v72 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v71);
  sub_1D56153C8();

  v73 = sub_1D56153B8();
  v74 = swift_allocObject();
  v75 = MEMORY[0x1E69E85E0];
  v74[2] = v73;
  v74[3] = v75;
  v74[4] = v56;
  *(v56 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation) = sub_1D51EC8B4(0xD00000000000001DLL, 0x80000001D568C160, v72, &unk_1D56566A8, v74);

  v76 = [v62 defaultCenter];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v77);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v78 = [v62 defaultCenter];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v79);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v80 = [v62 defaultCenter];
  v81 = [v96 defaultManager];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v82);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  swift_allocObject();
  swift_weakInit();

  sub_1D56120C8();
  swift_allocObject();

  v83 = sub_1D56120D8();

  v84 = v95;

  *(v56 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_notificationCoalescer) = v83;

  return v56;
}

uint64_t sub_1D5359828(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D53598C8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a2;
  v10 = a2;
  sub_1D51ECB60(0, 0, v6, &unk_1D56566E0, v9);
}

uint64_t sub_1D5359A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5359A24, 0, 0);
}

uint64_t sub_1D5359A24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_95();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_9_99();
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1D5359AFC;

    return sub_1D535B26C();
  }

  else
  {
    OUTLINED_FUNCTION_8_104();

    return v4();
  }
}

uint64_t sub_1D5359AFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D5359C04, 0, 0);
}

uint64_t sub_1D5359C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42B8, &qword_1D5652C10);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4998, &qword_1D56566C8);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49A0, &qword_1D56566D0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_1D56153C8();
  v4[19] = sub_1D56153B8();
  v9 = sub_1D5615338();
  v4[20] = v9;
  v4[21] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D5359DE0, v9, v8);
}

uint64_t sub_1D5359DE0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  *(swift_task_alloc() + 16) = 1;
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1D56154A8();

  sub_1D5615488();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1D56153B8();
  v0[22] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_0_194(v8);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v7, v10);
}

uint64_t sub_1D5359F38()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D535A070, v5, v4);
}

uint64_t sub_1D535A070(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

    OUTLINED_FUNCTION_55();

    return v3();
  }

  else
  {
    v10 = *(v1 + 24);
    if (sub_1D56154E8())
    {
      v5 = sub_1D56153B8();
      *(v1 + 176) = v5;
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v1 + 184) = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_0_194(v6);
      v8 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v1 + 16, v5, v8);
    }

    else
    {
      *(v1 + 40) = v2 & 0x1010101;
      *(v1 + 48) = v10;
      v9 = swift_task_alloc();
      *(v1 + 192) = v9;
      *v9 = v1;
      v9[1] = sub_1D535A244;

      return sub_1D535B26C();
    }
  }
}

uint64_t sub_1D535A244()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D535A358, v5, v4);
}

uint64_t sub_1D535A358()
{
  OUTLINED_FUNCTION_60();
  v1 = sub_1D56153B8();
  *(v0 + 176) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 184) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_0_194(v2);
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 16, v1, v4);
}

uint64_t sub_1D535A3EC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D51ECB60(0, 0, v3, &unk_1D56566B8, v6);
}

uint64_t sub_1D535A518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D535A538, 0, 0);
}

uint64_t sub_1D535A538()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_95();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_9_99();
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1D535A60C;

    return sub_1D535B26C();
  }

  else
  {
    OUTLINED_FUNCTION_8_104();

    return v4();
  }
}

uint64_t sub_1D535A60C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D535A714, 0, 0);
}

uint64_t UserStateViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken))
  {
    [*(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) endObservingSubscriptionStatusWithToken_];
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation))
  {

    sub_1D56154B8();
  }

  *(v0 + v2) = 0;

  v3 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel__userState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4980, &qword_1D56565A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t UserStateViewModel.__deallocating_deinit()
{
  UserStateViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D535A8BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_112();
  sub_1D560C8F8();
}

uint64_t sub_1D535A92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4988, &qword_1D5656688);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1D535AA74(v4);
}

uint64_t sub_1D535AA00()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4980, &qword_1D56565A0);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D535AA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4988, &qword_1D5656688);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4980, &qword_1D56565A0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1D535ABAC()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v2;
  v1[25] = v0;
  sub_1D56153C8();
  v1[26] = sub_1D56153B8();
  v4 = sub_1D5615338();
  v1[27] = v4;
  v1[28] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D535AC40, v4, v3);
}

uint64_t sub_1D535AC40()
{
  OUTLINED_FUNCTION_80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v1 = v0[22];
  if (v1)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_112();
    sub_1D560C8F8();

    OUTLINED_FUNCTION_55();

    return v2();
  }

  else
  {
    v4 = *(v0[25] + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor);
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1D535AE30;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4990, &unk_1D5656690);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D4F40510;
    v0[13] = &block_descriptor_21;
    v0[14] = v5;
    [v4 performBlockWithLoadedSubscriptionStatus_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D535AE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = v0[6];
  v0[29] = v1;
  v2 = v0[28];
  v3 = v0[27];
  if (v1)
  {
    v4 = sub_1D535B200;
  }

  else
  {
    v4 = sub_1D535AF58;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D535AF58()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[23];
  v0[30] = v1;
  v0[18] = 2;
  v0[19] = 0;
  v0[20] = 0;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1D535B014;

  return sub_1D535B26C();
}

uint64_t sub_1D535B014()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D535B148, v6, v5);
}

uint64_t sub_1D535B148()
{
  v1 = *(v0 + 240);

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_112();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D535B200()
{
  OUTLINED_FUNCTION_80();

  swift_willThrow();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D535B26C()
{
  OUTLINED_FUNCTION_80();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v3;
  sub_1D56153C8();
  v1[7] = sub_1D56153B8();
  v5 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D535B33C, v5, v4);
}

uint64_t sub_1D535B33C()
{
  v65 = v0;
  v64 = *MEMORY[0x1E69E9840];

  v1 = [objc_opt_self() defaultIdentityStore];
  v2 = [objc_opt_self() defaultMediaIdentity];
  *(v0 + 16) = 0;
  v3 = [v1 DSIDForUserIdentity:v2 outError:v0 + 16];

  v4 = *(v0 + 16);
  v52 = v3;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = v4;
    v7 = sub_1D560BE98();

    swift_willThrow();
  }

  v8 = *(v0 + 48);
  if (v8 == 2)
  {
    if (qword_1EDD5B420 != -1)
    {
      swift_once();
    }

    sub_1D528BCC0();
    LOBYTE(v8) = v53;
    LOBYTE(v9) = v54;
  }

  else
  {
    v53 = v8 & 0x101;
    v9 = (v8 >> 16) & 1;
  }

  v51 = v9;
  v10 = [objc_opt_self() defaultManager];
  v11 = [v10 ageVerificationState];

  if (v11)
  {
    v12 = [v11 status];
    v13 = [v11 treatment];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *(v0 + 32);
  v15 = v14;
  if (!v14)
  {
    v15 = [*(*(v0 + 40) + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) subscriptionStatus];
    v14 = *(v0 + 32);
  }

  v16 = v14;
  if (v11)
  {
    sub_1D54C7EA8(v12, &v53);
    v17 = v53;
    sub_1D54EA538(v13, &v53);
    v18 = v53;
  }

  else
  {
    v18 = 2;
    v17 = 4;
  }

  v49 = v17;
  v19 = v8 & 1;
  v20 = qword_1EDD5D8A0;
  v50 = v15;
  v21 = v15;
  if (v20 != -1)
  {
    swift_once();
  }

  v48 = v18;
  v22 = sub_1D560C758();
  __swift_project_value_buffer(v22, qword_1EDD76DB0);
  v23 = v21;

  v24 = sub_1D560C738();
  v25 = sub_1D56156E8();

  if (os_log_type_enabled(v24, v25))
  {
    v47 = v11;
    v26 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v26 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v23;
    v27 = v19;
    sub_1D560C8F8();

    v44 = v25;

    v28 = *(v0 + 17);
    v29 = *(v0 + 18);
    v30 = *(v0 + 19);
    v31 = *(v0 + 24);
    v59 = *(v0 + 16);
    v60 = v28;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    LOBYTE(v53) = v19;
    HIBYTE(v53) = v51;
    v32 = v52 != 0;
    v33 = v18;
    v54 = v52 != 0;
    v34 = v49;
    v55 = v49;
    v56 = v48;
    v35 = v50;
    v57 = v50;
    v36 = sub_1D535B874(&v53);
    v38 = v37;

    v39 = sub_1D4E6835C(v36, v38, &v58);
    v19 = v27;
    v23 = v46;

    *(v26 + 4) = v39;
    _os_log_impl(&dword_1D4E3F000, v24, v44, "Updating user state: %{public}s.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1DA6ED200](v45, -1, -1);
    v40 = v26;
    v11 = v47;
    MEMORY[0x1DA6ED200](v40, -1, -1);
  }

  else
  {

    v35 = v50;
    v33 = v18;
    v34 = v49;
    v32 = v52 != 0;
  }

  LOBYTE(v53) = v19;
  HIBYTE(v53) = v51;
  v54 = v32;
  v55 = v34;
  v56 = v33;
  v57 = v35;
  v41 = v23;
  sub_1D5359828(&v53);

  OUTLINED_FUNCTION_55();

  return v42();
}

uint64_t sub_1D535B874(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v42 = a1[2];
  v44 = a1[3];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v43 = v1[3];
  v45 = v1[4];
  v46 = a1[4];
  v47 = *(v1 + 1);
  v48 = *(a1 + 1);
  sub_1D5615B68();

  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v7, v8);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D5684670);

  if (v2 != v4)
  {
    if (v2)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v9, v10);

    MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  }

  sub_1D5615B68();

  if (v5)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v11, v12);

  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568C060);

  if (v3 != v5)
  {
    if (v3)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v3)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v13, v14);

    MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  }

  if (v6)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v6)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v15, v16);

  MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D568C080);

  if (v42 != v6)
  {
    if (v42)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v42)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v18);

    MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  }

  v19 = 7104878;
  v20 = 0xE800000000000000;
  v21 = 0x6E776F6E6B6E752ELL;
  switch(v43)
  {
    case 1:
      v21 = 0x75716552746F6E2ELL;
      v20 = 0xEC00000064657269;
      goto LABEL_49;
    case 2:
      v21 = 0x657269757165722ELL;
      goto LABEL_48;
    case 3:
      v21 = 0x656966697265762ELL;
LABEL_48:
      v20 = 0xE900000000000064;
      goto LABEL_49;
    case 4:
      MEMORY[0x1DA6EAC70](7104878, 0xE300000000000000);

      MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568C0A0);

      v23 = v44;
      goto LABEL_52;
    default:
LABEL_49:
      MEMORY[0x1DA6EAC70](v21, v20);

      MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568C0A0);

      v23 = v44;
      v22 = v44 != 4 && v43 == v44;
LABEL_52:
      if (!v22)
      {
        v24 = 0xE300000000000000;
        v25 = 7104878;
        switch(v23)
        {
          case 0:
            v24 = 0xE800000000000000;
            v25 = 0x6E776F6E6B6E752ELL;
            break;
          case 1:
            v25 = 0x75716552746F6E2ELL;
            v24 = 0xEC00000064657269;
            break;
          case 2:
            v25 = 0x657269757165722ELL;
            goto LABEL_58;
          case 3:
            v25 = 0x656966697265762ELL;
LABEL_58:
            v24 = 0xE900000000000064;
            break;
          case 4:
            break;
          default:
            JUMPOUT(0);
        }

        MEMORY[0x1DA6EAC70](v25, v24);

        MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
      }

      if (v45 == 2)
      {
        MEMORY[0x1DA6EAC70](7104878, 0xE300000000000000);

        MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568C0C0);

        v26 = v46;
        if (v46 == 2)
        {
          goto LABEL_78;
        }

        goto LABEL_68;
      }

      if (v45)
      {
        v27 = 0xEB00000000393174;
      }

      else
      {
        v27 = 0xEA00000000004574;
      }

      MEMORY[0x1DA6EAC70](0x6963696C7078652ELL, v27);

      MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568C0C0);

      v26 = v46;
      if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
      {
LABEL_68:
        if (v26)
        {
          v28 = 0xEB00000000393174;
        }

        else
        {
          v28 = 0xEA00000000004574;
        }

        if (v26 == 2)
        {
          v29 = 7104878;
        }

        else
        {
          v29 = 0x6963696C7078652ELL;
        }

        if (v26 == 2)
        {
          v30 = 0xE300000000000000;
        }

        else
        {
          v30 = v28;
        }

        MEMORY[0x1DA6EAC70](v29, v30);

        MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
      }

LABEL_78:
      if (!v47)
      {
        MEMORY[0x1DA6EAC70](7104878, 0xE300000000000000);

        MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D56846F0);

        v35 = v48;
        if (!v48)
        {
          goto LABEL_86;
        }

        goto LABEL_83;
      }

      v31 = [v47 description];
      v32 = sub_1D5614D68();
      v34 = v33;

      MEMORY[0x1DA6EAC70](v32, v34);

      MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D56846F0);

      if (v48)
      {
        sub_1D5100BA4();
        v35 = v48;
        v36 = v47;
        v37 = sub_1D5615848();

        if (v37)
        {
          goto LABEL_86;
        }

LABEL_83:
        v38 = [v35 description];
        v19 = sub_1D5614D68();
        v40 = v39;

        goto LABEL_85;
      }

      v40 = 0xE300000000000000;
LABEL_85:
      MEMORY[0x1DA6EAC70](v19, v40);

      MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);

LABEL_86:
      MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
      return 0x7461745372657355;
  }
}

uint64_t sub_1D535C014@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for UserStateViewModel(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for UserStateViewModel(uint64_t a1)
{
  result = qword_1EDD55F40;
  if (!qword_1EDD55F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D535C0A8(uint64_t a1)
{
  sub_1D535C1B4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D535C1B4()
{
  if (!qword_1EDD54408)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54408);
    }
  }
}

uint64_t block_copy_helper_22_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D535C224()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D5359C0C(v5, v6, v7, v2);
}

uint64_t sub_1D535C2C8()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D535A518(v5, v6, v7, v2);
}

uint64_t sub_1D535C364()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D5359A00(v6, v7, v8, v3, v2);
}

uint64_t (*MusicLibrarySearchRequest.topResultsLimit.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1D560DF48();
  *(a1 + 8) = v3 & 1;
  return sub_1D535C4B4;
}

uint64_t sub_1D535C4E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCEBD8](a1);
}

uint64_t sub_1D535C580(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCEBD0](a1, a2);
}

uint64_t _s13PersistedDateVMa(uint64_t a1)
{
  result = qword_1EDD5A2A0;
  if (!qword_1EDD5A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D535C6A0(uint64_t a1)
{
  result = sub_1D560C328();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D535C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1D535C7C4;

  return sub_1D52FA4F8(a2, a3, a4, a5);
}

uint64_t sub_1D535C7C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D535C8F8, 0, 0);
  }
}

uint64_t sub_1D535C8F8()
{
  v1 = v0[5];
  if (v1 && (sub_1D535C9A0(v0[4], v1), (v2 & 1) == 0))
  {
    sub_1D560C1F8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[2];
  v5 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(v4, v3, 1, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1D535C9A0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1D535CD20(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D535CA54(uint64_t a1)
{
  sub_1D560C328();
  OUTLINED_FUNCTION_0_195();
  sub_1D535CC6C(v1, v2, MEMORY[0x1E6969540]);

  return sub_1D5614CB8();
}

uint64_t sub_1D535CAC8()
{
  sub_1D56162D8();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_195();
  sub_1D535CC6C(v0, v1, MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D535CB48(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D560C328();
  sub_1D535CC6C(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

void sub_1D535CBEC(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1D535CA28(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1D535CC6C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1D535CCB4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1D535CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1D5615B58();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_1D535CE34()
{
  v0 = swift_allocObject();
  sub_1D535CE84();
  return v0;
}

CFNotificationCenterRef sub_1D535CE84()
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v2 = result;
    if (qword_1EC7E94A0 != -1)
    {
      swift_once();
    }

    CFNotificationCenterAddObserver(v2, v0, sub_1D535CFB4, qword_1EC7F49B0, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D535CF1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1D535CF64(v2);
  }
}

uint64_t sub_1D535CF64(uint64_t a1)
{
  _s25RecentlyPlayedInvalidatorCMa();
  sub_1D535D17C();
  sub_1D560C828();
  sub_1D560C888();
}

void sub_1D535CFB4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1D535CF1C(a1, a2);
}

__CFNotificationCenter *sub_1D535D050()
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v2 = result;
    CFNotificationCenterRemoveEveryObserver(result, v0);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D535D094()
{
  sub_1D535D050();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1D535D0EC@<X0>(uint64_t *a2@<X8>)
{
  _s25RecentlyPlayedInvalidatorCMa();
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

unint64_t sub_1D535D154(uint64_t a1)
{
  result = sub_1D535D17C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D535D17C()
{
  result = qword_1EC7F49B8;
  if (!qword_1EC7F49B8)
  {
    _s25RecentlyPlayedInvalidatorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F49B8);
  }

  return result;
}

uint64_t MigratedPlaylist.init(id:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 80) = v5;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t MigratedPlaylist.descriptionText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MigratedPlaylist.trackIDs.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t MigratedPlaylist.artworkImageFilePath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

BOOL static MigratedPlaylist.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v28 = a1[6];
  v6 = *(a1 + 56);
  v25 = a1[8];
  v29 = *(a1 + 72);
  v23 = a1[12];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v26 = a2[6];
  v11 = *(a2 + 56);
  v27 = *(a2 + 72);
  v24 = a2[8];
  v20 = a2[11];
  v21 = a1[11];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v22 = a2[12];
  if (!v12 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v7 || v3 != v8)
  {
    OUTLINED_FUNCTION_71();
    if ((sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v4 == v10 && v5 == v9;
    if (!v14 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == v26)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v29)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    v16 = v27;
    if (v25 != v24)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  sub_1D4EF81E0();
  if (v17)
  {
    if (v23)
    {
      if (!v22)
      {
        return 0;
      }

      v18 = v21 == v20 && v23 == v22;
      return v18 || (sub_1D5616168() & 1) != 0;
    }

    if (!v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MigratedPlaylist.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v8 = *(v1 + 64);
  v6 = *(v1 + 96);
  sub_1D5614E28();
  sub_1D5614E28();
  if (v2)
  {
    OUTLINED_FUNCTION_10_96();
    sub_1D5614E28();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_10_96();
    MEMORY[0x1DA6EC100](v3);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_100();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_9_100();
  if (!v5)
  {
LABEL_4:
    OUTLINED_FUNCTION_10_96();
    MEMORY[0x1DA6EC100](v8);
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_9_100();
LABEL_8:
  sub_1D4F06928();
  if (!v6)
  {
    return OUTLINED_FUNCTION_9_100();
  }

  OUTLINED_FUNCTION_10_96();

  return sub_1D5614E28();
}

uint64_t MigratedPlaylist.hashValue.getter()
{
  sub_1D56162D8();
  MigratedPlaylist.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D535D760(uint64_t a1)
{
  sub_1D56162D8();
  MigratedPlaylist.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D535D79C@<X0>(uint64_t *a1@<X8>)
{
  result = MigratedPlaylist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t MigratedPlaylist.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  MEMORY[0x1DA6EAC70](v1, v2);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xEA00000000002220);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t MigratedPlaylist.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v7 = *(v0 + 96);
  OUTLINED_FUNCTION_9_0();
  v21 = v9;
  v22 = v8;
  strcpy(v20, "\n  id: ");
  BYTE1(v20[1]) = 0;
  WORD1(v20[1]) = 0;
  HIDWORD(v20[1]) = -402653184;
  MEMORY[0x1DA6EAC70]();
  OUTLINED_FUNCTION_1_147();
  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  strcpy(v20, ",\n  title: ");
  HIWORD(v20[1]) = -5120;
  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_1_147();
  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  if (v4)
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v20[0] = 0xD000000000000017;
    v20[1] = v10;
    MEMORY[0x1DA6EAC70](v3, v4);
    OUTLINED_FUNCTION_1_147();
    OUTLINED_FUNCTION_4_113();
  }

  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v20[0] = 0xD00000000000001ELL;
    v20[1] = v11;
    v12 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v12);

    OUTLINED_FUNCTION_4_113();
  }

  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v20[0] = 0xD00000000000001DLL;
    v20[1] = v13;
    v14 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v14);

    OUTLINED_FUNCTION_4_113();
  }

  sub_1D5615B68();

  strcpy(v20, ",\n  trackIDs: ");
  HIBYTE(v20[1]) = -18;
  v15 = MEMORY[0x1DA6EAF70](v19, MEMORY[0x1E69E6158]);
  MEMORY[0x1DA6EAC70](v15);

  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  if (v7)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v20[1] = v16;
    MEMORY[0x1DA6EAC70](v18, v7);
    OUTLINED_FUNCTION_1_147();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, v20[1]);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v21;
}

uint64_t MigratedPlaylist.creationTimeSeconds.getter()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_7_113(*(v0 + 48));
  }
}

void MigratedPlaylist.creationTimeSeconds.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
LABEL_4:
    *(v2 + 48) = v3;
    OUTLINED_FUNCTION_6_109(a1, a2);
    return;
  }

  v3 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    goto LABEL_4;
  }

  __break(1u);
}

void (*MigratedPlaylist.creationTimeSeconds.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 48) / 1000;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_1D535DCA4;
}

void sub_1D535DCA4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(a1 + 8))
  {
LABEL_6:
    v3 = 0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_105();
  if (!v4)
  {
    __break(1u);
LABEL_5:
    if (v2)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_8_105();
    if (!v4)
    {
      __break(1u);
      return;
    }
  }

LABEL_9:
  v5 = *(a1 + 16);
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
}

uint64_t MigratedPlaylist.updatedTimeSeconds.getter()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_7_113(*(v0 + 64));
  }
}

void MigratedPlaylist.updatedTimeSeconds.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
LABEL_4:
    *(v2 + 64) = v3;
    OUTLINED_FUNCTION_5_109(a1, a2);
    return;
  }

  v3 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    goto LABEL_4;
  }

  __break(1u);
}

void (*MigratedPlaylist.updatedTimeSeconds.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 64) / 1000;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_1D535DDC0;
}

void sub_1D535DDC0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(a1 + 8))
  {
LABEL_6:
    v3 = 0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_105();
  if (!v4)
  {
    __break(1u);
LABEL_5:
    if (v2)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_8_105();
    if (!v4)
    {
      __break(1u);
      return;
    }
  }

LABEL_9:
  v5 = *(a1 + 16);
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
}

unint64_t sub_1D535DE24()
{
  result = qword_1EC7F49C0;
  if (!qword_1EC7F49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F49C0);
  }

  return result;
}

uint64_t sub_1D535DE80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D535DEC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D535DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D535DF7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D535DFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D535E018()
{
  v0 = sub_1D560F8F8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for MusicMoviePropertyProvider(0);
  sub_1D4E69910(v31[1] + *(v21 + 24), v13, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v13, 1, v14);
  if (v22)
  {
    sub_1D4E50004(v13, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    sub_1D560F908();
    (*(v2 + 104))(v6, *MEMORY[0x1E6975910], v0);
    v23 = sub_1D560F8E8();
    v24 = *(v2 + 8);
    v24(v6, v0);
    v24(v9, v0);
    if (v23)
    {
      v25 = sub_1D560F918();
      v26 = OUTLINED_FUNCTION_15_2();
      v27(v26);
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      v29 = OUTLINED_FUNCTION_15_2();
      v30(v29);
    }
  }

  return 0;
}

uint64_t sub_1D535E2C0()
{
  v1 = v0;
  v2 = sub_1D5613198();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v29 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v30 = type metadata accessor for MusicMoviePropertyProvider(0);
  v20 = *(v30 + 88);
  (*(v4 + 104))(v19, *MEMORY[0x1E69768D0], v2);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
  v21 = *(v8 + 56);
  sub_1D4E69910(v1 + v20, v11, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69910(v19, &v11[v21], &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_57(v11, 1, v2);
  if (!v23)
  {
    sub_1D4E69910(v11, v16, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_57(&v11[v21], 1, v2);
    if (!v23)
    {
      v24 = v29;
      (*(v4 + 32))(v29, &v11[v21], v2);
      sub_1D51DF1C8();
      OUTLINED_FUNCTION_15_2();
      v22 = sub_1D5614D18();
      v25 = *(v4 + 8);
      v25(v24, v2);
      sub_1D4E50004(v19, &qword_1EC7EC530, &unk_1D5632150);
      v25(v16, v2);
      sub_1D4E50004(v11, &qword_1EC7EC530, &unk_1D5632150);
      goto LABEL_10;
    }

    sub_1D4E50004(v19, &qword_1EC7EC530, &unk_1D5632150);
    (*(v4 + 8))(v16, v2);
LABEL_9:
    sub_1D4E50004(v11, &qword_1EC7EF628, &unk_1D5632440);
    v22 = 0;
    goto LABEL_10;
  }

  sub_1D4E50004(v19, &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_57(&v11[v21], 1, v2);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v11, &qword_1EC7EC530, &unk_1D5632150);
  v22 = 1;
LABEL_10:
  sub_1D560D768();
  if (v26 || (sub_1D560D628(), v27))
  {
  }

  else if ((v22 & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D535E6A8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_106();
  sub_1D4E69910(v0 + *(v4 + 104), v1, &qword_1EC7EF5D8, &unk_1D5632160);
  v5 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v1, 1, v5);
  if (v6)
  {
    sub_1D4E50004(v1, &qword_1EC7EF5D8, &unk_1D5632160);
    v7 = 0;
  }

  else
  {
    v7 = sub_1D5614A58();
    (*(*(v5 - 8) + 8))(v1, v5);
  }

  return v7 & 1;
}

BOOL sub_1D535E7AC()
{
  v1 = v0;
  sub_1D5614A48();
  OUTLINED_FUNCTION_4();
  v36 = v3;
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v35 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = *(type metadata accessor for MusicMoviePropertyProvider(0) + 104);
  sub_1D4E69910(v1 + v24, v23, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v23, 1, v9);
  if (v25)
  {
    goto LABEL_3;
  }

  v26 = sub_1D5614A58();
  v34 = *(v11 + 8);
  v34(v23, v9);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  sub_1D4E69910(v1 + v24, v20, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v20, 1, v9);
  if (v25)
  {
    v23 = v20;
LABEL_3:
    sub_1D4E50004(v23, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v11 + 32))(v15, v20, v9);
  sub_1D5614A68();
  v28 = v35;
  v27 = v36;
  v29 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x1E6977490], v37);
  v30 = sub_1D5614A38();
  v31 = *(v27 + 8);
  v31(v28, v29);
  v31(v8, v29);
  v32 = OUTLINED_FUNCTION_15_2();
  (v34)(v32);
  return (v30 & 1) != 0;
}

uint64_t sub_1D535EAB4(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_106();
  sub_1D4E69910(v1 + *(v6 + 24), v2, &qword_1EC7EDB98, L"X\b\a");
  v7 = sub_1D560F928();
  v8 = OUTLINED_FUNCTION_57(v2, 1, v7);
  if (v9)
  {
    sub_1D4E50004(v2, &qword_1EC7EDB98, L"X\b\a");
    v10 = 0;
  }

  else
  {
    v10 = a1(v8);
    (*(*(v7 - 8) + 8))(v2, v7);
  }

  return v10 & 1;
}

uint64_t sub_1D535EC4C()
{
  _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  _s15InternalStorageVMa(0);
  type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_33();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1D535ECB4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  OUTLINED_FUNCTION_71();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = qword_1EC7E9118;

    if (v14 != -1)
    {
      swift_once();
    }

    *&v29 = qword_1EC87C368;
    v31 = v13;
    sub_1D5364270();
    if (OUTLINED_FUNCTION_63_20())
    {
      sub_1D4FB8150();
      v15 = _s12InternalItemOMa(0);
      OUTLINED_FUNCTION_57(v11, 1, v15);
      if (!v16)
      {
        *(&v30 + 1) = v15;
        __swift_allocate_boxed_opaque_existential_0(&v29);
LABEL_15:
        sub_1D53642D4();

        goto LABEL_16;
      }

      v17 = &qword_1EC7EB6E0;
      v18 = &qword_1D56320D0;
      v19 = v11;
      goto LABEL_14;
    }

    v20 = qword_1EC7E9120;

    if (v20 != -1)
    {
      OUTLINED_FUNCTION_16_83(&qword_1EC7E9120);
    }

    *&v29 = qword_1EDD76A58;
    v31 = v13;
    v21 = OUTLINED_FUNCTION_63_20();

    if (v21)
    {
      _s15InternalStorageVMa(0);
      sub_1D4FB8150();
      v22 = type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_57(v7, 1, v22);
      if (!v16)
      {
        *(&v30 + 1) = v22;
        __swift_allocate_boxed_opaque_existential_0(&v29);
        OUTLINED_FUNCTION_14_73();
        goto LABEL_15;
      }

      v17 = &unk_1EC7ED370;
      v18 = &unk_1D5624FE0;
      v19 = v7;
LABEL_14:
      result = sub_1D4E50004(v19, v17, v18);
      v29 = 0u;
      v30 = 0u;
LABEL_16:
      v24 = v30;
      *a2 = v29;
      a2[1] = v24;
      return result;
    }

    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
    v31 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v28 = *(&v29 + 1);
    v27 = v29;
  }

  else
  {
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D568C380);
    v31 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v28 = *(&v29 + 1);
    v27 = v29;
  }

  result = OUTLINED_FUNCTION_22_61("Fatal error", v25, v26, v27, v28, "MusicKitInternal/PlaylistEntryPropertyProvider+Internal.swift");
  __break(1u);
  return result;
}

uint64_t sub_1D535F090(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastClass())
  {
    v3 = qword_1EC7E9120;
    swift_retain_n();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_16_83(&qword_1EC7E9120);
    }

    sub_1D5364270();
    v4 = sub_1D5614D18();

    if (v4)
    {
      swift_getKeyPath();
      sub_1D5364198(&qword_1EDD52F88, _s15InternalStorageVMa, &unk_1D5656D18);
      sub_1D5613118();

      return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D568C380);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_22_61("Fatal error", v6, v7, 0, 0xE000000000000000, "MusicKitInternal/PlaylistEntryPropertyProvider+Internal.swift");
  __break(1u);
  return result;
}

void sub_1D535F2F8()
{
  OUTLINED_FUNCTION_47();
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49E0, &qword_1D5656D98);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_118_1();
  v16 = _s15InternalStorageVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49E8, &unk_1D5656DA0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D568C2D0);
    v36 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v29 = 68;
LABEL_14:
    v33 = v29;
    OUTLINED_FUNCTION_22_61("Fatal error", v25, v26, v27, v28, "MusicKitInternal/PlaylistEntryPropertyProvider+Internal.swift");
    __break(1u);
    return;
  }

  v19 = v18;
  sub_1D4E628D4(v3, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49F0, &qword_1D5669750);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v16);
    sub_1D4E50004(v0, &qword_1EC7F49E0, &qword_1D5656D98);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D568C310);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v29 = 71;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v0, 0, 1, v16);
  sub_1D53642D4();
  v20 = qword_1EC7E9120;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_16_83(&qword_1EC7E9120);
  }

  v35[0] = qword_1EDD76A58;
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  sub_1D5364270();
  v21 = sub_1D5614D18();

  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568C350);
    v36 = v19;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v29 = 78;
    goto LABEL_14;
  }

  sub_1D4FB8150();
  OUTLINED_FUNCTION_22_64();
  sub_1D5364380(v1, v22);
  v23 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_57(v10, 1, v23);
  if (v24)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v10, 1, v23);
    if (!v24)
    {
      sub_1D4E50004(v10, &unk_1EC7ED370, &unk_1D5624FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_73();
    OUTLINED_FUNCTION_61();
    sub_1D53642D4();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  }

  sub_1D50ADCCC();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D535F7B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  if (qword_1EC7E9118 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EC87C368;
  qword_1EC87C560 = v0;
}

uint64_t sub_1D535F858()
{
  if (qword_1EC7E94A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC87C560;
  if (qword_1EC87C560 >> 62)
  {
    sub_1D560CDE8();

    v2 = sub_1D5615E18();

    return v2;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
    return v0;
  }
}

void sub_1D535F918()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v44 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v39 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v40 = v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A20, &qword_1D5656DE0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A28, &qword_1D5656DE8);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_122_3();
  v25 = *(v24 + 56);
  v42 = v4;
  sub_1D4FB8150();
  v43 = v2;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v0, 1, v13);
  if (!v26)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v0 + v25, 1, v13);
    if (!v26)
    {
      sub_1D53642D4();
      sub_1D5361658();
      v32 = v31;
      sub_1D5364380(v17, _s12InternalItemOMa);
      sub_1D5364380(v21, _s12InternalItemOMa);
      sub_1D4E50004(v0, &qword_1EC7EB6E0, &qword_1D56320D0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_8_107();
    sub_1D5364380(v21, v27);
LABEL_9:
    v28 = &qword_1EC7F4A28;
    v29 = &qword_1D5656DE8;
    v30 = v0;
LABEL_21:
    sub_1D4E50004(v30, v28, v29);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_57(v0 + v25, 1, v13);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v0, &qword_1EC7EB6E0, &qword_1D56320D0);
LABEL_11:
  _s15InternalStorageVMa(0);
  v33 = *(v41 + 48);
  sub_1D4FB8150();
  sub_1D4FB8150();
  v34 = v44;
  OUTLINED_FUNCTION_57(v12, 1, v44);
  if (!v26)
  {
    v35 = v40;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(&v12[v33], 1, v34);
    if (!v36)
    {
      OUTLINED_FUNCTION_14_73();
      v37 = v39;
      sub_1D53642D4();
      v38 = *v35 == *v37 && v35[1] == v37[1];
      if (v38 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        sub_1D5364380(v37, type metadata accessor for SocialProfile);
        sub_1D5364380(v35, type metadata accessor for SocialProfile);
        sub_1D4E50004(v12, &unk_1EC7ED370, &unk_1D5624FE0);
        goto LABEL_22;
      }

      sub_1D5364380(v37, type metadata accessor for SocialProfile);
      sub_1D5364380(v35, type metadata accessor for SocialProfile);
      v28 = &unk_1EC7ED370;
      v29 = &unk_1D5624FE0;
      goto LABEL_20;
    }

    sub_1D5364380(v35, type metadata accessor for SocialProfile);
LABEL_19:
    v28 = &qword_1EC7F4A20;
    v29 = &qword_1D5656DE0;
LABEL_20:
    v30 = v12;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_57(&v12[v33], 1, v34);
  if (!v26)
  {
    goto LABEL_19;
  }

  sub_1D4E50004(v12, &unk_1EC7ED370, &unk_1D5624FE0);
LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D535FDF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEC0000006D657449;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75626972746E6F63 && a2 == 0xEB00000000726F74)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D535FEC4(char a1)
{
  if (a1)
  {
    return 0x75626972746E6F63;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_1D535FF0C(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A10, &qword_1D5656DD8);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D536432C();
  sub_1D56163D8();
  v23 = 0;
  _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_30_51();
  v12 = sub_1D5364198(v10, v11, &unk_1D5656C10);
  OUTLINED_FUNCTION_62_3(v4, &v23, v13, v14, v12);
  if (!v2)
  {
    v15 = *(_s15InternalStorageVMa(0) + 20);
    v22 = 1;
    type metadata accessor for SocialProfile(0);
    OUTLINED_FUNCTION_29_50();
    v18 = sub_1D5364198(v16, v17, &protocol conformance descriptor for SocialProfile);
    OUTLINED_FUNCTION_62_3(v4 + v15, &v22, v19, v20, v18);
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_1D53600B8()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_18_3();
  v10 = _s12InternalItemOMa(v9);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_118_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v0, 1, v10);
  if (v17)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5362B4C();
    sub_1D5364380(v14, _s12InternalItemOMa);
  }

  _s15InternalStorageVMa(0);
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v17)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5614E28();
    sub_1D5611AB8();
    OUTLINED_FUNCTION_6_110();
    sub_1D5364198(v18, v19, MEMORY[0x1E6976328]);
    OUTLINED_FUNCTION_24();
    sub_1D5614CB8();
    sub_1D5364380(v6, type metadata accessor for SocialProfile);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D5360340()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_4();
  v6 = _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v0, 1, v6);
  if (v13)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5362B4C();
    sub_1D5364380(v10, _s12InternalItemOMa);
  }

  _s15InternalStorageVMa(0);
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v13)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5614E28();
    sub_1D5611AB8();
    OUTLINED_FUNCTION_6_110();
    sub_1D5364198(v14, v15, MEMORY[0x1E6976328]);
    sub_1D5614CB8();
    v16 = OUTLINED_FUNCTION_24();
    sub_1D5364380(v16, v17);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D53605E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v37 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v38 = v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A00, &qword_1D5656DD0);
  OUTLINED_FUNCTION_4();
  v36 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = _s15InternalStorageVMa(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v16 = OUTLINED_FUNCTION_18_3();
  v17 = _s12InternalItemOMa(v16);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = *(v15 + 28);
  v22 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D536432C();
  v26 = v40;
  sub_1D5616398();
  if (!v26)
  {
    v40 = v21;
    v27 = v36;
    v42 = 0;
    OUTLINED_FUNCTION_30_51();
    sub_1D5364198(v28, v29, &unk_1D5656C38);
    sub_1D5615F78();
    sub_1D50ADCCC();
    v41 = 1;
    OUTLINED_FUNCTION_29_50();
    sub_1D5364198(v30, v31, &protocol conformance descriptor for SocialProfile);
    v32 = v39;
    sub_1D5615F78();
    (*(v27 + 8))(v13, v32);
    sub_1D50ADCCC();
    sub_1D53643D8();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_22_64();
  return sub_1D5364380(v2, v33);
}

uint64_t sub_1D5360948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D535FDF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5360970(uint64_t a1)
{
  v2 = sub_1D536432C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53609AC(uint64_t a1)
{
  v2 = sub_1D536432C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*sub_1D5360A00(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D535ECB4(a2, v5);
  return sub_1D5360A6C;
}

void sub_1D5360A6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4FB8150();

    sub_1D535F090(v2 + 32, v3);
    v4 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v4, v5, &qword_1D561C420);
  }

  else
  {

    sub_1D535F090(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D5360B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5364198(&qword_1EC7F49D0, _s15InternalStorageVMa, &unk_1D5656CA0);

  return MEMORY[0x1EEDD14D0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5360BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5364198(&qword_1EC7F49D8, _s15InternalStorageVMa, &unk_1D5656C60);

  return MEMORY[0x1EEDD14C8](a1, a2, a3, v6);
}

uint64_t sub_1D5360C88(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v2 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = _s12InternalItemOMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1D56162D8();
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5362B4C();
    sub_1D5364380(v10, _s12InternalItemOMa);
  }

  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5614E28();
    sub_1D5611AB8();
    sub_1D5364198(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
    sub_1D5614CB8();
    sub_1D5364380(v4, type metadata accessor for SocialProfile);
  }

  return sub_1D5616328();
}

uint64_t (*sub_1D5360F9C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D5612DA8();
  return sub_1D5360FF8;
}

void sub_1D5360FF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1D5361088(uint64_t a1)
{
  sub_1D5361164(319, qword_1EDD53010, _s12InternalItemOMa);
  if (v1 <= 0x3F)
  {
    sub_1D5361164(319, &qword_1EDD57508, type metadata accessor for SocialProfile);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5361164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D53611B8(uint64_t a1)
{
  result = type metadata accessor for MusicMovie(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D560EEA8();
    if (v3 <= 0x3F)
    {
      result = sub_1D5613838();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TVEpisode(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for UploadedAudio(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for UploadedVideo(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1D53612C4()
{
  OUTLINED_FUNCTION_47();
  v3 = type metadata accessor for UploadedVideo(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v34 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for UploadedAudio(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for TVEpisode(0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v33 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v20 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v24 = type metadata accessor for MusicMovie(0);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v26 = OUTLINED_FUNCTION_14_3();
  _s12InternalItemOMa(v26);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  OUTLINED_FUNCTION_0_196();
  sub_1D53643D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v22 + 32))(v1, v30, v20);
      sub_1D560EE38();
      (*(v22 + 8))(v1, v20);
      goto LABEL_11;
    case 2u:
      (*(v33 + 32))(v0, v30, v17);
      sub_1D56137B8();
      (*(v33 + 8))(v0, v17);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_25_53();
      sub_1D53642D4();

      v31 = v16;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_27_58();
      sub_1D53642D4();

      v31 = v11;
      goto LABEL_6;
    case 5u:
      sub_1D53642D4();

      v31 = v34;
      v32 = type metadata accessor for UploadedVideo;
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_28_56();
      sub_1D53642D4();

      v31 = v2;
LABEL_6:
      v32 = v22;
LABEL_10:
      sub_1D5364380(v31, v32);
LABEL_11:
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_46();
      return;
  }
}

void sub_1D5361658()
{
  OUTLINED_FUNCTION_47();
  v97 = v0;
  v98 = v1;
  v87 = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v92 = v3;
  v4 = OUTLINED_FUNCTION_70_0();
  v86 = type metadata accessor for UploadedAudio(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v91 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v85 = type metadata accessor for TVEpisode(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v90 = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v95 = v11;
  v96 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v89 = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v93 = v14;
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v88 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v83 = type metadata accessor for MusicMovie(v16);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v84 = v18;
  v19 = OUTLINED_FUNCTION_70_0();
  _s12InternalItemOMa(v19);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v23 = v21 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v83 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v83 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v83 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v83 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A30, &qword_1D5656DF0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v83 - v42;
  v44 = *(v41 + 56);
  sub_1D53643D8();
  sub_1D53643D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() == 1)
      {
        v64 = v93;
        v63 = v94;
        v65 = v88;
        (*(v93 + 32))(v88, &v43[v44], v94);
        sub_1D560EE28();
        v66 = *(v64 + 8);
        v66(v65, v63);
        v66(v36, v63);
        goto LABEL_24;
      }

      (*(v93 + 8))(v36, v94);
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 2)
      {
        (*(v95 + 8))(v33, v96);
        goto LABEL_39;
      }

      v55 = v95;
      v54 = v96;
      v56 = v89;
      (*(v95 + 32))(v89, &v43[v44], v96);
      sub_1D56137A8();
      v57 = *(v55 + 8);
      v57(v56, v54);
      v57(v33, v54);
LABEL_24:
      OUTLINED_FUNCTION_8_107();
      sub_1D5364380(v43, v67);
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 3)
      {
        OUTLINED_FUNCTION_3_151();
        v46 = v30;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_57_32();
      v58 = v90;
      sub_1D53642D4();
      OUTLINED_FUNCTION_93_2();
      v61 = v50 && v59 == v60;
      if (v61 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_3_151();
        sub_1D5364380(v58, v62);
      }

      else
      {
        OUTLINED_FUNCTION_3_151();
        sub_1D5364380(v58, v79);
      }

      OUTLINED_FUNCTION_3_151();
      v53 = v30;
      goto LABEL_51;
    case 4u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 4)
      {
        OUTLINED_FUNCTION_4_114();
        v46 = v27;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_57_32();
      v47 = v91;
      sub_1D53642D4();
      OUTLINED_FUNCTION_93_2();
      v50 = v50 && v48 == v49;
      if (v50 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_4_114();
        sub_1D5364380(v47, v51);
      }

      else
      {
        OUTLINED_FUNCTION_4_114();
        sub_1D5364380(v47, v78);
      }

      OUTLINED_FUNCTION_4_114();
      v53 = v27;
      goto LABEL_51;
    case 5u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 5)
      {
        OUTLINED_FUNCTION_2_145();
        v46 = v23;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_57_32();
      v68 = v92;
      sub_1D53642D4();
      OUTLINED_FUNCTION_93_2();
      v71 = v50 && v69 == v70;
      if (v71 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_2_145();
        sub_1D5364380(v68, v72);
      }

      else
      {
        OUTLINED_FUNCTION_2_145();
        sub_1D5364380(v68, v80);
      }

      OUTLINED_FUNCTION_2_145();
      v53 = v23;
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_0_196();
      OUTLINED_FUNCTION_24();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32())
      {
        OUTLINED_FUNCTION_5_110();
        v46 = v38;
LABEL_38:
        sub_1D5364380(v46, v45);
LABEL_39:
        sub_1D4E50004(v43, &qword_1EC7F4A30, &qword_1D5656DF0);
      }

      else
      {
        OUTLINED_FUNCTION_57_32();
        v73 = v84;
        sub_1D53642D4();
        OUTLINED_FUNCTION_93_2();
        v76 = v50 && v74 == v75;
        if (v76 || (sub_1D5616168() & 1) != 0)
        {
          sub_1D5611A78();
          OUTLINED_FUNCTION_5_110();
          sub_1D5364380(v73, v77);
        }

        else
        {
          OUTLINED_FUNCTION_5_110();
          sub_1D5364380(v73, v81);
        }

        OUTLINED_FUNCTION_5_110();
        v53 = v38;
LABEL_51:
        sub_1D5364380(v53, v52);
        OUTLINED_FUNCTION_8_107();
        sub_1D5364380(v43, v82);
      }

LABEL_52:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D5361DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F4D636973756DLL && a2 == 0xEA00000000006569;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1735290739 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F736970457674 && a2 == 0xE900000000000065;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646564616F6C7075 && a2 == 0xED00006F69647541;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646564616F6C7075 && a2 == 0xED00006F65646956)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D5361FF0(char a1)
{
  result = 0x766F4D636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x646956636973756DLL;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x646F736970457674;
      break;
    case 4:
    case 5:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D53620A4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AA8, &qword_1D5656E38);
  OUTLINED_FUNCTION_4();
  v118 = v6;
  v119 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v117 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v115 = type metadata accessor for UploadedVideo(v9);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v116 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AB0, &qword_1D5656E40);
  OUTLINED_FUNCTION_4();
  v113 = v13;
  v114 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v112 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v110 = type metadata accessor for UploadedAudio(v16);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v111 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AB8, &qword_1D5656E48);
  OUTLINED_FUNCTION_4();
  v108 = v20;
  v109 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v107 = v22;
  v23 = OUTLINED_FUNCTION_70_0();
  v105 = type metadata accessor for TVEpisode(v23);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v106 = v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AC0, &qword_1D5656E50);
  OUTLINED_FUNCTION_4();
  v103 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v100 = v28;
  OUTLINED_FUNCTION_70_0();
  v102 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v101 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v99 = v31;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AC8, &qword_1D5656E58);
  OUTLINED_FUNCTION_4();
  v97 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v94 = v34;
  OUTLINED_FUNCTION_70_0();
  v96 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v95 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v93 = v37;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AD0, &qword_1D5656E60);
  OUTLINED_FUNCTION_4();
  v91 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_14_3();
  v41 = type metadata accessor for MusicMovie(v40);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v43 = _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4AD8, &qword_1D5656E68);
  OUTLINED_FUNCTION_4();
  v121 = v46;
  v122 = v45;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v90 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5364430();
  v120 = v49;
  sub_1D56163D8();
  OUTLINED_FUNCTION_0_196();
  sub_1D53643D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v63 = v95;
      v64 = v93;
      v65 = v96;
      (*(v95 + 32))(v93, v1, v96);
      v124 = 1;
      sub_1D53645D4();
      OUTLINED_FUNCTION_56_30();
      OUTLINED_FUNCTION_18_75(v81, v82);
      OUTLINED_FUNCTION_12_81();
      sub_1D5364198(v83, v84, MEMORY[0x1E69754F0]);
      v70 = v98;
      OUTLINED_FUNCTION_64_25(v64, v85);
      v72 = &v129;
      goto LABEL_7;
    case 2u:
      v63 = v101;
      v64 = v99;
      v65 = v102;
      (*(v101 + 32))(v99, v1, v102);
      v125 = 2;
      sub_1D5364580();
      OUTLINED_FUNCTION_56_30();
      OUTLINED_FUNCTION_18_75(v66, v67);
      OUTLINED_FUNCTION_13_82();
      sub_1D5364198(v68, v69, MEMORY[0x1E6976BF0]);
      v70 = v104;
      OUTLINED_FUNCTION_64_25(v64, v71);
      v72 = &v130;
LABEL_7:
      (*(*(v72 - 32) + 8))(v50, v70);
      (*(v63 + 8))(v64, v65);
      goto LABEL_10;
    case 3u:
      v73 = v106;
      sub_1D53642D4();
      v126 = 3;
      sub_1D536452C();
      v74 = v107;
      v75 = v122;
      v76 = v120;
      sub_1D5616018();
      OUTLINED_FUNCTION_23_62();
      sub_1D5364198(v77, v78, &protocol conformance descriptor for TVEpisode);
      v79 = v109;
      sub_1D56160C8();
      (*(v108 + 8))(v74, v79);
      sub_1D5364380(v73, type metadata accessor for TVEpisode);
      return (*(v121 + 8))(v76, v75);
    case 4u:
      v57 = v111;
      sub_1D53642D4();
      v127 = 4;
      sub_1D53644D8();
      OUTLINED_FUNCTION_18_75(&_s12InternalItemO23UploadedAudioCodingKeysON, &v127);
      OUTLINED_FUNCTION_24_57();
      sub_1D5364198(v58, v59, &protocol conformance descriptor for UploadedAudio);
      sub_1D56160C8();
      v60 = OUTLINED_FUNCTION_41_44();
      v61(v60);
      v62 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 5u:
      v57 = v116;
      sub_1D53642D4();
      v128 = 5;
      sub_1D5364484();
      OUTLINED_FUNCTION_18_75(&_s12InternalItemO23UploadedVideoCodingKeysON, &v128);
      OUTLINED_FUNCTION_31_45();
      sub_1D5364198(v86, v87, &protocol conformance descriptor for UploadedVideo);
      sub_1D56160C8();
      v88 = OUTLINED_FUNCTION_41_44();
      v89(v88);
      v62 = type metadata accessor for UploadedVideo;
LABEL_9:
      sub_1D5364380(v57, v62);
LABEL_10:
      v56 = *(v121 + 8);
      v54 = v41;
      v55 = v43;
      break;
    default:
      sub_1D53642D4();
      v123 = 0;
      sub_1D5364628();
      sub_1D5616018();
      OUTLINED_FUNCTION_26_63();
      sub_1D5364198(v51, v52, &protocol conformance descriptor for MusicMovie);
      v53 = v92;
      sub_1D56160C8();
      (*(v91 + 8))(v3, v53);
      sub_1D5364380(v2, type metadata accessor for MusicMovie);
      v54 = OUTLINED_FUNCTION_41_44();
      break;
  }

  return v56(v54, v55);
}

void sub_1D5362B4C()
{
  OUTLINED_FUNCTION_47();
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v39 = v4;
  v5 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for UploadedAudio(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  type metadata accessor for TVEpisode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v38 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v14 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v37 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_18_3();
  _s12InternalItemOMa(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_0_196();
  sub_1D53643D8();
  OUTLINED_FUNCTION_20_5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v37 + 32))(v19, v25, v14);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_12_81();
      sub_1D5364198(v33, v34, MEMORY[0x1E69754F8]);
      sub_1D5614CB8();
      (*(v37 + 8))(v19, v14);
      goto LABEL_10;
    case 2u:
      (*(v38 + 32))(v2, v25, v11);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_13_82();
      sub_1D5364198(v29, v30, MEMORY[0x1E6976BF8]);
      sub_1D5614CB8();
      (*(v38 + 8))(v2, v11);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_25_53();
      sub_1D53642D4();
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_6_110();
      sub_1D5364198(v31, v32, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v28 = v10;
      break;
    case 4u:
      OUTLINED_FUNCTION_27_58();
      sub_1D53642D4();
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
      goto LABEL_8;
    case 5u:
      v14 = type metadata accessor for UploadedVideo;
      v0 = v39;
      sub_1D53642D4();
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
LABEL_8:
      sub_1D5611AB8();
      OUTLINED_FUNCTION_6_110();
      sub_1D5364198(v35, v36, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v28 = v0;
      break;
    default:
      OUTLINED_FUNCTION_28_56();
      sub_1D53642D4();
      OUTLINED_FUNCTION_65_28();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_6_110();
      sub_1D5364198(v26, v27, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v28 = v1;
      break;
  }

  sub_1D5364380(v28, v14);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5363050()
{
  sub_1D56162D8();
  sub_1D5362B4C();
  return sub_1D5616328();
}

uint64_t sub_1D5363090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A38, &qword_1D5656DF8);
  OUTLINED_FUNCTION_4();
  v123 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v131 = v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A40, &qword_1D5656E00);
  OUTLINED_FUNCTION_4();
  v122 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v127 = v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A48, &qword_1D5656E08);
  OUTLINED_FUNCTION_4();
  v121 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v126 = v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A50, &qword_1D5656E10);
  OUTLINED_FUNCTION_4();
  v120 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v130 = v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A58, &qword_1D5656E18);
  OUTLINED_FUNCTION_4();
  v119 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v125 = v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A60, &qword_1D5656E20);
  OUTLINED_FUNCTION_4();
  v118 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v124 = v20;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A68, &unk_1D5656E28);
  OUTLINED_FUNCTION_4();
  v129 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v132 = _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v111 = v24 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v110 = &v103 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v103 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v103 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v103 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v103 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v103 - v41;
  v134 = a1;
  v43 = OUTLINED_FUNCTION_20_5();
  __swift_project_boxed_opaque_existential_1(v43, v44);
  sub_1D5364430();
  v45 = v135;
  sub_1D5616398();
  if (v45)
  {
    goto LABEL_8;
  }

  v108 = v37;
  v106 = v34;
  v107 = v31;
  v109 = v40;
  v46 = v130;
  v135 = v42;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v49 == v50 >> 1)
  {
LABEL_7:
    OUTLINED_FUNCTION_65_0();
    v60 = sub_1D5615C18();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v62 = v46;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_20_5();
    v64(v63);
LABEL_8:
    v65 = v134;
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v105 = 0;
  if (v49 < (v50 >> 1))
  {
    v104 = *(v48 + v49);
    sub_1D4FE35EC();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      switch(v104)
      {
        case 1:
          v137 = 1;
          sub_1D53645D4();
          v69 = v125;
          v70 = v133;
          OUTLINED_FUNCTION_36_17(&_s12InternalItemO20MusicVideoCodingKeysON, &v137, v133);
          v76 = sub_1D560EEA8();
          OUTLINED_FUNCTION_12_81();
          sub_1D5364198(v77, v78, MEMORY[0x1E6975500]);
          OUTLINED_FUNCTION_57_6(v76);
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          (*(v119 + 8))(v69, v70);
          v97 = OUTLINED_FUNCTION_12_5();
          v98(v97);
          swift_storeEnumTagMultiPayload();
          v96 = v134;
          break;
        case 2:
          v138 = 2;
          sub_1D5364580();
          OUTLINED_FUNCTION_36_17(&_s12InternalItemO14SongCodingKeysON, &v138, v133);
          sub_1D5613838();
          OUTLINED_FUNCTION_13_82();
          sub_1D5364198(v71, v72, MEMORY[0x1E6976C08]);
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v86 = OUTLINED_FUNCTION_40_48();
          v87(v86);
          v88 = OUTLINED_FUNCTION_12_5();
          v89(v88);
          swift_storeEnumTagMultiPayload();
          goto LABEL_16;
        case 3:
          v139 = 3;
          sub_1D536452C();
          OUTLINED_FUNCTION_36_17(&_s12InternalItemO19TvEpisodeCodingKeysON, &v139, v133);
          v73 = OUTLINED_FUNCTION_65_0();
          type metadata accessor for TVEpisode(v73);
          OUTLINED_FUNCTION_23_62();
          sub_1D5364198(v74, v75, &protocol conformance descriptor for TVEpisode);
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_62_15();
          v91(v90);
          v92 = OUTLINED_FUNCTION_12_5();
          v93(v92);
          swift_storeEnumTagMultiPayload();
          v96 = v134;
          break;
        case 4:
          v140 = 4;
          sub_1D53644D8();
          OUTLINED_FUNCTION_36_17(&_s12InternalItemO23UploadedAudioCodingKeysON, &v140, v133);
          v66 = OUTLINED_FUNCTION_65_0();
          type metadata accessor for UploadedAudio(v66);
          OUTLINED_FUNCTION_24_57();
          sub_1D5364198(v67, v68, &protocol conformance descriptor for UploadedAudio);
          OUTLINED_FUNCTION_56_30();
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_40_48();
          v83(v82);
          v84 = OUTLINED_FUNCTION_12_5();
          v85(v84);
          goto LABEL_15;
        case 5:
          v141 = 5;
          sub_1D5364484();
          OUTLINED_FUNCTION_36_17(&_s12InternalItemO23UploadedVideoCodingKeysON, &v141, v133);
          v79 = OUTLINED_FUNCTION_65_0();
          type metadata accessor for UploadedVideo(v79);
          OUTLINED_FUNCTION_31_45();
          sub_1D5364198(v80, v81, &protocol conformance descriptor for UploadedVideo);
          OUTLINED_FUNCTION_56_30();
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v99 = OUTLINED_FUNCTION_40_48();
          v100(v99);
          v101 = OUTLINED_FUNCTION_12_5();
          v102(v101);
LABEL_15:
          swift_storeEnumTagMultiPayload();
LABEL_16:
          v96 = v134;
          break;
        default:
          v136 = 0;
          sub_1D5364628();
          v55 = v124;
          v56 = v133;
          OUTLINED_FUNCTION_36_17(&_s12InternalItemO20MusicMovieCodingKeysON, &v136, v133);
          v57 = type metadata accessor for MusicMovie(0);
          OUTLINED_FUNCTION_26_63();
          sub_1D5364198(v58, v59, &protocol conformance descriptor for MusicMovie);
          OUTLINED_FUNCTION_57_6(v57);
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          (*(v118 + 8))(v55, v56);
          v94 = OUTLINED_FUNCTION_12_5();
          v95(v94);
          swift_storeEnumTagMultiPayload();
          v96 = v134;
          break;
      }

      sub_1D53642D4();
      sub_1D53642D4();
      v65 = v96;
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5363D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5361DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5363D68(uint64_t a1)
{
  v2 = sub_1D5364430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5363DA4(uint64_t a1)
{
  v2 = sub_1D5364430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5363DE0(uint64_t a1)
{
  v2 = sub_1D5364628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5363E1C(uint64_t a1)
{
  v2 = sub_1D5364628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5363E58(uint64_t a1)
{
  v2 = sub_1D53645D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5363E94(uint64_t a1)
{
  v2 = sub_1D53645D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5363ED0(uint64_t a1)
{
  v2 = sub_1D5364580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5363F0C(uint64_t a1)
{
  v2 = sub_1D5364580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5363F48(uint64_t a1)
{
  v2 = sub_1D536452C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5363F84(uint64_t a1)
{
  v2 = sub_1D536452C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5363FC0(uint64_t a1)
{
  v2 = sub_1D53644D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5363FFC(uint64_t a1)
{
  v2 = sub_1D53644D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5364038(uint64_t a1)
{
  v2 = sub_1D5364484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5364074(uint64_t a1)
{
  v2 = sub_1D5364484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D53640E4(void *a1@<X8>)
{
  sub_1D53612C4();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5364114(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5362B4C();
  return sub_1D5616328();
}

uint64_t sub_1D5364198(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5364270()
{
  result = qword_1EC7F49F8;
  if (!qword_1EC7F49F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1E30, &qword_1D5644470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F49F8);
  }

  return result;
}

uint64_t sub_1D53642D4()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

unint64_t sub_1D536432C()
{
  result = qword_1EC7F4A08;
  if (!qword_1EC7F4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A08);
  }

  return result;
}

uint64_t sub_1D5364380(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D53643D8()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

unint64_t sub_1D5364430()
{
  result = qword_1EC7F4A70;
  if (!qword_1EC7F4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A70);
  }

  return result;
}

unint64_t sub_1D5364484()
{
  result = qword_1EC7F4A78;
  if (!qword_1EC7F4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A78);
  }

  return result;
}

unint64_t sub_1D53644D8()
{
  result = qword_1EC7F4A80;
  if (!qword_1EC7F4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A80);
  }

  return result;
}

unint64_t sub_1D536452C()
{
  result = qword_1EC7F4A88;
  if (!qword_1EC7F4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A88);
  }

  return result;
}

unint64_t sub_1D5364580()
{
  result = qword_1EC7F4A90;
  if (!qword_1EC7F4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A90);
  }

  return result;
}

unint64_t sub_1D53645D4()
{
  result = qword_1EC7F4A98;
  if (!qword_1EC7F4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4A98);
  }

  return result;
}

unint64_t sub_1D5364628()
{
  result = qword_1EC7F4AA0;
  if (!qword_1EC7F4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4AA0);
  }

  return result;
}

_BYTE *_s12InternalItemO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D53647A8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s15InternalStorageV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5364934()
{
  result = qword_1EC7F4AF8;
  if (!qword_1EC7F4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4AF8);
  }

  return result;
}

unint64_t sub_1D536498C()
{
  result = qword_1EC7F4B00;
  if (!qword_1EC7F4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B00);
  }

  return result;
}

unint64_t sub_1D53649E4()
{
  result = qword_1EC7F4B08;
  if (!qword_1EC7F4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B08);
  }

  return result;
}

unint64_t sub_1D5364A3C()
{
  result = qword_1EC7F4B10;
  if (!qword_1EC7F4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B10);
  }

  return result;
}

unint64_t sub_1D5364A94()
{
  result = qword_1EC7F4B18;
  if (!qword_1EC7F4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B18);
  }

  return result;
}

unint64_t sub_1D5364AEC()
{
  result = qword_1EC7F4B20;
  if (!qword_1EC7F4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B20);
  }

  return result;
}

unint64_t sub_1D5364B44()
{
  result = qword_1EC7F4B28;
  if (!qword_1EC7F4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B28);
  }

  return result;
}

unint64_t sub_1D5364B9C()
{
  result = qword_1EC7F4B30;
  if (!qword_1EC7F4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B30);
  }

  return result;
}

unint64_t sub_1D5364BF4()
{
  result = qword_1EC7F4B38;
  if (!qword_1EC7F4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B38);
  }

  return result;
}

unint64_t sub_1D5364C4C()
{
  result = qword_1EC7F4B40;
  if (!qword_1EC7F4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B40);
  }

  return result;
}

unint64_t sub_1D5364CA4()
{
  result = qword_1EC7F4B48;
  if (!qword_1EC7F4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B48);
  }

  return result;
}

unint64_t sub_1D5364CFC()
{
  result = qword_1EC7F4B50;
  if (!qword_1EC7F4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B50);
  }

  return result;
}

unint64_t sub_1D5364D54()
{
  result = qword_1EC7F4B58;
  if (!qword_1EC7F4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B58);
  }

  return result;
}

unint64_t sub_1D5364DAC()
{
  result = qword_1EC7F4B60;
  if (!qword_1EC7F4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B60);
  }

  return result;
}

unint64_t sub_1D5364E04()
{
  result = qword_1EC7F4B68;
  if (!qword_1EC7F4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B68);
  }

  return result;
}

unint64_t sub_1D5364E5C()
{
  result = qword_1EC7F4B70;
  if (!qword_1EC7F4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B70);
  }

  return result;
}

unint64_t sub_1D5364EB4()
{
  result = qword_1EC7F4B78;
  if (!qword_1EC7F4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B78);
  }

  return result;
}

unint64_t sub_1D5364F0C()
{
  result = qword_1EC7F4B80;
  if (!qword_1EC7F4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B80);
  }

  return result;
}

unint64_t sub_1D5364F64()
{
  result = qword_1EC7F4B88;
  if (!qword_1EC7F4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B88);
  }

  return result;
}

unint64_t sub_1D5364FBC()
{
  result = qword_1EC7F4B90;
  if (!qword_1EC7F4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B90);
  }

  return result;
}

unint64_t sub_1D5365014()
{
  result = qword_1EC7F4B98;
  if (!qword_1EC7F4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4B98);
  }

  return result;
}

unint64_t sub_1D536506C()
{
  result = qword_1EC7F4BA0;
  if (!qword_1EC7F4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4BA0);
  }

  return result;
}

unint64_t sub_1D53650C4()
{
  result = qword_1EC7F4BA8;
  if (!qword_1EC7F4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4BA8);
  }

  return result;
}

unint64_t sub_1D536511C()
{
  result = qword_1EC7F4BB0;
  if (!qword_1EC7F4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4BB0);
  }

  return result;
}

void OUTLINED_FUNCTION_65_28()
{

  JUMPOUT(0x1DA6EC0D0);
}

void *sub_1D536525C()
{
  sub_1D4F849F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D5365DB4(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D5365358()
{
  sub_1D4F84B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  sub_1D5365DB4(&qword_1EC7EB3D0, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D5365454()
{
  sub_1D4F84A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  sub_1D5365DB4(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D5365550()
{
  sub_1D4F84A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D5365DB4(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D5365664()
{
  sub_1D4F84A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D5365DB4(&qword_1EC7EC490, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D5365760()
{
  sub_1D4F84AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  sub_1D5365DB4(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D536585C()
{
  sub_1D4F84AE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D5365DB4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D5365DB4(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D560EC28();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D53A8994(v2);

  return v0;
}

void *sub_1D5365958(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D53A8994(v1);

  return v2;
}

void *EditorialVideoArtworkVending.editorialVideoArtworks.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D53A8994(v2);

  return v3;
}

uint64_t static PartialMusicProperty<A>.editorialVideoArtworks.getter(uint64_t a1)
{
  (*(a1 + 24))(*(v1 + *MEMORY[0x1E6974E10]), a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC78, &qword_1D56577A0);
  sub_1D4F8AFC4();
  sub_1D5616458();
  sub_1D5365204();
  v2 = sub_1D560D138();

  return v2;
}

uint64_t sub_1D5365C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_0_197(a1, a2, a3);
  result = v5(v4);
  *v3 = result;
  return result;
}

uint64_t sub_1D5365DB4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5365DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D5622FA0;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BD0, &qword_1D56578E0);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374118(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BD8, &qword_1D5657910);
  OUTLINED_FUNCTION_2_19(v4);
  OUTLINED_FUNCTION_0_6();

  sub_1D537586C(v5);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 40) = v0;
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BE0, &qword_1D5657940);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

uint64_t sub_1D5365F14()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BE8, &qword_1D5657970);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375868(v3);
  OUTLINED_FUNCTION_0_6();

  *(v0 + 56) = v1;
  qword_1EC87C568 = v0;
  return result;
}

uint64_t sub_1D5365F78(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

void *sub_1D5365FD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D5366038(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1D5366090()
{
  v0 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D561C770;
  swift_getKeyPath();
  v10 = *MEMORY[0x1E6976A98];
  v17 = v2[13];
  v17(v8, v10, v0);
  v16 = v2[2];
  v16(v6, v8, v0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BC8, &qword_1D5657890);
  OUTLINED_FUNCTION_2_19(v11);
  v12 = OUTLINED_FUNCTION_4_115();
  v13 = v2[1];
  v13(v8, v0);
  *(v9 + 32) = v12;
  swift_getKeyPath();
  v17(v8, *MEMORY[0x1E6976AC8], v0);
  v16(v6, v8, v0);
  swift_allocObject();
  v14 = OUTLINED_FUNCTION_4_115();
  result = (v13)(v8, v0);
  *(v9 + 40) = v14;
  qword_1EC87C570 = v9;
  return result;
}

uint64_t sub_1D53662B8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D5366310@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_1D5366368(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E6977688]);

  return [v3 initWithVariants:2 options:a2];
}

uint64_t static MusicVideo.underlyingLegacyModelObjectTypeForCorrespondingUnderlyingInternalRelationship(_:)@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BB8, qword_1D56577D0);
  OUTLINED_FUNCTION_0_6();
  if (swift_dynamicCastClass())
  {
    v3 = qword_1EC7E8A48;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_1_148(&qword_1EC7E8A48);
    }

    sub_1D53665A0();
    v4 = sub_1D5614D18();

    if (v4)
    {
      v5 = *MEMORY[0x1E6976858];
      v6 = sub_1D5613158();
      (*(*(v6 - 8) + 104))(a2, v5, v6);
      v7 = a2;
      v8 = 0;
      v9 = v6;
    }

    else
    {
      v9 = sub_1D5613158();
      v7 = a2;
      v8 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD00000000000001FLL, 0x80000001D568C400);
    result = OUTLINED_FUNCTION_6_111("Fatal error", v11, v12, 0, 0xE000000000000000, "MusicKitInternal/MusicVideo+LegacyModelLibraryInternalRequestable.swift");
    __break(1u);
  }

  return result;
}

unint64_t sub_1D53665A0()
{
  result = qword_1EC7F4BC0;
  if (!qword_1EC7F4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4BB8, qword_1D56577D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4BC0);
  }

  return result;
}

uint64_t static MusicVideo.rawInternalPropertyKey(for:)(uint64_t a1)
{
  v2 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4BB8, qword_1D56577D0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = qword_1EC7E8A48;

    if (v10 != -1)
    {
      OUTLINED_FUNCTION_1_148(&qword_1EC7E8A48);
    }

    v21 = v9;
    v22 = qword_1EC7EC938;
    sub_1D53665A0();
    if (OUTLINED_FUNCTION_5_111())
    {
      v11 = MEMORY[0x1E6976AE8];
LABEL_10:
      (*(v4 + 104))(v7, *v11, v2);
      v14 = sub_1D5613588();

      (*(v4 + 8))(v7, v2);
      return v14;
    }

    v12 = qword_1EC7E8A40;

    if (v12 != -1)
    {
      swift_once();
    }

    v21 = v9;
    v22 = qword_1EC7EC930;
    v13 = OUTLINED_FUNCTION_5_111();

    if (v13)
    {
      v11 = MEMORY[0x1E6976A90];
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D568C460);
    v21 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    v18 = v22;
    v19 = v23;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D568C420);
    v21 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    v18 = v22;
    v19 = v23;
  }

  result = OUTLINED_FUNCTION_6_111("Fatal error", v16, v17, v18, v19, "MusicKitInternal/MusicVideo+LegacyModelLibraryInternalRequestable.swift");
  __break(1u);
  return result;
}

uint64_t RecentlyPlayedMusicItem.siriRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v37 = v3;
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1D560CA08();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  (*(v22 + 16))(v25 - v24, v1, v20);
  v27 = (*(v22 + 88))(v26, v20);
  if (v27 == *MEMORY[0x1E6974C38])
  {
    v28 = OUTLINED_FUNCTION_5_3();
    v29(v28);
    (*(v15 + 32))(v19, v26, v13);
    Album.siriRepresentation.getter();
    return (*(v15 + 8))(v19, v13);
  }

  else if (v27 == *MEMORY[0x1E6974C48])
  {
    v31 = OUTLINED_FUNCTION_5_3();
    v32(v31);
    (*(v36 + 32))(v12, v26, v7);
    Playlist.siriRepresentation.getter();
    return (*(v36 + 8))(v12, v7);
  }

  else if (v27 == *MEMORY[0x1E6974C40])
  {
    v33 = OUTLINED_FUNCTION_5_3();
    v34(v33);
    (*(v37 + 32))(v6, v26, v38);
    Station.siriRepresentation.getter(a1);
    return (*(v37 + 8))(v6, v38);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000005FLL, 0x80000001D568C4D0);
    sub_1D5366D7C();
    v35 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v35);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5366D7C()
{
  result = qword_1EC7F4BF0;
  if (!qword_1EC7F4BF0)
  {
    sub_1D560CA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4BF0);
  }

  return result;
}

uint64_t type metadata accessor for LooselyComparableTypedIdentifier(uint64_t a1)
{
  result = qword_1EDD54BA0;
  if (!qword_1EDD54BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5366E4C(uint64_t a1)
{
  sub_1D560D9A8();
  if (v1 <= 0x3F)
  {
    sub_1D514B63C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D5366EE0()
{
  v1 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  (*(v3 + 16))(v10, v0 + *(v11 + 20), v1);
  sub_1D560D948();
  OUTLINED_FUNCTION_1_149();
  sub_1D5367830(v12, v13, MEMORY[0x1E6974F90]);
  v14 = OUTLINED_FUNCTION_4_116();
  v15 = *(v3 + 8);
  v15(v7, v1);
  if (v14 & 1) != 0 || (sub_1D560D998(), v16 = OUTLINED_FUNCTION_4_116(), v15(v7, v1), (v16))
  {
    v17 = 1;
  }

  else
  {
    sub_1D560D918();
    v17 = OUTLINED_FUNCTION_4_116();
    v15(v7, v1);
  }

  v15(v10, v1);
  return v17 & 1;
}

uint64_t sub_1D5367088()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OUTLINED_FUNCTION_5_112();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  sub_1D514AE90(v0 + *(v13 + 24), v1);
  OUTLINED_FUNCTION_1(v1);
  if (v14)
  {
    sub_1D53677C8(v1);
    v17 = sub_1D5366EE0();
  }

  else
  {
    (*(v5 + 32))(v12, v1, v3);
    sub_1D560FE78();
    OUTLINED_FUNCTION_2_146();
    sub_1D5367830(v15, v16, MEMORY[0x1E6975BE0]);
    v17 = sub_1D5614D18();
    v18 = *(v5 + 8);
    v18(v9, v3);
    v18(v12, v3);
  }

  return v17 & 1;
}

uint64_t sub_1D5367248(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = *a1 == *a2 && a1[1] == a2[1];
  if (!v21)
  {
    v22 = 0;
    if ((sub_1D5616168() & 1) == 0)
    {
      return v22 & 1;
    }
  }

  v23 = sub_1D5367088();
  v24 = sub_1D5367088();
  if (v23)
  {
    if (v24)
    {
      goto LABEL_11;
    }
  }

  else if ((v24 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_1D5366EE0())
  {
LABEL_11:
    v25 = type metadata accessor for LooselyComparableTypedIdentifier(0);
    sub_1D514AE90(a1 + *(v25 + 24), v10);
    OUTLINED_FUNCTION_1(v10);
    if (v21)
    {
      v26 = v10;
    }

    else
    {
      v28 = *(v13 + 32);
      v28(v20, v10, v11);
      sub_1D514AE90(a2 + *(v25 + 24), v7);
      OUTLINED_FUNCTION_1(v7);
      if (!v29)
      {
        v28(v17, v7, v11);
        v22 = sub_1D4F3B22C();
        v30 = *(v13 + 8);
        v30(v17, v11);
        v30(v20, v11);
        return v22 & 1;
      }

      (*(v13 + 8))(v20, v11);
      v26 = v7;
    }

    sub_1D53677C8(v26);
    v22 = 1;
    return v22 & 1;
  }

LABEL_14:
  type metadata accessor for LooselyComparableTypedIdentifier(0);

  return sub_1D560D8C8();
}

uint64_t sub_1D5367504(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OUTLINED_FUNCTION_5_112();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5614E28();
  v10 = sub_1D5366EE0();
  v11 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  if (v10)
  {
    sub_1D514AE90(v1 + *(v11 + 24), v2);
    if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
    {
      return sub_1D53677C8(v2);
    }

    else
    {
      (*(v6 + 32))(v9, v2, v4);
      OUTLINED_FUNCTION_2_146();
      sub_1D5367830(v15, v16, MEMORY[0x1E6975BD8]);
      sub_1D5614CB8();
      return (*(v6 + 8))(v9, v4);
    }
  }

  else
  {
    sub_1D560D9A8();
    OUTLINED_FUNCTION_1_149();
    sub_1D5367830(v13, v14, MEMORY[0x1E6974F88]);
    return sub_1D5614CB8();
  }
}

uint64_t sub_1D53676F8()
{
  sub_1D56162D8();
  sub_1D5367504(v1);
  return sub_1D5616328();
}

uint64_t sub_1D536778C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5367504(v2);
  return sub_1D5616328();
}

uint64_t sub_1D53677C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5367830(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MusicCollaborativePlaylist(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.text.getter()
{
  v1 = *v0;

  return v1;
}

void static MusicCatalogInternalSearchResponse.Context.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D5616168() & 1) != 0)
  {
    sub_1D4EFA6B4();
    if (v3)
    {

      sub_1D4EFAB38();
    }
  }
}

void MusicCatalogInternalSearchResponse.Context.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  sub_1D4F08CAC();

  sub_1D4F08B78();
}

uint64_t MusicCatalogInternalSearchResponse.Context.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D4F08CAC();
  sub_1D4F08B78();
  return sub_1D5616328();
}

uint64_t sub_1D5367ACC(uint64_t a1)
{
  v2 = v1[3];
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = v2;
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.hash(into:)(v4);
  return sub_1D5616328();
}

__n128 MusicCatalogInternalSearchResponse.Context.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D4E628D4(a1, &v15);
  sub_1D52488D8(&v15, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16.n128_i64[0], v16.n128_i64[1], v17, v18, v19, v20, v21, v22, vars0, vars8);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D524BC58();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v13 = v17;
    result = v16;
    *a2 = v15;
    *(a2 + 8) = result;
    *(a2 + 24) = v13;
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.encode(to:)()
{
  OUTLINED_FUNCTION_0_198();
  sub_1D524CA44();
  sub_1D52485B8();
}

unint64_t sub_1D5367C74(uint64_t a1)
{

  sub_1D5614EA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4C00, &qword_1D5657B90);
  sub_1D5367F74(&qword_1EC7F4C08, &qword_1EC7F4C00, &qword_1D5657B90);
  sub_1D56155F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4C10, &qword_1D5657B98);
  sub_1D5367F74(&qword_1EC7F4C18, &qword_1EC7F4C10, &qword_1D5657B98);
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

unint64_t sub_1D5367F10()
{
  result = qword_1EC7F4BF8;
  if (!qword_1EC7F4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4BF8);
  }

  return result;
}

uint64_t sub_1D5367F74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for VideoOffer(uint64_t a1)
{
  result = qword_1EDD58A60;
  if (!qword_1EDD58A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D536803C(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D501B1CC(319, &qword_1EDD5CF48, MEMORY[0x1E6969530]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D501B1CC(319, &qword_1EDD533F0, MEMORY[0x1E6975710]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
        if (v10 > 0x3F)
        {
          return v9;
        }

        else
        {
          sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
          if (v12 > 0x3F)
          {
            return v11;
          }

          else
          {
            sub_1D4E518A0(319, &qword_1EDD53A08, MEMORY[0x1E6975528]);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              sub_1D4E5CF94(319);
              v2 = v15;
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1D53682AC(uint64_t a1, uint64_t a2)
{
  v145 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v142 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v139 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC60, &unk_1D56294E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v139 - v14;
  v15 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v139 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v139 - v28;
  v30 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_27;
    }
  }

  v139 = v5;
  v31 = type metadata accessor for VideoOffer(0);
  v146 = a2;
  v32 = *(v31 + 20);
  v33 = *(v26 + 48);
  v140 = v31;
  v141 = a1;
  sub_1D4F39AB0(a1 + v32, v29, &qword_1EC7EA3B8, &unk_1D561E370);
  v34 = v146 + v32;
  v35 = v146;
  sub_1D4F39AB0(v34, &v29[v33], &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v29, 1, v15);
  if (v36)
  {
    OUTLINED_FUNCTION_57(&v29[v33], 1, v15);
    if (v36)
    {
      sub_1D4E50004(v29, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_17;
    }

LABEL_15:
    v39 = &qword_1EC7EB578;
    v40 = &unk_1D5644D10;
    v41 = v29;
LABEL_26:
    sub_1D4E50004(v41, v39, v40);
    goto LABEL_27;
  }

  sub_1D4F39AB0(v29, v25, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(&v29[v33], 1, v15);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_71();
    v38(v37);
    goto LABEL_15;
  }

  (*(v17 + 32))(v21, &v29[v33], v15);
  OUTLINED_FUNCTION_2_147();
  sub_1D536A888(v42, v43, MEMORY[0x1E6969550]);
  v44 = sub_1D5614D18();
  v45 = *(v17 + 8);
  v45(v21, v15);
  v46 = OUTLINED_FUNCTION_71();
  (v45)(v46);
  sub_1D4E50004(v29, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v44 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v48 = v140;
  v47 = v141;
  v49 = v140[6];
  v50 = *(v12 + 48);
  v51 = v144;
  sub_1D4F39AB0(v141 + v49, v144, &qword_1EC7EAC58, &unk_1D561DA70);
  sub_1D4F39AB0(v35 + v49, v51 + v50, &qword_1EC7EAC58, &unk_1D561DA70);
  v52 = v145;
  OUTLINED_FUNCTION_57(v51, 1, v145);
  if (v36)
  {
    OUTLINED_FUNCTION_57(v51 + v50, 1, v52);
    if (v36)
    {
      sub_1D4E50004(v51, &qword_1EC7EAC58, &unk_1D561DA70);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v53 = v143;
  sub_1D4F39AB0(v51, v143, &qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_57(v51 + v50, 1, v52);
  if (v54)
  {
    (*(v139 + 8))(v53, v52);
LABEL_25:
    v39 = &qword_1EC7EAC60;
    v40 = &unk_1D56294E0;
    v41 = v51;
    goto LABEL_26;
  }

  v57 = v139;
  v58 = v51 + v50;
  v59 = v142;
  (*(v139 + 32))(v142, v58, v52);
  OUTLINED_FUNCTION_3_152();
  sub_1D536A888(v60, v61, MEMORY[0x1E6975728]);
  v62 = sub_1D5614D18();
  v63 = *(v57 + 8);
  v63(v59, v52);
  v63(v53, v52);
  sub_1D4E50004(v51, &qword_1EC7EAC58, &unk_1D561DA70);
  if ((v62 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  OUTLINED_FUNCTION_6_6();
  if (v65)
  {
    if (!v64)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v66)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_27_20();
  if (v69)
  {
    if (!v67)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v68);
    v72 = v36 && v70 == v71;
    if (!v72 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v67)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6();
  if (v74)
  {
    if (!v73)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v75)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v77)
  {
    if (!v76)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v78)
    {
      goto LABEL_27;
    }
  }

  v79 = v48[11];
  v80 = *(v47 + v79);
  v81 = *(v35 + v79);
  if (v80 == 2)
  {
    if (v81 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v55 = 0;
    if (v81 == 2 || ((v81 ^ v80) & 1) != 0)
    {
      return v55 & 1;
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v83)
  {
    if (!v82)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v84)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_27_20();
  if (v87)
  {
    if (!v85)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v86);
    v90 = v36 && v88 == v89;
    if (!v90 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v85)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_27_20();
  if (v93)
  {
    if (!v91)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v92);
    v96 = v36 && v94 == v95;
    if (!v96 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v91)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6();
  if (v98)
  {
    if (!v97)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v99)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_27_20();
  if (v102)
  {
    if (!v100)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v101);
    v105 = v36 && v103 == v104;
    if (!v105 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v100)
  {
    goto LABEL_27;
  }

  v106 = v140[17];
  v107 = *(v141 + v106 + 8);
  v108 = *(v146 + v106 + 8);
  if (v107)
  {
    if (!v108)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v109)
    {
      goto LABEL_27;
    }
  }

  v110 = v140[18];
  v111 = *(v146 + v110 + 8);
  if (*(v141 + v110 + 8))
  {
    if (!v111)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v141 + v110);
    v114 = v36 && v112 == v113;
    if (!v114 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v111)
  {
    goto LABEL_27;
  }

  v115 = v140[19];
  v116 = *(v141 + v115);
  v117 = *(v146 + v115);
  if (v116 == 2)
  {
    v118 = v146;
    v120 = v140;
    v119 = v141;
    if (v117 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v55 = 0;
    if (v117 == 2)
    {
      return v55 & 1;
    }

    v121 = v117 ^ v116;
    v118 = v146;
    v120 = v140;
    v119 = v141;
    if (v121)
    {
      return v55 & 1;
    }
  }

  v122 = v120[20];
  v123 = *(v119 + v122);
  v124 = *(v118 + v122);
  if (v123 == 2)
  {
    v125 = v146;
    v126 = v140;
    v127 = v141;
    if (v124 != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

  v55 = 0;
  if (v124 != 2)
  {
    v128 = v124 ^ v123;
    v125 = v146;
    v126 = v140;
    v127 = v141;
    if ((v128 & 1) == 0)
    {
LABEL_114:
      v129 = v126[21];
      v130 = *(v125 + v129 + 8);
      if (*(v127 + v129 + 8))
      {
        if (!v130)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_31_0(v127 + v129);
        v133 = v36 && v131 == v132;
        if (!v133 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_123:
        v134 = v140[22];
        v135 = *(v141 + v134);
        v136 = *(v141 + v134 + 8);
        v137 = (v146 + v134);
        v138 = v135 == *v137 && v136 == v137[1];
        if (v138 || (sub_1D5616168() & 1) != 0)
        {
          sub_1D4F286E0();
          return v55 & 1;
        }

        goto LABEL_27;
      }

      if (!v130)
      {
        goto LABEL_123;
      }

LABEL_27:
      v55 = 0;
    }
  }

  return v55 & 1;
}

uint64_t sub_1D5368B6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001D56819C0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E696769726FLL && a2 == 0xED00006563697250;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001D568C590 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001D568C5B0 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x64726F6572507369 && a2 == 0xEE00796C6E4F7265;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x657474616D726F66 && a2 == 0xEE00656369725064;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x80000001D5681A20 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x75446C61746E6572 && a2 == 0xEE006E6F69746172;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x44496C61746E6572 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x80000001D5681A60 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x664F6E6F73616573 && a2 == 0xEF646E694B726566;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E4F6E6F73616573 && a2 == 0xEA0000000000796CLL;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7550646572616873 && a2 == 0xEE00657361686372;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000018 && 0x80000001D5681A80 == a2;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1D5616168();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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
        }
      }
    }
  }
}

unint64_t sub_1D5369184(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x6C616E696769726FLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x72656E776FLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x64726F6572507369;
      break;
    case 8:
      result = 0x6563697270;
      break;
    case 9:
      result = 0x657474616D726F66;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x75446C61746E6572;
      break;
    case 12:
      result = 0x44496C61746E6572;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x664F6E6F73616573;
      break;
    case 15:
      result = 0x6E4F6E6F73616573;
      break;
    case 16:
      result = 0x7550646572616873;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x746E6169726176;
      break;
    case 19:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D53693F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4C38, &qword_1D5657C78);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D536A774();
  sub_1D56163D8();
  LOBYTE(v19) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616048();
  if (!v2)
  {
    v11 = type metadata accessor for VideoOffer(0);
    LOBYTE(v19) = 1;
    sub_1D560C328();
    OUTLINED_FUNCTION_2_147();
    sub_1D536A888(v12, v13, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_30_52();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(v19) = 2;
    sub_1D560F548();
    OUTLINED_FUNCTION_3_152();
    sub_1D536A888(v14, v15, MEMORY[0x1E6975718]);
    OUTLINED_FUNCTION_30_52();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_154(v11[7]);
    OUTLINED_FUNCTION_0_199(3);
    sub_1D5616048();
    OUTLINED_FUNCTION_35_5(v11[8]);
    OUTLINED_FUNCTION_0_199(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_154(v11[9]);
    OUTLINED_FUNCTION_0_199(5);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v11[10]);
    OUTLINED_FUNCTION_0_199(6);
    sub_1D5616048();
    LOBYTE(v19) = 7;
    OUTLINED_FUNCTION_30_52();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_154(v11[12]);
    OUTLINED_FUNCTION_0_199(8);
    sub_1D5616048();
    OUTLINED_FUNCTION_35_5(v11[13]);
    OUTLINED_FUNCTION_0_199(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v11[14]);
    OUTLINED_FUNCTION_0_199(10);
    sub_1D5616028();
    OUTLINED_FUNCTION_154(v11[15]);
    OUTLINED_FUNCTION_0_199(11);
    sub_1D5616048();
    v19 = *(v3 + v11[16]);
    v18 = 12;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_154(v11[17]);
    OUTLINED_FUNCTION_0_199(13);
    sub_1D5616058();
    OUTLINED_FUNCTION_35_5(v11[18]);
    OUTLINED_FUNCTION_0_199(14);
    sub_1D5616028();
    LOBYTE(v19) = 15;
    OUTLINED_FUNCTION_30_52();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    LOBYTE(v19) = 16;
    OUTLINED_FUNCTION_30_52();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v11[21]);
    OUTLINED_FUNCTION_0_199(17);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v11[22]);
    OUTLINED_FUNCTION_0_199(18);
    sub_1D5616088();
    *&v19 = *(v3 + v11[23]);
    v18 = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1D5369830(uint64_t a1)
{
  v2 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v38 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v22 = *v1;
    OUTLINED_FUNCTION_27();
    if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x1DA6EC100](v23);
  }

  v24 = type metadata accessor for VideoOffer(0);
  sub_1D4F39AB0(v1 + v24[5], v21, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v21, 1, v11);
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v13 + 32))(v17, v21, v11);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_147();
    sub_1D536A888(v26, v27, MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    (*(v13 + 8))(v17, v11);
  }

  sub_1D4F39AB0(v1 + v24[6], v10, &qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_57(v10, 1, v2);
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v39 + 32))(v38, v10, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_152();
    sub_1D536A888(v28, v29, MEMORY[0x1E6975720]);
    sub_1D5614CB8();
    v30 = OUTLINED_FUNCTION_45_28();
    v31(v30, v2);
  }

  OUTLINED_FUNCTION_157();
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    v32 = OUTLINED_FUNCTION_34_51();
    MEMORY[0x1DA6EC100](v32);
  }

  OUTLINED_FUNCTION_37_17();
  if (v2)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v2);
  }

  OUTLINED_FUNCTION_157();
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    v33 = OUTLINED_FUNCTION_34_51();
    MEMORY[0x1DA6EC100](v33);
  }

  v34 = *(v1 + v24[11]);
  if (v34 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_157();
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    v35 = OUTLINED_FUNCTION_34_51();
    MEMORY[0x1DA6EC100](v35);
  }

  OUTLINED_FUNCTION_37_17();
  if (v34)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_37_17();
  if (v34)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    v36 = OUTLINED_FUNCTION_34_51();
    MEMORY[0x1DA6EC100](v36);
  }

  OUTLINED_FUNCTION_37_17();
  if (v34)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v25)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v34);
  }

  OUTLINED_FUNCTION_37_17();
  if (v34)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v24[19]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v37 = *(v1 + v24[20]);
  if (v37 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_37_17();
  if (v37)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  sub_1D4F31AC0();
}

uint64_t sub_1D5369D68()
{
  sub_1D56162D8();
  sub_1D5369830(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5369DA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4C28, &unk_1D5657C68);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v81 = type metadata accessor for VideoOffer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v79 = a1;
  v80 = (v20 - v19);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D536A774();
  sub_1D5616398();
  if (v2)
  {
    v82 = v2;
    v24 = 0;
    v25 = 0;
    LODWORD(v8) = 0;
    OUTLINED_FUNCTION_4_117();
  }

  else
  {
    v77 = a2;
    LODWORD(v21) = v14;
    LOBYTE(v83) = 0;
    LODWORD(v22) = v78;
    v23 = sub_1D5615F58();
    v29 = v80;
    *v80 = v23;
    *(v29 + 8) = v30 & 1;
    sub_1D560C328();
    LOBYTE(v83) = 1;
    OUTLINED_FUNCTION_2_147();
    v33 = sub_1D536A888(v31, v32, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_33_49(v33, &v83);
    v34 = v81;
    sub_1D4F39A1C(v12, v29 + v81[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D560F548();
    LOBYTE(v83) = 2;
    OUTLINED_FUNCTION_3_152();
    v37 = sub_1D536A888(v35, v36, MEMORY[0x1E6975730]);
    OUTLINED_FUNCTION_33_49(v37, &v83);
    sub_1D4F39A1C(v8, v29 + v34[6], &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_5_113(3);
    v38 = sub_1D5615F58();
    OUTLINED_FUNCTION_39_1(v38, v39, v29 + v34[7]);
    OUTLINED_FUNCTION_5_113(4);
    v40 = sub_1D5615F38();
    v24 = v21;
    v41 = (v29 + v34[8]);
    *v41 = v40;
    v41[1] = v42;
    OUTLINED_FUNCTION_5_113(5);
    v43 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v43, v44, v29 + v34[9]);
    OUTLINED_FUNCTION_5_113(6);
    v45 = sub_1D5615F58();
    OUTLINED_FUNCTION_39_1(v45, v46, v29 + v34[10]);
    OUTLINED_FUNCTION_5_113(7);
    *(v29 + v34[11]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_113(8);
    v47 = sub_1D5615F58();
    v82 = 0;
    OUTLINED_FUNCTION_39_1(v47, v48, v29 + v34[12]);
    OUTLINED_FUNCTION_5_113(9);
    v49 = v82;
    v50 = sub_1D5615F38();
    v82 = v49;
    if (v49)
    {
      v52 = OUTLINED_FUNCTION_9_101();
      v53(v52);
      OUTLINED_FUNCTION_4_117();
      v24 = 1;
      v25 = 1;
      LODWORD(v8) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_47_18(v50, v51, v81[13]);
      OUTLINED_FUNCTION_1_150(10);
      v54 = sub_1D5615F38();
      v82 = 0;
      OUTLINED_FUNCTION_47_18(v54, v55, v81[14]);
      OUTLINED_FUNCTION_1_150(11);
      v56 = sub_1D5615F58();
      v82 = 0;
      OUTLINED_FUNCTION_39_1(v56, v57, v80 + v81[15]);
      v84 = 12;
      sub_1D4F89C9C();
      v25 = v17;
      v58 = v82;
      sub_1D5615F78();
      v82 = v58;
      if (!v58)
      {
        *(v80 + v81[16]) = v83;
        OUTLINED_FUNCTION_1_150(13);
        v61 = sub_1D5615F68();
        v82 = 0;
        OUTLINED_FUNCTION_39_1(v61, v62, v80 + v81[17]);
        OUTLINED_FUNCTION_1_150(14);
        v63 = sub_1D5615F38();
        v82 = 0;
        OUTLINED_FUNCTION_47_18(v63, v64, v81[18]);
        OUTLINED_FUNCTION_1_150(15);
        v65 = sub_1D5615F48();
        v82 = 0;
        *(v80 + v81[19]) = v65;
        OUTLINED_FUNCTION_1_150(16);
        v66 = sub_1D5615F48();
        v82 = 0;
        *(v80 + v81[20]) = v66;
        OUTLINED_FUNCTION_1_150(17);
        v67 = sub_1D5615F38();
        v82 = 0;
        OUTLINED_FUNCTION_47_18(v67, v68, v81[21]);
        OUTLINED_FUNCTION_1_150(18);
        v69 = sub_1D5615F98();
        v82 = 0;
        OUTLINED_FUNCTION_47_18(v69, v70, v81[22]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
        v84 = 19;
        sub_1D4F31CF4();
        LOBYTE(v25) = v17;
        v71 = v82;
        sub_1D5615FD8();
        v82 = v71;
        if (!v71)
        {
          v74 = OUTLINED_FUNCTION_9_101();
          v75(v74);
          v76 = v80;
          *(v80 + v81[23]) = v83;
          sub_1D536A7C8(v76, v77);
          __swift_destroy_boxed_opaque_existential_1(v79);
          return sub_1D536A82C(v76);
        }

        v72 = OUTLINED_FUNCTION_9_101();
        v73(v72);
        __swift_destroy_boxed_opaque_existential_1(v79);
        OUTLINED_FUNCTION_8_108();
        OUTLINED_FUNCTION_38_39();
        v24 = 1;
        v27 = v80;
        v26 = v81;
LABEL_6:
        result = sub_1D4E50004(v27 + v26[5], &qword_1EC7EA3B8, &unk_1D561E370);
        if (v25)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }

      v59 = OUTLINED_FUNCTION_9_101();
      v60(v59);
      LODWORD(v22) = 0;
      OUTLINED_FUNCTION_6_112();
      LODWORD(v12) = 1;
      LODWORD(v17) = 1;
    }
  }

  v27 = v80;
  v26 = v81;
  result = __swift_destroy_boxed_opaque_existential_1(v79);
  if (v24)
  {
    v24 = 0;
    goto LABEL_6;
  }

  if (v25)
  {
LABEL_7:
    result = sub_1D4E50004(v27 + v26[6], &qword_1EC7EAC58, &unk_1D561DA70);
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v8)
  {
LABEL_8:
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = OUTLINED_FUNCTION_32_49();
  if (v12)
  {
LABEL_9:
    result = OUTLINED_FUNCTION_32_49();
    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v17)
  {
LABEL_10:
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = OUTLINED_FUNCTION_32_49();
  if (v22)
  {
LABEL_11:
    result = OUTLINED_FUNCTION_32_49();
    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v21)
  {
LABEL_12:
    if (v78)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (!v24)
    {
      return result;
    }

    return OUTLINED_FUNCTION_32_49();
  }

LABEL_21:
  result = OUTLINED_FUNCTION_32_49();
  if ((v78 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  result = OUTLINED_FUNCTION_32_49();
  if ((v24 & 1) == 0)
  {
    return result;
  }

  return OUTLINED_FUNCTION_32_49();
}

uint64_t sub_1D536A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5368B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D536A65C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D536917C();
  *a1 = result;
  return result;
}

uint64_t sub_1D536A684(uint64_t a1)
{
  v2 = sub_1D536A774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D536A6C0(uint64_t a1)
{
  v2 = sub_1D536A774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D536A738(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5369830(v2);
  return sub_1D5616328();
}

unint64_t sub_1D536A774()
{
  result = qword_1EC7F4C30;
  if (!qword_1EC7F4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4C30);
  }

  return result;
}

uint64_t sub_1D536A7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoOffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D536A82C(uint64_t a1)
{
  v2 = type metadata accessor for VideoOffer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D536A888(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for VideoOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D536AA38()
{
  result = qword_1EC7F4C40;
  if (!qword_1EC7F4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4C40);
  }

  return result;
}

unint64_t sub_1D536AA90()
{
  result = qword_1EC7F4C48;
  if (!qword_1EC7F4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4C48);
  }

  return result;
}

unint64_t sub_1D536AAE8()
{
  result = qword_1EC7F4C50;
  if (!qword_1EC7F4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4C50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_49(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_34_51()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for CloudAssetFlavors(uint64_t a1)
{
  result = qword_1EDD56B30;
  if (!qword_1EDD56B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D536AC28()
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v6 = type metadata accessor for CloudAssetFlavors(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v23 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_135();
  v22 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_75();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_39_45();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  sub_1D5610708();
  sub_1D50D019C(v17, v5);
  sub_1D536D73C(v17);
  sub_1D5610708();
  v18 = v7[7];
  v19 = type metadata accessor for AssetFlavors(0);
  sub_1D50D019C(v0 + v18, v5 + v19[5]);
  sub_1D536D73C(v0);
  sub_1D5610708();
  sub_1D50D019C(v3 + v7[8], v5 + v19[6]);
  sub_1D536D73C(v3);
  sub_1D5610708();
  sub_1D50D019C(v2 + v7[9], v5 + v19[7]);
  sub_1D536D73C(v2);
  sub_1D5610708();
  sub_1D50D019C(v1 + v7[10], v5 + v19[8]);
  sub_1D536D73C(v1);
  v20 = v22;
  sub_1D5610708();
  sub_1D50D019C(v20 + v7[11], v5 + v19[9]);
  sub_1D536D73C(v20);
  v21 = v23;
  sub_1D5610708();
  sub_1D50D019C(v21 + v7[12], v5 + v19[10]);
  sub_1D536D73C(v21);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D536AE60()
{
  type metadata accessor for CloudAssetFlavors(0);
  OUTLINED_FUNCTION_14();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  sub_1D50D019C(v0, &v9 - v5);
  v7 = type metadata accessor for AssetFlavors(0);
  OUTLINED_FUNCTION_36_46(v7[5]);
  OUTLINED_FUNCTION_36_46(v7[6]);
  OUTLINED_FUNCTION_36_46(v7[7]);
  OUTLINED_FUNCTION_36_46(v7[8]);
  OUTLINED_FUNCTION_36_46(v7[9]);
  OUTLINED_FUNCTION_36_46(v7[10]);
  sub_1D536D6D8(v6, v4);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  return sub_1D536D73C(v6);
}

unint64_t sub_1D536AFAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D536B000(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x6964754173756C70;
      break;
    case 2:
      result = 0x5664487030383031;
      break;
    case 3:
      v3 = 0x644870303237;
      goto LABEL_6;
    case 4:
      v3 = 0x703038346473;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
      break;
    case 5:
      result = 0x6F656469566473;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D536B0E8()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v157 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v144 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v145 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v148 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v150 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v151 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v153 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v144 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v147 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  v146 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  v149 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  v152 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_40_4();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v144 - v41;
  v154 = v40;
  v43 = *(v40 + 48);
  v156 = v6;
  sub_1D50D019C(v6, &v144 - v41);
  v155 = v4;
  sub_1D50D019C(v4, v42 + v43);
  OUTLINED_FUNCTION_43_0(v42);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v42 + v43);
    if (v44)
    {
      sub_1D4E50004(v42, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_11;
    }

LABEL_9:
    v46 = v42;
LABEL_60:
    sub_1D4E50004(v46, &qword_1EC7E9FB0, &qword_1D562C590);
    goto LABEL_61;
  }

  sub_1D50D019C(v42, v28);
  OUTLINED_FUNCTION_43_0(v42 + v43);
  if (v44)
  {
    OUTLINED_FUNCTION_26_62();
    v45(v28, v7);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_21_66();
  v47 = OUTLINED_FUNCTION_25_5();
  v48(v47);
  OUTLINED_FUNCTION_0_200();
  v51 = sub_1D536D798(v49, v50, MEMORY[0x1E6968FC8]);
  v0 = OUTLINED_FUNCTION_19_68(v28, v52, v53, v51);
  v54 = v12;
  v55 = *(v1 + 8);
  v56 = OUTLINED_FUNCTION_122_1();
  v55(v56);
  (v55)(v28, v7);
  v12 = v54;
  sub_1D4E50004(v42, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_11:
  v57 = type metadata accessor for CloudAssetFlavors(0);
  v58 = v154;
  v59 = OUTLINED_FUNCTION_13_9();
  sub_1D50D019C(v59, v2);
  v60 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v60, v2 + v42);
  OUTLINED_FUNCTION_43_0(v2);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v2 + v42);
    if (v44)
    {
      sub_1D4E50004(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v61 = v153;
  sub_1D50D019C(v2, v153);
  OUTLINED_FUNCTION_43_0(v2 + v42);
  if (v62)
  {
    OUTLINED_FUNCTION_26_62();
    v63 = OUTLINED_FUNCTION_122_1();
    v64(v63);
LABEL_19:
    v46 = v2;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v65 = OUTLINED_FUNCTION_25_5();
  v66(v65);
  OUTLINED_FUNCTION_0_200();
  v69 = sub_1D536D798(v67, v68, MEMORY[0x1E6968FC8]);
  v42 = OUTLINED_FUNCTION_19_68(v61, v70, v71, v69);
  v0 = v1;
  v72 = OUTLINED_FUNCTION_35_51();
  v57(v72);
  v73 = OUTLINED_FUNCTION_122_1();
  v57(v73);
  v57 = v58;
  v58 = v1;
  sub_1D4E50004(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_21:
  v74 = OUTLINED_FUNCTION_13_9();
  v75 = v152;
  sub_1D50D019C(v74, v152);
  v76 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v76, v75 + v42);
  OUTLINED_FUNCTION_43_0(v75);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v75 + v42);
    if (v44)
    {
      sub_1D4E50004(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v77 = v151;
  sub_1D50D019C(v75, v151);
  OUTLINED_FUNCTION_43_0(v75 + v42);
  if (v78)
  {
    OUTLINED_FUNCTION_26_62();
    v79(v77, v7);
LABEL_29:
    v46 = v75;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v80 = OUTLINED_FUNCTION_25_5();
  v81(v80);
  OUTLINED_FUNCTION_0_200();
  v84 = sub_1D536D798(v82, v83, MEMORY[0x1E6968FC8]);
  v0 = OUTLINED_FUNCTION_19_68(v77, v85, v86, v84);
  v42 = v75;
  v87 = OUTLINED_FUNCTION_35_51();
  v57(v87);
  (v57)(v77, v7);
  v57 = v58;
  sub_1D4E50004(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_31:
  v88 = OUTLINED_FUNCTION_13_9();
  sub_1D50D019C(v88, v1);
  v89 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v89, v1 + v42);
  OUTLINED_FUNCTION_43_0(v1);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v1 + v42);
    if (v44)
    {
      sub_1D4E50004(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v90 = v150;
  sub_1D50D019C(v1, v150);
  OUTLINED_FUNCTION_43_0(v1 + v42);
  if (v91)
  {
    OUTLINED_FUNCTION_26_62();
    v92(v90, v7);
LABEL_39:
    v46 = v1;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v93 = OUTLINED_FUNCTION_25_5();
  v94(v93);
  OUTLINED_FUNCTION_0_200();
  v97 = sub_1D536D798(v95, v96, MEMORY[0x1E6968FC8]);
  v42 = OUTLINED_FUNCTION_19_68(v90, v98, v99, v97);
  v100 = OUTLINED_FUNCTION_33_2();
  v7(v100);
  (v7)(v90, v0);
  v7 = v0;
  sub_1D4E50004(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_41:
  v153 = v57;
  v101 = OUTLINED_FUNCTION_13_9();
  v102 = v149;
  sub_1D50D019C(v101, v149);
  v103 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v103, v102 + v42);
  OUTLINED_FUNCTION_43_0(v102);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v102 + v42);
    if (!v44)
    {
      goto LABEL_59;
    }

    sub_1D4E50004(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v104 = v148;
    sub_1D50D019C(v102, v148);
    OUTLINED_FUNCTION_43_0(v102 + v42);
    if (v105)
    {
      OUTLINED_FUNCTION_26_62();
      v107 = v104;
LABEL_58:
      v106(v107, v7);
LABEL_59:
      v46 = v102;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_21_66();
    v108 = OUTLINED_FUNCTION_25_5();
    v109(v108);
    OUTLINED_FUNCTION_0_200();
    v112 = sub_1D536D798(v110, v111, MEMORY[0x1E6968FC8]);
    v42 = OUTLINED_FUNCTION_19_68(v104, v113, v114, v112);
    v115 = OUTLINED_FUNCTION_33_2();
    v7(v115);
    (v7)(v104, v0);
    v7 = v0;
    sub_1D4E50004(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v116 = OUTLINED_FUNCTION_13_9();
  v102 = v146;
  sub_1D50D019C(v116, v146);
  v117 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v117, v102 + v42);
  OUTLINED_FUNCTION_43_0(v102);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v102 + v42);
    if (v44)
    {
      sub_1D4E50004(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_63:
      v128 = OUTLINED_FUNCTION_13_9();
      v129 = v147;
      sub_1D50D019C(v128, v147);
      v130 = OUTLINED_FUNCTION_27_57();
      sub_1D50D019C(v130, v129 + v42);
      OUTLINED_FUNCTION_43_0(v129);
      if (v44)
      {
        OUTLINED_FUNCTION_43_0(v147 + v42);
        if (v44)
        {
          sub_1D4E50004(v147, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_61;
        }
      }

      else
      {
        v131 = v147;
        sub_1D50D019C(v147, v144);
        OUTLINED_FUNCTION_43_0(v131 + v42);
        if (!v132)
        {
          OUTLINED_FUNCTION_21_66();
          v134 = v147;
          v135 = OUTLINED_FUNCTION_25_5();
          v136(v135);
          OUTLINED_FUNCTION_0_200();
          v139 = sub_1D536D798(v137, v138, MEMORY[0x1E6968FC8]);
          OUTLINED_FUNCTION_19_68(v144, v140, v141, v139);
          v142 = *(v1 + 8);
          v142(v12, v7);
          v143 = OUTLINED_FUNCTION_122_1();
          (v142)(v143);
          sub_1D4E50004(v134, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_26_62();
        v133(v144, v7);
      }

      v46 = v147;
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v118 = v145;
  sub_1D50D019C(v102, v145);
  OUTLINED_FUNCTION_43_0(v102 + v42);
  if (v119)
  {
    OUTLINED_FUNCTION_26_62();
    v107 = v118;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_21_66();
  v120 = OUTLINED_FUNCTION_25_5();
  v121(v120);
  OUTLINED_FUNCTION_0_200();
  v124 = sub_1D536D798(v122, v123, MEMORY[0x1E6968FC8]);
  v42 = OUTLINED_FUNCTION_19_68(v118, v125, v126, v124);
  v127 = OUTLINED_FUNCTION_33_2();
  v7(v127);
  (v7)(v118, v0);
  v7 = v0;
  sub_1D4E50004(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v42)
  {
    goto LABEL_63;
  }

LABEL_61:
  OUTLINED_FUNCTION_46();
}