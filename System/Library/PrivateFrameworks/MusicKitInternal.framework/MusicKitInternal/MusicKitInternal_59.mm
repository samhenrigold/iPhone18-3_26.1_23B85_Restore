unint64_t sub_1D53E1C3C()
{
  result = qword_1EC7F5CB8;
  if (!qword_1EC7F5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CB8);
  }

  return result;
}

unint64_t sub_1D53E1C94()
{
  result = qword_1EC7F5CC0;
  if (!qword_1EC7F5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CC0);
  }

  return result;
}

unint64_t sub_1D53E1CEC()
{
  result = qword_1EC7F5CC8;
  if (!qword_1EC7F5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CC8);
  }

  return result;
}

unint64_t sub_1D53E1D44()
{
  result = qword_1EC7F5CD0;
  if (!qword_1EC7F5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CD0);
  }

  return result;
}

unint64_t sub_1D53E1D9C()
{
  result = qword_1EC7F5CD8;
  if (!qword_1EC7F5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CD8);
  }

  return result;
}

unint64_t sub_1D53E1DF4()
{
  result = qword_1EC7F5CE0;
  if (!qword_1EC7F5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CE0);
  }

  return result;
}

unint64_t sub_1D53E1E4C()
{
  result = qword_1EC7F5CE8;
  if (!qword_1EC7F5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CE8);
  }

  return result;
}

unint64_t sub_1D53E1EA4()
{
  result = qword_1EC7F5CF0;
  if (!qword_1EC7F5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CF0);
  }

  return result;
}

unint64_t sub_1D53E1EFC()
{
  result = qword_1EC7F5CF8;
  if (!qword_1EC7F5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5CF8);
  }

  return result;
}

unint64_t sub_1D53E1F54()
{
  result = qword_1EC7F5D00;
  if (!qword_1EC7F5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5D00);
  }

  return result;
}

unint64_t sub_1D53E1FAC()
{
  result = qword_1EC7F5D08;
  if (!qword_1EC7F5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5D08);
  }

  return result;
}

unint64_t sub_1D53E2004()
{
  result = qword_1EC7F5D10;
  if (!qword_1EC7F5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5D10);
  }

  return result;
}

unint64_t sub_1D53E205C()
{
  result = qword_1EC7F5D18;
  if (!qword_1EC7F5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5D18);
  }

  return result;
}

uint64_t sub_1D53E20B8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3640, &qword_1D564D3A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_3_166(v3, v30);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_135();
  v32 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_135();
  v31 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_135();
  v10 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_135();
  v13 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = sub_1D56115E8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v1[1];
  v23 = v1[2];
  v37 = *v1;
  v24 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D53E2B5C();
  if ((v22 & 0xFF00) == 0x400)
  {
    v25 = 1;
  }

  else
  {
    v35 = v22;
    sub_1D53E2B5C();
    v25 = 0;
  }

  v26 = 1;
  OUTLINED_FUNCTION_20_12(v16, v25);
  if ((v23 & 0xFF00) != 0x400)
  {
    v36 = v23;
    sub_1D53E2B5C();
    v26 = 0;
  }

  OUTLINED_FUNCTION_20_12(v13, v26);
  v27 = *(v19 + 16);
  v30 = v24;
  v27(v10, v24, v17);
  OUTLINED_FUNCTION_20_12(v10, 0);
  sub_1D53E2D40(v16, v31);
  sub_1D53E2D40(v13, v32);
  OUTLINED_FUNCTION_20_12(v33, 1);
  v28 = MEMORY[0x1E69761C8];
  sub_1D53E2E90(&qword_1EC7F5D20, MEMORY[0x1E69761C8], MEMORY[0x1E69761D8]);
  sub_1D53E2E90(&qword_1EC7F5D28, v28, MEMORY[0x1E69761D0]);
  sub_1D56113F8();
  sub_1D53E2DB0(v13);
  sub_1D53E2DB0(v16);
  return (*(v19 + 8))(v30, v17);
}

void sub_1D53E23D8(char *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_1D56115A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_166(v7, v52);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(v5 + 16);
  v12(&v52 - v13, v1, v3);
  sub_1D56114B8();
  sub_1D53E2E90(&qword_1EC7F5D30, MEMORY[0x1E69761B8], MEMORY[0x1E69761C0]);
  v14 = OUTLINED_FUNCTION_17_49();
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v15 = v17;
  (v17)(v11, v3);
  if (v14)
  {
    v18 = OUTLINED_FUNCTION_99();
    v15(v18);
    v19 = 0;
  }

  else
  {
    sub_1D5611448();
    OUTLINED_FUNCTION_17_49();
    v20 = OUTLINED_FUNCTION_7_10();
    v15(v20);
    sub_1D5611528();
    OUTLINED_FUNCTION_17_49();
    v21 = OUTLINED_FUNCTION_7_10();
    v15(v21);
    sub_1D56114C8();
    OUTLINED_FUNCTION_17_49();
    v22 = OUTLINED_FUNCTION_7_10();
    v15(v22);
    sub_1D5611458();
    OUTLINED_FUNCTION_17_49();
    v23 = OUTLINED_FUNCTION_7_10();
    v15(v23);
    sub_1D5611538();
    OUTLINED_FUNCTION_17_49();
    v24 = OUTLINED_FUNCTION_7_10();
    v15(v24);
    sub_1D56114D8();
    OUTLINED_FUNCTION_17_49();
    v25 = OUTLINED_FUNCTION_7_10();
    v15(v25);
    sub_1D5611468();
    OUTLINED_FUNCTION_17_49();
    v26 = OUTLINED_FUNCTION_7_10();
    v15(v26);
    sub_1D5611548();
    OUTLINED_FUNCTION_17_49();
    v27 = OUTLINED_FUNCTION_7_10();
    v15(v27);
    sub_1D56114E8();
    OUTLINED_FUNCTION_17_49();
    v28 = OUTLINED_FUNCTION_7_10();
    v15(v28);
    sub_1D5611478();
    OUTLINED_FUNCTION_17_49();
    v29 = OUTLINED_FUNCTION_7_10();
    v15(v29);
    sub_1D5611558();
    OUTLINED_FUNCTION_17_49();
    v30 = OUTLINED_FUNCTION_7_10();
    v15(v30);
    sub_1D56114F8();
    OUTLINED_FUNCTION_17_49();
    v31 = OUTLINED_FUNCTION_7_10();
    v15(v31);
    sub_1D5611488();
    OUTLINED_FUNCTION_17_49();
    v32 = OUTLINED_FUNCTION_7_10();
    v15(v32);
    sub_1D5611568();
    OUTLINED_FUNCTION_17_49();
    v33 = OUTLINED_FUNCTION_7_10();
    v15(v33);
    sub_1D5611508();
    OUTLINED_FUNCTION_17_49();
    v34 = OUTLINED_FUNCTION_7_10();
    v53 = v15;
    v54 = v16;
    v15(v34);
    sub_1D5611498();
    OUTLINED_FUNCTION_17_49();
    v35 = OUTLINED_FUNCTION_7_10();
    v53(v35);
    sub_1D5611578();
    OUTLINED_FUNCTION_17_49();
    v36 = OUTLINED_FUNCTION_7_10();
    v53(v36);
    sub_1D5611518();
    OUTLINED_FUNCTION_17_49();
    v37 = OUTLINED_FUNCTION_7_10();
    v53(v37);
    sub_1D56114A8();
    OUTLINED_FUNCTION_17_49();
    v38 = OUTLINED_FUNCTION_7_10();
    v53(v38);
    sub_1D5611588();
    OUTLINED_FUNCTION_17_49();
    v39 = OUTLINED_FUNCTION_7_10();
    v40 = v53;
    v53(v39);
    v41 = OUTLINED_FUNCTION_99();
    v40(v41);
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v42 = sub_1D560C758();
    __swift_project_value_buffer(v42, qword_1EDD76DC8);
    v12(v55, v2, v3);
    v43 = sub_1D560C738();
    v44 = sub_1D56156C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v45 = 136446210;
      v47 = v55;
      v48 = sub_1D5611598();
      v50 = v49;
      (v53)(v47, v3);
      v51 = sub_1D4E6835C(v48, v50, &v57);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_1D4E3F000, v43, v44, "Unknown CloudTonic: %{public}s. Gracefully treating as nil.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1DA6ED200](v46, -1, -1);
      MEMORY[0x1DA6ED200](v45, -1, -1);
    }

    else
    {

      (v53)(v55, v3);
    }

    v19 = 21;
  }

  *v56 = v19;
}

uint64_t sub_1D53E2B5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3638, &qword_1D564D398);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3648, &unk_1D564D3A8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = v0[1];
  if (*v0 == 21)
  {
    v9 = sub_1D56115A8();
    v10 = 1;
  }

  else
  {
    v18[15] = *v0;
    sub_1D53E2E18(v5);
    v9 = sub_1D56115A8();
    v10 = 0;
  }

  __swift_storeEnumTagSinglePayload(v7, v10, 1, v9);
  v11 = MEMORY[0x1E69761A0];
  switch(v8)
  {
    case 1:
      v11 = MEMORY[0x1E69761A8];
      goto LABEL_7;
    case 2:
      v11 = MEMORY[0x1E69761B0];
      goto LABEL_7;
    case 3:
      v16 = sub_1D5611438();
      v14 = v3;
      v15 = 1;
      goto LABEL_9;
    default:
LABEL_7:
      v12 = *v11;
      v13 = sub_1D5611438();
      (*(*(v13 - 8) + 104))(v3, v12, v13);
      v14 = v3;
      v15 = 0;
      v16 = v13;
LABEL_9:
      __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
      return sub_1D56115C8();
  }
}

uint64_t sub_1D53E2D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3640, &qword_1D564D3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53E2DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3640, &qword_1D564D3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D53E2E18(uint64_t a1)
{
  switch(*v1)
  {
    case 1:
      result = sub_1D5611448();
      break;
    case 2:
      result = sub_1D5611528();
      break;
    case 3:
      result = sub_1D56114C8();
      break;
    case 4:
      result = sub_1D5611458();
      break;
    case 5:
      result = sub_1D5611538();
      break;
    case 6:
      result = sub_1D56114D8();
      break;
    case 7:
      result = sub_1D5611468();
      break;
    case 8:
      result = sub_1D5611548();
      break;
    case 9:
      result = sub_1D56114E8();
      break;
    case 0xA:
      result = sub_1D5611478();
      break;
    case 0xB:
      result = sub_1D5611558();
      break;
    case 0xC:
      result = sub_1D56114F8();
      break;
    case 0xD:
      result = sub_1D5611488();
      break;
    case 0xE:
      result = sub_1D5611568();
      break;
    case 0xF:
      result = sub_1D5611508();
      break;
    case 0x10:
      result = sub_1D5611498();
      break;
    case 0x11:
      result = sub_1D5611578();
      break;
    case 0x12:
      result = sub_1D5611518();
      break;
    case 0x13:
      result = sub_1D56114A8();
      break;
    case 0x14:
      result = sub_1D5611588();
      break;
    default:
      result = sub_1D56114B8();
      break;
  }

  return result;
}

uint64_t sub_1D53E2E90(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D53E2ED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t TVShow.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  v14 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  type metadata accessor for TVShow(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D53E3094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9540 != -1)
  {
    OUTLINED_FUNCTION_10_103(&qword_1EC7E9540);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v11, v10, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v14 = sub_1D53E7DC4(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void TVShow.credits.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9598 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v4 = sub_1D53E7DC4(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);
  OUTLINED_FUNCTION_69_3();
}

void TVShow._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v4 = sub_1D53E7DC4(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);
  OUTLINED_FUNCTION_69_3();
}

void TVShow.editorialCards.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E95A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v11, v10, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v14 = sub_1D53E7DC4(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D53E33E4(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_6_125();
  sub_1D53E7DC4(v6, v4, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v7, v4, v8);

  return sub_1D560EC28();
}

void TVShow._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  sub_1D4F84AE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v4 = sub_1D53E7DC4(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);

  OUTLINED_FUNCTION_69_3();
}

uint64_t TVShow.episodeCount.getter()
{
  if (qword_1EC7E9558 != -1)
  {
    OUTLINED_FUNCTION_30_59(&qword_1EC7E9558);
  }

  OUTLINED_FUNCTION_3_167();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v2, v0, v3);
  sub_1D560EC28();
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void TVShow.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9560 != -1)
  {
    OUTLINED_FUNCTION_29_55(&qword_1EC7E9560);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v11, v10, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v14 = sub_1D53E7DC4(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D53E3710()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_167();
  sub_1D53E7DC4(v2, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v3, v0, v4);
  sub_1D560EC28();
  return v6 & 1;
}

void TVShow.languageAttributes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E9578 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED218, &qword_1D5623F90);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v11, v10, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v14 = sub_1D53E7DC4(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t TVShow.name.getter()
{
  if (qword_1EC7E9580 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_167();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v2, v0, v3);
  sub_1D560EC28();
  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void TVShow.plainEditorialCards.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E95B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_1_162();
  sub_1D53E7DC4(v11, v10, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v14 = sub_1D53E7DC4(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t TVShow.seasons.getter()
{
  if (qword_1EC7E95C8 != -1)
  {
    OUTLINED_FUNCTION_28_61(&qword_1EC7E95C8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_6_125();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v2, v0, v3);

  return sub_1D560EC28();
}

uint64_t static TVShow.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TVShow(0);

  return sub_1D5611A78();
}

uint64_t TVShow.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v80 = v3;
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v78 = v4;
  v5 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v75 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v73 = v8;
  v70 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v69 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v77 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v76 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_2();
  v84 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v67 - v31;
  v68 = type metadata accessor for TVShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_16_87();
  v82 = v34;
  sub_1D53E7918();
  v35 = TVShow.name.getter();
  v71 = v36;
  v72 = v35;
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  OUTLINED_FUNCTION_3_167();
  sub_1D53E7DC4(v37, v1, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v40 = sub_1D53E7DC4(v38, v1, v39);
  sub_1D560EC28();
  if (qword_1EC7E9540 != -1)
  {
    OUTLINED_FUNCTION_10_103(&qword_1EC7E9540);
  }

  v74 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  v41 = OUTLINED_FUNCTION_67_1(v85[0]);
  if (*(v41 + 16))
  {
    v42 = *(v41 + 80);
    v43 = *(v41 + 88);

    v44 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v44);
    if ((v43 & 1) == 0)
    {
      sub_1D4E50004(v26, &qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_24_0();
      v46 = MEMORY[0x1E6975D50];
      if (v42 >= 500)
      {
        v46 = MEMORY[0x1E6975D58];
      }

      (*(v45 + 104))(v26, *v46, v44);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v44);
    }

    sub_1D4FB8058();
  }

  else
  {

    v47 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v47);
  }

  if (qword_1EC7E9590 != -1)
  {
    OUTLINED_FUNCTION_26_69(&qword_1EC7E9590);
  }

  sub_1D560C0A8();
  sub_1D560EC28();
  v48 = v76;
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v5);
  v49 = v68;
  v86 = v68;
  v87 = v40;
  __swift_allocate_boxed_opaque_existential_0(v85);
  OUTLINED_FUNCTION_16_87();
  v67 = v50;
  sub_1D53E7918();
  v51 = __swift_project_boxed_opaque_existential_1(v85, v86);
  v52 = v69;
  v53 = v70;
  (*(v10 + 16))(v69, &v51[*(v49 + 20)], v70);
  v54 = v73;
  sub_1D5611A98();
  (*(v10 + 8))(v52, v53);
  v55 = v77;
  sub_1D560FDD8();
  (*(v75 + 8))(v54, v5);
  sub_1D4E50004(v48, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v5);
  sub_1D4FB8058();
  __swift_destroy_boxed_opaque_existential_1(v85);
  v56 = v78;
  sub_1D560EC98();
  sub_1D4FB8150();
  type metadata accessor for MusicSiriRepresentation(0);
  v57 = v79;
  v58 = v74;
  sub_1D4FB8150();
  v59 = v84;
  sub_1D4FB8150();
  v60 = v83;
  sub_1D4FB8150();
  LOBYTE(v85[0]) = 16;
  sub_1D50391CC();
  v62 = v61;
  v64 = v63;
  sub_1D4E50004(v55, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v80 + 8))(v56, v81);
  sub_1D4E50004(v48, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v60, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v59, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v58, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D53E79D4(v82, v67);
  *v57 = v62;
  *(v57 + 8) = v64;
  *(v57 + 16) = 16;
  v66 = v71;
  *(v57 + 24) = v72;
  *(v57 + 32) = v66;
  *(v57 + 40) = 0;
  *(v57 + 48) = 0;
  return result;
}

uint64_t TVShow.debugDescription.getter()
{
  v1 = type metadata accessor for TVSeason(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v135 = v3 - v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_2();
  v142 = v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2228, &qword_1D56466A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v117 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_4();
  v137 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v19);
  v133 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v128 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v22);
  v126 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v125 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v25);
  v124 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v123 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v120 = v31 - v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v34);
  v138 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v132 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v117 - v40;
  v42 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v119 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v45);
  v155 = 0x28776F68535654;
  v156 = 0xE700000000000000;
  v149 = 0x22203A646920200ALL;
  v150 = 0xE800000000000000;
  v46 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v46);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  OUTLINED_FUNCTION_51_0();
  v149 = v47 | 0x656D616E00000000;
  v150 = 0xEB0000000022203ALL;
  v48 = TVShow.name.getter();
  v50 = v49;
  MEMORY[0x1DA6EAC70](v48);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v149 = 0xD000000000000013;
  v150 = v51;
  if (qword_1EC7E9558 != -1)
  {
    OUTLINED_FUNCTION_30_59(&qword_1EC7E9558);
  }

  OUTLINED_FUNCTION_3_167();
  sub_1D53E7DC4(v52, v50, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  v53 = v50;
  v55 = v54;
  v58 = sub_1D53E7DC4(v56, v53, v57);
  sub_1D560EC28();
  v59 = v153;
  if (v154)
  {
    v59 = 0;
  }

  v153 = v59;
  v60 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v60);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_27_64();

  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v140 = v58;
  v141 = v55;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    sub_1D4E50004(v41, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v61 = v119;
    v62 = v118;
    (*(v119 + 32))(v118, v41, v42);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v149 = 0xD000000000000014;
    v150 = v63;
    v153 = sub_1D5610928();
    v154 = v64;
    v151 = 10;
    v152 = 0xE100000000000000;
    v147 = 2105354;
    v148 = 0xE300000000000000;
    sub_1D4F53278();
    OUTLINED_FUNCTION_3_31();
    v65 = sub_1D5615968();
    v67 = v66;

    MEMORY[0x1DA6EAC70](v65, v67);

    OUTLINED_FUNCTION_27_64();

    (*(v61 + 8))(v62, v42);
  }

  v153 = 0;
  v154 = 0xE000000000000000;
  if (qword_1EC7E9560 != -1)
  {
    OUTLINED_FUNCTION_29_55(&qword_1EC7E9560);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v139 = v0;
  sub_1D560EC28();
  if (v149)
  {
    v68 = v149;
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v69 = *(v68 + 16);
  if (v69)
  {
    v70 = (v68 + 40);
    do
    {
      v72 = *(v70 - 1);
      v71 = *v70;
      if ((v154 & 0x2000000000000000) != 0)
      {
        v73 = HIBYTE(v154) & 0xF;
      }

      else
      {
        v73 = v153 & 0xFFFFFFFFFFFFLL;
      }

      if (v73)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v149 = 0x22202020200ALL;
      v150 = 0xE600000000000000;
      MEMORY[0x1DA6EAC70](v72, v71);

      OUTLINED_FUNCTION_55_0();
      MEMORY[0x1DA6EAC70](v149, v150);

      v70 += 2;
      --v69;
    }

    while (v69);

    v75 = v153;
    v74 = v154;
  }

  else
  {

    v75 = 0;
    v74 = 0xE000000000000000;
  }

  v76 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v76 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v149 = 0xD000000000000011;
    v150 = v77;
    MEMORY[0x1DA6EAC70](v75, v74);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_27_64();
  }

  OUTLINED_FUNCTION_51_0();
  v149 = v78 | 0x3473616800000000;
  v150 = 0xEC00000022203A4BLL;
  if (qword_1EC7E9568 != -1)
  {
    swift_once();
  }

  v79 = 0x65736C6166;
  OUTLINED_FUNCTION_34_56(qword_1EC87C5F8, MEMORY[0x1E69E6370]);
  if (v151 == 2 || (v151 & 1) == 0)
  {
    v81 = 0xE500000000000000;
    v80 = 0x65736C6166;
  }

  else
  {
    v80 = 1702195828;
    v81 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v80, v81);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v149, v150);

  OUTLINED_FUNCTION_51_0();
  v149 = v82 | 0x4873616800000000;
  v150 = 0xEC00000022203A44;
  if (qword_1EC7E9570 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v83 = v138;
  v84 = v130;
  if (v151 == 2 || (v151 & 1) == 0)
  {
    v85 = 0xE500000000000000;
  }

  else
  {
    v79 = 1702195828;
    v85 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v79, v85);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_27_64();

  if (qword_1EC7E9588 != -1)
  {
    swift_once();
  }

  v86 = v83;
  OUTLINED_FUNCTION_34_56(qword_1EC87C618, v83);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v83);
  v88 = v132;
  v89 = v131;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v84, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_46_36();
  }

  else
  {
    v90 = OUTLINED_FUNCTION_27_1();
    v91(v90);
    v92 = v121;
    sub_1D56107A8();
    v84 = v120;
    (*(v88 + 16))(v120, v89, v86);
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v86);
    v93 = v125;
    v94 = v122;
    v95 = v126;
    (*(v125 + 104))(v122, *MEMORY[0x1E6975DC8], v126);
    v130 = sub_1D56107B8();
    v86 = v96;
    (*(v93 + 8))(v94, v95);
    sub_1D4E50004(v84, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v123 + 8))(v92, v124);
    if (v86)
    {
      OUTLINED_FUNCTION_11_61();
      sub_1D5615B68();

      OUTLINED_FUNCTION_9_0();
      v149 = 0xD000000000000012;
      v150 = v97;
      MEMORY[0x1DA6EAC70](v130, v86);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_27_64();
    }

    (*(v88 + 8))(v89, v138);
    OUTLINED_FUNCTION_46_36();
  }

  v98 = v135;
  if (qword_1EC7E9590 != -1)
  {
    OUTLINED_FUNCTION_26_69(&qword_1EC7E9590);
  }

  OUTLINED_FUNCTION_34_56(qword_1EC87C620, v84);
  if (__swift_getEnumTagSinglePayload(v86, 1, v84) == 1)
  {
    sub_1D4E50004(v86, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v99 = v128;
    v100 = v127;
    (*(v128 + 32))(v127, v86, v84);
    OUTLINED_FUNCTION_51_0();
    v149 = v101 | 0x3A6C727500000000;
    v150 = 0xEA00000000002220;
    OUTLINED_FUNCTION_7_121();
    sub_1D53E7DC4(v102, v103, MEMORY[0x1E6968FE0]);
    v104 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v104);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_27_64();

    (*(v99 + 8))(v100, v84);
  }

  v105 = v134;
  if (qword_1EC7E95C8 != -1)
  {
    OUTLINED_FUNCTION_28_61(&qword_1EC7E95C8);
  }

  OUTLINED_FUNCTION_34_56(qword_1EC7F5D68, v13);
  if (__swift_getEnumTagSinglePayload(v105, 1, v13) == 1)
  {
    sub_1D4E50004(v105, &qword_1EC7ED1F8, &qword_1D5634780);
  }

  else
  {
    v106 = v137;
    v107 = v98;
    v108 = v136;
    (*(v137 + 32))(v136, v105, v13);
    v151 = 0;
    v152 = 0xE000000000000000;
    (*(v106 + 16))(v9, v108, v13);
    v109 = *(v129 + 36);
    sub_1D53E78B4();
    OUTLINED_FUNCTION_128();
    sub_1D5615608();
    while (1)
    {
      OUTLINED_FUNCTION_128();
      sub_1D5615648();
      if (*&v9[v109] == v149)
      {
        break;
      }

      v110 = sub_1D5615688();
      v111 = v142;
      sub_1D53E7918();
      v110(&v149, 0);
      sub_1D5615658();
      sub_1D53E7970(v111, v107);
      v112 = v151 & 0xFFFFFFFFFFFFLL;
      if ((v152 & 0x2000000000000000) != 0)
      {
        v112 = HIBYTE(v152) & 0xF;
      }

      if (v112)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v149 = 10;
      v150 = 0xE100000000000000;
      v113 = TVSeason.debugDescription.getter();
      MEMORY[0x1DA6EAC70](v113);

      MEMORY[0x1DA6EAC70](v149, v150);

      sub_1D53E79D4(v107, type metadata accessor for TVSeason);
    }

    sub_1D4E50004(v9, &qword_1EC7F2228, &qword_1D56466A0);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v149 = v114 | 0x7361657300000000;
    v150 = 0xEE005B203A736E6FLL;
    v147 = v151;
    v148 = v152;
    v145 = 10;
    v146 = 0xE100000000000000;
    v143 = 0x202020200ALL;
    v144 = 0xE500000000000000;
    sub_1D4F53278();
    OUTLINED_FUNCTION_3_31();
    sub_1D5615968();

    v115 = OUTLINED_FUNCTION_27_1();
    MEMORY[0x1DA6EAC70](v115);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_18_49();

    (*(v137 + 8))(v136, v13);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v155;
}

