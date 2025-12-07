uint64_t Composer.debugDescription.getter()
{
  v60 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v53 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v59 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v52 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DF8, &qword_1D5643E18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v57 = (&v52 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_4();
  v56 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v52 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_18_57();
  v70 = v25;
  v71 = 0xE900000000000028;
  strcpy(v67, "\n  id: ");
  BYTE1(v67[1]) = 0;
  WORD1(v67[1]) = 0;
  HIDWORD(v67[1]) = -402653184;
  v26 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v26);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_15_59();

  strcpy(v67, ",\n  name: ");
  HIDWORD(v67[1]) = -352321536;
  v27 = Composer.name.getter();
  MEMORY[0x1DA6EAC70](v27);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_15_59();

  if (qword_1EC7E90E8 != -1)
  {
    OUTLINED_FUNCTION_4_78(&qword_1EC7E90E8);
  }

  sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v28, type metadata accessor for Composer, v29);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1D4E50004(v18, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v30 = v52;
    (*(v52 + 32))(v24, v18, v19);
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_1D5615B68();

    v67[0] = 0xD000000000000016;
    v67[1] = 0x80000001D5687F60;
    OUTLINED_FUNCTION_10_72();
    sub_1D5208690(v31, v32, MEMORY[0x1E6969570]);
    v33 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v33);

    MEMORY[0x1DA6EAC70](v67[0], v67[1]);

    (*(v30 + 8))(v24, v19);
  }

  if (qword_1EC7E90F0 != -1)
  {
    OUTLINED_FUNCTION_5_82(&qword_1EC7E90F0);
  }

  v34 = v57;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v34, 1, v11) == 1)
  {
    sub_1D4E50004(v34, &qword_1EC7EB508, &unk_1D5643E20);
  }

  else
  {
    v36 = v55;
    v35 = v56;
    (*(v56 + 32))(v55, v34, v11);
    v68 = 0;
    v69 = 0xE000000000000000;
    (*(v35 + 16))(v7, v36, v11);
    v37 = *(v54 + 36);
    sub_1D5208360();
    sub_1D5615608();
    v57 = (v53 + 16);
    v38 = (v53 + 32);
    v39 = (v53 + 8);
    while (1)
    {
      sub_1D5615648();
      if (*&v7[v37] == v67[0])
      {
        break;
      }

      v40 = sub_1D5615688();
      v41 = v58;
      v42 = v60;
      (*v57)(v58);
      v40(v67, 0);
      v43 = v7;
      v44 = v11;
      sub_1D5615658();
      (*v38)(v59, v41, v42);
      v45 = v68 & 0xFFFFFFFFFFFFLL;
      if ((v69 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v69) & 0xF;
      }

      if (v45)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v67[0] = 10;
      v67[1] = 0xE100000000000000;
      v46 = v59;
      v47 = sub_1D5613958();
      MEMORY[0x1DA6EAC70](v47);

      MEMORY[0x1DA6EAC70](v67[0], v67[1]);

      (*v39)(v46, v60);
      v11 = v44;
      v7 = v43;
    }

    sub_1D4E50004(v7, &qword_1EC7F1DF8, &qword_1D5643E18);
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v67, ",\n  albums: [");
    HIWORD(v67[1]) = -4864;
    v65 = v68;
    v66 = v69;
    v63 = 10;
    v64 = 0xE100000000000000;
    v61 = 0x202020200ALL;
    v62 = 0xE500000000000000;
    sub_1D4F53278();
    v48 = sub_1D5615968();
    v50 = v49;

    MEMORY[0x1DA6EAC70](v48, v50);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_15_59();

    (*(v56 + 8))(v55, v11);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v70;
}

uint64_t Composer.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
  type metadata accessor for Composer(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Composer.libraryAddedDate.getter()
{
  if (qword_1EC7E90E8 != -1)
  {
    OUTLINED_FUNCTION_4_78(&qword_1EC7E90E8);
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_3_107();
  sub_1D5208690(v1, v0, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Composer.albums.getter()
{
  if (qword_1EC7E90F0 != -1)
  {
    OUTLINED_FUNCTION_5_82(&qword_1EC7E90F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_3_107();
  sub_1D5208690(v1, v0, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Composer.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Composer(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Composer.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for Composer(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_74();
  sub_1D5208690(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t Composer.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for Composer(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_74();
  sub_1D5208690(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D52072E8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D5208690(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D520738C@<X0>(uint64_t *a1@<X8>)
{
  result = Composer.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D52073B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v11 = sub_1D5208690(&qword_1EC7EA9E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D52074E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v13 = sub_1D5208690(&qword_1EC7EA9E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D520762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v13 = sub_1D5208690(&qword_1EC7EA9E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D5207770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  swift_getKeyPath();
  v0 = sub_1D560D178();

  qword_1EC87C348 = v0;
  return result;
}

uint64_t sub_1D52077E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Composer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D520784C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_72();
  sub_1D5208690(v0, v1, MEMORY[0x1E6969558]);
  v2 = sub_1D560D188();

  qword_1EC87C350 = v2;
  return result;
}

uint64_t sub_1D52078F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  swift_getKeyPath();
  sub_1D5615288();
  sub_1D5208690(&qword_1EC7EA9B8, MEMORY[0x1E6976D28], MEMORY[0x1E6976D48]);
  v0 = sub_1D560D0F8();

  qword_1EC7F1DE8 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.albums.getter()
{
  if (qword_1EC7E90F0 != -1)
  {
    OUTLINED_FUNCTION_5_82(&qword_1EC7E90F0);
  }
}

uint64_t static Composer.catalogFilterID(for:)(uint64_t a1)
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

uint64_t sub_1D5207B48(uint64_t a1, uint64_t a2)
{
  sub_1D5208690(&qword_1EDD54818, type metadata accessor for Composer, &protocol conformance descriptor for Composer);

  return sub_1D5610C58();
}

uint64_t static Composer.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D560EEA8();
  if (result != a4)
  {
    result = sub_1D5613838();
    if (result != a4)
    {
      result = sub_1D5613D28();
      if (result != a4)
      {
        result = sub_1D5613AF8();
        if (result != a4)
        {
          v6 = sub_1D560DE58();
          sub_1D5208690(&qword_1EDD53B58, MEMORY[0x1E69750D8], MEMORY[0x1E69750E0]);
          swift_allocError();
          (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69750C8], v6);
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5207CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t Composer.init(from:)(void *a1)
{
  type metadata accessor for Composer(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_108();
  sub_1D5208690(v3, v4, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_8_72();
  sub_1D5208690(v5, v1, &protocol conformance descriptor for LegacyModelCodableComposer);
  OUTLINED_FUNCTION_11_74(&qword_1EC7F1E10);
  sub_1D560CA18();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Composer.encode(to:)(uint64_t a1)
{
  type metadata accessor for Composer(0);
  OUTLINED_FUNCTION_1_108();
  sub_1D5208690(v2, v3, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_8_72();
  sub_1D5208690(v4, v1, &protocol conformance descriptor for LegacyModelCodableComposer);
  OUTLINED_FUNCTION_11_74(&qword_1EC7F1E10);
  return sub_1D560CA28();
}

uint64_t Composer.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_18_57();
  v4 = v0;
  v1 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v2 = Composer.name.getter();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return v4;
}

uint64_t sub_1D52080A0()
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
  qword_1EDD54880 = v4;
  return result;
}

uint64_t sub_1D52081FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v4 + v3, *MEMORY[0x1E6975218], v0);
  qword_1EC7F1DF0 = v4;
  return result;
}

uint64_t sub_1D5208304(uint64_t a1)
{
  v2 = type metadata accessor for Composer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5208360()
{
  result = qword_1EDD53BC0;
  if (!qword_1EDD53BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BC0);
  }

  return result;
}

uint64_t sub_1D52083C4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD54830);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for Composer(0);
  OUTLINED_FUNCTION_1_108();
  sub_1D5208690(v3, v4, &protocol conformance descriptor for Composer);
  return sub_1D560D988();
}

uint64_t sub_1D5208470()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53C88);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD54828 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDD54830);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t sub_1D52085A0(uint64_t a1)
{
  result = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5208690(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D520876C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E20, &unk_1D56443D8);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612EC8();

  *(v0 + 48) = v3;
  qword_1EC87C358 = v0;
  return result;
}

uint64_t sub_1D520884C()
{
  type metadata accessor for UploadedAudio(0);
  sub_1D52089D8(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  return sub_1D560EC98();
}

uint64_t sub_1D5208924(void *a1)
{
  a1[1] = sub_1D52089D8(&qword_1EC7F1E18, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  a1[2] = sub_1D52089D8(&qword_1EC7F05E8, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  result = sub_1D52089D8(&qword_1EC7F1330, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  a1[3] = result;
  return result;
}

uint64_t sub_1D52089D8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5208A20()
{
  OUTLINED_FUNCTION_47();
  v296 = v1;
  v285 = v2;
  v279 = v3;
  v5 = v4;
  v291 = v6;
  v290 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v289 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v16 = OUTLINED_FUNCTION_48(v15);
  v295 = _s15InternalStorageVMa(v16);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v301 = v18;
  v19 = OUTLINED_FUNCTION_70_0();
  v20 = type metadata accessor for UploadedVideo(v19);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v23 = OUTLINED_FUNCTION_48(v22);
  v24 = type metadata accessor for UploadedAudio(v23);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v27 = OUTLINED_FUNCTION_48(v26);
  v28 = type metadata accessor for TVEpisode(v27);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v30);
  v270 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v269 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v33);
  v267 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v266 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v37 = OUTLINED_FUNCTION_48(v36);
  v38 = type metadata accessor for MusicMovie(v37);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v41 = OUTLINED_FUNCTION_48(v40);
  v292 = type metadata accessor for Playlist.Entry.InternalItem(v41);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_2();
  v299 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_2();
  v305 = v51;
  v52 = OUTLINED_FUNCTION_70_0();
  v272 = _s12InternalItemOMa(v52);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  v298 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v56 = OUTLINED_FUNCTION_22(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  v304 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v59);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  v294 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  v63 = OUTLINED_FUNCTION_22(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13();
  v302 = v64;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v66);
  v287 = sub_1D5612E58();
  OUTLINED_FUNCTION_4();
  v286 = v67;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  v300 = v69;
  OUTLINED_FUNCTION_70_0();
  v70 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v72 = v71;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_59_0();
  v76 = v74 - v75;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_70_14();
  v303 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v293 = v78;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v264 - v81;
  sub_1D560FF08();
  v297 = v5;
  Playlist.Entry.InternalItem.innerItem.getter(&v306);
  __swift_project_boxed_opaque_existential_1(&v306, v308);
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(&v306);
  v276 = sub_1D560FDE8();
  v275 = v83;

  OUTLINED_FUNCTION_38_28();
  sub_1D520D9CC(v84, v85, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  sub_1D560EC98();
  sub_1D560D4E8();
  v86 = OUTLINED_FUNCTION_60_17();
  v282 = v87;
  v281 = v88;
  (v88)(v86);
  v273 = sub_1D56147B8();
  v89 = v277;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  v94 = *(v72 + 16);
  v284 = v0;
  v285 = v70;
  v94(v76, v0, v70);
  v95 = *(v293 + 16);
  v283 = v82;
  v95(v274, v82, v303);
  sub_1D5614A88();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_6_37();
  v96 = OUTLINED_FUNCTION_6_37();
  v97 = sub_1D56131D8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  v101 = v278;
  v102 = v273;
  v103 = v299;
  sub_1D5612DD8();
  v104 = sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v102);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v303);
  v114 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
  OUTLINED_FUNCTION_33_37();
  sub_1D520D970(v297, v101, v118);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v280 = v97;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v147 = v266;
      OUTLINED_FUNCTION_66_15();
      v96 = v265;
      v148 = v267;
      v188(v265, v101, v267);
      OUTLINED_FUNCTION_57_5();
      sub_1D560EE78();
      v121 = &unk_1D561A0C0;
      v189 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v189, v190, &unk_1D561A0C0);
      v191 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v191, v192, v193, &unk_1D561A0C0);
      v292 = sub_1D560EE88();
      LODWORD(v279) = v194;
      v195 = v302;
      sub_1D4E50004(v302, &qword_1EC7EED08, &qword_1D562E660);
      v196 = OUTLINED_FUNCTION_55_21();
      v89(v196);
      OUTLINED_FUNCTION_73_15();
      swift_storeEnumTagMultiPayload();
      (v89)(v195, v96, v148);
      OUTLINED_FUNCTION_24_0();
      (*(v197 + 104))(v195);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v102);
      OUTLINED_FUNCTION_57_5();
      sub_1D560FE38();
      v201 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v201, v202, &unk_1D561DF50);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v203, v204, v205, v303);
      v206 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v206, v207, v208, &unk_1D561DF50);
      v122 = v271;
      sub_1D560ECE8();
      v209 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v209, v210, &unk_1D561E370);
      v211 = OUTLINED_FUNCTION_70();
      sub_1D4F39A1C(v211, v212, &qword_1EC7EA3B8, &unk_1D561E370);
      v174 = sub_1D560EE68();
      goto LABEL_26;
    case 2:
      v147 = v269;
      OUTLINED_FUNCTION_66_15();
      v96 = v268;
      v148 = v270;
      v149(v268, v101, v270);
      OUTLINED_FUNCTION_57_5();
      sub_1D56137F8();
      v121 = &unk_1D561A0C0;
      v150 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v150, v151, &unk_1D561A0C0);
      v152 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v152, v153, v154, &unk_1D561A0C0);
      v292 = sub_1D5613818();
      LODWORD(v279) = v155;
      v156 = v302;
      sub_1D4E50004(v302, &qword_1EC7EED08, &qword_1D562E660);
      v157 = OUTLINED_FUNCTION_55_21();
      v89(v157);
      OUTLINED_FUNCTION_73_15();
      swift_storeEnumTagMultiPayload();
      (v89)(v156, v96, v148);
      OUTLINED_FUNCTION_24_0();
      (*(v158 + 104))(v156);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v102);
      OUTLINED_FUNCTION_57_5();
      sub_1D560FFA8();
      v162 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v162, v163, &unk_1D561DF50);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v303);
      v167 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v167, v168, v169, &unk_1D561DF50);
      v122 = v271;
      sub_1D56135D8();
      v170 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v170, v171, &unk_1D561E370);
      v172 = OUTLINED_FUNCTION_70();
      sub_1D4F39A1C(v172, v173, &qword_1EC7EA3B8, &unk_1D561E370);
      v174 = sub_1D56137E8();
LABEL_26:
      OUTLINED_FUNCTION_46_21(v174, v175);
      (*(v147 + 8))(v96, v148);
      goto LABEL_27;
    case 3:
      OUTLINED_FUNCTION_8_73();
      OUTLINED_FUNCTION_81_18(v101, v176, &v296);
      v121 = v272;
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D520D9CC(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D520D9CC(v177, type metadata accessor for TVEpisode, v178);
      OUTLINED_FUNCTION_79_11();
      v180 = *(v179 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      OUTLINED_FUNCTION_53_21();
      OUTLINED_FUNCTION_64_17(v180);
      if (qword_1EC7E91A0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v292 = v306;
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_50_22();
      OUTLINED_FUNCTION_71_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D5610078();
      v181 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v181, &qword_1EC7EA358, &unk_1D561DF50);
      v182 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v182, v183, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EC7E9248 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_57_5();
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v122 = &unk_1D561E370;
      v184 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v184, v185, &unk_1D561E370);
      sub_1D4F39A1C(&unk_1D561DF50, v103, &qword_1EC7EA3B8, &unk_1D561E370);
      v186 = TVEpisode.title.getter();
      OUTLINED_FUNCTION_46_21(v186, v187);
      v135 = type metadata accessor for TVEpisode;
      v136 = v96;
      goto LABEL_24;
    case 4:
      OUTLINED_FUNCTION_4_79();
      OUTLINED_FUNCTION_81_18(v101, v137, &v297);
      v121 = v272;
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      v122 = sub_1D520D9CC(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v138, type metadata accessor for UploadedAudio, v139);
      OUTLINED_FUNCTION_79_11();
      v141 = *(v140 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      OUTLINED_FUNCTION_53_21();
      OUTLINED_FUNCTION_64_17(v141);
      if (qword_1EC7E8E60 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v142 = v306;
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_50_22();
      OUTLINED_FUNCTION_71_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D560FF28();
      v143 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v143, &qword_1EC7EA358, &unk_1D561DF50);
      v144 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v144, v145, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v146 = type metadata accessor for UploadedAudio;
      goto LABEL_35;
    case 5:
      OUTLINED_FUNCTION_3_108();
      OUTLINED_FUNCTION_81_18(v101, v213, &v298);
      v121 = v272;
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      v122 = sub_1D520D9CC(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v214, type metadata accessor for UploadedVideo, v215);
      OUTLINED_FUNCTION_79_11();
      v217 = *(v216 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      OUTLINED_FUNCTION_53_21();
      OUTLINED_FUNCTION_64_17(v217);
      if (qword_1EDD53E28 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v142 = v306;
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_50_22();
      OUTLINED_FUNCTION_71_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D560FF38();
      v218 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v218, &qword_1EC7EA358, &unk_1D561DF50);
      v219 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v219, v220, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v146 = type metadata accessor for UploadedVideo;
LABEL_35:
      sub_1D520D918(v96, v146);
      v277 = v306;
      v278 = v307;
      OUTLINED_FUNCTION_68_15();
      v292 = v142;
      break;
    default:
      OUTLINED_FUNCTION_6_75();
      OUTLINED_FUNCTION_81_18(v101, v120, &v294);
      v121 = v272;
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      v122 = sub_1D520D9CC(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D520D9CC(v123, type metadata accessor for MusicMovie, v124);
      OUTLINED_FUNCTION_79_11();
      v126 = *(v125 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v127 = v304;
      sub_1D4E50004(v304, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4F39A1C(v126, v127, &qword_1EC7E9CA0, &unk_1D561A0C0);
      if (qword_1EDD541A8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v292 = v306;
      OUTLINED_FUNCTION_48_24();
      sub_1D520D970(v96, v298, type metadata accessor for MusicMovie);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D560FE38();
      v128 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v128, &qword_1EC7EA358, &unk_1D561DF50);
      v129 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v129, v130, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EDD54338 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_57_5();
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v131 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v131, v132, &unk_1D561E370);
      sub_1D4F39A1C(&unk_1D561DF50, v103, &qword_1EC7EA3B8, &unk_1D561E370);
      v133 = MusicMovie.title.getter();
      OUTLINED_FUNCTION_46_21(v133, v134);
      OUTLINED_FUNCTION_15_62();
      v136 = v96;
LABEL_24:
      sub_1D520D918(v136, v135);
LABEL_27:
      OUTLINED_FUNCTION_68_15();
      break;
  }

  sub_1D520D970(v298, v122, _s12InternalItemOMa);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v121);
  sub_1D4F39AB0(v296, v96, &unk_1EC7ED370, &unk_1D5624FE0);
  v224 = v301;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v225, v226, v227, v121);
  v228 = *(v295 + 20);
  type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
  sub_1D4E68940(v122, v224, &qword_1EC7EB6E0, &qword_1D56320D0);
  sub_1D4E68940(v96, v224 + v228, &unk_1EC7ED370, &unk_1D5624FE0);
  swift_getKeyPath();
  v233 = *MEMORY[0x1E6976668];
  v234 = v289;
  v235 = v289 + 104;
  v236 = *(v289 + 104);
  v237 = v288;
  v238 = v290;
  v236(v288, v233, v290);
  sub_1D5610DB8();

  v239 = *(v234 + 8);
  v240 = OUTLINED_FUNCTION_45_5();
  v239(v240);
  swift_getKeyPath();
  v306 = v292;
  LOBYTE(v307) = v279 & 1;
  v241 = OUTLINED_FUNCTION_44_26();
  (v236)(v241);
  sub_1D5610DB8();

  v242 = OUTLINED_FUNCTION_45_5();
  v239(v242);
  swift_getKeyPath();
  v243 = OUTLINED_FUNCTION_44_26();
  (v236)(v243);
  sub_1D5610DB8();

  v244 = OUTLINED_FUNCTION_45_5();
  v239(v244);
  swift_getKeyPath();
  v245 = OUTLINED_FUNCTION_44_26();
  (v236)(v245);
  v275 = v235;
  sub_1D5610DB8();

  v246 = OUTLINED_FUNCTION_45_5();
  v239(v246);
  swift_getKeyPath();
  LODWORD(v276) = v233;
  v236(v237, v233, v238);
  sub_1D5610DB8();

  v247 = OUTLINED_FUNCTION_45_5();
  v239(v247);
  swift_getKeyPath();
  v306 = v277;
  v307 = v278;
  v248 = OUTLINED_FUNCTION_44_26();
  (v236)(v248);
  sub_1D5610DB8();

  v249 = OUTLINED_FUNCTION_45_5();
  v239(v249);

  swift_getKeyPath();
  OUTLINED_FUNCTION_36_31();
  sub_1D520D9CC(v250, v251, &unk_1D5656D18);
  v252 = v294;
  sub_1D56130F8();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v253, v254, v255, v280);
  v236(v237, v276, v238);
  v256 = MEMORY[0x1E69766F0];
  v257 = v300;
  sub_1D5610DB8();

  v258 = OUTLINED_FUNCTION_45_5();
  v239(v258);
  sub_1D4E50004(v252, &qword_1EC7EECD0, &qword_1D562E620);
  v259 = v287;
  v308 = v287;
  v309 = v256;
  v260 = __swift_allocate_boxed_opaque_existential_0(&v306);
  v261 = v286;
  (*(v286 + 16))(v260, v257, v259);
  sub_1D5614768();
  sub_1D4E50004(v296, &unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_0_136();
  sub_1D520D918(v297, v262);
  sub_1D4E50004(v299, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4E50004(v305, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v302, &qword_1EC7EED08, &qword_1D562E660);
  sub_1D520D918(v298, _s12InternalItemOMa);
  sub_1D4E50004(v304, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v261 + 8))(v257, v259);
  v281(v284, v285);
  (*(v293 + 8))(v283, v303);
  OUTLINED_FUNCTION_35_35();
  sub_1D520D918(v301, v263);
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.internalItem.getter()
{
  OUTLINED_FUNCTION_47();
  v52 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_18_3();
  v6 = _s12InternalItemOMa(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_3();
  v13 = sub_1D56147B8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  sub_1D56147E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v13) != 1)
  {
    (*(v15 + 32))(v22, v1, v13);
    (*(v15 + 16))(v19, v22, v13);
    v28 = (*(v15 + 88))(v19, v13);
    if (v28 == *MEMORY[0x1E69772B0])
    {
      v29 = OUTLINED_FUNCTION_60_17();
      v30(v29);
      (*(v15 + 96))(v19, v13);
      sub_1D560EEA8();
      OUTLINED_FUNCTION_14();
      (*(v31 + 32))(v52, v19);
    }

    else
    {
      if (v28 != *MEMORY[0x1E69772B8])
      {
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5688030);
        sub_1D520D9CC(&qword_1EC7F1B48, MEMORY[0x1E69772C0], MEMORY[0x1E69772C8]);
        v50 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v50);

        MEMORY[0x1DA6EAC70](0xD00000000000003ALL, 0x80000001D5688050);
        OUTLINED_FUNCTION_6_3();
        v51 = 54;
        goto LABEL_17;
      }

      v32 = OUTLINED_FUNCTION_60_17();
      v33(v32);
      (*(v15 + 96))(v19, v13);
      sub_1D5613838();
      OUTLINED_FUNCTION_14();
      (*(v34 + 32))(v52, v19);
    }

LABEL_13:
    type metadata accessor for Playlist.Entry.InternalItem(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D4E50004(v1, &qword_1EC7EED08, &qword_1D562E660);
  sub_1D520B8F8();
  if (__swift_getEnumTagSinglePayload(v0, 1, v6) != 1)
  {
    sub_1D520BAC4(v0, v10, _s12InternalItemOMa);
    v23 = OUTLINED_FUNCTION_45_5();
    sub_1D520BAC4(v23, v24, _s12InternalItemOMa);
    OUTLINED_FUNCTION_70();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D560EEA8();
        OUTLINED_FUNCTION_14();
        v44 = OUTLINED_FUNCTION_128();
        v46(v44, v45);
        break;
      case 2u:
        sub_1D5613838();
        OUTLINED_FUNCTION_14();
        v38 = OUTLINED_FUNCTION_128();
        v40(v38, v39);
        break;
      case 3u:
        OUTLINED_FUNCTION_8_73();
        v41 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v41, v42, v43);
        break;
      case 4u:
        OUTLINED_FUNCTION_4_79();
        v35 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v35, v36, v37);
        break;
      case 5u:
        OUTLINED_FUNCTION_3_108();
        v47 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v47, v48, v49);
        break;
      default:
        OUTLINED_FUNCTION_6_75();
        v25 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v25, v26, v27);
        break;
    }

    goto LABEL_13;
  }

  sub_1D4E50004(v0, &qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_6_3();
  v51 = 72;
LABEL_17:
  sub_1D5615E08();
  __break(1u);
}

