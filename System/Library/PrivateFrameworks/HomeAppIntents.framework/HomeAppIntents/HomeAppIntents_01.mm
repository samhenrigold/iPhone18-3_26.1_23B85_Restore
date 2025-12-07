uint64_t sub_25272E4C8()
{
  v0 = sub_2528BEC40();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
  sub_2528BEC20();
  sub_25272E944();
  v1 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3D0, &qword_2528C3EE8);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25272E998();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_2528BE6C0();

  return v1;
}

char *sub_25272E628(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    sub_25272E7DC(*(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v5);
    sub_25272D8E0(&v14, v5, a1);
    v8 &= v8 - 1;
    sub_25272E840(v5);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_25272E840(v5);

  __break(1u);
  return result;
}

uint64_t sub_25272E7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25272E840(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25272E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) <= 2u)
  {
  }
}

void sub_25272E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) <= 2u)
  {
  }
}

uint64_t sub_25272E8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25272E944()
{
  result = qword_27F4FC3D8;
  if (!qword_27F4FC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3D8);
  }

  return result;
}

unint64_t sub_25272E998()
{
  result = qword_27F4FC3E0;
  if (!qword_27F4FC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3E0);
  }

  return result;
}

unint64_t sub_25272E9EC()
{
  result = qword_27F4FC3E8;
  if (!qword_27F4FC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3E8);
  }

  return result;
}

unint64_t sub_25272EA40()
{
  result = qword_27F4FC3F0;
  if (!qword_27F4FC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3F0);
  }

  return result;
}

unint64_t sub_25272EA94()
{
  result = qword_27F4FC3F8;
  if (!qword_27F4FC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3F8);
  }

  return result;
}

uint64_t sub_25272EB04(uint64_t a1)
{
  result = MEMORY[0x2530A82F0](*(a1 + 16), MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_252739514(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25272EBFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25274A948();
  result = MEMORY[0x2530A82F0](v2, &type metadata for UserSpecificity, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_25273B214(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_25272ED28@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void (*SceneEntity.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2528BE6A0();
  return sub_25272EE48;
}

uint64_t SceneEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SceneEntity(0) + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SceneEntity(uint64_t a1)
{
  result = qword_27F4FC5A0;
  if (!qword_27F4FC5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SceneEntity.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SceneEntity(0) + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SceneEntity.homeName.getter()
{
  type metadata accessor for SceneEntity(0);
  sub_2528BE6B0();
  return v1;
}

void *sub_25272F03C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SceneEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25272F090(uint64_t *a1)
{
  type metadata accessor for SceneEntity(0);

  return sub_2528BE6C0();
}

void (*SceneEntity.homeName.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SceneEntity(0);
  *(v3 + 32) = sub_2528BE6A0();
  return sub_25274BC38;
}

uint64_t SceneEntity.sceneType.getter()
{
  type metadata accessor for SceneEntity(0);
  sub_2528BE6B0();
  return v1;
}

void *sub_25272F22C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SceneEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25272F280(uint64_t *a1)
{
  type metadata accessor for SceneEntity(0);

  return sub_2528BE6C0();
}

void (*SceneEntity.sceneType.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SceneEntity(0);
  *(v3 + 32) = sub_2528BE6A0();
  return sub_25274BC38;
}

uint64_t SceneEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2528C09B0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t static SceneEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SceneEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SceneEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_2528BE9F0();
  __swift_project_value_buffer(v1, qword_27F4FC400);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25272F8B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25272F970(uint64_t a1)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25272FA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  qword_27F4FC418 = result;
  return result;
}

uint64_t SceneEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  *a1 = result;
  return result;
}

uint64_t static SceneEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27F4FC418;
  return sub_2528BEA50();
}

uint64_t static SceneEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F4FC418 = v1;
}

uint64_t (*static SceneEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25272FC5C@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27F4FC418;
  return sub_2528BEA50();
}

uint64_t sub_25272FCDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27F4FB5F8;
  sub_2528BEA50();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F4FC418 = v1;
}

uint64_t SceneEntity.init(name:id:homeName:sceneType:)@<X0>(uint64_t a3@<X2>, char *a7@<X8>)
{
  v9 = sub_2528BEC40();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a7 = sub_2528BE730();
  v10 = type metadata accessor for SceneEntity(0);
  v11 = v10[6];
  sub_2528BEC20();
  *&a7[v11] = sub_2528BE730();
  v12 = v10[7];
  sub_2528BEC20();
  *&a7[v12] = sub_2528BE730();
  v13 = v10[5];
  v14 = sub_2528BECF0();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a7[v13], a3, v14);
  sub_2528BE6C0();
  sub_2528BE6C0();
  sub_2528BE6C0();
  return (*(v15 + 8))(a3, v14);
}

uint64_t SceneEntity.init(staticActionSet:staticHome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_2528BEC40();
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a3 = sub_2528BE730();
  v12 = type metadata accessor for SceneEntity(0);
  v13 = *(v12 + 24);
  sub_2528BEC20();
  *(a3 + v13) = sub_2528BE730();
  v14 = *(v12 + 28);
  sub_2528BEC20();
  *(a3 + v14) = sub_2528BE730();
  v15 = v27;
  sub_2528BFCA0();
  v28 = sub_2528BFCB0();
  v29 = v16;
  sub_2528BE6C0();
  v28 = sub_2528BEE20();
  v29 = v17;
  sub_2528BE6C0();
  sub_2528BFC80();
  v18 = sub_2528C0CD0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    v20 = 1701736302;
    v21 = 0xE400000000000000;
  }

  else
  {
    sub_25272006C(v10, v8, &qword_27F4FBBC0, &qword_2528C1800);
    v22 = (*(v19 + 88))(v8, v18);
    if (v22 == *MEMORY[0x277D16EF0])
    {
      v21 = 0xEB000000006C6176;
      v20 = 0x69727241656D6F68;
    }

    else if (v22 == *MEMORY[0x277D16F10])
    {
      v21 = 0xED00006572757472;
      v20 = 0x61706544656D6F68;
    }

    else if (v22 == *MEMORY[0x277D16F38])
    {
      v21 = 0xE600000000000000;
      v20 = 0x7055656B6177;
    }

    else if (v22 == *MEMORY[0x277D16F28])
    {
      v21 = 0xE500000000000000;
      v20 = 0x7065656C73;
    }

    else if (v22 == *MEMORY[0x277D16EF8])
    {
      v21 = 0xEB0000000064656ELL;
      v20 = 0x6966654472657375;
    }

    else
    {
      (*(v19 + 8))(v8, v18);
      v21 = 0xE400000000000000;
      v20 = 1701736302;
    }
  }

  sub_2527213D8(v10, &qword_27F4FBBC0, &qword_2528C1800);
  v28 = v20;
  v29 = v21;
  sub_2528BE6C0();
  v23 = sub_2528BEE30();
  (*(*(v23 - 8) + 8))(v15, v23);
  v24 = sub_2528BFCE0();
  return (*(*(v24 - 8) + 8))(a1, v24);
}

uint64_t sub_252730460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2528BECF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2527304D4(uint64_t a1)
{
  v2 = sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252730554(uint64_t a1)
{
  v2 = sub_25274ABA0(&qword_27F4FC4E8, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527305D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a1 = sub_2528BE730();
  v3 = type metadata accessor for SceneEntity(0);
  v4 = *(v3 + 24);
  sub_2528BEC20();
  *(a1 + v4) = sub_2528BE730();
  v5 = *(v3 + 28);
  sub_2528BEC20();
  *(a1 + v5) = sub_2528BE730();
  sub_2528BE550();
  sub_2528BE6C0();
  sub_2528BE6C0();
  return sub_2528BE6C0();
}

uint64_t sub_25273074C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  __swift_allocate_value_buffer(v0, qword_27F4FC420);
  __swift_project_value_buffer(v0, qword_27F4FC420);
  type metadata accessor for SceneEntity(0);
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  return sub_2528BE990();
}

uint64_t sub_252730808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC940, &qword_2528C4A98);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  sub_25272275C(&qword_27F4FC948, &qword_27F4FC458, &unk_2528C3F40, MEMORY[0x277CB9E70]);
  sub_2528BEAD0();
  type metadata accessor for SceneEntity(0);
  sub_2528BEAF0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC950, &qword_2528C4AA0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_2528BEAE0();

  v7(v6, v0);
  return v10;
}