uint64_t TVShow.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TVShow(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t TVShow.catalogID.getter()
{
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  type metadata accessor for TVShow(0);
  OUTLINED_FUNCTION_2_163();
  sub_1D53E7DC4(v11, v12, &protocol conformance descriptor for TVShow);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v2 + 8))(v6, v0);
  v13 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_1D4E50004(v10, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v14 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    v15 = OUTLINED_FUNCTION_128();
    v16(v15);
  }

  return v14;
}

void TVShow.contentRating.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EC7E9540 != -1)
  {
    OUTLINED_FUNCTION_10_103(&qword_1EC7E9540);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_6_125();
  sub_1D53E7DC4(v13, v10, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v14, v10, v15);
  sub_1D560EC28();
  if (a10)
  {
    v16 = a10;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4EC92E8(v16, v12);

  OUTLINED_FUNCTION_69_3();
}

uint64_t TVShow.editorialArtwork.getter()
{
  v0 = OUTLINED_FUNCTION_27_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1D4F5CED4();
  sub_1D4FB8150();
  v7 = sub_1D56140F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  result = sub_1D4E50004(v6, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4F5CED4();
    v10 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v10, v11, &unk_1D561A0C0);
    return sub_1D4FB8058();
  }

  return result;
}

uint64_t TVShow.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for TVShow(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_19_76();
  sub_1D53E7DC4(v1, v2, MEMORY[0x1E6976328]);
  OUTLINED_FUNCTION_128();
  return sub_1D5614CB8();
}

uint64_t TVShow.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for TVShow(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_19_76();
  sub_1D53E7DC4(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D53E5BF8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D53E7DC4(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D53E5C9C@<X0>(uint64_t *a1@<X8>)
{
  result = TVShow.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVShow.subscript.getter(uint64_t a1)
{
  return sub_1D53E5D04();
}

{
  return sub_1D53E5D04();
}

uint64_t sub_1D53E5D04()
{
  OUTLINED_FUNCTION_17_78();
  sub_1D53E7DC4(v1, v0, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_23_65(&qword_1EC7EA688);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t TVShow.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_17_78();
  sub_1D53E7DC4(v2, v1, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_23_65(&qword_1EC7EA688);
  OUTLINED_FUNCTION_0_218();
  sub_1D53E7DC4(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D53E5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D53E7DC4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v11 = sub_1D53E7DC4(&qword_1EC7EAB40, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D53E6028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D53E7DC4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v13 = sub_1D53E7DC4(&qword_1EC7EAB40, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D53E616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D53E7DC4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v13 = sub_1D53E7DC4(&qword_1EC7EAB40, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D53E62B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D53E7DC4(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C5C8 = v0;
  return result;
}

uint64_t sub_1D53E6354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D53E7CF4(&qword_1EDD52828, &qword_1EC7EA3D0, &unk_1D56223F0, sub_1D50385C0);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C5D0 = v0;
  return result;
}

uint64_t sub_1D53E6400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  sub_1D560D118();
  OUTLINED_FUNCTION_63();

  qword_1EC87C5D8 = v0;
  return result;
}

uint64_t sub_1D53E64B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_82();
  sub_1D53E7DC4(v1, v2, MEMORY[0x1E6975E68]);
  OUTLINED_FUNCTION_28_1();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C5E0 = v0;
  return result;
}

uint64_t sub_1D53E654C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C5E8 = v0;
  return result;
}

uint64_t sub_1D53E65C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D50384C0();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C5F0 = v0;
  return result;
}

uint64_t sub_1D53E6640()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C5F8 = v0;
  return result;
}

uint64_t sub_1D53E66B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C600 = v0;
  return result;
}

uint64_t sub_1D53E6720()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D53E7CF4(&qword_1EC7F5DB0, &qword_1EC7ED218, &qword_1D5623F90, sub_1D53E7D70);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C608 = v0;
  return result;
}

uint64_t sub_1D53E67CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C610 = v0;
  return result;
}

uint64_t sub_1D53E6838()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D53E7DC4(&qword_1EDD5CF50, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C618 = v0;
  return result;
}

uint64_t sub_1D53E68E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_121();
  sub_1D53E7DC4(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C620 = v0;
  return result;
}

uint64_t sub_1D53E6970()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D522B538();
  OUTLINED_FUNCTION_38_41();
  OUTLINED_FUNCTION_41_49();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F5D38 = v0;
  return result;
}

uint64_t sub_1D53E6A50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D53E7DC4(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v0 = sub_1D560D138();

  qword_1EC7F5D40 = v0;
  return result;
}

uint64_t sub_1D53E6B70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5120684();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_38_41();
  OUTLINED_FUNCTION_41_49();
  sub_1D560D128();
  OUTLINED_FUNCTION_63();

  qword_1EC7F5D48 = v0;
  return result;
}

uint64_t sub_1D53E6C50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_7_121();
  sub_1D53E7DC4(v1, v2, MEMORY[0x1E6968FD0]);
  OUTLINED_FUNCTION_38_41();
  OUTLINED_FUNCTION_41_49();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F5D50 = v0;
  return result;
}

uint64_t sub_1D53E6D3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5120684();
  OUTLINED_FUNCTION_38_41();
  OUTLINED_FUNCTION_41_49();
  sub_1D560D128();
  OUTLINED_FUNCTION_63();

  qword_1EC7F5D58 = v0;
  return result;
}

uint64_t sub_1D53E6E24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_20_82();
  sub_1D53E7DC4(v1, v2, MEMORY[0x1E6975E68]);
  OUTLINED_FUNCTION_38_41();
  OUTLINED_FUNCTION_41_49();
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EC7F5D60 = v0;
  return result;
}

uint64_t sub_1D53E6F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDA8, &unk_1D5622F90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D53E7DC4(&qword_1EC7EAB20, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F5D68 = v0;
  return result;
}