void Playlist.Entry.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v67 = v3;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v62 = v5;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v61 = v6;
  OUTLINED_FUNCTION_70_0();
  v56 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v60 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v58 = v9;
  OUTLINED_FUNCTION_70_0();
  v59 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v57 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v55 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v54 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v66 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v65 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v64 = v26;
  OUTLINED_FUNCTION_70_0();
  v68 = sub_1D5614828();
  v51 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v27 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v29 = type metadata accessor for MusicSiriRepresentation(0);
  v30 = (v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v33 = (v32 - v31);
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.siriRepresentation.getter();
  sub_1D520D918(v2, type metadata accessor for Playlist.Entry.InternalItem);
  v34 = *(v51 + 16);
  v34(v0, v1, v68);
  v53 = v33[3];
  v49 = v33[4];
  v52 = v33[5];
  v50 = v33[6];
  sub_1D4F39AB0(v33 + v30[10], v64, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39AB0(v33 + v30[11], v65, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F39AB0(v33 + v30[12], v66, &unk_1EC7E9CA8, &unk_1D561D1D0);

  Playlist.Entry.internalItem.getter();
  sub_1D551B9BC();
  sub_1D520D918(v2, type metadata accessor for Playlist.Entry.InternalItem);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v56);
  v70 = v68;
  v71 = MEMORY[0x1E6977300];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69);
  v34(boxed_opaque_existential_0, v0, v68);
  __swift_project_boxed_opaque_existential_1(v69, v70);
  sub_1D5612AF8();
  sub_1D5611A98();
  (*(v57 + 8))(v55, v59);
  sub_1D560FDD8();
  (*(v60 + 8))(v58, v56);
  sub_1D4E50004(v48, &qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v56);
  v42 = OUTLINED_FUNCTION_86_0();
  sub_1D4F39A1C(v42, v43, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_1D560EC98();
  sub_1D4F39AB0(v48, v54, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4F39AB0(v64, v67 + v30[10], &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39AB0(v65, v67 + v30[11], &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F39AB0(v66, v67 + v30[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v69[0]) = 9;
  sub_1D50391CC();
  v45 = v44;
  v47 = v46;
  sub_1D4E50004(v54, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v62 + 8))(v61, v63);
  sub_1D4E50004(v48, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v66, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v65, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v64, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v51 + 8))(v0, v68);
  sub_1D520D918(v33, type metadata accessor for MusicSiriRepresentation);
  *v67 = v45;
  *(v67 + 8) = v47;
  *(v67 + 16) = 9;
  *(v67 + 24) = v53;
  *(v67 + 32) = v49;
  *(v67 + 40) = v52;
  *(v67 + 48) = v50;
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.init(internalItem:existingEntry:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v82 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v79 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v81 = _s15InternalStorageVMa(v12);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v77 = v18;
  v78 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v76 = v19;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v74 = v21;
  v75 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for Playlist.Entry.InternalItem(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E28, &unk_1D5644460);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_40_2();
  v31 = sub_1D5612E58();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  sub_1D5614828();
  v83 = v3;
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
    v80 = v33;
    (*(v33 + 32))(v1, v0, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
    sub_1D560D1C8();
    OUTLINED_FUNCTION_33_37();
    sub_1D520D970(v5, v28, v38);
    v39 = v5;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = v74;
        OUTLINED_FUNCTION_66_15();
        v42 = v28;
        v43 = v75;
        v44(v23, v42, v75);
        v85 = sub_1D56147B8();
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
        OUTLINED_FUNCTION_67_23();
        v46();
        OUTLINED_FUNCTION_24_0();
        (*(v47 + 104))(boxed_opaque_existential_0);

        OUTLINED_FUNCTION_65_21();
        v39 = v5;
        goto LABEL_6;
      case 2u:
        v23 = v76;
        v41 = v77;
        OUTLINED_FUNCTION_66_15();
        v48 = v28;
        v43 = v78;
        v49(v76, v48, v78);
        v85 = sub_1D56147B8();
        v50 = __swift_allocate_boxed_opaque_existential_0(v84);
        OUTLINED_FUNCTION_67_23();
        v51();
        OUTLINED_FUNCTION_24_0();
        (*(v52 + 104))(v50);

        OUTLINED_FUNCTION_65_21();
LABEL_6:
        (*(v41 + 8))(v23, v43);
        break;
      default:
        OUTLINED_FUNCTION_0_136();
        sub_1D520D918(v28, v40);
        break;
    }

    sub_1D551B208(v79);
    v53 = _s12InternalItemOMa(0);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
    Playlist.Entry.contributor.getter();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);
    v60 = *(v81 + 20);
    type metadata accessor for SocialProfile(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    sub_1D4E68940(v79, v16, &qword_1EC7EB6E0, &qword_1D56320D0);
    sub_1D4E68940(v82, v16 + v60, &unk_1EC7ED370, &unk_1D5624FE0);
    sub_1D560D1B8();
    v85 = sub_1D56131D8();
    __swift_allocate_boxed_opaque_existential_0(v84);
    OUTLINED_FUNCTION_36_31();
    sub_1D520D9CC(v65, v66, &unk_1D5656D18);

    OUTLINED_FUNCTION_45_5();
    sub_1D56130F8();
    OUTLINED_FUNCTION_65_21();
    v85 = v31;
    v86 = MEMORY[0x1E69766F0];
    v67 = __swift_allocate_boxed_opaque_existential_0(v84);
    (*(v80 + 16))(v67, v1, v31);
    sub_1D5614768();

    OUTLINED_FUNCTION_24_0();
    (*(v68 + 8))(v83);
    OUTLINED_FUNCTION_0_136();
    sub_1D520D918(v39, v69);
    (*(v80 + 8))(v1, v31);
    OUTLINED_FUNCTION_35_35();
    sub_1D520D918(v16, v70);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v31);
    sub_1D4E50004(v0, &qword_1EC7F1E28, &unk_1D5644460);
    OUTLINED_FUNCTION_6_3();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D520B930(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_68_2();
  sub_1D5614738();
  v8 = sub_1D56131D8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    sub_1D4E50004(v3, &qword_1EC7EECD0, &qword_1D562E620);
    a3(0);
    OUTLINED_FUNCTION_33();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    if (*a1 != -1)
    {
      OUTLINED_FUNCTION_66();
      swift_once();
    }

    a3(0);
    sub_1D520D9CC(&qword_1EDD52EC8, MEMORY[0x1E69769D0], MEMORY[0x1E69769C8]);
    sub_1D5613128();
    OUTLINED_FUNCTION_24_0();
    v14 = OUTLINED_FUNCTION_70();
    return v15(v14);
  }
}

uint64_t sub_1D520BAC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t Playlist.Entry.catalogID.getter()
{
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_150_1();
  Playlist.Entry.internalItem.getter();
  OUTLINED_FUNCTION_38_28();
  sub_1D520D9CC(v8, v9, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  sub_1D560EC98();
  OUTLINED_FUNCTION_0_136();
  sub_1D520D918(v5, v10);
  sub_1D560D7A8();
  v11 = OUTLINED_FUNCTION_98();
  v12(v11);
  v13 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v0, 1, v13) == 1)
  {
    sub_1D4E50004(v0, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v14 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    (*(v15 + 8))(v0, v13);
  }

  return v14;
}

void Playlist.Entry.favoritedDate.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_69_18(v3);
  v5 = type metadata accessor for UploadedVideo(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v39 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v11 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v15 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = OUTLINED_FUNCTION_15_3();
  type metadata accessor for Playlist.Entry.InternalItem(v19);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v13 + 32))(v1, v23, v11);
      _s8MusicKit0A5VideoV0aB8InternalE13favoritedDate10Foundation0F0VSgvg_0();
      (*(v13 + 8))(v1, v11);
      break;
    case 2u:
      (*(v17 + 32))(v2, v23, v15);
      _s8MusicKit4SongV0aB8InternalE13favoritedDate10Foundation0F0VSgvg_0();
      v29 = OUTLINED_FUNCTION_66();
      v30(v29);
      break;
    case 4u:
      OUTLINED_FUNCTION_4_79();
      sub_1D520BAC4(v23, v0, v36);
      if (qword_1EC7E8E78 != -1)
      {
        swift_once();
      }

      sub_1D560C328();
      sub_1D520D9CC(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v37, type metadata accessor for UploadedAudio, v38);
      sub_1D560EC28();
      OUTLINED_FUNCTION_14_58();
      v35 = v0;
      goto LABEL_11;
    case 5u:
      OUTLINED_FUNCTION_3_108();
      sub_1D520BAC4(v23, v39, v31);
      if (qword_1EDD53F20 != -1)
      {
        swift_once();
      }

      sub_1D560C328();
      sub_1D520D9CC(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v32, type metadata accessor for UploadedVideo, v33);
      sub_1D560EC28();
      v34 = type metadata accessor for UploadedVideo;
      v35 = v39;
LABEL_11:
      sub_1D520D918(v35, v34);
      break;
    default:
      OUTLINED_FUNCTION_0_136();
      sub_1D520D918(v23, v24);
      sub_1D560C328();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.keepLocalManagedStatus.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_69_18(v3);
  v5 = type metadata accessor for TVEpisode(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v55 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for MusicMovie(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v54 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for UploadedVideo(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v53 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v17 = type metadata accessor for UploadedAudio(v16);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v20 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_14_3();
  v25 = type metadata accessor for Playlist.Entry.InternalItem(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  Playlist.Entry.internalItem.getter();
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = OUTLINED_FUNCTION_63_14();
      v46(v45);
      sub_1D560EE08();
      v47 = OUTLINED_FUNCTION_66();
      v48(v47);
      goto LABEL_18;
    case 2u:
      v37 = OUTLINED_FUNCTION_58_22();
      v38(v37, v0, v20);
      sub_1D5613748();
      (*(v22 + 8))(v2, v20);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_8_73();
      v39 = v55;
      sub_1D520BAC4(v0, v55, v40);
      if (qword_1EC7E91E0 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_34_38();
      sub_1D520D9CC(v41, v25, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D520D9CC(v42, v25, v43);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v44 = type metadata accessor for TVEpisode;
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_4_79();
      sub_1D520BAC4(v0, v1, v33);
      if (qword_1EC7E8E90 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_37_26();
      sub_1D520D9CC(v34, v25, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v35, v25, v36);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      OUTLINED_FUNCTION_14_58();
      v32 = v1;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_3_108();
      v39 = v53;
      sub_1D520BAC4(v0, v53, v49);
      if (qword_1EDD53EA8 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_32_37();
      sub_1D520D9CC(v50, v25, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v51, v25, v52);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v44 = type metadata accessor for UploadedVideo;
LABEL_16:
      v31 = v44;
      v32 = v39;
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_6_75();
      sub_1D520BAC4(v0, v54, v27);
      if (qword_1EDD54208 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_39_29();
      sub_1D520D9CC(v28, v25, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D520D9CC(v29, v25, v30);
      OUTLINED_FUNCTION_18_29();
      sub_1D560EC28();
      OUTLINED_FUNCTION_15_62();
      v32 = v54;
LABEL_17:
      sub_1D520D918(v32, v31);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.keepLocalManagedStatusReasons.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_69_18(v3);
  v5 = type metadata accessor for TVEpisode(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v55 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for MusicMovie(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v54 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for UploadedVideo(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v53 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v17 = type metadata accessor for UploadedAudio(v16);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v20 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_14_3();
  v25 = type metadata accessor for Playlist.Entry.InternalItem(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  Playlist.Entry.internalItem.getter();
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = OUTLINED_FUNCTION_63_14();
      v46(v45);
      sub_1D560EE18();
      v47 = OUTLINED_FUNCTION_66();
      v48(v47);
      goto LABEL_18;
    case 2u:
      v37 = OUTLINED_FUNCTION_58_22();
      v38(v37, v0, v20);
      sub_1D5613798();
      (*(v22 + 8))(v2, v20);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_8_73();
      v39 = v55;
      sub_1D520BAC4(v0, v55, v40);
      if (qword_1EC7E91E8 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_34_38();
      sub_1D520D9CC(v41, v25, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D520D9CC(v42, v25, v43);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v44 = type metadata accessor for TVEpisode;
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_4_79();
      sub_1D520BAC4(v0, v1, v33);
      if (qword_1EC7E8E98 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_37_26();
      sub_1D520D9CC(v34, v25, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v35, v25, v36);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      OUTLINED_FUNCTION_14_58();
      v32 = v1;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_3_108();
      v39 = v53;
      sub_1D520BAC4(v0, v53, v49);
      if (qword_1EDD53EA0 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_32_37();
      sub_1D520D9CC(v50, v25, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v51, v25, v52);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v44 = type metadata accessor for UploadedVideo;
LABEL_16:
      v31 = v44;
      v32 = v39;
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_6_75();
      sub_1D520BAC4(v0, v54, v27);
      if (qword_1EDD54200 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_39_29();
      sub_1D520D9CC(v28, v25, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D520D9CC(v29, v25, v30);
      OUTLINED_FUNCTION_18_29();
      sub_1D560EC28();
      OUTLINED_FUNCTION_15_62();
      v32 = v54;
LABEL_17:
      sub_1D520D918(v32, v31);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t Playlist.Entry.shouldShowComposer.getter()
{
  v2 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  Playlist.Entry.internalItem.getter();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v4 + 32))(v0, v1, v2);
    v7 = _s8MusicKit4SongV0aB8InternalE18shouldShowComposerSbvg_0();
    v8 = OUTLINED_FUNCTION_98();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_0_136();
    sub_1D520D918(v1, v10);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D520CD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  swift_getKeyPath();
  sub_1D520D9CC(&qword_1EC7F1E38, _s12InternalItemOMa, &unk_1D5656C38);
  v0 = sub_1D560D188();

  qword_1EC87C368 = v0;
  return result;
}

uint64_t sub_1D520CE28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  swift_getKeyPath();
  sub_1D520D9CC(&qword_1EDD5DC58, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  v0 = sub_1D560D188();

  qword_1EDD76A58 = v0;
  return result;
}

void Playlist.Entry.favoriteStatus.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_18(v3);
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v42 = v5;
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v41 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v44 = v8;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_14();
  v19 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v23 = OUTLINED_FUNCTION_14_3();
  type metadata accessor for Playlist.Entry.InternalItem(v23);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v34 = v41;
      v35 = v42;
      v36 = v0;
      v37 = v43;
      (*(v42 + 32))(v41, v36, v43);
      sub_1D560ED78();
      v39 = v44;
      v38 = v45;
      (*(v44 + 16))(v11, v15, v45);
      v40 = (*(v39 + 88))(v11, v38);
      if (v40 == *MEMORY[0x1E69765E8])
      {
        v26 = 0;
      }

      else if (v40 == *MEMORY[0x1E69765F8])
      {
        v26 = 1;
      }

      else
      {
        if (v40 != *MEMORY[0x1E69765F0])
        {
          goto LABEL_18;
        }

        v26 = 2;
      }

      (*(v39 + 8))(v15, v38);
      (*(v35 + 8))(v34, v37);
      goto LABEL_3;
    case 2u:
      v27 = OUTLINED_FUNCTION_58_22();
      v28(v27, v0, v19);
      sub_1D5613698();
      v30 = v44;
      v29 = v45;
      (*(v44 + 16))(v18, v1, v45);
      v31 = OUTLINED_FUNCTION_71();
      v33 = v32(v31);
      if (v33 == *MEMORY[0x1E69765E8])
      {
        v26 = 0;
      }

      else if (v33 == *MEMORY[0x1E69765F8])
      {
        v26 = 1;
      }

      else
      {
        if (v33 != *MEMORY[0x1E69765F0])
        {
LABEL_18:
          OUTLINED_FUNCTION_6_3();
          v41 = 66;
          sub_1D5615E08();
          __break(1u);
          return;
        }

        v26 = 2;
      }

      (*(v30 + 8))(v1, v29);
      (*(v21 + 8))(v2, v19);
LABEL_3:
      *v46 = v26;
      OUTLINED_FUNCTION_46();
      return;
    default:
      OUTLINED_FUNCTION_0_136();
      sub_1D520D918(v0, v25);
      v26 = 0;
      goto LABEL_3;
  }
}

uint64_t static Playlist.Entry.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Playlist.Entry.Reaction(0);
  if (result != a4)
  {
    sub_1D560DE58();
    sub_1D520D9CC(&qword_1EDD53B58, MEMORY[0x1E69750D8], MEMORY[0x1E69750E0]);
    swift_allocError();
    OUTLINED_FUNCTION_24_0();
    (*(v6 + 104))();
    return swift_willThrow();
  }

  return result;
}

void Playlist.Entry.itemToPin.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v8 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_18_3();
  type metadata accessor for Playlist.Entry.InternalItem(v12);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = *(v6 + 32);
      v21 = OUTLINED_FUNCTION_71_15();
      v20(v21);
      *(&v25 + 1) = v4;
      v26 = &protocol witness table for MusicVideo;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
      (v20)(boxed_opaque_existential_0, v0, v4);
      goto LABEL_5;
    case 2u:
      v18 = *(v10 + 32);
      v18(v1, v16, v8);
      *(&v25 + 1) = v8;
      v26 = &protocol witness table for Song;
      v19 = __swift_allocate_boxed_opaque_existential_0(&v24);
      v18(v19, v1, v8);
LABEL_5:
      sub_1D4E50004(v3, &qword_1EC7EC500, &unk_1D5621030);
      v23 = v25;
      *v3 = v24;
      *(v3 + 16) = v23;
      *(v3 + 32) = v26;
      break;
    default:
      sub_1D4E50004(v3, &qword_1EC7EC500, &unk_1D5621030);
      OUTLINED_FUNCTION_0_136();
      sub_1D520D918(v16, v17);
      *v3 = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0;
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t _s8MusicKit8PlaylistV5EntryV0aB8InternalE14itemToFavoriteAA0A4Item_pvg_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.innerItem.getter(a1);
  OUTLINED_FUNCTION_0_136();
  return sub_1D520D918(v1, v5);
}

uint64_t sub_1D520D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1D4F39AB0(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_1D520D918(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D520D970(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D520D9CC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_46_21(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 352) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_21()
{

  return MEMORY[0x1EEDD12F0](v1 - 128, v0);
}

uint64_t OUTLINED_FUNCTION_81_18@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1D520BAC4(a1, v4, a2);
}

_BYTE *storeEnumTagSinglePayload for MusicIncompleteResponseReason(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D520DBEC()
{
  result = qword_1EC7F1E40;
  if (!qword_1EC7F1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1E40);
  }

  return result;
}

unint64_t sub_1D520DC54()
{
  result = qword_1EC7F1E48;
  if (!qword_1EC7F1E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1E50, qword_1D56448A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1E48);
  }

  return result;
}

uint64_t MusicDataRequest.Presto_ExecutionMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D520DD50()
{
  swift_beginAccess();
  if (byte_1EC7F1E58)
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  swift_beginAccess();
  byte_1EDD5F568 = v0;
  return sub_1D560D318();
}

uint64_t static MusicDataRequest.presto_preferredExecutionMethod.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC7F1E58;
  return result;
}

uint64_t static MusicDataRequest.presto_preferredExecutionMethod.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EC7F1E58 = v1;
  return sub_1D520DD50();
}

uint64_t sub_1D520DEF0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {

    return sub_1D520DD50();
  }

  return result;
}

unint64_t sub_1D520DF38()
{
  result = qword_1EC7F1E60;
  if (!qword_1EC7F1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1E60);
  }

  return result;
}

_BYTE *_s22Presto_ExecutionMethodOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D520E068@<X0>(uint64_t *a1@<X8>)
{
  v87 = a1;
  v2 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E68, &unk_1D5644980);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v85 = v10;
  OUTLINED_FUNCTION_23();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v86 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v84 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v83 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_75();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v31 = sub_1D5612268();
  if (v32)
  {
    *v7 = 0x6973736572707865;
    v33 = 0xEC00000044496E6FLL;
LABEL_8:
    v7[1] = v33;
    (*(v4 + 104))(v7, *MEMORY[0x1E69763E0], v2);
    sub_1D50F96EC();
    swift_allocError();
    (*(v4 + 16))(v38, v7, v2);
    swift_willThrow();
    return (*(v4 + 8))(v7, v2);
  }

  v82 = v31;
  v34 = sub_1D5612308();
  if (!v35)
  {
    *v7 = 0x6E6F6973726576;
    v33 = 0xE700000000000000;
    goto LABEL_8;
  }

  v80 = v35;
  v81 = v34;
  sub_1D56122D8();
  v36 = sub_1D56122C8();
  OUTLINED_FUNCTION_23_1(v19);
  if (v60)
  {
    sub_1D4E7661C(v19, &qword_1EC7F1E68, &unk_1D5644980);
    v37 = 0;
  }

  else
  {
    sub_1D5612288();
    OUTLINED_FUNCTION_24_0();
    (*(v40 + 8))(v19, v36);
    v41 = sub_1D5614028();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v41);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v30, &qword_1EC7F1E70, &qword_1D5653790);
      v37 = 0;
    }

    else
    {
      v37 = sub_1D5614008();
      OUTLINED_FUNCTION_24_0();
      (*(v43 + 8))(v30, v41);
    }
  }

  sub_1D56122D8();
  OUTLINED_FUNCTION_23_1(v17);
  v44 = v85;
  if (v60)
  {
    v45 = &qword_1EC7F1E68;
    v46 = &unk_1D5644980;
    v47 = v17;
LABEL_17:
    sub_1D4E7661C(v47, v45, v46);
    v79 = 0;
    goto LABEL_19;
  }

  sub_1D5612298();
  OUTLINED_FUNCTION_24_0();
  (*(v48 + 8))(v17, v36);
  v49 = sub_1D5614028();
  v50 = __swift_getEnumTagSinglePayload(v1, 1, v49);
  if (v50 == 1)
  {
    v45 = &qword_1EC7F1E70;
    v46 = &qword_1D5653790;
    v47 = v1;
    goto LABEL_17;
  }

  v79 = sub_1D5614008();
  OUTLINED_FUNCTION_24_0();
  (*(v51 + 8))(v1, v49);
LABEL_19:
  sub_1D56122D8();
  OUTLINED_FUNCTION_23_1(v14);
  v52 = v84;
  if (v60)
  {
    v53 = &qword_1EC7F1E68;
    v54 = &unk_1D5644980;
    v55 = v14;
  }

  else
  {
    v56 = v83;
    sub_1D56122A8();
    OUTLINED_FUNCTION_24_0();
    v58 = v56;
    (*(v57 + 8))(v14, v36);
    v59 = sub_1D5614028();
    OUTLINED_FUNCTION_32_1(v56);
    if (!v60)
    {
      v61 = sub_1D5614008();
      OUTLINED_FUNCTION_24_0();
      (*(v62 + 8))(v58, v59);
      goto LABEL_26;
    }

    v53 = &qword_1EC7F1E70;
    v54 = &qword_1D5653790;
    v55 = v56;
  }

  sub_1D4E7661C(v55, v53, v54);
  v61 = 0;
LABEL_26:
  v63 = v86;
  sub_1D56122D8();
  OUTLINED_FUNCTION_23_1(v44);
  if (v60)
  {
    v64 = &qword_1EC7F1E68;
    v65 = &unk_1D5644980;
    v66 = v44;
LABEL_32:
    sub_1D4E7661C(v66, v64, v65);
    v70 = 0;
    goto LABEL_33;
  }

  sub_1D56122B8();
  OUTLINED_FUNCTION_24_0();
  (*(v67 + 8))(v44, v36);
  v68 = sub_1D5614028();
  OUTLINED_FUNCTION_32_1(v52);
  if (v69)
  {
    v64 = &qword_1EC7F1E70;
    v65 = &qword_1D5653790;
    v66 = v52;
    goto LABEL_32;
  }

  v70 = sub_1D5614008();
  OUTLINED_FUNCTION_24_0();
  (*(v71 + 8))(v52, v68);
LABEL_33:
  sub_1D5612318();
  v72 = sub_1D5614028();
  OUTLINED_FUNCTION_32_1(v63);
  if (v60)
  {
    result = sub_1D4E7661C(v63, &qword_1EC7F1E70, &qword_1D5653790);
    v73 = 0;
  }

  else
  {
    v73 = sub_1D5614008();
    OUTLINED_FUNCTION_24_0();
    result = (*(v74 + 8))(v63, v72);
  }

  v75 = v87;
  v76 = v81;
  *v87 = v82;
  v75[1] = v76;
  v77 = v79;
  v75[2] = v80;
  v75[3] = v37;
  v75[4] = v77;
  v75[5] = v61;
  v75[6] = v70;
  v75[7] = v73;
  return result;
}

uint64_t CoverArtworkRecipe.convertToCloudCoverArtworkRecipe()@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E68, &unk_1D5644980);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v66 = v59 - v5;
  sub_1D56122C8();
  OUTLINED_FUNCTION_4();
  v64 = v7;
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v62 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  v61 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v60 = v15;
  OUTLINED_FUNCTION_23();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v59 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v21 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v24 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_75();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v59 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = v59 - v30;
  v32 = *v1;
  v59[3] = v1[1];
  v33 = v1[2];
  v34 = v1[3];
  v59[1] = v32;
  v59[2] = v33;
  v35 = v1[4];
  v36 = v1[5];
  v37 = v1[6];
  v38 = v1[7];
  v59[0] = v37;
  if (v38)
  {
    sub_1D5615698();
    if (v34)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = sub_1D5614028();
    OUTLINED_FUNCTION_146_0(v31, v40, v41, v39);
    if (v34)
    {
LABEL_3:
      sub_1D5615698();
      if (v35)
      {
        goto LABEL_4;
      }

LABEL_8:
      v45 = sub_1D5614028();
      OUTLINED_FUNCTION_146_0(v2, v46, v47, v45);
      if (v36)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v42 = sub_1D5614028();
  OUTLINED_FUNCTION_146_0(v29, v43, v44, v42);
  if (!v35)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1D5615698();
  if (v36)
  {
LABEL_5:
    sub_1D5615698();
    goto LABEL_10;
  }

LABEL_9:
  v48 = sub_1D5614028();
  OUTLINED_FUNCTION_146_0(v24, v49, v50, v48);
LABEL_10:
  if (v59[0])
  {
    sub_1D5615698();
  }

  else
  {
    v51 = sub_1D5614028();
    OUTLINED_FUNCTION_146_0(v21, v52, v53, v51);
  }

  sub_1D520EBBC(v29, v19);
  sub_1D520EBBC(v2, v60);
  v59[0] = v29;
  sub_1D520EBBC(v24, v61);
  sub_1D520EBBC(v21, v62);
  v54 = v63;
  sub_1D5612278();
  v56 = v64;
  v55 = v65;
  v57 = v66;
  (*(v64 + 16))(v66, v54, v65);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
  sub_1D520EBBC(v31, v19);

  sub_1D5612258();
  (*(v56 + 8))(v54, v55);
  OUTLINED_FUNCTION_25_2(v21);
  OUTLINED_FUNCTION_25_2(v24);
  OUTLINED_FUNCTION_25_2(v2);
  OUTLINED_FUNCTION_25_2(v59[0]);
  return OUTLINED_FUNCTION_25_2(v31);
}

uint64_t sub_1D520EBBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D520EC60@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_16_0();
  a1(0);
  sub_1D520F3F0(a2, a3, a4);
  result = sub_1D560CBC8();
  if (result)
  {
    sub_1D4EC9F70(result);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
    OUTLINED_FUNCTION_2_49(v13);
    if (!v14)
    {
      sub_1D516D7A0(a5);
      OUTLINED_FUNCTION_8_0();
      return (*(v15 + 8))(v5, a4);
    }

    result = sub_1D520EFB0(v5);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_1D520ED98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_16_0();
  a1(0);
  result = sub_1D560CBC8();
  if (result)
  {
    sub_1D4EC9F70(result);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
    OUTLINED_FUNCTION_2_49(v9);
    if (!v10)
    {
      sub_1D516D7A0(a3);
      OUTLINED_FUNCTION_8_0();
      return (*(v11 + 8))(v3, a2);
    }

    result = sub_1D520EFB0(v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t MusicCatalogInternalSearchSnippetVending<>.searchContextSnippet.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_16_0();
  result = sub_1D560CBC8();
  if (result)
  {
    sub_1D4EC9F70(result);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
    OUTLINED_FUNCTION_2_49(v8);
    if (!v9)
    {
      sub_1D516D7A0(a3);
      OUTLINED_FUNCTION_8_0();
      return (*(v10 + 8))(v3, a2);
    }

    result = sub_1D520EFB0(v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1D520EFB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MusicCatalogInternalSearchSnippetVending.searchContextSnippet.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1D520F3F0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MusicMoviePropertyProvider(uint64_t a1)
{
  result = qword_1EDD5B340;
  if (!qword_1EDD5B340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D520F4AC(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 > 0x3F)
  {
    return v2;
  }

  sub_1D520FBF4(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  if (v5 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
  if (v6 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD52800, &qword_1EC7EF318, &qword_1D563DD60);
  if (v7 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD52820, &qword_1EC7EA3D0, &unk_1D56223F0);
  if (v8 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = v9;
  if (v11 > 0x3F)
  {
    return v10;
  }

  sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
  if (v12 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
  if (v13 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD52830, &qword_1EC7ED210, &unk_1D5637540);
  if (v14 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
  if (v16 > 0x3F)
  {
    return v15;
  }

  sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
  if (v17 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
  if (v18 > 0x3F)
  {
    return v4;
  }

  sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
  if (v19 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v20 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD52EE8, MEMORY[0x1E69768B0], MEMORY[0x1E69E6720]);
  if (v21 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
  if (v22 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
  if (v23 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
  if (v24 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD52850, &qword_1EC7ECBC0, &qword_1D562BF20);
  if (v25 > 0x3F)
  {
    return v4;
  }

  sub_1D4E518A0(319, &qword_1EDD56B78, &type metadata for PlaybackPosition);
  if (v26 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
  if (v27 > 0x3F)
  {
    return v4;
  }

  sub_1D4E518A0(319, &qword_1EDD557F8, &type metadata for VideoSupportedLocales);
  if (v28 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
  if (v29 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD53BF0, &qword_1EC7EA410, &unk_1D561C400);
  v10 = v30;
  if (v31 > 0x3F)
  {
    return v10;
  }

  sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
  if (v32 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
  if (v33 > 0x3F)
  {
    return v4;
  }

  sub_1D4E6D600(319, &qword_1EDD52790, &qword_1EC7ED150, &unk_1D565B6C0);
  if (v34 > 0x3F)
  {
    return v4;
  }

  sub_1D520FBF4(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
  if (v35 > 0x3F)
  {
    return v4;
  }

  v4 = sub_1D560D838();
  if (v36 > 0x3F)
  {
    return v4;
  }

  v4 = sub_1D5610088();
  if (v37 > 0x3F)
  {
    return v4;
  }

  sub_1D4E5CF94(319);
  v2 = v38;
  if (v39 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1D520FBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D520FCA0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v289 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v287 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v287 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v287 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v287 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v50);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v287 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v287 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    *&v292 = 0;
    *(&v292 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D56881E0);
    v291[0] = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v220 = *(&v292 + 1);
    v219 = v292;
    goto LABEL_180;
  }

  v60 = v59;
  v61 = qword_1EDD54370;
  v290 = a1;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_108_9(&qword_1EDD54370);
  }

  *&v292 = qword_1EDD76A50;
  v291[0] = v60;
  v62 = sub_1D4EC5794(&qword_1EDD53DF8, &qword_1EC7ECD50, &unk_1D5622F40);
  if (sub_1D5614D18())
  {
    v63 = v288;
    v64 = v288[1];
    if (!v64)
    {
      v66 = 0;
      v65 = 0;
      goto LABEL_21;
    }

LABEL_6:
    v65 = *v63;

    v66 = MEMORY[0x1E69E6158];
LABEL_21:
    OUTLINED_FUNCTION_45_23();
LABEL_22:

    OUTLINED_FUNCTION_30_6();
    *v82 = v65;
    v82[1] = v64;
    v82[2] = 0;
    v82[3] = v66;
    return;
  }

  v287[16] = v62;
  v67 = qword_1EDD541B8;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_107_9(&qword_1EDD541B8);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76978);
  v68 = sub_1D5614D18();

  if (v68)
  {
    v69 = type metadata accessor for MusicMoviePropertyProvider(0);
    v70 = OUTLINED_FUNCTION_17_42(*(v69 + 20));
    sub_1D4F1C460(v70, v57, v71, v72);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v57);
    if (!v73)
    {
LABEL_231:
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      (*(v286 + 32))();
      OUTLINED_FUNCTION_45_23();
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7E9CA0;
    v75 = &unk_1D561A0C0;
    v76 = v57;
LABEL_19:
    sub_1D4E50004(v76, v74, v75);
    v292 = 0u;
    v293 = 0u;
LABEL_31:
    OUTLINED_FUNCTION_30_6();
    *v88 = v89;
    v88[1] = v90;
    return;
  }

  v77 = qword_1EDD54330;

  if (v77 != -1)
  {
    OUTLINED_FUNCTION_106_9(&qword_1EDD54330);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A30);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v77)
  {
    v78 = type metadata accessor for MusicMoviePropertyProvider(0);
    v79 = OUTLINED_FUNCTION_17_42(*(v78 + 24));
    sub_1D4F1C460(v79, v53, v80, v81);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v53);
    if (v73)
    {

      v74 = &qword_1EC7EDB98;
      v75 = L"X\b\a";
      v76 = v53;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v83 = qword_1EDD54300;

  if (v83 != -1)
  {
    OUTLINED_FUNCTION_14_52(&qword_1EDD54300);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A28);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v83)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v84 = &qword_1EC7EA3D0;
      v85 = &unk_1D56223F0;
LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(v84, v85);
      OUTLINED_FUNCTION_82();

LABEL_75:

      OUTLINED_FUNCTION_30_6();
      *v113 = v49;
      v113[1] = 0;
      v113[2] = 0;
      v113[3] = v58;
      return;
    }

    goto LABEL_74;
  }

  v91 = qword_1EDD54198;

  if (v91 != -1)
  {
    OUTLINED_FUNCTION_104_13(&qword_1EDD54198);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76968);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v91)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_51_2();
    v94 = (v93 + v92);
    v64 = v94[1];
    if (v64)
    {
      v65 = *v94;

      v66 = MEMORY[0x1E69E6158];
    }

    else
    {
      v66 = 0;
      v65 = 0;
    }

    goto LABEL_22;
  }

  v95 = qword_1EDD542F0;

  if (v95 != -1)
  {
    OUTLINED_FUNCTION_103_12(&qword_1EDD542F0);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A20);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v95)
  {
    v96 = type metadata accessor for MusicMoviePropertyProvider(0);
    v97 = OUTLINED_FUNCTION_17_42(*(v96 + 40));
    sub_1D4F1C460(v97, v49, v98, v99);
    sub_1D560C328();
    v100 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_10(v100);
    if (v73)
    {

      v74 = &qword_1EC7EA3B8;
      v75 = &unk_1D561E370;
      v76 = v49;
      goto LABEL_19;
    }

    *(&v293 + 1) = v58;
    __swift_allocate_boxed_opaque_existential_0(&v292);
    v87 = *(*(v58 - 8) + 32);
LABEL_29:
    v87();
LABEL_30:

    goto LABEL_31;
  }

  v101 = qword_1EDD541A8;

  if (v101 != -1)
  {
    OUTLINED_FUNCTION_102_11(&qword_1EDD541A8);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76970);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v101)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    v102 = 0;
    v103 = 0;
    OUTLINED_FUNCTION_51_2();
    v106 = (v105 + v104);
    if ((v106[1] & 1) == 0)
    {
      v103 = *v106;
      v102 = MEMORY[0x1E69E63B0];
    }

    OUTLINED_FUNCTION_30_6();
    *v107 = v103;
    v107[1] = 0;
    v107[2] = 0;
    v107[3] = v102;
    return;
  }

  v49 = qword_1EDD54250;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_22_44(&qword_1EDD54250);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD769D0);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v49)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v84 = &qword_1EC7EC480;
      v85 = &unk_1D56222E0;
      goto LABEL_28;
    }

LABEL_74:
    v58 = 0;
    goto LABEL_75;
  }

  v49 = qword_1EDD542D8;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_21_47(&qword_1EDD542D8);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD542E0);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v49)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v84 = &qword_1EC7ED210;
      v85 = &unk_1D5637540;
      goto LABEL_28;
    }

    goto LABEL_74;
  }

  v108 = qword_1EDD542C8;

  if (v108 != -1)
  {
    OUTLINED_FUNCTION_101_7(&qword_1EDD542C8);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A18);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v108)
  {
    v109 = type metadata accessor for MusicMoviePropertyProvider(0);
    v110 = OUTLINED_FUNCTION_17_42(*(v109 + 56));
    sub_1D4F1C460(v110, v42, v111, v112);
    sub_1D5610978();
    OUTLINED_FUNCTION_1(v42);
    if (v73)
    {

      v74 = &qword_1EC7EAC98;
      v75 = &unk_1D561DA80;
      v76 = v42;
      goto LABEL_19;
    }

LABEL_17:
    OUTLINED_FUNCTION_134_4();
    OUTLINED_FUNCTION_15_1();
    v87 = *(v86 + 32);
    goto LABEL_29;
  }

  v49 = sub_1D4F84A28();
  *&v292 = v49;
  OUTLINED_FUNCTION_3_109();
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();

  if (v95)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v84 = &qword_1EC7EC9E8;
      v85 = &qword_1D562B870;
      goto LABEL_28;
    }

    goto LABEL_74;
  }

  v49 = qword_1EDD54360;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_100_9(&qword_1EDD54360);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A48);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v49)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v84 = &qword_1EC7EABD8;
      v85 = &unk_1D561D780;
      goto LABEL_28;
    }

    goto LABEL_74;
  }

  v114 = qword_1EDD54248;

  if (v114 != -1)
  {
    OUTLINED_FUNCTION_99_12(&qword_1EDD54248);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD769C8);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v114)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_51_2();
    v117 = *(v116 + v115);
LABEL_93:

    v129 = MEMORY[0x1E69E6370];
    if (v117 == 2)
    {
      v129 = 0;
    }

    v130 = v289;
    *v289 = v117 & 1;
    v130[1] = 0;
    v130[2] = 0;
    v130[3] = v129;
    return;
  }

  v118 = off_1EDD54320;

  if (v118 != -1)
  {
    OUTLINED_FUNCTION_20_55(&off_1EDD54320);
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD54328);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v118)
  {
    v119 = type metadata accessor for MusicMoviePropertyProvider(0);
    v120 = OUTLINED_FUNCTION_17_42(*(v119 + 72));
    sub_1D4F1C460(v120, v37, v121, v122);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1(v37);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &unk_1EC7E9CA8;
    v75 = &unk_1D561D1D0;
    v76 = v37;
    goto LABEL_19;
  }

  v123 = qword_1EDD542C0;

  if (v123 != -1)
  {
    OUTLINED_FUNCTION_98_12(&qword_1EDD542C0);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A10);
  v124 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v124)
  {
    goto LABEL_92;
  }

  v125 = qword_1EDD54218;
  OUTLINED_FUNCTION_45_23();

  if (v125 != -1)
  {
    OUTLINED_FUNCTION_97_12(&qword_1EDD54218);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769B8);
  v126 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v126)
  {
LABEL_92:
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_51_2();
    v117 = *(v128 + v127);
    OUTLINED_FUNCTION_45_23();
    goto LABEL_93;
  }

  v131 = qword_1EDD54210;
  OUTLINED_FUNCTION_45_23();

  if (v131 != -1)
  {
    OUTLINED_FUNCTION_96_13(&qword_1EDD54210);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769B0);
  v132 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v132)
  {
    v133 = type metadata accessor for MusicMoviePropertyProvider(0);
    v134 = OUTLINED_FUNCTION_17_42(*(v133 + 84));
    sub_1D4F1C460(v134, v32, v135, v136);
    sub_1D5613178();
    OUTLINED_FUNCTION_1(v32);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EC538;
    v75 = &unk_1D5621080;
    v76 = v32;
    goto LABEL_19;
  }

  v137 = qword_1EDD54208;
  OUTLINED_FUNCTION_45_23();

  if (v137 != -1)
  {
    OUTLINED_FUNCTION_95_13(&qword_1EDD54208);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769A8);
  v138 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v138)
  {
    v139 = type metadata accessor for MusicMoviePropertyProvider(0);
    v140 = OUTLINED_FUNCTION_17_42(*(v139 + 88));
    OUTLINED_FUNCTION_132_5(v140, v141, v142, &v304);
    v143 = sub_1D5613198();
    OUTLINED_FUNCTION_1_9(v143);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EC530;
    v75 = &unk_1D5632150;
    v144 = &v304;
    goto LABEL_132;
  }

  v145 = qword_1EDD54200;
  OUTLINED_FUNCTION_45_23();

  if (v145 != -1)
  {
    OUTLINED_FUNCTION_94_14(&qword_1EDD54200);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769A0);
  v146 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v146)
  {
    v147 = type metadata accessor for MusicMoviePropertyProvider(0);
    v148 = OUTLINED_FUNCTION_17_42(*(v147 + 92));
    OUTLINED_FUNCTION_132_5(v148, v149, v150, &v303);
    v151 = sub_1D56134E8();
    OUTLINED_FUNCTION_1_9(v151);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EC528;
    v75 = &unk_1D5621070;
    v144 = &v303;
    goto LABEL_132;
  }

  v152 = qword_1EDD542B8;
  OUTLINED_FUNCTION_45_23();

  if (v152 != -1)
  {
    OUTLINED_FUNCTION_93_13(&qword_1EDD542B8);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A08);
  v153 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v153)
  {
    v154 = type metadata accessor for MusicMoviePropertyProvider(0);
    v155 = OUTLINED_FUNCTION_17_42(*(v154 + 96));
    OUTLINED_FUNCTION_132_5(v155, v156, v157, &v302);
    v158 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v158);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EA3B8;
    v75 = &unk_1D561E370;
    v144 = &v302;
    goto LABEL_132;
  }

  v159 = qword_1EDD54280;
  OUTLINED_FUNCTION_45_23();

  if (v159 != -1)
  {
    OUTLINED_FUNCTION_92_12(&qword_1EDD54280);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769F0);
  v160 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v160)
  {
    v161 = type metadata accessor for MusicMoviePropertyProvider(0);
    v162 = OUTLINED_FUNCTION_17_42(*(v161 + 100));
    OUTLINED_FUNCTION_132_5(v162, v163, v164, &v301);
    v165 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v165);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EA3B8;
    v75 = &unk_1D561E370;
    v144 = &v301;
    goto LABEL_132;
  }

  v166 = qword_1EDD542A8;
  OUTLINED_FUNCTION_45_23();

  if (v166 != -1)
  {
    OUTLINED_FUNCTION_90_15(&qword_1EDD542A8);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A00);
  v167 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v167)
  {
    v168 = type metadata accessor for MusicMoviePropertyProvider(0);
    v169 = OUTLINED_FUNCTION_17_42(*(v168 + 104));
    OUTLINED_FUNCTION_132_5(v169, v170, v171, v300);
    v172 = sub_1D5614A78();
    OUTLINED_FUNCTION_1_9(v172);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EF5D8;
    v75 = &unk_1D5632160;
    v144 = v300;
    goto LABEL_132;
  }

  v173 = qword_1EDD541E8;
  OUTLINED_FUNCTION_45_23();

  if (v173 != -1)
  {
    OUTLINED_FUNCTION_89_12(&qword_1EDD541E8);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76990);
  v49 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v49)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v174 = &qword_1EC7EF318;
      v175 = &qword_1D563DD60;
