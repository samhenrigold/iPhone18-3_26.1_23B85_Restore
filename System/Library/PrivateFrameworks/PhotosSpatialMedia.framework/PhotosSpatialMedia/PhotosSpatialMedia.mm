uint64_t SpatialPhoto.GenerationEffectAnimator.__allocating_init(device:commandQueue:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v4 = swift_allocObject();
  SpatialPhoto.GenerationEffectAnimator.init(device:commandQueue:)(a1, a2);
  return v4;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.init(device:commandQueue:)(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0x400000003F19999ALL;
  *(v4 + 40) = 0;
  _s24GenerationEffectRendererCMa();
  swift_allocObject();
  sub_25E6C991C(a1, a2);
  if (v3)
  {
    v8 = type metadata accessor for SpatialPhoto.GenerationEffectAnimator();
    OUTLINED_FUNCTION_2(v8);
  }

  else
  {
    *(v4 + 24) = v7;
  }

  return v4;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.__allocating_init()()
{
  OUTLINED_FUNCTION_0();
  v0 = swift_allocObject();
  SpatialPhoto.GenerationEffectAnimator.init()();
  return v0;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.init()()
{
  v2 = v0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0x400000003F19999ALL;
  *(v0 + 40) = 0;
  v3 = MTLCreateSystemDefaultDevice();
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 newCommandQueue];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_25E6B7598();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v6 = v5;
  _s24GenerationEffectRendererCMa();
  swift_allocObject();
  sub_25E6C991C(v4, v6);
  if (v1)
  {
LABEL_7:
    v9 = type metadata accessor for SpatialPhoto.GenerationEffectAnimator();
    OUTLINED_FUNCTION_2(v9);
    return v2;
  }

  *(v2 + 24) = v7;
  return v2;
}

uint64_t sub_25E6B709C(uint64_t a1)
{

  sub_25E6C9CDC(a1);
}

uint64_t sub_25E6B70E4(void *a1)
{
  v3 = v1;
  *(v3 + 40) = 0;

  sub_25E6C9CA0(a1);

  if (!v2)
  {
    result = swift_beginAccess();
    *(v3 + 16) = 1;
  }

  return result;
}

uint64_t sub_25E6B7164(void *a1)
{

  sub_25E6C9CA0(a1);
}

uint64_t sub_25E6B71A8(double a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_3(a2);
  if (*(v2 + 16) == 1)
  {
    v5 = a1;
    *(v2 + 40) = *(v2 + 40) + v5;
  }

  return result;
}

uint64_t sub_25E6B71F0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];

  sub_25E6C9D18(v1, v2, v3);
}

uint64_t sub_25E6B7254@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25E6B72AC(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E6B72D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_25E6B7378(uint64_t a1, uint64_t a2)
{
  v2 = sub_25E6D80F4();
  v4 = v3;
  if (v2 == sub_25E6D80F4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25E6D83B4();
  }

  return v7 & 1;
}

uint64_t sub_25E6B73FC(unsigned __int8 a1, char a2)
{
  v2 = 1701602409;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701602409;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E69646E6570;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x800000025E6DBAB0;
      break;
    case 3:
      v5 = 0x6E6552736465656ELL;
      v3 = 0xEB00000000726564;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x800000025E6DBAB0;
      break;
    case 3:
      v2 = 0x6E6552736465656ELL;
      v6 = 0xEB00000000726564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E6D83B4();
  }

  return v8 & 1;
}

unint64_t sub_25E6B7598()
{
  result = qword_27FD00A88;
  if (!qword_27FD00A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00A88);
  }

  return result;
}

uint64_t _s16RegionOfInterestOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6B77E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6B77F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25E6B7858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6B7870(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s29GenerationAnimationParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s29GenerationAnimationParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_25E6B7944(uint64_t a1, id *a2)
{
  result = sub_25E6D80D4();
  *a2 = 0;
  return result;
}

uint64_t sub_25E6B79BC(uint64_t a1, id *a2)
{
  v3 = sub_25E6D80E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25E6B7A3C(uint64_t a1)
{
  sub_25E6D80F4();
  v1 = sub_25E6D80C4();

  return v1;
}

uint64_t sub_25E6B7A74(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_25E6D78F4();
}

uint64_t sub_25E6B7B38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25E6B7A3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25E6B7B68(uint64_t a1)
{
  v1 = sub_25E6D80F4();
  v2 = MEMORY[0x25F8BC440](v1);

  return v2;
}

uint64_t sub_25E6B7BA8(uint64_t a1, uint64_t a2)
{
  sub_25E6D80F4();
  sub_25E6D8114();
}

uint64_t sub_25E6B7C04(uint64_t a1, uint64_t a2)
{
  sub_25E6D80F4();
  sub_25E6D8414();
  sub_25E6D8114();
  v2 = sub_25E6D8434();

  return v2;
}

void sub_25E6B7C90(uint64_t a2@<X8>)
{
  sub_25E6B7CC4();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_25E6B7D9C(uint64_t a1, uint64_t a2)
{
  sub_25E6D8414();
  swift_getWitnessTable();
  sub_25E6D7904();
  return sub_25E6D8434();
}

uint64_t sub_25E6B7E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E6B7E94@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25E6D80C4();

  *a2 = v3;
  return result;
}

uint64_t sub_25E6B7EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B7F08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E6B7F0C(uint64_t a1)
{
  v2 = sub_25E6B7E4C(&qword_27FD01480, type metadata accessor for CIImageOption, &unk_25E6DA848);
  v3 = sub_25E6B7E4C(&unk_27FD00CE0, type metadata accessor for CIImageOption, &unk_25E6DA79C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25E6B7FD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6B7FF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_25E6B8058(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t SpatialPhoto.GyroView.init(url:rendererKind:metalDevice:renderView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a6;
  v37 = a7;
  v33 = a4;
  v34 = a5;
  v39 = a2;
  v31 = a8;
  v35 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v32 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v30 = v13 - v12;
  sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v29[2] = v15;
  v29[3] = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v16 = sub_25E6D7844();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  (*(v18 + 16))(v29 - v21, a1, v16);
  sub_25E6D7CF4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v38 = a3;
  sub_25E6D7C84();
  v22 = v32;
  v23 = v39;
  v24 = v35;
  (*(v32 + 16))(v30, v39, v35);
  v25 = OUTLINED_FUNCTION_9();
  SpatialPhoto.GyroView.init(scene:rendererKind:renderView:)(v25, v26, v33, v34, v36, v37, v27);
  swift_unknownObjectRelease();
  (*(v22 + 8))(v23, v24);
  return (*(v18 + 8))(a1, v16);
}

uint64_t SpatialPhoto.GyroView.init(scene:rendererKind:renderView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for SpatialPhoto.GyroView(0, a5, a6, a4);
  v15 = &a7[v14[12]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v14[13];
  *&a7[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E78, &qword_25E6DA8F0);
  swift_storeEnumTagMultiPayload();
  v17 = &a7[v14[14]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *&a7[v14[10]] = a1;
  *a7 = a3;
  *(a7 + 1) = a4;
  v18 = v14[9];
  v19 = sub_25E6D7D24();
  OUTLINED_FUNCTION_7();
  v27 = v20;
  (*(v20 + 16))(&a7[v18], a2, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = OUTLINED_FUNCTION_6();
  _s8GyroViewV5StateVMa(v22, v23, a6, v24);
  sub_25E6D7E04();
  v25 = *(v27 + 8);

  return v25(a2, v19);
}

uint64_t sub_25E6B87C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B87E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6B87E8()
{
  v0 = sub_25E6D7A84();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D3CB80]);
  sub_25E6D7AB4();
  swift_allocObject();
  v3 = sub_25E6D7A94();
  sub_25E6BB770();

  v4 = sub_25E6D8274();
  v7 = 0;
  type metadata accessor for SpatialPhoto.GyroCameraAnimator(0);
  swift_allocObject();
  SpatialPhoto.GyroCameraAnimator.init(queue:motionType:changeHandler:)(v4, &v7, sub_25E6BB768, v3);
  return v3;
}

uint64_t sub_25E6B8930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s8GyroViewV5StateVMa(255, *(a1 + 16), *(a1 + 24), a4);
  sub_25E6D7E24();
  sub_25E6D7E14();
  return v5;
}

uint64_t sub_25E6B8980(uint64_t a1)
{
  v3 = sub_25E6D7E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_25E6D8234();
    v10 = sub_25E6D7FA4();
    sub_25E6D7DD4();

    sub_25E6D7E74();
    swift_getAtKeyPath();
    j__swift_release(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t EnvironmentValues.spatialPhotoCameraController.getter()
{
  sub_25E6BA974();
  sub_25E6D7E94();
  return v1;
}

uint64_t sub_25E6B8B0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoCameraController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25E6B8BA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_25E6D7E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E78, &qword_25E6DA8F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_25E6BB698(v2 + *(a1 + 52), &v14 - v10, &qword_27FD00E78, &qword_25E6DA8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25E6BB6F8(v11, a2);
  }

  sub_25E6D8234();
  v13 = sub_25E6D7FA4();
  sub_25E6D7DD4();

  sub_25E6D7E74();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

void *EnvironmentValues.spatialPhotoRenderKindOverride.getter()
{
  sub_25E6BA9C8();

  return sub_25E6D7E94();
}

uint64_t sub_25E6B8DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90, &qword_25E6DA920);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_25E6BB698(a1, &v6 - v3, &qword_27FD00E90, &qword_25E6DA920);
  return EnvironmentValues.spatialPhotoRenderKindOverride.setter(v4);
}

uint64_t EnvironmentValues.spatialPhotoRenderKindOverride.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90, &qword_25E6DA920);
  OUTLINED_FUNCTION_11(v2);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9();
  sub_25E6BB698(v4, v5, &qword_27FD00E90, &qword_25E6DA920);
  sub_25E6BA9C8();
  sub_25E6D7EA4();
  return sub_25E6BAA1C(a1);
}

uint64_t sub_25E6B8F3C(uint64_t a1)
{
  v3 = sub_25E6D7E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_25E6D8234();
    v9 = sub_25E6D7FA4();
    sub_25E6D7DD4();

    sub_25E6D7E74();
    swift_getAtKeyPath();
    sub_25E6BAB08(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t EnvironmentValues.spatialPhotoDisableGyroAnimator.getter()
{
  sub_25E6BAA84();
  sub_25E6D7E94();
  return v1;
}

uint64_t sub_25E6B90CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoDisableGyroAnimator.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SpatialPhoto.GyroView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v83 = a1;
  v3 = a1 - 8;
  v92 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v99 = v4;
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90, &qword_25E6DA920);
  OUTLINED_FUNCTION_11(v5);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v8 = (&v76 - v7);
  v9 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v82 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v84 = v13 - v12;
  v14 = *(v3 + 24);
  v97 = *(v3 + 32);
  v98 = v14;
  v16 = type metadata accessor for SpatialPhoto.SceneView(0, v14, v97, v15);
  OUTLINED_FUNCTION_1_0();
  v85 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v95 = (&v76 - v19);
  OUTLINED_FUNCTION_6();
  sub_25E6D7E64();
  OUTLINED_FUNCTION_1_0();
  v87 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v96 = &v76 - v22;
  v100 = v23;
  v24 = sub_25E6D7E64();
  OUTLINED_FUNCTION_1_0();
  v90 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v89 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v86 = &v76 - v30;
  MEMORY[0x28223BE20](v29);
  v88 = &v76 - v31;
  v32 = sub_25E6D7F94();
  OUTLINED_FUNCTION_1_0();
  v34 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  v37 = &v76 - v36;
  v38 = *(v2 + *(v3 + 48));
  v39 = MEMORY[0x277CE0790];
  v40 = MEMORY[0x277CE1410];
  if (v38)
  {
    v80 = &v76 - v36;
    v81 = v32;
    v41 = v38;

    v42 = v83;
    sub_25E6B8BA0(v83, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      v43 = v84;
      (*(v82 + 16))(v84, v2 + *(v42 + 36), v9);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        sub_25E6BAA1C(v8);
      }
    }

    else
    {
      v43 = v84;
      (*(v82 + 32))(v84, v8, v9);
    }

    v84 = v34;
    v45 = sub_25E6B8980(v42);
    v93 = v16;
    v79 = v24;
    if (v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = sub_25E6B8930(v42, v46, v47, v48);
    }

    v50 = *v2;
    v51 = v2[1];
    v78 = v41;

    v52 = v97;
    v53 = v98;
    SpatialPhoto.SceneView.init(scene:rendererKind:cameraProvider:renderer:renderEffect:renderView:)(v41, v43, v49, MEMORY[0x277D3CB88], 0, 0, 0, v95, v50, v51, v98, v97);
    v54 = v92;
    v82 = *(v92 + 16);
    v55 = v91;
    (v82)(v91, v2, v42);
    v77 = v2;
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v53;
    *(v57 + 24) = v52;
    v92 = *(v54 + 32);
    (v92)(v57 + v56, v55, v42);
    OUTLINED_FUNCTION_0_0();
    v58 = v93;
    WitnessTable = swift_getWitnessTable();
    v60 = v95;
    sub_25E6D7FF4();

    (*(v85 + 8))(v60, v58);
    (v82)(v55, v77, v42);
    v61 = swift_allocObject();
    v62 = v97;
    *(v61 + 16) = v98;
    *(v61 + 24) = v62;
    (v92)(v61 + v56, v55, v42);
    v103 = WitnessTable;
    v63 = MEMORY[0x277CE0790];
    v104 = MEMORY[0x277CE0790];
    v64 = v100;
    v65 = swift_getWitnessTable();
    v66 = v86;
    v67 = v96;
    sub_25E6D7FD4();

    (*(v87 + 8))(v67, v64);
    v101 = v65;
    v102 = v63;
    v39 = v63;
    v68 = v79;
    v69 = swift_getWitnessTable();
    v70 = v90;
    v71 = *(v90 + 16);
    v72 = v88;
    v71(v88, v66, v68);
    v73 = *(v70 + 8);
    v73(v66, v68);
    v74 = v89;
    v71(v89, v72, v68);
    v37 = v80;
    sub_25E6B9B60(v74, v68, MEMORY[0x277CE1428], v69, MEMORY[0x277CE1410]);

    v73(v74, v68);
    v73(v72, v68);
    v32 = v81;
    v34 = v84;
    v40 = MEMORY[0x277CE1410];
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    v113 = swift_getWitnessTable();
    v114 = v39;
    OUTLINED_FUNCTION_2_0();
    v111 = swift_getWitnessTable();
    v112 = v39;
    OUTLINED_FUNCTION_9();
    v44 = swift_getWitnessTable();
    sub_25E6B9C58(v44, v24, MEMORY[0x277CE1428], v44, MEMORY[0x277CE1410]);
  }

  OUTLINED_FUNCTION_0_0();
  v109 = swift_getWitnessTable();
  v110 = v39;
  OUTLINED_FUNCTION_2_0();
  v107 = swift_getWitnessTable();
  v108 = v39;
  OUTLINED_FUNCTION_9();
  v105 = swift_getWitnessTable();
  v106 = v40;
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  (*(v34 + 16))(v94, v37, v32);
  return (*(v34 + 8))(v37, v32);
}

uint64_t sub_25E6B9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SpatialPhoto.GyroView(0, a2, a3, a4);
  result = sub_25E6B8F3C(v4);
  if ((result & 1) == 0)
  {
    sub_25E6B8930(v4, v6, v7, v8);

    sub_25E6CE07C();
  }

  return result;
}

uint64_t sub_25E6B9AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SpatialPhoto.GyroView(0, a2, a3, a4);
  sub_25E6B8930(v4, v5, v6, v7);

  sub_25E6CE3DC(v8, v9);
}

uint64_t sub_25E6B9B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25E6D7F74();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25E6D7F84();
}

uint64_t sub_25E6B9C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25E6D7F74();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25E6D7F84();
}

uint64_t sub_25E6B9D50(__n128 a1, __n128 a2)
{
  v2 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v2 - 8);
  sub_25E6D7A24();
  return sub_25E6D7AA4();
}

uint64_t sub_25E6B9E04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B9DFC();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.spatialPhotoCameraController.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_25E6BA974();
  sub_25E6D7E94();
  return sub_25E6B9E90;
}

uint64_t sub_25E6B9E90(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_25E6D7EA4();
  }

  sub_25E6D7EA4();
}