uint64_t sub_1D53E7020(uint64_t a1, uint64_t a2)
{
  sub_1D53E7DC4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D53E7DC4(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

  return sub_1D560CBD8();
}

uint64_t static TVShow.catalogFilterID(for:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v1 = sub_1D5614D18();

  if (v1)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D53E7214(uint64_t a1, uint64_t a2)
{
  sub_1D53E7DC4(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

  return sub_1D5610C58();
}

uint64_t static TVShow.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TVSeason(0);
  if (result != a4)
  {
    result = type metadata accessor for TVEpisode(0);
    if (result != a4)
    {
      sub_1D560DE58();
      sub_1D53E7DC4(&qword_1EDD53B58, MEMORY[0x1E69750D8], MEMORY[0x1E69750E0]);
      swift_allocError();
      OUTLINED_FUNCTION_24_0();
      (*(v6 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t TVShow.init(from:)(void *a1)
{
  type metadata accessor for TVShow(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_163();
  sub_1D53E7DC4(v3, v4, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_21_71();
  sub_1D53E7DC4(v5, v1, &protocol conformance descriptor for CloudTVShow);
  OUTLINED_FUNCTION_24_61(&qword_1EDD58808);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TVShow.encode(to:)()
{
  type metadata accessor for TVShow(0);
  OUTLINED_FUNCTION_2_163();
  sub_1D53E7DC4(v1, v2, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_21_71();
  sub_1D53E7DC4(v3, v0, &protocol conformance descriptor for CloudTVShow);
  OUTLINED_FUNCTION_24_61(&qword_1EDD58808);
  OUTLINED_FUNCTION_27_1();
  return sub_1D5612688();
}

uint64_t TVShow.description.getter()
{
  sub_1D5615B68();

  strcpy(v3, "TVShow(id: ");
  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v1 = TVShow.name.getter();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return v3[0];
}

uint64_t sub_1D53E7650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F5D70 = v4;
  return result;
}

uint64_t sub_1D53E77AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v4 + v3, *MEMORY[0x1E6975218], v0);
  qword_1EC7F5D78 = v4;
  return result;
}

unint64_t sub_1D53E78B4()
{
  result = qword_1EC7EA520;
  if (!qword_1EC7EA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA518, &unk_1D5623F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA520);
  }

  return result;
}

uint64_t sub_1D53E7918()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D53E7970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVSeason(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53E79D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D53E7A2C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F5D80);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for TVShow(0);
  OUTLINED_FUNCTION_2_163();
  sub_1D53E7DC4(v3, v4, &protocol conformance descriptor for TVShow);
  return sub_1D560D988();
}

uint64_t sub_1D53E7AD8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F5D98);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E95E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F5D80);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D53E7C04(uint64_t a1)
{
  result = sub_1D53E7DC4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D53E7CF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1D53E7D70()
{
  result = qword_1EC7F5DB8;
  if (!qword_1EC7F5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5DB8);
  }

  return result;
}

uint64_t sub_1D53E7DC4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_65(unint64_t *a1)
{

  return sub_1D53E7DC4(a1, v1, &protocol conformance descriptor for TVShow);
}

uint64_t OUTLINED_FUNCTION_28_61(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_56(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t sub_1D53E7F30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  sub_1D560CC58();
  swift_getKeyPath();
  v1 = sub_1D560CC28();

  *(v0 + 32) = v1;
  qword_1EDD76EB8 = v0;
  return result;
}

uint64_t sub_1D53E7FC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D53E802C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DC0, &qword_1D5660428);
  swift_getKeyPath();
  sub_1D53E82A8(&qword_1EDD5EC88, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v1 = sub_1D5612D58();

  *(v0 + 32) = v1;
  qword_1EDD76EB0 = v0;
  return result;
}

id sub_1D53E8114()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977630]);

  return [v0 init];
}

double sub_1D53E8194()
{
  if (qword_1EDD5ECF0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D53E81F4(void *a1)
{
  a1[1] = sub_1D53E82A8(&qword_1EDD5ECA8, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  a1[2] = sub_1D53E82A8(&qword_1EDD5ECB0, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  result = sub_1D53E82A8(&qword_1EDD5EC90, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  a1[3] = result;
  return result;
}

uint64_t sub_1D53E82A8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D53E82F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_0_6();
  result = v5(v4, v3);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1D53E8344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_0_6();
  result = v5(v4, v3);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1D53E8398(char a1)
{
  if (a1)
  {
    return 0x7972617262694CLL;
  }

  else
  {
    return 0x754D2E656C707041;
  }
}

uint64_t sub_1D53E83D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  sub_1D4E69970(a1, v17 - v8, &qword_1EC7EB710, &qword_1D561F440);
  v10 = sub_1D5615458();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D4E50004(v9, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1D5615338();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_1D53E85B0()
{
  OUTLINED_FUNCTION_60();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v3);
  v0[4] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560D838();
  v0[5] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_167();
  v0[8] = swift_task_alloc();
  v6 = type metadata accessor for GenericMusicItem(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[10] = OUTLINED_FUNCTION_167();
  v0[11] = swift_task_alloc();
  v7 = _s15PersistentEntryVMa(0);
  v0[12] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[13] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D53E86E4()
{
  v52 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[6];
  v50 = v0[5];
  v6 = v0[3];
  OUTLINED_FUNCTION_6_126();
  sub_1D53F746C(v6, v3, v7);
  v49 = *(v1 + 24);
  sub_1D560C2F8();
  OUTLINED_FUNCTION_73_23();
  sub_1D53F75E4(v8, v9, &protocol conformance descriptor for GenericMusicItem);
  sub_1D560EC98();
  sub_1D560EC98();
  sub_1D560D828();
  v10 = *(v5 + 8);
  v10(v4, v50);
  OUTLINED_FUNCTION_3_168();
  sub_1D53F7258(v3, v11);
  sub_1D560EC98();
  v12 = sub_1D560D668();
  v13 = OUTLINED_FUNCTION_201();
  (v10)(v13);
  if ((v12 & 1) != 0 || (v14 = v0[4], sub_1D560EC98(), sub_1D560D7A8(), v15 = OUTLINED_FUNCTION_201(), (v10)(v15), v16 = sub_1D560F148(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v16), sub_1D4E50004(v14, &unk_1EC7F1970, &qword_1D561F4A0), EnumTagSinglePayload != 1))
  {
    v33 = v0[13];
    v34 = [objc_opt_self() standardUserDefaults];
    v35 = v12 & 1;
    LOBYTE(v51[0]) = v35;
    sub_1D53E99E0(v33, v51);
    v36 = v0[13];
    v37 = v0[3];
    v38 = v0[2];

    OUTLINED_FUNCTION_6_126();
    sub_1D53F746C(v37, v38, v39);
    v40 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
    v41 = *(v40 + 24);
    sub_1D560C328();
    OUTLINED_FUNCTION_14();
    (*(v42 + 16))(v38 + v41, v2 + v49);
    OUTLINED_FUNCTION_9_108();
    sub_1D53F7258(v36, v43);
    *(v38 + *(v40 + 20)) = v35;

    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
    }

    v18 = sub_1D560C758();
    __swift_project_value_buffer(v18, qword_1EDD76DC8);
    OUTLINED_FUNCTION_6_126();
    v19 = OUTLINED_FUNCTION_71();
    sub_1D53F746C(v19, v20, v21);
    v22 = sub_1D560C738();
    v23 = sub_1D56156D8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[10];
    if (v24)
    {
      v26 = OUTLINED_FUNCTION_142();
      v27 = swift_slowAlloc();
      v51[0] = v27;
      *v26 = 136446210;
      sub_1D560EC98();
      v28 = sub_1D5614DB8();
      v30 = v29;
      OUTLINED_FUNCTION_3_168();
      sub_1D53F7258(v25, v31);
      v32 = sub_1D4E6835C(v28, v30, v51);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1D4E3F000, v22, v23, "MusicRecentlySearchedRequest: Unable to identify a valid source when adding an item with identifier set %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      OUTLINED_FUNCTION_3_168();
      sub_1D53F7258(v25, v45);
    }

    v46 = v0[13];
    sub_1D53F7164();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_9_108();
    sub_1D53F7258(v46, v47);

    OUTLINED_FUNCTION_55();
  }

  return v44();
}

double sub_1D53E8BA0@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1D5614D38();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_1D56159A8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1D53E8C48()
{
  OUTLINED_FUNCTION_60();
  v0[179] = v1;
  v2 = sub_1D560D838();
  v0[185] = v2;
  OUTLINED_FUNCTION_69(v2);
  v0[191] = v3;
  v0[197] = OUTLINED_FUNCTION_127();
  v4 = type metadata accessor for GenericMusicItem(0);
  v0[203] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[209] = OUTLINED_FUNCTION_127();
  v5 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v0[210] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[211] = v6;
  v0[212] = OUTLINED_FUNCTION_167();
  v0[213] = swift_task_alloc();
  v7 = _s14TransientEntryVMa(0);
  v0[214] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[215] = v8;
  v0[216] = OUTLINED_FUNCTION_167();
  v0[217] = swift_task_alloc();
  v0[218] = swift_task_alloc();
  v0[219] = swift_task_alloc();
  v0[220] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D53E8DE8(uint64_t a1, void *a2, uint64_t (*a3)(), void *a4)
{
  v5 = v4[179];
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v82 = v4[214];
      v8 = v4;
      v9 = v4[211];
      v88 = v4[210];
      v90 = MEMORY[0x1E69E7CC0];
      v10 = v4[191];
      sub_1D4F04504(0, v6, 0);
      OUTLINED_FUNCTION_43_3();
      v12 = v5 + v11;
      v81 = *(v9 + 72);
      do
      {
        v85 = v12;
        v86 = v6;
        v13 = v8[220];
        v14 = v8[213];
        v15 = v8[212];
        v16 = v8[209];
        v17 = v8[197];
        v83 = v14;
        v84 = v8[185];
        sub_1D53F746C(v12, v14, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        sub_1D53F746C(v14, v15, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        OUTLINED_FUNCTION_6_126();
        sub_1D53F746C(v15, v16, v18);
        v19 = *(v88 + 24);
        v20 = *(_s15PersistentEntryVMa(0) + 24);
        sub_1D560C328();
        OUTLINED_FUNCTION_14();
        (*(v21 + 16))(v13 + v20, v15 + v19);
        OUTLINED_FUNCTION_73_23();
        sub_1D53F75E4(&qword_1EDD5C600, v22, &protocol conformance descriptor for GenericMusicItem);
        sub_1D560EC98();
        sub_1D560EC98();
        sub_1D560D828();
        (*(v10 + 8))(v17, v84);
        OUTLINED_FUNCTION_3_168();
        sub_1D53F7258(v16, v23);
        sub_1D53F7258(v83, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        LOBYTE(v20) = *(v15 + *(v88 + 20));
        sub_1D53F7258(v15, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        *(v13 + *(v82 + 20)) = v20;
        v25 = v90[2];
        v24 = v90[3];
        if (v25 >= v24 >> 1)
        {
          v29 = OUTLINED_FUNCTION_93_1(v24);
          sub_1D4F04504(v29, v25 + 1, 1);
        }

        v90[2] = v25 + 1;
        OUTLINED_FUNCTION_43_3();
        OUTLINED_FUNCTION_4_129();
        sub_1D53F74C8(v26, v27, v28);
        v12 = v85 + v81;
        v6 = v86 - 1;
      }

      while (v86 != 1);
      v4 = v8;
      v7 = v90;
    }
  }

  else
  {
    v30 = [objc_opt_self() standardUserDefaults];
    v31 = sub_1D53E9D2C();

    v7 = v31;
  }

  v32 = 0;
  v33 = v4[214];
  v34 = v7[2];
  v87 = MEMORY[0x1E69E7CC0];
  v89 = v4;
  v35 = v7;
  while (1)
  {
    if (v34 == v32)
    {
      v56 = 0;
      v57 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          if (v34 == v56)
          {
            v77 = v4[179];

            v78 = swift_allocObject();
            v4[221] = v78;
            *(v78 + 16) = v77;
            *(v78 + 24) = v87;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CF0, &qword_1D563BFA8);
            swift_asyncLet_begin();
            v79 = swift_allocObject();
            v4[222] = v79;
            *(v79 + 16) = v77;
            *(v79 + 24) = v57;

            swift_asyncLet_begin();
            a3 = sub_1D53E951C;
            v7 = v4 + 2;
            a2 = v4 + 167;
            a4 = v4 + 162;

            return MEMORY[0x1EEE6DEC0](v7, a2, a3, a4);
          }

          if (v56 >= v7[2])
          {
            goto LABEL_37;
          }

          v58 = v4[217];
          OUTLINED_FUNCTION_5_123();
          sub_1D53F746C(v59, v58, v60);
          if (*(v58 + *(v33 + 20)) != 1)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_4_129();
          sub_1D53F74C8(v64, v65, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = OUTLINED_FUNCTION_37_6();
            sub_1D4F04504(v67, v68, v69);
          }

          v71 = *(v57 + 16);
          v70 = *(v57 + 24);
          v72 = v71 + 1;
          if (v71 >= v70 >> 1)
          {
            v76 = OUTLINED_FUNCTION_93_1(v70);
            OUTLINED_FUNCTION_126_7(v76);
            v72 = v58;
          }

          ++v56;
          v4 = v89;
          *(v57 + 16) = v72;
          OUTLINED_FUNCTION_4_129();
          sub_1D53F74C8(v73, v74, v75);
          v7 = v35;
        }

        v61 = OUTLINED_FUNCTION_118_14();
        v58 = OUTLINED_FUNCTION_101_13(v61, 0xEB00000000636973);

        if (v58)
        {
          goto LABEL_28;
        }

        v4 = v89;
        OUTLINED_FUNCTION_10_104();
        sub_1D53F7258(v62, v63);
        ++v56;
        v7 = v35;
      }
    }

    if (v32 >= v7[2])
    {
      break;
    }

    v36 = v4[219];
    OUTLINED_FUNCTION_5_123();
    sub_1D53F746C(v37, v36, v38);
    if (*(v36 + *(v33 + 20)))
    {
      v39 = sub_1D5616168();

      if (v39)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_10_104();
      sub_1D53F7258(v40, v41);
      ++v32;
      v7 = v35;
    }

    else
    {

LABEL_16:
      OUTLINED_FUNCTION_4_129();
      sub_1D53F74C8(v42, v43, v44);
      v45 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = OUTLINED_FUNCTION_37_6();
        sub_1D4F04504(v46, v47, v48);
        v45 = v87;
      }

      v50 = *(v45 + 16);
      v49 = *(v45 + 24);
      v51 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        v55 = OUTLINED_FUNCTION_93_1(v49);
        OUTLINED_FUNCTION_126_7(v55);
        v51 = v4;
        v45 = v87;
      }

      ++v32;
      v4 = v89;
      *(v45 + 16) = v51;
      v87 = v45;
      OUTLINED_FUNCTION_4_129();
      sub_1D53F74C8(v52, v53, v54);
      v7 = v35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return MEMORY[0x1EEE6DEC0](v7, a2, a3, a4);
}

uint64_t sub_1D53E951C()
{
  OUTLINED_FUNCTION_60();
  v1[223] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 173, sub_1D53E9788, v1 + 168);
  }

  else
  {
    v1[224] = v1[167];

    v2 = OUTLINED_FUNCTION_100_14();

    return MEMORY[0x1EEE6DEC0](v2, v3, v4, v1 + 180);
  }
}

uint64_t sub_1D53E95C4()
{
  *(v1 + 1800) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_3_20(sub_1D53E9884);
  }

  else
  {
    return OUTLINED_FUNCTION_3_20(sub_1D53E95F0);
  }
}

uint64_t sub_1D53E95F0()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 1808) = *(v0 + 1384);

  v1 = OUTLINED_FUNCTION_100_14();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 1584);
}

uint64_t sub_1D53E969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v22 = *(v12 + 1576);

  OUTLINED_FUNCTION_73_0();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_1D53E97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();

  OUTLINED_FUNCTION_88_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1D53E9884()
{
  OUTLINED_FUNCTION_60();

  v1 = OUTLINED_FUNCTION_100_14();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 1488);
}

uint64_t sub_1D53E992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();

  OUTLINED_FUNCTION_88_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1D53E99E0(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E38, &qword_1D5660808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = _s14TransientEntryVMa(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  result = sub_1D53E9D2C();
  if (!v3)
  {
    v14 = result;
    v35 = v2;
    MEMORY[0x1EEE9AC00](result);
    v34 = v15;
    *(&v33 - 2) = v15;
    *(&v33 - 8) = v12;

    v16 = sub_1D5475878(sub_1D53F7524, (&v33 - 4), v14);
    v18 = v17;
    v33 = 0;

    if ((v18 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D54B45A4(v14, v19, v20, v21);
        v14 = v32;
      }

      v22 = *(v14 + 16);
      if (v16 >= v22)
      {
        __break(1u);
        goto LABEL_14;
      }

      v23 = v22 - 1;
      v24 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v25 = *(v9 + 72);
      v26 = v24 + v25 * v16;
      sub_1D53F7258(v26, _s14TransientEntryVMa);
      sub_1D4F0376C(v26 + v25, v23 - v16, v26);
      *(v14 + 16) = v23;
    }

    sub_1D53F746C(v34, v11, _s15PersistentEntryVMa);
    v11[*(v8 + 20)] = v12;
    sub_1D53F746C(v11, v7, _s14TransientEntryVMa);
    v27 = *(v14 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v14;
    if (!isUniquelyReferenced_nonNull_native || v27 >= *(v14 + 24) >> 1)
    {
      sub_1D4F01B44();
      v14 = v29;
      v37 = v29;
    }

    v30 = v33;
    sub_1D54FB780();
    v36 = v14;

    sub_1D53F6D6C(&v36);
    v7 = v30;
    if (!v30)
    {

      sub_1D516A630();
      sub_1D53F61A4(v31);
      sub_1D53F7258(v11, _s14TransientEntryVMa);
    }

LABEL_14:

    __break(1u);
  }

  return result;
}

void *sub_1D53E9D2C()
{
  v1 = v0;
  v2 = _s14TransientEntryVMa(0);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v44 - v5;
  v6 = _s15PersistentEntryVMa(0);
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C50, &unk_1D564AB80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v44 - v9;
  sub_1D53E8BA0(&v59);
  if (!v60)
  {
    sub_1D4E50004(&v59, &qword_1EC7E9F98, &qword_1D561C420);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E18, &qword_1D56607D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v61;
  v46 = *MEMORY[0x1E6975060];
  v45 = *MEMORY[0x1E6975040];
  v44 = v61;
  do
  {
    v14 = v10;
    v15 = *(&unk_1F50A3850 + v11 + 32);
    if (*(&unk_1F50A3850 + v11 + 32))
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xEB00000000636973;
    }

    if (*(v13 + 16))
    {
      v52 = v10;
      if (v15)
      {
        v17 = 0x7972617262694CLL;
      }

      else
      {
        v17 = 0x754D2E656C707041;
      }

      v18 = sub_1D4E4EFA0(v17, v16);
      v20 = v19;

      if (v20)
      {
        v21 = (*(v13 + 56) + 16 * v18);
        v22 = *v21;
        v23 = v21[1];
        sub_1D560B9C8();
        swift_allocObject();
        sub_1D4F48DE4(v22, v23);
        v24 = sub_1D560B9B8();
        v25 = sub_1D560DB08();
        if (v15)
        {
          v26 = v45;
        }

        else
        {
          v26 = v46;
        }

        v27 = v47;
        (*(*(v25 - 8) + 104))(v47, v26, v25);
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v25);
        sub_1D53F5DEC(v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E20, &qword_1D56607E0);
        sub_1D53F7548(&qword_1EDD52710, &qword_1EDD5AFD0, &unk_1D5668CB8, MEMORY[0x1E69E6510]);
        v51 = v24;
        result = sub_1D560B948();
        if (v1)
        {

          sub_1D4E55E1C(v22, v23);

          return v12;
        }

        v48 = v23;
        v49 = v22;
        v50 = 0;
        v29 = 0;
        v30 = v59;
        v32 = v59 + 56;
        v31 = *(v59 + 56);
        v33 = 1 << *(v59 + 32);
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        else
        {
          v34 = -1;
        }

        v35 = v34 & v31;
        v36 = (v33 + 63) >> 6;
        if ((v34 & v31) != 0)
        {
          do
          {
LABEL_24:
            v38 = v53;
            sub_1D53F746C(*(v30 + 48) + *(v54 + 72) * (__clz(__rbit64(v35)) | (v29 << 6)), v53, _s15PersistentEntryVMa);
            v39 = v38;
            v40 = v57;
            sub_1D53F74C8(v39, v57, _s15PersistentEntryVMa);
            *(v40 + *(v56 + 20)) = v15;
            sub_1D53F746C(v40, v58, _s14TransientEntryVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D4F01B44();
              v12 = v42;
            }

            v41 = *(v12 + 16);
            if (v41 >= *(v12 + 24) >> 1)
            {
              sub_1D4F01B44();
              v12 = v43;
            }

            v35 &= v35 - 1;
            sub_1D53F7258(v57, _s14TransientEntryVMa);
            *(v12 + 16) = v41 + 1;
            result = sub_1D53F74C8(v58, v12 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41, _s14TransientEntryVMa);
          }

          while (v35);
        }

        while (1)
        {
          v37 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
            return result;
          }

          if (v37 >= v36)
          {
            break;
          }

          v35 = *(v32 + 8 * v37);
          ++v29;
          if (v35)
          {
            v29 = v37;
            goto LABEL_24;
          }
        }

        sub_1D4E55E1C(v49, v48);

        v1 = v50;
        v13 = v44;
      }

      v14 = v52;
    }

    else
    {
    }

    v10 = 1;
    v11 = 1u;
  }

  while ((v14 & 1) == 0);

  return v12;
}

uint64_t sub_1D53EA354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D53EA3F4;

  return sub_1D53EA528(a3);
}

uint64_t sub_1D53EA3F4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D53EA528(uint64_t a1)
{
  v1[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DC8, &qword_1D5660468);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = *(type metadata accessor for GenericMusicItem(0) - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for MusicItemTypedIdentifier(0);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = sub_1D560D9A8();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_1D5610088();
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v1[37] = swift_task_alloc();
  _s15PersistentEntryVMa(0);
  v1[38] = swift_task_alloc();
  v6 = sub_1D560D838();
  v1[39] = v6;
  v1[40] = *(v6 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = *(_s14TransientEntryVMa(0) - 8);
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53EA948, 0, 0);
}

uint64_t sub_1D53EA948()
{
  v1 = v0[11];
  v2 = swift_allocObject();
  v0[44] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  v123 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_97_16();
  v4 = swift_allocObject();
  v0[45] = v4;
  v128 = v4;
  *(v4 + 16) = v3;
  OUTLINED_FUNCTION_97_16();
  v5 = swift_allocObject();
  v0[46] = v5;
  v127 = v5;
  *(v5 + 16) = v3;
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[42];
    v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v0[40] + 16);
    v126 = v0[23];
    v122 = v0[21];
    v125 = v0[20];
    v135 = v0[31];
    v124 = (v0[27] + 32);
    v136 = (v135 + 8);
    v140 = *(v7 + 72);
    v134 = v9;
    do
    {
      v10 = v0[43];
      v11 = v0[41];
      v13 = v0[38];
      v12 = v0[39];
      v14 = v0[37];
      OUTLINED_FUNCTION_5_123();
      sub_1D53F746C(v8, v10, v15);
      sub_1D53F746C(v10, v13, _s15PersistentEntryVMa);
      OUTLINED_FUNCTION_10_104();
      sub_1D53F7258(v10, v16);
      (*v9)(v11, v13, v12);
      OUTLINED_FUNCTION_9_108();
      sub_1D53F7258(v13, v17);
      sub_1D560D7A8();
      v18 = sub_1D560F148();
      if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
      {
        v19 = v0[37];
        v20 = OUTLINED_FUNCTION_56_34();
        v21(v20);
        sub_1D4E50004(v19, &unk_1EC7F1970, &qword_1D561F4A0);
      }

      else
      {
        v22 = v0[37];
        v139 = sub_1D560F138();
        v24 = v23;
        OUTLINED_FUNCTION_24_0();
        (*(v25 + 8))(v22, v18);
        sub_1D560D828();
        v26 = sub_1D560D8D8();
        v27 = OUTLINED_FUNCTION_97_1();
        v28(v27);
        if (*(v26 + 16))
        {
          v137 = v6;
          v138 = v24;
          v30 = v0[35];
          v29 = v0[36];
          v31 = v0[30];
          v32 = v0[26];
          v33 = v0[19];
          OUTLINED_FUNCTION_43_3();
          (*(v135 + 16))(v30, v26 + v34, v31);

          v35 = *(v135 + 32);
          v35(v29, v30, v31);
          v36 = sub_1D5610058();
          MEMORY[0x1DA6E5E30](v36);
          OUTLINED_FUNCTION_110_0();
          sub_1D5328334(v37);
          if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
          {
            v38 = v0[36];
            v39 = v0[34];
            v40 = v0[30];
            v41 = v0[19];

            v42 = *v136;
            (*v136)(v39, v40);
            sub_1D4E50004(v41, &qword_1EC7F6DF0, &qword_1D561D1E0);
            (v42)(v38, v40);
            v43 = OUTLINED_FUNCTION_159();
            v44(v43);
          }

          else
          {
            v133 = v0[33];
            v129 = v0[30];
            v130 = v0[34];
            v48 = v0[28];
            v49 = v0[26];
            v50 = v0[23];
            v131 = v0[24];
            v132 = v0[25];
            v51 = *v124;
            (*v124)(v48, v0[19], v49);
            *v50 = v139;
            *(v126 + 8) = v138;
            v51(v50 + *(v125 + 24), v48, v49);
            *(v126 + 16) = MEMORY[0x1E69E7CC0];
            v52 = *(v125 + 28);
            v35(v50 + v52, v130, v129);
            v53 = 1;
            __swift_storeEnumTagSinglePayload(v50 + v52, 0, 1, v129);
            sub_1D53F74C8(v50, v131, type metadata accessor for MusicItemTypedIdentifier);
            sub_1D53F74C8(v131, v132, type metadata accessor for MusicItemTypedIdentifier);

            sub_1D560FF18();
            sub_1D53F75E4(&qword_1EDD53348, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE8]);
            sub_1D56150C8();
            sub_1D56150C8();
            if (v0[2] != v0[4] || v0[3] != v0[5])
            {
              v53 = sub_1D5616168();
            }

            v55 = *v136;
            (*v136)(v0[33], v0[30]);

            if (v53)
            {
              v56 = *(v128 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v128 + 16) = v56;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v92 = OUTLINED_FUNCTION_31_49();
                sub_1D4F0062C(v92, v93, v94, v95);
                v56 = v96;
                *(v128 + 16) = v96;
              }

              v59 = *(v56 + 16);
              v58 = *(v56 + 24);
              v60 = v59 + 1;
              if (v59 >= v58 >> 1)
              {
                v97 = OUTLINED_FUNCTION_60_27(v58);
                sub_1D4F0062C(v97, v98, v99, v100);
                *(v128 + 16) = v101;
              }

              v61 = OUTLINED_FUNCTION_57_34();
              OUTLINED_FUNCTION_32_55(v61);
              v62 = OUTLINED_FUNCTION_99_16();
              v55(v62);
              v63 = OUTLINED_FUNCTION_56_34();
              v64(v63, v133);
              v65 = v128;
            }

            else
            {
              v66 = v0[30];
              sub_1D560FED8();
              OUTLINED_FUNCTION_70();
              sub_1D56150C8();
              OUTLINED_FUNCTION_70();
              sub_1D56150C8();
              if (v0[6] == v0[8] && v0[7] == v0[9])
              {

                v82 = OUTLINED_FUNCTION_159();
                v55(v82);
              }

              else
              {
                v66 = sub_1D5616168();

                v68 = OUTLINED_FUNCTION_159();
                v55(v68);
                if ((v66 & 1) == 0)
                {

                  v69 = OUTLINED_FUNCTION_159();
                  sub_1D53F746C(v69, v70, v71);
                  v72 = *(v123 + 16);
                  v73 = swift_isUniquelyReferenced_nonNull_native();
                  *(v123 + 16) = v72;
                  if ((v73 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_31_49();
                    sub_1D4F02C3C();
                    v72 = v112;
                    *(v123 + 16) = v112;
                  }

                  v75 = *(v72 + 16);
                  v74 = *(v72 + 24);
                  if (v75 >= v74 >> 1)
                  {
                    OUTLINED_FUNCTION_60_27(v74);
                    sub_1D4F02C3C();
                    *(v123 + 16) = v113;
                  }

                  v76 = OUTLINED_FUNCTION_57_34();
                  v77 = v0[22];
                  OUTLINED_FUNCTION_32_55(v76);
                  v78 = OUTLINED_FUNCTION_99_16();
                  v55(v78);
                  v79 = OUTLINED_FUNCTION_56_34();
                  v80(v79, v66);
                  v81 = *(v123 + 16);
                  *(v81 + 16) = v75 + 1;
                  sub_1D53F74C8(v77, v81 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v75, type metadata accessor for MusicItemTypedIdentifier);
                  goto LABEL_37;
                }
              }

              v83 = *(v127 + 16);
              v84 = swift_isUniquelyReferenced_nonNull_native();
              *(v127 + 16) = v83;
              if ((v84 & 1) == 0)
              {
                v102 = OUTLINED_FUNCTION_31_49();
                sub_1D4F0062C(v102, v103, v104, v105);
                v83 = v106;
                *(v127 + 16) = v106;
              }

              v59 = *(v83 + 16);
              v85 = *(v83 + 24);
              v60 = v59 + 1;
              if (v59 >= v85 >> 1)
              {
                v107 = OUTLINED_FUNCTION_60_27(v85);
                sub_1D4F0062C(v107, v108, v109, v110);
                *(v127 + 16) = v111;
              }

              v86 = OUTLINED_FUNCTION_57_34();
              OUTLINED_FUNCTION_32_55(v86);
              v87 = OUTLINED_FUNCTION_99_16();
              v55(v87);
              v88 = OUTLINED_FUNCTION_56_34();
              v89(v88, v66);
              v65 = v127;
            }

            v90 = *(v65 + 16);
            *(v90 + 16) = v60;
            v91 = v90 + 16 * v59;
            *(v91 + 32) = v139;
            *(v91 + 40) = v138;
          }

LABEL_37:
          v6 = v137;
          v9 = v134;
          goto LABEL_38;
        }

        v45 = v0[39];

        v46 = OUTLINED_FUNCTION_56_34();
        v47(v46, v45);
      }

LABEL_38:
      v8 += v140;
      --v6;
    }

    while (v6);
  }

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
  v115 = swift_task_alloc();
  v0[47] = v115;
  v115[2] = v123;
  v115[3] = v128;
  v115[4] = v127;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[48] = v116;
  *v116 = v117;
  v116[1] = sub_1D53EB288;
  OUTLINED_FUNCTION_67_33();

  return MEMORY[0x1EEE6DD58](v118, v119, v114, 0, 0, v120, v115, v114);
}