LABEL_143:
      __swift_instantiateConcreteTypeFromMangledNameV2(v174, v175);
      OUTLINED_FUNCTION_82();

LABEL_237:
      OUTLINED_FUNCTION_45_23();
      goto LABEL_75;
    }

    goto LABEL_236;
  }

  v176 = qword_1EDD541C0;
  OUTLINED_FUNCTION_45_23();

  if (v176 != -1)
  {
    OUTLINED_FUNCTION_87_13(&qword_1EDD541C0);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76980);
  v49 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v49)
  {
    type metadata accessor for MusicMoviePropertyProvider(0);
    OUTLINED_FUNCTION_43_6();
    if (v49)
    {
      v174 = &qword_1EC7ECBC0;
      v175 = &qword_1D562BF20;
      goto LABEL_143;
    }

LABEL_236:
    v58 = 0;
    goto LABEL_237;
  }

  v177 = qword_1EDD54238;
  OUTLINED_FUNCTION_45_23();

  if (v177 != -1)
  {
    OUTLINED_FUNCTION_19_53(&qword_1EDD54238);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD54240);
  v178 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v178)
  {
    v179 = type metadata accessor for MusicMoviePropertyProvider(0);
    v180 = OUTLINED_FUNCTION_17_42(*(v179 + 112));
    OUTLINED_FUNCTION_132_5(v180, v181, v182, &v294 + 8);
    v183 = sub_1D5610978();
    OUTLINED_FUNCTION_1_9(v183);
    if (!v73)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_45_23();

    v74 = &qword_1EC7EAC98;
    v75 = &unk_1D561DA80;
    v144 = &v294 + 8;
    goto LABEL_132;
  }

  v184 = qword_1EDD54278;
  OUTLINED_FUNCTION_45_23();

  if (v184 != -1)
  {
    OUTLINED_FUNCTION_18_58(&qword_1EDD54278);
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769E8);
  v185 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if ((v185 & 1) == 0)
  {
    v192 = qword_1EDD542A0;
    OUTLINED_FUNCTION_45_23();

    if (v192 != -1)
    {
      OUTLINED_FUNCTION_85_12(&qword_1EDD542A0);
    }

    OUTLINED_FUNCTION_0_137(qword_1EDD769F8);
    v193 = sub_1D5614D18();
    OUTLINED_FUNCTION_45_23();

    if (v193)
    {
      v194 = type metadata accessor for MusicMoviePropertyProvider(0);
      v195 = OUTLINED_FUNCTION_17_42(*(v194 + 120));
      OUTLINED_FUNCTION_132_5(v195, v196, v197, &v295 + 8);
      v198 = sub_1D56109F8();
      OUTLINED_FUNCTION_1_9(v198);
      if (!v73)
      {
        goto LABEL_231;
      }

      OUTLINED_FUNCTION_45_23();

      v74 = &qword_1EC7EB5C0;
      v75 = &unk_1D56223C0;
      v144 = &v295 + 8;
    }

    else
    {
      v204 = qword_1EDD54338;
      OUTLINED_FUNCTION_45_23();

      if (v204 != -1)
      {
        OUTLINED_FUNCTION_84_13(&qword_1EDD54338);
      }

      OUTLINED_FUNCTION_0_137(qword_1EDD76A38);
      v205 = sub_1D5614D18();
      OUTLINED_FUNCTION_45_23();

      if ((v205 & 1) == 0)
      {
        v211 = qword_1EDD54270;
        OUTLINED_FUNCTION_45_23();

        if (v211 != -1)
        {
          OUTLINED_FUNCTION_83_13(&qword_1EDD54270);
        }

        OUTLINED_FUNCTION_0_137(qword_1EDD769E0);
        v212 = sub_1D5614D18();
        OUTLINED_FUNCTION_45_23();

        if (v212)
        {
          goto LABEL_189;
        }

        v213 = qword_1EDD54228;
        OUTLINED_FUNCTION_45_23();

        if (v213 != -1)
        {
          OUTLINED_FUNCTION_81_19(&qword_1EDD54228);
        }

        OUTLINED_FUNCTION_0_137(qword_1EDD769C0);
        v214 = sub_1D5614D18();
        OUTLINED_FUNCTION_45_23();

        if (v214)
        {
          goto LABEL_189;
        }

        v215 = qword_1EDD54350;
        OUTLINED_FUNCTION_45_23();

        if (v215 != -1)
        {
          OUTLINED_FUNCTION_79_12(&qword_1EDD54350);
        }

        OUTLINED_FUNCTION_0_137(qword_1EDD76A40);
        v216 = sub_1D5614D18();
        OUTLINED_FUNCTION_45_23();

        if (v216)
        {
LABEL_189:
          type metadata accessor for MusicMoviePropertyProvider(0);
          OUTLINED_FUNCTION_51_2();
          v63 = (v234 + v233);
          v64 = v63[1];
          if (!v64)
          {
            v65 = 0;
            v66 = 0;
            goto LABEL_21;
          }

          goto LABEL_6;
        }

        while (1)
        {
          v221 = qword_1EDD54268;
          OUTLINED_FUNCTION_45_23();

          if (v221 != -1)
          {
            OUTLINED_FUNCTION_78_16(&qword_1EDD54268);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD769D8);
          v222 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v222)
          {
            type metadata accessor for MusicMoviePropertyProvider(0);
            OUTLINED_FUNCTION_51_2();
            v225 = (v224 + v223);
            v227 = *(v224 + v223);
            v226 = *(v224 + v223 + 8);
            v228 = *(v224 + v223 + 32);
            v296 = *(v224 + v223 + 16);
            v297 = v228;
            v298 = *(v224 + v223 + 48);
            if (!v226)
            {
              goto LABEL_154;
            }

            v190 = swift_allocObject();
            *&v292 = v227;
            *(&v292 + 1) = v226;
            v229 = v225[2];
            v293 = v225[1];
            v294 = v229;
            v295 = v225[3];
            sub_1D5027EE0(&v292, v291);
            OUTLINED_FUNCTION_45_23();

            *(v190 + 16) = v227;
            *(v190 + 24) = v226;
            v230 = v297;
            *(v190 + 32) = v296;
            *(v190 + 48) = v230;
            *(v190 + 64) = v298;
            v191 = &type metadata for VideoSupportedLocales;
            goto LABEL_162;
          }

          v231 = qword_1EDD541E0;
          OUTLINED_FUNCTION_45_23();

          if (v231 != -1)
          {
            OUTLINED_FUNCTION_77_11(&qword_1EDD541E0);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD76988);
          v232 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v232)
          {
            goto LABEL_189;
          }

          v235 = qword_1EDD541F8;
          OUTLINED_FUNCTION_45_23();

          if (v235 != -1)
          {
            OUTLINED_FUNCTION_31_30(&qword_1EDD541F8);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD76998);
          v236 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v236)
          {
            v237 = type metadata accessor for MusicMoviePropertyProvider(0);
            v238 = OUTLINED_FUNCTION_17_42(*(v237 + 148));
            OUTLINED_FUNCTION_132_5(v238, v239, v240, &v296);
            v241 = sub_1D560C0A8();
            OUTLINED_FUNCTION_1_9(v241);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &unk_1EC7E9CA8;
            v75 = &unk_1D561D1D0;
            v144 = &v296;
            goto LABEL_132;
          }

          v242 = qword_1EDD541D0;
          OUTLINED_FUNCTION_45_23();

          if (v242 != -1)
          {
            OUTLINED_FUNCTION_34_31(&qword_1EDD541D0);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD541D8);
          v243 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v243)
          {
            v244 = type metadata accessor for MusicMoviePropertyProvider(0);
            v245 = OUTLINED_FUNCTION_17_42(*(v244 + 152));
            OUTLINED_FUNCTION_132_5(v245, v246, v247, &v296 + 8);
            v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
            OUTLINED_FUNCTION_1_9(v248);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &qword_1EC7EA788;
            v75 = &unk_1D56223A0;
            v144 = &v296 + 8;
            goto LABEL_132;
          }

          v249 = qword_1EDD54288;
          OUTLINED_FUNCTION_45_23();

          if (v249 != -1)
          {
            OUTLINED_FUNCTION_36_32(&qword_1EDD54288);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD54290);
          v250 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v250)
          {
            v251 = type metadata accessor for MusicMoviePropertyProvider(0);
            v252 = OUTLINED_FUNCTION_17_42(*(v251 + 156));
            OUTLINED_FUNCTION_132_5(v252, v253, v254, &v297);
            v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
            OUTLINED_FUNCTION_1_9(v255);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &qword_1EC7EF308;
            v75 = &qword_1D5631048;
            v144 = &v297;
            goto LABEL_132;
          }

          v256 = qword_1EDD54340;
          OUTLINED_FUNCTION_45_23();

          if (v256 != -1)
          {
            OUTLINED_FUNCTION_35_36(&qword_1EDD54340);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD54348);
          v257 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v257)
          {
            v258 = type metadata accessor for MusicMoviePropertyProvider(0);
            v259 = OUTLINED_FUNCTION_17_42(*(v258 + 160));
            OUTLINED_FUNCTION_132_5(v259, v260, v261, &v297 + 8);
            v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
            OUTLINED_FUNCTION_1_9(v262);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &qword_1EC7EF308;
            v75 = &qword_1D5631048;
            v144 = &v297 + 8;
            goto LABEL_132;
          }

          v263 = qword_1EDD54308;
          OUTLINED_FUNCTION_45_23();

          if (v263 != -1)
          {
            OUTLINED_FUNCTION_34_39(&qword_1EDD54308);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD54310);
          v264 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v264)
          {
            v265 = type metadata accessor for MusicMoviePropertyProvider(0);
            v266 = OUTLINED_FUNCTION_17_42(*(v265 + 164));
            OUTLINED_FUNCTION_132_5(v266, v267, v268, &v298);
            v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
            OUTLINED_FUNCTION_1_9(v269);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &off_1EC7EB5B0;
            v75 = &unk_1D5632170;
            v144 = &v298;
            goto LABEL_132;
          }

          v270 = qword_1EDD54180;
          OUTLINED_FUNCTION_45_23();

          if (v270 != -1)
          {
            OUTLINED_FUNCTION_33_38(&qword_1EDD54180);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD54188);
          v271 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v271)
          {
            v272 = type metadata accessor for MusicMoviePropertyProvider(0);
            v273 = OUTLINED_FUNCTION_17_42(*(v272 + 168));
            OUTLINED_FUNCTION_132_5(v273, v274, v275, &v298 + 8);
            v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
            OUTLINED_FUNCTION_1_9(v276);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &qword_1EC7EB620;
            v75 = &unk_1D561E5B0;
            v144 = &v298 + 8;
            goto LABEL_132;
          }

          v277 = qword_1EDD54258;
          OUTLINED_FUNCTION_45_23();

          if (v277 != -1)
          {
            OUTLINED_FUNCTION_32_38(&qword_1EDD54258);
          }

          OUTLINED_FUNCTION_0_137(qword_1EDD54260);
          v278 = sub_1D5614D18();
          OUTLINED_FUNCTION_45_23();

          if (v278)
          {
            v279 = type metadata accessor for MusicMoviePropertyProvider(0);
            v280 = OUTLINED_FUNCTION_17_42(*(v279 + 172));
            OUTLINED_FUNCTION_132_5(v280, v281, v282, v299);
            v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
            OUTLINED_FUNCTION_1_9(v283);
            if (!v73)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_45_23();

            v74 = &qword_1EC7EF308;
            v75 = &qword_1D5631048;
            v144 = v299;
            goto LABEL_132;
          }

          OUTLINED_FUNCTION_11_75();
          sub_1D5218BD0(v284, v285, &protocol conformance descriptor for MusicMovie);

          v49 = sub_1D560D198();
          *&v292 = v49;
          OUTLINED_FUNCTION_3_109();
          v58 = sub_1D5614D18();

          if (v58)
          {
            break;
          }

          *&v292 = 0;
          *(&v292 + 1) = 0xE000000000000000;
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          v291[0] = v290;
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
          v220 = *(&v292 + 1);
          v219 = v292;