uint64_t sub_25E6B9F24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E6D7D24();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_25E6B9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E6BB59C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.spatialPhotoRenderKindOverride.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90, &qword_25E6DA920);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  v3[1] = __swift_coroFrameAllocStub(v6);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = sub_25E6BA9C8();
  sub_25E6D7E94();
  return sub_25E6BA0A8;
}

void sub_25E6BA0A8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_25E6BB698((*a1)[3], (*a1)[2], &qword_27FD00E90, &qword_25E6DA920);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_25E6BB698(v3[2], v3[1], &qword_27FD00E90, &qword_25E6DA920);
    sub_25E6D7EA4();
    sub_25E6BAA1C(v6);
  }

  else
  {
    sub_25E6D7EA4();
  }

  sub_25E6BAA1C(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_25E6BA1A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6BA198();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.spatialPhotoDisableGyroAnimator.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E6BAA84();
  sub_25E6D7E94();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E6BA240;
}

unint64_t sub_25E6BA278(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E6BA33C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_25E6BB7B4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25E6BA33C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25E6BA43C(a5, a6);
    *a1 = v9;
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
    result = sub_25E6D8334();
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

uint64_t sub_25E6BA43C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E6BA488(a1, a2);
  sub_25E6BA5A0(&unk_28705E198);
  return v3;
}

uint64_t sub_25E6BA488(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_25E6D8134())
  {
    result = sub_25E6BA684(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25E6D8304();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_25E6D8334();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25E6BA5A0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_25E6BA6F4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25E6BA684(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00FE8, &unk_25E6DAB40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_25E6BA6F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00FE8, &unk_25E6DAB40);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_25E6BA84C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoCameraController.getter();
  *a1 = result;
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

uint64_t sub_25E6BA8EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoDisableGyroAnimator.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25E6BA974()
{
  result = qword_27FD00E80;
  if (!qword_27FD00E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00E80);
  }

  return result;
}

unint64_t sub_25E6BA9C8()
{
  result = qword_27FD00E88;
  if (!qword_27FD00E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00E88);
  }

  return result;
}

uint64_t sub_25E6BAA1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90, &qword_25E6DA920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25E6BAA84()
{
  result = qword_27FD00E98;
  if (!qword_27FD00E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00E98);
  }

  return result;
}

uint64_t sub_25E6BAB08(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t objectdestroy_10Tm(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_6();
  v7 = type metadata accessor for SpatialPhoto.GyroView(v4, v5, v3, v6);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 32) & ~v8;
  v20 = *(*(v7 - 1) + 64);
  v10 = v1 + v9;

  v11 = v7[9];
  v12 = sub_25E6D7D24();
  OUTLINED_FUNCTION_5();
  v19 = *(v13 + 8);
  v19(v1 + v9 + v11, v12);

  v14 = v1 + v9 + v7[11];
  _s8GyroViewV5StateVMa(255, v2, v3, v15);
  OUTLINED_FUNCTION_6();
  sub_25E6D8024();
  OUTLINED_FUNCTION_5();
  (*(v16 + 8))(v14);
  OUTLINED_FUNCTION_6();
  sub_25E6D8034();

  j__swift_release(*(v1 + v9 + v7[12]));
  v17 = v7[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E78, &qword_25E6DA8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!__swift_getEnumTagSinglePayload(v10 + v17, 1, v12))
    {
      v19(v10 + v17, v12);
    }
  }

  else
  {
  }

  sub_25E6BAB08(*(v10 + v7[14]), *(v10 + v7[14] + 8));

  return MEMORY[0x2821FE8E8](v1, v9 + v20, v8 | 7);
}

uint64_t sub_25E6BAD50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SpatialPhoto.GyroView(0, v5, v6, a4);
  OUTLINED_FUNCTION_11(v7);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v5, v6);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_25E6BAE64(uint64_t a1)
{
  sub_25E6BB234();
  if (v2 <= 0x3F)
  {
    sub_25E6D7D24();
    if (v3 <= 0x3F)
    {
      sub_25E6BB27C(319);
      if (v5 <= 0x3F)
      {
        _s8GyroViewV5StateVMa(255, *(a1 + 16), *(a1 + 24), v4);
        sub_25E6D7E24();
        if (v6 <= 0x3F)
        {
          sub_25E6BB31C(319, &qword_27FD00F38, &qword_27FD00F40, qword_25E6DA9A0);
          if (v7 <= 0x3F)
          {
            sub_25E6BB31C(319, &qword_27FD00F48, &qword_27FD00E90, &qword_25E6DA920);
            if (v8 <= 0x3F)
            {
              sub_25E6BB370();
              if (v9 <= 0x3F)
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

uint64_t sub_25E6BAFB4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_25E6D7D24();
    OUTLINED_FUNCTION_7();
    if (*(v10 + 84) == a2)
    {
      v11 = v8;
      v12 = *(a3 + 36);
    }

    else
    {
      _s8GyroViewV5StateVMa(255, *(a3 + 16), *(a3 + 24), v9);
      sub_25E6D7E24();
      OUTLINED_FUNCTION_7();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = *(a3 + 44);
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD00EA0, &unk_25E6DA980);
        v12 = *(a3 + 52);
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_25E6BB0EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_25E6D7D24();
    OUTLINED_FUNCTION_7();
    if (*(v10 + 84) == a3)
    {
      v11 = v8;
      v12 = *(a4 + 36);
    }

    else
    {
      _s8GyroViewV5StateVMa(255, *(a4 + 16), *(a4 + 24), v9);
      sub_25E6D7E24();
      OUTLINED_FUNCTION_7();
      if (*(v14 + 84) == a3)
      {
        v11 = v13;
        v12 = *(a4 + 44);
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD00EA0, &unk_25E6DA980);
        v12 = *(a4 + 52);
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

unint64_t sub_25E6BB234()
{
  result = qword_27FD00F28;
  if (!qword_27FD00F28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD00F28);
  }

  return result;
}

void sub_25E6BB27C(uint64_t a1)
{
  if (!qword_27FD00F30)
  {
    sub_25E6D7CF4();
    v1 = sub_25E6D82E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD00F30);
    }
  }
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

void sub_25E6BB31C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25E6D7E34();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25E6BB370()
{
  if (!qword_27FD00F50[0])
  {
    v0 = sub_25E6D7E34();
    if (!v1)
    {
      atomic_store(v0, qword_27FD00F50);
    }
  }
}

uint64_t sub_25E6BB3C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SpatialPhoto.SceneView(255, *a1, a1[1], a4);
  sub_25E6D7E64();
  sub_25E6D7E64();
  sub_25E6D7F94();
  OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_25E6BB4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25E6BB520(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25E6BB560(uint64_t result, int a2, int a3)
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

unint64_t sub_25E6BB59C()
{
  result = qword_27FD00FD8;
  if (!qword_27FD00FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD00E90, &qword_25E6DA920);
    sub_25E6BB650(&qword_27FD00FE0, MEMORY[0x277D3CBD0], MEMORY[0x277D3CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00FD8);
  }

  return result;
}

uint64_t sub_25E6BB650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E6BB698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25E6BB6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90, &qword_25E6DA920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E6BB770()
{
  result = qword_27FD01600;
  if (!qword_27FD01600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD01600);
  }

  return result;
}

uint64_t sub_25E6BB7B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_25E6BB918()
{
  result = sub_25E6BB938();
  qword_27FD00FF0 = result;
  return result;
}

id sub_25E6BB938()
{
  v0 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01328, &unk_25E6DB020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E6DAB50;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x800000025E6DBC60;
  sub_25E6D7AF4();
  *(inited + 72) = MEMORY[0x277D83A90];
  *(inited + 48) = v2;
  sub_25E6D80A4();
  v3 = sub_25E6D8094();

  [v0 registerDefaults_];

  return v0;
}

uint64_t SpatialPhoto.RegionOfInterest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (!*(v0 + 32))
  {
    sub_25E6D8314();

    v13 = 0xD000000000000019;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v4, v3];
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v13 = 0x286C61756E616D2ELL;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v4, v3];
LABEL_5:
    v6 = v5;
    v7 = sub_25E6D80F4();
    v9 = v8;

    MEMORY[0x25F8BC420](v7, v9);

    MEMORY[0x25F8BC420](58, 0xE100000000000000);
    return v13;
  }

  if (v1 == 1 && (v4 | v2 | v3) == 0)
  {
    v12 = 0xD000000000000013;
  }

  else
  {
    v12 = 0xD000000000000019;
  }

  if (v4 | v2 | v1 | v3)
  {
    return v12;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

BOOL static SpatialPhoto.RegionOfInterest.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    return OUTLINED_FUNCTION_42(v4, *a1);
  }

  if (*(a1 + 32) != 1)
  {
    v10 = *(a1 + 16) | *(a1 + 8);
    if (v10 | *&v2 | v3)
    {
      v11 = v10 | v3;
      if (*&v2 == 1 && v11 == 0)
      {
        v13 = v7 | v5 | v6;
        v14 = v8 == 2 && v4 == 1;
      }

      else
      {
        v13 = v7 | v5 | v6;
        v14 = v8 == 2 && v4 == 2;
      }

      if (!v14 || v13 != 0)
      {
        return 0;
      }
    }

    else
    {
      v15 = v7 | v5 | v4 | v6;
      if (v8 != 2 || v15 != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v8 == 1)
  {
    return OUTLINED_FUNCTION_42(v4, *a1);
  }

  return 0;
}

char *SpatialPhoto.MetalUIView.__allocating_init(frame:isSecondary:)(uint64_t a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_4_0();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_3_1();
  return SpatialPhoto.MetalUIView.init(frame:isSecondary:)(v2);
}

char *SpatialPhoto.MetalUIView.init(frame:isSecondary:)(char a1)
{
  OUTLINED_FUNCTION_4_0();
  v4 = sub_25E6D79B4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_37();
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing) = 1;
  v9 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  *v9 = 1;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 2;
  v10 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = -1;
  v11 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale;
  sub_25E6D7AF4();
  *(v1 + v11) = v12;
  v13 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  v14 = *MEMORY[0x277D3CB98];
  sub_25E6D7AC4();
  OUTLINED_FUNCTION_5();
  (*(v15 + 104))(v1 + v13, v14);
  v16 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  v17 = *MEMORY[0x277D3CB58];
  sub_25E6D7A64();
  OUTLINED_FUNCTION_5();
  (*(v18 + 104))(v1 + v16, v17);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination);
  v19 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  v20 = *MEMORY[0x277D3CB28];
  sub_25E6D7A04();
  OUTLINED_FUNCTION_5();
  (*(v21 + 104))(v1 + v19, v20);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize) = 0u;
  v22 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_inFlightSemaphore;
  *(v1 + v22) = dispatch_semaphore_create(3);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable) = 0;
  v23 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget;
  *(v1 + v23) = [objc_allocWithZone(_s17DisplayLinkTargetCMa()) init];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler) = 0u;
  v72 = v4;
  v73 = v6;
  v71 = *MEMORY[0x277D3CAE8];
  v70 = *(v6 + 104);
  v70(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderedColorSpace);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) = 0u;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath) = 0;
  v24 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest;
  *v24 = 1;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 2;
  v25 = a1;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) = a1;
  if (qword_27FD00A18 != -1)
  {
    swift_once();
  }

  v26 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_device;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_device) = qword_27FD00FF8;
  v27 = qword_27FD00A20;
  swift_unknownObjectRetain();
  if (v27 != -1)
  {
    swift_once();
  }

  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_commandQueue) = qword_27FD01000;
  v28 = *(v1 + v26);
  v29 = objc_allocWithZone(type metadata accessor for SpatialPhotoMTKView());
  swift_unknownObjectRetain();
  v30 = [v29 initWithFrame:v28 device:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) = v30;
  [v30 contentScaleFactor];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkViewDefaultContentScaleFactor) = v31;
  type metadata accessor for SpatialPhoto.MetalUIView(0);
  v32 = OUTLINED_FUNCTION_3_1();
  v35 = objc_msgSendSuper2(v33, v34, v32);
  v36 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView;
  v37 = *&v35[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  v38 = v35;
  v39 = v37;
  [v38 bounds];
  [v39 setFrame_];

  [*&v35[v36] setDelegate_];
  *(*&v35[v36] + OBJC_IVAR____TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView_drawDelegate + 8) = &off_28705E830;
  swift_unknownObjectWeakAssign();
  v40 = *&v35[v36];
  swift_beginAccess();
  v41 = sub_25E6BC630();
  swift_endAccess();
  [v40 setColorPixelFormat_];
  [*&v35[v36] setAutoResizeDrawable_];
  v42 = [*&v35[v36] layer];
  objc_opt_self();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12();
  v43 = swift_dynamicCastObjCClassUnconditional();
  LODWORD(v40) = PXSpatialPhotoMetalLayerSetWantsIOSurfaceCompression(v43, 1);

  if (v40)
  {
    [*&v35[v36] setFramebufferOnly_];
  }

  if (qword_27FD00A10 != -1)
  {
    swift_once();
  }

  v44 = qword_27FD00FF0;
  v45 = sub_25E6D80C4();
  [v44 floatForKey_];
  v47 = v46;

  sub_25E6D7AF4();
  if (v47 != v48)
  {
    sub_25E6D7D04();
    v49 = sub_25E6D7DE4();
    v50 = sub_25E6D8244();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v47;
      _os_log_impl(&dword_25E6B5000, v49, v50, "SpatialPhotoMetalUIView setting texture scale to %f", v51, 0xCu);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    v52 = OUTLINED_FUNCTION_40();
    v53(v52);
    *&v38[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale] = v47;
  }

  [*&v35[v36] setPreferredFramesPerSecond_];
  [*&v35[v36] setPaused_];
  [*&v35[v36] setEnableSetNeedsDisplay_];
  [*&v35[v36] setPresentsWithTransaction_];
  if (v25)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = 1.0;
  }

  if (v25)
  {
    v55 = &selRef_clearColor;
  }

  else
  {
    v55 = &selRef_blackColor;
  }

  [*&v35[v36] setClearColor_];
  v56 = *&v35[v36];
  v57 = objc_opt_self();
  v58 = v56;
  v59 = [v57 *v55];
  [v58 setBackgroundColor_];

  v60 = [*&v35[v36] layer];
  objc_opt_self();
  OUTLINED_FUNCTION_12();
  v61 = swift_dynamicCastObjCClassUnconditional();
  (v70)(v2, v71, v72);
  v62 = sub_25E6D79A4();
  (*(v73 + 8))(v2, v72);
  [v61 setColorspace_];

  if ((v25 & 1) == 0)
  {
    [v38 addSubview_];
  }

  v63 = *&v38[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget];
  OUTLINED_FUNCTION_20();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = &v63[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler];
  v66 = *&v63[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler];
  v67 = *&v63[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler + 8];
  *v65 = sub_25E6BDF80;
  v65[1] = v64;
  v68 = v63;

  sub_25E6BDF88(v66, v67);

  sub_25E6C1698();

  return v38;
}

uint64_t sub_25E6BC630()
{
  v1 = sub_25E6D7A04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D3CB28] || v5 == *MEMORY[0x277D3CB08] || v5 == *MEMORY[0x277D3CB20])
  {
    return 81;
  }

  if (v5 == *MEMORY[0x277D3CB00])
  {
    return 10;
  }

  if (v5 == *MEMORY[0x277D3CB10] || v5 == *MEMORY[0x277D3CB18])
  {
    return 81;
  }

  result = sub_25E6D8354();
  __break(1u);
  return result;
}

void sub_25E6BC7C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_25E6BF9B0(a1);
  }
}

void sub_25E6BC820(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    v4 = [*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setAllowsDisplayCompositing_];
  }
}

uint64_t sub_25E6BC8D4()
{
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_25E6BC914(char a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_25E6BC820(v4);
}

void (*sub_25E6BC96C())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_15(v2);
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_25E6BC9E0;
}

void sub_25E6BC9E0(uint64_t a1)
{
  v1 = *a1;
  sub_25E6BC914(*(*a1 + 32));

  free(v1);
}