uint64_t sub_1D53EB288()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D53EB38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v29 = 0;
  v30 = v28[10];
  v31 = *(v30 + 16);
  v32 = v28[49];
  v76 = MEMORY[0x1E69E7CC0];
  while (v31 != v29)
  {
    if (v29 >= *(v30 + 16))
    {
      __break(1u);
      return;
    }

    v33 = v28[18];
    v35 = v28[11];
    v34 = v28[12];
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_6_126();
    sub_1D53F746C(v36, v33, v37);
    sub_1D53EDA70(v33, v35, v34);
    v38 = v32;
    v39 = v28[18];
    if (v38)
    {

      OUTLINED_FUNCTION_3_168();
      sub_1D53F7258(v39, v59);
      OUTLINED_FUNCTION_71_2();

      return;
    }

    v41 = v28[12];
    v40 = v28[13];
    OUTLINED_FUNCTION_3_168();
    sub_1D53F7258(v39, v42);
    if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
    {
      sub_1D4E50004(v28[12], &qword_1EC7F5DC8, &qword_1D5660468);
      v32 = 0;
      ++v29;
    }

    else
    {
      v44 = v28[15];
      v43 = v28[16];
      sub_1D53F74C8(v28[12], v43, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D53F74C8(v43, v44, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_37_6();
        sub_1D4F01DF8();
        v76 = v49;
      }

      v45 = *(v76 + 16);
      if (v45 >= *(v76 + 24) >> 1)
      {
        sub_1D4F01DF8();
        v76 = v50;
      }

      ++v29;
      *(v76 + 16) = v45 + 1;
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_11_105();
      sub_1D53F74C8(v46, v47, v48);
      v32 = 0;
    }
  }

  v61 = v28[35];
  v62 = v28[34];
  v63 = v28[33];
  v64 = v28[32];
  v65 = v28[29];
  v66 = v28[28];
  v67 = v28[25];
  v68 = v28[24];
  v69 = v28[23];
  v70 = v28[22];
  v71 = v28[19];
  v72 = v28[18];
  v73 = v28[16];
  v74 = v28[15];
  v75 = v28[12];

  OUTLINED_FUNCTION_71_2();

  v53(v51, v52, v53, v54, v55, v56, v57, v58, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, a25, a26, a27, a28);
}

uint64_t sub_1D53EB6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v36 = v26[34];
  v37 = v26[33];
  v38 = v26[32];
  v39 = v26[29];
  v40 = v26[28];
  v41 = v26[25];
  v42 = v26[24];
  v43 = v26[23];
  v44 = v26[22];
  v45 = v26[19];
  v46 = v26[18];
  v47 = v26[16];
  v48 = v26[15];
  v49 = v26[12];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_97();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, a24, a25, a26);
}

uint64_t sub_1D53EB844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D53EB8E4;

  return sub_1D53EBA44(a3, a2);
}

uint64_t sub_1D53EB8E4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D53EBA18()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_22_1();
  return v1();
}

uint64_t sub_1D53EBA44(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry(0) - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53EBB00, 0, 0);
}

uint64_t sub_1D53EBB00()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DC8, &qword_1D5660468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CF0, &qword_1D563BFA8);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1D53EBC14;
  OUTLINED_FUNCTION_67_33();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DD58](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D53EBC14()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53EBD18()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_74_27();
      sub_1D53F746C(v4, v7, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_49();
        sub_1D4F01DF8();
        v6 = v14;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v9);
        sub_1D4F01DF8();
        v6 = v15;
      }

      *(v6 + 16) = v10 + 1;
      OUTLINED_FUNCTION_11_105();
      sub_1D53F74C8(v11, v12, v13);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v16 = v0[1];

  return v16(v6);
}

uint64_t sub_1D53EBE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DF8, &qword_1D5660728);
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53EBF68, 0, 0);
}

uint64_t sub_1D53EBF68()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  OUTLINED_FUNCTION_59(v1 + 16, (v0 + 2));
  if (*(*(v1 + 16) + 16))
  {
    v2 = v0[21];
    sub_1D5615458();
    v3 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    OUTLINED_FUNCTION_83_2();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_90_20(v7);
    OUTLINED_FUNCTION_111_13();
    sub_1D4E50004(v2, &qword_1EC7EB710, &qword_1D561F440);
  }

  v8 = v0[16];
  OUTLINED_FUNCTION_59(v8 + 16, (v0 + 5));
  if (*(*(v8 + 16) + 16))
  {
    v9 = v0[21];
    sub_1D5615458();
    v10 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_83_2();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_90_20(v14);
    OUTLINED_FUNCTION_111_13();
    sub_1D4E50004(v9, &qword_1EC7EB710, &qword_1D561F440);
  }

  v15 = v0[17];
  OUTLINED_FUNCTION_59(v15 + 16, (v0 + 8));
  if (*(*(v15 + 16) + 16))
  {
    v16 = v0[21];
    sub_1D5615458();
    v17 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_83_2();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_90_20(v21);
    OUTLINED_FUNCTION_111_13();
    sub_1D4E50004(v16, &qword_1EC7EB710, &qword_1D561F440);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_128();
  sub_1D5615508();
  v0[22] = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_64_30(v22);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DAD8](v24);
}

uint64_t sub_1D53EC1B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53EC2B0()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v2 = v0[11];
  v3 = v0[22];
  if (v2)
  {
    v4 = *(v2 + 16);
    v5 = *(v3 + 16);
    if (__OFADD__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = v0[22];
      if (!isUniquelyReferenced_nonNull_native || v5 + v4 > *(v7 + 24) >> 1)
      {
        sub_1D4F0136C();
        v7 = v8;
      }

      if (*(v2 + 16))
      {
        v9 = (*(v7 + 24) >> 1) - *(v7 + 16);
        v1 = type metadata accessor for GenericMusicItem(0);
        if (v9 >= v4)
        {
          swift_arrayInitWithCopy();

          if (!v4)
          {
            goto LABEL_15;
          }

          v10 = *(v7 + 16);
          v11 = __OFADD__(v10, v4);
          v12 = v10 + v4;
          if (!v11)
          {
            *(v7 + 16) = v12;
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return MEMORY[0x1EEE6DAD8](v1);
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (!v4)
      {
LABEL_15:
        v0[22] = v7;
        swift_task_alloc();
        OUTLINED_FUNCTION_58();
        v0[23] = v23;
        *v23 = v24;
        OUTLINED_FUNCTION_64_30(v23);
        OUTLINED_FUNCTION_57_1();
        OUTLINED_FUNCTION_376();

        return MEMORY[0x1EEE6DAD8](v1);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v13 = v0[13];
  (*(v0[19] + 8))(v0[20], v0[18]);
  *v13 = v3;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1D53EC4A0()
{
  OUTLINED_FUNCTION_80();
  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D53EC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAC8, &qword_1D561D6C8);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAD0, &qword_1D561D6D0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53EC698, 0, 0);
}

uint64_t sub_1D53EC698()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59(v0[7] + 16, (v0 + 2));

  MusicCatalogResourceRequest<>.init(catalogTypedIdentifiers:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[16] = v1;
  *v1 = v2;
  v1[1] = sub_1D53EC750;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEDCEDA0](v3, v4);
}

uint64_t sub_1D53EC750()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53EC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 96);
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  sub_1D560E448();
  sub_1D4E62A60(&qword_1EC7EB7D0, &qword_1EC7EA650, &qword_1D561C540, MEMORY[0x1E6975008]);
  v16 = sub_1D5614FB8();
  (*(v15 + 8))(v13, v14);
  v17 = OUTLINED_FUNCTION_128();
  v18(v17);
  **(v12 + 48) = v16;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D53EC958()
{
  OUTLINED_FUNCTION_160();
  v17 = v0;
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = *(v0 + 136);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76DC8);
  v4 = OUTLINED_FUNCTION_0_6();
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_110();
    v16 = v8;
    *v2 = 136446210;
    *(v0 + 40) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v10 = sub_1D5614DB8();
    sub_1D4E6835C(v10, v11, &v16);
    OUTLINED_FUNCTION_126_6();

    *(v2 + 1) = v1;
    OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v12, v13, "MusicRecentlySearchedRequest: Failed to fetch catalog items with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_122();
  }

  **(v0 + 48) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_22_1();

  return v14();
}

uint64_t sub_1D53ECB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  v5 = type metadata accessor for GenericMusicItem(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E00, &qword_1D5660798);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E08, &qword_1D56607A0);
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53ECD00, 0, 0);
}

uint64_t sub_1D53ECD00()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  swift_getKeyPath();
  OUTLINED_FUNCTION_109_16();
  type metadata accessor for SocialProfile(0);
  sub_1D53F75E4(&qword_1EC7F5E10, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_121_10();
  sub_1D53F75E4(v1, v2, v3);

  OUTLINED_FUNCTION_128();
  sub_1D560E2F8();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 200) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_122_10(v4);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEDA0](v6, v7);
}

uint64_t sub_1D53ECE38()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D53ECF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_125_14();
  OUTLINED_FUNCTION_7_107(&qword_1EC7EA5C0, &qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_86_0();
  v14 = sub_1D5615618();
  if (v14)
  {
    v15 = v14;
    v16 = *(v12 + 128);
    OUTLINED_FUNCTION_113_12(v14);
    OUTLINED_FUNCTION_108_14();
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v17 = OUTLINED_FUNCTION_102_14();
      OUTLINED_FUNCTION_121_10();
      sub_1D53F746C(v18, v19, v20);
      v17(v12 + 16, 0);
      OUTLINED_FUNCTION_201();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_116_16();
      if (v22)
      {
        v23 = OUTLINED_FUNCTION_93_1(v21);
        sub_1D4F048BC(v23, v16, 1);
        v13 = a9;
      }

      OUTLINED_FUNCTION_52_33();
      sub_1D5615658();
      --v15;
    }

    while (v15);
    v24 = OUTLINED_FUNCTION_24_62();
    v25(v24);
    v26 = OUTLINED_FUNCTION_70();
    v27(v26);
    v28 = OUTLINED_FUNCTION_159();
    v29(v28);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_24_62();
    v31(v30);
    v32 = OUTLINED_FUNCTION_70();
    v33(v32);
    v34 = OUTLINED_FUNCTION_159();
    v35(v34);
    v13 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_27_65();
  *v36 = v13;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1D53ED110()
{
  OUTLINED_FUNCTION_160();
  v18 = v0;
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = *(v0 + 208);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76DC8);
  v4 = OUTLINED_FUNCTION_0_6();
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_110();
    v17 = v8;
    *v2 = 136446210;
    *(v0 + 72) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v10 = sub_1D5614DB8();
    sub_1D4E6835C(v10, v11, &v17);
    OUTLINED_FUNCTION_126_6();

    *(v2 + 1) = v1;
    OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v12, v13, "MusicRecentlySearchedRequest: Failed to fetch social profiles with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_27_65();
  *v14 = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_22_1();

  return v15();
}

uint64_t sub_1D53ED2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  v5 = type metadata accessor for GenericMusicItem(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA620, &qword_1D561D610);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA00, &qword_1D561D618);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA08, &qword_1D561D620);
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53ED4B4, 0, 0);
}

uint64_t sub_1D53ED4B4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  swift_getKeyPath();
  OUTLINED_FUNCTION_109_16();
  type metadata accessor for EditorialItem(0);
  sub_1D53F75E4(&qword_1EC7EAA10, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  OUTLINED_FUNCTION_121_10();
  sub_1D53F75E4(v1, v2, v3);

  OUTLINED_FUNCTION_128();
  sub_1D560E2F8();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 200) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_122_10(v4);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEDA0](v6, v7);
}

uint64_t sub_1D53ED5EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D53ED6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_125_14();
  OUTLINED_FUNCTION_7_107(&qword_1EC7EA628, &qword_1EC7EA620, &qword_1D561D610);
  OUTLINED_FUNCTION_86_0();
  v14 = sub_1D5615618();
  if (v14)
  {
    v15 = v14;
    v16 = *(v12 + 128);
    OUTLINED_FUNCTION_113_12(v14);
    OUTLINED_FUNCTION_108_14();
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v17 = OUTLINED_FUNCTION_102_14();
      OUTLINED_FUNCTION_121_10();
      sub_1D53F746C(v18, v19, v20);
      v17(v12 + 16, 0);
      OUTLINED_FUNCTION_201();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_116_16();
      if (v22)
      {
        v23 = OUTLINED_FUNCTION_93_1(v21);
        sub_1D4F048BC(v23, v16, 1);
        v13 = a9;
      }

      OUTLINED_FUNCTION_52_33();
      sub_1D5615658();
      --v15;
    }

    while (v15);
    v24 = OUTLINED_FUNCTION_24_62();
    v25(v24);
    v26 = OUTLINED_FUNCTION_70();
    v27(v26);
    v28 = OUTLINED_FUNCTION_159();
    v29(v28);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_24_62();
    v31(v30);
    v32 = OUTLINED_FUNCTION_70();
    v33(v32);
    v34 = OUTLINED_FUNCTION_159();
    v35(v34);
    v13 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_27_65();
  *v36 = v13;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1D53ED8C4()
{
  OUTLINED_FUNCTION_160();
  v18 = v0;
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = *(v0 + 208);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76DC8);
  v4 = OUTLINED_FUNCTION_0_6();
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_110();
    v17 = v8;
    *v2 = 136446210;
    *(v0 + 72) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v10 = sub_1D5614DB8();
    sub_1D4E6835C(v10, v11, &v17);
    OUTLINED_FUNCTION_126_6();

    *(v2 + 1) = v1;
    OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v12, v13, "MusicRecentlySearchedRequest: Failed to fetch editorialItems with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_27_65();
  *v14 = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_22_1();

  return v15();
}

uint64_t sub_1D53EDA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_1D560D838();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s14TransientEntryVMa(0);
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(a2 + 16);
  v13 = (v5 + 8);
  while (1)
  {
    if (v12 == v11)
    {
      v15 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
      v16 = v27;
      v17 = 1;
      return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
    }

    sub_1D53F746C(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v10, _s14TransientEntryVMa);
    type metadata accessor for GenericMusicItem(0);
    sub_1D53F75E4(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    sub_1D560EC98();
    v14 = sub_1D560D528();
    (*v13)(v7, v4);
    if (v14)
    {
      break;
    }

    ++v11;
    sub_1D53F7258(v10, _s14TransientEntryVMa);
  }

  v18 = v27;
  sub_1D53F746C(v28, v27, type metadata accessor for GenericMusicItem);
  v19 = v10[*(v26 + 20)];
  v20 = *(_s15PersistentEntryVMa(0) + 24);
  v21 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v22 = *(v21 + 24);
  v23 = sub_1D560C328();
  (*(*(v23 - 8) + 16))(v18 + v22, &v10[v20], v23);
  sub_1D53F7258(v10, _s14TransientEntryVMa);
  *(v18 + *(v21 + 20)) = v19;
  v16 = v18;
  v17 = 0;
  v15 = v21;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t sub_1D53EDD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DC8, &qword_1D5660468);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DD0, &qword_1D5660488);
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DD8, &unk_1D5660490);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = _s14TransientEntryVMa(0);
  v4[26] = v7;
  v8 = *(v7 - 8);
  v4[27] = v8;
  v4[28] = *(v8 + 64);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53EDFDC, 0, 0);
}