LABEL_180:
          OUTLINED_FUNCTION_117_9("Fatal error", v217, v218, v219, v220, "MusicKitInternal/MusicMoviePropertyProvider.swift");
          __break(1u);
        }

        type metadata accessor for MusicMoviePropertyProvider(0);
        OUTLINED_FUNCTION_43_6();
        if (!v49)
        {
          goto LABEL_236;
        }

        v174 = &qword_1EC7ED150;
        v175 = &unk_1D565B6C0;
        goto LABEL_143;
      }

      v206 = type metadata accessor for MusicMoviePropertyProvider(0);
      v207 = OUTLINED_FUNCTION_17_42(*(v206 + 124));
      OUTLINED_FUNCTION_132_5(v207, v208, v209, &v295);
      v210 = sub_1D560C328();
      OUTLINED_FUNCTION_1_9(v210);
      if (!v73)
      {
        goto LABEL_231;
      }

      OUTLINED_FUNCTION_45_23();

      v74 = &qword_1EC7EA3B8;
      v75 = &unk_1D561E370;
      v144 = &v295;
    }

LABEL_132:
    v76 = *(v144 - 32);
    goto LABEL_19;
  }

  type metadata accessor for MusicMoviePropertyProvider(0);
  OUTLINED_FUNCTION_51_2();
  v188 = (v187 + v186);
  v189 = v188[1];
  if (v189 == 2)
  {
LABEL_154:
    OUTLINED_FUNCTION_45_23();

    v190 = 0;
    v191 = 0;
  }

  else
  {
    v200 = v188[3];
    v199 = v188[4];
    v201 = v188[2];
    v202 = *v188;
    v190 = swift_allocObject();
    OUTLINED_FUNCTION_45_23();

    *(v190 + 16) = v202;
    *(v190 + 24) = v189 & 1;
    *(v190 + 25) = BYTE1(v189) & 1;
    *(v190 + 32) = v201;
    *(v190 + 40) = v200;
    *(v190 + 48) = v199;
    v191 = &type metadata for PlaybackPosition;
  }

LABEL_162:
  v203 = v289;
  *v289 = v190;
  v203[1] = 0;
  v203[2] = 0;
  v203[3] = v191;
}

uint64_t sub_1D5211DE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  OUTLINED_FUNCTION_82();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D56881E0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_42;
  }

  v5 = v4;
  v6 = qword_1EDD54250;
  swift_retain_n();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_22_44(&qword_1EDD54250);
  }

  v153 = qword_1EDD769D0;
  v7 = sub_1D4EC5794(&qword_1EDD53DF8, &qword_1EC7ECD50, &unk_1D5622F40);
  OUTLINED_FUNCTION_39_0(v7, v8, v9);
  OUTLINED_FUNCTION_77_0();
  if ((v2 & 1) == 0)
  {
    v10 = qword_1EDD542D8;

    if (v10 != -1)
    {
      v11 = OUTLINED_FUNCTION_21_47(&qword_1EDD542D8);
    }

    OUTLINED_FUNCTION_22_9(v11, v12, v13, v14, v15, v16, v17, v18, v115, v125, v135, v5, v153);
    OUTLINED_FUNCTION_77_0();
    if ((v10 & 1) == 0)
    {

      v154 = sub_1D4F84A28();
      v21 = OUTLINED_FUNCTION_39_0(v154, v19, v20);

      if ((v21 & 1) == 0)
      {
        v22 = off_1EDD54320;

        if (v22 != -1)
        {
          v23 = OUTLINED_FUNCTION_20_55(&off_1EDD54320);
        }

        OUTLINED_FUNCTION_22_9(v23, v24, v25, v26, v27, v28, v29, v30, v116, v126, v136, v5, v154);
        OUTLINED_FUNCTION_77_0();
        if ((v22 & 1) == 0)
        {
          v31 = qword_1EDD54238;

          if (v31 != -1)
          {
            v32 = OUTLINED_FUNCTION_19_53(&qword_1EDD54238);
          }

          OUTLINED_FUNCTION_22_9(v32, v33, v34, v35, v36, v37, v38, v39, v117, v127, v137, v145, v155);
          OUTLINED_FUNCTION_77_0();
          if ((v31 & 1) == 0)
          {
            v40 = qword_1EDD54278;

            if (v40 != -1)
            {
              v41 = OUTLINED_FUNCTION_18_58(&qword_1EDD54278);
            }

            OUTLINED_FUNCTION_22_9(v41, v42, v43, v44, v45, v46, v47, v48, v118, v128, v138, v146, v156);
            OUTLINED_FUNCTION_77_0();
            if ((v40 & 1) == 0)
            {
              v52 = qword_1EDD541D0;

              if (v52 != -1)
              {
                v53 = OUTLINED_FUNCTION_34_31(&qword_1EDD541D0);
              }

              OUTLINED_FUNCTION_22_9(v53, v54, v55, v56, v57, v58, v59, v60, v119, v129, v139, v147, v157);
              OUTLINED_FUNCTION_77_0();
              if (v52)
              {
                goto LABEL_38;
              }

              v61 = qword_1EDD54288;

              if (v61 != -1)
              {
                v62 = OUTLINED_FUNCTION_36_32(&qword_1EDD54288);
              }

              OUTLINED_FUNCTION_22_9(v62, v63, v64, v65, v66, v67, v68, v69, v120, v130, v140, v148, v158);
              OUTLINED_FUNCTION_77_0();
              if (v61)
              {
                goto LABEL_38;
              }

              v70 = qword_1EDD54340;

              if (v70 != -1)
              {
                v71 = OUTLINED_FUNCTION_35_36(&qword_1EDD54340);
              }

              OUTLINED_FUNCTION_22_9(v71, v72, v73, v74, v75, v76, v77, v78, v121, v131, v141, v149, v159);
              OUTLINED_FUNCTION_77_0();
              if (v70)
              {
                goto LABEL_38;
              }

              v79 = qword_1EDD54308;

              if (v79 != -1)
              {
                v80 = OUTLINED_FUNCTION_34_39(&qword_1EDD54308);
              }

              OUTLINED_FUNCTION_22_9(v80, v81, v82, v83, v84, v85, v86, v87, v122, v132, v142, v150, v160);
              OUTLINED_FUNCTION_77_0();
              if (v79)
              {
                goto LABEL_38;
              }

              v88 = qword_1EDD54180;

              if (v88 != -1)
              {
                v89 = OUTLINED_FUNCTION_33_38(&qword_1EDD54180);
              }

              OUTLINED_FUNCTION_22_9(v89, v90, v91, v92, v93, v94, v95, v96, v123, v133, v143, v151, v161);
              OUTLINED_FUNCTION_77_0();
              if (v88)
              {
                goto LABEL_38;
              }

              v97 = qword_1EDD54258;

              if (v97 != -1)
              {
                v98 = OUTLINED_FUNCTION_32_38(&qword_1EDD54258);
              }

              OUTLINED_FUNCTION_22_9(v98, v99, v100, v101, v102, v103, v104, v105, v124, v134, v144, v152, v162);
              OUTLINED_FUNCTION_77_0();
              if (v97)
              {
LABEL_38:
                swift_getKeyPath();
                OUTLINED_FUNCTION_73_16();
                sub_1D5218BD0(v106, v107, &unk_1D5644A78);
                OUTLINED_FUNCTION_52();
                sub_1D5612238();
                goto LABEL_19;
              }

              OUTLINED_FUNCTION_11_75();
              sub_1D5218BD0(v108, v109, &protocol conformance descriptor for MusicMovie);

              v163 = sub_1D560D198();
              v112 = OUTLINED_FUNCTION_39_0(v163, v110, v111);

              if ((v112 & 1) == 0)
              {
                while (1)
                {
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
                  sub_1D560CDE8();
                  sub_1D5615D48();
                  OUTLINED_FUNCTION_33_0();
LABEL_42:
                  OUTLINED_FUNCTION_117_9("Fatal error", v113, v114, 0, 0xE000000000000000, "MusicKitInternal/MusicMoviePropertyProvider.swift");
                  __break(1u);
                }
              }
            }
          }
        }
      }
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_73_16();
  sub_1D5218BD0(v49, v50, &unk_1D5644A78);
  OUTLINED_FUNCTION_52();
  sub_1D5612248();
LABEL_19:

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

uint64_t sub_1D52123E8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  *&v67 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  *&v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C28, &unk_1D563B3D0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for MusicMoviePropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E88, &unk_1D5644B58);
  OUTLINED_FUNCTION_33_18();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D5688130);
    v71 = a1;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v64 = 203;
    goto LABEL_44;
  }

  v2 = v27;
  sub_1D4E628D4(a2, &v70);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v65 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v65, v66, 1, v21);
    sub_1D4E50004(v20, &qword_1EC7F0C28, &unk_1D563B3D0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5688170);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v64 = 206;
    goto LABEL_44;
  }

  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  sub_1D515CBC8(v20, v25);
  v28 = qword_1EDD54250;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_22_44(&qword_1EDD54250);
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD769D0);
  sub_1D4EC5794(&qword_1EC7F1E90, &qword_1EC7F1E88, &unk_1D5644B58);
  OUTLINED_FUNCTION_58_23();
  OUTLINED_FUNCTION_155();
  if (v28)
  {

    OUTLINED_FUNCTION_152_5();
    sub_1D515CB6C(v25);
    v29 = v21[12];
LABEL_13:
    v32 = v69;
    if (!v14)
    {
    }

    *(v32 + v29) = v14;
    return result;
  }

  v30 = qword_1EDD542D8;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_21_47(&qword_1EDD542D8);
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD542E0);
  OUTLINED_FUNCTION_58_23();
  OUTLINED_FUNCTION_155();
  if (v30)
  {

    OUTLINED_FUNCTION_152_5();
    sub_1D515CB6C(v25);
    v29 = v21[13];
    goto LABEL_13;
  }

  v31 = sub_1D4F84C5C();
  OUTLINED_FUNCTION_130_9(v31);
  OUTLINED_FUNCTION_155();

  if (v26)
  {

    OUTLINED_FUNCTION_152_5();
    sub_1D515CB6C(v25);
    v29 = v21[15];
    goto LABEL_13;
  }

  v34 = off_1EDD54320;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_20_55(&off_1EDD54320);
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD54328);
  OUTLINED_FUNCTION_58_23();
  OUTLINED_FUNCTION_155();
  if (v34)
  {

    sub_1D4F1C460(v25 + v21[18], v14, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D515CB6C(v25);
    sub_1D560C0A8();
    v35 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_10(v35);
    if (v36)
    {
      v41 = v69;
      sub_1D4F1C460(v69 + v21[18], v16, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_10(v14);
      if (!v36)
      {
        sub_1D4E50004(v14, &unk_1EC7E9CA8, &unk_1D561D1D0);
      }
    }

    else
    {
      (*(*(v34 - 8) + 32))(v16, v14, v34);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v34);
      v41 = v69;
    }

    v42 = &unk_1EC7E9CA8;
    v43 = &unk_1D561D1D0;
    v44 = v41 + v21[18];
    v45 = v16;
    return sub_1D4F1C350(v45, v44, v42, v43);
  }

  v37 = qword_1EDD54238;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_19_53(&qword_1EDD54238);
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD54240);
  v38 = OUTLINED_FUNCTION_58_23();

  if (v38)
  {

    v39 = v67;
    sub_1D4F1C460(v25 + v21[28], v67, &qword_1EC7EAC98, &unk_1D561DA80);
    sub_1D515CB6C(v25);
    v40 = sub_1D5610978();
    OUTLINED_FUNCTION_1(v39);
    if (v36)
    {
      v56 = v69;
      v55 = v68;
      sub_1D4F1C460(v69 + v21[28], v68, &qword_1EC7EAC98, &unk_1D561DA80);
      OUTLINED_FUNCTION_1(v39);
      if (!v36)
      {
        sub_1D4E50004(v39, &qword_1EC7EAC98, &unk_1D561DA80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_1();
      v55 = v68;
      (*(v54 + 32))(v68, v39, v40);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v40);
      v56 = v69;
    }

    v42 = &qword_1EC7EAC98;
    v43 = &unk_1D561DA80;
    v44 = v56 + v21[28];
    v45 = v55;
    return sub_1D4F1C350(v45, v44, v42, v43);
  }

  v46 = qword_1EDD54278;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_18_58(&qword_1EDD54278);
  }

  OUTLINED_FUNCTION_133_5(qword_1EDD769E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  sub_1D4EC5794(&qword_1EDD53DF8, &qword_1EC7ECD50, &unk_1D5622F40);
  v47 = sub_1D5614D18();

  if ((v47 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_75();
    sub_1D5218BD0(v57, v58, &protocol conformance descriptor for MusicMovie);

    v14 = sub_1D560D198();
    OUTLINED_FUNCTION_130_9(v14);
    OUTLINED_FUNCTION_155();

    if ((v26 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_30();
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D56881B0);
        v71 = v2;
        sub_1D5615D48();
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_28();
        v64 = 227;
LABEL_44:
        *&v67 = v64;
        OUTLINED_FUNCTION_117_9("Fatal error", v60, v61, v62, v63, "MusicKitInternal/MusicMoviePropertyProvider.swift");
        __break(1u);
      }
    }

    OUTLINED_FUNCTION_152_5();
    sub_1D515CB6C(v25);
    v29 = v21[44];
    goto LABEL_13;
  }

  v48 = v25 + v21[29];
  v49 = *v48;
  v50 = *(v48 + 8);
  v67 = *(v48 + 24);
  v68 = v50;
  result = sub_1D515CB6C(v25);
  v51 = v68;
  v52 = v21[29];
  if (v68 == 2)
  {
    v49 = *(v69 + v52);
    v51 = *(v69 + v52 + 8);
    v53 = *(v69 + v52 + 24);
  }

  else
  {
    v53 = v67;
  }

  v59 = v69 + v52;
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 24) = v53;
  return result;
}