double sub_25E6BCA20@<D0>(uint64_t a1@<X8>)
{
  sub_25E6BCAA4(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6BCA64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6BCAC4(v3);
}

__n128 sub_25E6BCAA4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32);
  result = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6BCAC4(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 32);
  v7 = (v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  v8 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  v9 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 24);
  if (!*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32))
  {
    if (*(result + 32))
    {
LABEL_30:
      OUTLINED_FUNCTION_33();
      sub_25E6BD008(v16);
      return;
    }

    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32) == 1)
  {
    if (v6 != 1)
    {
      goto LABEL_30;
    }

LABEL_6:
    if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest), *result))
    {
      return;
    }

    goto LABEL_28;
  }

  v10 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16) | *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8);
  if (!(v10 | v8 | v9))
  {
    if (v6 == 2 && !(v4 | v3 | v2 | v5))
    {
      return;
    }

    goto LABEL_28;
  }

  v11 = v10 | v9;
  if (v8 == 1 && v11 == 0)
  {
    if (v6 != 2 || v2 != 1)
    {
      goto LABEL_28;
    }

LABEL_27:
    if (!(v4 | v3 | v5))
    {
      return;
    }

    goto LABEL_28;
  }

  if (v6 == 2 && v2 == 2)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v7[2].i8[0] != 2)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_34(v7[1], *v7);
  if (v15)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_33();
  sub_25E6BD35C(v17);

  sub_25E6BE848();
}

void (*sub_25E6BCC24(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32);
  v5 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16);
  *v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  *(v3 + 1) = v5;
  *(v3 + 32) = v4;
  return sub_25E6BCC90;
}

void sub_25E6BCC90(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6[0] = **a1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;
  v7 = v5;
  sub_25E6BCAC4(v6);

  free(v1);
}

uint64_t sub_25E6BCCF0(uint64_t *a1)
{
  v3 = sub_25E6D7DF4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[3];
  v10 = &v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v11 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v12 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8];
  v14 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16];
  v13 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 24];
  v15 = v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32];
  if (!*(a1 + 32))
  {
    if (v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32])
    {
LABEL_27:
      sub_25E6D7D04();
      v22 = v1;
      v23 = sub_25E6D7DE4();
      v24 = sub_25E6D8204();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v37 = v3;
        v26 = v25;
        v27 = swift_slowAlloc();
        v41 = v27;
        *v26 = 136446466;
        *&v38 = v22;
        v28 = sub_25E6D8444();
        v30 = sub_25E6BA278(v28, v29, &v41);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v31 = v10[32];
        v32 = *(v10 + 1);
        v38 = *v10;
        v39 = v32;
        v40 = v31;
        v33 = SpatialPhoto.RegionOfInterest.description.getter();
        v35 = sub_25E6BA278(v33, v34, &v41);

        *(v26 + 14) = v35;
        _os_log_impl(&dword_25E6B5000, v23, v24, "SpatialPhotoMetalUIView[%{public}s] regionOfInterest:%s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8BCEB0](v27, -1, -1);
        MEMORY[0x25F8BCEB0](v26, -1, -1);

        (*(v4 + 8))(v7, v37);
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }

      sub_25E6C1698();
      return [v22 setNeedsLayout];
    }

LABEL_6:
    result = CGRectEqualToRect(*a1, *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest]);
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (*(a1 + 32) == 1)
  {
    if (v15 != 1)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v16 = a1[2] | a1[1];
  if (v16 | v8 | v9)
  {
    if (v8 != 1 || v16 | v9)
    {
      v17 = v14 | v12 | v13;
      v18 = v15 == 2 && v11 == 2;
    }

    else
    {
      v17 = v14 | v12 | v13;
      v18 = v15 == 2 && v11 == 1;
    }

    if (!v18 || v17 != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = v14 | v12 | v11 | v13;
    if (v15 != 2 || v19 != 0)
    {
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_25E6BD038(uint64_t *a1)
{
  v3 = sub_25E6D7DF4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = &v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest];
  v10 = v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest + 32];
  if (v8 == 255)
  {
    if (v10 == 255)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v10 != 255)
  {
    v24 = *a1;
    v25 = a1[3];
    v26 = *v9;
    v27 = *(v9 + 1);
    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    if (*(a1 + 32))
    {
      if (v8 != 1)
      {
        v31 = a1[2] | a1[1];
        if (v31 | v24 | v25)
        {
          if (v24 != 1 || v31 | v25)
          {
            v32 = v29 | v27 | v28;
            v33 = v10 == 2 && v26 == 2;
          }

          else
          {
            v32 = v29 | v27 | v28;
            v33 = v10 == 2 && v26 == 1;
          }

          if (v33 && v32 == 0)
          {
            return result;
          }
        }

        else
        {
          v34 = v29 | v27 | v26 | v28;
          if (v10 == 2 && v34 == 0)
          {
            return result;
          }
        }

        goto LABEL_5;
      }

      if (v10 != 1)
      {
        goto LABEL_5;
      }
    }

    else if (v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest + 32])
    {
      goto LABEL_5;
    }

    result = CGRectEqualToRect(*a1, *v9);
    if (result)
    {
      return result;
    }
  }

LABEL_5:
  sub_25E6D7D04();
  v11 = v1;
  v12 = sub_25E6D7DE4();
  v13 = sub_25E6D8204();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136446466;
    *&v37[0] = v11;
    v16 = sub_25E6D8444();
    v18 = sub_25E6BA278(v16, v17, &v39);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v9[32];
    if (v19 == 255)
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v20 = *(v9 + 1);
      v37[0] = *v9;
      v37[1] = v20;
      v38 = v19;
      v21 = SpatialPhoto.RegionOfInterest.description.getter();
      v23 = v22;
    }

    v30 = sub_25E6BA278(v21, v23, &v39);

    *(v14 + 14) = v30;
    _os_log_impl(&dword_25E6B5000, v12, v13, "SpatialPhotoMetalUIView[%{public}s] pendingRegionOfInterest:%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8BCEB0](v15, -1, -1);
    MEMORY[0x25F8BCEB0](v14, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id SpatialPhoto.MetalUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

char *SpatialPhoto.MetalUIView.init(frame:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView(0));
  OUTLINED_FUNCTION_3_1();
  v2 = SpatialPhoto.MetalUIView.init(frame:isSecondary:)(0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_25E6BD4A4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing) = 1;
  v2 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  *v2 = 1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 2;
  v3 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = -1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale;
  sub_25E6D7AF4();
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  v7 = *MEMORY[0x277D3CB98];
  sub_25E6D7AC4();
  OUTLINED_FUNCTION_5();
  (*(v8 + 104))(v1 + v6, v7);
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  v10 = *MEMORY[0x277D3CB58];
  sub_25E6D7A64();
  OUTLINED_FUNCTION_5();
  (*(v11 + 104))(v1 + v9, v10);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination);
  v12 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  v13 = *MEMORY[0x277D3CB28];
  sub_25E6D7A04();
  OUTLINED_FUNCTION_5();
  (*(v14 + 104))(v1 + v12, v13);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize) = 0u;
  v15 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_inFlightSemaphore;
  *(v1 + v15) = dispatch_semaphore_create(3);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable) = 0;
  v16 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget;
  *(v1 + v16) = [objc_allocWithZone(_s17DisplayLinkTargetCMa()) init];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler) = 0u;
  v17 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderedColorSpace;
  v18 = *MEMORY[0x277D3CAE8];
  sub_25E6D79B4();
  OUTLINED_FUNCTION_5();
  (*(v19 + 104))(v1 + v17, v18);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) = 0u;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath) = 0;
  v20 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest;
  *v20 = 1;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 2;
  sub_25E6D8354();
  __break(1u);
}

double sub_25E6BD830(void *a1, uint64_t a2, SEL *a3)
{
  v5 = a1;
  sub_25E6BD888(a3);
  OUTLINED_FUNCTION_41();

  return v3;
}

id sub_25E6BD888(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SpatialPhoto.MetalUIView(0);
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_25E6BD94C(void *a1)
{
  OUTLINED_FUNCTION_4_0();
  v9 = type metadata accessor for SpatialPhoto.MetalUIView(0);
  v2 = OUTLINED_FUNCTION_3_1();
  objc_msgSendSuper2(v3, v4, v2, v1, v9);
  v5 = [v1 bounds];
  return sub_25E6C1324(v5, v6, v7);
}

void sub_25E6BD9C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.MetalUIView(0);
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  sub_25E6C175C();
  v1 = [v0 window];
  if (v1)
  {

    [v0 setNeedsLayout];
    sub_25E6BE848();
  }

  else
  {
    sub_25E6C0F2C(0);
  }
}

uint64_t sub_25E6BDA80()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SpatialPhoto.MetalUIView(0);
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  sub_25E6C1BA0();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_1_1();
    sub_25E6C5CB0(v2, v3);
    OUTLINED_FUNCTION_30();
    sub_25E6D7B54();
    return swift_unknownObjectRelease();
  }

  return result;
}

id SpatialPhoto.MetalUIView.__deallocating_deinit()
{
  sub_25E6C381C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.MetalUIView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6BDD90()
{
  result = sub_25E6C1A98();
  if (result)
  {

    return [v0 setNeedsLayout];
  }

  return result;
}

id sub_25E6BDE34()
{
  result = MTLCreateSystemDefaultDevice();
  qword_27FD00FF8 = result;
  return result;
}

void sub_25E6BDE54()
{
  if (qword_27FD00A18 != -1)
  {
    swift_once();
  }

  if (qword_27FD00FF8)
  {
    v0 = [swift_unknownObjectRetain() newCommandQueue];
    swift_unknownObjectRelease();
  }

  else
  {
    v0 = 0;
  }

  qword_27FD01000 = v0;
}

uint64_t type metadata accessor for SpatialPhoto.MetalUIView(uint64_t a1)
{
  result = qword_27FD011C8;
  if (!qword_27FD011C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E6BDF4C()
{
  MEMORY[0x25F8BCF80](v0 + 16);
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6BDF88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E6BDFC0()
{
  sub_25E6C1034();
  sub_25E6C13DC();
  sub_25E6C1498();
  return sub_25E6D7D14();
}

id sub_25E6BE040(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25E6D7AC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  sub_25E6C5CB0(&qword_27FD01320, MEMORY[0x277D3CBA0]);
  v8 = sub_25E6D80B4();
  result = (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    return sub_25E6C175C();
  }

  return result;
}

void sub_25E6BE1F4(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_15(v2);
  v1[4] = sub_25E6D7AC4();
  OUTLINED_FUNCTION_1_0();
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_6_0();
  v7(v6);
  OUTLINED_FUNCTION_49();
}

id sub_25E6BE300(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25E6D7A64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  sub_25E6C5CB0(&qword_27FD01318, MEMORY[0x277D3CB68]);
  v8 = sub_25E6D80B4();
  result = (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    return sub_25E6C18F0();
  }

  return result;
}

void sub_25E6BE4B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9(0);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v16 = *v6;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  (*(v12 + 16))(v15, v2 + v16, v10);
  swift_beginAccess();
  (*(v12 + 24))(v2 + v16, v8, v10);
  swift_endAccess();
  v4(v15);
  v17 = *(v12 + 8);
  v17(v8, v10);
  v17(v15, v10);
  OUTLINED_FUNCTION_49();
}

void sub_25E6BE608(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_15(v2);
  v1[4] = sub_25E6D7A64();
  OUTLINED_FUNCTION_1_0();
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_6_0();
  v7(v6);
  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_25E6BE72C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_24(v3, OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_25E6C5D08;
}

id sub_25E6BE7A0()
{
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) == 1)
  {
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_25E6D7AE4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_25E6BE848()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_37();
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) == 1)
  {
    v6 = [v0 window];
    if (v6)
    {

      OUTLINED_FUNCTION_8_0();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        sub_25E6D7AD4();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_25E6D79C4();
    v7 = v0;
    v8 = sub_25E6D7DE4();
    v9 = sub_25E6D8214();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_45();
      v24[0] = OUTLINED_FUNCTION_32();
      *v10 = 136446466;
      v11 = sub_25E6D8444();
      v13 = sub_25E6BA278(v11, v12, v24);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = 0xE400000000000000;
      v15 = 1701602409;
      switch(v7[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
      {
        case 1:
          v15 = OUTLINED_FUNCTION_26();
          break;
        case 2:
          v14 = 0x800000025E6DBAB0;
          v15 = 0xD000000000000012;
          break;
        case 3:
          v15 = OUTLINED_FUNCTION_18();
          break;
        default:
          break;
      }

      v16 = sub_25E6BA278(v15, v14, v24);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_25E6B5000, v8, v9, "SpatialPhotoMetalUIView[%{public}s] setNeedsRender() renderState:%s", v10, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    (*(v4 + 8))(v1, v2);
    v17 = 3;
    switch(v7[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
    {
      case 1:
      case 3:
        break;
      case 2:
        goto LABEL_13;
      default:
        [*&v7[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView] setNeedsDisplay];
        v17 = 1;
LABEL_13:
        sub_25E6C0F2C(v17);
        break;
    }

    if (!*&v7[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink])
    {
      sub_25E6C4840();
      v18 = *&v7[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget];
      v24[3] = _s17DisplayLinkTargetCMa();
      v24[0] = v18;
      v19 = v18;
      v20 = sub_25E6BED78(v24, sel_handleDisplayLink_);
      if (qword_27FD00A28 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_27FD00A28);
      }

      if (qword_27FD00A30 != -1)
      {
        swift_once();
      }

      v21 = byte_27FD01020;
      LOBYTE(v24[0]) = 0;
      sub_25E6D8264();
      [v20 setPreferredFrameRateRange_];
      if ((v21 & 1) == 0)
      {
        [v20 setHighFrameRateReason_];
      }

      v22 = [objc_opt_self() mainRunLoop];
      [v20 addToRunLoop:v22 forMode:*MEMORY[0x277CBE738]];

      v23 = v20;
      sub_25E6C0FD4(v20);
    }
  }

  OUTLINED_FUNCTION_28();
}

unint64_t sub_25E6BECE0(char a1)
{
  result = 1701602409;
  switch(a1)
  {
    case 1:
      result = 0x676E69646E6570;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6552736465656ELL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_25E6BED78(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = sub_25E6D83A4();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t sub_25E6BEDF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_25E6BEE48(void *a1)
{
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_25E6BEE9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_25E6BEF04(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_24(v3, OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_25E6BEF78;
}

uint64_t sub_25E6BEF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_37();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

void sub_25E6BF040(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25E6D7A04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  sub_25E6C5CB0(&qword_27FD01310, MEMORY[0x277D3CB30]);
  v8 = sub_25E6D80B4();
  v9 = (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    sub_25E6C3874(v9, v10);
  }
}

uint64_t sub_25E6BF1C0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  a2(0);
  OUTLINED_FUNCTION_5();
  return (*(v7 + 16))(a3, v3 + v6);
}

void sub_25E6BF274(uint64_t a1)
{
  OUTLINED_FUNCTION_48();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_15(v2);
  v1[4] = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_6_0();
  v7(v6);
  OUTLINED_FUNCTION_49();
}

void sub_25E6BF380(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48();
  v7 = v6;
  v9 = *v8;
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_21();
    v12(v11);
    v7(v3);
    (*(v5 + 8))(v2, v4);
  }

  else
  {
    v3 = *(v9 + 48);
    v2 = *(v9 + 56);
    v6(v2);
  }

  free(v2);
  free(v3);
  OUTLINED_FUNCTION_49();

  free(v13);
}

uint64_t sub_25E6BF420@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8, &unk_25E6DABC0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - v4;
  v43 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  v5 = [v43 superview];
  v33 = v2;
  if (v5)
  {

    v35 = 0;
    v36 = 0;
  }

  else
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_25E6C48B8;
    *(v8 + 24) = v7;
    v41 = sub_25E6C48D0;
    v42 = v8;
    OUTLINED_FUNCTION_11_0();
    v38 = 1107296256;
    v39 = sub_25E6BF880;
    v40 = &block_descriptor;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
      return result;
    }

    v35 = sub_25E6C48B8;
    v36 = v7;
  }

  v12 = swift_allocBox();
  v14 = v13;
  v15 = sub_25E6D7B24();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  OUTLINED_FUNCTION_20();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = swift_allocObject();
  v18[2] = v12;
  v18[3] = v1;
  v18[4] = v16;
  v19 = &v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler];
  v21 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler];
  v20 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler + 8];
  *v19 = sub_25E6C498C;
  v19[1] = v18;
  v22 = v1;

  sub_25E6BDF88(v21, v20);
  [v43 draw];
  v23 = *v19;
  if (*v19)
  {
    v24 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    sub_25E6BDF88(v23, v24);
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    *v25 = 6;
LABEL_9:
    v28 = v35;
    v27 = v36;
LABEL_10:
    swift_willThrow();

    return sub_25E6BDF88(v28, v27);
  }

  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  if (*v17)
  {
    v26 = *v17;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v29 = v34;
  sub_25E6C4998(v14, v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v15);
  v28 = v35;
  v27 = v36;
  if (EnumTagSinglePayload == 1)
  {
    sub_25E6C4A5C(v29, &qword_27FD010E8, &unk_25E6DABC0);
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    *v31 = 5;
    goto LABEL_10;
  }

  (*(*(v15 - 8) + 32))(v32, v29, v15);

  return sub_25E6BDF88(v28, v27);
}

id sub_25E6BF81C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  [a1 bounds];
  [v2 setFrame_];
  [a1 addSubview_];
  sub_25E6C175C();
  return sub_25E6C1BA0();
}

uint64_t sub_25E6BF8A8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8, &unk_25E6DABC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = swift_projectBox();
  sub_25E6C2E1C(v4);
  v6 = sub_25E6D7B24();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_25E6C5BFC(v4, v5);
}

void sub_25E6BF9B0(uint64_t a1)
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink];
  if (v12)
  {
    sub_25E6C4840();
    v13 = v4;
    v14 = v12;
    v15 = sub_25E6D82D4();

    if (v15)
    {
      sub_25E6D79C4();
      v16 = v13;
      v17 = v2;
      v18 = sub_25E6D7DE4();
      v19 = sub_25E6D8214();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_45();
        v27 = swift_slowAlloc();
        v28 = v27;
        *v20 = 136446466;
        v21 = sub_25E6D8444();
        v23 = v16;
        v24 = sub_25E6BA278(v21, v22, &v28);

        *(v20 + 4) = v24;
        v16 = v23;
        *(v20 + 12) = 2048;
        [v23 targetTimestamp];
        *(v20 + 14) = v25;
        _os_log_impl(&dword_25E6B5000, v18, v19, "SpatialPhotoMetalUIView[%{public}s] handleDisplayLink: %f", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v7 + 8))(v11, v5);
      if (qword_27FD00A28 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_27FD00A28);
      }

      if ((byte_27FD01010 & 1) == 0 && (v17[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary] & 1) == 0)
      {
        sub_25E6BE848();
      }

      v26 = [v17 window];
      if (!v26 || (v26, v17[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary] == 1))
      {
        sub_25E6C0F2C(0);
      }

      switch(v17[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
      {
        case 1:
          break;
        case 2:
          sub_25E6C0F2C(0);
          break;
        case 3:
          sub_25E6C0F2C(1);
          [*&v17[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView] setNeedsDisplay];
          break;
        default:
          [v16 invalidate];
          sub_25E6C0FD4(0);
          break;
      }
    }
  }

  OUTLINED_FUNCTION_28();
}