uint64_t sub_1D53EDFDC()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 216);
    v43 = *(v0 + 208);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v41 = (v4 + 40) & ~v4;
    v42 = *(v3 + 72);
    v6 = &qword_1EC7EB710;
    while (1)
    {
      v7 = *(v0 + 240);
      OUTLINED_FUNCTION_5_123();
      sub_1D53F746C(v5, v7, v8);
      if (*(v7 + *(v43 + 20)))
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_118_14();
      v10 = OUTLINED_FUNCTION_101_13(v9, 0xEB00000000636973);

      if (v10)
      {
        goto LABEL_6;
      }

LABEL_16:
      OUTLINED_FUNCTION_10_104();
      sub_1D53F7258(v35, v36);
      v5 += v42;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    v44 = v5;
    v45 = v2;
    v11 = *(v0 + 232);
    v12 = *(v0 + 160);
    v13 = v6;
    v14 = *(v0 + 104);
    v15 = sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    OUTLINED_FUNCTION_5_123();
    v19 = OUTLINED_FUNCTION_159();
    sub_1D53F746C(v19, v20, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v14;
    v6 = v13;
    OUTLINED_FUNCTION_4_129();
    sub_1D53F74C8(v11, v23 + v41, v24);
    v25 = OUTLINED_FUNCTION_99();
    sub_1D4E69970(v25, v26, v13, &qword_1D561F440);
    LODWORD(v11) = __swift_getEnumTagSinglePayload(v12, 1, v15);

    v27 = *(v0 + 160);
    if (v11 == 1)
    {
      sub_1D4E50004(*(v0 + 160), v13, &qword_1D561F440);
    }

    else
    {
      sub_1D5615448();
      OUTLINED_FUNCTION_24_0();
      (*(v28 + 8))(v27, v15);
    }

    if (v22[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = sub_1D5615338();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v5 = v44;
    v32 = **(v0 + 88);

    if (v31 | v29)
    {
      v33 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    else
    {
      v33 = 0;
    }

    v2 = v45;
    v34 = *(v0 + 168);
    *(v0 + 48) = 1;
    *(v0 + 56) = v33;
    *(v0 + 64) = v32;
    swift_task_create();

    sub_1D4E50004(v34, v6, &qword_1D561F440);
    goto LABEL_16;
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615508();
  *(v0 + 248) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 256) = v37;
  *v37 = v38;
  v39 = OUTLINED_FUNCTION_47_41(v37);

  return MEMORY[0x1EEE6DAD8](v39);
}

uint64_t sub_1D53EE378()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53EE478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[22];
  OUTLINED_FUNCTION_37_9(v16, v17, v14[14]);
  if (v18)
  {
    v19 = v14[31];
    v51 = v14[18];
    v52 = v14[15];
    v20 = v14[10];
    (*(v14[24] + 8))(v14[25], v14[23]);
    *v20 = v19;

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_89();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v51, v52, a12, a13, a14);
  }

  else
  {
    v31 = v14[15];
    v30 = v14[16];
    sub_1D53F7014(v15, v31);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v30);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v14[15], &qword_1EC7F5DC8, &qword_1D5660468);
    }

    else
    {
      v33 = v14[19];
      OUTLINED_FUNCTION_11_105();
      sub_1D53F74C8(v34, v33, v35);
      OUTLINED_FUNCTION_74_27();
      v36 = OUTLINED_FUNCTION_128();
      sub_1D53F746C(v36, v37, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14[31];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_37_6();
        sub_1D4F01DF8();
        v40 = v49;
      }

      v41 = *(v40 + 16);
      if (v41 >= *(v40 + 24) >> 1)
      {
        sub_1D4F01DF8();
        v40 = v50;
      }

      v42 = v14[18];
      sub_1D53F7258(v14[19], type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      *(v40 + 16) = v41 + 1;
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_11_105();
      sub_1D53F74C8(v42, v43, v44);
      v14[31] = v40;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v14[32] = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_47_41(v45);
    OUTLINED_FUNCTION_89();

    return MEMORY[0x1EEE6DAD8](v47);
  }
}

uint64_t sub_1D53EE6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v22 = v12[15];
  (*(v12[24] + 8))(v12[25], v12[23]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_1D53EE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a1;
  v5[4] = a5;
  v8 = sub_1D560C328();
  v5[5] = v8;
  v5[6] = *(v8 - 8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v9 = swift_task_alloc();
  v5[8] = v9;
  v5[9] = type metadata accessor for GenericMusicItem(0);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[12] = v10;
  *v10 = v5;
  v10[1] = sub_1D53EE91C;

  return sub_1D53EED8C(v9, a5, a4);
}

uint64_t sub_1D53EE91C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53EEA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[8];
  if (__swift_getEnumTagSinglePayload(v13, 1, v12[9]) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EA608, &qword_1D561C510);
    type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
    OUTLINED_FUNCTION_33();
  }

  else
  {
    v18 = v12[10];
    v20 = v12[6];
    v19 = v12[7];
    v22 = v12[4];
    v21 = v12[5];
    v23 = v12[3];
    sub_1D53F74C8(v13, v12[11], type metadata accessor for GenericMusicItem);
    v24 = OUTLINED_FUNCTION_201();
    sub_1D53F74C8(v24, v25, type metadata accessor for GenericMusicItem);
    v26 = *(v22 + *(_s14TransientEntryVMa(0) + 20));
    v27 = _s15PersistentEntryVMa(0);
    (*(v20 + 16))(v19, v22 + *(v27 + 24), v21);
    sub_1D53F74C8(v18, v23, type metadata accessor for GenericMusicItem);
    v28 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
    *(v23 + *(v28 + 20)) = v26;
    (*(v20 + 32))(v23 + *(v28 + 24), v19, v21);
    v14 = v23;
    v15 = 0;
    v16 = 1;
    v17 = v28;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1D53EEBB0()
{
  OUTLINED_FUNCTION_160();
  v21 = v0;
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v1 = *(v0 + 104);
  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76DC8);
  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_142();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v11 = sub_1D5614DB8();
    v13 = sub_1D4E6835C(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "MusicRecentlySearchedRequest: Failed to fetch library item with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);

  OUTLINED_FUNCTION_22_1();

  return v18();
}

uint64_t sub_1D53EED8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for TVShow(0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for TVSeason(0);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for TVEpisode(0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v3[14] = swift_task_alloc();
  v4 = sub_1D5613838();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for Playlist.Folder(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v3[21] = swift_task_alloc();
  v5 = sub_1D5614898();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  v3[25] = swift_task_alloc();
  v6 = sub_1D560EEA8();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for MusicMovie(0);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  v3[32] = swift_task_alloc();
  v3[33] = type metadata accessor for Composer(0);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  v3[35] = swift_task_alloc();
  v7 = sub_1D5613EF8();
  v3[36] = v7;
  v3[37] = *(v7 - 8);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  v3[39] = swift_task_alloc();
  v8 = sub_1D5613AF8();
  v3[40] = v8;
  v3[41] = *(v8 - 8);
  v3[42] = swift_task_alloc();
  v9 = sub_1D560D9A8();
  v3[43] = v9;
  v3[44] = *(v9 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53EF3E8, 0, 0);
}

uint64_t sub_1D53EF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D560D808();
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v31 = v28[47];
    sub_1D560D5C8();
    v32 = sub_1D560D4C8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
    v34 = v28[47];
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v28[47], &unk_1EC7EBF20, &unk_1D561F530);
      sub_1D53F7164();
      v166 = swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_0_219();
      v163 = v28[8];
      v164 = v28[7];
      v165 = v28[5];

      OUTLINED_FUNCTION_55();
      goto LABEL_5;
    }

    sub_1D560D4B8();
    v30 = v44;
    OUTLINED_FUNCTION_24_0();
    (*(v45 + 8))(v34, v32);
  }

  v28[48] = v30;
  v46 = v28[45];
  v47 = v28[46];
  v48 = v28[43];
  v49 = v28[44];
  v50 = v28[3];
  v51 = type metadata accessor for GenericMusicItem(0);
  v28[49] = v51;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
  v55 = _s15PersistentEntryVMa(0);
  (*(v49 + 16))(v47, v50 + *(v55 + 20), v48);
  sub_1D560D908();
  sub_1D53F75E4(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
  OUTLINED_FUNCTION_97_1();
  LOBYTE(v47) = sub_1D5614D18();
  v56 = *(v49 + 8);
  v56(v46, v48);
  if (v47)
  {
    v57 = OUTLINED_FUNCTION_117_14();
    (v56)(v57);
    v28[50] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[51] = v58;
    *v58 = v59;
    v58[1] = sub_1D53F00D0;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F2EBC(v60, v61, v62, v63);
  }

  OUTLINED_FUNCTION_78_24();
  sub_1D560D938();
  v65 = OUTLINED_FUNCTION_46_37();
  v66 = OUTLINED_FUNCTION_97_1();
  (v56)(v66);
  if (v65)
  {
    v67 = OUTLINED_FUNCTION_91_18();
    (v56)(v67);
    v28[53] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[54] = v68;
    *v68 = v69;
    v68[1] = sub_1D53F03BC;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F32B4(v70, v71, v72, v73);
  }

  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_103_16();
  if (OUTLINED_FUNCTION_36_51(v75, qword_1EDD53C88))
  {
    v76 = OUTLINED_FUNCTION_91_18();
    (v56)(v76);
    v28[56] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[57] = v77;
    *v77 = v78;
    v77[1] = sub_1D53F06A8;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F36AC(v79, v80, v81, v82);
  }

  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_103_16();
  if (OUTLINED_FUNCTION_36_51(v84, qword_1EDD53D50))
  {
    v85 = OUTLINED_FUNCTION_117_14();
    (v56)(v85);
    v28[59] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[60] = v86;
    *v86 = v87;
    v86[1] = sub_1D53F09A4;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F3AD0(v88, v89, v90, v91);
  }

  OUTLINED_FUNCTION_78_24();
  sub_1D560D878();
  v93 = OUTLINED_FUNCTION_46_37();
  v94 = OUTLINED_FUNCTION_97_1();
  (v56)(v94);
  if (v93)
  {
    v95 = OUTLINED_FUNCTION_117_14();
    (v56)(v95);
    v28[62] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[63] = v96;
    *v96 = v97;
    v96[1] = sub_1D53F0CA0;
    OUTLINED_FUNCTION_67_33();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F3F88(v98, v99, v100, v101);
  }

  OUTLINED_FUNCTION_78_24();
  sub_1D560D968();
  v103 = OUTLINED_FUNCTION_46_37();
  v104 = OUTLINED_FUNCTION_97_1();
  (v56)(v104);
  if (v103)
  {
    v105 = OUTLINED_FUNCTION_91_18();
    (v56)(v105);
    v28[65] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[66] = v106;
    *v106 = v107;
    v106[1] = sub_1D53F0F8C;
    OUTLINED_FUNCTION_67_33();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F4380(v108, v109, v110, v111);
  }

  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_103_16();
  if (OUTLINED_FUNCTION_36_51(v113, qword_1EDD53CC8))
  {
    v114 = OUTLINED_FUNCTION_117_14();
    (v56)(v114);
    v28[68] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[69] = v115;
    *v115 = v116;
    v115[1] = sub_1D53F1278;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F4778(v117, v118, v119, v120);
  }

  OUTLINED_FUNCTION_78_24();
  sub_1D560D8E8();
  v122 = OUTLINED_FUNCTION_46_37();
  v123 = OUTLINED_FUNCTION_97_1();
  (v56)(v123);
  if (v122)
  {
    v124 = OUTLINED_FUNCTION_91_18();
    (v56)(v124);
    v28[71] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[72] = v125;
    *v125 = v126;
    v125[1] = sub_1D53F1574;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F4B9C(v127, v128, v129, v130);
  }

  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_103_16();
  if (OUTLINED_FUNCTION_36_51(v132, qword_1EDD53C40))
  {
    v133 = OUTLINED_FUNCTION_91_18();
    (v56)(v133);
    v28[74] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[75] = v134;
    *v134 = v135;
    v134[1] = sub_1D53F1860;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F4F94(v136, v137, v138, v139);
  }

  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_103_16();
  if (OUTLINED_FUNCTION_36_51(v141, qword_1EDD53C60))
  {
    v142 = OUTLINED_FUNCTION_91_18();
    (v56)(v142);
    v28[77] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[78] = v143;
    *v143 = v144;
    v143[1] = sub_1D53F1B5C;
    OUTLINED_FUNCTION_8_117();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F53B8(v145, v146, v147, v148);
  }

  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v150 = v28[46];
  v151 = v28[43];
  __swift_project_value_buffer(v151, qword_1EC7F5D98);
  v152 = sub_1D5614D18();
  v56(v150, v151);
  if (v152)
  {
    v28[80] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v28[81] = v153;
    *v153 = v154;
    v153[1] = sub_1D53F1E58;
    OUTLINED_FUNCTION_67_33();
    OUTLINED_FUNCTION_71_2();

    return sub_1D53F57DC(v155, v156, v157, v158);
  }

  sub_1D4E50004(v28[2], &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v51);
  a10 = v28[29];
  a11 = v28[28];
  a12 = v28[25];
  a13 = v28[24];
  a14 = v28[21];
  a15 = v28[20];
  a16 = v28[18];
  a17 = v28[17];
  a18 = v28[14];
  a19 = v28[13];
  a20 = v28[11];
  v163 = v28[10];
  v164 = v28[8];
  v165 = v28[7];
  v166 = v28[5];

  OUTLINED_FUNCTION_22_1();
LABEL_5:
  OUTLINED_FUNCTION_71_2();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v163, v164, v165, v166, a25, a26, a27, a28);
}

uint64_t sub_1D53F00D0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 416) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v28 = *(v26 + 312);
  OUTLINED_FUNCTION_16_4();
  if (v29)
  {
    sub_1D4E50004(v28, &qword_1EC7EEC30, &unk_1D5620CE0);
  }

  else
  {
    sub_1D4E50004(*(v26 + 16), &qword_1EC7EA608, &qword_1D561C510);
    v30 = OUTLINED_FUNCTION_28_2();
    v27(v30);
    v31 = OUTLINED_FUNCTION_59_29();
    v27(v31);
    OUTLINED_FUNCTION_99();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_58_34();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F03BC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v28 = *(v26 + 280);
  OUTLINED_FUNCTION_16_4();
  if (v29)
  {
    sub_1D4E50004(v28, &qword_1EC7EA8A8, &qword_1D561CF10);
  }

  else
  {
    sub_1D4E50004(*(v26 + 16), &qword_1EC7EA608, &qword_1D561C510);
    v30 = OUTLINED_FUNCTION_28_2();
    v27(v30);
    v31 = OUTLINED_FUNCTION_59_29();
    v27(v31);
    OUTLINED_FUNCTION_99();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_58_34();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F06A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 464) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F07E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[32];
  OUTLINED_FUNCTION_37_9(v28, v29, v26[33]);
  if (v30)
  {
    sub_1D4E50004(v27, &qword_1EC7EA8A0, &qword_1D5652B20);
  }

  else
  {
    v31 = v26[34];
    sub_1D4E50004(v26[2], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D53F74C8(v27, v31, type metadata accessor for Composer);
    v32 = OUTLINED_FUNCTION_70();
    sub_1D53F74C8(v32, v33, type metadata accessor for Composer);
    OUTLINED_FUNCTION_86_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_38();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v34);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F09A4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F0ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[29];
  OUTLINED_FUNCTION_37_9(v28, v29, v26[30]);
  if (v30)
  {
    sub_1D4E50004(v27, &qword_1EC7EA890, &qword_1D5672D40);
  }

  else
  {
    v31 = v26[31];
    sub_1D4E50004(v26[2], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D53F74C8(v27, v31, type metadata accessor for MusicMovie);
    v32 = OUTLINED_FUNCTION_70();
    sub_1D53F74C8(v32, v33, type metadata accessor for MusicMovie);
    OUTLINED_FUNCTION_86_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_38();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v34);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F0CA0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F0DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v28 = *(v26 + 200);
  OUTLINED_FUNCTION_16_4();
  if (v29)
  {
    sub_1D4E50004(v28, &qword_1EC7EA990, &qword_1D561D220);
  }

  else
  {
    sub_1D4E50004(*(v26 + 16), &qword_1EC7EA608, &qword_1D561C510);
    v30 = OUTLINED_FUNCTION_28_2();
    v27(v30);
    v31 = OUTLINED_FUNCTION_59_29();
    v27(v31);
    OUTLINED_FUNCTION_99();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_58_34();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F0F8C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F10C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v28 = *(v26 + 168);
  OUTLINED_FUNCTION_16_4();
  if (v29)
  {
    sub_1D4E50004(v28, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    sub_1D4E50004(*(v26 + 16), &qword_1EC7EA608, &qword_1D561C510);
    v30 = OUTLINED_FUNCTION_28_2();
    v27(v30);
    v31 = OUTLINED_FUNCTION_59_29();
    v27(v31);
    OUTLINED_FUNCTION_99();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_58_34();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F1278()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F13B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[18];
  OUTLINED_FUNCTION_37_9(v28, v29, v26[19]);
  if (v30)
  {
    sub_1D4E50004(v27, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    v31 = v26[20];
    sub_1D4E50004(v26[2], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D53F74C8(v27, v31, type metadata accessor for Playlist.Folder);
    v32 = OUTLINED_FUNCTION_70();
    sub_1D53F74C8(v32, v33, type metadata accessor for Playlist.Folder);
    OUTLINED_FUNCTION_86_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_38();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v34);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F1574()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F16AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v28 = *(v26 + 112);
  OUTLINED_FUNCTION_16_4();
  if (v29)
  {
    sub_1D4E50004(v28, &qword_1EC7EA978, &qword_1D5652B10);
  }

  else
  {
    sub_1D4E50004(*(v26 + 16), &qword_1EC7EA608, &qword_1D561C510);
    v30 = OUTLINED_FUNCTION_28_2();
    v27(v30);
    v31 = OUTLINED_FUNCTION_59_29();
    v27(v31);
    OUTLINED_FUNCTION_99();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_58_34();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v32);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F1860()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 608) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[11];
  OUTLINED_FUNCTION_37_9(v28, v29, v26[12]);
  if (v30)
  {
    sub_1D4E50004(v27, &qword_1EC7EA880, &unk_1D561CEE0);
  }

  else
  {
    v31 = v26[13];
    sub_1D4E50004(v26[2], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D53F74C8(v27, v31, type metadata accessor for TVEpisode);
    v32 = OUTLINED_FUNCTION_70();
    sub_1D53F74C8(v32, v33, type metadata accessor for TVEpisode);
    OUTLINED_FUNCTION_86_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_38();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v34);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F1B5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 632) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[8];
  OUTLINED_FUNCTION_37_9(v28, v29, v26[9]);
  if (v30)
  {
    sub_1D4E50004(v27, &qword_1EC7EA878, &unk_1D5634790);
  }

  else
  {
    v31 = v26[10];
    sub_1D4E50004(v26[2], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D53F74C8(v27, v31, type metadata accessor for TVSeason);
    v32 = OUTLINED_FUNCTION_70();
    sub_1D53F74C8(v32, v33, type metadata accessor for TVSeason);
    OUTLINED_FUNCTION_86_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_38();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v34);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F1E58()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 656) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F1F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[5];
  OUTLINED_FUNCTION_37_9(v28, v29, v26[6]);
  if (v30)
  {
    sub_1D4E50004(v27, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    v31 = v26[7];
    sub_1D4E50004(v26[2], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D53F74C8(v27, v31, type metadata accessor for TVShow);
    v32 = OUTLINED_FUNCTION_70();
    sub_1D53F74C8(v32, v33, type metadata accessor for TVShow);
    OUTLINED_FUNCTION_86_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_38();
  }

  OUTLINED_FUNCTION_0_219();
  OUTLINED_FUNCTION_26_70(v34);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D53F2154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 416));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 440));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F23C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 464));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F24FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 488));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F2634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 512));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 536));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F28A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 560));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 584));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F2B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 608));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 632));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  sub_1D4E50004(*(v28 + 16), &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_1_163(*(v28 + 656));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_71_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D53F2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8B8, &unk_1D561D100);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8C0, &unk_1D56606D0);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F305C, 0, 0);
}