uint64_t sub_1D5212CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D56449E0;
  if (qword_1EDD54370 != -1)
  {
    OUTLINED_FUNCTION_108_9(&qword_1EDD54370);
  }

  *(v0 + 32) = qword_1EDD76A50;
  v1 = qword_1EDD541B8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_107_9(&qword_1EDD541B8);
  }

  *(v0 + 40) = qword_1EDD76978;
  v2 = qword_1EDD54330;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_106_9(&qword_1EDD54330);
  }

  *(v0 + 48) = qword_1EDD76A30;
  v3 = qword_1EDD541E8;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_89_12(&qword_1EDD541E8);
  }

  *(v0 + 56) = qword_1EDD76990;
  v4 = qword_1EDD54300;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_14_52(&qword_1EDD54300);
  }

  *(v0 + 64) = qword_1EDD76A28;
  v5 = qword_1EDD54198;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_104_13(&qword_1EDD54198);
  }

  *(v0 + 72) = qword_1EDD76968;
  v6 = qword_1EDD542F0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_103_12(&qword_1EDD542F0);
  }

  *(v0 + 80) = qword_1EDD76A20;
  v7 = qword_1EDD541A8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_102_11(&qword_1EDD541A8);
  }

  *(v0 + 88) = qword_1EDD76970;
  v8 = qword_1EDD54250;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_22_44(&qword_1EDD54250);
  }

  *(v0 + 96) = qword_1EDD769D0;
  v9 = qword_1EDD542D8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_21_47(&qword_1EDD542D8);
  }

  *(v0 + 104) = qword_1EDD542E0;
  v10 = qword_1EDD542C8;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_101_7(&qword_1EDD542C8);
  }

  *(v0 + 112) = qword_1EDD76A18;

  *(v0 + 120) = sub_1D4F84A28();
  if (qword_1EDD54360 != -1)
  {
    OUTLINED_FUNCTION_100_9(&qword_1EDD54360);
  }

  *(v0 + 128) = qword_1EDD76A48;
  v11 = qword_1EDD54248;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_99_12(&qword_1EDD54248);
  }

  *(v0 + 136) = qword_1EDD769C8;
  v12 = off_1EDD54320;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_20_55(&off_1EDD54320);
  }

  *(v0 + 144) = qword_1EDD54328;
  v13 = qword_1EDD542C0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_98_12(&qword_1EDD542C0);
  }

  *(v0 + 152) = qword_1EDD76A10;
  v14 = qword_1EDD54218;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_97_12(&qword_1EDD54218);
  }

  *(v0 + 160) = qword_1EDD769B8;
  v15 = qword_1EDD54210;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_96_13(&qword_1EDD54210);
  }

  *(v0 + 168) = qword_1EDD769B0;
  v16 = qword_1EDD54208;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_95_13(&qword_1EDD54208);
  }

  *(v0 + 176) = qword_1EDD769A8;
  v17 = qword_1EDD54200;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_94_14(&qword_1EDD54200);
  }

  *(v0 + 184) = qword_1EDD769A0;
  v18 = qword_1EDD542B8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_93_13(&qword_1EDD542B8);
  }

  *(v0 + 192) = qword_1EDD76A08;
  v19 = qword_1EDD54280;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_92_12(&qword_1EDD54280);
  }

  *(v0 + 200) = qword_1EDD769F0;
  v20 = qword_1EDD542A8;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_90_15(&qword_1EDD542A8);
  }

  *(v0 + 208) = qword_1EDD76A00;
  v21 = qword_1EDD541C0;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_87_13(&qword_1EDD541C0);
  }

  *(v0 + 216) = qword_1EDD76980;
  v22 = qword_1EDD54238;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_19_53(&qword_1EDD54238);
  }

  *(v0 + 224) = qword_1EDD54240;
  v23 = qword_1EDD54278;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_18_58(&qword_1EDD54278);
  }

  *(v0 + 232) = qword_1EDD769E8;
  v24 = qword_1EDD542A0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_85_12(&qword_1EDD542A0);
  }

  *(v0 + 240) = qword_1EDD769F8;
  v25 = qword_1EDD54338;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_84_13(&qword_1EDD54338);
  }

  *(v0 + 248) = qword_1EDD76A38;
  v26 = qword_1EDD54270;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_83_13(&qword_1EDD54270);
  }

  *(v0 + 256) = qword_1EDD769E0;
  v27 = qword_1EDD54228;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_81_19(&qword_1EDD54228);
  }

  *(v0 + 264) = qword_1EDD769C0;
  v28 = qword_1EDD54350;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_79_12(&qword_1EDD54350);
  }

  *(v0 + 272) = qword_1EDD76A40;
  v29 = qword_1EDD54268;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_78_16(&qword_1EDD54268);
  }

  *(v0 + 280) = qword_1EDD769D8;
  v30 = qword_1EDD541E0;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_77_11(&qword_1EDD541E0);
  }

  *(v0 + 288) = qword_1EDD76988;
  v31 = qword_1EDD541F8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_31_30(&qword_1EDD541F8);
  }

  *(v0 + 296) = qword_1EDD76998;
  v32 = qword_1EDD541D0;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_34_31(&qword_1EDD541D0);
  }

  *(v0 + 304) = qword_1EDD541D8;
  v33 = qword_1EDD54288;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_36_32(&qword_1EDD54288);
  }

  *(v0 + 312) = qword_1EDD54290;
  v34 = qword_1EDD54340;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_35_36(&qword_1EDD54340);
  }

  *(v0 + 320) = qword_1EDD54348;
  v35 = qword_1EDD54308;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_34_39(&qword_1EDD54308);
  }

  *(v0 + 328) = qword_1EDD54310;
  v36 = qword_1EDD54180;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_33_38(&qword_1EDD54180);
  }

  *(v0 + 336) = qword_1EDD54188;
  v37 = qword_1EDD54258;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_32_38(&qword_1EDD54258);
  }

  *(v0 + 344) = qword_1EDD54260;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  OUTLINED_FUNCTION_11_75();
  sub_1D5218BD0(v38, v39, &protocol conformance descriptor for MusicMovie);

  result = sub_1D560D198();
  *(v0 + 352) = result;
  qword_1EDD76D30 = v0;
  return result;
}