uint64_t static SceneEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SceneEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SceneEntityQuery.sortingOptions.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  __swift_project_value_buffer(v1, qword_27F4FC420);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_252730CC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_252730D8C(uint64_t a1)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_252730E60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  __swift_allocate_value_buffer(v0, qword_27F4FC438);
  __swift_project_value_buffer(v0, qword_27F4FC438);
  type metadata accessor for SceneEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  return sub_2528BE920();
}

uint64_t sub_252730F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C0, &qword_2528C4960);
  swift_getKeyPath();
  sub_2528BE870();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  v0 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v2 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C3EF0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  type metadata accessor for SceneEntity(0);
  sub_2528BEA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
  v4 = sub_2528BEA40();

  return v4;
}

uint64_t sub_252731184(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8D0, &qword_2528C49E8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8D8, &qword_2528C49F0);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for SceneEntity(0);
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E0, &qword_2528C49F8);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528C3910;
  (*(v2 + 16))(v6 + v5, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
  sub_25274690C();
  v7 = sub_2528BEAB0();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_2527313F4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8F0, &qword_2528C4A08);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8F8, &qword_2528C4A10);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_25272275C(&qword_27F4FC900, &qword_27F4FC8F0, &qword_2528C4A08, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v10 + 8))(v12, v9);
  v27 = v22;
  v28 = v23;
  sub_2528BEB80();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC908, &qword_2528C4A40);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_25274AC0C();
  __swift_allocate_boxed_opaque_existential_0Tm(v18);
  sub_25272275C(&qword_27F4FC930, &qword_27F4FC8F8, &qword_2528C4A10, MEMORY[0x277CC90C0]);
  sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00, MEMORY[0x277CC9080]);
  v19 = v25;
  sub_2528BEB20();
  (*(v26 + 8))(v8, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t static SceneEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SceneEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SceneEntityQuery.properties.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  __swift_project_value_buffer(v1, qword_27F4FC438);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_252731A54@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_252731B20(uint64_t a1)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t SceneEntityQuery.entities(for:)(uint64_t a1)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  v2[3] = swift_task_alloc();
  v3 = type metadata accessor for SceneEntity(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[10] = v4;
  v2[11] = v5;

  return MEMORY[0x2822009F8](sub_252731DA4, 0, 0);
}

uint64_t sub_252731DA4()
{
  v35 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[12] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315138;
    v7 = sub_2528BECF0();
    v8 = MEMORY[0x2530A81A0](v4, v7);
    v10 = sub_2527389AC(v8, v9, &v34);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252711000, v2, v3, "Searching for scenes with identifiers: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v11 = sub_2528C0820();
  v0[13] = __swift_project_value_buffer(v11, qword_27F5025E0);

  v12 = 1;
  v0[14] = sub_2528BAD50();

  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v12 = 0;
  }

  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  v16 = type metadata accessor for HomeEntity(0);
  (*(*(v16 - 8) + 56))(v14, v12, 1, v16);

  v18 = sub_252743D54(v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v19 = sub_2528BF3E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2528C17E0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277D15A30], v19);
  *(v24 + v21) = v18;
  v25(v24 + v21, *MEMORY[0x277D15A28], v19);

  sub_252744570(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = *MEMORY[0x277D16520];
  v27 = sub_2528C00B0();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v15, v26, v27);
  (*(v28 + 56))(v15, 0, 1, v27);
  sub_2528C0590();

  v29 = sub_2528C05D0();
  (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
  v30 = swift_task_alloc();
  v0[15] = v30;
  *v30 = v0;
  v30[1] = sub_2527322C8;
  v31 = v0[9];
  v32 = v0[10];

  return sub_25277ECE4(v32, 0, 1, v31);
}

uint64_t sub_2527322C8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  *(*v1 + 128) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252732424, 0, 0);
}