uint64_t sub_1D53F305C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_18_80();
  sub_1D5613AF8();
  sub_1D560DD68();
  OUTLINED_FUNCTION_62_34();
  OUTLINED_FUNCTION_95_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_83(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_87(v1);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D53F3110()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F32B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8C8, &unk_1D56606E0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8D0, &unk_1D561D120);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F3454, 0, 0);
}

uint64_t sub_1D53F3454()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_18_80();
  sub_1D5613EF8();
  sub_1D560DD68();
  OUTLINED_FUNCTION_62_34();
  OUTLINED_FUNCTION_95_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_83(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_87(v1);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D53F3508()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8D8, &unk_1D561D130);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8E0, &qword_1D56606F0);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F384C, 0, 0);
}

uint64_t sub_1D53F384C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_17_79();
  type metadata accessor for Composer(v0);
  v1 = sub_1D53F75E4(&qword_1EC7EA8E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_77_20(v1);
  OUTLINED_FUNCTION_41_50();
  OUTLINED_FUNCTION_95_17();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_83(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_12_87(v3);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D53F392C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F3AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA900, &qword_1D561D160);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F3C70, 0, 0);
}

uint64_t sub_1D53F3C70()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_17_79();
  type metadata accessor for MusicMovie(v0);
  v1 = sub_1D53F75E4(&qword_1EC7EA908, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_77_20(v1);
  OUTLINED_FUNCTION_41_50();
  OUTLINED_FUNCTION_95_17();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_83(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_12_87(v3);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D53F3D50()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F3EF4()
{
  OUTLINED_FUNCTION_80();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D53F3F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA420, &unk_1D5653250);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DE8, &qword_1D56606F8);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DF0, &qword_1D5660700);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F4128, 0, 0);
}

uint64_t sub_1D53F4128()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_18_80();
  sub_1D560EEA8();
  sub_1D560DD68();
  OUTLINED_FUNCTION_62_34();
  OUTLINED_FUNCTION_95_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_83(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_87(v1);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D53F41DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F4380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F19B0, &unk_1D561D170);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F4520, 0, 0);
}

uint64_t sub_1D53F4520()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_18_80();
  sub_1D5614898();
  sub_1D560DD68();
  OUTLINED_FUNCTION_62_34();
  OUTLINED_FUNCTION_95_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_83(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_87(v1);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D53F45D4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08D8, &qword_1D563A180);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19D0, &qword_1D5642090);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F4918, 0, 0);
}

uint64_t sub_1D53F4918()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_17_79();
  type metadata accessor for Playlist.Folder(v0);
  v1 = sub_1D53F75E4(&qword_1EC7F0910, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_77_20(v1);
  OUTLINED_FUNCTION_41_50();
  OUTLINED_FUNCTION_95_17();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_83(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_12_87(v3);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D53F49F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE508, &unk_1D562B330);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F4D3C, 0, 0);
}

uint64_t sub_1D53F4D3C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_18_80();
  sub_1D5613838();
  sub_1D560DD68();
  OUTLINED_FUNCTION_62_34();
  OUTLINED_FUNCTION_95_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_83(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_87(v1);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D53F4DF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F4F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA918, &qword_1D561D188);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F5134, 0, 0);
}

uint64_t sub_1D53F5134()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_17_79();
  type metadata accessor for TVEpisode(v0);
  v1 = sub_1D53F75E4(&qword_1EC7EA920, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  OUTLINED_FUNCTION_77_20(v1);
  OUTLINED_FUNCTION_41_50();
  OUTLINED_FUNCTION_95_17();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_83(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_12_87(v3);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D53F5214()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F53B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA928, &qword_1D561D1A0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA930, &unk_1D561D1A8);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F5558, 0, 0);
}

uint64_t sub_1D53F5558()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_17_79();
  type metadata accessor for TVSeason(v0);
  v1 = sub_1D53F75E4(&qword_1EC7EA938, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_77_20(v1);
  OUTLINED_FUNCTION_41_50();
  OUTLINED_FUNCTION_95_17();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_83(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_12_87(v3);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D53F5638()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA940, &qword_1D561D1B8);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA948, &qword_1D561D1C0);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53F597C, 0, 0);
}

uint64_t sub_1D53F597C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_17_79();
  type metadata accessor for TVShow(v0);
  v1 = sub_1D53F75E4(&qword_1EC7EA950, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_77_20(v1);
  OUTLINED_FUNCTION_41_50();
  OUTLINED_FUNCTION_95_17();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_83(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_12_87(v3);
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D53F5A5C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53F5C00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {

      OUTLINED_FUNCTION_159();
      sub_1D4EFB2CC();
      v3 = v2;

      if (v3)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

void sub_1D53F5C5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_159();

    sub_1D4F0698C();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D53F5CB4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D56162F8();
  if (a1)
  {
    sub_1D4F0698C();
  }

  return sub_1D5616328();
}

uint64_t sub_1D53F5D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D560D0A8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D53F5D8C(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D4F0698C();
  }

  return sub_1D5616328();
}

uint64_t sub_1D53F5DEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C50, &unk_1D564AB80);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = sub_1D5615D68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560B998();
  if (qword_1EDD52598 != -1)
  {
    OUTLINED_FUNCTION_82_23(&qword_1EDD52598);
  }

  v12 = __swift_project_value_buffer(v7, qword_1EDD76770);
  (*(v8 + 16))(v10, v12, v7);
  sub_1D4E69970(a1, v6, &unk_1EC7F2C50, &unk_1D564AB80);
  sub_1D560DB08();
  v13 = OUTLINED_FUNCTION_126_6();
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    sub_1D4E50004(v6, &unk_1EC7F2C50, &unk_1D564AB80);
    v14 = sub_1D4F0E5A8();
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      *&v22 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB408, &qword_1D56607F0);
      sub_1D5615D78();
      v17 = v22;
      v18 = *(v8 + 8);
      v18(*(v22 + 48) + *(v8 + 72) * v16, v7);
      sub_1D4F15A74((*(v17 + 56) + 32 * v16), &v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E30, &qword_1D56607F8);
      sub_1D5615D98();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v18 = *(v8 + 8);
    }

    v18(v10, v7);
    sub_1D4E50004(&v23, &qword_1EC7F5E28, &qword_1D56607E8);
  }

  else
  {
    *(&v24 + 1) = v1;
    __swift_allocate_boxed_opaque_existential_0(&v23);
    OUTLINED_FUNCTION_24_0();
    (*(v19 + 32))();
    sub_1D4F15A74(&v23, &v22);
    swift_isUniquelyReferenced_nonNull_native();
    v21[1] = v11;
    sub_1D4F147FC();
    (*(v8 + 8))(v10, v7);
  }

  sub_1D560B9A8();
  return sub_1D4E50004(a1, &unk_1EC7F2C50, &unk_1D564AB80);
}

uint64_t sub_1D53F6140(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560D528() & 1) == 0)
  {
    return 0;
  }

  v3 = _s14TransientEntryVMa(0);
  return sub_1D4F3C87C(*(a1 + *(v3 + 20))) & 1;
}

uint64_t sub_1D53F61A4(uint64_t a1)
{
  v2 = v1;
  v90 = _s15PersistentEntryVMa(0);
  v94 = *(v90 - 8);
  v4 = MEMORY[0x1EEE9AC00](v90);
  v88 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v86 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v86 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v93 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v86 - v13;
  v15 = _s14TransientEntryVMa(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v97 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v86 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v91 = v1;
    v87 = v18;
    v23 = *(v18 + 20);
    v24 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v95 = *(v19 + 72);
    v96 = v23;
    v98 = MEMORY[0x1E69E7CC0];
    v25 = v24;
    v26 = v22;
    v92 = v14;
    while (1)
    {
      sub_1D53F746C(v25, v21, _s14TransientEntryVMa);
      if ((v21[v96] & 1) == 0)
      {
        break;
      }

      v27 = sub_1D5616168();

      if (v27)
      {
        goto LABEL_7;
      }

      sub_1D53F7258(v21, _s14TransientEntryVMa);
LABEL_12:
      v25 += v95;
      if (!--v26)
      {
        v34 = *(v87 + 20);
        v96 = MEMORY[0x1E69E7CC0];
        v2 = v91;
        while (1)
        {
          v35 = v97;
          sub_1D53F746C(v24, v97, _s14TransientEntryVMa);
          if (*(v35 + v34) == 1)
          {
            break;
          }

          v36 = sub_1D5616168();

          if (v36)
          {
            goto LABEL_18;
          }

          sub_1D53F7258(v97, _s14TransientEntryVMa);
LABEL_24:
          v24 += v95;
          if (!--v22)
          {
            goto LABEL_28;
          }
        }

LABEL_18:
        sub_1D53F74C8(v97, v93, _s15PersistentEntryVMa);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v96;
        }

        else
        {
          sub_1D4F01ED0();
          v37 = v40;
        }

        v38 = *(v37 + 16);
        if (v38 >= *(v37 + 24) >> 1)
        {
          sub_1D4F01ED0();
          v37 = v41;
        }

        *(v37 + 16) = v38 + 1;
        v39 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v96 = v37;
        sub_1D53F74C8(v93, v37 + v39 + *(v94 + 72) * v38, _s15PersistentEntryVMa);
        goto LABEL_24;
      }
    }

LABEL_7:
    sub_1D53F74C8(v21, v14, _s15PersistentEntryVMa);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = v98;
    }

    else
    {
      sub_1D4F01ED0();
      v28 = v32;
    }

    v29 = *(v28 + 16);
    if (v29 >= *(v28 + 24) >> 1)
    {
      sub_1D4F01ED0();
      v28 = v33;
    }

    *(v28 + 16) = v29 + 1;
    v30 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v98 = v28;
    v31 = v28 + v30 + *(v94 + 72) * v29;
    v14 = v92;
    sub_1D53F74C8(v92, v31, _s15PersistentEntryVMa);
    goto LABEL_12;
  }

  v98 = MEMORY[0x1E69E7CC0];
  v96 = MEMORY[0x1E69E7CC0];
LABEL_28:
  sub_1D53E8BA0(&v99);
  if (!v100)
  {
    sub_1D4E50004(&v99, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E18, &qword_1D56607D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v42 = sub_1D5614BD8();
    goto LABEL_33;
  }

  v42 = v101;
LABEL_33:
  sub_1D560B9F8();
  swift_allocObject();
  v91 = sub_1D560B9E8();
  v43 = 0;
  for (i = 0; ; i = 1u)
  {
    LODWORD(v93) = v43;
    v45 = *(&unk_1F50A3878 + i + 32);
    v46 = *(&unk_1F50A3878 + i + 32) ? 0x7972617262694CLL : 0x754D2E656C707041;
    v95 = v46;
    v47 = 0xE700000000000000;
    if (!v45)
    {
      v47 = 0xEB00000000636973;
    }

    v97 = v47;
    if (v45)
    {
      v48 = sub_1D5616168();

      if ((v48 & 1) == 0)
      {
        v49 = v96;
        v50 = *(v96 + 16);
        v51 = sub_1D53F75E4(&qword_1EDD5AFE0, _s15PersistentEntryVMa, &unk_1D5668C78);
        v52 = MEMORY[0x1DA6EB390](v50, v90, v51);
        *&v99 = v52;
        v53 = *(v49 + 16);
        if (v53)
        {
          v54 = v49 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
          v55 = *(v94 + 72);
          v56 = v88;
          do
          {
            sub_1D53F746C(v54, v56, _s15PersistentEntryVMa);
            sub_1D52C8BFC();
            sub_1D53F7258(v8, _s15PersistentEntryVMa);
            v54 += v55;
            --v53;
          }

          while (v53);
LABEL_49:
          v64 = v99;
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    else
    {
    }

    v57 = v98;
    v58 = *(v98 + 16);
    v59 = sub_1D53F75E4(&qword_1EDD5AFE0, _s15PersistentEntryVMa, &unk_1D5668C78);
    v52 = MEMORY[0x1DA6EB390](v58, v90, v59);
    *&v99 = v52;
    v60 = *(v57 + 16);
    if (v60)
    {
      v61 = v57 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v62 = *(v94 + 72);
      v63 = v89;
      do
      {
        sub_1D53F746C(v61, v63, _s15PersistentEntryVMa);
        sub_1D52C8BFC();
        sub_1D53F7258(v8, _s15PersistentEntryVMa);
        v61 += v62;
        --v60;
      }

      while (v60);
      goto LABEL_49;
    }

LABEL_50:
    v64 = v52;
LABEL_51:
    *&v99 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E20, &qword_1D56607E0);
    sub_1D53F7548(&qword_1EDD52718, &qword_1EDD5AFE8, &unk_1D5668C50, MEMORY[0x1E69E64F0]);
    v65 = sub_1D560B9D8();
    if (v2)
    {
    }

    v67 = v65;
    v68 = v66;

    v92 = v68;
    sub_1D4F48DE4(v67, v68);
    swift_isUniquelyReferenced_nonNull_native();
    *&v99 = v42;
    v69 = sub_1D4E4EFA0(v95, v97);
    if (__OFADD__(v42[2], (v70 & 1) == 0))
    {
      break;
    }

    v71 = v69;
    v72 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E40, &qword_1D5660810);
    if (sub_1D5615D78())
    {
      v73 = sub_1D4E4EFA0(v95, v97);
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_65;
      }

      v71 = v73;
    }

    v2 = 0;
    v42 = v99;
    if (v72)
    {
      v75 = (*(v99 + 56) + 16 * v71);
      v76 = *v75;
      v77 = v75[1];
      v78 = v92;
      *v75 = v67;
      v75[1] = v78;
      sub_1D4E55E1C(v76, v77);
    }

    else
    {
      *(v99 + 8 * (v71 >> 6) + 64) |= 1 << v71;
      v79 = (v42[6] + 16 * v71);
      v80 = v97;
      *v79 = v95;
      v79[1] = v80;
      v81 = (v42[7] + 16 * v71);
      v78 = v92;
      *v81 = v67;
      v81[1] = v78;
      v82 = v42[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_64;
      }

      v42[2] = v84;
    }

    sub_1D4E55E1C(v67, v78);
    v43 = 1;
    if (v93)
    {

      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E18, &qword_1D56607D8);
      *&v99 = v42;
      sub_1D5169FC4(&v99);
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D53F6C20()
{
  v0 = sub_1D5615D68();
  __swift_allocate_value_buffer(v0, qword_1EDD76770);
  __swift_project_value_buffer(v0, qword_1EDD76770);
  return sub_1D5615D58();
}

uint64_t sub_1D53F6C84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D5616388();
  if (qword_1EDD52598 != -1)
  {
    OUTLINED_FUNCTION_82_23(&qword_1EDD52598);
  }

  v3 = sub_1D5615D68();
  v4 = __swift_project_value_buffer(v3, qword_1EDD76770);
  sub_1D4ED09CC(v4, v2);

  if (v11[3])
  {
    v5 = sub_1D560DB08();
    v6 = swift_dynamicCast() ^ 1;
    v7 = a1;
    v8 = 1;
    v9 = v5;
  }

  else
  {
    sub_1D4E50004(v11, &qword_1EC7E9F98, &qword_1D561C420);
    sub_1D560DB08();
    v7 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v7, v6, v8, v9);
}

uint64_t sub_1D53F6D6C(uint64_t *a1)
{
  v2 = *(_s14TransientEntryVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD70(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1D53F762C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1D53F6E14()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_8(v3);

  return sub_1D53EA354(v5, v6, v1);
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_1D53F6EE8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_8(v3);

  return sub_1D53EB844(v5, v6, v1);
}

uint64_t sub_1D53F6F7C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_132_10(v3);

  return sub_1D53EDD7C(v5, v6, v7, v1);
}

uint64_t sub_1D53F7014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5DC8, &qword_1D5660468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53F7084()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v0 = _s14TransientEntryVMa(0);
  OUTLINED_FUNCTION_22(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_376();

  return sub_1D53EE798(v4, v5, v6, v7, v8);
}

unint64_t sub_1D53F7164()
{
  result = qword_1EC7F5DE0;
  if (!qword_1EC7F5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5DE0);
  }

  return result;
}

uint64_t sub_1D53F71B8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_10(v1);
  OUTLINED_FUNCTION_153_1();

  return sub_1D53EBE5C(v3, v4, v5, v6, v7);
}

uint64_t sub_1D53F7258(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D53F72B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_8(v3);

  return sub_1D53EC528(v5, v6, v1, v0);
}

uint64_t sub_1D53F7344()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_8(v3);

  return sub_1D53ECB08(v5, v6, v1, v0);
}

uint64_t sub_1D53F73D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_8(v3);

  return sub_1D53ED2BC(v5, v6, v1, v0);
}

uint64_t sub_1D53F746C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D53F74C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D53F7548(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5E20, &qword_1D56607E0);
    sub_1D53F75E4(a2, _s15PersistentEntryVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D53F75E4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D53F762C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D56160E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s14TransientEntryVMa(0);
        v6 = sub_1D56151D8();
        *(v6 + 16) = v5;
      }

      v7 = *(_s14TransientEntryVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D53F79B0(v8, v9, a1, v4);
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
    return sub_1D53F775C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D53F775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = _s14TransientEntryVMa(0);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v23;
      v30 = v22;
      do
      {
        sub_1D53F746C(v23, v17, _s14TransientEntryVMa);
        sub_1D53F746C(v20, v13, _s14TransientEntryVMa);
        _s15PersistentEntryVMa(0);
        v24 = sub_1D560C2D8();
        sub_1D53F7258(v13, _s14TransientEntryVMa);
        result = sub_1D53F7258(v17, _s14TransientEntryVMa);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return result;
        }

        sub_1D53F74C8(v23, v10, _s14TransientEntryVMa);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D53F74C8(v10, v20, _s14TransientEntryVMa);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D53F79B0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v119 = _s14TransientEntryVMa(0);
  v113 = *(v119 - 8);
  v6 = MEMORY[0x1EEE9AC00](v119);
  v109 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v103 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v103 - v13;
  v115 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v19 = *v106;
    if (!*v106)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v95 = (v17 + 16);
      for (i = *(v17 + 16); i >= 2; *v95 = i)
      {
        if (!*v115)
        {
          goto LABEL_136;
        }

        v97 = (v17 + 16 * i);
        v98 = *v97;
        v99 = &v95[2 * i];
        v100 = *(v99 + 1);
        v101 = v116;
        sub_1D53F82B0(*v115 + *(v113 + 72) * *v97, *v115 + *(v113 + 72) * *v99, *v115 + *(v113 + 72) * v100, v19);
        v116 = v101;
        if (v101)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_124;
        }

        if (i - 2 >= *v95)
        {
          goto LABEL_125;
        }

        *v97 = v98;
        v97[1] = v100;
        v102 = *v95 - i;
        if (*v95 < i)
        {
          goto LABEL_126;
        }

        i = *v95 - 1;
        sub_1D5530CB4(v99 + 16, v102, v99);
      }