uint64_t sub_1D5213500(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4();
  v757 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v754 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v752 = v10;
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB670, qword_1D561E830);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v753 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v745 = v14;
  v746 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v744 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v742 = v19;
  v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v743 = v21;
  v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_4();
  v755 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v751 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v750 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  v740 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  v738 = v31;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E98, &qword_1D5644D08);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v749 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  v739 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  v737 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v735 = v39;
  v736 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v734 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v732 = v44;
  v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  v733 = v46;
  OUTLINED_FUNCTION_70_0();
  sub_1D56109F8();
  OUTLINED_FUNCTION_4();
  v727 = v48;
  v728 = v47;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v726 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v50);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  v724 = v52;
  v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v725 = v54;
  OUTLINED_FUNCTION_70_0();
  v722 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v720 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v718 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v716 = v60;
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  v717 = v62;
  OUTLINED_FUNCTION_70_0();
  sub_1D56134E8();
  OUTLINED_FUNCTION_4();
  v711 = v64;
  v712 = v63;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v710 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v66);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_3();
  v708 = v68;
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_3();
  v709 = v70;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613198();
  OUTLINED_FUNCTION_4();
  v703 = v72;
  v704 = v71;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  v702 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v74);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  v700 = v76;
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  v701 = v78;
  OUTLINED_FUNCTION_70_0();
  v760 = sub_1D5613178();
  OUTLINED_FUNCTION_4();
  v696 = v79;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  v695 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v82);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  v759 = v84;
  v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04B8, &unk_1D5637E90);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_3();
  v762 = v86;
  OUTLINED_FUNCTION_70_0();
  v766 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v763 = v87;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  v761 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v91 = OUTLINED_FUNCTION_22(v90);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13();
  v729 = v92;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13_2();
  v765 = v94;
  v764 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  v730 = v96;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13_2();
  v767 = v98;
  OUTLINED_FUNCTION_70_0();
  v772 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v769 = v99;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  v768 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v103 = OUTLINED_FUNCTION_22(v102);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13();
  v713 = v104;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_2();
  v770 = v106;
  v771 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  v714 = v108;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_13_2();
  v773 = v110;
  OUTLINED_FUNCTION_70_0();
  v779 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v776 = v111;
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5_0();
  v774 = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v115 = OUTLINED_FUNCTION_22(v114);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13();
  v721 = v116;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_135();
  v706 = v118;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_135();
  v699 = v120;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13_2();
  v775 = v122;
  v778 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_13();
  v719 = v124;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_135();
  v705 = v126;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_135();
  v698 = v128;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_2();
  v777 = v130;
  OUTLINED_FUNCTION_70_0();
  v785 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v783 = v131;
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  v781 = v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v134);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_13_3();
  v782 = v136;
  v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_13_3();
  v786 = v138;
  OUTLINED_FUNCTION_70_0();
  v139 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v141 = v140;
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5();
  v145 = v144 - v143;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v146);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v691 - v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v151);
  v153 = (&v691 - v152);
  v154 = a1[1];
  v155 = a2[1];
  if (v154)
  {
    if (!v155)
    {
      goto LABEL_30;
    }

    v156 = *a1 == *a2 && v154 == v155;
    if (!v156 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v155)
  {
    goto LABEL_30;
  }

  v692 = v4;
  v157 = type metadata accessor for MusicMoviePropertyProvider(0);
  v780 = a2;
  v158 = *(v157 + 20);
  v159 = a1;
  v160 = *(v150 + 48);
  v693 = v157;
  v694 = v159;
  sub_1D4F1C460(v159 + v158, v153, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F1C460(v780 + v158, v153 + v160, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v153);
  if (v156)
  {
    OUTLINED_FUNCTION_10(v153 + v160);
    if (v156)
    {
      sub_1D4E50004(v153, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_20;
    }

LABEL_18:
    v162 = &qword_1EC7E9FB8;
    v163 = &unk_1D561B9C0;
    v164 = v153;
    goto LABEL_29;
  }

  sub_1D4F1C460(v153, v149, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v153 + v160);
  if (v161)
  {
    (*(v141 + 8))(v149, v139);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_33_1();
  v165(v145, v153 + v160, v139);
  OUTLINED_FUNCTION_69_19();
  sub_1D5218BD0(v166, v167, MEMORY[0x1E6976F80]);
  v168 = sub_1D5614D18();
  v169 = *(v141 + 8);
  v170 = OUTLINED_FUNCTION_131();
  v169(v170);
  (v169)(v149, v139);
  sub_1D4E50004(v153, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v168 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v172 = v693;
  v171 = v694;
  v173 = v693[6];
  v174 = *(v784 + 48);
  v175 = v786;
  sub_1D4F1C460(v694 + v173, v786, &qword_1EC7EDB98, L"X\b\a");
  v176 = v780 + v173;
  v177 = v780;
  sub_1D4F1C460(v176, v175 + v174, &qword_1EC7EDB98, L"X\b\a");
  v178 = v785;
  OUTLINED_FUNCTION_57(v175, 1, v785);
  if (v156)
  {
    OUTLINED_FUNCTION_57(v175 + v174, 1, v178);
    if (v156)
    {
      sub_1D4E50004(v175, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_33;
    }

LABEL_28:
    v162 = &qword_1EC7EF650;
    v163 = &qword_1D5632480;
    v164 = v175;
    goto LABEL_29;
  }

  v179 = v782;
  sub_1D4F1C460(v175, v782, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v175 + v174, 1, v178);
  if (v180)
  {
    (*(v783 + 8))(v179, v178);
    goto LABEL_28;
  }

  v183 = v783;
  v184 = v175 + v174;
  v185 = v781;
  (*(v783 + 32))(v781, v184, v178);
  OUTLINED_FUNCTION_68_16();
  sub_1D5218BD0(v186, v187, MEMORY[0x1E6975940]);
  v188 = v172;
  v189 = v171;
  v190 = v179;
  v191 = sub_1D5614D18();
  v192 = *(v183 + 8);
  v192(v185, v178);
  v193 = v190;
  v171 = v189;
  v172 = v188;
  v192(v193, v178);
  sub_1D4E50004(v786, &qword_1EC7EDB98, L"X\b\a");
  if ((v191 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v194 = v172[7];
  v195 = *(v171 + v194);
  v196 = *(v177 + v194);
  if (v195)
  {
    if (!v196)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4EFBCD0();
    OUTLINED_FUNCTION_120_2();
    if ((v195 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v196)
  {
    goto LABEL_30;
  }

  v197 = v172[8];
  v198 = *(v171 + v197);
  v199 = *(v177 + v197);
  if (v198)
  {
    if (!v199)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4EF828C();
    OUTLINED_FUNCTION_120_2();
    if ((v198 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v199)
  {
    goto LABEL_30;
  }

  v200 = v172[9];
  v201 = *(v177 + v200 + 8);
  if (*(v171 + v200 + 8))
  {
    if (!v201)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_31_0(v171 + v200);
    v204 = v156 && v202 == v203;
    if (!v204 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v201)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_147_6();
  v205 = v777;
  OUTLINED_FUNCTION_45_27();
  sub_1D4F1C460(v206, v207, v208, v209);
  v210 = v780;
  OUTLINED_FUNCTION_45_27();
  v211 = v205;
  sub_1D4F1C460(v212, v213, v214, v215);
  v216 = v205;
  v217 = v779;
  OUTLINED_FUNCTION_57(v216, 1, v779);
  if (v156)
  {
    OUTLINED_FUNCTION_57(v211 + v178, 1, v217);
    if (v156)
    {
      sub_1D4E50004(v211, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_62;
    }

LABEL_60:
    v162 = &qword_1EC7EB578;
    v163 = &unk_1D5644D10;
    v164 = v211;
    goto LABEL_29;
  }

  v218 = v775;
  sub_1D4F1C460(v211, v775, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v211 + v178, 1, v217);
  if (v219)
  {
    OUTLINED_FUNCTION_146_4();
    v220(v218, v217);
    goto LABEL_60;
  }

  v221 = v776;
  OUTLINED_FUNCTION_33_1();
  v222 = v774;
  v223(v774, v211 + v178, v217);
  OUTLINED_FUNCTION_2_107();
  sub_1D5218BD0(v224, v225, MEMORY[0x1E6969550]);
  v226 = sub_1D5614D18();
  v227 = *(v221 + 8);
  v228 = v222;
  v210 = v780;
  v227(v228, v217);
  v227(v218, v217);
  sub_1D4E50004(v211, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v226 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_62:
  v229 = v172[11];
  v230 = (v171 + v229);
  v231 = *(v171 + v229 + 8);
  v232 = (v210 + v229);
  v233 = *(v210 + v229 + 8);
  if (v231)
  {
    if (!v233)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*v230 != *v232)
    {
      LOBYTE(v233) = 1;
    }

    if (v233)
    {
      goto LABEL_30;
    }
  }

  v234 = v172[12];
  v235 = *(v171 + v234);
  v236 = *(v210 + v234);
  if (v235)
  {
    if (!v236)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_120_2();
    if ((v235 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v236)
  {
    goto LABEL_30;
  }

  v237 = v172[13];
  v238 = *(v171 + v237);
  v239 = *(v210 + v237);
  if (v238)
  {
    if (!v239)
    {
      goto LABEL_30;
    }

    v240 = OUTLINED_FUNCTION_63_1();
    sub_1D4EF7EF4(v240, v241);
    OUTLINED_FUNCTION_120_2();
    if ((v238 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v239)
  {
    goto LABEL_30;
  }

  v242 = *(v771 + 48);
  v243 = &unk_1D561DA80;
  v244 = v773;
  OUTLINED_FUNCTION_45_27();
  sub_1D4F1C460(v245, v246, v247, v248);
  OUTLINED_FUNCTION_13_61();
  v249 = OUTLINED_FUNCTION_105();
  v250 = v772;
  OUTLINED_FUNCTION_57(v249, v251, v772);
  if (v156)
  {
    OUTLINED_FUNCTION_10(v242 + v244);
    if (v156)
    {
      sub_1D4E50004(v773, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_88;
    }

LABEL_86:
    v162 = &qword_1EC7EF648;
    v163 = &unk_1D5632470;
    v164 = v773;
    goto LABEL_29;
  }

  sub_1D4F1C460(v244, v770, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_10(v242 + v244);
  if (v252)
  {
    v769[1](v770, v772);
    goto LABEL_86;
  }

  v243 = v769;
  OUTLINED_FUNCTION_33_1();
  v253 = v773;
  v254 = v772;
  v255(v768, v242 + v773, v772);
  OUTLINED_FUNCTION_12_60();
  sub_1D5218BD0(v256, v257, MEMORY[0x1E6975E60]);
  v258 = v770;
  OUTLINED_FUNCTION_151_5();
  v259 = OUTLINED_FUNCTION_41_4();
  v242(v259);
  (v242)(v258, v254);
  sub_1D4E50004(v253, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((v250 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  OUTLINED_FUNCTION_123_6();
  if (v243)
  {
    if (!v250)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4F29174();
    OUTLINED_FUNCTION_120_2();
    if ((v243 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v250)
  {
    goto LABEL_30;
  }

  if (OUTLINED_FUNCTION_53_22(v693[16]))
  {
    if (!v260)
    {
      goto LABEL_30;
    }

    sub_1D4EF81E0();
    if ((v261 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v260)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_86_16();
  if (v156)
  {
    if (v262 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v181 = 0;
    if (v262 == 2 || ((v262 ^ v263) & 1) != 0)
    {
      return v181 & 1;
    }
  }

  v264 = *(v764 + 48);
  OUTLINED_FUNCTION_61_22();
  OUTLINED_FUNCTION_45_27();
  sub_1D4F1C460(v265, v266, v267, v268);
  OUTLINED_FUNCTION_13_61();
  v269 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v269, v270, v766);
  if (!v156)
  {
    v273 = v767;
    sub_1D4F1C460(v767, v765, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v274 = OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_57(v274, v275, v766);
    if (!v276)
    {
      OUTLINED_FUNCTION_33_1();
      v277 = v767;
      v278 = v766;
      v279(v761, v264 + v767, v766);
      OUTLINED_FUNCTION_10_73();
      sub_1D5218BD0(v280, v281, MEMORY[0x1E6968FC8]);
      v282 = v765;
      OUTLINED_FUNCTION_151_5();
      v283 = OUTLINED_FUNCTION_41_4();
      v264(v283);
      (v264)(v282, v278);
      sub_1D4E50004(v277, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v273 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_114;
    }

    (*(v763 + 8))(v765, v766);
LABEL_112:
    v162 = &qword_1EC7E9FB0;
    v163 = &qword_1D562C590;
    v164 = v767;
    goto LABEL_29;
  }

  v271 = OUTLINED_FUNCTION_70_3(v767);
  OUTLINED_FUNCTION_57(v271, v272, v766);
  if (!v156)
  {
    goto LABEL_112;
  }

  sub_1D4E50004(v767, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_114:
  OUTLINED_FUNCTION_86_16();
  if (v156)
  {
    if (v284 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v181 = 0;
    if (v284 == 2 || ((v284 ^ v285) & 1) != 0)
    {
      return v181 & 1;
    }
  }

  OUTLINED_FUNCTION_86_16();
  if (v156)
  {
    if (v286 != 2)
    {
      goto LABEL_30;
    }

LABEL_126:
    OUTLINED_FUNCTION_61_22();
    OUTLINED_FUNCTION_45_27();
    sub_1D4F1C460(v288, v289, v290, v291);
    OUTLINED_FUNCTION_13_61();
    v292 = OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_57(v292, v293, v760);
    if (v156)
    {
      v294 = OUTLINED_FUNCTION_70_3(v762);
      OUTLINED_FUNCTION_57(v294, v295, v760);
      if (v156)
      {
        sub_1D4E50004(v762, &qword_1EC7EC538, &unk_1D5621080);
        goto LABEL_136;
      }
    }

    else
    {
      v296 = v762;
      sub_1D4F1C460(v762, v759, &qword_1EC7EC538, &unk_1D5621080);
      v297 = OUTLINED_FUNCTION_69_1();
      OUTLINED_FUNCTION_57(v297, v298, v760);
      if (!v299)
      {
        OUTLINED_FUNCTION_40_3();
        v300 = v762;
        v301 = OUTLINED_FUNCTION_130_7();
        v302(v301);
        OUTLINED_FUNCTION_66_16();
        v305 = sub_1D5218BD0(v303, v304, MEMORY[0x1E69768C0]);
        OUTLINED_FUNCTION_75_3(v305, v306, v307, v305);
        v308 = OUTLINED_FUNCTION_9_58();
        (unk_1D5621080)(v308);
        v309 = OUTLINED_FUNCTION_26_27();
        (unk_1D5621080)(v309);
        sub_1D4E50004(v300, &qword_1EC7EC538, &unk_1D5621080);
        if ((v296 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_136:
        OUTLINED_FUNCTION_61_22();
        OUTLINED_FUNCTION_45_27();
        sub_1D4F1C460(v310, v311, v312, v313);
        OUTLINED_FUNCTION_13_61();
        v314 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_57(v314, v315, v704);
        if (v156)
        {
          v316 = OUTLINED_FUNCTION_70_3(v701);
          OUTLINED_FUNCTION_57(v316, v317, v704);
          if (v156)
          {
            sub_1D4E50004(v701, &qword_1EC7EC530, &unk_1D5632150);
            goto LABEL_146;
          }
        }

        else
        {
          v318 = v701;
          sub_1D4F1C460(v701, v700, &qword_1EC7EC530, &unk_1D5632150);
          v319 = OUTLINED_FUNCTION_69_1();
          OUTLINED_FUNCTION_57(v319, v320, v704);
          if (!v321)
          {
            OUTLINED_FUNCTION_40_3();
            v322 = v701;
            v323 = OUTLINED_FUNCTION_130_7();
            v324(v323);
            OUTLINED_FUNCTION_72_19();
            v327 = sub_1D5218BD0(v325, v326, MEMORY[0x1E69768F8]);
            OUTLINED_FUNCTION_75_3(v327, v328, v329, v327);
            v330 = OUTLINED_FUNCTION_9_58();
            (unk_1D5632150)(v330);
            v331 = OUTLINED_FUNCTION_26_27();
            (unk_1D5632150)(v331);
            sub_1D4E50004(v322, &qword_1EC7EC530, &unk_1D5632150);
            if ((v318 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_146:
            v332 = *(v707 + 48);
            OUTLINED_FUNCTION_61_22();
            OUTLINED_FUNCTION_45_27();
            sub_1D4F1C460(v333, v334, v335, v336);
            OUTLINED_FUNCTION_13_61();
            v337 = OUTLINED_FUNCTION_105();
            OUTLINED_FUNCTION_57(v337, v338, v712);
            if (v156)
            {
              v339 = OUTLINED_FUNCTION_70_3(v709);
              OUTLINED_FUNCTION_57(v339, v340, v712);
              if (v156)
              {
                sub_1D4E50004(v709, &qword_1EC7EC528, &unk_1D5621070);
                goto LABEL_156;
              }
            }

            else
            {
              v341 = v709;
              sub_1D4F1C460(v709, v708, &qword_1EC7EC528, &unk_1D5621070);
              v342 = OUTLINED_FUNCTION_69_1();
              OUTLINED_FUNCTION_57(v342, v343, v712);
              if (!v344)
              {
                OUTLINED_FUNCTION_40_3();
                v345 = v709;
                v346 = OUTLINED_FUNCTION_130_7();
                v332 = v712;
                v347(v346);
                OUTLINED_FUNCTION_71_16();
                v350 = sub_1D5218BD0(v348, v349, MEMORY[0x1E6976A28]);
                OUTLINED_FUNCTION_75_3(v350, v351, v352, v350);
                v353 = OUTLINED_FUNCTION_9_58();
                (unk_1D5621070)(v353);
                v354 = OUTLINED_FUNCTION_26_27();
                (unk_1D5621070)(v354);
                sub_1D4E50004(v345, &qword_1EC7EC528, &unk_1D5621070);
                if ((v341 & 1) == 0)
                {
                  goto LABEL_30;
                }

LABEL_156:
                OUTLINED_FUNCTION_147_6();
                OUTLINED_FUNCTION_61_22();
                v355 = v698;
                OUTLINED_FUNCTION_45_27();
                sub_1D4F1C460(v356, v357, v358, v359);
                OUTLINED_FUNCTION_13_61();
                OUTLINED_FUNCTION_29_39(v355);
                if (v156)
                {
                  OUTLINED_FUNCTION_29_39(v698 + v332);
                  if (v156)
                  {
                    sub_1D4E50004(v698, &qword_1EC7EA3B8, &unk_1D561E370);
                    goto LABEL_166;
                  }
                }

                else
                {
                  v360 = v698;
                  sub_1D4F1C460(v698, v699, &qword_1EC7EA3B8, &unk_1D561E370);
                  OUTLINED_FUNCTION_29_39(v360 + v332);
                  if (!v361)
                  {
                    OUTLINED_FUNCTION_33_1();
                    v363 = v698;
                    v364 = OUTLINED_FUNCTION_128_8();
                    v365(v364);
                    OUTLINED_FUNCTION_2_107();
                    sub_1D5218BD0(v366, v367, MEMORY[0x1E6969550]);
                    OUTLINED_FUNCTION_72_15();
                    v368 = OUTLINED_FUNCTION_41_4();
                    (v332)(v368);
                    v369 = OUTLINED_FUNCTION_132_1();
                    (v332)(v369);
                    sub_1D4E50004(v363, &qword_1EC7EA3B8, &unk_1D561E370);
                    if ((v360 & 1) == 0)
                    {
                      goto LABEL_30;
                    }

LABEL_166:
                    OUTLINED_FUNCTION_147_6();
                    OUTLINED_FUNCTION_61_22();
                    v370 = v705;
                    OUTLINED_FUNCTION_45_27();
                    sub_1D4F1C460(v371, v372, v373, v374);
                    OUTLINED_FUNCTION_13_61();
                    OUTLINED_FUNCTION_29_39(v370);
                    if (v156)
                    {
                      OUTLINED_FUNCTION_29_39(v705 + v332);
                      if (v156)
                      {
                        sub_1D4E50004(v705, &qword_1EC7EA3B8, &unk_1D561E370);
                        goto LABEL_176;
                      }
                    }

                    else
                    {
                      v375 = v705;
                      sub_1D4F1C460(v705, v706, &qword_1EC7EA3B8, &unk_1D561E370);
                      OUTLINED_FUNCTION_29_39(v375 + v332);
                      if (!v376)
                      {
                        OUTLINED_FUNCTION_33_1();
                        v378 = v705;
                        v379 = OUTLINED_FUNCTION_128_8();
                        v380(v379);
                        OUTLINED_FUNCTION_2_107();
                        sub_1D5218BD0(v381, v382, MEMORY[0x1E6969550]);
                        OUTLINED_FUNCTION_72_15();
                        v383 = OUTLINED_FUNCTION_41_4();
                        (v332)(v383);
                        v384 = OUTLINED_FUNCTION_132_1();
                        (v332)(v384);
                        sub_1D4E50004(v378, &qword_1EC7EA3B8, &unk_1D561E370);
                        if ((v375 & 1) == 0)
                        {
                          goto LABEL_30;
                        }

LABEL_176:
                        v385 = &qword_1EC7EF5D8;
                        OUTLINED_FUNCTION_61_22();
                        OUTLINED_FUNCTION_45_27();
                        sub_1D4F1C460(v386, v387, v388, v389);
                        OUTLINED_FUNCTION_13_61();
                        v390 = OUTLINED_FUNCTION_105();
                        OUTLINED_FUNCTION_57(v390, v391, v722);
                        if (v156)
                        {
                          v392 = OUTLINED_FUNCTION_70_3(v717);
                          OUTLINED_FUNCTION_57(v392, v393, v722);
                          if (v156)
                          {
                            sub_1D4E50004(v717, &qword_1EC7EF5D8, &unk_1D5632160);
                            goto LABEL_186;
                          }
                        }

                        else
                        {
                          v385 = v717;
                          sub_1D4F1C460(v717, v716, &qword_1EC7EF5D8, &unk_1D5632160);
                          v394 = OUTLINED_FUNCTION_69_1();
                          OUTLINED_FUNCTION_57(v394, v395, v722);
                          if (!v396)
                          {
                            OUTLINED_FUNCTION_40_3();
                            v397 = v717;
                            v398 = OUTLINED_FUNCTION_130_7();
                            v399(v398);
                            OUTLINED_FUNCTION_70_15();
                            v402 = sub_1D5218BD0(v400, v401, MEMORY[0x1E69774B0]);
                            OUTLINED_FUNCTION_75_3(v402, v403, v404, v402);
                            v405 = OUTLINED_FUNCTION_9_58();
                            (unk_1D5632160)(v405);
                            v406 = OUTLINED_FUNCTION_26_27();
                            (unk_1D5632160)(v406);
                            sub_1D4E50004(v397, &qword_1EC7EF5D8, &unk_1D5632160);
                            if ((v385 & 1) == 0)
                            {
                              goto LABEL_30;
                            }

LABEL_186:
                            OUTLINED_FUNCTION_123_6();
                            if (&unk_1D5632160)
                            {
                              if (!v385)
                              {
                                goto LABEL_30;
                              }

                              v407 = OUTLINED_FUNCTION_63_1();
                              sub_1D4EF84DC(v407, v408);
                              OUTLINED_FUNCTION_120_2();
                              if ((&unk_1D5632160 & 1) == 0)
                              {
                                goto LABEL_30;
                              }
                            }

                            else if (v385)
                            {
                              goto LABEL_30;
                            }

                            v409 = *(v771 + 48);
                            OUTLINED_FUNCTION_61_22();
                            OUTLINED_FUNCTION_45_27();
                            sub_1D4F1C460(v410, v411, v412, v413);
                            OUTLINED_FUNCTION_13_61();
                            v414 = OUTLINED_FUNCTION_105();
                            OUTLINED_FUNCTION_57(v414, v415, v772);
                            if (v156)
                            {
                              v416 = OUTLINED_FUNCTION_70_3(v714);
                              OUTLINED_FUNCTION_57(v416, v417, v772);
                              if (v156)
                              {
                                sub_1D4E50004(v714, &qword_1EC7EAC98, &unk_1D561DA80);
                                goto LABEL_201;
                              }
                            }

                            else
                            {
                              v418 = v714;
                              sub_1D4F1C460(v714, v713, &qword_1EC7EAC98, &unk_1D561DA80);
                              v419 = OUTLINED_FUNCTION_69_1();
                              OUTLINED_FUNCTION_57(v419, v420, v772);
                              if (!v421)
                              {
                                OUTLINED_FUNCTION_40_3();
                                v422 = v714;
                                v423(v768, v714 + v409, v772);
                                OUTLINED_FUNCTION_12_60();
                                v426 = sub_1D5218BD0(v424, v425, MEMORY[0x1E6975E60]);
                                OUTLINED_FUNCTION_75_3(v426, v427, v428, v426);
                                v429 = OUTLINED_FUNCTION_9_58();
                                (unk_1D561DA80)(v429);
                                v430 = OUTLINED_FUNCTION_26_27();
                                (unk_1D561DA80)(v430);
                                sub_1D4E50004(v422, &qword_1EC7EAC98, &unk_1D561DA80);
                                if ((v418 & 1) == 0)
                                {
                                  goto LABEL_30;
                                }

LABEL_201:
                                v431 = v693[29];
                                v432 = *(v694 + v431);
                                v433 = *(v694 + v431 + 8);
                                v434 = *(v694 + v431 + 16);
                                v435 = *(v694 + v431 + 24);
                                v436 = *(v694 + v431 + 32);
                                v437 = v780 + v431;
                                v438 = *v437;
                                *&v797 = v432;
                                *(&v797 + 1) = v433;
                                *&v798 = v434;
                                *(&v798 + 1) = v435;
                                *&v799 = v436;
                                *(&v799 + 1) = v438;
                                v439 = *(v437 + 8);
                                v440 = *(v437 + 24);
                                v800 = v439;
                                v801 = v440;
                                if (v433 == 2)
                                {
                                  if (v439 != 2)
                                  {
                                    goto LABEL_30;
                                  }
                                }

                                else
                                {
                                  *&v815 = v432;
                                  *(&v815 + 1) = v433;
                                  *&v816 = v434;
                                  *(&v816 + 1) = v435;
                                  *&v817 = v436;
                                  if (v439 == 2 || !static PlaybackPosition.== infix(_:_:)(&v815, &v799 + 8))
                                  {
                                    goto LABEL_30;
                                  }
                                }

                                v441 = *(v723 + 48);
                                OUTLINED_FUNCTION_61_22();
                                OUTLINED_FUNCTION_45_27();
                                sub_1D4F1C460(v442, v443, v444, v445);
                                OUTLINED_FUNCTION_13_61();
                                v446 = OUTLINED_FUNCTION_105();
                                OUTLINED_FUNCTION_57(v446, v447, v728);
                                if (v156)
                                {
                                  v448 = OUTLINED_FUNCTION_70_3(v725);
                                  OUTLINED_FUNCTION_57(v448, v449, v728);
                                  if (v156)
                                  {
                                    sub_1D4E50004(v725, &qword_1EC7EB5C0, &unk_1D56223C0);
                                    goto LABEL_216;
                                  }
                                }

                                else
                                {
                                  v450 = v725;
                                  sub_1D4F1C460(v725, v724, &qword_1EC7EB5C0, &unk_1D56223C0);
                                  v451 = OUTLINED_FUNCTION_69_1();
                                  OUTLINED_FUNCTION_57(v451, v452, v728);
                                  if (!v453)
                                  {
                                    OUTLINED_FUNCTION_40_3();
                                    v454 = v725;
                                    v455 = OUTLINED_FUNCTION_130_7();
                                    v441 = v728;
                                    v456(v455);
                                    OUTLINED_FUNCTION_67_24();
                                    v459 = sub_1D5218BD0(v457, v458, MEMORY[0x1E6975EA0]);
                                    OUTLINED_FUNCTION_75_3(v459, v460, v461, v459);
                                    v462 = OUTLINED_FUNCTION_9_58();
                                    (unk_1D56223C0)(v462);
                                    v463 = OUTLINED_FUNCTION_26_27();
                                    (unk_1D56223C0)(v463);
                                    sub_1D4E50004(v454, &qword_1EC7EB5C0, &unk_1D56223C0);
                                    if ((v450 & 1) == 0)
                                    {
                                      goto LABEL_30;
                                    }

LABEL_216:
                                    OUTLINED_FUNCTION_147_6();
                                    OUTLINED_FUNCTION_61_22();
                                    v464 = v719;
                                    OUTLINED_FUNCTION_45_27();
                                    sub_1D4F1C460(v465, v466, v467, v468);
                                    OUTLINED_FUNCTION_13_61();
                                    OUTLINED_FUNCTION_29_39(v464);
                                    if (v156)
                                    {
                                      OUTLINED_FUNCTION_29_39(v719 + v441);
                                      if (v156)
                                      {
                                        sub_1D4E50004(v719, &qword_1EC7EA3B8, &unk_1D561E370);
                                        goto LABEL_226;
                                      }
                                    }

                                    else
                                    {
                                      v469 = v719;
                                      sub_1D4F1C460(v719, v721, &qword_1EC7EA3B8, &unk_1D561E370);
                                      OUTLINED_FUNCTION_29_39(v469 + v441);
                                      if (!v470)
                                      {
                                        OUTLINED_FUNCTION_40_3();
                                        v472 = v719;
                                        v473 = OUTLINED_FUNCTION_128_8();
                                        v474(v473);
                                        OUTLINED_FUNCTION_2_107();
                                        sub_1D5218BD0(v475, v476, MEMORY[0x1E6969550]);
                                        OUTLINED_FUNCTION_119_7();
                                        v477 = OUTLINED_FUNCTION_9_58();
                                        (unk_1D561E370)(v477);
                                        v478 = OUTLINED_FUNCTION_215();
                                        (unk_1D561E370)(v478);
                                        sub_1D4E50004(v472, &qword_1EC7EA3B8, &unk_1D561E370);
                                        if ((v469 & 1) == 0)
                                        {
                                          goto LABEL_30;
                                        }

LABEL_226:
                                        OUTLINED_FUNCTION_24_45();
                                        if (v481)
                                        {
                                          if (!v479)
                                          {
                                            goto LABEL_30;
                                          }

                                          OUTLINED_FUNCTION_31_0(v480);
                                          v484 = v156 && v482 == v483;
                                          if (!v484 && (sub_1D5616168() & 1) == 0)
                                          {
                                            goto LABEL_30;
                                          }
                                        }

                                        else if (v479)
                                        {
                                          goto LABEL_30;
                                        }

                                        OUTLINED_FUNCTION_24_45();
                                        if (v487)
                                        {
                                          if (!v485)
                                          {
                                            goto LABEL_30;
                                          }

                                          OUTLINED_FUNCTION_31_0(v486);
                                          v490 = v156 && v488 == v489;
                                          if (!v490 && (sub_1D5616168() & 1) == 0)
                                          {
                                            goto LABEL_30;
                                          }
                                        }

                                        else if (v485)
                                        {
                                          goto LABEL_30;
                                        }

                                        OUTLINED_FUNCTION_24_45();
                                        if (v493)
                                        {
                                          if (!v491)
                                          {
                                            goto LABEL_30;
                                          }

                                          OUTLINED_FUNCTION_31_0(v492);
                                          v496 = v156 && v494 == v495;
                                          if (!v496 && (sub_1D5616168() & 1) == 0)
                                          {
                                            goto LABEL_30;
                                          }
                                        }

                                        else if (v491)
                                        {
                                          goto LABEL_30;
                                        }

                                        v497 = v693[35];
                                        v498 = (v694 + v497);
                                        v499 = *(v694 + v497 + 16);
                                        v811 = *(v694 + v497);
                                        v812 = v499;
                                        v500 = *(v694 + v497 + 16);
                                        v501 = *(v694 + v497 + 48);
                                        v813 = *(v694 + v497 + 32);
                                        v814 = v501;
                                        v502 = (v780 + v497);
                                        v503 = v502[1];
                                        v815 = *v502;
                                        v816 = v503;
                                        v504 = v502[1];
                                        v505 = v502[3];
                                        v817 = v502[2];
                                        v818 = v505;
                                        v808 = v500;
                                        v809 = v813;
                                        v810 = v498[3];
                                        v506 = v811;
                                        v507 = v815;
                                        v805 = v504;
                                        v806 = v817;
                                        v807 = v502[3];
                                        if (*(&v811 + 1))
                                        {
                                          v797 = v811;
                                          v508 = v498[2];
                                          v798 = v498[1];
                                          v799 = v508;
                                          v800 = v498[3];
                                          v793 = v811;
                                          v794 = v798;
                                          v795 = v508;
                                          v796 = v800;
                                          if (*(&v815 + 1))
                                          {
                                            v509 = v502[2];
                                            v790 = v502[1];
                                            v791 = v509;
                                            v792 = v502[3];
                                            v789 = v815;
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v510, v511, v512, v513);
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v514, v515, v516, v517);
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v518, v519, v520, v521);
                                            v522 = static VideoSupportedLocales.== infix(_:_:)(&v793, &v789);
                                            v787[0] = v789;
                                            v787[1] = v790;
                                            v787[2] = v791;
                                            v787[3] = v792;
                                            sub_1D5000CD8(v787);
                                            v788[0] = v793;
                                            v788[1] = v794;
                                            v788[2] = v795;
                                            v788[3] = v796;
                                            sub_1D5000CD8(v788);
                                            v789 = v506;
                                            v790 = v808;
                                            v791 = v809;
                                            v792 = v810;
                                            sub_1D4E50004(&v789, &qword_1EC7EDBA0, &unk_1D5637EA0);
                                            if ((v522 & 1) == 0)
                                            {
                                              goto LABEL_30;
                                            }

LABEL_262:
                                            OUTLINED_FUNCTION_24_45();
                                            if (v554)
                                            {
                                              if (!v552)
                                              {
                                                goto LABEL_30;
                                              }

                                              OUTLINED_FUNCTION_31_0(v553);
                                              v557 = v156 && v555 == v556;
                                              if (!v557 && (sub_1D5616168() & 1) == 0)
                                              {
                                                goto LABEL_30;
                                              }
                                            }

                                            else if (v552)
                                            {
                                              goto LABEL_30;
                                            }

                                            v558 = *(v764 + 48);
                                            OUTLINED_FUNCTION_61_22();
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v559, v560, v561, v562);
                                            OUTLINED_FUNCTION_13_61();
                                            v563 = OUTLINED_FUNCTION_105();
                                            OUTLINED_FUNCTION_57(v563, v564, v766);
                                            if (v156)
                                            {
                                              v565 = OUTLINED_FUNCTION_70_3(v730);
                                              OUTLINED_FUNCTION_57(v565, v566, v766);
                                              if (v156)
                                              {
                                                sub_1D4E50004(v730, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                goto LABEL_281;
                                              }
                                            }

                                            else
                                            {
                                              v567 = v730;
                                              sub_1D4F1C460(v730, v729, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                              v568 = OUTLINED_FUNCTION_69_1();
                                              OUTLINED_FUNCTION_57(v568, v569, v766);
                                              if (!v570)
                                              {
                                                OUTLINED_FUNCTION_40_3();
                                                v571 = v730;
                                                v572(v761, v730 + v558, v766);
                                                OUTLINED_FUNCTION_10_73();
                                                v575 = sub_1D5218BD0(v573, v574, MEMORY[0x1E6968FC8]);
                                                OUTLINED_FUNCTION_75_3(v575, v576, v577, v575);
                                                v578 = OUTLINED_FUNCTION_9_58();
                                                (unk_1D561D1D0)(v578);
                                                v579 = OUTLINED_FUNCTION_26_27();
                                                (unk_1D561D1D0)(v579);
                                                sub_1D4E50004(v571, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                if ((v567 & 1) == 0)
                                                {
                                                  goto LABEL_30;
                                                }

LABEL_281:
                                                OUTLINED_FUNCTION_61_22();
                                                OUTLINED_FUNCTION_45_27();
                                                sub_1D4F1C460(v580, v581, v582, v583);
                                                OUTLINED_FUNCTION_13_61();
                                                v584 = OUTLINED_FUNCTION_105();
                                                OUTLINED_FUNCTION_57(v584, v585, v736);
                                                if (v156)
                                                {
                                                  v586 = OUTLINED_FUNCTION_70_3(v733);
                                                  OUTLINED_FUNCTION_57(v586, v587, v736);
                                                  if (v156)
                                                  {
                                                    sub_1D4E50004(v733, &qword_1EC7EA788, &unk_1D56223A0);
                                                    goto LABEL_291;
                                                  }
                                                }

                                                else
                                                {
                                                  v588 = v733;
                                                  sub_1D4F1C460(v733, v732, &qword_1EC7EA788, &unk_1D56223A0);
                                                  v589 = OUTLINED_FUNCTION_69_1();
                                                  OUTLINED_FUNCTION_57(v589, v590, v736);
                                                  if (!v591)
                                                  {
                                                    OUTLINED_FUNCTION_40_3();
                                                    v592 = v733;
                                                    v593 = OUTLINED_FUNCTION_130_7();
                                                    v594(v593);
                                                    v595 = sub_1D4F217AC();
                                                    OUTLINED_FUNCTION_75_3(v595, v596, v597, v595);
                                                    v598 = OUTLINED_FUNCTION_9_58();
                                                    (unk_1D56223A0)(v598);
                                                    v599 = OUTLINED_FUNCTION_26_27();
                                                    (unk_1D56223A0)(v599);
                                                    sub_1D4E50004(v592, &qword_1EC7EA788, &unk_1D56223A0);
                                                    if ((v588 & 1) == 0)
                                                    {
                                                      goto LABEL_30;
                                                    }

LABEL_291:
                                                    v600 = *(v747 + 48);
                                                    OUTLINED_FUNCTION_61_22();
                                                    v601 = v737;
                                                    OUTLINED_FUNCTION_45_27();
                                                    sub_1D4F1C460(v602, v603, v604, v605);
                                                    OUTLINED_FUNCTION_13_61();
                                                    OUTLINED_FUNCTION_28_44(v601);
                                                    if (v156)
                                                    {
                                                      OUTLINED_FUNCTION_28_44(v600 + v737);
                                                      if (v156)
                                                      {
                                                        sub_1D4E50004(v737, &qword_1EC7EF308, &qword_1D5631048);
                                                        goto LABEL_301;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v606 = v737;
                                                      sub_1D4F1C460(v737, v738, &qword_1EC7EF308, &qword_1D5631048);
                                                      OUTLINED_FUNCTION_28_44(v600 + v606);
                                                      if (!v607)
                                                      {
                                                        OUTLINED_FUNCTION_33_1();
                                                        v608 = v737;
                                                        v609 = OUTLINED_FUNCTION_129_5();
                                                        v610(v609);
                                                        sub_1D5218A68();
                                                        OUTLINED_FUNCTION_72_15();
                                                        v611 = OUTLINED_FUNCTION_41_4();
                                                        v600(v611);
                                                        v612 = OUTLINED_FUNCTION_132_1();
                                                        v600(v612);
                                                        sub_1D4E50004(v608, &qword_1EC7EF308, &qword_1D5631048);
                                                        if ((v606 & 1) == 0)
                                                        {
                                                          goto LABEL_30;
                                                        }

LABEL_301:
                                                        v613 = *(v747 + 48);
                                                        OUTLINED_FUNCTION_61_22();
                                                        v614 = v739;
                                                        OUTLINED_FUNCTION_45_27();
                                                        sub_1D4F1C460(v615, v616, v617, v618);
                                                        OUTLINED_FUNCTION_13_61();
                                                        OUTLINED_FUNCTION_28_44(v614);
                                                        if (v156)
                                                        {
                                                          OUTLINED_FUNCTION_28_44(v613 + v739);
                                                          if (v156)
                                                          {
                                                            sub_1D4E50004(v739, &qword_1EC7EF308, &qword_1D5631048);
                                                            goto LABEL_311;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v619 = v739;
                                                          sub_1D4F1C460(v739, v740, &qword_1EC7EF308, &qword_1D5631048);
                                                          OUTLINED_FUNCTION_28_44(v613 + v619);
                                                          if (!v620)
                                                          {
                                                            OUTLINED_FUNCTION_33_1();
                                                            v621 = v739;
                                                            v622 = OUTLINED_FUNCTION_129_5();
                                                            v623(v622);
                                                            sub_1D5218A68();
                                                            OUTLINED_FUNCTION_72_15();
                                                            v624 = OUTLINED_FUNCTION_41_4();
                                                            v613(v624);
                                                            v625 = OUTLINED_FUNCTION_132_1();
                                                            v613(v625);
                                                            sub_1D4E50004(v621, &qword_1EC7EF308, &qword_1D5631048);
                                                            if ((v619 & 1) == 0)
                                                            {
                                                              goto LABEL_30;
                                                            }

LABEL_311:
                                                            OUTLINED_FUNCTION_61_22();
                                                            OUTLINED_FUNCTION_45_27();
                                                            sub_1D4F1C460(v626, v627, v628, v629);
                                                            OUTLINED_FUNCTION_13_61();
                                                            v630 = OUTLINED_FUNCTION_105();
                                                            OUTLINED_FUNCTION_57(v630, v631, v746);
                                                            if (v156)
                                                            {
                                                              v632 = OUTLINED_FUNCTION_70_3(v743);
                                                              OUTLINED_FUNCTION_57(v632, v633, v746);
                                                              if (v156)
                                                              {
                                                                sub_1D4E50004(v743, &off_1EC7EB5B0, &unk_1D5632170);
                                                                goto LABEL_321;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v634 = v743;
                                                              sub_1D4F1C460(v743, v742, &off_1EC7EB5B0, &unk_1D5632170);
                                                              v635 = OUTLINED_FUNCTION_69_1();
                                                              OUTLINED_FUNCTION_57(v635, v636, v746);
                                                              if (!v637)
                                                              {
                                                                OUTLINED_FUNCTION_40_3();
                                                                v638 = v743;
                                                                v639 = OUTLINED_FUNCTION_130_7();
                                                                v640(v639);
                                                                v641 = sub_1D512BB04();
                                                                OUTLINED_FUNCTION_75_3(v641, v642, v643, v641);
                                                                v644 = OUTLINED_FUNCTION_9_58();
                                                                (unk_1D5632170)(v644);
                                                                v645 = OUTLINED_FUNCTION_26_27();
                                                                (unk_1D5632170)(v645);
                                                                sub_1D4E50004(v638, &off_1EC7EB5B0, &unk_1D5632170);
                                                                if ((v634 & 1) == 0)
                                                                {
                                                                  goto LABEL_30;
                                                                }

LABEL_321:
                                                                OUTLINED_FUNCTION_61_22();
                                                                OUTLINED_FUNCTION_45_27();
                                                                sub_1D4F1C460(v646, v647, v648, v649);
                                                                OUTLINED_FUNCTION_13_61();
                                                                v650 = OUTLINED_FUNCTION_105();
                                                                OUTLINED_FUNCTION_57(v650, v651, v692);
                                                                if (v156)
                                                                {
                                                                  v652 = OUTLINED_FUNCTION_70_3(v753);
                                                                  OUTLINED_FUNCTION_57(v652, v653, v692);
                                                                  if (v156)
                                                                  {
                                                                    sub_1D4E50004(v753, &qword_1EC7EB620, &unk_1D561E5B0);
LABEL_331:
                                                                    v666 = *(v747 + 48);
                                                                    v667 = &qword_1EC7EF308;
                                                                    OUTLINED_FUNCTION_61_22();
                                                                    v668 = v749;
                                                                    OUTLINED_FUNCTION_45_27();
                                                                    sub_1D4F1C460(v669, v670, v671, v672);
                                                                    OUTLINED_FUNCTION_13_61();
                                                                    OUTLINED_FUNCTION_28_44(v668);
                                                                    if (v156)
                                                                    {
                                                                      OUTLINED_FUNCTION_28_44(v749 + v666);
                                                                      if (v156)
                                                                      {
                                                                        sub_1D4E50004(v749, &qword_1EC7EF308, &qword_1D5631048);
LABEL_341:
                                                                        OUTLINED_FUNCTION_123_6();
                                                                        if (&qword_1D5631048)
                                                                        {
                                                                          if (!v667)
                                                                          {
                                                                            goto LABEL_30;
                                                                          }

                                                                          v679 = OUTLINED_FUNCTION_63_1();
                                                                          sub_1D4EF7D1C(v679, v680);
                                                                          OUTLINED_FUNCTION_120_2();
                                                                          if ((&qword_1D5631048 & 1) == 0)
                                                                          {
                                                                            goto LABEL_30;
                                                                          }
                                                                        }

                                                                        else if (v667)
                                                                        {
                                                                          goto LABEL_30;
                                                                        }

                                                                        OUTLINED_FUNCTION_53_22(v693[45]);
                                                                        sub_1D4EF6F7C();
                                                                        if (v681 & 1) != 0 && (sub_1D560D6E8() & 1) != 0 && (sub_1D4F3B22C())
                                                                        {
                                                                          OUTLINED_FUNCTION_24_45();
                                                                          if (v684)
                                                                          {
                                                                            if (v682)
                                                                            {
                                                                              OUTLINED_FUNCTION_31_0(v683);
                                                                              v687 = v156 && v685 == v686;
                                                                              if (v687 || (sub_1D5616168() & 1) != 0)
                                                                              {
LABEL_358:
                                                                                OUTLINED_FUNCTION_53_22(v693[49]);
                                                                                sub_1D4F286E0();
                                                                                if (v688)
                                                                                {
                                                                                  OUTLINED_FUNCTION_53_22(v693[50]);
                                                                                  sub_1D4F286E0();
                                                                                  if (v689)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_53_22(v693[51]);
                                                                                    sub_1D4F286E0();
                                                                                    if (v690)
                                                                                    {
                                                                                      OUTLINED_FUNCTION_53_22(v693[52]);
                                                                                      sub_1D4F286E0();
                                                                                      return v181 & 1;
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }

                                                                          else if (!v682)
                                                                          {
                                                                            goto LABEL_358;
                                                                          }
                                                                        }

LABEL_30:
                                                                        v181 = 0;
                                                                        return v181 & 1;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v667 = v749;
                                                                      sub_1D4F1C460(v749, v750, &qword_1EC7EF308, &qword_1D5631048);
                                                                      OUTLINED_FUNCTION_28_44(v667 + v666);
                                                                      if (!v673)
                                                                      {
                                                                        OUTLINED_FUNCTION_40_3();
                                                                        v674 = v749;
                                                                        v675 = OUTLINED_FUNCTION_129_5();
                                                                        v676(v675);
                                                                        sub_1D5218A68();
                                                                        OUTLINED_FUNCTION_119_7();
                                                                        v677 = OUTLINED_FUNCTION_9_58();
                                                                        (qword_1D5631048)(v677);
                                                                        v678 = OUTLINED_FUNCTION_215();
                                                                        (qword_1D5631048)(v678);
                                                                        sub_1D4E50004(v674, &qword_1EC7EF308, &qword_1D5631048);
                                                                        if ((v667 & 1) == 0)
                                                                        {
                                                                          goto LABEL_30;
                                                                        }

                                                                        goto LABEL_341;
                                                                      }

                                                                      (*(v755 + 8))(v750, v756);
                                                                    }

                                                                    v162 = &qword_1EC7F1E98;
                                                                    v163 = &qword_1D5644D08;
                                                                    v164 = v749;
LABEL_29:
                                                                    sub_1D4E50004(v164, v162, v163);
                                                                    goto LABEL_30;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v654 = v753;
                                                                  sub_1D4F1C460(v753, v752, &qword_1EC7EB620, &unk_1D561E5B0);
                                                                  v655 = OUTLINED_FUNCTION_69_1();
                                                                  OUTLINED_FUNCTION_57(v655, v656, v692);
                                                                  if (!v657)
                                                                  {
                                                                    OUTLINED_FUNCTION_40_3();
                                                                    v658 = v753;
                                                                    v659 = OUTLINED_FUNCTION_130_7();
                                                                    v660(v659);
                                                                    v661 = sub_1D4F21914();
                                                                    OUTLINED_FUNCTION_75_3(v661, v662, v663, v661);
                                                                    v664 = OUTLINED_FUNCTION_9_58();
                                                                    (unk_1D561E5B0)(v664);
                                                                    v665 = OUTLINED_FUNCTION_26_27();
                                                                    (unk_1D561E5B0)(v665);
                                                                    sub_1D4E50004(v658, &qword_1EC7EB620, &unk_1D561E5B0);
                                                                    if ((v654 & 1) == 0)
                                                                    {
                                                                      goto LABEL_30;
                                                                    }

                                                                    goto LABEL_331;
                                                                  }

                                                                  (*(v757 + 8))(v752, v692);
                                                                }

                                                                v162 = &qword_1EC7EB670;
                                                                v163 = qword_1D561E830;
                                                                v164 = v753;
                                                                goto LABEL_29;
                                                              }

                                                              (*(v745 + 8))(v742, v746);
                                                            }

                                                            v162 = &qword_1EC7EF608;
                                                            v163 = &unk_1D5632420;
                                                            v164 = v743;
                                                            goto LABEL_29;
                                                          }

                                                          (*(v755 + 8))(v740, v756);
                                                        }

                                                        v162 = &qword_1EC7F1E98;
                                                        v163 = &qword_1D5644D08;
                                                        v164 = v739;
                                                        goto LABEL_29;
                                                      }

                                                      (*(v755 + 8))(v738, v756);
                                                    }

                                                    v162 = &qword_1EC7F1E98;
                                                    v163 = &qword_1D5644D08;
                                                    v164 = v737;
                                                    goto LABEL_29;
                                                  }

                                                  (*(v735 + 8))(v732, v736);
                                                }

                                                v162 = &qword_1EC7EB668;
                                                v163 = &qword_1D5637E60;
                                                v164 = v733;
                                                goto LABEL_29;
                                              }

                                              (*(v763 + 8))(v729, v766);
                                            }

                                            v162 = &qword_1EC7E9FB0;
                                            v163 = &qword_1D562C590;
                                            v164 = v730;
                                            goto LABEL_29;
                                          }

                                          v789 = v797;
                                          v790 = v798;
                                          v791 = v799;
                                          v792 = v800;
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v531, v532, v533, v534);
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v535, v536, v537, v538);
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v539, v540, v541, v542);
                                          sub_1D5000CD8(&v789);
                                        }

                                        else
                                        {
                                          if (!*(&v815 + 1))
                                          {
                                            v797 = v811;
                                            v543 = v498[2];
                                            v798 = v498[1];
                                            v799 = v543;
                                            v800 = v498[3];
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v544, v545, v546, v547);
                                            OUTLINED_FUNCTION_45_27();
                                            sub_1D4F1C460(v548, v549, v550, v551);
                                            sub_1D4E50004(&v797, &qword_1EC7EDBA0, &unk_1D5637EA0);
                                            goto LABEL_262;
                                          }

                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v523, v524, v525, v526);
                                          OUTLINED_FUNCTION_45_27();
                                          sub_1D4F1C460(v527, v528, v529, v530);
                                        }

                                        v797 = v506;
                                        v798 = v808;
                                        v799 = v809;
                                        v800 = v810;
                                        v801 = v507;
                                        v802 = v805;
                                        v803 = v806;
                                        v804 = v807;
                                        v162 = &unk_1EC7F04C0;
                                        v163 = &unk_1D5644D20;
                                        v164 = &v797;
                                        goto LABEL_29;
                                      }

                                      OUTLINED_FUNCTION_146_4();
                                      v471(v721, v779);
                                    }

                                    v162 = &qword_1EC7EB578;
                                    v163 = &unk_1D5644D10;
                                    v164 = v719;
                                    goto LABEL_29;
                                  }

                                  (*(v727 + 8))(v724, v728);
                                }

                                v162 = &qword_1EC7EF610;
                                v163 = &unk_1D5637E70;
                                v164 = v725;
                                goto LABEL_29;
                              }

                              v769[1](v713, v772);
                            }

                            v162 = &qword_1EC7EF648;
                            v163 = &unk_1D5632470;
                            v164 = v714;
                            goto LABEL_29;
                          }

                          (*(v720 + 8))(v716, v722);
                        }

                        v162 = &qword_1EC7EF618;
                        v163 = &unk_1D5632430;
                        v164 = v717;
                        goto LABEL_29;
                      }

                      OUTLINED_FUNCTION_146_4();
                      v377(v706, v779);
                    }

                    v162 = &qword_1EC7EB578;
                    v163 = &unk_1D5644D10;
                    v164 = v705;
                    goto LABEL_29;
                  }

                  OUTLINED_FUNCTION_146_4();
                  v362(v699, v779);
                }

                v162 = &qword_1EC7EB578;
                v163 = &unk_1D5644D10;
                v164 = v698;
                goto LABEL_29;
              }

              (*(v711 + 8))(v708, v712);
            }

            v162 = &qword_1EC7EF620;
            v163 = &unk_1D5637E80;
            v164 = v709;
            goto LABEL_29;
          }

          (*(v703 + 8))(v700, v704);
        }

        v162 = &qword_1EC7EF628;
        v163 = &unk_1D5632440;
        v164 = v701;
        goto LABEL_29;
      }

      (*(v696 + 8))(v759, v760);
    }

    v162 = &qword_1EC7F04B8;
    v163 = &unk_1D5637E90;
    v164 = v762;
    goto LABEL_29;
  }

  v181 = 0;
  if (v286 != 2 && ((v286 ^ v287) & 1) == 0)
  {
    goto LABEL_126;
  }

  return v181 & 1;
}

void sub_1D52168D8(uint64_t a1)
{
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4();
  v284 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v299 = v9;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v283 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v296 = v15;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_4();
  v303 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v300 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v298 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v295 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v294 = v25;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v282 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v31);
  v291 = sub_1D56109F8();
  OUTLINED_FUNCTION_4();
  v281 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v37);
  v290 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v280 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v43);
  v288 = sub_1D56134E8();
  OUTLINED_FUNCTION_4();
  v279 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v49);
  v287 = sub_1D5613198();
  OUTLINED_FUNCTION_4();
  v278 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v55);
  v286 = sub_1D5613178();
  OUTLINED_FUNCTION_4();
  v277 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v59);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v61);
  v308 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v292 = v62;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v66 = OUTLINED_FUNCTION_22(v65);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v68);
  v307 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v289 = v69;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v73 = OUTLINED_FUNCTION_22(v72);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v75);
  sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v305 = v77;
  v306 = v76;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  v304 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v80 = OUTLINED_FUNCTION_22(v79);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v84);
  v285 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v276 = v85;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v88);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v274 - v90;
  v92 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v94 = v93;
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  v98 = v97 - v96;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v99);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v274 - v101;
  if (v1[1])
  {
    v2 = *v1;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v103 = type metadata accessor for MusicMoviePropertyProvider(0);
  sub_1D4F1C460(v1 + v103[5], v102, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v102, 1, v92);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v94 + 32))(v98, v102, v92);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_69_19();
    sub_1D5218BD0(v105, v106, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v94 + 8))(v98, v92);
  }

  sub_1D4F1C460(v1 + v103[6], v91, &qword_1EC7EDB98, L"X\b\a");
  v107 = OUTLINED_FUNCTION_105();
  v108 = v285;
  OUTLINED_FUNCTION_57(v107, v109, v285);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v110 = v276;
    OUTLINED_FUNCTION_113_9();
    v2 = v275;
    v111(v275, v91, v108);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_68_16();
    sub_1D5218BD0(v112, v113, MEMORY[0x1E6975938]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v110 + 8))(v2, v108);
  }

  if (*(v1 + v103[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F09AC8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v114 = *(v1 + v103[8]);
  if (v114)
  {
    OUTLINED_FUNCTION_27();
    v115 = OUTLINED_FUNCTION_24();
    sub_1D4F07EA0(v115, v116);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v114)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[10], &qword_1EC7EA3B8, &unk_1D561E370, &v302);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v117 = OUTLINED_FUNCTION_40_33();
    v118(v117);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v119, v120, MEMORY[0x1E6969540]);
    v121 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8(v121, v122, v123);
    v124 = OUTLINED_FUNCTION_33_18();
    v125(v124);
  }

  v126 = v1 + v103[11];
  if (v126[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v127 = *v126;
    OUTLINED_FUNCTION_27();
    if ((v127 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    MEMORY[0x1DA6EC100](v128);
  }

  if (*(v1 + v103[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v103[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07784();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[14], &qword_1EC7EAC98, &unk_1D561DA80, &v303);
  v129 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v129, v130, v307);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    v131 = OUTLINED_FUNCTION_131();
    v132(v131);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_60();
    sub_1D5218BD0(v133, v134, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v135 = OUTLINED_FUNCTION_142_6();
    v136(v135);
  }

  if (*(v1 + v103[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v103[16]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v103[17]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_132_5(v1 + v103[18], &unk_1EC7E9CA8, &unk_1D561D1D0, &v304);
  v137 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v137, v138, v308);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    v139 = OUTLINED_FUNCTION_131();
    v140(v139);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_10_73();
    sub_1D5218BD0(v141, v142, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v143 = OUTLINED_FUNCTION_142_6();
    v144(v143);
  }

  v145 = v288;
  v146 = v287;
  if (*(v1 + v103[19]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v103[20]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  v147 = v290;
  sub_1D56162F8();
  OUTLINED_FUNCTION_132_5(v1 + v103[21], &qword_1EC7EC538, &unk_1D5621080, &v305);
  v148 = OUTLINED_FUNCTION_35_1();
  v149 = v286;
  OUTLINED_FUNCTION_57(v148, v150, v286);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_148_2();
    v151 = OUTLINED_FUNCTION_145_2();
    v152(v151);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_66_16();
    sub_1D5218BD0(v153, v154, MEMORY[0x1E69768B8]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v155 = *(v2 + 8);
    v2 += 8;
    v155(v98, v149);
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[22], &qword_1EC7EC530, &unk_1D5632150, &v308);
  v156 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v156, v157, v146);
  v158 = v147;
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_148_2();
    v159 = OUTLINED_FUNCTION_145_2();
    v160(v159);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_72_19();
    sub_1D5218BD0(v161, v162, MEMORY[0x1E69768F0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v163 = *(v2 + 8);
    v2 += 8;
    v163(v98, v146);
  }

  v164 = v306;
  OUTLINED_FUNCTION_132_5(v1 + v103[23], &qword_1EC7EC528, &unk_1D5621070, v311);
  v165 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v165, v166, v145);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v167 = v279;
    OUTLINED_FUNCTION_113_9();
    v168 = OUTLINED_FUNCTION_106_6();
    v169(v168);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_71_16();
    sub_1D5218BD0(v170, v171, MEMORY[0x1E6976A20]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v167 + 8))(v2, v145);
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[24], &qword_1EC7EA3B8, &unk_1D561E370, &v306);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v145 = v304;
    OUTLINED_FUNCTION_113_9();
    v172 = OUTLINED_FUNCTION_131();
    v173(v172);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v174, v175, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    OUTLINED_FUNCTION_145_6();
    v176(v145, v164);
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[25], &qword_1EC7EA3B8, &unk_1D561E370, &v309);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v145 = v304;
    OUTLINED_FUNCTION_113_9();
    v177 = OUTLINED_FUNCTION_131();
    v178(v177);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v179, v180, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    OUTLINED_FUNCTION_145_6();
    v181(v145, v164);
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[26], &qword_1EC7EF5D8, &unk_1D5632160, &v312);
  v182 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v182, v183, v158);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v184 = OUTLINED_FUNCTION_52_13();
    v185(v184);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_70_15();
    sub_1D5218BD0(v186, v187, MEMORY[0x1E69774A8]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v145 += 8;
    v188 = OUTLINED_FUNCTION_215();
    v189(v188);
  }

  if (*(v1 + v103[27]))
  {
    OUTLINED_FUNCTION_27();
    v190 = OUTLINED_FUNCTION_24();
    sub_1D4F07E0C(v190, v191);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v192 = v291;
  OUTLINED_FUNCTION_132_5(v1 + v103[28], &qword_1EC7EAC98, &unk_1D561DA80, &v311[16]);
  v193 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v193, v194, v307);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v195 = OUTLINED_FUNCTION_106_6();
    v196 = v307;
    v197(v195);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_60();
    sub_1D5218BD0(v198, v199, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v145 + 8))(v2, v196);
  }

  v200 = v1 + v103[29];
  v201 = *(v200 + 1);
  if (v201 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v202 = *(v200 + 2);
    v309 = *v200;
    LOWORD(v310) = v201 & 0x101;
    *v311 = v202;
    *&v311[8] = *(v200 + 24);
    OUTLINED_FUNCTION_27();
    PlaybackPosition.hash(into:)();
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[30], &qword_1EC7EB5C0, &unk_1D56223C0, &v314);
  v203 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v203, v204, v192);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v205 = OUTLINED_FUNCTION_52_13();
    v206(v205);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_67_24();
    sub_1D5218BD0(v207, v208, MEMORY[0x1E6975E98]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v209 = OUTLINED_FUNCTION_215();
    v210(v209);
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[31], &qword_1EC7EA3B8, &unk_1D561E370, &v313);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v192 = v304;
    v211 = OUTLINED_FUNCTION_40_33();
    v212(v211);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_107();
    sub_1D5218BD0(v213, v214, MEMORY[0x1E6969540]);
    v215 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8(v215, v216, v217);
    v218 = OUTLINED_FUNCTION_33_18();
    v219(v218);
  }

  OUTLINED_FUNCTION_33_5();
  if (v192)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v192)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v192)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v220 = v1 + v103[35];
  v221 = *(v220 + 1);
  if (v221)
  {
    v222 = *v220;
    v223 = *(v220 + 6);
    v192 = *(v220 + 7);
    v224 = *(v220 + 2);
    *v311 = *(v220 + 1);
    *&v311[16] = v224;
    OUTLINED_FUNCTION_27();
    v309 = v222;
    v310 = v221;
    VideoLocale.hash(into:)(a1);
    sub_1D4F07C6C(a1, v223);
    OUTLINED_FUNCTION_24();
    sub_1D4F31AC0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v225 = v293;
  OUTLINED_FUNCTION_33_5();
  if (v192)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v226 = v297;
  OUTLINED_FUNCTION_132_5(v1 + v103[37], &unk_1EC7E9CA8, &unk_1D561D1D0, &v315);
  v227 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v227, v228, v308);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    v229 = OUTLINED_FUNCTION_145_2();
    v2 = v308;
    v230(v229);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_10_73();
    sub_1D5218BD0(v231, v232, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v192 + 8))(v98, v2);
  }

  OUTLINED_FUNCTION_132_5(v1 + v103[38], &qword_1EC7EA788, &unk_1D56223A0, &v316);
  v233 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v233, v234, v225);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_148_2();
    v235 = OUTLINED_FUNCTION_145_2();
    v236(v235);
    OUTLINED_FUNCTION_27();
    sub_1D4F21B30();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v237 = *(v2 + 8);
    v2 += 8;
    v237(v98, v225);
  }

  sub_1D4F1C460(v1 + v103[39], v294, &qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v225 = v303;
    v238 = OUTLINED_FUNCTION_40_33();
    v239(v238);
    OUTLINED_FUNCTION_27();
    sub_1D5218B1C();
    v240 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8(v240, v241, v242);
    OUTLINED_FUNCTION_145_6();
    v243 = OUTLINED_FUNCTION_33_18();
    v244(v243);
  }

  sub_1D4F1C460(v1 + v103[40], v295, &qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v225 = v303;
    v245 = OUTLINED_FUNCTION_40_33();
    v246(v245);
    OUTLINED_FUNCTION_27();
    sub_1D5218B1C();
    v247 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8(v247, v248, v249);
    OUTLINED_FUNCTION_145_6();
    v250 = OUTLINED_FUNCTION_33_18();
    v251(v250);
  }

  sub_1D4F1C460(v1 + v103[41], v296, &off_1EC7EB5B0, &unk_1D5632170);
  v252 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v252, v253, v226);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v254 = v283;
    OUTLINED_FUNCTION_113_9();
    v255 = OUTLINED_FUNCTION_106_6();
    v256(v255);
    OUTLINED_FUNCTION_27();
    sub_1D512BE88();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v257 = *(v254 + 8);
    v225 = v254 + 8;
    v257(v2, v226);
  }

  v258 = v302;
  sub_1D4F1C460(v1 + v103[42], v299, &qword_1EC7EB620, &unk_1D561E5B0);
  v259 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v259, v260, v258);
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v261 = OUTLINED_FUNCTION_52_13();
    v262(v261);
    OUTLINED_FUNCTION_27();
    sub_1D4F21A7C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v226 + 8))(v225, v258);
  }

  sub_1D4F1C460(v1 + v103[43], v298, &qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_26_46();
  if (v104)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v263 = OUTLINED_FUNCTION_40_33();
    v264(v263);
    OUTLINED_FUNCTION_27();
    sub_1D5218B1C();
    v265 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_140_8(v265, v266, v267);
    v268 = OUTLINED_FUNCTION_33_18();
    v269(v268);
  }

  if (*(v1 + v103[44]))
  {
    OUTLINED_FUNCTION_27();
    v270 = OUTLINED_FUNCTION_24();
    sub_1D4F068B4(v270);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v271 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v271, v272);
  sub_1D560D838();
  sub_1D5218BD0(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v273 = sub_1D5610088();
  sub_1D5218BD0(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  OUTLINED_FUNCTION_33_5();
  if (v273)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
}

uint64_t sub_1D5218464()
{
  sub_1D56162D8();
  sub_1D52168D8(v1);
  return sub_1D5616328();
}

void (*sub_1D52184AC(uint64_t **a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D520FCA0(a2, v5);
  return sub_1D5218518;
}

void sub_1D5218518(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4F1C460(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D5211DE8(v2 + 32, v3);
    v4 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v4, v5, &qword_1D561C420);
  }

  else
  {

    sub_1D5211DE8(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D52185D4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D52168D8(v2);
  return sub_1D5616328();
}

uint64_t sub_1D5218658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5218BD0(&qword_1EDD5B360, type metadata accessor for MusicMoviePropertyProvider, &unk_1D5644A78);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D52186F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 184);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D521876C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 184);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D5218804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 188);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D5218878(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 192));

  return v2;
}

uint64_t sub_1D52188D4(uint64_t a1)
{
  v2 = sub_1D5218BD0(&qword_1EDD5B360, type metadata accessor for MusicMoviePropertyProvider, &unk_1D5644A78);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D5218950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5218BD0(&qword_1EDD5B350, type metadata accessor for MusicMoviePropertyProvider, &unk_1D5644A50);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D52189E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5218BD0(&qword_1EC7F1E80, type metadata accessor for MusicMoviePropertyProvider, &unk_1D5644A10);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D5218A68()
{
  result = qword_1EC7F1EA0;
  if (!qword_1EC7F1EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA410, &unk_1D561C400);
    sub_1D5218BD0(&qword_1EDD592F0, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1EA0);
  }

  return result;
}

unint64_t sub_1D5218B1C()
{
  result = qword_1EC7F1EA8;
  if (!qword_1EC7F1EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA410, &unk_1D561C400);
    sub_1D5218BD0(&qword_1EC7F1EB0, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1EA8);
  }

  return result;
}

uint64_t sub_1D5218BD0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_38(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_78_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_89_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_139_7()
{
}

uint64_t OUTLINED_FUNCTION_140_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_151_5()
{

  return sub_1D5614D18();
}

double OUTLINED_FUNCTION_152_5()
{

  return result;
}

uint64_t static MusicIntentDonation.Descriptor.kind.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

MusicKitInternal::MusicIntentDonation::Kind_optional __swiftcall MusicIntentDonation.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MusicIntentDonation.Kind.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_1D52190E4()
{
  result = qword_1EC7F1EB8;
  if (!qword_1EC7F1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1EB8);
  }

  return result;
}

unint64_t sub_1D521915C@<X0>(unint64_t *a1@<X8>)
{
  result = MusicIntentDonation.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicIntentDonation(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicIntentDonation.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of MusicIntentDonation.Descriptor.underlyingIntent.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D521948C;

  return v7(a1, a2);
}

uint64_t sub_1D521948C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D521961C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1ED0, &unk_1D5644F48);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612EC8();

  *(v0 + 48) = v3;
  qword_1EC87C370 = v0;
  return result;
}

uint64_t sub_1D52196FC()
{
  type metadata accessor for MusicMovie(0);
  sub_1D5219B04(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  return sub_1D560EC98();
}

uint64_t sub_1D5219778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EC8, &qword_1D5644EC8);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_138();
  sub_1D5219B04(v1, v2, &protocol conformance descriptor for MusicMovie);
  v3 = sub_1D5612D58();

  *(v0 + 32) = v3;
  swift_getKeyPath();
  v4 = sub_1D5612D58();

  *(v0 + 40) = v4;
  swift_getKeyPath();
  v5 = sub_1D5612D58();

  *(v0 + 48) = v5;
  qword_1EC87C378 = v0;
  return result;
}

uint64_t sub_1D52198C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D521991C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D5219974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_1D52199CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977638]);

  return [v0 init];
}