uint64_t sub_252732424()
{
  v32 = v0;
  v1 = *(v0[2] + 16);
  if (v1)
  {
    v30 = v0[5];
    v2 = *(sub_2528BECF0() - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v4 = MEMORY[0x277D84F90];
    v5 = *(v2 + 72);
    do
    {
      v7 = v0[3];
      v6 = v0[4];
      sub_252732974(v0[2] + v3, v0[16], v7);
      if ((*(v30 + 48))(v7, 1, v6) == 1)
      {
        sub_2527213D8(v0[3], &qword_27F4FC470, &unk_2528CDE00);
      }

      else
      {
        v9 = v0[6];
        v8 = v0[7];
        sub_25274AB38(v0[3], v8, type metadata accessor for SceneEntity);
        sub_25274AB38(v8, v9, type metadata accessor for SceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2527387D0(0, v4[2] + 1, 1, v4, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
        }

        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v4 = sub_2527387D0((v10 > 1), v11 + 1, 1, v4, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
        }

        v12 = v0[6];
        v4[2] = v11 + 1;
        sub_25274AB38(v12, v4 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v11, type metadata accessor for SceneEntity);
      }

      v3 += v5;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v13 = v0[13];
  v14 = v0[14];

  sub_2528BAD54(1, v14, v13, v4);

  v15 = sub_2528C0890();
  v16 = sub_2528C0D10();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[4];
    v18 = v0[2];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315394;
    v21 = MEMORY[0x2530A81A0](v4, v17);
    v23 = sub_2527389AC(v21, v22, v31);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_2528BECF0();
    v25 = MEMORY[0x2530A81A0](v18, v24);
    v27 = sub_2527389AC(v25, v26, v31);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_252711000, v15, v16, "Found sceneEntities: %s for identifiers: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v20, -1, -1);
    MEMORY[0x2530A8D80](v19, -1, -1);
  }

  v28 = v0[1];

  return v28(v4);
}

uint64_t sub_252732880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_25272006C(a1, &v9 - v6, &qword_27F4FC488, &unk_2528C3F80);
  sub_25272006C(v7, v5, &qword_27F4FC488, &unk_2528C3F80);
  sub_2528BE7A0();
  return sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_252732974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v45 = a1;
  v4 = sub_2528BEE30();
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2528BFCE0();
  v41 = *(v43 - 8);
  v6 = MEMORY[0x28223BE20](v43);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - v10;
  v11 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 64);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  while (v20)
  {
LABEL_10:
    sub_25274A454(*(a2 + 56) + *(v12 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v17, type metadata accessor for HomeEntity.SnapshotPair);
    sub_25274AB38(v17, v15, type metadata accessor for HomeEntity.SnapshotPair);
    v25 = sub_2528BF380();
    if (*(v25 + 16))
    {
      v26 = sub_252785C40(v45);
      if (v27)
      {
        v28 = v41;
        v29 = *(v41 + 16);
        v30 = v38;
        v31 = v43;
        v29(v38, *(v25 + 56) + *(v41 + 72) * v26, v43);

        v32 = v39;
        (*(v28 + 32))(v39, v30, v31);
        v33 = v40;
        v29(v40, v32, v31);
        v34 = v42;
        sub_2528BF2F0();
        v35 = v44;
        SceneEntity.init(staticActionSet:staticHome:)(v33, v34, v44);

        (*(v28 + 8))(v32, v31);
        sub_25274A4BC(v15, type metadata accessor for HomeEntity.SnapshotPair);
        v36 = 0;
LABEL_14:
        v37 = type metadata accessor for SceneEntity(0);
        return (*(*(v37 - 8) + 56))(v35, v36, 1, v37);
      }
    }

    v20 &= v20 - 1;

    result = sub_25274A4BC(v15, type metadata accessor for HomeEntity.SnapshotPair);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      v36 = 1;
      v35 = v44;
      goto LABEL_14;
    }

    v20 = *(a2 + 64 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SceneEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_2528BEE30();
  v3[4] = swift_task_alloc();
  v4 = sub_2528BFCE0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for SceneEntity(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  v3[15] = swift_task_alloc();
  v3[16] = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[20] = v6;
  v3[21] = v7;

  return MEMORY[0x2822009F8](sub_252733078, 0, 0);
}

uint64_t sub_252733078()
{
  v30 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[22] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2527389AC(v5, v4, &v29);
    _os_log_impl(&dword_252711000, v2, v3, "Searching for scenes with string: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v8 = sub_2528C0820();
  v0[23] = __swift_project_value_buffer(v8, qword_27F5025E0);

  v9 = 1;
  v0[24] = sub_2528BAD5C();

  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v9 = 0;
  }

  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];
  v13 = type metadata accessor for HomeEntity(0);
  (*(*(v13 - 8) + 56))(v11, v9, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v14 = sub_2528BF3E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2528C17E0;
  v19 = v18 + v17;
  v20 = *(v15 + 104);
  v20(v19, *MEMORY[0x277D15A30], v14);
  *(v19 + v16) = 0;
  v20(v19 + v16, *MEMORY[0x277D15A28], v14);
  sub_252744570(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = *MEMORY[0x277D16520];
  v22 = sub_2528C00B0();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v12, v21, v22);
  (*(v23 + 56))(v12, 0, 1, v22);
  sub_2528C0590();
  v24 = sub_2528C05D0();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_252733558;
  v26 = v0[19];
  v27 = v0[20];

  return sub_25277ECE4(v27, 0, 1, v26);
}

uint64_t sub_252733558(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  *(*v1 + 208) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527336B4, 0, 0);
}

uint64_t sub_2527336B4(uint64_t a1, uint64_t a2)
{
  v79 = v2;
  v3 = v2[26];
  v64 = v2[16];
  v72 = v2[14];
  v4 = v2[11];
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 64);
  v9 = (63 - v6) >> 6;
  v71 = v2[6];
  v78 = MEMORY[0x277D84F90];
  v61 = v4;
  v69 = (v4 + 48);
  v70 = (v4 + 56);
  v65 = v3;

  v11 = 0;
  v62 = v9;
  v63 = v5;
LABEL_6:
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    do
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_42;
      }

      if (v13 >= v9)
      {
        v49 = v2[23];
        v48 = v2[24];

        v50 = v78;

        sub_2528BAD54(1, v48, v49, v78);

        v51 = sub_2528C0890();
        v52 = sub_2528C0D10();

        v77 = v78;
        if (os_log_type_enabled(v51, v52))
        {
          v53 = v2[10];
          v54 = v2[2];
          v76 = v2[3];
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v78 = v56;
          *v55 = 136315394;
          v57 = MEMORY[0x2530A81A0](v50, v53);
          v59 = sub_2527389AC(v57, v58, &v78);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_2527389AC(v54, v76, &v78);
          _os_log_impl(&dword_252711000, v51, v52, "Found sceneEntities: %s for string: %s", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v56, -1, -1);
          MEMORY[0x2530A8D80](v55, -1, -1);
        }

        v60 = v2[1];

        return v60(v77);
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
    }

    while (!v8);
  }

  v66 = v13;
  v67 = (v8 - 1) & v8;
  sub_25274A454(*(v65 + 56) + *(v64 + 72) * (__clz(__rbit64(v8)) | (v13 << 6)), v2[17], type metadata accessor for HomeEntity.SnapshotPair);
  v14 = sub_2528BF380();
  v15 = v14 + 64;
  v16 = -1 << *(v14 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (63 - v16) >> 6;
  v75 = v14;

  v20 = 0;
  v68 = MEMORY[0x277D84F90];
  v73 = v19;
  v74 = v15;
LABEL_15:
  v21 = v20;
  if (!v18)
  {
    goto LABEL_17;
  }

  do
  {
    v20 = v21;
LABEL_20:
    v22 = v2[15];
    v23 = v2[5];
    v25 = v2[2];
    v24 = v2[3];
    v26 = __clz(__rbit64(v18)) | (v20 << 6);
    v27 = *(v75 + 48);
    v28 = sub_2528BECF0();
    (*(*(v28 - 8) + 16))(v22, v27 + *(*(v28 - 8) + 72) * v26, v28);
    v29 = *(v75 + 56) + *(v71 + 72) * v26;
    v30 = *(v72 + 48);
    v31 = *(v71 + 16);
    v31(v22 + v30, v29, v23);
    if (sub_2528BFCB0() == v25 && v32 == v24)
    {
    }

    else
    {
      v34 = sub_2528C1060();

      if ((v34 & 1) == 0)
      {
        v35 = 1;
        goto LABEL_28;
      }
    }

    v37 = v2[7];
    v36 = v2[8];
    v38 = v2[4];
    v31(v37, v22 + v30, v2[5]);
    sub_2528BF2F0();
    SceneEntity.init(staticActionSet:staticHome:)(v37, v38, v36);
    v35 = 0;
LABEL_28:
    v18 &= v18 - 1;
    v39 = v2[15];
    v41 = v2[9];
    v40 = v2[10];
    v42 = v2[8];
    (*v70)(v42, v35, 1, v40);
    sub_25274AA0C(v42, v41, &qword_27F4FC470, &unk_2528CDE00);
    sub_2527213D8(v39, &qword_27F4FC4A8, &qword_2528C3FC0);
    if ((*v69)(v41, 1, v40) != 1)
    {
      v43 = v2[12];
      v44 = v2[13];
      sub_25274AB38(v2[9], v44, type metadata accessor for SceneEntity);
      sub_25274AB38(v44, v43, type metadata accessor for SceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_2527387D0(0, v68[2] + 1, 1, v68, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v46 = v68[2];
      v45 = v68[3];
      if (v46 >= v45 >> 1)
      {
        v68 = sub_2527387D0((v45 > 1), v46 + 1, 1, v68, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v47 = v2[12];
      v68[2] = v46 + 1;
      result = sub_25274AB38(v47, v68 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v46, type metadata accessor for SceneEntity);
      v19 = v73;
      v15 = v74;
      goto LABEL_15;
    }

    result = sub_2527213D8(v2[9], &qword_27F4FC470, &unk_2528CDE00);
    v21 = v20;
    v19 = v73;
    v15 = v74;
  }

  while (v18);
LABEL_17:
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      v12 = v2[17];

      sub_25274A4BC(v12, type metadata accessor for HomeEntity.SnapshotPair);
      result = sub_252735C84(v68, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity, type metadata accessor for SceneEntity);
      v11 = v66;
      v8 = v67;
      v9 = v62;
      v5 = v63;
      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t SceneEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25274BC70;

  return sub_252744C64(a1, a2 & 1);
}

uint64_t sub_252733ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2528C0E70();

  v11 = 0x203A656D616ELL;
  v12 = 0xE600000000000000;
  MEMORY[0x2530A80B0](a1, a2);
  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  sub_25272006C(a3, v8, &qword_27F4FC488, &unk_2528C3F80);
  v9 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v9);

  return v11;
}

uint64_t sub_252734008(unsigned __int8 a1)
{
  sub_2528C0E70();

  v2 = 0xEB000000006C6176;
  v3 = 0x69727241656D6F68;
  v4 = 0xE500000000000000;
  v5 = 0x7065656C73;
  v6 = 0xEB0000000064656ELL;
  v7 = 0x6966654472657375;
  if (a1 != 4)
  {
    v7 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xED00006572757472;
  v9 = 0x61706544656D6F68;
  if (a1 != 1)
  {
    v9 = 0x7055656B6177;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x2530A80B0](v10, v11);

  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v12 = sub_2528C0DB0();
  MEMORY[0x2530A80B0](v12);

  return 0x203A7475706E69;
}

uint64_t sub_2527341A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_252744C64(a2, a3 & 1);
}

uint64_t sub_252734264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return SceneEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_25273430C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_25273441C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  *a1 = result;
  return result;
}

uint64_t sub_252734468(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return SceneEntityQuery.entities(for:)(a1);
}

uint64_t sub_2527344FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25271F3AC;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_2527345B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_252734670;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_252734670(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252734770(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2527460E8();
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_252734824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2527228B0;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_2527348DC()
{
  if (!*(v0 + 8))
  {
    v3 = 0x203A726F727265;
    v1 = sub_2528C0A10();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2528C0E70();

    v3 = 0xD000000000000013;
    v1 = sub_2528C1040();
LABEL_5:
    MEMORY[0x2530A80B0](v1);

    return v3;
  }

  return 0x73736563637573;
}

uint64_t sub_2527349CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for SceneEntity(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C09B0();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  sub_2528BE6B0();
  sub_25274A4BC(v10, type metadata accessor for SceneEntity);
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v12 = sub_2528BE8D0();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  return sub_2528BE900();
}

uint64_t sub_252734CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252749584();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252734CFC(uint64_t a1)
{
  v2 = sub_25274A570();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252734D48(uint64_t a1)
{
  sub_25274A570();

  return sub_2528BE550();
}

uint64_t sub_252734DB8(uint64_t a1)
{
  v2 = sub_252746464();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252734E0C(uint64_t a1)
{
  v2 = sub_252746708();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_252734E58@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  if (!*(v1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
    sub_2528BEC20();
    sub_252746B7C();
    v4 = sub_2528BE6E0();
    sub_2528BE6C0();
    a1[3] = &type metadata for SceneOutcome.FailureCase;
    result = sub_252746BD0();
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
    sub_2528BEC20();
    v4 = sub_2528BE760();
    sub_2528BE6C0();
    a1[3] = &type metadata for SceneOutcome.FailureWithHomeKitErrorCodeCase;
    result = sub_252746B28();
LABEL_5:
    a1[4] = result;
    *a1 = v4;
    return result;
  }

  a1[3] = &type metadata for SceneOutcome.SuccessCase;
  result = sub_252746C24();
  a1[4] = result;
  return result;
}

uint64_t sub_252734FAC@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5E8, &qword_2528C4738);
  v11 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v10 - v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5F0, &qword_2528C4740);
  v3 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v5 = &v10 - v4;
  v6 = sub_252746C78();
  MEMORY[0x2530A60E0](v6, &type metadata for SceneOutcome, &type metadata for SceneOutcome.SuccessCase.Resolver, v6);
  v7 = sub_252746CCC();
  MEMORY[0x2530A60E0](v7, &type metadata for SceneOutcome, &type metadata for SceneOutcome.FailureCase.Resolver, v7);
  v8 = sub_252746D20();
  MEMORY[0x2530A60E0](v8, &type metadata for SceneOutcome, &type metadata for SceneOutcome.FailureWithHomeKitErrorCodeCase.Resolver, v8);
  sub_252746AD4();
  sub_2528BEAA0();
  v18 = v6;
  v19 = &type metadata for SceneOutcome.SuccessCase.Resolver;
  sub_2528BEA90();
  v16 = &type metadata for SceneOutcome.SuccessCase.Resolver;
  v17 = &type metadata for SceneOutcome.FailureCase.Resolver;
  v14 = v6;
  v15 = v7;
  sub_2528BEA90();
  (*(v11 + 8))(v2, v13);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_252735254()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 2;
  return (*(v0 + 8))();
}

uint64_t sub_25273527C(uint64_t a1)
{
  v2 = sub_25274BBD8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527352C8(uint64_t a1)
{
  sub_25274BBD8();

  return sub_2528BE550();
}

uint64_t sub_252735354(uint64_t a1)
{
  v2 = sub_25274B258();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527353A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2528BEC20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_2528BE8D0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_2528BE900();
}

uint64_t sub_252735568(uint64_t a1)
{
  v2 = sub_25274B008();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527355D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2527355F8, 0, 0);
}

uint64_t sub_2527355F8()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25273566C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
  sub_2528BEC20();
  sub_252746B7C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_25273571C(uint64_t a1)
{
  v2 = sub_25274BB84();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252735768(uint64_t a1)
{
  sub_25274BB84();

  return sub_2528BE550();
}

uint64_t sub_2527357F4(uint64_t a1)
{
  v2 = sub_25274B5B0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252735840(uint64_t a1)
{
  v2 = sub_25274B360();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25273588C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502870);
  __swift_project_value_buffer(v0, qword_27F502870);
  return sub_2528BE9D0();
}

uint64_t sub_2527358F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_252735914, 0, 0);
}

uint64_t sub_252735914()
{
  v1 = v0[3];
  sub_2528BE6B0();
  *v1 = v0[2];
  *(v1 + 8) = 1;
  v2 = v0[1];

  return v2();
}

uint64_t sub_25273598C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  result = sub_2528BE760();
  *a1 = result;
  return result;
}

uint64_t sub_252735A34(uint64_t a1)
{
  v2 = sub_25274BB30();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252735A80(uint64_t a1)
{
  sub_25274BB30();

  return sub_2528BE550();
}

uint64_t sub_252735B0C(uint64_t a1)
{
  v2 = sub_25274B908();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252735B58(uint64_t a1)
{
  v2 = sub_25274B6B8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252735BA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252746C24();
  *(v0 + 32) = &type metadata for SceneOutcome.SuccessCase;
  *(v0 + 40) = v1;
  v2 = sub_252746BD0();
  *(v0 + 48) = &type metadata for SceneOutcome.FailureCase;
  *(v0 + 56) = v2;
  v3 = sub_252746B28();
  *(v0 + 64) = &type metadata for SceneOutcome.FailureWithHomeKitErrorCodeCase;
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_252735C84(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_252735DFC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (*(v12 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_252737C20(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!*(v12 + 16))
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_252735FC4(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (*(v12 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_252737E90(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!*(v12 + 16))
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2527360E0(uint64_t a1)
{
  v77 = sub_2528BFDE0();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7A8, &unk_2528C4860);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v21, 1, v16, &qword_27F4FC7B0, &qword_2528D5550, MEMORY[0x277D16348]);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_252868CB8(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_25271A648(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_25272006C(v14, v75, &qword_27F4FC7A8, &unk_2528C4860);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_2527213D8(v37, &qword_27F4FC7A8, &unk_2528C4860);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_2527387D0((v39 > 1), v74 + 1, 1, v16, &qword_27F4FC7B0, &qword_2528D5550, MEMORY[0x277D16348]);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_25272006C(v14, v76, &qword_27F4FC7A8, &unk_2528C4860);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_2527213D8(v43, &qword_27F4FC7A8, &unk_2528C4860);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_25272006C(v14, v75, &qword_27F4FC7A8, &unk_2528C4860);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_2527213D8(v14, &qword_27F4FC7A8, &unk_2528C4860);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_25272006C(v14, v76, &qword_27F4FC7A8, &unk_2528C4860);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_2527213D8(v14, &qword_27F4FC7A8, &unk_2528C4860);
    sub_25271A648(v65);
    result = sub_2527213D8(v37, &qword_27F4FC7A8, &unk_2528C4860);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527368C0(uint64_t a1)
{
  v77 = sub_2528BFCF0();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC650, &qword_2528C4768);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v21, 1, v16, &qword_27F4FC658, &qword_2528C4770, MEMORY[0x277D15F48]);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_252868CD0(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_25271A648(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_25272006C(v14, v75, &qword_27F4FC650, &qword_2528C4768);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_2527213D8(v37, &qword_27F4FC650, &qword_2528C4768);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_2527387D0((v39 > 1), v74 + 1, 1, v16, &qword_27F4FC658, &qword_2528C4770, MEMORY[0x277D15F48]);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_25272006C(v14, v76, &qword_27F4FC650, &qword_2528C4768);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_2527213D8(v43, &qword_27F4FC650, &qword_2528C4768);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_25272006C(v14, v75, &qword_27F4FC650, &qword_2528C4768);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_2527213D8(v14, &qword_27F4FC650, &qword_2528C4768);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_25272006C(v14, v76, &qword_27F4FC650, &qword_2528C4768);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_2527213D8(v14, &qword_27F4FC650, &qword_2528C4768);
    sub_25271A648(v65);
    result = sub_2527213D8(v37, &qword_27F4FC650, &qword_2528C4768);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252737064(uint64_t a1)
{
  v77 = sub_2528BECF0();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v21, 1, v16, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_252868D00(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_25271A648(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_25272006C(v14, v75, &qword_27F4FC628, &qword_2528C4750);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_2527213D8(v37, &qword_27F4FC628, &qword_2528C4750);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_2527387D0((v39 > 1), v74 + 1, 1, v16, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_25272006C(v14, v76, &qword_27F4FC628, &qword_2528C4750);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_2527213D8(v43, &qword_27F4FC628, &qword_2528C4750);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_25272006C(v14, v75, &qword_27F4FC628, &qword_2528C4750);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_2527213D8(v14, &qword_27F4FC628, &qword_2528C4750);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_25272006C(v14, v76, &qword_27F4FC628, &qword_2528C4750);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_2527213D8(v14, &qword_27F4FC628, &qword_2528C4750);
    sub_25271A648(v65);
    result = sub_2527213D8(v37, &qword_27F4FC628, &qword_2528C4750);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527377CC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_252737D40(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2527378C0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_252738660(result, v10, 1, v3, &qword_27F4FC818, &qword_2528C48C8, &qword_27F4FC810, &qword_2528C48C0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC810, &qword_2528C48C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2527379E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

char *sub_252737ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC730, &unk_2528D3CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_252737C20(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_252737D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
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

char *sub_252737E90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25273805C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2527381B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_252738394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC698, &unk_2528C4790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_252738510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC720, &qword_2528D5530);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_252738660(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2527387D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_2527389AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252738A78(v11, 0, 0, 1, a1, a2);
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
    sub_25272BF98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_252738A78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_252738B84(a5, a6);
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
    result = sub_2528C0EB0();
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

void *sub_252738B84(uint64_t a1, unint64_t a2)
{
  v3 = sub_252738BD0(a1, a2);
  sub_252738D00(&unk_286493A70);
  return v3;
}

void *sub_252738BD0(uint64_t a1, unint64_t a2)
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

  v6 = sub_252738DEC(v5, 0);
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

  result = sub_2528C0EB0();
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
        v10 = sub_2528C0A60();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_252738DEC(v10, 0);
        result = sub_2528C0E60();
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

uint64_t sub_252738D00(uint64_t result)
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

  result = sub_252738E60(result, v11, 1, v3);
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

void *sub_252738DEC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC898, &qword_2528C4948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_252738E60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC898, &qword_2528C4948);
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

uint64_t sub_252738F54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C0570();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC6D0, MEMORY[0x277D16AB0], MEMORY[0x277D16AD0]);
      v21 = sub_2528C0930();
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
    sub_25273DA54(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_252739234(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2528C0930();
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
    sub_25273DD1C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_252739514(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2528C1120();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25273DFE4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2527395F4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2528C1130();
  AttributeKind.rawValue.getter();
  sub_2528C0A40();

  v6 = sub_2528C1180();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = AttributeKind.rawValue.getter();
      v12 = v11;
      if (v10 == AttributeKind.rawValue.getter() && v12 == v13)
      {
        break;
      }

      v15 = sub_2528C1060();

      if (v15)
      {
        goto LABEL_11;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_25273E104(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273978C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_2528C1130();
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();

  v5 = sub_2528C1180();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_106:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;
    sub_25273E344(a2, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    result = 1;
    goto LABEL_109;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEB00000000726569;
    v10 = 0x6669727550726961;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD000000000000010;
        v9 = 0x80000002528E4FF0;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v10 = 0x5654656C707061;
        break;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x6172656D6163;
        break;
      case 4:
        v10 = 0xD000000000000013;
        v9 = 0x80000002528E5010;
        break;
      case 5:
        v10 = 0xD000000000000014;
        v9 = 0x80000002528E5030;
        break;
      case 6:
        v10 = 0x53746361746E6F63;
        v9 = 0xED0000726F736E65;
        break;
      case 7:
        v9 = 0xE400000000000000;
        v10 = 1919905636;
        break;
      case 8:
        v9 = 0xE300000000000000;
        v10 = 7233894;
        break;
      case 9:
        v9 = 0xE600000000000000;
        v10 = 0x746563756166;
        break;
      case 0xA:
        v10 = 0x6F44656761726167;
        goto LABEL_28;
      case 0xB:
        v10 = 0x6F43726574616568;
        v9 = 0xEC00000072656C6FLL;
        break;
      case 0xC:
        v10 = 0xD000000000000016;
        v9 = 0x80000002528E5080;
        break;
      case 0xD:
        v10 = 0x79746964696D7568;
        v9 = 0xEE00726F736E6553;
        break;
      case 0xE:
        v10 = 0x736E65536B61656CLL;
LABEL_28:
        v9 = 0xEA0000000000726FLL;
        break;
      case 0xF:
        v10 = 0x6C7562746867696CLL;
        v9 = 0xE900000000000062;
        break;
      case 0x10:
        v11 = 0x53746867696CLL;
        goto LABEL_14;
      case 0x11:
        v9 = 0xE400000000000000;
        v10 = 1801678700;
        break;
      case 0x12:
        v10 = 0x65536E6F69746F6DLL;
        v9 = 0xEC000000726F736ELL;
        break;
      case 0x13:
        v10 = 0x636E61707563636FLL;
        v9 = 0xEF726F736E655379;
        break;
      case 0x14:
        v9 = 0xE600000000000000;
        v10 = 0x74656C74756FLL;
        break;
      case 0x15:
        v10 = 0xD000000000000012;
        v9 = 0x80000002528E50F0;
        break;
      case 0x16:
        v10 = 0x7974697275636573;
        v9 = 0xEE006D6574737953;
        break;
      case 0x17:
        v9 = 0xE600000000000000;
        v10 = 0x7265776F6873;
        break;
      case 0x18:
        v11 = 0x53656B6F6D73;
LABEL_14:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
        v9 = 0xEB00000000726F73;
        break;
      case 0x19:
        v10 = 0x656C6B6E69727073;
        v9 = 0xE900000000000072;
        break;
      case 0x1A:
        v9 = 0xE600000000000000;
        v10 = 0x686374697773;
        break;
      case 0x1B:
        v10 = 0x69736976656C6574;
        v9 = 0xEA00000000006E6FLL;
        break;
      case 0x1C:
        v10 = 0xD000000000000011;
        v9 = 0x80000002528E5150;
        break;
      case 0x1D:
        v10 = 0x74736F6D72656874;
        v9 = 0xEA00000000007461;
        break;
      case 0x1E:
        v9 = 0xE500000000000000;
        v10 = 0x65766C6176;
        break;
      case 0x1F:
        v9 = 0xE600000000000000;
        v10 = 0x776F646E6977;
        break;
      case 0x20:
        v10 = 0x6F43776F646E6977;
        v9 = 0xEE00676E69726576;
        break;
      default:
        break;
    }

    v12 = 0x6669727550726961;
    v13 = 0xEB00000000726569;
    switch(a2)
    {
      case 1:
        v13 = 0x80000002528E4FF0;
        if (v10 == 0xD000000000000010)
        {
          goto LABEL_100;
        }

        goto LABEL_101;
      case 2:
        v13 = 0xE700000000000000;
        if (v10 != 0x5654656C707061)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 3:
        v13 = 0xE600000000000000;
        if (v10 != 0x6172656D6163)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 4:
        v13 = 0x80000002528E5010;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 5:
        v13 = 0x80000002528E5030;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 6:
        v13 = 0xED0000726F736E65;
        if (v10 != 0x53746361746E6F63)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 7:
        v13 = 0xE400000000000000;
        if (v10 != 1919905636)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 8:
        v13 = 0xE300000000000000;
        if (v10 != 7233894)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 9:
        v13 = 0xE600000000000000;
        v18 = 1668637030;
        goto LABEL_69;
      case 10:
        v15 = 0x6F44656761726167;
        goto LABEL_82;
      case 11:
        v16 = 0x6F43726574616568;
        v17 = 1919249519;
        goto LABEL_79;
      case 12:
        v13 = 0x80000002528E5080;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 13:
        v19 = 0x79746964696D7568;
        v20 = 0x726F736E6553;
        goto LABEL_90;
      case 14:
        v15 = 0x736E65536B61656CLL;
LABEL_82:
        v13 = 0xEA0000000000726FLL;
        if (v10 != v15)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 15:
        v13 = 0xE900000000000062;
        if (v10 != 0x6C7562746867696CLL)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 16:
        v14 = 0x53746867696CLL;
        goto LABEL_54;
      case 17:
        v13 = 0xE400000000000000;
        if (v10 != 1801678700)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 18:
        v16 = 0x65536E6F69746F6DLL;
        v17 = 1919906670;
LABEL_79:
        v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v16)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 19:
        v13 = 0xEF726F736E655379;
        if (v10 != 0x636E61707563636FLL)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 20:
        v13 = 0xE600000000000000;
        v18 = 1819571567;
LABEL_69:
        if (v10 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x746500000000))
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 21:
        v13 = 0x80000002528E50F0;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 22:
        v19 = 0x7974697275636573;
        v20 = 0x6D6574737953;
        goto LABEL_90;
      case 23:
        v13 = 0xE600000000000000;
        if (v10 != 0x7265776F6873)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 24:
        v14 = 0x53656B6F6D73;
LABEL_54:
        v13 = 0xEB00000000726F73;
        if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 25:
        v13 = 0xE900000000000072;
        if (v10 != 0x656C6B6E69727073)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 26:
        v13 = 0xE600000000000000;
        if (v10 != 0x686374697773)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 27:
        v13 = 0xEA00000000006E6FLL;
        if (v10 != 0x69736976656C6574)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 28:
        v13 = 0x80000002528E5150;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 29:
        v12 = 0x74736F6D72656874;
        v13 = 0xEA00000000007461;
        goto LABEL_99;
      case 30:
        v13 = 0xE500000000000000;
        if (v10 != 0x65766C6176)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 31:
        v13 = 0xE600000000000000;
        if (v10 != 0x776F646E6977)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 32:
        v19 = 0x6F43776F646E6977;
        v20 = 0x676E69726576;
LABEL_90:
        v13 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v19)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      default:
LABEL_99:
        if (v10 != v12)
        {
          goto LABEL_101;
        }

LABEL_100:
        if (v9 != v13)
        {
LABEL_101:
          v21 = sub_2528C1060();

          if (v21)
          {
            goto LABEL_108;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_106;
          }

          continue;
        }

LABEL_108:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_109:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_25273A0C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2528C1130();
  sub_2528C0A40();
  v8 = sub_2528C1180();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2528C1060() & 1) != 0)
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

    sub_25273ED04(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25273A214(_WORD *a1, uint64_t a2)
{
  v3 = a2;
  v14 = a2;
  v5 = *v2;
  v13 = a2;
  sub_2528C1130();
  DeviceType.hash(into:)(v12);
  v6 = sub_2528C1180();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v12[0] = *(*(v5 + 48) + 2 * v8);
      if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v12, &v14))
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        v3 = v14;
        goto LABEL_6;
      }
    }

    result = 0;
    LOWORD(v3) = *(*(v5 + 48) + 2 * v8);
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v12 = *v2;
    sub_25273EE84(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_25273A32C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BFDE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC7A0, MEMORY[0x277D16348], MEMORY[0x277D16360]);
      v21 = sub_2528C0930();
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
    sub_25273EFEC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25273A60C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C07B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8], MEMORY[0x277D16ED0]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC6B0, MEMORY[0x277D16EC8], MEMORY[0x277D16ED8]);
      v21 = sub_2528C0930();
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
    sub_25273F2B4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25273A8EC(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2528C1130();
  MEMORY[0x2530A87A0](a2);
  v6 = sub_2528C1180();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25273F57C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273A9E4(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2530A8770](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25273F6D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273AACC(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2528C1130();
  RobotVacuumCleanerCleanMode.rawValue.getter();
  sub_2528C0A40();

  v6 = sub_2528C1180();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_25273F7FC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_51;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE600000000000000;
    v11 = 0x6D7575636176;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE300000000000000;
        v11 = 7368557;
        break;
      case 2:
        v11 = 0x68546D7575636176;
        v10 = 0xED0000706F4D6E65;
        break;
      case 3:
        v11 = 0x61656C4370656564;
        v10 = 0xE90000000000006ELL;
        break;
      case 4:
        v10 = 0xE400000000000000;
        v11 = 1869903201;
        break;
      case 5:
        v10 = 0xE500000000000000;
        v11 = 0x7465697571;
        break;
      case 6:
        v10 = 0xE500000000000000;
        v11 = 0x6B63697571;
        break;
      case 7:
        v10 = 0xE800000000000000;
        v11 = 0x6573696F4E776F6CLL;
        break;
      case 8:
        v10 = 0xE900000000000079;
        v11 = 0x6772656E45776F6CLL;
        break;
      case 9:
        v10 = 0xE800000000000000;
        v11 = 0x6E6F697461636176;
        break;
      case 0xA:
        v10 = 0xE500000000000000;
        v11 = 0x746867696ELL;
        break;
      case 0xB:
        v10 = 0xE300000000000000;
        v11 = 7954788;
        break;
      case 0xC:
        v10 = 0xE300000000000000;
        v11 = 7235949;
        break;
      case 0xD:
        v10 = 0xE300000000000000;
        v11 = 7889261;
        break;
      default:
        break;
    }

    v12 = 0xE600000000000000;
    v13 = 0x6D7575636176;
    switch(a2)
    {
      case 1:
        v12 = 0xE300000000000000;
        if (v11 == 7368557)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 2:
        v12 = 0xED0000706F4D6E65;
        if (v11 != 0x68546D7575636176)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 3:
        v12 = 0xE90000000000006ELL;
        if (v11 != 0x61656C4370656564)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v12 = 0xE400000000000000;
        if (v11 != 1869903201)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v12 = 0xE500000000000000;
        if (v11 != 0x7465697571)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v12 = 0xE500000000000000;
        if (v11 != 0x6B63697571)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v12 = 0xE800000000000000;
        if (v11 != 0x6573696F4E776F6CLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v12 = 0xE900000000000079;
        if (v11 != 0x6772656E45776F6CLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v12 = 0xE800000000000000;
        if (v11 != 0x6E6F697461636176)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v12 = 0xE500000000000000;
        v13 = 0x746867696ELL;
        goto LABEL_41;
      case 11:
        v12 = 0xE300000000000000;
        if (v11 != 7954788)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        v12 = 0xE300000000000000;
        if (v11 != 7235949)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v12 = 0xE300000000000000;
        if (v11 != 7889261)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
LABEL_41:
        if (v11 != v13)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v10 != v12)
        {
LABEL_43:
          v14 = sub_2528C1060();

          if (v14)
          {
            goto LABEL_50;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

LABEL_50:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_51:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_25273AF34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BFCF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC640, MEMORY[0x277D15F48], MEMORY[0x277D15F68]);
      v21 = sub_2528C0930();
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
    sub_25273FCC0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25273B214(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v11 = 0xE400000000000000;
          v10 = 1701670760;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 1836019570;
          }

          else
          {
            v10 = 1701736314;
          }

          v11 = 0xE400000000000000;
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x7954656369766564;
        }

        else
        {
          v10 = 0x70756F7267;
        }

        if (v9 == 1)
        {
          v11 = 0xEA00000000006570;
        }

        else
        {
          v11 = 0xE500000000000000;
        }
      }

      else
      {
        v10 = 0x614E656369766564;
        v11 = 0xEA0000000000656DLL;
      }

      v12 = 1836019570;
      if (a2 != 4)
      {
        v12 = 1701736314;
      }

      if (a2 == 3)
      {
        v12 = 1701670760;
      }

      v13 = 0xEA00000000006570;
      v14 = 0x7954656369766564;
      if (a2 != 1)
      {
        v14 = 0x70756F7267;
        v13 = 0xE500000000000000;
      }

      if (!a2)
      {
        v14 = 0x614E656369766564;
        v13 = 0xEA0000000000656DLL;
      }

      v15 = a2 <= 2u ? v14 : v12;
      v16 = a2 <= 2u ? v13 : 0xE400000000000000;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_2528C1060();

      if (v17)
      {
        goto LABEL_38;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_25273FF88(a2, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273B530(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528C0570();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6D8, &qword_2528C47B0);
  result = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]);
      result = sub_2528C0900();
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

uint64_t sub_25273B88C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528BECF0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
  result = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2528C0900();
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

uint64_t sub_25273BBE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC728, &unk_2528C47F0);
  result = sub_2528C0E40();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_2528C1120();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25273BE0C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2528C0E40();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      v21 = sub_2528C1130();
      a4(v21);
      sub_2528C0A40();

      result = sub_2528C1180();
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
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
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
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_25273C080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  result = sub_2528C0E40();
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
      sub_2528C1130();
      sub_2528C0A40();
      result = sub_2528C1180();
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

uint64_t sub_25273C2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
  result = sub_2528C0E40();
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      v27 = v17;
      sub_2528C1130();
      DeviceType.hash(into:)(v26);
      result = sub_2528C1180();
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
      *(*(v5 + 48) + 2 * v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25273C534(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528BFDE0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
  result = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      result = sub_2528C0900();
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

uint64_t sub_25273C890(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528C07B0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6B8, &qword_2528C47A0);
  result = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8], MEMORY[0x277D16ED0]);
      result = sub_2528C0900();
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

uint64_t sub_25273CBEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC690, &qword_2528C4788);
  result = sub_2528C0E40();
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
      sub_2528C1130();
      MEMORY[0x2530A87A0](v17);
      result = sub_2528C1180();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25273CE3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6C0, &qword_2528C47A8);
  result = sub_2528C0E40();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x2530A8770](*(v5 + 40), v17, 4);
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25273D064(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6F8, &unk_2528D3CA0);
  result = sub_2528C0E40();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25273D408(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528BFCF0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC648, &qword_2528C4760);
  result = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
      result = sub_2528C0900();
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

uint64_t sub_25273D764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC800, &qword_2528C48B8);
  result = sub_2528C0E40();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25273DA54(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2528C0570();
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
    sub_25273B530(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252740984(MEMORY[0x277D16AB0], &qword_27F4FC6D8, &qword_2528C47B0);
      goto LABEL_12;
    }

    sub_252740D00(v10 + 1);
  }

  v12 = *v3;
  sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]);
  v13 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC6D0, MEMORY[0x277D16AB0], MEMORY[0x277D16AD0]);
      v21 = sub_2528C0930();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273DD1C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2528BECF0();
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
    sub_25273B88C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252740984(MEMORY[0x277CC95F0], &qword_27F4FC678, &qword_2528C4780);
      goto LABEL_12;
    }

    sub_25274101C(v10 + 1);
  }

  v12 = *v3;
  sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2528C0930();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273DFE4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273BBE8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_252740328();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252741338(v5 + 1);
  }

  v8 = *v3;
  result = sub_2528C1120();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273E104(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_25273BE0C(v6 + 1, &qword_27F4FC778, &unk_2528C4840, AttributeKind.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252740BD0(&qword_27F4FC778, &unk_2528C4840);
      goto LABEL_16;
    }

    sub_252741528(v6 + 1, &qword_27F4FC778, &unk_2528C4840, AttributeKind.rawValue.getter);
  }

  v8 = *v3;
  sub_2528C1130();
  AttributeKind.rawValue.getter();
  sub_2528C0A40();

  result = sub_2528C1180();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = AttributeKind.rawValue.getter();
      v13 = v12;
      if (v11 == AttributeKind.rawValue.getter() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_2528C1060();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273E344(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25273BE0C(v6 + 1, &qword_27F4FC880, &qword_2528C4930, DeviceType.SingleDeviceType.rawValue.getter);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_252740BD0(&qword_27F4FC880, &qword_2528C4930);
        goto LABEL_113;
      }

      sub_252741528(v6 + 1, &qword_27F4FC880, &qword_2528C4930, DeviceType.SingleDeviceType.rawValue.getter);
    }

    v8 = *v3;
    sub_2528C1130();
    DeviceType.SingleDeviceType.rawValue.getter();
    sub_2528C0A40();

    result = sub_2528C1180();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xEB00000000726569;
        v12 = 0xEB00000000726569;
        v13 = 0x6669727550726961;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v13 = 0xD000000000000010;
            v12 = 0x80000002528E4FF0;
            break;
          case 2:
            v12 = 0xE700000000000000;
            v13 = 0x5654656C707061;
            break;
          case 3:
            v12 = 0xE600000000000000;
            v13 = 0x6172656D6163;
            break;
          case 4:
            v13 = 0xD000000000000013;
            v12 = 0x80000002528E5010;
            break;
          case 5:
            v13 = 0xD000000000000014;
            v12 = 0x80000002528E5030;
            break;
          case 6:
            v13 = 0x53746361746E6F63;
            v12 = 0xED0000726F736E65;
            break;
          case 7:
            v12 = 0xE400000000000000;
            v13 = 1919905636;
            break;
          case 8:
            v12 = 0xE300000000000000;
            v13 = 7233894;
            break;
          case 9:
            v12 = 0xE600000000000000;
            v13 = 0x746563756166;
            break;
          case 0xA:
            v13 = 0x6F44656761726167;
            goto LABEL_35;
          case 0xB:
            v13 = 0x6F43726574616568;
            v12 = 0xEC00000072656C6FLL;
            break;
          case 0xC:
            v13 = 0xD000000000000016;
            v12 = 0x80000002528E5080;
            break;
          case 0xD:
            v13 = 0x79746964696D7568;
            v12 = 0xEE00726F736E6553;
            break;
          case 0xE:
            v13 = 0x736E65536B61656CLL;
LABEL_35:
            v12 = 0xEA0000000000726FLL;
            break;
          case 0xF:
            v13 = 0x6C7562746867696CLL;
            v12 = 0xE900000000000062;
            break;
          case 0x10:
            v14 = 0x53746867696CLL;
            goto LABEL_21;
          case 0x11:
            v12 = 0xE400000000000000;
            v13 = 1801678700;
            break;
          case 0x12:
            v13 = 0x65536E6F69746F6DLL;
            v12 = 0xEC000000726F736ELL;
            break;
          case 0x13:
            v13 = 0x636E61707563636FLL;
            v12 = 0xEF726F736E655379;
            break;
          case 0x14:
            v12 = 0xE600000000000000;
            v13 = 0x74656C74756FLL;
            break;
          case 0x15:
            v13 = 0xD000000000000012;
            v12 = 0x80000002528E50F0;
            break;
          case 0x16:
            v13 = 0x7974697275636573;
            v12 = 0xEE006D6574737953;
            break;
          case 0x17:
            v12 = 0xE600000000000000;
            v13 = 0x7265776F6873;
            break;
          case 0x18:
            v14 = 0x53656B6F6D73;
LABEL_21:
            v13 = v14 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
            v12 = 0xEB00000000726F73;
            break;
          case 0x19:
            v12 = 0xE900000000000072;
            v13 = 0x656C6B6E69727073;
            break;
          case 0x1A:
            v12 = 0xE600000000000000;
            v13 = 0x686374697773;
            break;
          case 0x1B:
            v12 = 0xEA00000000006E6FLL;
            v13 = 0x69736976656C6574;
            break;
          case 0x1C:
            v13 = 0xD000000000000011;
            v12 = 0x80000002528E5150;
            break;
          case 0x1D:
            v12 = 0xEA00000000007461;
            v13 = 0x74736F6D72656874;
            break;
          case 0x1E:
            v12 = 0xE500000000000000;
            v13 = 0x65766C6176;
            break;
          case 0x1F:
            v12 = 0xE600000000000000;
            v13 = 0x776F646E6977;
            break;
          case 0x20:
            v13 = 0x6F43776F646E6977;
            v12 = 0xEE00676E69726576;
            break;
          default:
            break;
        }

        v15 = 0x6669727550726961;
        switch(v5)
        {
          case 1:
            v11 = 0x80000002528E4FF0;
            if (v13 == 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_108;
          case 2:
            v11 = 0xE700000000000000;
            if (v13 != 0x5654656C707061)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 3:
            v11 = 0xE600000000000000;
            if (v13 != 0x6172656D6163)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 4:
            v11 = 0x80000002528E5010;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 5:
            v11 = 0x80000002528E5030;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 6:
            v11 = 0xED0000726F736E65;
            if (v13 != 0x53746361746E6F63)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 7:
            v11 = 0xE400000000000000;
            if (v13 != 1919905636)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 8:
            v11 = 0xE300000000000000;
            if (v13 != 7233894)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 9:
            v11 = 0xE600000000000000;
            v20 = 1668637030;
            goto LABEL_76;
          case 10:
            v17 = 0x6F44656761726167;
            goto LABEL_89;
          case 11:
            v18 = 0x6F43726574616568;
            v19 = 1919249519;
            goto LABEL_86;
          case 12:
            v11 = 0x80000002528E5080;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 13:
            v21 = 0x79746964696D7568;
            v22 = 0x726F736E6553;
            goto LABEL_97;
          case 14:
            v17 = 0x736E65536B61656CLL;
LABEL_89:
            v11 = 0xEA0000000000726FLL;
            if (v13 != v17)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 15:
            v11 = 0xE900000000000062;
            if (v13 != 0x6C7562746867696CLL)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 16:
            v16 = 0x53746867696CLL;
            goto LABEL_61;
          case 17:
            v11 = 0xE400000000000000;
            if (v13 != 1801678700)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 18:
            v18 = 0x65536E6F69746F6DLL;
            v19 = 1919906670;
LABEL_86:
            v11 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v18)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 19:
            v11 = 0xEF726F736E655379;
            if (v13 != 0x636E61707563636FLL)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 20:
            v11 = 0xE600000000000000;
            v20 = 1819571567;
LABEL_76:
            if (v13 != (v20 & 0xFFFF0000FFFFFFFFLL | 0x746500000000))
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 21:
            v11 = 0x80000002528E50F0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 22:
            v21 = 0x7974697275636573;
            v22 = 0x6D6574737953;
            goto LABEL_97;
          case 23:
            v11 = 0xE600000000000000;
            if (v13 != 0x7265776F6873)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 24:
            v16 = 0x53656B6F6D73;
LABEL_61:
            v11 = 0xEB00000000726F73;
            if (v13 != (v16 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 25:
            v11 = 0xE900000000000072;
            if (v13 != 0x656C6B6E69727073)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 26:
            v11 = 0xE600000000000000;
            if (v13 != 0x686374697773)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 27:
            v11 = 0xEA00000000006E6FLL;
            if (v13 != 0x69736976656C6574)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 28:
            v11 = 0x80000002528E5150;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 29:
            v11 = 0xEA00000000007461;
            v15 = 0x74736F6D72656874;
            goto LABEL_106;
          case 30:
            v11 = 0xE500000000000000;
            if (v13 != 0x65766C6176)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 31:
            v11 = 0xE600000000000000;
            if (v13 != 0x776F646E6977)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 32:
            v21 = 0x6F43776F646E6977;
            v22 = 0x676E69726576;
LABEL_97:
            v11 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v13 != v21)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          default:
LABEL_106:
            if (v13 != v15)
            {
              goto LABEL_108;
            }

LABEL_107:
            if (v12 == v11)
            {
              goto LABEL_116;
            }

LABEL_108:
            v23 = sub_2528C1060();

            if (v23)
            {
              goto LABEL_117;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_113:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v5;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_116:

LABEL_117:
    result = sub_2528C1090();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }

  return result;
}

uint64_t sub_25273ED04(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25273C080(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_252740468();
      goto LABEL_16;
    }

    sub_25274176C(v8 + 1);
  }

  v10 = *v4;
  sub_2528C1130();
  sub_2528C0A40();
  result = sub_2528C1180();
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

      result = sub_2528C1060();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273EE84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v17 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_25273C2E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2527405C4();
      goto LABEL_13;
    }

    sub_2527419A4(v6 + 1);
  }

  v8 = *v3;
  v16 = v5;
  sub_2528C1130();
  DeviceType.hash(into:)(v15);
  result = sub_2528C1180();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (1)
    {
      v15[0] = *(*(v8 + 48) + 2 * a2);
      result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v15, &v17);
      if (result)
      {
        goto LABEL_16;
      }

      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        v5 = v17;
        break;
      }
    }
  }

LABEL_13:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_16:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273EFEC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2528BFDE0();
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
    sub_25273C534(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252740984(MEMORY[0x277D16348], &qword_27F4FC790, &qword_2528C4858);
      goto LABEL_12;
    }

    sub_252741BC8(v10 + 1);
  }

  v12 = *v3;
  sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
  v13 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC7A0, MEMORY[0x277D16348], MEMORY[0x277D16360]);
      v21 = sub_2528C0930();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273F2B4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2528C07B0();
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
    sub_25273C890(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252740984(MEMORY[0x277D16EC8], &qword_27F4FC6B8, &qword_2528C47A0);
      goto LABEL_12;
    }

    sub_252741EE4(v10 + 1);
  }

  v12 = *v3;
  sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8], MEMORY[0x277D16ED0]);
  v13 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC6B0, MEMORY[0x277D16EC8], MEMORY[0x277D16ED8]);
      v21 = sub_2528C0930();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void sub_25273F57C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273CBEC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_252740704();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252742200(v5 + 1);
  }

  v8 = *v3;
  sub_2528C1130();
  MEMORY[0x2530A87A0](result);
  v9 = sub_2528C1180();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HMCharacteristicValueHeatingCooling(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2528C1090();
  __break(1u);
}