void sub_25E6BFCD4()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_37();
  v8 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest];
  v9 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest + 32];
  if (v9 != 255)
  {
    v10 = *(v8 + 1);
    v30 = *v8;
    v31 = v10;
    v32 = v9;
    sub_25E6BD008(&v30);
    v30 = 0u;
    v31 = 0u;
    v32 = -1;
    sub_25E6BD35C(&v30);
  }

  sub_25E6C1BA0();
  sub_25E6C1498();
  v13 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize;
  v14 = vmovn_s64(vceqq_s64(v12, *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize]));
  if ((v14.i8[0] & 1) == 0 || (v14.i8[4] & 1) == 0)
  {
    v28 = v11;
    v29 = v12;
    sub_25E6C13DC();
    v27 = v15;
    sub_25E6D7D04();
    v16 = v0;
    v17 = sub_25E6D7DE4();
    sub_25E6D8244();
    OUTLINED_FUNCTION_25();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v30 = v20;
      *v19 = 136448002;
      v33 = v16;
      v21 = sub_25E6D8444();
      v23 = sub_25E6BA278(v21, v22, &v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;
      v24 = v16[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary];

      *(v19 + 14) = v24;
      *(v19 + 18) = 2050;
      *(v19 + 20) = v27;
      *(v19 + 30) = *(&v27 + 1);
      *(v19 + 28) = 2050;
      *(v19 + 38) = 2048;
      *(v19 + 40) = v28;
      *(v19 + 48) = 2048;
      *(v19 + 50) = *(&v28 + 1);
      *(v19 + 58) = 2048;
      *(v19 + 60) = v29.i64[0];
      *(v19 + 68) = 2048;
      *(v19 + 70) = v29.i64[1];
      _os_log_impl(&dword_25E6B5000, v17, v2, "SpatialPhotoMetalUIView[%{public}s] isSecondary:%{BOOL}d spatialPhotoMTKViewWillDraw viewSize:(%{public}ld, %{public}ld) ROI:(x:%ld, y:%ld, w:%ld, h:%ld)", v19, 0x4Eu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();

      v25 = OUTLINED_FUNCTION_40();
      v26(v25);
    }

    else
    {

      (*(v6 + 8))(v1, v4);
    }

    *&v3[v13] = v29;
  }

  OUTLINED_FUNCTION_28();
}

uint64_t sub_25E6BFFA4(double a1, double a2)
{
  v6 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  sub_25E6D7D04();
  v10 = v2;
  v11 = sub_25E6D7DE4();
  v12 = sub_25E6D8214();
  if (os_log_type_enabled(v11, v12))
  {
    v24 = v6;
    v13 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_32();
    *v13 = 136446722;
    v14 = sub_25E6D8444();
    v16 = sub_25E6BA278(v14, v15, &v25);

    *(v13 + 4) = v16;
    *(v13 + 12) = 1024;
    v17 = v10[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary];

    *(v13 + 14) = v17;
    *(v13 + 18) = 2082;
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{%.2f, %.2f}", *&a1, *&a2];
    sub_25E6D80F4();

    v19 = OUTLINED_FUNCTION_27();
    v22 = sub_25E6BA278(v19, v20, v21);

    *(v13 + 20) = v22;
    _os_log_impl(&dword_25E6B5000, v11, v12, "SpatialPhotoMetalUIView[%{public}s] isSecondary:%{BOOL}d drawableSizeWillChange:%{public}s", v13, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();

    (*(v8 + 8))(v3, v24);
  }

  else
  {

    (*(v8 + 8))(v3, v6);
  }

  return sub_25E6C15F4();
}

void sub_25E6C0280(uint64_t a1)
{
  OUTLINED_FUNCTION_31();
  v3 = v1;
  v5 = v4;
  v6 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v64 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v63 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = v57 - v13;
  v15 = sub_25E6D79B4();
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  sub_25E6D79E4();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  sub_25E6D7B24();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  v28 = (v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler);
  v29 = *(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler);
  if (v29)
  {
    *v28 = 0;
    v28[1] = 0;
    v29(v5);
    OUTLINED_FUNCTION_28();

    sub_25E6BDF88(v30, v31);
  }

  else
  {
    v58 = v5;
    ObjectType = v2;
    v60 = v27;
    v57[1] = v24;
    v57[2] = v23;
    v62 = v6;
    sub_25E6C0F2C(2);
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = v64;
    v57[0] = v20;
    if (Strong)
    {
      v61 = v18;
      swift_getObjectType();
      OUTLINED_FUNCTION_1_1();
      sub_25E6C5CB0(v35, v36);
      v18 = v61;
      sub_25E6D7B54();
      swift_unknownObjectRelease();
    }

    if ((*(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) & 1) == 0)
    {
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v61 = v37;
        ObjectType = v14;
        v38 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable;
        if ((*(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable) & 1) != 0 || (v39 = [v58 layer], objc_opt_self(), OUTLINED_FUNCTION_30(), OUTLINED_FUNCTION_12(), v40 = objc_msgSend(swift_dynamicCastObjCClassUnconditional(), sel_isDrawableAvailable), v39, v40))
        {
          *(v3 + v38) = 0;
          sub_25E6C2E1C(v60);
          ObjectType = swift_getObjectType();
          OUTLINED_FUNCTION_1_1();
          sub_25E6C5CB0(v41, v42);
          sub_25E6D7B44();
          sub_25E6D79D4();
          sub_25E6C12CC(v18);
          swift_unknownObjectRelease();
          v54 = OUTLINED_FUNCTION_27();
          v55(v54);
          v56 = OUTLINED_FUNCTION_40();
          v49(v56, v48);
        }

        else
        {
          v50 = ObjectType;
          sub_25E6D7D04();
          v51 = sub_25E6D7DE4();
          v52 = sub_25E6D8204();
          if (os_log_type_enabled(v51, v52))
          {
            OUTLINED_FUNCTION_19();
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_25E6B5000, v51, v52, "Unable to draw, drawable is not available, skipping this frame", v53, 2u);
            v50 = ObjectType;
            OUTLINED_FUNCTION_7_0();
            MEMORY[0x25F8BCEB0]();
          }

          (*(v64 + 8))(v50, v62);
          sub_25E6BE848();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v43 = ObjectType;
        sub_25E6D7D04();
        v44 = sub_25E6D7DE4();
        v45 = sub_25E6D8224();
        if (os_log_type_enabled(v44, v45))
        {
          OUTLINED_FUNCTION_19();
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_25E6B5000, v44, v45, "Unable to draw, nil delegate", v46, 2u);
          OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8BCEB0](v47);
        }

        (*(v34 + 8))(v43, v62);
      }
    }

    OUTLINED_FUNCTION_28();
  }
}

uint64_t sub_25E6C09A8(unsigned __int8 a1)
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](a1);
  return sub_25E6D8434();
}

uint64_t sub_25E6C0A0C(uint64_t a1)
{
  v2 = *v1;
  sub_25E6D8414();
  MEMORY[0x25F8BC720](v2);
  return sub_25E6D8434();
}

unint64_t sub_25E6C0A60(uint64_t a1, uint64_t a2)
{
  v2 = sub_25E6D8384();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25E6C0AC0(uint64_t a1)
{
  v1 = a1;
  sub_25E6D8414();
  sub_25E6C0B10(v3, v1);
  return sub_25E6D8434();
}

uint64_t sub_25E6C0B10(uint64_t a1, char a2)
{
  sub_25E6D8114();
}

uint64_t sub_25E6C0BE4(uint64_t a1, char a2)
{
  sub_25E6D8414();
  sub_25E6C0B10(v4, a2);
  return sub_25E6D8434();
}

unint64_t sub_25E6C0C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25E6C0A60(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25E6C0C58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25E6BECE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E6C0C84(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_25E6D7DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState;
  result = sub_25E6B73FC(a1, v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState]);
  if ((result & 1) == 0)
  {
    sub_25E6D79C4();
    v10 = v2;
    v11 = sub_25E6D7DE4();
    v12 = sub_25E6D8214();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v10;
      v24 = v22;
      *v13 = 136446466;
      v14 = sub_25E6D8444();
      v16 = sub_25E6BA278(v14, v15, &v24);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = 0xE400000000000000;
      v18 = 1701602409;
      switch(v2[v8])
      {
        case 1:
          v17 = 0xE700000000000000;
          v18 = 0x676E69646E6570;
          break;
        case 2:
          v17 = 0x800000025E6DBAB0;
          v18 = 0xD000000000000012;
          break;
        case 3:
          v17 = 0xEB00000000726564;
          v18 = 0x6E6552736465656ELL;
          break;
        default:
          break;
      }

      v19 = sub_25E6BA278(v18, v17, &v24);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_25E6B5000, v11, v12, "SpatialPhotoMetalUIView[%{public}s] renderState:%s", v13, 0x16u);
      v20 = v22;
      swift_arrayDestroy();
      MEMORY[0x25F8BCEB0](v20, -1, -1);
      MEMORY[0x25F8BCEB0](v13, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_25E6C0F2C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState) = a1;
  return sub_25E6C0C84(v2);
}

void sub_25E6C0F44(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink);
  if (result)
  {
    if (!v2)
    {

      sub_25E6C381C();
    }
  }

  else if (v2)
  {
    v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval;
    if (!*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval))
    {
      *(v1 + v3) = sub_25E6D7B74();
    }
  }
}

void sub_25E6C0FD4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink) = a1;
  v2 = a1;
  sub_25E6C0F44(v3);
}

void sub_25E6C1034()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 screen];

    [v3 nativeScale];
  }
}

void sub_25E6C10B8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25E6D79B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderedColorSpace;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_25E6C5CB0(&qword_27FD011E8, MEMORY[0x277D3CAF0]);
  v9 = sub_25E6D80B4();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    v13 = [*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v8(v6, v2 + v7, v3);
    v12 = sub_25E6D79A4();
    v10(v6, v3);
    [v11 setColorspace_];
  }
}

uint64_t sub_25E6C1300(uint64_t result, double a2, double a3)
{
  if (*(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) != a2 || *(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size + 8) != a3)
  {
    return sub_25E6C15F4();
  }

  return v5;
}

uint64_t sub_25E6C1324(uint64_t a1, double a2, double a3)
{
  v4 = (v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size);
  v5 = *(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size);
  v6 = *(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size + 8);
  *v4 = a2;
  v4[1] = a3;
  return sub_25E6C1300(a1, v5, v6);
}

double sub_25E6C1344()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
  [v1 drawableSize];
  v3 = v2;
  [v1 bounds];
  v6 = v5;
  if (v4 <= 0.0)
  {
    sub_25E6C1034();
    v7 = v8;
  }

  else
  {
    v7 = v3 / v4;
  }

  if (v6 <= 0.0)
  {
    sub_25E6C1034();
  }

  return v7;
}

void sub_25E6C13DC()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size + 8);
  v2 = round(*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) * sub_25E6C1344());
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round(v1 * v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

void sub_25E6C1498()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  [v1 drawableSize];
  v10 = v7;
  v11 = v6;
  v8 = v3 * sub_25E6C1344();
  if (v8 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 * v9 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 * v9 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v5 * v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_25E6C15F4()
{
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_1_1();
    sub_25E6C5CB0(v1, v2);
    OUTLINED_FUNCTION_30();
    sub_25E6D7B34();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_25E6C1698()
{
  v1 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v2 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32];
  if (v2 == 1)
  {
LABEL_9:
    if (v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] == 1)
    {
      v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] = 0;
      v6 = &selRef__removeBoundingPathChangeObserver_;
      return [v0 *v6];
    }

    return result;
  }

  if (v2 == 2)
  {
    v3 = vorrq_s8(*v1, v1[1]);
    if (!*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
    {
      goto LABEL_9;
    }

    v4 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath];
    if ((v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] & 1) == 0)
    {
      goto LABEL_12;
    }

    v5 = vorrq_s8(*v1, v1[1]);
    if (!*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath];
    if ((v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] & 1) == 0)
    {
LABEL_12:
      *v4 = 1;
      v6 = &selRef__addBoundingPathChangeObserver_;
      return [v0 *v6];
    }
  }

  return result;
}

id sub_25E6C175C()
{
  v2 = sub_25E6D7AC4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_29();
  v7(v6);
  v8 = (*(v4 + 88))(v1, v2);
  v9 = 1.0;
  if (v8 == *MEMORY[0x277D3CB90])
  {
    return [*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) setContentScaleFactor_];
  }

  if (v8 == *MEMORY[0x277D3CB98])
  {
    v9 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale);
    return [*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) setContentScaleFactor_];
  }

  result = sub_25E6D8354();
  __break(1u);
  return result;
}

id sub_25E6C18F0()
{
  v2 = sub_25E6D7A64();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_29();
  v7(v6);
  v8 = (*(v4 + 88))(v1, v2);
  if (v8 == *MEMORY[0x277D3CB58])
  {
    return [*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) setDepthStencilPixelFormat_];
  }

  if (v8 == *MEMORY[0x277D3CB60])
  {
    v10 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
    [v10 setDepthStencilStorageMode_];
    [v10 setDepthStencilPixelFormat_];
    return [v10 setClearDepth_];
  }

  else
  {
    result = sub_25E6D8354();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6C1A98()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
    if (v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32])
    {
      if (v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32] == 2 && *v3 == 2 && (*(v3 + 2) | *(v3 + 3) | *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8]) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!CGRectEqualToRect(*v3, *MEMORY[0x277D3A850]))
    {
LABEL_12:

      return 1;
    }

    [v0 bounds];
    v6 = v5;
    [v2 bounds];
    if (v7 < v6)
    {
      goto LABEL_12;
    }

    [v0 bounds];
    v9 = v8;
    [v2 bounds];
    v11 = v10;

    return v11 < v9;
  }

  return result;
}