uint64_t sub_1D5219A50(void *a1)
{
  a1[1] = sub_1D5219B04(&qword_1EC7F1EC0, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  a1[2] = sub_1D5219B04(&qword_1EC7EA908, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  result = sub_1D5219B04(&qword_1EC7F0C30, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5219B04(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t static UserProfile.current.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EE0, &qword_1D5644FD8);
  OUTLINED_FUNCTION_22(v2);
  v1[3] = OUTLINED_FUNCTION_127();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA570, &qword_1D5644FE0);
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_127();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EE8, &qword_1D5644FE8);
  v1[7] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1EF0, &unk_1D5644FF0);
  v1[10] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D5219CE4, 0, 0);
}

uint64_t sub_1D5219CE4()
{
  v1[13] = type metadata accessor for UserProfile(0);
  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v2, v0, &protocol conformance descriptor for UserProfile);
  sub_1D521E7A0(&qword_1EDD57E70, v0, &protocol conformance descriptor for UserProfile);
  sub_1D560E318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561EAC0;
  if (qword_1EDD54168 != -1)
  {
    OUTLINED_FUNCTION_26_47(&qword_1EDD54168);
  }

  *(v3 + 32) = qword_1EDD54170;

  sub_1D560E228();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_1D5219E74;
  v5 = v1[9];
  v6 = v1[10];

  return MEMORY[0x1EEDCEDA0](v5, v6);
}