LABEL_97:

      return;
    }

LABEL_133:
    v17 = sub_1D5530B8C(v17);
    goto LABEL_101;
  }

  v104 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v110 = &v103 - v13;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v20 = *v115;
      v21 = *(v113 + 72);
      v117 = v16 + 1;
      v22 = v20 + v21 * v19;
      v112 = v15;
      sub_1D53F746C(v22, v14, _s14TransientEntryVMa);
      sub_1D53F746C(v20 + v21 * v18, v12, _s14TransientEntryVMa);
      v111 = _s15PersistentEntryVMa(0);
      v23 = sub_1D560C2D8();
      sub_1D53F7258(v12, _s14TransientEntryVMa);
      sub_1D53F7258(v14, _s14TransientEntryVMa);
      v24 = v112;
      v105 = v18;
      v25 = v18 + 2;
      v114 = v21;
      v26 = v20 + v21 * (v18 + 2);
      while (1)
      {
        v27 = v25;
        if (++v117 >= v24)
        {
          break;
        }

        sub_1D53F746C(v26, v14, _s14TransientEntryVMa);
        sub_1D53F746C(v22, v12, _s14TransientEntryVMa);
        v28 = sub_1D560C2D8() & 1;
        sub_1D53F7258(v12, _s14TransientEntryVMa);
        sub_1D53F7258(v14, _s14TransientEntryVMa);
        v26 += v114;
        v22 += v114;
        v25 = v27 + 1;
        v24 = v112;
        if ((v23 & 1) != v28)
        {
          if ((v23 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_10;
        }
      }

      v117 = v24;
      if ((v23 & 1) == 0)
      {
LABEL_29:
        v19 = v117;
        v18 = v105;
        goto LABEL_30;
      }

LABEL_10:
      v19 = v117;
      v18 = v105;
      if (v117 < v105)
      {
        goto LABEL_130;
      }

      if (v105 < v117)
      {
        v103 = v17;
        if (v24 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v24;
        }

        v30 = v114 * (v29 - 1);
        v31 = v117;
        v32 = v114 * v29;
        v33 = v105;
        v34 = v105 * v114;
        do
        {
          if (v33 != --v31)
          {
            v35 = *v115;
            if (!*v115)
            {
              goto LABEL_137;
            }

            sub_1D53F74C8(v35 + v34, v109, _s14TransientEntryVMa);
            v36 = v34 < v30 || v35 + v34 >= v35 + v32;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D53F74C8(v109, v35 + v30, _s14TransientEntryVMa);
          }

          ++v33;
          v30 -= v114;
          v32 -= v114;
          v34 += v114;
        }

        while (v33 < v31);
        v17 = v103;
        goto LABEL_29;
      }
    }

LABEL_30:
    v37 = v115[1];
    if (v19 < v37)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_129;
      }

      if (v19 - v18 < v104)
      {
        break;
      }
    }

LABEL_46:
    if (v19 < v18)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D4F01D2C(0, *(v17 + 16) + 1, 1, v17);
      v17 = v93;
    }

    v19 = *(v17 + 16);
    v49 = *(v17 + 24);
    v50 = v19 + 1;
    if (v19 >= v49 >> 1)
    {
      sub_1D4F01D2C(v49 > 1, v19 + 1, 1, v17);
      v17 = v94;
    }

    *(v17 + 16) = v50;
    v51 = v17 + 32;
    v52 = (v17 + 32 + 16 * v19);
    v53 = v117;
    *v52 = v18;
    v52[1] = v53;
    v114 = *v106;
    if (!v114)
    {
      goto LABEL_138;
    }

    if (v19)
    {
      while (1)
      {
        v54 = v50 - 1;
        v55 = (v51 + 16 * (v50 - 1));
        v56 = (v17 + 16 * v50);
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v17 + 32);
          v58 = *(v17 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_66:
          if (v60)
          {
            goto LABEL_115;
          }

          v72 = *v56;
          v71 = v56[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_118;
          }

          v76 = v55[1];
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_123;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v50 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v50 < 2)
        {
          goto LABEL_117;
        }

        v79 = *v56;
        v78 = v56[1];
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_81:
        if (v75)
        {
          goto LABEL_120;
        }

        v81 = *v55;
        v80 = v55[1];
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v82 < v74)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v54 - 1 >= v50)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_132;
        }

        if (!*v115)
        {
          goto LABEL_135;
        }

        v86 = v12;
        v87 = v17;
        v88 = (v51 + 16 * (v54 - 1));
        v89 = *v88;
        v90 = v54;
        v19 = v51 + 16 * v54;
        v17 = *(v19 + 8);
        v91 = v116;
        sub_1D53F82B0(*v115 + *(v113 + 72) * *v88, *v115 + *(v113 + 72) * *v19, *v115 + *(v113 + 72) * v17, v114);
        v116 = v91;
        if (v91)
        {
          goto LABEL_97;
        }

        if (v17 < v89)
        {
          goto LABEL_110;
        }

        v92 = *(v87 + 16);
        if (v90 > v92)
        {
          goto LABEL_111;
        }

        *v88 = v89;
        v88[1] = v17;
        if (v90 >= v92)
        {
          goto LABEL_112;
        }

        v50 = v92 - 1;
        sub_1D5530CB4((v19 + 16), v92 - 1 - v90, v19);
        v17 = v87;
        *(v87 + 16) = v92 - 1;
        v12 = v86;
        v14 = v110;
        if (v92 <= 2)
        {
          goto LABEL_95;
        }
      }

      v61 = v51 + 16 * v50;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_113;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v68 = v56[1];
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_116;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_119;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = v55[1];
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_127;
        }

        if (v59 < v85)
        {
          v54 = v50 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v15 = v115[1];
    v16 = v117;
    if (v117 >= v15)
    {
      goto LABEL_99;
    }
  }

  v38 = v18 + v104;
  if (__OFADD__(v18, v104))
  {
    goto LABEL_131;
  }

  if (v38 >= v37)
  {
    v38 = v115[1];
  }

  if (v38 < v18)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v19 == v38)
  {
    goto LABEL_46;
  }

  v103 = v17;
  v39 = *v115;
  v40 = *(v113 + 72);
  v41 = *v115 + v40 * (v19 - 1);
  v42 = -v40;
  v105 = v18;
  v43 = v18 - v19;
  v107 = v40;
  v108 = v38;
  v44 = v39 + v19 * v40;
LABEL_39:
  v117 = v19;
  v111 = v44;
  v112 = v43;
  v45 = v44;
  v114 = v41;
  while (1)
  {
    sub_1D53F746C(v45, v14, _s14TransientEntryVMa);
    sub_1D53F746C(v41, v12, _s14TransientEntryVMa);
    _s15PersistentEntryVMa(0);
    v46 = sub_1D560C2D8();
    sub_1D53F7258(v12, _s14TransientEntryVMa);
    sub_1D53F7258(v14, _s14TransientEntryVMa);
    if ((v46 & 1) == 0)
    {
LABEL_44:
      v19 = v117 + 1;
      v41 = v114 + v107;
      v43 = v112 - 1;
      v44 = v111 + v107;
      if (v117 + 1 == v108)
      {
        v19 = v108;
        v17 = v103;
        v18 = v105;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v39)
    {
      break;
    }

    v47 = v118;
    sub_1D53F74C8(v45, v118, _s14TransientEntryVMa);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D53F74C8(v47, v41, _s14TransientEntryVMa);
    v41 += v42;
    v45 += v42;
    v36 = __CFADD__(v43++, 1);
    if (v36)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_1D53F82B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = _s14TransientEntryVMa(0);
  v8 = MEMORY[0x1EEE9AC00](v55);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v59 = a1;
  v58 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    v53 = a1;
    sub_1D4F0376C(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v51 = v30;
LABEL_36:
    v54 = a2;
    v32 = a2 + v30;
    v33 = a3;
    v49 = v31;
    v34 = v53;
    v52 = a2 + v30;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = v54;
        v57 = v31;
        goto LABEL_58;
      }

      if (v54 <= v34)
      {
        break;
      }

      v50 = v31;
      v35 = a4;
      v36 = v33 + v30;
      v37 = v29 + v30;
      v38 = v29;
      sub_1D53F746C(v29 + v30, v12, _s14TransientEntryVMa);
      v39 = v12;
      v40 = v56;
      sub_1D53F746C(v32, v56, _s14TransientEntryVMa);
      _s15PersistentEntryVMa(0);
      v41 = sub_1D560C2D8();
      v42 = v40;
      v12 = v39;
      sub_1D53F7258(v42, _s14TransientEntryVMa);
      sub_1D53F7258(v39, _s14TransientEntryVMa);
      if (v41)
      {
        v44 = v33 < v54 || v36 >= v54;
        a4 = v35;
        if (v44)
        {
          v45 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          v30 = v51;
          a3 = v36;
          a2 = v45;
          v29 = v38;
        }

        else
        {
          v30 = v51;
          v31 = v50;
          v46 = v52;
          a3 = v36;
          a2 = v52;
          v29 = v38;
          if (v33 != v54)
          {
            v47 = v50;
            swift_arrayInitWithTakeBackToFront();
            v29 = v38;
            a2 = v46;
            v31 = v47;
          }
        }

        goto LABEL_36;
      }

      v43 = v33 < v38 || v36 >= v38;
      a4 = v35;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v36;
        v29 = v37;
        v31 = v37;
        v30 = v51;
        v32 = v52;
        v34 = v53;
      }

      else
      {
        v31 = v37;
        v16 = v38 == v33;
        v33 = v36;
        v29 = v37;
        v30 = v51;
        v32 = v52;
        v34 = v53;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v36;
          v29 = v37;
          v31 = v37;
        }
      }
    }

    v59 = v54;
    v57 = v49;
  }

  else
  {
    sub_1D4F0376C(a1, v15 / v14, a4);
    v54 = a4 + v19 * v14;
    v57 = v54;
    while (a4 < v54 && a2 < a3)
    {
      v22 = a3;
      sub_1D53F746C(a2, v12, _s14TransientEntryVMa);
      v23 = a2;
      v24 = v56;
      sub_1D53F746C(a4, v56, _s14TransientEntryVMa);
      _s15PersistentEntryVMa(0);
      v25 = sub_1D560C2D8();
      sub_1D53F7258(v24, _s14TransientEntryVMa);
      sub_1D53F7258(v12, _s14TransientEntryVMa);
      if (v25)
      {
        a2 = v23 + v14;
        v26 = a1 < v23 || a1 >= a2;
        v27 = v23;
        if (v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
          a3 = v22;
        }

        else
        {
          a2 = v23;
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v59 = a1;
    }
  }

LABEL_58:
  sub_1D5530BB8(&v59, &v58, &v57);
  return 1;
}

_BYTE *storeEnumTagSinglePayload for MusicRecentlySearchedRequest.MusicRecentlySearchedRequestError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D53F8834()
{
  result = qword_1EC7F5E48;
  if (!qword_1EC7F5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5E48);
  }

  return result;
}