id sub_25E6C1BA0()
{
  v1 = v0;
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v132 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v129 = &v128 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v128 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v128 - v14;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v25 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v26 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8];
  v28 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16];
  v27 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 24];
  v29 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32];
  v137.n128_u64[0] = v25;
  v137.n128_u64[1] = v26;
  v138.n128_u64[0] = v28;
  v138.n128_u64[1] = v27;
  v139 = v29;
  v30 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest];
  v31 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest];
  v32 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 8];
  v34 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 16];
  v33 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 24];
  v35 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 32];
  v36 = &off_25E6DA000;
  v131 = v7;
  if (!v35)
  {
    if (v29)
    {
      goto LABEL_35;
    }

    goto LABEL_6;
  }

  if (v35 == 1)
  {
    if (v29 != 1)
    {
      goto LABEL_35;
    }

LABEL_6:
    if (OUTLINED_FUNCTION_42(v25, v31))
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v37 = v34 | v32;
  if (v37 | *&v31 | v33)
  {
    v38 = v37 | v33;
    if (*&v31 == 1 && v38 == 0)
    {
      v40 = v28 | v26 | v27;
      v41 = v29 == 2 && v25 == 1;
    }

    else
    {
      v40 = v28 | v26 | v27;
      v41 = v29 == 2 && v25 == 2;
    }

    if (v41 && v40 == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v42 = v28 | v26 | v25 | v27;
    if (v29 == 2 && v42 == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_29:
  if (v30[2].i8[0] == 2)
  {
    OUTLINED_FUNCTION_34(v30[1], *v30);
    if (!v45)
    {
      sub_25E6C2668();
      if (v46)
      {
        v137 = 0u;
        v138 = 0u;
        v139 = 2;
        sub_25E6D7D04();
        v47 = v0;
        v48 = sub_25E6D7DE4();
        v49 = sub_25E6D8204();

        if (os_log_type_enabled(v48, v49))
        {
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_23();
          v128 = OUTLINED_FUNCTION_32();
          v133[0].n128_u64[0] = v128;
          *v2 = 136446466;
          *&v140 = v47;
          v50 = sub_25E6D8444();
          sub_25E6BA278(v50, v51, v133);
          OUTLINED_FUNCTION_47();
          *(v2 + 4) = &off_25E6DA000;
          *(v2 + 12) = 2080;
          v52 = v24[32];
          v53 = *(v24 + 1);
          v140 = *v24;
          v141 = v53;
          v142 = v52;
          v54 = SpatialPhoto.RegionOfInterest.description.getter();
          sub_25E6BA278(v54, v55, v133);
          OUTLINED_FUNCTION_47();
          *(v2 + 14) = &off_25E6DA000;
          v36 = &off_25E6DA000;
          _os_log_impl(&dword_25E6B5000, v48, v49, "SpatialPhotoMetalUIView[%{public}s] overriding desired regionOfInterest:%s, with .none due to animation", v2, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8BCEB0]();
          v2 = v130;
          OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8BCEB0]();
        }

        OUTLINED_FUNCTION_9_0();
        v56(v15, v2);
      }
    }
  }

LABEL_35:
  v57 = v137.n128_f64[1];
  v58 = v137.n128_f64[0];
  v60 = v138.n128_f64[1];
  v59 = v138.n128_f64[0];
  if (v139)
  {
    if (v139 == 1)
    {
LABEL_47:
      v77 = v137;
      v79 = v138;
      v17 = v58;
      v19 = v57;
      v21 = v59;
      v23 = v60;
      v75 = v139;
      goto LABEL_48;
    }

    if (!(v138.n128_u64[0] | v137.n128_u64[1] | v137.n128_u64[0] | v138.n128_u64[1]))
    {
      v58 = v17;
      v57 = v19;
      v59 = v21;
      v60 = v23;
      goto LABEL_47;
    }

    v61 = *MEMORY[0x277D3A850];
    v62 = *(MEMORY[0x277D3A850] + 8);
    v63 = *(MEMORY[0x277D3A850] + 16);
    v64 = *(MEMORY[0x277D3A850] + 24);
  }

  else
  {
    v62 = v137.n128_f64[1];
    v61 = v137.n128_f64[0];
    v64 = v138.n128_f64[1];
    v63 = v138.n128_f64[0];
  }

  sub_25E6C2790(&v140, v61, v62, v63, v64);
  if ((v142 & 1) == 0)
  {
    v60 = *(&v141 + 1);
    v59 = *&v141;
    v57 = *(&v140 + 1);
    v58 = *&v140;
    goto LABEL_47;
  }

  v65 = v36;
  sub_25E6D7D04();
  v66 = v1;
  v67 = sub_25E6D7DE4();
  v68 = sub_25E6D8214();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_23();
    v136 = v70;
    *v69 = *(v65 + 365);
    v133[0].n128_u64[0] = v66;
    v71 = sub_25E6D8444();
    OUTLINED_FUNCTION_44(v71, v72);
    OUTLINED_FUNCTION_47();
    *(v69 + 4) = v66;
    *(v69 + 12) = 2080;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    v133[0] = v137;
    v133[1] = v138;
    v134 = v139;
    v73 = SpatialPhoto.RegionOfInterest.description.getter();
    OUTLINED_FUNCTION_44(v73, v74);
    OUTLINED_FUNCTION_47();
    *(v69 + 14) = v66;
    _os_log_impl(&dword_25E6B5000, v67, v68, "SpatialPhotoMetalUIView[%{public}s] Unable to layout with desired regionOfInterest:%s, falling back to .none", v69, 0x16u);
    v75 = 2;
    swift_arrayDestroy();
    v2 = v130;
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();

    OUTLINED_FUNCTION_9_0();
    v76(v13, v2);
    v77 = 0uLL;
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    v78(v13, v2);
    v77 = 0uLL;
    v75 = 2;
  }

  v79 = 0uLL;
LABEL_48:
  *v30 = v77;
  v30[1] = v79;
  v30[2].i8[0] = v75;
  [v1 px_screenScale];
  v81 = round((v17 + v21) * v80) / v80;
  v82 = round((v19 + v23) * v80) / v80;
  v83 = round(v17 * v80) / v80;
  v84 = round(v19 * v80);
  v85 = v81 - v83;
  v86 = v84 / v80;
  v87 = v82 - v84 / v80;
  v88 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  [v88 frame];
  if (vabdd_f64(v92, v83) > 0.00000999999975 || vabdd_f64(v89, v86) > 0.00000999999975 || vabdd_f64(v90, v85) > 0.00000999999975 || vabdd_f64(v91, v87) > 0.00000999999975)
  {
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    if (v139 == 2 && v137.n128_u64[0] == 2 && !(v138.n128_u64[0] | v138.n128_u64[1] | v137.n128_u64[1]))
    {
      switch(v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
      {
        case 1:
          OUTLINED_FUNCTION_26();
          goto LABEL_59;
        case 2:

          goto LABEL_60;
        case 3:
          OUTLINED_FUNCTION_18();
          goto LABEL_59;
        default:
LABEL_59:
          v93 = sub_25E6D83B4();

          if (v93)
          {
LABEL_60:
            v94 = v129;
            sub_25E6D7D04();
            v95 = v1;
            v96 = sub_25E6D7DE4();
            v97 = sub_25E6D8214();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = v2;
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v135 = v95;
              v136 = v100;
              *v99 = 136446210;
              v101 = sub_25E6D8444();
              v103 = OUTLINED_FUNCTION_44(v101, v102);
              v128 = v1;
              v104 = v88;
              v105 = v94;
              v106 = v103;

              *(v99 + 4) = v106;
              _os_log_impl(&dword_25E6B5000, v96, v97, "SpatialPhotoMetalUIView[%{public}s] already rendered this frame, but forcing render due to frame change", v99, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v100);
              OUTLINED_FUNCTION_7_0();
              MEMORY[0x25F8BCEB0]();
              OUTLINED_FUNCTION_7_0();
              MEMORY[0x25F8BCEB0]();

              OUTLINED_FUNCTION_9_0();
              v108 = v105;
              v88 = v104;
              v1 = v128;
              v109 = v98;
            }

            else
            {

              OUTLINED_FUNCTION_9_0();
              v108 = v94;
              v109 = v2;
            }

            v107(v108, v109);
            sub_25E6C0F2C(0);
          }

          break;
      }
    }

    sub_25E6D7D04();
    v110 = v1;
    v111 = sub_25E6D7DE4();
    v112 = sub_25E6D8214();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_23();
      v135 = v110;
      v136 = v114;
      *v113 = 136446722;
      v115 = sub_25E6D8444();
      v117 = OUTLINED_FUNCTION_44(v115, v116);

      *(v113 + 4) = v117;
      *(v113 + 12) = 1026;
      *(v113 + 14) = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
      *(v113 + 18) = 2082;
      v118 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v83, *&v86, *&v85, *&v87];
      v119 = sub_25E6D80F4();
      v128 = v1;
      v120 = v88;
      v121 = v132;
      v123 = v122;

      v124 = sub_25E6BA278(v119, v123, &v136);

      *(v113 + 20) = v124;
      _os_log_impl(&dword_25E6B5000, v111, v112, "SpatialPhotoMetalUIView[%{public}s] isAnimating:%{BOOL,public}d set frame %{public}s", v113, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();

      (*(v121 + 8))(v131, v130);
      v88 = v120;
    }

    else
    {

      v125 = OUTLINED_FUNCTION_27();
      v126(v125);
    }

    v110[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable] = 1;
    [v88 setFrame_];
    sub_25E6C15F4();
    sub_25E6BE848();
  }

  return sub_25E6C1698();
}

void sub_25E6C2668()
{
  OUTLINED_FUNCTION_31();
  if (([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)
  {
    v1 = sub_25E6C5AFC([v0 layer]);
    if (v1)
    {
      v2 = (v1 + 40);
      v3 = *(v1 + 16) + 1;
      do
      {
        if (!--v3)
        {
          break;
        }

        v4 = *(v2 - 1);
        v5 = *v2;
        v6 = v4 == 0x6E6F697469736F70 && v5 == 0xE800000000000000;
        if (v6 || (sub_25E6D83B4() & 1) != 0)
        {
          break;
        }

        if (v4 == 0x732E73646E756F62 && v5 == 0xEB00000000657A69)
        {
          break;
        }

        v2 += 2;
      }

      while ((sub_25E6D83B4() & 1) == 0);
    }
  }

  OUTLINED_FUNCTION_28();
}

void sub_25E6C2790(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v14 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = [v5 window];
  v22 = 0uLL;
  if (v21)
  {
    v23 = v21;
    if (sub_25E6C1A98())
    {
      v24 = v23;
      [v5 frame];
      [v24 convertRect:v5 fromCoordinateSpace:?];
      v83 = v25;
      v81 = v26;
      v28 = v27;
      v85 = v29;
      [v24 bounds];
      OUTLINED_FUNCTION_41();

      v90.origin.x = a5 + a2 * v7;
      v90.origin.y = v6 + a3 * v8;
      v30 = v7 * a4;
      v31 = v8 * a5;
      x = v90.origin.x;
      y = v90.origin.y;
      v90.size.width = v30;
      v90.size.height = v31;
      v103.origin.x = v83;
      v103.origin.y = v81;
      v103.size.width = v28;
      v103.size.height = v85;
      v91 = CGRectIntersection(v90, v103);
      v87 = v91.origin.x;
      v79 = v91.origin.y;
      width = v91.size.width;
      height = v91.size.height;
      v91.origin.x = v83;
      v91.origin.y = v81;
      v91.size.width = v28;
      v91.size.height = v85;
      if (!CGRectIsNull(v91))
      {
        v92.origin.x = v87;
        v92.origin.y = v79;
        v92.size.width = width;
        v92.size.height = height;
        if (!CGRectIsNull(v92))
        {
          v93.origin.x = x;
          v93.origin.y = y;
          v93.size.width = v30;
          v93.size.height = v31;
          v73 = v31;
          MaxY = CGRectGetMaxY(v93);
          v94.origin.x = v87;
          v94.origin.y = v79;
          v94.size.width = width;
          v94.size.height = height;
          v76 = -(MaxY - CGRectGetMaxY(v94));
          v95.origin.x = x;
          v95.origin.y = y;
          v95.size.width = v30;
          v95.size.height = v73;
          MaxX = CGRectGetMaxX(v95);
          v96.origin.x = OUTLINED_FUNCTION_35();
          v75 = -(MaxX - CGRectGetMaxX(v96));
          v97.origin.x = OUTLINED_FUNCTION_35();
          CGRectGetMinY(v97);
          v98.origin.x = x;
          v98.origin.y = y;
          v98.size.width = v30;
          v98.size.height = v73;
          CGRectGetMinY(v98);
          v99.origin.x = v87;
          v99.origin.y = v79;
          v99.size.width = width;
          v99.size.height = height;
          CGRectGetMinX(v99);
          v100.origin.x = OUTLINED_FUNCTION_36();
          CGRectGetMinX(v100);
          v60 = OUTLINED_FUNCTION_36();
          v101.origin.x = UIEdgeInsetsInsetRect(v60, v61, v62, v63, v76, v75);
          v104.origin.x = v83;
          v104.origin.y = v81;
          v104.size.width = v28;
          v104.size.height = v85;
          v102 = CGRectIntersection(v101, v104);
          [v24 convertRect:v5 toCoordinateSpace:{v102.origin.x, v102.origin.y, v102.size.width, v102.size.height}];
          v82 = v65;
          v84 = v64;
          v86 = v67;
          v88 = v66;
          sub_25E6C1034();
          v80 = v68;

          v56 = 0;
          v69.f64[0] = v84;
          v69.f64[1] = v82;
          v70 = vdupq_lane_s64(v80, 0);
          v71 = v69;
          v72.f64[0] = v88;
          v72.f64[1] = v86;
          v22 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v69, *&v80)), v70);
          v57 = vsubq_f64(vdivq_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(v71, v72), *&v80)), v70), v22);
          goto LABEL_12;
        }
      }

      sub_25E6D7D04();
      v34 = v5;
      v35 = sub_25E6D7DE4();
      v36 = sub_25E6D8204();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v37 = 136446978;
        v74 = v36;
        v38 = sub_25E6D8444();
        v40 = sub_25E6BA278(v38, v39, v89);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2082;
        v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v83, *&v81, *&v28, *&v85];
        v42 = sub_25E6D80F4();
        v44 = v43;

        v45 = sub_25E6BA278(v42, v44, v89);

        *(v37 + 14) = v45;
        *(v37 + 22) = 2082;
        v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&x, *&y, *&v30, *&v31];
        sub_25E6D80F4();

        v47 = OUTLINED_FUNCTION_27();
        v50 = sub_25E6BA278(v47, v48, v49);

        *(v37 + 24) = v50;
        *(v37 + 32) = 2082;
        v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v87, *&v79, *&width, *&height];
        sub_25E6D80F4();

        v52 = OUTLINED_FUNCTION_27();
        v55 = sub_25E6BA278(v52, v53, v54);

        *(v37 + 34) = v55;
        _os_log_impl(&dword_25E6B5000, v35, v74, "SpatialPhotoMetalUIView[%{public}s] Unable to intersect window bounds, frameInWindow:%{public}s windowBounds:%{public}s clipped:%{public}s falling back to bounds", v37, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      else
      {
      }

      (*(v16 + 8))(v20, v14);
    }

    else
    {
    }

    v56 = 1;
    v57 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    v56 = 1;
    v57 = 0uLL;
  }

LABEL_12:
  *a1 = v22;
  *(a1 + 16) = v57;
  *(a1 + 32) = v56;
}