uint64_t sub_1D5219E74()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D521A188;
  }

  else
  {
    v2 = sub_1D5219F88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5219F88()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_1D560E448();
  sub_1D4ECA174();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    sub_1D4E50004(v0[3], &qword_1EC7F1EE0, &qword_1D5644FD8);
    sub_1D521BDEC();
    swift_allocError();
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    v14 = v0[2];
    v13 = v0[3];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v11 + 8))(v10, v12);
    sub_1D521D200(v13, v14, type metadata accessor for UserProfile);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D521A188()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t UserProfile.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
  type metadata accessor for UserProfile(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UserProfile.acceptedTerms.getter()
{
  if (qword_1EDD54140 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB630, &unk_1D561E5E0);
  OUTLINED_FUNCTION_16_60();
  sub_1D521E7A0(v1, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0, v3);
  sub_1D560EC28();
  if (v5)
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t UserProfile.discoverabilityConsentVersion.getter()
{
  if (qword_1EDD540B0 != -1)
  {
    OUTLINED_FUNCTION_23_45(&qword_1EDD540B0);
  }

  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v1, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0, v3);
  sub_1D560EC28();
  return v5;
}

uint64_t sub_1D521A5B0(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33();
  if (!v3)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v4, v2, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v5, v2, v6);
  sub_1D560EC28();
  return v8 & 1;
}

uint64_t sub_1D521A734(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33();
  if (!v3)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_108();
  sub_1D521E7A0(v4, v2, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v5, v2, v6);
  sub_1D560EC28();
  return v8;
}

uint64_t sub_1D521A814(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_33();
  if (!v5)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v6, v3, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v7, v3, v8);

  return sub_1D560EC28();
}

uint64_t sub_1D521A928()
{
  OUTLINED_FUNCTION_17_33();
  if (!v1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v2, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v3, v0, v4);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.shareablePlaylists.getter()
{
  if (qword_1EDD540F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v1, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.sharedPlaylists.getter()
{
  if (qword_1EDD54130 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v1, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.topGenres.getter()
{
  if (qword_1EDD54040 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_1_110();
  sub_1D521E7A0(v1, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UserProfile.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserProfile(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t UserProfile.socialProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (qword_1EDD54168 != -1)
  {
    OUTLINED_FUNCTION_26_47(&qword_1EDD54168);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_17_58();
  sub_1D521E7A0(v8, v1, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v9, v1, v10);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E50004(v6, &qword_1EC7EA778, &qword_1D5622E60);
    v11 = type metadata accessor for SocialProfile(0);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  else
  {
    sub_1D4EC9410();
    OUTLINED_FUNCTION_24_0();
    return (*(v13 + 8))(v6, v7);
  }
}

uint64_t static UserProfile.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UserProfile(0);

  return sub_1D5611A78();
}

uint64_t UserProfile.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for UserProfile(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14_59();
  sub_1D521E7A0(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t UserProfile.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for UserProfile(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14_59();
  sub_1D521E7A0(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D521B114(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D521E7A0(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D521B1B8@<X0>(uint64_t *a1@<X8>)
{
  result = UserProfile.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D521B1E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D521E7E8();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76948 = v0;
  return result;
}

uint64_t sub_1D521B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D521E7A0(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v5 = sub_1D560D188();

  *a4 = v5;
  return result;
}

uint64_t sub_1D521B370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76928 = v0;
  return result;
}

uint64_t sub_1D521B3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(29);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76910 = v0;
  return result;
}

uint64_t sub_1D521B468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76900 = v0;
  return result;
}

uint64_t sub_1D521B4D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76938 = v0;
  return result;
}

uint64_t sub_1D521B554()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76920 = v0;
  return result;
}

uint64_t sub_1D521B5D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(23);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76918 = v0;
  return result;
}

uint64_t sub_1D521B64C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76950 = v0;
  return result;
}

uint64_t sub_1D521B6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76958 = v0;
  return result;
}

uint64_t sub_1D521B744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76930 = v0;
  return result;
}

uint64_t sub_1D521B7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768F0 = v0;
  return result;
}

uint64_t sub_1D521B838()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76960 = v0;
  return result;
}

uint64_t sub_1D521B8B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76908 = v0;
  return result;
}

uint64_t sub_1D521B91C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_62();
  sub_1D521E7A0(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C380 = v0;
  return result;
}

uint64_t sub_1D521BA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_12_61();
  sub_1D521E7A0(v6, v7, &protocol conformance descriptor for SocialProfile);
  v8 = sub_1D560D0F8();

  *a5 = v8;
  return result;
}

uint64_t sub_1D521BB14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_12_61();
  sub_1D521E7A0(v1, v2, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54128 = v0;
  return result;
}

uint64_t sub_1D521BBF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_19_54();
  sub_1D521E7A0(v1, v2, MEMORY[0x1E6977400]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54100 = v0;
  return result;
}

uint64_t sub_1D521BCD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_19_54();
  sub_1D521E7A0(v1, v2, MEMORY[0x1E6977400]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54138 = v0;
  return result;
}

unint64_t sub_1D521BDEC()
{
  result = qword_1EDD57EC0;
  if (!qword_1EDD57EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57EC0);
  }

  return result;
}

uint64_t sub_1D521BE68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D521E7A0(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54048 = v0;
  return result;
}

uint64_t sub_1D521BF50(uint64_t a1, uint64_t a2)
{
  sub_1D521E7A0(&qword_1EDD57E78, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);

  return sub_1D5610C58();
}

uint64_t UserProfile.init(from:)(void *a1)
{
  type metadata accessor for UserProfile(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_15_63();
  sub_1D521E7A0(v3, v4, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_18_59();
  sub_1D521E7A0(v5, v1, &protocol conformance descriptor for CloudUserProfile);
  OUTLINED_FUNCTION_21_48(&qword_1EDD56D10);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UserProfile.encode(to:)(uint64_t a1)
{
  type metadata accessor for UserProfile(0);
  OUTLINED_FUNCTION_15_63();
  sub_1D521E7A0(v2, v3, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_18_59();
  sub_1D521E7A0(v4, v1, &protocol conformance descriptor for CloudUserProfile);
  OUTLINED_FUNCTION_21_48(&qword_1EDD56D10);
  return sub_1D5612688();
}

uint64_t UserProfile.description.getter()
{
  OUTLINED_FUNCTION_36_33();
  v7 = v1;
  v2 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v2);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if (qword_1EDD54098 != -1)
  {
    OUTLINED_FUNCTION_41(&qword_1EDD54098);
  }

  OUTLINED_FUNCTION_16_60();
  sub_1D521E7A0(v3, v0, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_0_139();
  sub_1D521E7A0(v4, v0, v5);
  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  if (qword_1EDD540A0 != -1)
  {
    OUTLINED_FUNCTION_52_6(&qword_1EDD540A0);
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x203A656D616E202CLL, 0xE900000000000022);

  if (qword_1EDD54150 != -1)
  {
    OUTLINED_FUNCTION_30_38(&qword_1EDD54150);
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (qword_1EDD54050 != -1)
  {
    OUTLINED_FUNCTION_54_1(&qword_1EDD54050);
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (qword_1EDD54158 != -1)
  {
    OUTLINED_FUNCTION_53_4(&qword_1EDD54158);
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v7;
}