unint64_t sub_1D53F88D0()
{
  result = qword_1EC7F5E60;
  if (!qword_1EC7F5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5E60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_37()
{

  return sub_1D5614D18();
}

double OUTLINED_FUNCTION_108_14()
{

  sub_1D5615608();
  return result;
}

uint64_t OUTLINED_FUNCTION_109_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_111_13()
{

  return sub_1D53E83D8(v1, v0, v2);
}

void OUTLINED_FUNCTION_113_12(uint64_t a1)
{

  sub_1D4F048BC(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_125_14()
{

  return sub_1D560E448();
}

uint64_t sub_1D53F8B1C(uint64_t a1)
{
  v3 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v4 = OUTLINED_FUNCTION_69(v3);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v39 = v7 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE68, &unk_1D5621200);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v33 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D4F03E0C(0, v13, 0);
  v14 = v45;
  result = sub_1D53FF398(a1);
  v18 = result;
  v19 = 0;
  v44 = a1 + 56;
  v36 = v9 + 32;
  v37 = v9;
  v34 = a1 + 64;
  v35 = v13;
  v41 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v18 < 1 << *(a1 + 32))
    {
      v20 = v18 >> 6;
      if ((*(v44 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v16)
      {
        goto LABEL_27;
      }

      v43 = v17;
      v42 = v16;
      sub_1D53FA960(*(a1 + 48) + *(v40 + 72) * v18, v39);
      sub_1D542ACA8(MEMORY[0x1E69E7CC0], v12);
      v21 = v14;
      sub_1D53FA6A4();
      v45 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D4F03E0C(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v14 = v21;
      result = (*(v37 + 32))(v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23, v12, v38);
      if (v43)
      {
        goto LABEL_31;
      }

      a1 = v41;
      v24 = 1 << *(v41 + 32);
      if (v18 >= v24)
      {
        goto LABEL_28;
      }

      v25 = *(v44 + 8 * v20);
      if ((v25 & (1 << v18)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v41 + 36) != v42)
      {
        goto LABEL_30;
      }

      v26 = v25 & (-2 << (v18 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v27 = v35;
      }

      else
      {
        v28 = v20 << 6;
        v29 = v20 + 1;
        v30 = (v34 + 8 * v20);
        v27 = v35;
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1D4ECC79C(v18, v42, 0);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_1D4ECC79C(v18, v42, 0);
LABEL_19:
        a1 = v41;
      }

      if (++v19 == v27)
      {
        return v14;
      }

      v17 = 0;
      v16 = *(a1 + 36);
      v18 = v24;
      if (v24 < 0)
      {
        break;
      }
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D53F8EC8(uint64_t a1)
{
  v3 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D5613D28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v38 = v8;
  v31 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D4F0498C(0, v9, 0);
  v10 = v45;
  result = sub_1D53FF398(a1);
  v14 = result;
  v15 = 0;
  v44 = a1 + 56;
  v37 = *MEMORY[0x1E6976E18];
  v39 = v6;
  v35 = v6 + 32;
  v36 = (v6 + 104);
  v32 = a1 + 64;
  v33 = v9;
  v34 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v14 < 1 << *(a1 + 32))
    {
      v16 = v14 >> 6;
      if ((*(v44 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_25;
      }

      v43 = v13;
      v42 = v12;
      v17 = v40;
      sub_1D53FA960(*(a1 + 48) + *(v41 + 72) * v14, v40);
      v18 = sub_1D5613838();
      v19 = v38;
      (*(*(v18 - 8) + 16))(v38, v17, v18);
      (*v36)(v19, v37, v5);
      sub_1D53FA6A4();
      v45 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D4F0498C(v20 > 1, v21 + 1, 1);
        v10 = v45;
      }

      *(v10 + 16) = v21 + 1;
      v22 = v5;
      result = (*(v39 + 32))(v10 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v21, v19, v5);
      if (v43)
      {
        goto LABEL_29;
      }

      a1 = v34;
      v23 = 1 << *(v34 + 32);
      if (v14 >= v23)
      {
        goto LABEL_26;
      }

      v24 = *(v44 + 8 * v16);
      if ((v24 & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v34 + 36) != v42)
      {
        goto LABEL_28;
      }

      v25 = v24 & (-2 << (v14 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1D4ECC79C(v14, v42, 0);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1D4ECC79C(v14, v42, 0);
      }

LABEL_19:
      if (++v15 == v33)
      {
        return v10;
      }

      v13 = 0;
      v12 = *(a1 + 36);
      v14 = v23;
      v5 = v22;
      if (v14 < 0)
      {
        break;
      }
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
LABEL_29:
  __break(1u);
  return result;
}

void sub_1D53F92F0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(a1 + 48);
    v15 = type metadata accessor for MusicSuggestedSongsEntry(0);
    sub_1D53FA960(v14 + *(*(v15 - 8) + 72) * v13, v5);
    *&v5[*(v17 + 48)] = *(*(a1 + 56) + 8 * v13);

    sub_1D4F6AFEC();
    sub_1D4E50004(v5, &qword_1EC7EBD20, &unk_1D5660BA0);
    if (v2)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D53F94A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  if (a1 < 2)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  sub_1D56123A8();
  v17 = sub_1D560CD98();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v17);
  sub_1D5613838();
  v18 = sub_1D560CD48();
  sub_1D53FAAFC(&qword_1EC7ECE40, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BC0]);
  sub_1D5612368();
  sub_1D4E50004(v9, &qword_1EC7EA7D8, &unk_1D561E8B0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  sub_1D514D2FC(v12, a4);

  (*(*(v18 - 8) + 8))(a2, v18);
  return (*(v14 + 8))(v16, v13);
}

uint64_t MusicSuggestedSongsRequest.init<A>(tracks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  *a3 = 0;
  *(a3 + 8) = 1;
  v10 = type metadata accessor for MusicSuggestedSongsRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a3 + *(v10 + 24)) = 0;
  (*(v6 + 16))(v9, a1, a2);
  sub_1D5613D28();
  v11 = sub_1D5615318();
  (*(v6 + 8))(a1, a2);
  *(a3 + *(v10 + 28)) = v11;
  type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  OUTLINED_FUNCTION_33();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t MusicSuggestedSongsRequest.init<A>(entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 1;
  v7 = type metadata accessor for MusicSuggestedSongsRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a4 + *(v7 + 24)) = 0;
  sub_1D5613D28();
  v8 = sub_1D5615028();
  (*(*(a2 - 8) + 8))(a1, a2);
  *(a4 + *(v7 + 28)) = v8;
  type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  OUTLINED_FUNCTION_33();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1D53F9A28@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_1D56147B8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  sub_1D56147E8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E50004(v4, &qword_1EC7EED08, &qword_1D562E660);
    v12 = sub_1D5613D28();
    v13 = a1;
    v14 = 1;
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v11, v4, v5);
    v15(v9, v11, v5);
    v16 = (*(v6 + 88))(v9, v5);
    if (v16 == *MEMORY[0x1E69772B0])
    {
      (*(v6 + 96))(v9, v5);
      v17 = sub_1D560EEA8();
      (*(*(v17 - 8) + 32))(a1, v9, v17);
      v18 = MEMORY[0x1E6976DF8];
    }

    else
    {
      if (v16 != *MEMORY[0x1E69772B8])
      {
        v23 = sub_1D5613D28();
        __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
        return (*(v6 + 8))(v9, v5);
      }

      (*(v6 + 96))(v9, v5);
      v19 = sub_1D5613838();
      (*(*(v19 - 8) + 32))(a1, v9, v19);
      v18 = MEMORY[0x1E6976E18];
    }

    v20 = *v18;
    v21 = sub_1D5613D28();
    (*(*(v21 - 8) + 104))(a1, v20, v21);
    v13 = a1;
    v14 = 0;
    v12 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

uint64_t MusicSuggestedSongsRequest.init(seed:offeredEntries:selectedEntries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  OUTLINED_FUNCTION_4();
  v43 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - v13;
  v14 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  *a4 = 0;
  *(a4 + 8) = 1;
  v25 = type metadata accessor for MusicSuggestedSongsRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a4 + v25[6]) = 0;
  sub_1D53FA960(a1, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_109();
    *(a4 + v25[7]) = *(v24 + 16);
    v26 = a4 + v25[8];
    *v26 = *v24;
    v27 = v46;
    *(v26 + 16) = v45;
    *(v26 + 24) = v27;
    v28 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v29 = *(v16 + 32);
    v42 = v14;
    v29(v20, v24, v14);
    sub_1D5614838();
    OUTLINED_FUNCTION_57(v9, 1, v10);
    if (v30)
    {
      sub_1D5613D28();
      sub_1D560D9F8();
      OUTLINED_FUNCTION_57(v9, 1, v10);
      if (!v30)
      {
        sub_1D4E50004(v9, &qword_1EC7EC458, &unk_1D5620CD0);
      }
    }

    else
    {
      (*(v43 + 32))(v44, v9, v10);
    }

    sub_1D4E62A60(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470, MEMORY[0x1E6975008]);
    v31 = sub_1D5614FB8();
    OUTLINED_FUNCTION_9_109();
    *(a4 + v25[7]) = v31;
    v32 = a4 + v25[8];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v29(v32, v20, v42);
    v36 = v46;
    *(v32 + v34) = v45;
    *(v32 + v35) = v36;
    v28 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
    OUTLINED_FUNCTION_71();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_64_0();
  return __swift_storeEnumTagSinglePayload(v37, v38, v39, v28);
}

uint64_t MusicSuggestedSongsRequest.init(playbackQueueEntries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = type metadata accessor for MusicSuggestedSongsRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a2 + v4[6]) = 0;
  *(a2 + v4[7]) = sub_1D53F8EC8(a1);
  *(a2 + v4[8]) = a1;
  v5 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_64_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
}

uint64_t MusicSuggestedSongsRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MusicSuggestedSongsRequest._configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicSuggestedSongsRequest(0) + 20);
  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicSuggestedSongsRequest._configuration.setter()
{
  v2 = OUTLINED_FUNCTION_64_1();
  v3 = *(type metadata accessor for MusicSuggestedSongsRequest(v2) + 20);
  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*MusicSuggestedSongsRequest._configuration.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicSuggestedSongsRequest(v0);
  return nullsub_1;
}

uint64_t MusicSuggestedSongsRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_85_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v11 = type metadata accessor for MusicRequestConfiguration(0);
  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v12 ^ 1u, 1, v11);
  sub_1D4E69970(v10, v8, &qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_57(v8, 1, v11);
  if (v13)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_57(v8, 1, v11);
    if (!v13)
    {
      sub_1D4E50004(v8, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D53FD324(v8, a1);
  }

  return sub_1D4E50004(v10, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D53FA4FC(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D53FA960(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicSuggestedSongsRequest.configuration.setter();
}

uint64_t MusicSuggestedSongsRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_4_130();
  sub_1D53FAAFC(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_8_118();
  sub_1D53FA6A4();
  v10 = type metadata accessor for MusicSuggestedSongsRequest(0);
  return (*(v3 + 40))(v0 + *(v10 + 20), v7, v1);
}

uint64_t sub_1D53FA6A4()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

void (*MusicSuggestedSongsRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicSuggestedSongsRequest.configuration.getter(v10);
  return sub_1D53FA7EC;
}

void sub_1D53FA7EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D53FA960(*(*a1 + 48), v3);
    OUTLINED_FUNCTION_4_130();
    sub_1D53FAAFC(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D53FA6A4();
    v8 = type metadata accessor for MusicSuggestedSongsRequest(0);
    v9 = OUTLINED_FUNCTION_148_0(v8);
    v10(v9);
    sub_1D53FA6A4();
  }

  else
  {
    OUTLINED_FUNCTION_4_130();
    sub_1D53FAAFC(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_8_118();
    sub_1D53FA6A4();
    v13 = type metadata accessor for MusicSuggestedSongsRequest(0);
    v14 = OUTLINED_FUNCTION_148_0(v13);
    v15(v14);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1D53FA960(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

double MusicSuggestedSongsRequest.tracks.getter()
{
  type metadata accessor for MusicSuggestedSongsRequest(0);

  return result;
}

uint64_t MusicSuggestedSongsRequest.response()()
{
  v3 = OUTLINED_FUNCTION_64_1();
  v4 = type metadata accessor for MusicSuggestedSongsRequest(v3);
  v5 = *(v4 + 20);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1D560CD48();
  v8 = sub_1D53FAAFC(&qword_1EC7F5868, type metadata accessor for MusicSuggestedSongsRequest, &protocol conformance descriptor for MusicSuggestedSongsRequest);
  *v6 = v2;
  v6[1] = sub_1D51592F8;
  v9 = MEMORY[0x1E6974D18];

  return MEMORY[0x1EEDCE900](v0, v1 + v5, v4, v7, v8, v9);
}

uint64_t sub_1D53FAAFC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicSuggestedSongsRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E70, &qword_1D56609F8);
  v1[6] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_22(v5);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_1D560D3F8();
  v1[10] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[11] = v7;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53FAC9C, 0, 0);
}

uint64_t sub_1D53FAC9C()
{
  v1 = type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D560D3B8();
  sub_1D560CD48();
  v2 = sub_1D560E6E8();
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);
  if (v2)
  {
    v5 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    v9 = v0[3];
    v8 = v0[4];
    v10 = *(v1 + 32);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v8);
    v14 = *(v7 + 48);
    sub_1D4E69970(v9 + v10, v6, &qword_1EC7F5E78, &qword_1D5660A00);
    sub_1D4E69970(v5, v6 + v14, &qword_1EC7F5E78, &qword_1D5660A00);
    OUTLINED_FUNCTION_57(v6, 1, v8);
    if (v15)
    {
      v16 = v0[4];
      sub_1D4E50004(v0[9], &qword_1EC7F5E78, &qword_1D5660A00);
      OUTLINED_FUNCTION_57(v6 + v14, 1, v16);
      if (!v15)
      {
        goto LABEL_9;
      }

      sub_1D4E50004(v0[7], &qword_1EC7F5E78, &qword_1D5660A00);
    }

    else
    {
      v17 = v0[4];
      sub_1D4E69970(v0[7], v0[8], &qword_1EC7F5E78, &qword_1D5660A00);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6 + v14, 1, v17);
      v19 = v0[8];
      v20 = v0[9];
      if (EnumTagSinglePayload == 1)
      {
        sub_1D4E50004(v0[9], &qword_1EC7F5E78, &qword_1D5660A00);
        OUTLINED_FUNCTION_3_169();
        sub_1D53FA6A4();
LABEL_9:
        sub_1D4E50004(v0[7], &qword_1EC7F5E70, &qword_1D56609F8);
LABEL_10:
        swift_task_alloc();
        OUTLINED_FUNCTION_58();
        v0[14] = v21;
        *v21 = v22;
        v21[1] = sub_1D53FB154;
        v23 = v0[2];

        return sub_1D53FC22C(v23);
      }

      v25 = v0[5];
      OUTLINED_FUNCTION_2_165();
      sub_1D53FD324(v6 + v14, v25);
      v26 = sub_1D53FDE2C(v19, v25);
      sub_1D53FA6A4();
      sub_1D4E50004(v20, &qword_1EC7F5E78, &qword_1D5660A00);
      sub_1D53FA6A4();
      v27 = OUTLINED_FUNCTION_85_0();
      sub_1D4E50004(v27, v28, &qword_1D5660A00);
      if ((v26 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[13] = v29;
  *v29 = v30;
  v29[1] = sub_1D53FAFCC;
  v31 = v0[2];

  return sub_1D53FB2DC(v31);
}

uint64_t sub_1D53FAFCC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D53FB154()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D53FB2DC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D560D428();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1D560CD48();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1D560D348();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_1D560EBD8();
  v2[14] = swift_task_alloc();
  v6 = sub_1D560D388();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = sub_1D5610088();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = sub_1D5613D28();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();
  v9 = sub_1D5612478();
  v2[25] = v9;
  v2[26] = *(v9 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  v2[30] = v10;
  v2[31] = *(v10 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53FB67C, 0, 0);
}

uint64_t sub_1D53FB67C()
{
  v2 = *(v0 + 32);
  v3 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v49 = v3;
  v4 = *(v2 + *(v3 + 28));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 184);
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D4F04934(0, v5, 0);
    v6 = v59;
    v9 = *(v8 + 16);
    v8 += 16;
    v10 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v55 = *(v8 + 56);
    v56 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = *(v0 + 232);
      v13 = *(v0 + 192);
      v14 = *(v0 + 176);
      v56(v13, v10, v14);
      sub_1D54DD85C(v12);
      (*v11)(v13, v14);
      v1 = *(v59 + 16);
      v15 = *(v59 + 24);
      if (v1 >= v15 >> 1)
      {
        sub_1D4F04934(v15 > 1, v1 + 1, 1);
      }

      v16 = *(v0 + 232);
      v17 = *(v0 + 200);
      *(v59 + 16) = v1 + 1;
      v3 = (*(v7 + 32))(v59 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v1, v16, v17);
      v10 += v55;
      --v5;
    }

    while (v5);
  }

  v18 = 0;
  v19 = *(v0 + 208);
  v57 = *(v6 + 16);
  v54 = v19;
  v50 = (v19 + 32);
  v52 = (v19 + 8);
  v51 = MEMORY[0x1E69E7CC0];
  v53 = v6;
  v20 = (*(v0 + 152) + 8);
  while (v57 != v18)
  {
    if (v18 >= *(v6 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDCE5B0](v3);
    }

    v1 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 144);
    v23 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v24 = v6 + v23;
    v25 = *(v54 + 72);
    (*(v54 + 16))(*(v0 + 224), v24 + v25 * v18, *(v0 + 200));
    sub_1D5612468();
    sub_1D560FDF8();
    sub_1D53FAAFC(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
    v26 = sub_1D5614D18();
    v27 = *v20;
    (*v20)(v1, v22);
    v27(v21, v22);
    if (v26)
    {
      v3 = (*v52)(*(v0 + 224), *(v0 + 200));
      ++v18;
      v6 = v53;
    }

    else
    {
      v1 = *v50;
      (*v50)(*(v0 + 216), *(v0 + 224), *(v0 + 200));
      v28 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F04934(0, *(v51 + 16) + 1, 1);
        v28 = v51;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D4F04934(v29 > 1, v30 + 1, 1);
        v28 = v51;
      }

      ++v18;
      v31 = *(v0 + 216);
      v32 = *(v0 + 200);
      *(v28 + 16) = v30 + 1;
      v51 = v28;
      v3 = (v1)(v28 + v23 + v30 * v25, v31, v32);
      v6 = v53;
    }
  }

  v33 = *(v0 + 240);

  sub_1D56123A8();
  v34 = sub_1D560B9F8();
  OUTLINED_FUNCTION_2_19(v34);
  *(v0 + 264) = sub_1D560B9E8();
  sub_1D53FF3D8();
  *(v0 + 272) = sub_1D560B9D8();
  *(v0 + 280) = v35;
  OUTLINED_FUNCTION_34_57();
  v37 = *(v0 + 88);
  v36 = *(v0 + 96);
  v38 = *(v0 + 72);
  v39 = *(v0 + 80);
  v58 = *(v0 + 64);
  v40 = *(v0 + 32);
  sub_1D53FD37C(v33);
  (*(v36 + 104))(v1, *MEMORY[0x1E6974E80], v37);
  v41 = OUTLINED_FUNCTION_85_0();
  sub_1D4F48DE4(v41, v42);
  OUTLINED_FUNCTION_16_88();
  v43 = *(v49 + 20);
  *(v0 + 320) = v43;
  v44 = *(v38 + 16);
  *(v0 + 288) = v44;
  *(v0 + 296) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v39, v40 + v43, v58);
  sub_1D560D2B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 304) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_33_54(v45);
  OUTLINED_FUNCTION_20_7();

  return MEMORY[0x1EEDCE5B0](v3);
}

uint64_t sub_1D53FBC30()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 312) = v0;

  if (v0)
  {
    v5 = sub_1D53FC0E8;
  }

  else
  {
    v5 = sub_1D53FBD38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D53FBD38()
{
  v35 = *(v0 + 312);
  v1 = *(v0 + 288);
  v2 = *(v0 + 320);
  v3 = OUTLINED_FUNCTION_36_52();
  OUTLINED_FUNCTION_2_19(v3);
  sub_1D560B9B8();
  v4 = OUTLINED_FUNCTION_29_56();
  v1(v4);
  sub_1D560B988();
  v5 = sub_1D5612208();
  OUTLINED_FUNCTION_2_19(v5);
  sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  sub_1D560D418();
  sub_1D53FF48C();
  OUTLINED_FUNCTION_25_60();
  sub_1D560B948();
  if (v35)
  {
    v29 = *(v0 + 272);
    v30 = *(v0 + 280);
    v6 = *(v0 + 248);
    v33 = *(v0 + 240);
    v34 = *(v0 + 256);
    v7 = *(v0 + 128);
    v31 = *(v0 + 120);
    v32 = *(v0 + 136);
    OUTLINED_FUNCTION_35_55();
    OUTLINED_FUNCTION_37_42();

    sub_1D4E55E1C(v29, v30);
    (*(v35 + 8))(v28, v2);
    (*(v7 + 8))(v32, v31);
    (*(v6 + 8))(v34, v33);
  }

  else
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 288);
    v23 = *(v0 + 280);
    v21 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 240);
    v27 = *(v0 + 256);
    v24 = *(v0 + 136);
    v20 = *(v0 + 128);
    v22 = *(v0 + 120);
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);
    v18 = *(v0 + 40);
    v19 = *(v0 + 56);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    OUTLINED_FUNCTION_37_42();
    v14 = *(v0 + 16);
    v17(v9, v12 + v16, v10);
    sub_1D53F94A8(v14, v9, v13);

    sub_1D4E55E1C(v21, v23);
    (*(v11 + 8))(v19, v18);
    (*(v20 + 8))(v24, v22);
    (*(v25 + 8))(v27, v26);
  }

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D53FC0E8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = OUTLINED_FUNCTION_71();
  sub_1D4E55E1C(v4, v5);
  (*(v2 + 8))(v1, v3);
  v6 = OUTLINED_FUNCTION_70();
  v7(v6);
  OUTLINED_FUNCTION_30_60();

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D53FC22C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D560D428();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1D560CD48();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1D560D348();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_1D560EBD8();
  v2[14] = swift_task_alloc();
  v6 = sub_1D560D388();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_1D560D838();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v8 = sub_1D5612478();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v9 = sub_1D5614898();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for CloudSuggestedSongsRawRequest.Body(0);
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53FC5EC, 0, 0);
}

uint64_t sub_1D53FC5EC()
{
  v92 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 32);
  *v1 = 0;
  *(v1 + 1) = 0;
  v5 = v2[5];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v2[6];
  *&v1[v10] = 0;
  v11 = v2[7];
  *&v1[v11] = 0;
  v12 = type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D4E69970(v4 + *(v12 + 32), v3, &qword_1EC7F5E78, &qword_1D5660A00);
  v13 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  OUTLINED_FUNCTION_57(v3, 1, v13);
  if (v14)
  {
    sub_1D53FF290();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    goto LABEL_29;
  }

  v16 = *(v0 + 232);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      if (v18)
      {
        v21 = *v16;
      }

      else
      {
        v21 = 0;
        v18 = 0xE000000000000000;
      }

      **(v0 + 248) = v21;
      *(v1 + 1) = v18;
      if (*(v19 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC620, qword_1D5621278);
        v91[0] = sub_1D5614BD8();
        sub_1D53F92F0(v19, v91);
        *&v1[v10] = v91[0];
      }

      if (*(v20 + 16))
      {
        v43 = sub_1D53F8B1C(v20);

        *&v1[v11] = v43;
      }

      else
      {
      }
    }

    else if (*(*v16 + 16))
    {
      v42 = sub_1D53F8B1C(*v16);

      *&v1[v11] = v42;
    }

    else
    {
    }

    goto LABEL_28;
  }

  v89 = v12;
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 208);
  v80 = v11;
  v81 = *(v0 + 176);
  v82 = *(v0 + 168);
  v25 = *(v0 + 152);
  v84 = *(v0 + 160);
  v26 = *(v0 + 144);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
  v86 = *(v16 + *(v27 + 64));
  v87 = *(v16 + *(v27 + 48));
  (*(v23 + 32))(v22, v16, v24);
  sub_1D560EC98();
  sub_1D5610038();
  v28 = sub_1D5610088();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  sub_1D560FF58();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  sub_1D560D4D8();
  sub_1D4E50004(v26, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v25, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v82 + 8))(v81, v84);
  sub_1D5612458();
  if (!v35)
  {
    if (*(*(v0 + 32) + *(v89 + 24)) != 1)
    {
      v51 = *(v0 + 248);
      *v51 = sub_1D56146D8();
      *(v1 + 1) = v52;
      goto LABEL_22;
    }

    v45 = *(v0 + 216);
    v44 = *(v0 + 224);
    v47 = *(v0 + 200);
    v46 = *(v0 + 208);
    v48 = *(v0 + 184);
    v49 = *(v0 + 192);

    sub_1D53FF290();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    (*(v49 + 8))(v47, v48);
    (*(v45 + 8))(v44, v46);
LABEL_29:
    OUTLINED_FUNCTION_14_79();
    OUTLINED_FUNCTION_0_220();
    sub_1D53FA6A4();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_20_7();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v0 + 192);
  v36 = *(v0 + 200);
  v38 = *(v0 + 184);

  sub_1D4E50004(&v1[v5], &qword_1EC7EAB90, &qword_1D5621260);
  (*(v37 + 16))(&v1[v5], v36, v38);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
LABEL_22:
  if (*(v87 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC620, qword_1D5621278);
    v91[0] = sub_1D5614BD8();
    sub_1D53F92F0(v87, v91);
    *&v1[v10] = v91[0];
  }

  v54 = *(v0 + 216);
  v53 = *(v0 + 224);
  v55 = *(v0 + 200);
  v56 = *(v0 + 208);
  v57 = *(v0 + 184);
  v58 = *(v0 + 192);
  if (*(v86 + 16))
  {
    v85 = *(v0 + 208);
    v83 = sub_1D53F8B1C(v86);

    (*(v58 + 8))(v55, v57);
    v59 = *(v54 + 8);
    v10 = v54 + 8;
    v59(v53, v85);
    *&v1[v80] = v83;
  }

  else
  {

    (*(v58 + 8))(v55, v57);
    v60 = *(v54 + 8);
    v10 = v54 + 8;
    v60(v53, v56);
  }

  v12 = v89;
LABEL_28:
  v61 = sub_1D560B9F8();
  OUTLINED_FUNCTION_2_19(v61);
  v62 = sub_1D560B9E8();
  *(v0 + 256) = v62;
  sub_1D53FAAFC(&qword_1EC7F5F08, type metadata accessor for CloudSuggestedSongsRawRequest.Body, &unk_1D5621480);
  OUTLINED_FUNCTION_85_0();
  *(v0 + 264) = sub_1D560B9D8();
  *(v0 + 272) = v63;
  OUTLINED_FUNCTION_34_57();
  v90 = v12;
  v67 = *(v0 + 88);
  v66 = *(v0 + 96);
  v68 = *(v0 + 72);
  v69 = *(v0 + 80);
  v88 = *(v0 + 64);
  v70 = *(v0 + 32);
  sub_1D53FD688(v62);
  (*(v66 + 104))(v10, *MEMORY[0x1E6974E80], v67);
  v71 = OUTLINED_FUNCTION_85_0();
  sub_1D4F48DE4(v71, v72);
  OUTLINED_FUNCTION_16_88();
  v73 = *(v90 + 20);
  *(v0 + 312) = v73;
  v74 = *(v68 + 16);
  *(v0 + 280) = v74;
  *(v0 + 288) = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74(v69, v70 + v73, v88);
  sub_1D560D2B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 296) = v75;
  *v75 = v76;
  OUTLINED_FUNCTION_33_54(v75);
  OUTLINED_FUNCTION_20_7();

  return MEMORY[0x1EEDCE5B0](v77);
}