void sub_25E6C2E1C(uint64_t a1@<X8>)
{
  v4 = v1;
  v58[1] = a1;
  v65 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v58 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  if (*(v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_commandQueue))
  {
    v21 = [swift_unknownObjectRetain() commandBuffer];
    if (!v21)
    {
      sub_25E6D7D04();
      v40 = sub_25E6D7DE4();
      sub_25E6D8224();
      OUTLINED_FUNCTION_25();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_19();
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_25E6B5000, v40, v2, "Unable to draw, nil commandBuffer", v42, 2u);
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v14, v65);
      sub_25E6C4A08();
      OUTLINED_FUNCTION_12();
      swift_allocError();
      OUTLINED_FUNCTION_46(v43, 1);
      goto LABEL_19;
    }

    v22 = v21;
    v58[0] = *(v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_inFlightSemaphore);
    sub_25E6D82A4();
    v23 = *(v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
    v24 = [v23 currentDrawable];
    if (!v24)
    {
      sub_25E6D7D04();
      v44 = sub_25E6D7DE4();
      sub_25E6D8224();
      OUTLINED_FUNCTION_25();
      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_19();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_43(&dword_25E6B5000, v46, v47, "Unable to draw, nil currentDrawable");
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v3, v65);
      sub_25E6D82B4();
      sub_25E6C4A08();
      OUTLINED_FUNCTION_12();
      swift_allocError();
      OUTLINED_FUNCTION_46(v48, 2);
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v25 = v24;
    v26 = [v23 currentRenderPassDescriptor];
    if (!v26)
    {
      sub_25E6D7D04();
      v49 = sub_25E6D7DE4();
      sub_25E6D8224();
      OUTLINED_FUNCTION_25();
      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_19();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_43(&dword_25E6B5000, v51, v52, "Unable to draw, nil currentRenderPassDescriptor");
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v18, v65);
      sub_25E6D82B4();
      sub_25E6C4A08();
      OUTLINED_FUNCTION_12();
      swift_allocError();
      OUTLINED_FUNCTION_46(v53, 3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v27 = v26;
    v28 = [v22 renderCommandEncoderWithDescriptor_];
    if (v28)
    {
      v29 = v28;
      OUTLINED_FUNCTION_20();
      v30 = swift_allocObject();
      v31 = v58[0];
      *(v30 + 16) = v58[0];
      v63 = sub_25E6C5B60;
      v64 = v30;
      OUTLINED_FUNCTION_11_0();
      v60 = 1107296256;
      v61 = sub_25E6C36CC;
      v62 = &block_descriptor_95;
      v32 = _Block_copy(aBlock);
      v33 = v31;

      [v22 addCompletedHandler_];
      _Block_release(v32);
      v34 = swift_allocObject();
      *(v34 + 16) = v29;
      *(v34 + 24) = v22;
      v35 = swift_allocObject();
      *(v35 + 16) = v22;
      *(v35 + 24) = v25;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      sub_25E6D7B14();
LABEL_19:
      swift_unknownObjectRelease();
      return;
    }

    sub_25E6D7D04();
    v54 = sub_25E6D7DE4();
    sub_25E6D8224();
    OUTLINED_FUNCTION_25();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_19();
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_25E6B5000, v54, v2, "Unable to draw, nil commandEncoder", v56, 2u);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    (*(v6 + 8))(v20, v65);
    sub_25E6D82B4();
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    OUTLINED_FUNCTION_46(v57, 4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_25E6D7D04();
    v36 = sub_25E6D7DE4();
    v37 = sub_25E6D8224();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_19();
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_25E6B5000, v36, v37, "Unable to draw, nil commandQueue", v38, 2u);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    (*(v6 + 8))(v10, v65);
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }
}

uint64_t sub_25E6C34DC(void *a1)
{
  v2 = sub_25E6D7DF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] == 5)
  {
    sub_25E6D7D04();
    swift_unknownObjectRetain();
    v6 = sub_25E6D7DE4();
    v7 = sub_25E6D8224();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = [a1 error];
      if (v10)
      {
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      *(v8 + 4) = v10;
      *v9 = v11;
      _os_log_impl(&dword_25E6B5000, v6, v7, "SpatialPhoto.MetalUIView command buffer encountered error:%{public}@", v8, 0xCu);
      sub_25E6C4A5C(v9, &unk_27FD010F8, &unk_25E6DB850);
      MEMORY[0x25F8BCEB0](v9, -1, -1);
      MEMORY[0x25F8BCEB0](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_25E6D82B4();
}

uint64_t sub_25E6C36CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_25E6C372C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_25E6C97D0();
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F8BC620](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a1 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v8 waitUntilScheduled];
    swift_unknownObjectRelease();
  }

  [a2 waitUntilScheduled];

  [a3 present];
}

void sub_25E6C381C()
{
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval))
  {
    *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval) = 0;
    sub_25E6D7B64();
  }
}

void sub_25E6C3874(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48();
  v3 = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  if (*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) == 1)
  {
    v13 = *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
    v14 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    [v13 setColorPixelFormat_];
    (*(v5 + 16))(v12, v2 + v14, v3);
    (*(v5 + 104))(v9, *MEMORY[0x277D3CB28], v3);
    v15 = sub_25E6D79F4();
    v16 = *(v5 + 8);
    v16(v9, v3);
    v16(v12, v3);
    if (v15)
    {
      v17 = [v13 superview];
      if (v17)
      {

        [v13 removeFromSuperview];
        [v13 releaseDrawables];
        v18 = [v13 layer];
        objc_opt_self();
        OUTLINED_FUNCTION_12();
        v19 = swift_dynamicCastObjCClassUnconditional();
        [v19 discardContents];
        [v19 removeBackBuffers];
      }
    }
  }

  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_25E6C3AC0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_25E6C5D08;
}

void (*sub_25E6C3B54(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_25E6D7AC4();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  v7 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[7] = v8;
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v3[8] = v10;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v8, v1 + v9, v4);
  return sub_25E6BE2E8;
}

void (*sub_25E6C3C88(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_25E6D7A64();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  v7 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[7] = v8;
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v3[8] = v10;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v8, v1 + v9, v4);
  return sub_25E6BE6FC;
}

uint64_t (*sub_25E6C3DC4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_25E6C5D08;
}

void sub_25E6C3E50(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*sub_25E6C3EE0(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_25E6D7A04();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  v7 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[7] = v8;
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v3[8] = v10;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v8, v1 + v9, v4);
  return sub_25E6BF368;
}

uint64_t sub_25E6C4024(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler + 8);

    v2(v3);

    return sub_25E6BDF88(v2, v4);
  }

  return result;
}

id sub_25E6C4108()
{
  v1 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler];
  v2 = _s17DisplayLinkTargetCMa();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_25E6C41A8()
{
  result = sub_25E6C41D4();
  qword_27FD01008 = result;
  byte_27FD01010 = v1 & 1;
  return result;
}

uint64_t sub_25E6C41D4()
{
  v0 = sub_25E6D7DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_25E6D80C4();
  v6 = [v4 integerForKey_];

  if (v6 < 1)
  {
    return 0;
  }

  sub_25E6D7D04();
  v7 = sub_25E6D7DE4();
  v8 = sub_25E6D8244();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_25E6B5000, v7, v8, "SpatialPhoto Rendering: SpatialPhotoRenderingFixedFrameRate overridden to %ldfps", v9, 0xCu);
    MEMORY[0x25F8BCEB0](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_25E6C439C()
{
  result = sub_25E6C43C8();
  qword_27FD01018 = result;
  byte_27FD01020 = v1 & 1;
  return result;
}

uint64_t sub_25E6C43C8()
{
  v0 = sub_25E6D7DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_25E6D80C4();
  v6 = [v4 integerForKey_];

  if (v6 < 1)
  {
    return 0;
  }

  sub_25E6D7D04();
  v7 = sub_25E6D7DE4();
  v8 = sub_25E6D8244();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_25E6B5000, v7, v8, "SpatialPhoto Rendering: SpatialPhotoRenderingPreferredFrameRate overridden to %ldfps", v9, 0xCu);
    MEMORY[0x25F8BCEB0](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_25E6C4590()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_25E6BFCD4();
    swift_unknownObjectRelease();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhotoMTKView();
  return objc_msgSendSuper2(&v2, sel_draw);
}

id sub_25E6C4640(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView_drawDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13.receiver = v5;
  v13.super_class = type metadata accessor for SpatialPhotoMTKView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_device_, a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v11;
}

id sub_25E6C4744(void *a1)
{
  *&v1[OBJC_IVAR____TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView_drawDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpatialPhotoMTKView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  return v3;
}

id sub_25E6C47F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_25E6C4840()
{
  result = qword_27FD010E0;
  if (!qword_27FD010E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD010E0);
  }

  return result;
}

uint64_t sub_25E6C4884()
{
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_25E6C4910()
{
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6C4944()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E6C4998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8, &unk_25E6DABC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E6C4A08()
{
  result = qword_27FD010F0;
  if (!qword_27FD010F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD010F0);
  }

  return result;
}

uint64_t sub_25E6C4A5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25E6C4AF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6BC8D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E6C4C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6BE714();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6C4C78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6BEE3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s16RegionOfInterestOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s16RegionOfInterestOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25E6C4DD0(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25E6C4DE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_25E6C4E1C(uint64_t a1)
{
  result = sub_25E6D7AC4();
  if (v2 <= 0x3F)
  {
    result = sub_25E6D7A64();
    if (v3 <= 0x3F)
    {
      result = sub_25E6D7A04();
      if (v4 <= 0x3F)
      {
        result = sub_25E6D79B4();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t _s11MetalUIViewC11RenderStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11MetalUIViewC11RenderStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x25E6C5834);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s11MetalUIViewC5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11MetalUIViewC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x25E6C59D0);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E6C5A0C()
{
  result = qword_27FD011D8;
  if (!qword_27FD011D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD011D8);
  }

  return result;
}

unint64_t sub_25E6C5A64()
{
  result = qword_27FD011E0;
  if (!qword_27FD011E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD011E0);
  }

  return result;
}

uint64_t sub_25E6C5AFC(void *a1)
{
  v2 = [a1 animationKeys];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_25E6D8154();

  return v3;
}

id sub_25E6C5B68()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) endEncoding];

  return [v1 commit];
}

uint64_t objectdestroy_97Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6C5BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8, &unk_25E6DABC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E6C5CB0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  *(v0 + 64) = *(v2 + 16);
  *(v0 + 72) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

__n128 OUTLINED_FUNCTION_13@<Q0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v4 = v3 + v2;
  result = *a1;
  v6 = *(a1 + 16);
  *(v4 + 32) = a2;
  *v4 = result;
  *(v4 + 16) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 40) = v2;
  *(a1 + 48) = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_42@<W0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v9 = a1;
  v10 = v6;
  v11 = v7;
  v12 = v5;

  return CGRectEqualToRect(*&a2, *&v9);
}

void OUTLINED_FUNCTION_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_44(uint64_t a1, unint64_t a2)
{

  return sub_25E6BA278(a1, a2, (v2 - 232));
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_47()
{
}

uint64_t SpatialPhoto.Player.PlayState.hashValue.getter()
{
  v1 = *v0;
  sub_25E6D8414();
  MEMORY[0x25F8BC720](v1);
  return sub_25E6D8434();
}

uint64_t SpatialPhoto.Player.Style.hashValue.getter()
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](0);
  return sub_25E6D8434();
}

uint64_t sub_25E6C6238(uint64_t a1)
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](0);
  return sub_25E6D8434();
}

uint64_t SpatialPhoto.Player.__allocating_init(scene:size:renderScale:queue:)(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  SpatialPhoto.Player.init(scene:size:renderScale:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t SpatialPhoto.Player.init(scene:size:renderScale:queue:)(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = v5;
  sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v31 = v10;
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v33 = v12 - v11;
  v13 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v30 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = sub_25E6D7A84();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  v26 = sub_25E6D7C14();
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_4();
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 56) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 16) = a2;
  v34 = a2;
  sub_25E6D7C04();
  sub_25E6D7C24();
  swift_allocObject();
  v27 = sub_25E6D7BD4();
  if (v6)
  {

    sub_25E6BDF88(*(v7 + 40), *(v7 + 48));
    swift_unknownObjectRelease();
    type metadata accessor for SpatialPhoto.Player();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v7 + 72) = v27;
    (*(v21 + 104))(v25, *MEMORY[0x277D3CB80], v19);
    sub_25E6D7AB4();
    swift_allocObject();
    *(v7 + 80) = sub_25E6D7A94();
    (*(v30 + 104))(v18, *MEMORY[0x277D3CBC8], v13);
    (*(v31 + 104))(v33, *MEMORY[0x277D3CB28], v32);
    sub_25E6D7DC4();
    swift_allocObject();

    v28 = sub_25E6D7D94();

    *(v7 + 64) = v28;
  }

  return v7;
}

uint64_t (*sub_25E6C673C(uint64_t *a1))()
{
  a1[1] = *(v1 + 64);
  *a1 = sub_25E6D7DA4();
  return sub_25E6C6788;
}

uint64_t sub_25E6C6788(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_25E6D7DB4();
  }

  sub_25E6D7DB4();
}

uint64_t (*sub_25E6C6850(void *a1))(double *a1)
{
  a1[2] = *(v1 + 72);
  sub_25E6D7BE4();
  *a1 = v3;
  a1[1] = v4;
  return sub_25E6C689C;
}

uint64_t (*sub_25E6C690C(void *a1))(double *a1)
{
  a1[1] = *(v1 + 72);
  sub_25E6D7B94();
  *a1 = v3;
  return sub_25E6C6958;
}

void *sub_25E6C6980@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_25E6C6A40(&v4, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_25E6C69F4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 != *(v1 + 24))
  {
    return sub_25E6C77D8();
  }

  return result;
}

uint64_t sub_25E6C6A40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = OUTLINED_FUNCTION_2_1(v2 + 24, a2);
  *a1 = *(v2 + 24);
  return result;
}

uint64_t sub_25E6C6A78(char *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3_2(v2 + 24, a2);
  v4 = *(v2 + 24);
  *(v2 + 24) = v3;
  v6[0] = v4;
  return sub_25E6C69F4(v6);
}

void (*sub_25E6C6ABC(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 24);
  return sub_25E6C6B34;
}

void sub_25E6C6B34(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_25E6C6A78(v3, a2);

  free(v2);
}

void sub_25E6C6BB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E6C6D40(v1, v3);
}

void sub_25E6C6BE0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v2[4];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v4 || (type metadata accessor for CVBuffer(0), sub_25E6C9784(&qword_27FD01468, type metadata accessor for CVBuffer, &unk_25E6DA618), v5 = v4, v6 = sub_25E6D78F4(), v5, (v6 & 1) == 0))
  {
LABEL_6:
    swift_beginAccess();
    v7 = v2[5];
    if (v7)
    {
      v8 = v2[6];
      v9 = v2[4];
      sub_25E6C6FC8(v7, v8);
      v10 = v9;
      v7(v9);
      sub_25E6BDF88(v7, v8);
    }
  }
}

void *sub_25E6C6D08(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(v2 + 32, a2);
  v3 = *(v2 + 32);
  v4 = v3;
  return v3;
}

void sub_25E6C6D40(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2(v2 + 32, a2);
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
  v5 = a1;
  sub_25E6C6BE0(v4);
}

void (*sub_25E6C6D98(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  v3[3] = v4;
  v5 = v4;
  return sub_25E6C6E18;
}

void sub_25E6C6E18(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_25E6C6D40(v3, v6);
  }

  else
  {
    sub_25E6C6D40(*(*a1 + 24), a2);
  }

  free(v2);
}

uint64_t sub_25E6C6E84@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25E6C6F84(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_25E6C9758;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6C6EF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25E6C9720;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_25E6C6FC8(v1, v2);
  return sub_25E6C6FD8(v4, v3);
}

uint64_t sub_25E6C6F84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(v2 + 40, a2);
  v3 = *(v2 + 40);
  sub_25E6C6FC8(v3, *(v2 + 48));
  return v3;
}

double sub_25E6C6FC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_25E6C6FD8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2(v2 + 40, a2);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_25E6BDF88(v5, v6);
}

void *sub_25E6C7074@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_25E6C70E8(&v4, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_25E6C70E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = OUTLINED_FUNCTION_2_1(v2 + 56, a2);
  *a1 = *(v2 + 56);
  return result;
}

uint64_t sub_25E6C7120(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_3_2(v2 + 56, a2);
  *(v2 + 56) = v3;
  return result;
}

uint64_t sub_25E6C7154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01460, &qword_25E6DB1E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27FD013F0 = result;
  return result;
}

uint64_t sub_25E6C71A0(uint64_t a1, void *a2)
{
  if (qword_27FD00A38 != -1)
  {
    swift_once();
  }

  v3 = qword_27FD013F0;
  os_unfair_lock_lock((qword_27FD013F0 + 24));
  sub_25E6C7230((v3 + 16), a2, &v5);
  os_unfair_lock_unlock((v3 + 24));
  return v5;
}