uint64_t sub_25273F6D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273CE3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_252740844();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252742420(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x2530A8770](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273F7FC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25273D064(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_252740BD0(&qword_27F4FC6F8, &unk_2528D3CA0);
        goto LABEL_55;
      }

      sub_252742614(v7 + 1);
    }

    v9 = *v3;
    sub_2528C1130();
    RobotVacuumCleanerCleanMode.rawValue.getter();
    sub_2528C0A40();

    result = sub_2528C1180();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE600000000000000;
        v13 = 0x6D7575636176;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE300000000000000;
            v13 = 7368557;
            break;
          case 2:
            v13 = 0x68546D7575636176;
            v12 = 0xED0000706F4D6E65;
            break;
          case 3:
            v13 = 0x61656C4370656564;
            v12 = 0xE90000000000006ELL;
            break;
          case 4:
            v12 = 0xE400000000000000;
            v13 = 1869903201;
            break;
          case 5:
            v12 = 0xE500000000000000;
            v13 = 0x7465697571;
            break;
          case 6:
            v12 = 0xE500000000000000;
            v13 = 0x6B63697571;
            break;
          case 7:
            v12 = 0xE800000000000000;
            v13 = 0x6573696F4E776F6CLL;
            break;
          case 8:
            v12 = 0xE900000000000079;
            v13 = 0x6772656E45776F6CLL;
            break;
          case 9:
            v12 = 0xE800000000000000;
            v13 = 0x6E6F697461636176;
            break;
          case 0xA:
            v12 = 0xE500000000000000;
            v13 = 0x746867696ELL;
            break;
          case 0xB:
            v12 = 0xE300000000000000;
            v13 = 7954788;
            break;
          case 0xC:
            v12 = 0xE300000000000000;
            v13 = 7235949;
            break;
          case 0xD:
            v12 = 0xE300000000000000;
            v13 = 7889261;
            break;
          default:
            break;
        }

        v14 = 0xE600000000000000;
        v15 = 0x6D7575636176;
        switch(v6)
        {
          case 1:
            v14 = 0xE300000000000000;
            if (v13 == 7368557)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 2:
            v14 = 0xED0000706F4D6E65;
            if (v13 != 0x68546D7575636176)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 3:
            v14 = 0xE90000000000006ELL;
            if (v13 != 0x61656C4370656564)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v14 = 0xE400000000000000;
            if (v13 != 1869903201)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v14 = 0xE500000000000000;
            if (v13 != 0x7465697571)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v14 = 0xE500000000000000;
            if (v13 != 0x6B63697571)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v14 = 0xE800000000000000;
            if (v13 != 0x6573696F4E776F6CLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v14 = 0xE900000000000079;
            if (v13 != 0x6772656E45776F6CLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v14 = 0xE800000000000000;
            if (v13 != 0x6E6F697461636176)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v14 = 0xE500000000000000;
            v15 = 0x746867696ELL;
            goto LABEL_48;
          case 11:
            v14 = 0xE300000000000000;
            if (v13 != 7954788)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            v14 = 0xE300000000000000;
            if (v13 != 7235949)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v14 = 0xE300000000000000;
            if (v13 != 7889261)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
LABEL_48:
            if (v13 != v15)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v12 == v14)
            {
              goto LABEL_58;
            }

LABEL_50:
            v16 = sub_2528C1060();

            if (v16)
            {
              goto LABEL_59;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_55:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_58:

LABEL_59:
    result = sub_2528C1090();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_25273FCC0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2528BFCF0();
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
    sub_25273D408(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252740984(MEMORY[0x277D15F48], &qword_27F4FC648, &qword_2528C4760);
      goto LABEL_12;
    }

    sub_252742988(v10 + 1);
  }

  v12 = *v3;
  sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48], MEMORY[0x277D15F58]);
  v13 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC640, MEMORY[0x277D15F48], MEMORY[0x277D15F68]);
      v21 = sub_2528C0930();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273FF88(uint64_t result, unint64_t a2, char a3)
{
  v24 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a3)
  {
    sub_25273D764(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_252740BD0(&qword_27F4FC800, &qword_2528C48B8);
      goto LABEL_43;
    }

    sub_252742CA4(v5 + 1);
  }

  v7 = *v3;
  sub_2528C1130();
  sub_2528C0A40();

  result = sub_2528C1180();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v12 = 0xE400000000000000;
          v11 = 1701670760;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 1836019570;
          }

          else
          {
            v11 = 1701736314;
          }

          v12 = 0xE400000000000000;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x7954656369766564;
        }

        else
        {
          v11 = 0x70756F7267;
        }

        if (v10 == 1)
        {
          v12 = 0xEA00000000006570;
        }

        else
        {
          v12 = 0xE500000000000000;
        }
      }

      else
      {
        v11 = 0x614E656369766564;
        v12 = 0xEA0000000000656DLL;
      }

      v13 = 1836019570;
      if (v24 != 4)
      {
        v13 = 1701736314;
      }

      if (v24 == 3)
      {
        v13 = 1701670760;
      }

      v14 = 0xEA00000000006570;
      v15 = 0x7954656369766564;
      if (v24 != 1)
      {
        v15 = 0x70756F7267;
        v14 = 0xE500000000000000;
      }

      if (!v24)
      {
        v15 = 0x614E656369766564;
        v14 = 0xEA0000000000656DLL;
      }

      v16 = v24 <= 2u ? v15 : v13;
      v17 = v24 <= 2u ? v14 : 0xE400000000000000;
      if (v11 == v16 && v12 == v17)
      {
        goto LABEL_46;
      }

      v18 = sub_2528C1060();

      if (v18)
      {
        goto LABEL_47;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_43:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v24;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_46:

LABEL_47:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_252740328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC728, &unk_2528C47F0);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252740468()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  v2 = *v0;
  v3 = sub_2528C0E30();
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

void *sub_2527405C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252740704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC690, &qword_2528C4788);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252740844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6C0, &qword_2528C47A8);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252740984(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_2528C0E30();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}