uint64_t sub_25E6C7230@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01438, &qword_25E6DB1C8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440, &qword_25E6DB1D0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v56 = a1;
  v16 = *a1;
  if (*(v16 + 16) && (v17 = sub_25E6C9458(), (v18 & 1) != 0))
  {
    (*(v11 + 16))(v9, *(v16 + 56) + *(v11 + 72) * v17, v10);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v19, 1, v10);
  sub_25E6C94B0(v9, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
  v53 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_25E6D7984();
    sub_25E6C9520(v7, &qword_27FD01438, &qword_25E6DB1C8);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v10);
  }

  v54 = v10;
  v52 = v15;
  v21 = sub_25E6D7974();
  v22 = sub_25E6C8F54(v21);
  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      type metadata accessor for SpatialPhoto.CinematicCameraAnimator(0);
      v31 = swift_allocObject();
      v32 = sub_25E6D0C84(v57, 0, 0, v31, 3.0);
      v33 = sub_25E6C9784(&qword_27FD01450, type metadata accessor for SpatialPhoto.CinematicCameraAnimator, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
      v34 = v56;
      swift_isUniquelyReferenced_nonNull_native();
      v58 = *v34;
      v35 = v58;
      v36 = sub_25E6C9458();
      if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
      {
        goto LABEL_28;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01458, &qword_25E6DB1D8);
      v40 = sub_25E6D8344();
      v41 = v58;
      if (v40)
      {
        v42 = sub_25E6C9458();
        if ((v39 & 1) != (v43 & 1))
        {
          goto LABEL_29;
        }

        v38 = v42;
      }

      *v56 = v41;
      if ((v39 & 1) == 0)
      {
        v44 = v51;
        sub_25E6D7984();
        sub_25E6C9638(v38, v44, v41);
      }

      v45 = v53;
      v46 = v54;
      sub_25E6D7964();
      result = (*(v45 + 8))(v52, v46);
LABEL_25:
      v50 = v55;
      *v55 = v32;
      v50[1] = v33;
      return result;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x25F8BC620](i, v21);
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v24 = *(v21 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_25E6C9580();
    ObjectType = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v24, ObjectType, &protocol descriptor for SpatialPhoto.CameraAnimator);
    v27 = v26;
    v28 = swift_getObjectType();
    v29 = (*(v27 + 16))(v28, v27);
    v30 = sub_25E6D82D4();

    if (v30)
    {

      (*(v53 + 8))(v52, v54);
      v48 = swift_getObjectType();
      result = dynamic_cast_existential_1_unconditional(v24, v48, &protocol descriptor for SpatialPhoto.CameraAnimator);
      v32 = result;
      v33 = v49;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_25E6D83C4();
  __break(1u);
  return result;
}

uint64_t sub_25E6C7724(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 32))(v2, ObjectType, a2);
  }

  return result;
}

uint64_t sub_25E6C777C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  swift_unknownObjectRetain();
  sub_25E6C7724(v3, v4);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_25E6C77D8()
{
  v1 = sub_25E6D8074();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x277D85200], v1);
  v9 = v8;
  v10 = sub_25E6D8084();
  result = (*(v3 + 8))(v7, v1);
  if (v10)
  {
    result = swift_beginAccess();
    v12 = *(v0 + 88);
    if (*(v0 + 24) == 1)
    {
      if (!v12)
      {
        v13 = sub_25E6C71A0(result, v9);
        result = sub_25E6C777C(v13, v14);
        v15 = *(v0 + 88);
        if (v15)
        {
          v16 = *(v0 + 96);
          ObjectType = swift_getObjectType();
          v18 = *(v16 + 24);
          swift_unknownObjectRetain();
          v18(v0, ObjectType, v16);
          OUTLINED_FUNCTION_5_1();
          *(v0 + 56) = 1;
          sub_25E6C79D0(v15, v16);
          return swift_unknownObjectRelease();
        }
      }
    }

    else if (v12)
    {
      OUTLINED_FUNCTION_5_1();
      *(v0 + 56) = 0;
      sub_25E6D7BB4();
      return sub_25E6C777C(0, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6C79D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v35[1] = v7;
  v35[2] = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v35[0] = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");
  OUTLINED_FUNCTION_1_0();
  v38 = v11;
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  OUTLINED_FUNCTION_1_0();
  v36 = v15;
  v37 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = v35 - v16;
  v18 = sub_25E6D8074();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  v25 = *(v3 + 16);
  *(v23 - v22) = v25;
  (*(v20 + 104))(v23 - v22, *MEMORY[0x277D85200], v18);
  v26 = v25;
  LOBYTE(v25) = sub_25E6D8084();
  result = (*(v20 + 8))(v24, v18);
  if (v25)
  {
    v28 = *(v3 + 88);
    if (v28)
    {
      if (v28 == a1)
      {
        type metadata accessor for SpatialPhoto.Player();

        sub_25E6D7954();
        v40 = a1;
        v41 = a2;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01418, &unk_25E6DB1B0);
        v29 = sub_25E6D7934();
        v30 = MEMORY[0x28223BE20](v29);
        v35[-4] = v3;
        v35[-3] = a1;
        v35[-2] = a2;
        MEMORY[0x28223BE20](v30);
        v35[-4] = v26;
        v35[-3] = v17;
        v35[-2] = v13;
        sub_25E6D7884();
        sub_25E6D7BC4();
        v31 = sub_25E6D7B84();
        sub_25E6C6D40(v31, v32);
        v34 = v36;
        v33 = v37;
        (*(v38 + 8))(v13, v39);
        return (*(v34 + 8))(v17, v33);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6C7E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v4 - 8);
  ObjectType = swift_getObjectType();
  (*(a3 + 48))(ObjectType, a3);
  return sub_25E6D7AA4();
}

uint64_t (*sub_25E6C7F3C(void *a1, uint64_t a2, uint64_t a3))()
{
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, a2, v9);
  (*(v6 + 16))(v8, a3, v5);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v21;
  (*(v10 + 32))(v16 + v14, v13, v9);
  (*(v6 + 32))(v16 + v15, v8, v5);
  v18 = v17;
  return sub_25E6C90C8;
}

uint64_t sub_25E6C8168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v27 = sub_25E6D8044();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25E6D8064();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  (*(v12 + 16))(&v24 - v14, a2, v11);
  (*(v8 + 16))(v10, a3, v7);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v16, v15, v11);
  (*(v8 + 32))(v18 + v17, v10, v7);
  aBlock[4] = sub_25E6C92F8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25E6C8654;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);
  v20 = v24;
  sub_25E6D8054();
  v31 = MEMORY[0x277D84F90];
  sub_25E6C9784(&qword_27FD01420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01428, &qword_25E6DB1C0);
  sub_25E6C93F4();
  v21 = v25;
  v22 = v27;
  sub_25E6D82F4();
  MEMORY[0x25F8BC580](0, v20, v21, v19);
  _Block_release(v19);
  (*(v29 + 8))(v21, v22);
  (*(v26 + 8))(v20, v28);
}

uint64_t sub_25E6C85C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  result = sub_25E6D7944();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");
    sub_25E6D7924();
    sub_25E6C79D0(v1, v2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25E6C8654(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t SpatialPhoto.Player.deinit()
{
  sub_25E6BDF88(*(v0 + 40), *(v0 + 48));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SpatialPhoto.Player.__deallocating_deinit()
{
  SpatialPhoto.Player.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_25E6C8720()
{
  result = qword_27FD013F8;
  if (!qword_27FD013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD013F8);
  }

  return result;
}

unint64_t sub_25E6C8778()
{
  result = qword_27FD01400;
  if (!qword_27FD01400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01400);
  }

  return result;
}

uint64_t sub_25E6C87CC()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C66F4();
  *v0 = result;
  return result;
}

uint64_t sub_25E6C87F8()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C6808();
  *v0 = v2;
  v0[1] = v3;
  return result;
}

uint64_t sub_25E6C8824()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C68C4();
  *v0 = v2;
  return result;
}

void *sub_25E6C8884()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C6D08(v1, v2);
  *v0 = result;
  return result;
}

uint64_t _s14GyroMotionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6PlayerC9PlayStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25E6C8DC4);
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

uint64_t _s6PlayerC5StyleOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s6PlayerC5StyleOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25E6C8EF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E6C8F54(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_25E6C8F78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_25E6C90C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3") - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_25E6C8168(v5, v0 + v2, v6);
}

uint64_t sub_25E6C91B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_25E6C92F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410, &qword_25E6DB1A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408, "r3");

  return sub_25E6C85C0();
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_25E6C93F4()
{
  result = qword_27FD01430;
  if (!qword_27FD01430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD01428, &qword_25E6DB1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01430);
  }

  return result;
}

uint64_t sub_25E6C9458()
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](0);
  v0 = sub_25E6D8434();

  return sub_25E6C960C(v0);
}

uint64_t sub_25E6C94B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01438, &qword_25E6DB1C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6C9520(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25E6C9580()
{
  result = qword_27FD01448;
  if (!qword_27FD01448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD01448);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25E6C9638(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v6 = *(a3 + 56);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440, &qword_25E6DB1D0);
  result = (*(*(v7 - 8) + 32))(v6 + *(*(v7 - 8) + 72) * a1, a2, v7);
  v9 = *(a3 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v11;
  }

  return result;
}

uint64_t sub_25E6C96E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6C9720(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25E6C9784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_beginAccess();
}

unint64_t sub_25E6C9838(char a1)
{
  result = 0xD000000000000026;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_25E6C991C(void *a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = [v5 bundleForClass_];
  v21[0] = 0;
  v7 = [a1 newDefaultLibraryWithBundle:v6 error:v21];

  if (!v7)
  {
    v19 = v21[0];
    sub_25E6D7834();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _s24GenerationEffectRendererCMa();
    swift_deallocPartialClassInstance();
    return;
  }

  v8 = v21[0];
  v9 = sub_25E6D80C4();
  v10 = [v7 newFunctionWithName_];

  v11 = sub_25E6D80C4();
  v12 = [v7 newFunctionWithName_];

  v13 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_25E6CA734(0xD00000000000001BLL, 0x800000025E6DC550, v13);
  [v13 setVertexFunction_];
  [v13 setFragmentFunction_];
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (v15)
  {
    [v15 setPixelFormat_];

    v21[0] = 0;
    v16 = [a1 newRenderPipelineStateWithDescriptor:v13 error:v21];
    if (v16)
    {
      v17 = v16;
      v18 = v21[0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v2[6] = v17;
      return;
    }

    v20 = v21[0];
    sub_25E6D7834();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  __break(1u);
}

void sub_25E6C9CA0(void *a1)
{
  sub_25E6CA0D0(a1);
  if (!v2)
  {
    *(v1 + 24) = v3;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25E6C9CDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_25E6C9D18(float a1, float a2, float a3)
{
  v7 = [*(v3 + 40) commandBuffer];
  if (!v7)
  {
    v20 = sub_25E6B7598();
    OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v20);
    *v21 = 0;
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = *(v3 + 16);
  if (!v9)
  {
    v22 = sub_25E6B7598();
    OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v22);
    v24 = 5;
LABEL_13:
    *v23 = v24;
    swift_willThrow();
    goto LABEL_14;
  }

  v10 = *(v3 + 24);
  if (!v10)
  {
    v25 = sub_25E6B7598();
    OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v25);
    v24 = 6;
    goto LABEL_13;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CD6F50]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = [v11 init];
  v13 = [v12 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v14 setTexture_];

  v15 = OUTLINED_FUNCTION_1_2([v12 colorAttachments]);
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 setLoadAction_];

  v16 = OUTLINED_FUNCTION_1_2([v12 colorAttachments]);
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v16 setStoreAction_];

  v17 = OUTLINED_FUNCTION_1_2([v12 colorAttachments]);
  if (!v17)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v17 setClearColor_];

  v18 = [v8 renderCommandEncoderWithDescriptor_];
  if (v18)
  {
    v19 = v18;
    [v18 setRenderPipelineState_];
    [v19 setFragmentTexture:v10 atIndex:0];
    *v28 = a1;
    *&v28[1] = a2;
    *&v28[2] = a3;
    [v19 setFragmentBytes:v28 length:12 atIndex:0];
    [v19 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v19 endEncoding];
    [v8 commit];
    [v8 waitUntilCompleted];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  v26 = sub_25E6B7598();
  OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v26);
  *v27 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_25E6CA0D0(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01478, &qword_25E6DB348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E6DAB50;
  v6 = *MEMORY[0x277CBFA50];
  *(inited + 32) = *MEMORY[0x277CBFA50];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  type metadata accessor for CIImageOption(0);
  sub_25E6CA644();
  v7 = v6;
  v8 = sub_25E6D80A4();
  objc_allocWithZone(MEMORY[0x277CBF758]);
  v9 = sub_25E6CA69C(a1, v8);
  if (!v9)
  {
    v12 = sub_25E6B7598();
    OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v12);
    *v13 = 1;
    swift_willThrow();
    return;
  }

  v10 = v9;
  v11 = sub_25E6D82C4();
  if (v2)
  {

    return;
  }

  v14 = v11;
  [v11 extent];
  Width = CGRectGetWidth(v32);
  v16 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v14 extent];
  Height = CGRectGetHeight(v33);
  v18 = Height;
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = *(v3 + 32);
  v20 = [objc_opt_self() contextWithMTLDevice_];
  v21 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v21)
  {
    v22 = v21;
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 texture2DDescriptorWithPixelFormat:70 width:v16 height:v18 mipmapped:0];
    [v25 setUsage_];
    v26 = [v19 newTextureWithDescriptor_];
    if (v26)
    {
      v27 = v26;
      [v14 extent];
      [v20 render:v14 toMTLTexture:v27 commandBuffer:0 bounds:v24 colorSpace:?];
    }

    else
    {
      v30 = sub_25E6B7598();
      OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v30);
      *v31 = 3;
      swift_willThrow();
    }
  }

  else
  {
    v28 = sub_25E6B7598();
    OUTLINED_FUNCTION_0_1(&_s21GenerationEffectErrorON, v28);
    *v29 = 2;
    swift_willThrow();
  }
}

void *sub_25E6CA450()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_25E6CA490()
{
  sub_25E6CA450();

  return MEMORY[0x2821FE8D8](v0);
}

_BYTE *_s21GenerationEffectErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x25E6CA5B4);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E6CA5F0()
{
  result = qword_27FD01470;
  if (!qword_27FD01470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01470);
  }

  return result;
}

unint64_t sub_25E6CA644()
{
  result = qword_27FD01480;
  if (!qword_27FD01480)
  {
    type metadata accessor for CIImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01480);
  }

  return result;
}

id sub_25E6CA69C(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CIImageOption(0);
    sub_25E6CA644();
    v4 = sub_25E6D8094();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithImage:a1 options:v4];

  return v5;
}

void sub_25E6CA734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25E6D80C4();

  [a3 setLabel_];
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_1_2(void *a1)
{

  return [a1 (v1 + 3960)];
}

id SpatialPhoto.SpatialPhotoSceneSecondaryUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

char *SpatialPhoto.SpatialPhotoSceneSecondaryUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel) = 0;
  v1 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView(0));
  v2 = SpatialPhoto.MetalUIView.init(frame:isSecondary:)(1);
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView) = v2;
  [v2 setAutoresizingMask_];
  v8 = type metadata accessor for SpatialPhoto.SpatialPhotoSceneSecondaryUIView();
  v3 = OUTLINED_FUNCTION_3_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v8);
  [v6 addSubview_];
  return v6;
}

void sub_25E6CA900()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel) = 0;
  sub_25E6D8354();
  __break(1u);
}

double sub_25E6CA988@<D0>(uint64_t a1@<X8>)
{
  sub_25E6CAA0C(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6CA9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6CAA38(v3);
}

__n128 sub_25E6CAA0C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void sub_25E6CAA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6BCAC4(v3);
}

uint64_t (*sub_25E6CAA80(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 1) = v6;
  *(v3 + 32) = v5;
  return sub_25E6CAAF8;
}

void sub_25E6CAAF8(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6[0] = **a1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;
  v7 = v5;
  sub_25E6CAA38(v6);

  free(v1);
}

uint64_t sub_25E6CAB58()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView);
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_25E6CABD8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E6CAB58() & 1;
  return sub_25E6CAC24;
}

uint64_t sub_25E6CAC58(uint64_t result)
{
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel;
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel);
  if (result)
  {
    if (v3 == result)
    {
      return result;
    }

    v4 = sub_25E6D7D74();
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView);
      swift_unknownObjectRelease();
      if (v6 == v5)
      {
        sub_25E6D7D84();
      }
    }

    v3 = *(v1 + v2);
  }

  if (v3)
  {
    v7 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView);
    sub_25E6CAFF4();

    v8 = v7;
    sub_25E6D7D84();
  }

  return result;
}

uint64_t sub_25E6CAD40(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel) = a1;

  sub_25E6CAC58(v2);
}

id SpatialPhoto.SpatialPhotoSceneSecondaryUIView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpatialPhoto.SpatialPhotoSceneSecondaryUIView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_25E6CAE4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6CAB58();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25E6CAFF4()
{
  result = qword_27FD01498;
  if (!qword_27FD01498)
  {
    type metadata accessor for SpatialPhoto.MetalUIView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01498);
  }

  return result;
}

uint64_t SpatialPhoto.SceneView.init(scene:rendererKind:cameraProvider:renderer:renderEffect:renderView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a6;
  v35 = a7;
  v36 = a2;
  v37 = a5;
  v33 = a11;
  v31 = a4;
  v32 = a12;
  v16 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v22 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  a8[1] = a10;
  a8[2] = a1;
  *a8 = a9;
  (*(v18 + 16))(v22, a2, v16);
  v23 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v24 = (v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = a1;
  *(v25 + 3) = a3;
  *(v25 + 4) = v31;
  (*(v18 + 32))(&v25[v23], v22, v16);
  v26 = &v25[v24];
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;
  type metadata accessor for SpatialPhoto.SceneView(0, v33, v32, v28);
  sub_25E6D7DC4();
  swift_retain_n();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_25E6D7E04();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v18 + 8))(v36, v16);
}

uint64_t SpatialPhoto.SceneView.init(viewModel:renderView:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>, uint64_t a5@<X4>)
{
  v11 = sub_25E6D7DA4();
  a4[1] = a3;
  a4[2] = v11;
  *a4 = a2;
  type metadata accessor for SpatialPhoto.SceneView(0, x3_0, a5, v12);
  sub_25E6D7DC4();
  return sub_25E6D7E04();
}

uint64_t sub_25E6CB2E8@<X0>(uint64_t a4@<X3>, uint64_t *a7@<X8>)
{
  v17 = a7;
  v8 = sub_25E6D7A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E6D7D24();
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  (*(v9 + 104))(v11, *MEMORY[0x277D3CB28], v8);
  sub_25E6D7DC4();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  result = sub_25E6D7D94();
  *v17 = result;
  return result;
}

uint64_t sub_25E6CB4D8()
{
  v1 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_25E6CB5AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_25E6D7D24() - 8);
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_25E6CB2E8(v4, a1);
}

double sub_25E6CB66C@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t sub_25E6CB678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD014D0, &unk_25E6DB4F0);
  sub_25E6D7E14();
  return v1;
}

uint64_t SpatialPhoto.SceneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v40 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v9 + 16);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD014A0, &qword_25E6DB3A0);
  v38 = v13;
  v35 = *(a1 + 24);
  v14 = v35;
  v39 = sub_25E6CBA68();
  v46 = v11;
  v47 = v13;
  v48 = v14;
  v49 = v39;
  v41 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1_0();
  v42 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v37 = &v34 - v21;
  v22 = *v3;
  sub_25E6CB678();
  v22();

  v46 = *(v3 + 16);
  v23 = v36;
  (*(v6 + 16))(v36, v3, a1);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 16) = v11;
  *(v25 + 24) = v26;
  (*(v6 + 32))(v25 + v24, v23, a1);

  v27 = v38;
  v28 = v39;
  v29 = v26;
  v30 = v45;
  sub_25E6D8004();

  (*(v43 + 8))(v30, v11);
  v46 = v11;
  v47 = v27;
  v48 = v29;
  v49 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_25E6BB844();
  v32 = *(v42 + 8);
  v32(v20, OpaqueTypeMetadata2);
  sub_25E6BB844();
  return (v32)(v31, OpaqueTypeMetadata2);
}

unint64_t sub_25E6CBA68()
{
  result = qword_27FD014A8;
  if (!qword_27FD014A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD014A0, &qword_25E6DB3A0);
    sub_25E6CBE9C(&qword_27FD014B0, MEMORY[0x277D3CBB8], MEMORY[0x277D3CBC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD014A8);
  }

  return result;
}

uint64_t sub_25E6CBB1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SpatialPhoto.SceneView(0, a4, a5, a4);
  sub_25E6CB678();

  sub_25E6D7DB4();
}

uint64_t sub_25E6CBB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SpatialPhoto.SceneView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);

  v9 = v4 + v7 + v5[12];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD014B8, &qword_25E6DB3A8);
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD014C0, &qword_25E6DB3B0);

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_25E6CBC9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SpatialPhoto.SceneView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_25E6CBB1C(a1, a2, v10, v7, v8);
}

__n128 SpatialPhoto.MetalView.init(viewModel:regionOfInterest:isSecondary:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 41) = a3;
  return result;
}

char *SpatialPhoto.MetalView.makeUIView(context:)()
{
  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  v3 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView(0));
  v4 = SpatialPhoto.MetalUIView.init(frame:isSecondary:)(v2);
  OUTLINED_FUNCTION_0_2();
  if (v2 == 1)
  {
    sub_25E6CBE9C(v5, v6, &protocol conformance descriptor for SpatialPhoto.MetalUIView);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_2();
    sub_25E6D7D84();
  }

  else
  {
    sub_25E6CBE9C(v5, v6, &protocol conformance descriptor for SpatialPhoto.MetalUIView);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_2();
    sub_25E6D7D64();
  }

  v11[0] = v9;
  v11[1] = v10;
  v12 = v1;
  sub_25E6BCAC4(v11);
  v7 = &v4[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate];
  swift_beginAccess();
  *(v7 + 1) = MEMORY[0x277D3CBE8];
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_25E6CBE9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SpatialPhoto.MetalView.updateUIView(_:context:)(uint64_t a1)
{
  v10 = *(v1 + 24);
  v11 = *(v1 + 8);
  v3 = *(v1 + 40);
  if (*(v1 + 41) == 1)
  {
    OUTLINED_FUNCTION_0_2();
    sub_25E6CBE9C(v4, v5, &protocol conformance descriptor for SpatialPhoto.MetalUIView);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_2();
    sub_25E6D7D84();
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    sub_25E6CBE9C(v6, v7, &protocol conformance descriptor for SpatialPhoto.MetalUIView);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_2();
    sub_25E6D7D64();
  }

  v12[0] = v11;
  v12[1] = v10;
  v13 = v3;
  sub_25E6BCAC4(v12);
  v8 = a1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate;
  swift_beginAccess();
  *(v8 + 8) = MEMORY[0x277D3CBE8];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25E6CC048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E6CC7A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25E6CC0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E6CC7A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25E6CC110(uint64_t a1)
{
  sub_25E6CC7A4();
  sub_25E6D7F44();
  __break(1u);
}

uint64_t SpatialPhoto.OcclusionMode.blendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1, v3);
  v9 = (*(v5 + 88))(v8, v3);
  if (v9 == *MEMORY[0x277D3CB28] || v9 == *MEMORY[0x277D3CB08] || v9 == *MEMORY[0x277D3CB20])
  {
LABEL_15:
    v12 = MEMORY[0x277CE13D8];
    goto LABEL_16;
  }

  if (v9 != *MEMORY[0x277D3CB00])
  {
    if (v9 != *MEMORY[0x277D3CB10] && v9 != *MEMORY[0x277D3CB18])
    {
      result = sub_25E6D8354();
      __break(1u);
      return result;
    }

    goto LABEL_15;
  }

  v12 = MEMORY[0x277CE13C0];
LABEL_16:
  v14 = *v12;
  v15 = sub_25E6D8014();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

unint64_t sub_25E6CC370()
{
  result = qword_27FD014C8;
  if (!qword_27FD014C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD014C8);
  }

  return result;
}

void sub_25E6CC3D8(uint64_t a1)
{
  sub_25E6BB234();
  if (v1 <= 0x3F)
  {
    sub_25E6CC61C(319, &qword_27FD00F30, MEMORY[0x277D3CBB8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25E6CC61C(319, &qword_27FD01558, MEMORY[0x277D3CBF0], MEMORY[0x277CDF338]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25E6CC4E8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD014D0, &unk_25E6DB4F0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_25E6CC590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD014D0, &unk_25E6DB4F0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_25E6CC61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25E6CC694(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_25E6CC6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E6CC730(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD014A0, &qword_25E6DB3A0);
  sub_25E6CBA68();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25E6CC7A4()
{
  result = qword_27FD01560;
  if (!qword_27FD01560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01560);
  }

  return result;
}

double OUTLINED_FUNCTION_3_3()
{

  swift_unknownObjectRetain();
  return result;
}

void SpatialPhoto.GyroFilter.init()(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v2 = sub_25E6D8164();
  *(v2 + 16) = 64;
  bzero((v2 + 32), 0x100uLL);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = v2;
}

void __swiftcall SpatialPhoto.GyroFilter.update(targetValue:)(SPRotation3D *__return_ptr retstr, SPRotation3D *targetValue)
{
  v5 = v2;
  v56 = v3;
  v58 = v4;
  v6 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = sub_25E6D81D4();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  if (qword_27FD00A40 != -1)
  {
    swift_once();
  }

  if ((byte_27FD01568 & 1) == 0)
  {
    v55 = v8;
    v20 = v56.f64[1];
    v21 = v56.f64[0];
    v23 = v58.f64[1];
    v22 = v58.f64[0];
    if ((*(v5 + 32) & 1) == 0)
    {
      v21 = *v5;
      v20 = *(v5 + 8);
      v23 = *(v5 + 24);
      v22 = *(v5 + 16);
    }

    *v5 = v56;
    v53 = v56.f64[0];
    v50 = v58.f64[0];
    *(v5 + 16) = v58;
    *(v5 + 32) = 0;
    v49 = v58.f64[1];
    v51 = v56.f64[1];
    v24 = acos(fmin(fmax(fabs(vaddvq_f64(vaddq_f64(vmulq_f64(v56, 0), vmulq_f64(v58, xmmword_25E6DB550)))), 0.0), 1.0));
    v25.f64[0] = v22;
    v25.f64[1] = v23;
    v26.f64[0] = v21;
    v26.f64[1] = v20;
    v27 = acos(fmin(fmax(fabs(vaddvq_f64(vaddq_f64(vmulq_f64(v56, v26), vmulq_f64(v58, v25)))), 0.0), 1.0));
    v28 = v27 + v27;
    sub_25E6CCF4C(v27 + v27);
    v30 = v29;
    if (qword_27FD00A48 != -1)
    {
      swift_once();
    }

    v31 = *&qword_27FD01570;
    if (qword_27FD00A50 != -1)
    {
      swift_once();
    }

    if (*&qword_27FD01578 > v31)
    {
      v32 = (v30 - v31) / (*&qword_27FD01578 - v31);
    }

    else
    {
      v32 = 1.0 - (v30 - *&qword_27FD01578) / (v31 - *&qword_27FD01578);
    }

    if (qword_27FD00A58 != -1)
    {
      swift_once();
    }

    v33 = *&qword_27FD01580;
    if (*&qword_27FD01580 >= v32)
    {
      v33 = v32;
    }

    if (v33 < 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v33;
    }

    if (qword_27FD00A70 != -1)
    {
      swift_once();
    }

    v35 = (v30 - *&qword_27FD01598) / (0.0 - *&qword_27FD01598);
    if (*&qword_27FD01598 >= 0.0)
    {
      v35 = 1.0 - v30 / *&qword_27FD01598;
    }

    v36 = fmin(fmax(fmin(v35, 1.0), 0.0), 1.0);
    if (qword_27FD00A60 != -1)
    {
      swift_once();
    }

    v37 = fmax(v36, 0.0);
    v38 = *&qword_27FD01588;
    if (qword_27FD00A68 != -1)
    {
      swift_once();
    }

    v39 = v38 + v37 * (*&qword_27FD01590 - v38);
    v40 = *(v5 + 104);
    if (v40 <= v34)
    {
      v40 = v34;
    }

    v41 = v39 * v40;
    *(v5 + 104) = v39 * v40;
    PXFloatSaturate();
    (*(v15 + 104))(v19, *MEMORY[0x277D85448], v13);
    sub_25E6D81C4();
    v57 = v42;
    v59 = v43;
    (*(v15 + 8))(v19, v13);
    *(v5 + 48) = v57;
    *(v5 + 64) = v59;
    v44 = sub_25E6D8294();
    *&v61[2] = v50;
    *&v61[3] = v49;
    *v61 = v53;
    *&v61[1] = v51;
    SPRotation3DGetEulerAngles(v60, v62, v61, v44);
    v52 = *&v60[2];
    v45 = *&v60[1];
    v54 = *v60;
    PFKTraceSpatialPhotoGyroFilter();
    sub_25E6D7D04();
    v46 = sub_25E6D7DE4();
    v47 = sub_25E6D8214();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134220288;
      *(v48 + 4) = v54 * 180.0 / 3.14159265;
      *(v48 + 12) = 2048;
      *(v48 + 14) = v45 * 180.0 / 3.14159265;
      *(v48 + 22) = 2048;
      *(v48 + 24) = 180.0 * v52 / 3.14159265;
      *(v48 + 32) = 2048;
      *(v48 + 34) = v54;
      *(v48 + 42) = 2048;
      *(v48 + 44) = v45;
      *(v48 + 52) = 2048;
      *(v48 + 54) = v24 + v24;
      *(v48 + 62) = 2048;
      *(v48 + 64) = v28;
      *(v48 + 72) = 2048;
      *(v48 + 74) = v30;
      *(v48 + 82) = 2048;
      *(v48 + 84) = v41;
      *(v48 + 92) = 2048;
      *(v48 + 94) = v37;
      _os_log_impl(&dword_25E6B5000, v46, v47, "SpatialGyroFilter deg:(%f, %f, %f) rad:(%f, %f) angle:%f angleDelta:%f motionLevel:%f allowedMotion:%f decaySpeed%f", v48, 0x66u);
      MEMORY[0x25F8BCEB0](v48, -1, -1);
    }

    (*(v55 + 8))(v12, v6);
  }
}

uint64_t sub_25E6CCF4C(double a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25E6CD9EC(v3);
  v3 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = *(v3 + 16);
  if (v4 >= v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = a1;
  v8 = (v3 + 32);
  *(v3 + 32 + 4 * v4) = v7;
  *v1 = v3;
  v1[1] = (v4 + 1) & 0x3F;
  v9 = 0.0;
  do
  {
    v10 = *v8++;
    v9 = v9 + v10;
    --v6;
  }

  while (v6);
  return result;
}

Swift::Void __swiftcall SpatialPhoto.GyroFilter.reset()()
{
  v1 = v0;
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  sub_25E6D7D04();
  v9 = sub_25E6D7DE4();
  v10 = sub_25E6D8214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25E6B5000, v9, v10, "SpatialGyroFilter reset", v11, 2u);
    MEMORY[0x25F8BCEB0](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v2);
  sub_25E6CD150();
  v1[13] = 0;
  if (v1[4])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
  }

  else
  {
    v12 = *v1;
    v13 = v1[1];
    v15 = v1[3];
    v14 = v1[2];
  }

  v1[6] = v12;
  v1[7] = v13;
  v1[8] = v14;
  v1[9] = v15;
}

void sub_25E6CD150()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_25E6CD9EC(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(v1 + 32, 4 * v2);
      *v0 = v1;
    }
  }
}

__n128 SpatialPhoto.GyroFilter.targetValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6CD1D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25E6D80C4();
  v2 = [v0 BOOLForKey_];

  byte_27FD01568 = v2;
}

void sub_25E6CD268()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01570 = v2;
}

void sub_25E6CD2E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01578 = v2;
}

void sub_25E6CD360()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01580 = v2;
}

void sub_25E6CD3D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01588 = v2;
}

void sub_25E6CD454()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01590 = v2;
}

void sub_25E6CD4D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01598 = v2;
}

void SPRotation3DGetEulerAngles(uint64_t *__return_ptr a1@<X8>, SPRotation3D a2@<0:Q0, 16:Q1>, uint64_t a3@<X0>, int a4@<W1>)
{
  _Q1 = *a3;
  if (a4 == 2)
  {
    v7 = *a3;
    _Q1.i64[0] = *(a3 + 16);
  }

  else if (a4 == 1)
  {
    v7 = vextq_s8(_Q1, *(a3 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a3 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a4 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a4 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a1 = v23;
  *(a1 + 1) = v22;
  *(a1 + 8) = a4;
}

char *sub_25E6CD698(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD015A0, "$1");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

uint64_t _s10GyroFilterVwxx(uint64_t a1)
{
}

uint64_t _s10GyroFilterVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a2 + 96);
  v7 = v5;

  return a1;
}

uint64_t _s10GyroFilterVwca(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 32);
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = *(a2 + 6);
  v6 = *(a2 + 7);
  v8 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v8;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 10);
  v10 = *(a1 + 80);
  *(a1 + 80) = v9;
  v11 = v9;

  *(a1 + 88) = *(a2 + 11);

  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = *(a2 + 13);
  return a1;
}

uint64_t _s10GyroFilterVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  *(a1 + 48) = v5;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t _s10GyroFilterVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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