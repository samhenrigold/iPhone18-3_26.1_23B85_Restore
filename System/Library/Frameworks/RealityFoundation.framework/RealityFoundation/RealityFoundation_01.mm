uint64_t sub_1C1372CF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1372D8C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1372DC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1372E10()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1372E84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1372EC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v5 = (v3 + 64) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C1372FC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v5 = (v3 + 64) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1C13730C8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C13731A4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  }

  v6 = (((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C13732A0()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1C1373318()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1373368()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C13733C8()
{
  v1 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v4 = (v2 + 88) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C1373520()
{
  v1 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  v4 = (v2 + 136) & ~v2;
  v5 = (((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C1373698()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((v4 + *(v2 + 64) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  }

  v6 = (((((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C13737D8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C13738B0()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1C1373908()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1C13739A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C1373BDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1373C14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1373C4C()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  return MEMORY[0x1EEE6BDD0](v0, 162, 7);
}

unint64_t sub_1C1373F54@<X0>(uint64_t a1@<X8>)
{
  result = PhysicallyBasedMaterial.opacityThreshold.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C1373FC8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 88) & 1) == 0)
  {
    if (*(result + 80) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 80);
    }
  }

  *a2 = v2;
  return result;
}

void sub_1C1374038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  outlined init with copy of PhysicallyBasedMaterial.Blending(v3, v2);
  specialized MaterialWithBlendingInternal.blendingInternal.setter(v3);
}

uint64_t sub_1C137428C(void *a1)
{

  specialized PhysicallyBasedMaterial.program.setter(v1);
}

uint64_t sub_1C1374300()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

uint64_t sub_1C1374448()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1374480()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13744C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1374508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C1374550(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1C1374594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1C13745DC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 25) = v2;
  return result;
}

uint64_t sub_1C1374620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 26);
  return result;
}

double sub_1C1374668(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 26);
  *(v3 + 26) = v2;
  return __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(v4);
}

uint64_t sub_1C13746D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1C1374724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C1374774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1C13747C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1C13748CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1374904()
{

  return MEMORY[0x1EEE6BDD0](v0, 77, 7);
}

uint64_t sub_1C137493C@<X0>(BOOL *a2@<X8>)
{
  result = REAudioFileAssetGetLoopCount();
  *a2 = result == -1;
  return result;
}

double sub_1C13749A0@<D0>(uint64_t a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012AmbientAudioD0V_Tt0B5(&v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1C1374A94()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1374ACC()
{

  return MEMORY[0x1EEE6BDD0](v0, 37, 7);
}

uint64_t sub_1C1374B04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1C1374B80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1C1374B94(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  a2[3] = *a1;
  a2[4] = v3;
  a2[5] = v4;
  return result;
}

void sub_1C1374BA8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  simd_matrix4x4(*(a1 + 48));
  *&v3 = REAABBTransform(v5, v6);
  *a2 = v3;
  a2[1] = v4;
}

__n128 sub_1C1374C0C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 48) = *&zmmword_1C1887630[48];
  *(a2 + 64) = result;
  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1C1374C24(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C1374CE0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1374D8C()
{

  outlined consume of DirectUniformsState(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1C1374DEC()
{

  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1374E2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1374E68()
{
  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1374EB0()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1374F20@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 120) & 1) == 0)
  {
    if (*(result + 112) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 112);
    }
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C1374FA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1374FE8@<X0>(uint64_t *a1@<X8>)
{
  result = Scene.physicsOrigin.getter();
  *a1 = result;
  return result;
}

float sub_1C1375040@<S0>(uint64_t a1@<X8>)
{
  HasPointLight.light.getter(v3);
  result = v4;
  *a1 = v3[0];
  *(a1 + 8) = v3[1];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1C137509C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C13750A8@<D0>(uint64_t a2@<X8>)
{
  REAudioGeneratorAssetGetComponentDescription();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1C1375140()
{
  if (*(v0 + 72) >= 6uLL)
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1C13751D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375208()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  if (*(v0 + 112) >= 6uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1C1375288()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13752C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1375308()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375340()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C137538C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C13753C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1375504@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1375534@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1375564@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C13756D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375708()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1375748()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13757CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5 + 48) >= 6uLL)
  {
  }

  v10 = (v5 + v8 + 123) & ~v8;

  (*(v7 + 8))(v0 + v10, v6);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v9, v3 | v8 | 7);
}

uint64_t sub_1C137599C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1C13759D4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[8].n128_u8[0];
  result = v3[7];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1C1375A24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  result = swift_beginAccess();
  *(v5 + 112) = v2;
  *(v5 + 120) = v3;
  *(v5 + 128) = v4;
  return result;
}

__n128 sub_1C1375A78@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[10].n128_u8[0];
  result = v3[9];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1C1375AC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  result = swift_beginAccess();
  *(v5 + 144) = v2;
  *(v5 + 152) = v3;
  *(v5 + 160) = v4;
  return result;
}

uint64_t sub_1C1375B1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1C1375B78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375BB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C1375C0C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Entity.defaultAnimationClock.getter(a2);
  *a1 = result;
  return result;
}

float sub_1C1375C60@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = (*a1 * 180.0) / 3.1416;
  *a2 = result;
  return result;
}

float sub_1C1375C88(float *a1, float *a2)
{
  result = (*a1 * 3.1416) / 180.0;
  *a2 = result;
  return result;
}

void sub_1C1375CC0(uint64_t a1@<X0>, CMTimebaseRef *a2@<X8>)
{

  key path getter for PhysicsSimulationComponent.clock : PhysicsSimulationComponent(a1, a2);
}

uint64_t sub_1C1375D4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1375DC4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static SpatialTrackingManager.shared;
}

uint64_t sub_1C1375E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C1375E60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C1375EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C1375EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of [String : String](v3 + 56, a2, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
}

uint64_t sub_1C1375F5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_1C1375FA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 144) = v2;
  return result;
}

uint64_t sub_1C1375FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1376024@<X0>(uint64_t *a8@<X8>)
{
  result = SkeletalPose.jointNames.getter();
  *a8 = result;
  return result;
}

void sub_1C13760A8(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];

  SkeletalPose.subscript.setter(a1, v4, v5);
}

uint64_t sub_1C1376170()
{

  outlined consume of BindTarget(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 133, 7);
}

uint64_t sub_1C13761B4()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1C1376234()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 329, 15);
}

uint64_t sub_1C13762BC()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  if (*(v0 + 224) != 1)
  {
  }

  if (*(v0 + 232) != 1)
  {
  }

  if (*(v0 + 240) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 320, 15);
}

uint64_t sub_1C137637C()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 480, 15);
}

uint64_t sub_1C1376414()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 320, 15);
}

uint64_t sub_1C13764A4()
{

  v1 = *(v0 + 152);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 136), *(v0 + 144), v1);
  }

  v2 = *(v0 + 208);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 192), *(v0 + 200), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1C137652C()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1C13765C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1376638@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetGenerateVertexFaceAdjacencyAttributes();
  *a2 = result;
  return result;
}

uint64_t sub_1C137667C@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetReorderVertexCaching();
  *a2 = result;
  return result;
}

uint64_t sub_1C13766C0@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetRepairTangents();
  *a2 = result;
  return result;
}

uint64_t sub_1C1376704@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetMergeVerticesIfPolygonSoup();
  *a2 = result;
  return result;
}

uint64_t sub_1C1376748@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetPreserveSharpFeatures();
  *a2 = result;
  return result;
}

uint64_t sub_1C137678C@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetPreserveSubdivisonSurfaceData();
  *a2 = result;
  return result;
}

uint64_t sub_1C13767D0@<X0>(_BYTE *a2@<X8>)
{
  result = REMeshCompileOptionsGetGenerateDecimatedMesh();
  *a2 = result;
  return result;
}

void *sub_1C1376814@<X0>(void *a2@<X8>)
{
  result = __MeshCompileOptions.subscript.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1C1376854(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;

  return __MeshCompileOptions.subscript.setter(&v6, v3, v4);
}

uint64_t sub_1C13768BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

_BYTE *sub_1C1376950(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (*result == 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFE;
  }

  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_1C1376AD8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = type metadata accessor for AnchoringComponent(0);
  v5 = *(a1 + *(result + 20));
  if (v5 >= 3)
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1376B18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AnchoringComponent(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_1C1376B4C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for AnchoringComponent(0);
  *a2 = *(a1 + *(result + 24)) == 1;
  return result;
}

uint64_t sub_1C1376B8C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AnchoringComponent(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

__n128 sub_1C1376C50@<Q0>(uint64_t a1@<X8>)
{
  HasPhysicsBody.physicsBody.getter(v7);
  v2 = v8[0];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 156) = *(v8 + 12);
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C1376CB4(_OWORD *a1)
{
  v2 = a1[9];
  v9[8] = a1[8];
  v10[0] = v2;
  *(v10 + 12) = *(a1 + 156);
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  outlined init with copy of PhysicsBodyComponent?(v9, &v8);
  return HasPhysicsBody.physicsBody.setter(a1);
}

__n128 sub_1C1376D3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C1376D48@<D0>(uint64_t a1@<X8>)
{
  HasPhysicsMotion.physicsMotion.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1C1376D8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return HasPhysicsMotion.physicsMotion.setter(v4);
}

__n128 sub_1C1376E6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1376E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BodyTrackingComponent.Target(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C1376F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BodyTrackingComponent.Target(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C1376FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1377074(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C1377124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C1377174()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13771F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1377234()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

void sub_1C13772F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Material.getLegacyBase(legacy:)(a1[10], a1[11], a1[13], &v4);
  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

double sub_1C1377344(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of __MaterialColorParameter(v3, v1);
  return UnlitMaterial.__baseColor.setter(&v3);
}

unint64_t sub_1C13773C4@<X0>(uint64_t a1@<X8>)
{
  result = specialized MaterialWithOpacityThresholdInternal.opacityThresholdInternal.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

double sub_1C13773FC@<D0>(uint64_t a1@<X8>)
{
  UnlitMaterial.blending.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_1C1377440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  outlined init with copy of PhysicallyBasedMaterial.Blending(v3, v2);
  specialized MaterialWithBlendingInternal.blendingInternal.setter(v3);
}

uint64_t sub_1C13774EC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 128) & 1) == 0)
  {
    if (*(result + 120) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 120);
    }
  }

  *a2 = v2;
  return result;
}

uint64_t _s17RealityFoundation31PhysicallyBasedMaterialResourceC0A3Kit0E0AadEP16__parameterBlockAD021__RKMaterialParameterI0VvgTW_0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = MEMORY[0x1E69E7CC0];
  result = REMaterialParameterBlockValueCreate();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1C1377608@<X0>(uint64_t a1@<X8>)
{
  result = REMaterialParameterBlockValueCreate();
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  return result;
}

float sub_1C137788C@<S0>(uint64_t *a1@<X0>, float *x8_0@<X8>)
{
  v5 = MEMORY[0x1E6998A88];

  return keypath_get_25Tm(a1, v5, x8_0, 1.0);
}

float sub_1C1377AE0@<S0>(uint64_t *a1@<X0>, float *x8_0@<X8>)
{
  v5 = MEMORY[0x1E6998AB8];

  return keypath_get_25Tm(a1, v5, x8_0, 0.0);
}

uint64_t sub_1C1377C14(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA9TransformV_TtB5Tf4ndn_n(v4, *a2);
}

uint64_t sub_1C1377E1C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(v4, 0, *a2);
}

__n128 sub_1C1377E70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1C1377E98(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1C1377F14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1377F68(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

double sub_1C1377FAC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *a1;
  BlendShapeWeightsSet.default.getter(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1378018(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

void sub_1C1378068(uint64_t *a1)
{
  v1 = *a1;

  BlendShapeWeightsComponent.weightSet.setter(&v1);
}

uint64_t sub_1C13780FC@<X0>(void **a1@<X8>)
{
  *a1 = specialized static __ServiceLocator.__sharedEngine.getter();
}

uint64_t sub_1C1378134(void *a1)
{

  return specialized static __ServiceLocator.__sharedEngine.setter(v1, v2);
}

uint64_t sub_1C1378160@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C13781A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C13781EC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unownedRetainStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1378244@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of __REAssetService(v3 + 80, a2);
}

uint64_t sub_1C1378294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of __REAssetService(v3 + 120, a2);
}

uint64_t sub_1C13782EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 217);
  return result;
}

uint64_t sub_1C1378334(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 217) = v2;
  return result;
}

void sub_1C1378378(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v3 = specialized simd_float4x4.init(translation:rotation:scale:)(a1[2].n128_f64[0], a1[1], COERCE_FLOAT(*a1));
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

double sub_1C13783AC(float32x4_t *a1, _OWORD *a2)
{

  *&result = key path setter for Transform.matrix : Transform(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_1C1378434()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C137846C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C137856C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13785BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 61, 7);
}

uint64_t sub_1C1378614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C137864C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C137868C()
{

  return MEMORY[0x1EEE6BDD0](v0, 45, 7);
}

uint64_t sub_1C1378750(uint64_t *a1)
{
  v2 = *a1;

  return HasHierarchy.children.setter(&v2);
}

__n128 sub_1C1378798(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C13787A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C13787F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C1378844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1C137888C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C13788D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
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

uint64_t storeEnumTagSinglePayload for AudioTimeStamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MTLTextureSwizzleChannels(uint64_t result, int a2, int a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1C68F4BF0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = MEMORY[0x1C68F4BE0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1C68F4C10](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x1E69695C8]);
}

{
  type metadata accessor for AnyKeyPath();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a1 + 16));
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for ALCService.GenerationOption();
  v2 = MEMORY[0x1E698A848];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ALCService.GenerationOption and conformance ALCService.GenerationOption, MEMORY[0x1E698A848], MEMORY[0x1E698A858]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E698A848], &lazy protocol witness table cache variable for type ALCService.GenerationOption and conformance ALCService.GenerationOption, v2, MEMORY[0x1E698A868]);
}

{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)()
{
  type metadata accessor for TextureResource.LoadError(0);

  return swift_storeEnumTagMultiPayload();
}

void *protocol witness for SetAlgebra.remove(_:) in conformance MTLTextureUsage@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance MTLTextureUsage@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for BlendTreeNode.name.getter in conformance BlendTreeInvalidNode()
{
  v1 = *v0;

  return v1;
}

void *protocol witness for Collection.index(after:) in conformance PhysicsJoints@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance PhysicsJoints(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for BlendTreeNode.name.setter in conformance BlendTreeInvalidNode(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance PhysicsJoints@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance PhysicsJoints(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static __RKEntityTriggerSpecification.generateCollisionTriggerSpecifications(decodeContext:)(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

{
  result = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x696669746E656469, 0xEA00000000007265, 2, *a1);
  if (v4)
  {
    v6 = result;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v8 = *(type metadata accessor for __RKEntityTriggerSpecification(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1887600;
    v10 = (v5 + v9);
    *v10 = v6;
    v10[1] = v7;
    result = swift_storeEnumTagMultiPayload();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  return result;
}

void specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = MEMORY[0x1C68F3280](0x65636E6174736964, 0xE800000000000000);
  v8 = [v3 property_];

  if (v8)
  {
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = MEMORY[0x1E69E7CC0];
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 2, v3, v4, v5, v6, &v11, v10);
  *a2 = v11;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
  type metadata accessor for __RKEntityTriggerSpecification(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C1887600;
  result = swift_storeEnumTagMultiPayload();
  *a1 = v2;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = implicit closure #5 in variable initialization expression of static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator(v5);
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateAudioActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateChangeSceneActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = static __RKEntityActionSpecification.generateGroupActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateTransformActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateVisibilityActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static __RKEntityActionSpecification.generateEmphasizeActionSpecifications(decodeContext:)(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

{
  result = specialized implicit closure #4 in variable initialization expression of static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

{
  result = specialized static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

{
  result = specialized static __RKEntityActionSpecification.generateStartAnimationActionSpecifications(decodeContext:)(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

{
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, *a1);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
  v5 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1887600;
  v8 = 1.0;
  if (v4 >= 0.0)
  {
    v8 = v4;
  }

  *(v7 + v6) = v8;
  result = swift_storeEnumTagMultiPayload();
  *a2 = v7;
  return result;
}

void specialized closure #1 in SetupPair.init<A, B>(_:_:)(void *a1)
{
  if (swift_conformsToProtocol2())
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA010PointLightD0V_TtB5(GenericRGB, 0x4120000046D2A785, 0x40000000, 0, a1);
  }
}

{
  if (swift_conformsToProtocol2())
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA016DirectionalLightD0V_TtB5(GenericRGB, 1158028115, 0, a1);
  }
}

{
  if (swift_conformsToProtocol2())
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09SpotLightD0V_TtB5(GenericRGB, 0x4234000045D2A785, 0x4120000042700000, 0x40000000, 0, a1);
  }
}

uint64_t specialized closure #1 in SetupPair.init<A, B>(_:_:)(void *a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {

    return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(0x7F8000003C23D70ALL, 0x142700000, a1);
  }

  return result;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8[-v3];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = type metadata accessor for AnchoringComponent(0);
    *(v4 + v6[5]) = 1;
    *(v4 + v6[6]) = 1;
    v7 = v4 + v6[7];
    v8[0] = 1;
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    v7[64] = 1;
    *v4 = *zmmword_1C1887630;
    v4[1] = *&zmmword_1C1887630[16];
    v4[2] = *&zmmword_1C1887630[32];
    v4[3] = *&zmmword_1C1887630[48];
    type metadata accessor for AnchoringComponent.Target(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v6 - 1) + 56))(v4, 0, 1, v6);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09AnchoringD0V_TtB5(v4, 0, a1);
    return outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  }

  return result;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = type metadata accessor for BodyTrackingComponent(0);
    v4[*(v7 + 20)] = 0;
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA012BodyTrackingD0V_TtB5(v4, 0, a1);
    return outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
  }

  return result;
}

uint64_t specialized closure #1 in SetupPair.init<A, B>(_:_:)(uint64_t a1)
{
  memset(v2, 0, sizeof(v2));
  v3 = xmmword_1C1887610;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v2, 0, a1);

  return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(0, 1, 0);
}

{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v3[0] = xmmword_1C1887620;
  v3[1] = static simd_quatf.identity;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA9TransformV_TtB5Tf4ndn_n(v3, a1);
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildBoxWithRoundedCornersOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildBoxWithRoundedCornersOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildBoxOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildBoxOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildCylinderOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildCylinderOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildConeOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildConeOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildCapsuleOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 20))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildCapsuleOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildSphereOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildSphereOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildPlaneOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildPlaneOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CFStringRef, a3);

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CGColorRef, a3);

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REComponentClassPtr()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance REShaderStage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REShaderStage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MTLPixelFormat()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CIContextOption(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CIContextOption(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CIContextOption@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x1C68F3280](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMTimebaseRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CMTimebaseRef, a3);

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance REShaderAPI()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REShaderAPI()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MTLTextureUsage@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance REComponentClassPtr(uint64_t a1)
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type REComponentClassPtr and conformance REComponentClassPtr, type metadata accessor for REComponentClassPtr, protocol conformance descriptor for REComponentClassPtr);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type REComponentClassPtr and conformance REComponentClassPtr, type metadata accessor for REComponentClassPtr, protocol conformance descriptor for REComponentClassPtr);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIContextOption(uint64_t a1)
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption, protocol conformance descriptor for CIContextOption);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption, protocol conformance descriptor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CGImageRef, a3);

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, protocol conformance descriptor for NSURLResourceKey);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, protocol conformance descriptor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance USKDataType(uint64_t a1)
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKDataType and conformance USKDataType, type metadata accessor for USKDataType, protocol conformance descriptor for USKDataType);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKDataType and conformance USKDataType, type metadata accessor for USKDataType, protocol conformance descriptor for USKDataType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance USKRoleType(uint64_t a1)
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKRoleType and conformance USKRoleType, type metadata accessor for USKRoleType, protocol conformance descriptor for USKRoleType);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKRoleType and conformance USKRoleType, type metadata accessor for USKRoleType, protocol conformance descriptor for USKRoleType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CIContextOption@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1C68F3280](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance USKNodeType(uint64_t a1)
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKNodeType and conformance USKNodeType, type metadata accessor for USKNodeType, protocol conformance descriptor for USKNodeType);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKNodeType and conformance USKNodeType, type metadata accessor for USKNodeType, protocol conformance descriptor for USKNodeType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable(a4, a2);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CIContextOption()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1C68F34C0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CIContextOption(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CIContextOption()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CIContextOption(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
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

uint64_t outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
  }

  return result;
}

uint64_t outlined destroy of BodyTrackingComponent?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double3x3(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double3x3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MTLTextureLevelInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MTLTextureLevelInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for REBlendWeightsMeshMap(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REBlendWeightsMeshMap(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REVideoPlayerVideoReceiverEndpointChangedEvent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REVideoPlayerVideoReceiverEndpointChangedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REVideoPlayerViewingModeChangedEvent(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for REVideoPlayerViewingModeChangedEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for REEntityForceEffectComputeForcesEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REEntityForceEffectComputeForcesEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REAnchorStateDidFailToAnchorEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnchorStateDidFailToAnchorEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RECollisionDidStartEventEx(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 16))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RECollisionDidStartEventEx(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationTimelineEventCreated(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationTimelineEventCreated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationTimelineEventResume(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 64))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationTimelineEventResume(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationTimelineEventSkipped(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationTimelineEventSkipped(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationHasTimelineEventEnd(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationHasTimelineEventEnd(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationHasTimelineEventUpdate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationHasTimelineEventUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationHasTimelineEventStart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 104))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationHasTimelineEventStart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REBlendWeightsDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REBlendWeightsDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REComponentClassPtr(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REComponentClassPtr(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMotionStateDidChangeEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMotionStateDidChangeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for REGeomBuildExtrudedTextOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 35);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildExtrudedTextOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 35) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RESkeletalModelSpacePoseDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RESkeletalModelSpacePoseDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

void type metadata accessor for REAnchoringLocation(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t SimpleMaterial.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-1] - v7;
  outlined init with copy of SimpleMaterial(v1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897F90;
  *(v9 + 32) = 1701667182;
  *(v9 + 40) = 0xE400000000000000;
  swift_beginAccess();
  if (REMaterialAssetGetSourceName())
  {
    v10 = String.init(cString:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v9 + 48) = v10;
  *(v9 + 56) = v12;
  *(v9 + 72) = v13;
  *(v9 + 80) = 0x726F6C6F63;
  *(v9 + 88) = 0xE500000000000000;
  *(v9 + 120) = &type metadata for PhysicallyBasedMaterial.BaseColor;
  v14 = swift_allocObject();
  *(v9 + 96) = v14;
  v22[3] = &type metadata for SimpleMaterial;
  v22[4] = &protocol witness table for SimpleMaterial;
  v22[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(v1, v22[0] + 16);
  v15 = v1[10];
  v16 = v1[11];

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v22, v15, v16, v14 + 16);
  *(v9 + 128) = 0x63696C6C6174656DLL;
  *(v9 + 136) = 0xE800000000000000;
  *(v9 + 168) = &type metadata for MaterialScalarParameter;
  specialized Material.getScalarParameter(_:)(1, v22);
  v17 = v22[0];
  if (v22[0] >> 60 == 15)
  {
    v17 = 0;
  }

  *(v9 + 144) = v17;
  *(v9 + 176) = 0x73656E6867756F72;
  *(v9 + 184) = 0xE900000000000073;
  *(v9 + 216) = &type metadata for MaterialScalarParameter;
  specialized Material.getScalarParameter(_:)(0, v22);
  v18 = v22[0];
  if (v22[0] >> 60 == 15)
  {
    v18 = 1065353216;
  }

  *(v9 + 192) = v18;
  *(v9 + 224) = 0xD000000000000010;
  *(v9 + 232) = 0x80000001C18DDDE0;
  *(v9 + 264) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v9 + 240) = v1[15] == 1;
  v19 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t PhysicallyBasedMaterial.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v43 - v6;
  outlined init with copy of PhysicallyBasedMaterial(v1, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1897FA0;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  swift_beginAccess();
  if (REMaterialAssetGetSourceName())
  {
    v8 = String.init(cString:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v7 + 48) = v8;
  *(v7 + 56) = v10;
  *(v7 + 72) = v11;
  *(v7 + 80) = 0x6F6C6F4365736162;
  *(v7 + 88) = 0xE900000000000072;
  *(v7 + 120) = &type metadata for PhysicallyBasedMaterial.BaseColor;
  v12 = swift_allocObject();
  *(v7 + 96) = v12;
  v82 = &type metadata for PhysicallyBasedMaterial;
  v83 = &protocol witness table for PhysicallyBasedMaterial;
  v81[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v81[0] + 16);
  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v81, 0, 0, v12 + 16);
  *(v7 + 128) = 0x73656E6867756F72;
  *(v7 + 136) = 0xE900000000000073;
  *(v7 + 168) = &type metadata for PhysicallyBasedMaterial.Roughness;
  v13 = swift_allocObject();
  *(v7 + 144) = v13;
  v82 = &type metadata for PhysicallyBasedMaterial;
  v83 = &protocol witness table for PhysicallyBasedMaterial;
  v81[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v81[0] + 16);
  PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v81, v13 + 16);
  *(v7 + 176) = 0x63696C6C6174656DLL;
  *(v7 + 184) = 0xE800000000000000;
  *(v7 + 216) = &type metadata for PhysicallyBasedMaterial.Metallic;
  v14 = swift_allocObject();
  *(v7 + 192) = v14;
  v82 = &type metadata for PhysicallyBasedMaterial;
  v83 = &protocol witness table for PhysicallyBasedMaterial;
  v81[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v81[0] + 16);
  PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v81, v14 + 16);
  *(v7 + 224) = 0x6C616D726F6ELL;
  *(v7 + 232) = 0xE600000000000000;
  *(v7 + 264) = &type metadata for PhysicallyBasedMaterial.Normal;
  v15 = swift_allocObject();
  *(v7 + 240) = v15;
  outlined init with copy of PhysicallyBasedMaterial(v1, v81);
  v16 = v83;

  v17 = v16;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v17, v74);
  if (v75 == 255)
  {
    __MaterialResource.subscript.getter(&v76);
  }

  else
  {
    v76 = v74[0];
    v77 = v74[1];
    v78 = v74[2];
    v79 = v74[3];
    v80 = v75;
  }

  v71 = v78;
  v72 = v79;
  v73 = v80;
  v69 = v76;
  v70 = v77;
  v18 = 0uLL;
  v43 = 0;
  if (v80 != 255)
  {
    if (v80 == 1)
    {
      v19 = DWORD2(v70);
      v20 = v70;
      v18 = v69;
      goto LABEL_12;
    }

    outlined destroy of BodyTrackingComponent?(&v69, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v18 = 0uLL;
  }

  v20 = 0;
  v19 = 0;
LABEL_12:
  *(v15 + 16) = v18;
  *(v15 + 32) = v20;
  *(v15 + 40) = v19;
  outlined destroy of PhysicallyBasedMaterial(v81);
  *(v7 + 272) = 0x676E69646E656C62;
  *(v7 + 280) = 0xE800000000000000;
  *(v7 + 312) = &type metadata for PhysicallyBasedMaterial.Blending;
  v21 = swift_allocObject();
  *(v7 + 288) = v21;
  PhysicallyBasedMaterial.blending.getter(v21 + 16);
  *(v7 + 320) = 0xD000000000000010;
  *(v7 + 328) = 0x80000001C18DDE00;
  *(v7 + 360) = &type metadata for PhysicallyBasedMaterial.AmbientOcclusion;
  v22 = swift_allocObject();
  *(v7 + 336) = v22;
  outlined init with copy of PhysicallyBasedMaterial(v2, v68);
  v23 = v68[4];

  v24 = v23;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v24, v61);
  if (v62 == 255)
  {
    __MaterialResource.subscript.getter(&v63);
  }

  else
  {
    v63 = v61[0];
    v64 = v61[1];
    v65 = v61[2];
    v66 = v61[3];
    v67 = v62;
  }

  v58 = v65;
  v59 = v66;
  v60 = v67;
  v56 = v63;
  v57 = v64;
  if (v67 != 255)
  {
    if (v67 == 1)
    {
      v25 = DWORD2(v57);
      v26 = v57;
      v27 = v56;
      goto LABEL_20;
    }

    outlined destroy of BodyTrackingComponent?(&v56, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  v26 = 0;
  v25 = 0;
  v27 = 0uLL;
LABEL_20:
  *(v22 + 16) = v27;
  *(v22 + 32) = v26;
  *(v22 + 40) = v25;
  outlined destroy of PhysicallyBasedMaterial(v68);
  *(v7 + 368) = 0x72616C7563657073;
  *(v7 + 376) = 0xE800000000000000;
  *(v7 + 408) = &type metadata for PhysicallyBasedMaterial.Specular;
  v28 = swift_allocObject();
  *(v7 + 384) = v28;
  v54 = &type metadata for PhysicallyBasedMaterial;
  v55 = &protocol witness table for PhysicallyBasedMaterial;
  v53[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
  PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v53, v28 + 16);
  *(v7 + 416) = 0x6E65656873;
  *(v7 + 424) = 0xE500000000000000;
  *(v7 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23PhysicallyBasedMaterialV10SheenColorVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialV10SheenColorVSgMR);
  v29 = swift_allocObject();
  *(v7 + 432) = v29;
  if ((*(v2 + 107) & 8) != 0)
  {
    v54 = &type metadata for PhysicallyBasedMaterial;
    v55 = &protocol witness table for PhysicallyBasedMaterial;
    v53[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v53, &v49);
    v30 = v49;
    v33 = v50;
    v31 = v51;
    v32 = v52;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0uLL;
  }

  *(v29 + 16) = v30;
  *(v29 + 24) = v33;
  *(v29 + 40) = v31;
  *(v29 + 48) = v32;
  *(v7 + 464) = 0x616F637261656C63;
  *(v7 + 472) = 0xE900000000000074;
  *(v7 + 504) = &type metadata for PhysicallyBasedMaterial.Clearcoat;
  v34 = swift_allocObject();
  *(v7 + 480) = v34;
  v54 = &type metadata for PhysicallyBasedMaterial;
  v55 = &protocol witness table for PhysicallyBasedMaterial;
  v53[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
  PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v53, v34 + 16);
  *(v7 + 512) = 0xD000000000000012;
  *(v7 + 520) = 0x80000001C18DDE40;
  *(v7 + 552) = &type metadata for PhysicallyBasedMaterial.ClearcoatRoughness;
  v35 = swift_allocObject();
  *(v7 + 528) = v35;
  v54 = &type metadata for PhysicallyBasedMaterial;
  v55 = &protocol witness table for PhysicallyBasedMaterial;
  v53[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
  PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v53, v35 + 16);
  *(v7 + 560) = 0x6F72746F73696E61;
  *(v7 + 568) = 0xEF6C6576654C7970;
  *(v7 + 600) = &type metadata for PhysicallyBasedMaterial.AnisotropyLevel;
  v36 = swift_allocObject();
  *(v7 + 576) = v36;
  v54 = &type metadata for PhysicallyBasedMaterial;
  v55 = &protocol witness table for PhysicallyBasedMaterial;
  v53[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
  PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v53, v36 + 16);
  *(v7 + 608) = 0x6F72746F73696E61;
  *(v7 + 616) = 0xEF656C676E417970;
  *(v7 + 648) = &type metadata for PhysicallyBasedMaterial.AnisotropyAngle;
  v37 = swift_allocObject();
  *(v7 + 624) = v37;
  v54 = &type metadata for PhysicallyBasedMaterial;
  v55 = &protocol witness table for PhysicallyBasedMaterial;
  v53[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
  PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v53, v37 + 16);
  *(v7 + 656) = 0xD000000000000011;
  *(v7 + 664) = 0x80000001C18DDE60;
  v38 = PhysicallyBasedMaterial.emissiveIntensity.getter();
  *(v7 + 696) = MEMORY[0x1E69E6448];
  *(v7 + 672) = v38;
  strcpy((v7 + 704), "emissiveColor");
  *(v7 + 718) = -4864;
  *(v7 + 744) = &type metadata for PhysicallyBasedMaterial.EmissiveColor;
  v39 = swift_allocObject();
  *(v7 + 720) = v39;
  v54 = &type metadata for PhysicallyBasedMaterial;
  v55 = &protocol witness table for PhysicallyBasedMaterial;
  v53[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v53[0] + 16);
  PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v53, v39 + 16);
  *(v7 + 752) = 0xD00000000000001ALL;
  *(v7 + 760) = 0x80000001C18DDE80;
  *(v7 + 792) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v7 + 768);
  *(v7 + 800) = 0xD000000000000023;
  *(v7 + 808) = 0x80000001C18DDEA0;
  *(v7 + 840) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v7 + 816);
  *(v7 + 848) = 0x6C6C754365636166;
  *(v7 + 856) = 0xEB00000000676E69;
  *(v7 + 888) = &type metadata for MaterialParameterTypes.FaceCulling;
  v40 = 2;
  if ((*(v2 + 88) & 1) == 0)
  {
    if (*(v2 + 80) >= 3uLL)
    {
      v40 = 2;
    }

    else
    {
      v40 = *(v2 + 80);
    }
  }

  *(v7 + 864) = v40;
  *(v7 + 896) = 0xD000000000000010;
  *(v7 + 904) = 0x80000001C18DDDE0;
  *(v7 + 936) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v7 + 912) = *(v2 + 136) == 1;
  v41 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v41 - 8) + 56))(v44, 1, 1, v41);
  (*(v46 + 104))(v45, *MEMORY[0x1E69E75D8], v47);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t UnlitMaterial.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-1] - v7;
  outlined init with copy of UnlitMaterial(v1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897F90;
  *(v9 + 32) = 1701667182;
  *(v9 + 40) = 0xE400000000000000;
  swift_beginAccess();
  if (REMaterialAssetGetSourceName())
  {
    v10 = String.init(cString:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v9 + 48) = v10;
  *(v9 + 56) = v12;
  *(v9 + 72) = v13;
  *(v9 + 80) = 0x726F6C6F63;
  *(v9 + 88) = 0xE500000000000000;
  *(v9 + 120) = &type metadata for PhysicallyBasedMaterial.BaseColor;
  v14 = swift_allocObject();
  *(v9 + 96) = v14;
  v23[3] = &type metadata for UnlitMaterial;
  v23[4] = &protocol witness table for UnlitMaterial;
  v23[0] = swift_allocObject();
  outlined init with copy of UnlitMaterial(v1, v23[0] + 16);
  v15 = v1[10];
  v16 = v1[11];

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v23, v15, v16, v14 + 16);
  *(v9 + 128) = 0x676E69646E656C62;
  *(v9 + 136) = 0xE800000000000000;
  *(v9 + 168) = &type metadata for PhysicallyBasedMaterial.Blending;
  v17 = swift_allocObject();
  *(v9 + 144) = v17;
  UnlitMaterial.blending.getter(v17 + 16);
  *(v9 + 176) = 0xD000000000000010;
  *(v9 + 184) = 0x80000001C18DD850;
  v18 = specialized MaterialWithOpacityThresholdInternal.opacityThresholdInternal.getter();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
  *(v9 + 192) = v18;
  *(v9 + 196) = BYTE4(v18) & 1;
  *(v9 + 216) = v19;
  *(v9 + 224) = 0xD000000000000010;
  *(v9 + 232) = 0x80000001C18DDDE0;
  *(v9 + 264) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v9 + 240) = v1[14] == 1;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void CustomMaterial.customMirror.getter(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v16 = &v15 - v5;
  outlined init with copy of CustomMaterial(v1, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1897FB0;
  *(v6 + 32) = 1701667182;
  *(v6 + 40) = 0xE400000000000000;
  swift_beginAccess();
  if (REMaterialAssetGetSourceName())
  {
    v7 = String.init(cString:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v6 + 48) = v7;
  *(v6 + 56) = v9;
  *(v6 + 72) = v10;
  strcpy((v6 + 80), "lightingModel");
  *(v6 + 94) = -4864;
  *(v6 + 120) = &type metadata for CustomMaterial.LightingModel;
  CustomMaterial.lightingModel.getter((v6 + 96));
  *(v6 + 128) = 0x6F6C6F4365736162;
  *(v6 + 136) = 0xE900000000000072;
  *(v6 + 168) = &type metadata for CustomMaterial.BaseColor;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.BaseColor.init(material:alternateTintKey:)(v21, 0, 0, v6 + 144);
  *(v6 + 176) = 0x73656E6867756F72;
  *(v6 + 184) = 0xE900000000000073;
  *(v6 + 216) = &type metadata for CustomMaterial.Roughness;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.Roughness.init(material:alternateTintKey:)(v21, v6 + 192);
  *(v6 + 224) = 0x63696C6C6174656DLL;
  *(v6 + 232) = 0xE800000000000000;
  *(v6 + 264) = &type metadata for CustomMaterial.Metallic;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.Metallic.init(material:alternateTintKey:)(v21, v6 + 240);
  *(v6 + 272) = 0x6C616D726F6ELL;
  *(v6 + 280) = 0xE600000000000000;
  *(v6 + 312) = &type metadata for CustomMaterial.Normal;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.Normal.init(material:alternateTintKey:)(v21, v6 + 288);
  strcpy((v6 + 320), "emissiveColor");
  *(v6 + 334) = -4864;
  *(v6 + 360) = &type metadata for CustomMaterial.EmissiveColor;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v21, v6 + 336);
  *(v6 + 368) = 0xD000000000000010;
  *(v6 + 376) = 0x80000001C18DDE00;
  *(v6 + 408) = &type metadata for CustomMaterial.AmbientOcclusion;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.AmbientOcclusion.init(material:alternateTintKey:)(v21, v6 + 384);
  *(v6 + 416) = 0x72616C7563657073;
  *(v6 + 424) = 0xE800000000000000;
  *(v6 + 456) = &type metadata for CustomMaterial.Specular;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.Specular.init(material:alternateTintKey:)(v21, v6 + 432);
  *(v6 + 464) = 0x616F637261656C63;
  *(v6 + 472) = 0xE900000000000074;
  *(v6 + 504) = &type metadata for CustomMaterial.Clearcoat;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v21, v6 + 480);
  *(v6 + 512) = 0xD000000000000012;
  *(v6 + 520) = 0x80000001C18DDE40;
  *(v6 + 552) = &type metadata for CustomMaterial.ClearcoatRoughness;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v21, v6 + 528);
  *(v6 + 560) = 0x6D6F74737563;
  *(v6 + 568) = 0xE600000000000000;
  *(v6 + 600) = &type metadata for CustomMaterial.Custom;
  v11 = swift_allocObject();
  *(v6 + 576) = v11;
  v22 = &type metadata for CustomMaterial;
  v23 = &protocol witness table for CustomMaterial;
  v21[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v21[0] + 16);
  CustomMaterial.Custom.init(material:alternateTintKey:)(v21, v11 + 1);
  *(v6 + 608) = 0x676E69646E656C62;
  *(v6 + 616) = 0xE800000000000000;
  *(v6 + 648) = &type metadata for CustomMaterial.Blending;
  CustomMaterial.blending.getter(v6 + 624);
  *(v6 + 656) = 0xD000000000000010;
  *(v6 + 664) = 0x80000001C18DD850;
  v12 = CustomMaterial.opacityThreshold.getter();
  *(v6 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
  *(v6 + 672) = v12;
  *(v6 + 676) = BYTE4(v12) & 1;
  *(v6 + 704) = 0xD00000000000001ALL;
  *(v6 + 712) = 0x80000001C18DDE80;
  *(v6 + 744) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v6 + 720);
  *(v6 + 752) = 0xD000000000000023;
  *(v6 + 760) = 0x80000001C18DDEA0;
  *(v6 + 792) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v6 + 768);
  *(v6 + 800) = 0x6C6C754365636166;
  *(v6 + 808) = 0xEB00000000676E69;
  *(v6 + 840) = &type metadata for MaterialParameterTypes.FaceCulling;
  if (*(v1 + 48))
  {
    __break(1u);
  }

  else
  {
    v13 = *(v1 + 40);
    if (v13 >= 3)
    {
      LOBYTE(v13) = 2;
    }

    *(v6 + 816) = v13;
    *(v6 + 848) = 0xD000000000000010;
    *(v6 + 856) = 0x80000001C18DDDE0;
    *(v6 + 888) = &type metadata for MaterialParameterTypes.TriangleFillMode;
    *(v6 + 864) = *(v1 + 344) == 1;
    v14 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v14 - 8) + 56))(v16, 1, 1, v14);
    (*(v18 + 104))(v17, *MEMORY[0x1E69E75D8], v19);
    Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t OcclusionMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20[-v6 - 8];
  v8 = v0[1];
  v24[0] = *v0;
  v24[1] = v8;
  v10 = *v0;
  v9 = v0[1];
  *v25 = v0[2];
  *&v25[9] = *(v0 + 41);
  v21 = v10;
  v22 = v9;
  v23[0] = v0[2];
  *(v23 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FC0;
  *(v11 + 32) = 1701667182;
  *(v11 + 40) = 0xE400000000000000;
  swift_beginAccess();
  outlined init with copy of OcclusionMaterial(v24, v20);
  if (REMaterialAssetGetSourceName())
  {
    v12 = String.init(cString:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v11 + 48) = v12;
  *(v11 + 56) = v14;
  *(v11 + 72) = v15;
  *(v11 + 80) = 0xD000000000000017;
  *(v11 + 88) = 0x80000001C18DDED0;
  v16 = v25[8];
  *(v11 + 120) = MEMORY[0x1E69E6370];
  *(v11 + 96) = v16;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t PortalMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6 - 8];
  v8 = v0[1];
  v23[0] = *v0;
  v23[1] = v8;
  v10 = *v0;
  v9 = v0[1];
  *v24 = v0[2];
  *&v24[9] = *(v0 + 41);
  v20 = v10;
  v21 = v9;
  v22[0] = v0[2];
  *(v22 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FC0;
  *(v11 + 32) = 1701667182;
  *(v11 + 40) = 0xE400000000000000;
  swift_beginAccess();
  outlined init with copy of PortalMaterial(v23, v19);
  if (REMaterialAssetGetSourceName())
  {
    v12 = String.init(cString:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v11 + 48) = v12;
  *(v11 + 56) = v14;
  *(v11 + 72) = v15;
  *(v11 + 80) = 0xD000000000000010;
  *(v11 + 88) = 0x80000001C18DDDE0;
  *(v11 + 120) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v11 + 96) = *&v24[8] == 1;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void *ShaderGraphMaterial.customMirrorParameters.getter()
{
  v1 = v0[1];
  v69 = *v0;
  v2 = v0[5];
  v73 = v0[4];
  v74 = v2;
  v75[0] = v0[6];
  *(v75 + 9) = *(v0 + 105);
  v3 = v0[2];
  v4 = v0[3];
  v70 = v1;
  v71 = v3;
  v72 = v4;
  swift_beginAccess();
  v5 = REMaterialAssetCopyVisibleShaderGraphParameterNames();
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v48 = *(v7 + 16);
  if (!v48)
  {
    v10 = MEMORY[0x1E69E7CC8];
LABEL_30:

    return v10;
  }

  v8 = 0;
  v9 = (v7 + 40);
  v10 = MEMORY[0x1E69E7CC8];
  v47 = v7;
  while (v8 < *(v7 + 16))
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    v13 = MEMORY[0x1C68F3280](v12, v11);
    IsVisibleShaderGraphParameter = REMaterialAssetIsVisibleShaderGraphParameter();

    if (IsVisibleShaderGraphParameter)
    {
      *&v56 = 3027236;
      *(&v56 + 1) = 0xE300000000000000;
      MEMORY[0x1C68F3410](v12, v11);
      v15 = v56;
      v68[3] = &type metadata for ShaderGraphMaterial;
      v68[4] = &protocol witness table for ShaderGraphMaterial;
      v16 = swift_allocObject();
      v68[0] = v16;
      v17 = v74;
      v16[5] = v73;
      v16[6] = v17;
      v16[7] = v75[0];
      *(v16 + 121) = *(v75 + 9);
      v18 = v70;
      v16[1] = v69;
      v16[2] = v18;
      v19 = v72;
      v16[3] = v71;
      v16[4] = v19;
      __swift_project_boxed_opaque_existential_1(v68, &type metadata for ShaderGraphMaterial);
      outlined init with copy of ShaderGraphMaterial(&v69, &v56);
      Material.subscript.getter(v61, v15, *(&v15 + 1), &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial);

      if (v62 == 255)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v67 = v62;
      }

      else
      {
        v56 = v61[0];
        v57 = v61[1];
        v58 = v61[2];
        v59 = v61[3];
        v60 = v62;
        MaterialParameters.Value.init(_:)(&v56, &v63);
      }

      outlined destroy of MaterialParameters(v68);
      v20 = v67;
      v60 = v67;
      v56 = v63;
      v57 = v64;
      v58 = v65;
      v59 = v66;
      v7 = v47;
      if (v67 != 255)
      {
        v21 = *(&v56 + 1);
        if (v67)
        {
          v51 = v56;
          v52 = v64;
          v53 = v65;
          v54 = v66;
        }

        else
        {

          outlined destroy of BodyTrackingComponent?(&v56, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
          *&v51 = v21;
          v20 = 1;
        }

        v55 = v20;
        outlined init with copy of MaterialParameters.Value(&v51, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        v25 = v10[2];
        v26 = (v23 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_32;
        }

        v28 = v23;
        if (v10[3] >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v23 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v28 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_34;
          }

          v24 = v29;
          if ((v28 & 1) == 0)
          {
LABEL_26:
            v10[(v24 >> 6) + 8] |= 1 << v24;
            v38 = (v10[6] + 16 * v24);
            *v38 = v12;
            v38[1] = v11;
            v39 = v10[7] + 80 * v24;
            v40 = v55;
            v41 = v54;
            v42 = v53;
            *(v39 + 16) = v52;
            *(v39 + 32) = v42;
            *(v39 + 48) = v41;
            *(v39 + 64) = v40;
            *v39 = v51;
            outlined destroy of MaterialParameters.Value(&v51);
            v43 = v10[2];
            v44 = __OFADD__(v43, 1);
            v45 = v43 + 1;
            if (v44)
            {
              goto LABEL_33;
            }

            v10[2] = v45;
            goto LABEL_28;
          }
        }

        v31 = v10[7] + 80 * v24;
        v49[0] = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 32);
        v34 = *(v31 + 48);
        v50 = *(v31 + 64);
        v49[2] = v33;
        v49[3] = v34;
        v49[1] = v32;
        v35 = v54;
        v37 = v52;
        v36 = v53;
        *(v31 + 64) = v55;
        *(v31 + 32) = v36;
        *(v31 + 48) = v35;
        *(v31 + 16) = v37;
        *v31 = v51;
        outlined destroy of MaterialParameters.Value(v49);
        outlined destroy of MaterialParameters.Value(&v51);
LABEL_28:
        v7 = v47;
        goto LABEL_7;
      }
    }

LABEL_7:
    ++v8;
    v9 += 2;
    if (v48 == v8)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ShaderGraphMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - v6;
  v8 = v0[5];
  v9 = v0[3];
  v31 = v0[4];
  v32 = v8;
  v10 = v0[5];
  v33[0] = v0[6];
  *(v33 + 9) = *(v0 + 105);
  v11 = v0[1];
  v27 = *v0;
  v28 = v11;
  v12 = v0[3];
  v14 = *v0;
  v13 = v0[1];
  v29 = v0[2];
  v30 = v12;
  v25[8] = v31;
  v25[9] = v10;
  v26[0] = v0[6];
  *(v26 + 9) = *(v0 + 105);
  v25[4] = v14;
  v25[5] = v13;
  v25[6] = v29;
  v25[7] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1897FD0;
  *(v15 + 32) = 1701667182;
  *(v15 + 40) = 0xE400000000000000;
  swift_beginAccess();
  outlined init with copy of ShaderGraphMaterial(&v27, v24);
  if (REMaterialAssetGetSourceName())
  {
    v16 = String.init(cString:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v15 + 48) = v16;
  *(v15 + 56) = v18;
  *(v15 + 72) = v19;
  *(v15 + 80) = 0x6574656D61726170;
  *(v15 + 88) = 0xEA00000000007372;
  v24[4] = v31;
  v24[5] = v32;
  v25[0] = v33[0];
  *(v25 + 9) = *(v33 + 9);
  v24[0] = v27;
  v24[1] = v28;
  v24[2] = v29;
  v24[3] = v30;
  v20 = ShaderGraphMaterial.customMirrorParameters.getter();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS17RealityFoundation18MaterialParametersV5ValueOGMd, &_sSDySS17RealityFoundation18MaterialParametersV5ValueOGMR);
  *(v15 + 96) = v20;
  *(v15 + 120) = v21;
  *(v15 + 128) = 0xD000000000000010;
  *(v15 + 136) = 0x80000001C18DDDE0;
  *(v15 + 168) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v15 + 144) = *&v33[0] == 1;
  v22 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t VideoMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v22 = *(v0 + 32);
  v23 = v8;
  v10 = *(v0 + 48);
  v24 = *(v0 + 64);
  v11 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v11;
  v19[9] = v22;
  v19[10] = v10;
  v19[11] = *(v0 + 64);
  v25 = *(v0 + 80);
  v20 = *(v0 + 80);
  v19[7] = v21[0];
  v19[8] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1897FC0;
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  swift_beginAccess();
  outlined init with copy of VideoMaterial(v21, v19);
  if (REMaterialAssetGetSourceName())
  {
    v13 = String.init(cString:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v12 + 48) = v13;
  *(v12 + 56) = v15;
  *(v12 + 72) = v16;
  *(v12 + 80) = 0xD000000000000010;
  *(v12 + 88) = 0x80000001C18DDDE0;
  *(v12 + 120) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v12 + 96) = *(&v23 + 1) == 1;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized String.withCString<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a6@<X5>, uint64_t x8_0@<X8>)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    closure #1 in __RKMaterialParameterBlock.get(parameter:)(x8_0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    _StringGuts._slowWithCString<A>(_:)();
  }
}

void *specialized Material.getTextureParameter(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);

  v8 = v7;

  result = specialized String.withCString<A>(_:)(a1, a2, v8, v16);
  if (v17 == 255)
  {
    result = __MaterialResource.subscript.getter(&v18);
  }

  else
  {
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
    v22 = v17;
  }

  v13 = v20;
  v14 = v21;
  v15 = v22;
  v11 = v18;
  v12 = v19;
  if (v22 != 255)
  {
    if (v22 == 1)
    {
      v10 = v12;
      *a3 = v11;
      *(a3 + 16) = v10;
      *(a3 + 24) = DWORD2(v10);
      return result;
    }

    result = outlined destroy of BodyTrackingComponent?(&v11, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  return result;
}

void specialized Material.getUVTransform(withSuffix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  LOBYTE(v25[0]) = 13;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  v6 = *(v3 + 32);

  v7 = v6;

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v7, v25);
  v8 = v26;
  if (v26 == 255)
  {
    __MaterialResource.subscript.getter(&v27);
  }

  else
  {

    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    v30 = v25[3];
    v31 = v8;
  }

  v23[2] = v29;
  v23[3] = v30;
  v24 = v31;
  v23[0] = v27;
  v23[1] = v28;
  v9 = xmmword_1C1897FE0;
  if (v31 == 255)
  {
    goto LABEL_7;
  }

  if (v31 == 5)
  {
    v9 = v23[0];
LABEL_7:
    v12 = v9;
    goto LABEL_9;
  }

  v12 = xmmword_1C1897FE0;
  outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_9:
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  LOBYTE(v16[0]) = 14;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v7, v16);
  v10 = v17;
  if (v17 == 255)
  {
    __MaterialResource.subscript.getter(&v18);
  }

  else
  {

    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
    v22 = v10;
  }

  v14[2] = v20;
  v14[3] = v21;
  v15 = v22;
  v14[0] = v18;
  v14[1] = v19;
  v11 = 0.0;
  if (v22 != 255)
  {
    if (v22 == 3)
    {
      v11 = *v14;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v11 = 0.0;
    }
  }

  MaterialParameterTypes.TextureCoordinateTransform.init(offset:transform:)(a3, v11, v12);
}

{
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  LOBYTE(v25[0]) = 13;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  v6 = *(v3 + 72);

  v7 = v6;

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v7, v25);
  v8 = v26;
  if (v26 == 255)
  {
    __MaterialResource.subscript.getter(&v27);
  }

  else
  {

    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    v30 = v25[3];
    v31 = v8;
  }

  v23[2] = v29;
  v23[3] = v30;
  v24 = v31;
  v23[0] = v27;
  v23[1] = v28;
  v9 = xmmword_1C1897FE0;
  if (v31 == 255)
  {
    goto LABEL_7;
  }

  if (v31 == 5)
  {
    v9 = v23[0];
LABEL_7:
    v12 = v9;
    goto LABEL_9;
  }

  v12 = xmmword_1C1897FE0;
  outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_9:
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  LOBYTE(v16[0]) = 14;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v7, v16);
  v10 = v17;
  if (v17 == 255)
  {
    __MaterialResource.subscript.getter(&v18);
  }

  else
  {

    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
    v22 = v10;
  }

  v14[2] = v20;
  v14[3] = v21;
  v15 = v22;
  v14[0] = v18;
  v14[1] = v19;
  v11 = 0.0;
  if (v22 != 255)
  {
    if (v22 == 3)
    {
      v11 = *v14;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v11 = 0.0;
    }
  }

  MaterialParameterTypes.TextureCoordinateTransform.init(offset:transform:)(a3, v11, v12);
}

uint64_t specialized Material.getScalarParameter(_:)@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  result = specialized Material.getTexture(_:)(10 - a1);
  if (!result)
  {
    v7 = *(v2 + 72);
    v8 = PbrCommonKeys.Constants.rawValue.getter(0x50204u >> (8 * a1));
    v10 = v9;

    v11 = v7;

    specialized String.withCString<A>(_:)(v8, v10, v11, v12);

    if (v13 != 255)
    {
      if (v13 == 2)
      {
        v6 = v12[0];
        goto LABEL_8;
      }

      result = outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    }

    v6 = 0xF000000000000000;
    goto LABEL_8;
  }

  v6 = result | 0x8000000000000000;
LABEL_8:
  *a2 = v6;
  return result;
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

unint64_t specialized MaterialWithOpacityThresholdInternal.opacityThresholdInternal.getter()
{
  swift_beginAccess();
  REMaterialAssetGetMaterialDefinition();
  FunctionConstant = REMaterialAssetGetFunctionConstant();
  if (FunctionConstant)
  {
    v2 = FunctionConstant;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1702195828 && v3 == 0xE400000000000000)
    {

      goto LABEL_11;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_11;
    }
  }

  if ((REAssetHandleResolvesToSameAssetPath() & 1) == 0 && (REAssetHandleResolvesToSameAssetPath() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v6 = *(v0 + 72);

  v7 = v6;

  specialized String.withCString<A>(_:)(0xD000000000000010, 0x80000001C18DD850, v7, v13);
  if (v14 == 255)
  {
    __MaterialResource.subscript.getter(&v15);
  }

  else
  {
    v15 = v13[0];
    v16 = v13[1];
    v17 = v13[2];
    v18 = v13[3];
    v19 = v14;
  }

  v11[2] = v17;
  v11[3] = v18;
  v12 = v19;
  v11[0] = v15;
  v11[1] = v16;
  if (v19 == 255)
  {
    goto LABEL_18;
  }

  if (v19 != 2)
  {
    outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_18:
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32);
  }

  v8 = LODWORD(v11[0]);
  outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  v9 = 0;
  return v8 | (v9 << 32);
}

uint64_t objectdestroy_17Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t objectdestroy_9Tm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

void outlined consume of DirectUniformsState(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v6 = (a5 >> 60) & 3;
  if (v6 == 1)
  {
    outlined consume of Data._Representation(a1, a2);

    outlined consume of Data._Representation(a4, a5 & 0xCFFFFFFFFFFFFFFFLL);
    v7 = a6;
  }

  else
  {
    if (v6)
    {
      return;
    }

    outlined consume of Data._Representation(a1, a2);
    v7 = a3;
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void __RKEntityInteractionsComponent.didAdd(componentRef:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v8);
  if (!a1)
  {
    goto LABEL_47;
  }

  Entity = REComponentGetEntity();
  v10 = REEntityGetSwiftObject();
  v89 = v4;
  if (v10)
  {
    type metadata accessor for Entity();
    v11 = swift_dynamicCastClassUnconditional();
LABEL_4:
    v12 = v11;
    goto LABEL_8;
  }

  if (REEntityIsBeingDestroyed())
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  specialized static Entity.entityInfoType(_:)(Entity);
  if (!v13)
  {
    v11 = makeEntity(for:)(Entity);
    goto LABEL_4;
  }

  v12 = (*(v13 + 232))();
  v14 = *(v12 + 16);

  MEMORY[0x1C68F9740](v14, 0);
  *(v12 + 16) = Entity;
  MEMORY[0x1C68F9740](Entity, v12);

LABEL_8:
  swift_weakAssign();
  v98 = 91;
  v99 = 0xE100000000000000;
  v96 = 0;
  v97 = 0xE000000000000000;
  v94 = v12;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v96, v97);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v15 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v15);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v16 = v98;
  v17 = v99;
  v18 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v18, &v98);
  v19 = *(v2 + 16);
  if (!v19 || !*(v19 + 16))
  {
    v98 = v16;
    v99 = v17;
    v20 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v98);
    v21 = __RKEntityInteractionsComponent.decodedJSON()();

    *(v2 + 16) = v21;
    v19 = v21;
  }

  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    swift_once();
  }

  if (interactionsLoggingEnabled)
  {
    v98 = v16;
    v99 = v17;
    v22 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v22, &v98);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v23 = JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v98 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
    lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](&lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A], &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification, protocol conformance descriptor for __RKEntityInteractionSpecification, MEMORY[0x1E69E6300]);
    v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v92 = v23;
    v26 = v25;
    v27 = v24;
    static String.Encoding.utf8.getter();
    v28 = String.init(data:encoding:)();
    if (v29)
    {
      v87 = v27;
      v88 = v26;
      v90 = v5;
      v98 = 10;
      v99 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v28);
      *(&v81 - 2) = &v98;
      v32 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v81 - 4), v30, v31, &v81);
      v34 = *(v32 + 16);
      if (v34)
      {
        v86 = v16;
        v83 = v12;
        v84 = v2;
        v82 = v32;
        v35 = (v32 + 56);
        *&v33 = 136315394;
        v91 = v33;
        do
        {
          v41 = *(v35 - 3);
          v42 = *(v35 - 2);
          v43 = *(v35 - 1);
          v44 = *v35;

          v45 = static os_log_type_t.debug.getter();
          v46 = MEMORY[0x1C68F3380](v41, v42, v43, v44);
          v48 = v47;

          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, interactionsLogger);

          v50 = Logger.logObject.getter();

          if (os_log_type_enabled(v50, v45))
          {
            v36 = v17;
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v98 = v38;
            *v37 = v91;
            *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v36, &v98);
            *(v37 + 12) = 2080;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v98);

            *(v37 + 14) = v39;
            _os_log_impl(&dword_1C1358000, v50, v45, "%s%s", v37, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v38, -1, -1);
            v40 = v37;
            v17 = v36;
            MEMORY[0x1C6902A30](v40, -1, -1);
          }

          else
          {
          }

          v35 += 4;
          --v34;
        }

        while (v34);

        outlined consume of Data._Representation(v87, v88);

        v2 = v84;
        v12 = v83;
        v16 = v86;
      }

      else
      {

        outlined consume of Data._Representation(v87, v88);
      }

      v5 = v90;
    }

    else
    {

      outlined consume of Data._Representation(v27, v26);
    }
  }

  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v52 = SceneNullable;
    v53 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    v85 = v17;
    if (v53)
    {
      v54 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v54 = Scene.init(coreScene:)(v52);
    }

    v87 = v54;
    v57 = Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      v59 = MEMORY[0x1E69E7CC0];
      v100 = MEMORY[0x1E69E7CC0];
      v60 = *(v19 + 16);
      if (v60)
      {
        v61 = v58;
        v82 = v57;
        v86 = v16;
        v83 = v12;
        v84 = v2;
        v92 = type metadata accessor for __RKEntityTrigger();
        v62 = type metadata accessor for __RKEntityAction();
        v63 = *(v89 + 24);
        v90 = *(v89 + 20);
        *&v91 = v62;
        v89 = v93 + v63;
        v64 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        swift_beginAccess();
        v88 = *(v5 + 72);
        do
        {
          v65 = v93;
          outlined init with copy of __RKEntityInteractionSpecification(v64, v93);
          v66 = *(v61 + 40);

          v67 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(v65, v66);
          v68 = static __RKEntityAction.action(for:entityLookupTable:)(v65 + v90, v66);
          v70 = *v89;
          v69 = *(v89 + 8);

          outlined destroy of __RKEntityInteractionSpecification(v65);
          type metadata accessor for __RKEntityInteraction();
          swift_allocObject();
          specialized __RKEntityInteraction.init(trigger:action:)(v67, v68);
          v72 = v71;

          swift_beginAccess();
          *(v72 + 48) = v70;
          *(v72 + 56) = v69;

          swift_beginAccess();

          MEMORY[0x1C68F3650](v73);
          if (*((*(v61 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v61 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          MEMORY[0x1C68F3650](v74);
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v64 += v88;
          --v60;
        }

        while (v60);
        v59 = v100;
        v2 = v84;
        v16 = v86;
      }

      *(v2 + 24) = v59;
      v75 = v85;
      v94 = v16;
      v95 = v85;
      v76 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v76, &v94);
      Scene.enableCollisions(_:)(1);
      v94 = v16;
      v95 = v75;
      v77 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v77, &v94);
      swift_unknownObjectRelease();

      v94 = v16;
      v95 = v75;
      v78 = static os_log_type_t.debug.getter();
      v79 = &v94;
    }

    else
    {
      swift_unknownObjectRelease();
      v80 = v85;
      v98 = v16;
      v99 = v85;
      static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)();

      v98 = v16;
      v99 = v80;
      v78 = static os_log_type_t.debug.getter();
      v79 = &v98;
    }

    specialized InteractionsLogger.log(_:_:)(v78, v79);
  }

  else
  {
    v98 = v16;
    v99 = v17;
    v55 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v55, &v98);
    v98 = v16;
    v99 = v17;
    v56 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v56, &v98);
  }
}

uint64_t cloneInteractionsComponentComponent(_:)(uint64_t a1)
{
  Class = REComponentGetClass();
  v2 = REComponentCreateByClassOpaquePointer(Class);
  Object = RECustomComponentGetObject();
  if (!Object)
  {
    v9 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &dword_1C1358000, v10, "cloneInteractionsComponentComponent: Failed to get original Swift component.", 76, 2, MEMORY[0x1E69E7CC0]);
LABEL_9:

    return v2;
  }

  v4 = Object;
  v5 = RECustomComponentGetObject();
  if (!v5)
  {
    v11 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_1C1358000, v10, "cloneInteractionsComponentComponent: Failed to get cloned Swift component.", 74, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_9;
  }

  v6 = v5;
  if (!v4[1])
  {
    v7 = *v4;
    if (*v4)
    {
      type metadata accessor for IntrospectionDataCleanupHelper();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v4[1] = v8;
    }
  }

  outlined init with copy of __RKEntityInteractionsComponent(v4, v13);
  outlined destroy of __RKEntityInteractionsComponent(v6);
  outlined init with take of __RKEntityInteractionsComponent(v13, v6);
  return v2;
}

uint64_t __RKEntityInteractionsComponent.decodedJSON()()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (!*v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = strlen(*v0);
  (*(v2 + 104))(v4, *MEMORY[0x1E6969010], v1);
  v7 = specialized Data.init(bytesNoCopy:count:deallocator:)(v5, v6, v4);
  v9 = v8;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
  lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](&lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A], &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification, protocol conformance descriptor for __RKEntityInteractionSpecification, MEMORY[0x1E69E6330]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v7, v9);
  return v11[1];
}

uint64_t __RKEntityInteractionsComponent.specifications.setter(uint64_t a1)
{
  v88 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v3 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v81 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - v11;
  v85 = v1;
  v13 = v1[2];
  if (v13)
  {

    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(a1, v13);

    if (v14)
    {
    }
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v90 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
  lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](&lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A], &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification, protocol conformance descriptor for __RKEntityInteractionSpecification, MEMORY[0x1E69E6300]);
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;
  v82 = v16;

  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    v20 = v82;
    if (v19 != 2)
    {
      goto LABEL_22;
    }

    v22 = *(v82 + 16);
    v21 = *(v82 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (!v23)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    v20 = v82;
    if (!v19)
    {
      result = BYTE6(v18) + 1;
      if (!__OFADD__(BYTE6(v18), 1))
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }
  }

  LODWORD(v24) = HIDWORD(v20) - v20;
  if (__OFSUB__(HIDWORD(v20), v20))
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v24 = v24;
LABEL_17:
  if (v24 > 2147483646)
  {

    return outlined consume of Data._Representation(v20, v18);
  }

  if (v19 == 2)
  {
    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    v23 = __OFSUB__(v25, v26);
    v27 = v25 - v26;
    if (!v23)
    {
LABEL_23:
      result = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }

    __break(1u);
LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  v44 = HIDWORD(v20) - v20;
  if (!__OFSUB__(HIDWORD(v20), v20))
  {
    result = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
LABEL_24:
      if (result < 0xFFFFFFFF80000000)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (result > 0x7FFFFFFF)
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v28 = RECIntrospectionAlloc();
      v29 = v85;
      if (*v85)
      {

        v29[1] = 0;
      }

      *v29 = v28;
      type metadata accessor for IntrospectionDataCleanupHelper();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;

      v29[1] = v30;
      if (v19 > 1)
      {
        v31 = 0;
        if (v19 == 2)
        {
          v32 = v82;
          if (__OFSUB__(*(v82 + 24), *(v82 + 16)))
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          result = Data.copyBytes(to:count:)();
          v34 = *(v32 + 16);
          v33 = *(v32 + 24);
          if (__OFSUB__(v33, v34))
          {
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          *(v28 + v33 - v34) = 0;
          if (v13)
          {
LABEL_35:
            v81 = v18;
            v35 = *(v13 + 16);
            v87 = *(a1 + 16);
            v36 = 0;
            if (v87 >= v35)
            {
              v19 = v35;
            }

            else
            {
              v19 = v87;
            }

            if (v19)
            {
              while (v36 < *(v13 + 16))
              {
                v37 = (*(v3 + 80) + 32) & ~*(v3 + 80);
                v38 = *(v3 + 72) * v36;
                result = outlined init with copy of __RKEntityInteractionSpecification(v13 + v37 + v38, v12);
                if (v36 >= *(a1 + 16))
                {
                  goto LABEL_122;
                }

                outlined init with copy of __RKEntityInteractionSpecification(a1 + v37 + v38, v9);
                if ((specialized static __RKEntityTriggerSpecification.== infix(_:_:)(v12, v9) & 1) == 0 || (specialized static __RKEntityActionSpecification.== infix(_:_:)(&v12[*(v88 + 20)], &v9[*(v88 + 20)]) & 1) == 0)
                {
LABEL_51:
                  outlined destroy of __RKEntityInteractionSpecification(v9);
                  outlined destroy of __RKEntityInteractionSpecification(v12);
                  goto LABEL_62;
                }

                v39 = *(v88 + 24);
                v40 = &v12[v39];
                v41 = *&v12[v39 + 8];
                v42 = &v9[v39];
                v43 = *(v42 + 1);
                if (v41)
                {
                  if (!v43 || (*v40 != *v42 || v41 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_51;
                  }
                }

                else if (v43)
                {
                  goto LABEL_51;
                }

                outlined destroy of __RKEntityInteractionSpecification(v9);
                result = outlined destroy of __RKEntityInteractionSpecification(v12);
                if (v19 == ++v36)
                {
                  goto LABEL_61;
                }
              }

LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

LABEL_62:
            v45 = v85;
            result = swift_weakLoadStrong();
            v46 = result;
            if (result)
            {
              SceneNullable = REEntityGetSceneNullable();
              if (SceneNullable)
              {
                v48 = SceneNullable;
                v49 = RESceneGetSwiftObject();
                type metadata accessor for Scene();
                if (v49)
                {
                  swift_dynamicCastClassUnconditional();
                }

                else
                {
                  swift_allocObject();
                  Scene.init(coreScene:)(v48);
                }

                Scene.__interactionService.getter();

                type metadata accessor for __RKEntityInteractionManager();
                result = swift_dynamicCastClass();
                v46 = result;
                if (!result)
                {
                  result = swift_unknownObjectRelease();
                }

                v45 = v85;
              }

              else
              {

                v46 = 0;
              }
            }

            v50 = (v45 + 3);
            if (!v46 && v45[3])
            {
              outlined consume of Data._Representation(v82, v81);
            }

            v51 = *(v13 + 16);
            v52 = v51 - v36;
            if (v51 < v36)
            {
              goto LABEL_126;
            }

            v53 = v83;
            v86 = v45 + 3;
            if (v51 == v36)
            {
LABEL_76:
              if (v87 < v36)
              {
LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

              if (v36 == v87)
              {
LABEL_78:
                outlined consume of Data._Representation(v82, v81);
              }

LABEL_102:
              v84 = v3;
              while (v36 < *(a1 + 16))
              {
                v60 = (*(v3 + 80) + 32) & ~*(v3 + 80);
                v61 = *(v3 + 72);
                v62 = v89;
                outlined init with copy of __RKEntityInteractionSpecification(a1 + v60 + v61 * v36, v89);
                result = outlined init with copy of __RKEntityInteractionSpecification(v62, v53);
                v63 = v45[2];
                if (!v63)
                {
                  goto LABEL_133;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
                }

                v65 = v63[2];
                v64 = v63[3];
                if (v65 >= v64 >> 1)
                {
                  v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v63);
                }

                v63[2] = v65 + 1;
                result = outlined init with take of __RKEntityInteractionSpecification(v53, v63 + v60 + v65 * v61);
                v45[2] = v63;
                v3 = v84;
                v66 = v87;
                if (v45[3])
                {
                  if (!v46)
                  {
                    goto LABEL_135;
                  }

                  v67 = a1;
                  swift_beginAccess();
                  v68 = *(v46 + 40);
                  type metadata accessor for __RKEntityTrigger();

                  v69 = v89;
                  v70 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(v89, v68);
                  type metadata accessor for __RKEntityAction();
                  v71 = v88;
                  v72 = static __RKEntityAction.action(for:entityLookupTable:)(v69 + *(v88 + 20), v68);
                  v73 = (v69 + *(v71 + 24));
                  v75 = *v73;
                  v74 = v73[1];
                  type metadata accessor for __RKEntityInteraction();
                  swift_allocObject();

                  specialized __RKEntityInteraction.init(trigger:action:)(v70, v72);
                  v77 = v76;

                  swift_beginAccess();
                  *(v77 + 48) = v75;
                  *(v77 + 56) = v74;

                  swift_beginAccess();

                  MEMORY[0x1C68F3650](v78);
                  if (*((*(v46 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v46 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();

                  v80 = v86;
                  MEMORY[0x1C68F3650](v79);
                  a1 = v67;
                  v53 = v83;
                  v3 = v84;
                  v66 = v87;
                  if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v66 = v87;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v45 = v85;
                }

                ++v36;
                result = outlined destroy of __RKEntityInteractionSpecification(v89);
                if (v66 == v36)
                {
                  goto LABEL_78;
                }
              }

              __break(1u);
            }

            else
            {
              while (v52)
              {
                v54 = *v50;
                if (*v50)
                {
                  if (v54 >> 62)
                  {
                    result = __CocoaSet.count.getter();
                    if (!result)
                    {
                      goto LABEL_123;
                    }
                  }

                  else
                  {
                    result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!result)
                    {
                      goto LABEL_123;
                    }
                  }

                  result = specialized Array._customRemoveLast()();
                  if (!result)
                  {
                    if (*v50 >> 62)
                    {
                      v59 = __CocoaSet.count.getter();
                      v23 = __OFSUB__(v59, 1);
                      result = v59 - 1;
                      if (v23)
                      {
LABEL_101:
                        __break(1u);
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v55 = *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v23 = __OFSUB__(v55, 1);
                      result = v55 - 1;
                      if (v23)
                      {
                        goto LABEL_101;
                      }
                    }

                    result = specialized Array.remove(at:)(result);
                  }

                  if (!v46)
                  {
                    goto LABEL_136;
                  }

                  __RKEntityInteractionManager.__removeInteraction(_:)(result);
                }

                v56 = v45[2];
                if (!v56)
                {
                  goto LABEL_134;
                }

                if (!v56[2])
                {
                  goto LABEL_119;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if (result)
                {
                  v57 = v56[2];
                  if (!v57)
                  {
                    goto LABEL_120;
                  }
                }

                else
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
                  v56 = result;
                  v57 = *(result + 16);
                  if (!v57)
                  {
                    goto LABEL_120;
                  }
                }

                v58 = v57 - 1;
                result = outlined destroy of __RKEntityInteractionSpecification(v56 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * (v57 - 1));
                v56[2] = v58;
                v50 = v86;
                v45[2] = v56;
                if (!--v52)
                {
                  goto LABEL_76;
                }
              }
            }

            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_56:
          v13 = MEMORY[0x1E69E7CC0];
          v85[2] = MEMORY[0x1E69E7CC0];
          goto LABEL_35;
        }
      }

      else if (v19)
      {
        if (__OFSUB__(HIDWORD(v82), v82))
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v31 = HIDWORD(v82) - v82;
      }

      else
      {
        v31 = BYTE6(v18);
      }

      result = Data.copyBytes(to:count:)();
      *(v28 + v31) = 0;
      if (v13)
      {
        goto LABEL_35;
      }

      goto LABEL_56;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    v36 = v19;
    goto LABEL_62;
  }

LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t implicit closure #7 in __RKEntityInteractionsComponent.didActivate(componentRef:)(uint64_t a1)
{
  _StringGuts.grow(_:)(98);
  MEMORY[0x1C68F3410](0xD000000000000035, 0x80000001C18DE110);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](0xD00000000000002BLL, 0x80000001C18DE150);
  return 0;
}

uint64_t static __RKEntityInteractionsComponent.componentType.getter()
{
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration)
  {
    return *(static __RKEntityInteractionsComponent.registration + 3);
  }

  else
  {
    return 0;
  }
}

void __RKEntityInteractionsComponent.reRegisterInteractions()()
{
  v1 = v0;
  v48 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  v53 = 91;
  v54 = 0xE100000000000000;
  if (Strong)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    v50 = Strong;
    _print_unlocked<A, B>(_:_:)();
    v5 = v51;
    v6 = v52;
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1C68F3410](v5, v6);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v7 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v8 = v53;
  v9 = v54;
  v10 = swift_weakLoadStrong();
  if (!v10)
  {
    v53 = v8;
    v54 = v9;
    v15 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v15, &v53);

    return;
  }

  v11 = v10;
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_21;
  }

  v13 = SceneNullable;
  v14 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v14)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v13);
  }

  v16 = Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_21:
    v53 = v8;
    v54 = v9;
    static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)();

    return;
  }

  v18 = v17;
  v43[1] = v16;
  v43[2] = v11;
  v19 = *(v1 + 24);
  v47 = (v1 + 24);
  if (!v19)
  {
    v53 = v8;
    v54 = v9;
    v25 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v25, &v53);
    goto LABEL_24;
  }

  v53 = v8;
  v54 = v9;
  v20 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v20, &v53);
  if (v19 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v46 = v1;
  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v22 = v2;
  for (i = 0; i != v21; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1C68F41F0](i, v19);
    }

    else
    {
      v24 = *(v19 + 8 * i + 32);
    }

    __RKEntityInteractionManager.__removeInteraction(_:)(v24);
  }

  v2 = v22;
  v1 = v46;
LABEL_24:

  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  v53 = v8;
  v54 = v9;
  v26 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v26, &v53);
  v27 = *(v1 + 16);
  if (!v27)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v28 = *(v27 + 16);
  if (v28)
  {
    v46 = type metadata accessor for __RKEntityTrigger();
    v45 = type metadata accessor for __RKEntityAction();
    v29 = v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    swift_beginAccess();
    v44 = *(v2 + 72);
    do
    {
      v30 = v49;
      outlined init with copy of __RKEntityInteractionSpecification(v29, v49);
      v31 = *(v18 + 40);

      v32 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(v30, v31);
      v33 = v48;
      v34 = static __RKEntityAction.action(for:entityLookupTable:)(v30 + *(v48 + 20), v31);
      v35 = (v30 + *(v33 + 24));
      v36 = *v35;
      v37 = v35[1];
      type metadata accessor for __RKEntityInteraction();
      swift_allocObject();

      specialized __RKEntityInteraction.init(trigger:action:)(v32, v34);
      v39 = v38;

      swift_beginAccess();
      *(v39 + 48) = v36;
      *(v39 + 56) = v37;

      swift_beginAccess();

      MEMORY[0x1C68F3650](v40);
      if (*((*(v18 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v41 = v47;
      if (*v47)
      {

        MEMORY[0x1C68F3650](v42);
        if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        outlined destroy of __RKEntityInteractionSpecification(v49);
      }

      else
      {
        outlined destroy of __RKEntityInteractionSpecification(v49);
      }

      v29 += v44;
      --v28;
    }

    while (v28);
  }

  swift_unknownObjectRelease();
}

uint64_t closure #2 in __RKEntityInteractionsComponent.didActivate(componentRef:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v21[0] = 91;
    v21[1] = 0xE100000000000000;
    v19 = 0;
    v20 = 0xE000000000000000;
    v18[0] = result;

    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    MEMORY[0x1C68F3410](8285, 0xE200000000000000);
    v5 = StaticString.description.getter();
    MEMORY[0x1C68F3410](v5);

    MEMORY[0x1C68F3410](8250, 0xE200000000000000);

    v6 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v6, v21);
    swift_beginAccess();
    if (static __RKEntityInteractionsComponent.registration && REEntityGetComponentByClassOpaquePointer(*(v4 + 16), *(static __RKEntityInteractionsComponent.registration + 3)) && RECustomComponentGetObject())
    {
      v19 = 91;
      v20 = 0xE100000000000000;
      v7 = static os_log_type_t.debug.getter();
      specialized InteractionsLogger.log(_:_:)(v7, &v19);
      __RKEntityInteractionsComponent.reRegisterInteractions()();
    }

    else
    {
      v19 = 91;
      v20 = 0xE100000000000000;
      v8 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v8, &v19);
    }

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v10 = SceneNullable;
      v11 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v11)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v10);
      }

      if (RESceneGetSwiftObject())
      {
        swift_unknownObjectRetain();
        if (swift_dynamicCastClass())
        {
          Scene.__interactionService.getter();
          type metadata accessor for __RKEntityInteractionManager();
          if (swift_dynamicCastClass())
          {
            v19 = 91;
            v20 = 0xE100000000000000;
            v12 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v12, &v19);
            type metadata accessor for __RKStartTrigger();
            v13 = swift_allocObject();
            *(v13 + 16) = 0;
            swift_beginAccess();
            v14 = *(a2 + 16);

            __RKEntityInteractionManager.__performInteractions(matching:on:)(v13, v14);

            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();

            v18[0] = 91;
            v18[1] = 0xE100000000000000;
            v15 = static os_log_type_t.debug.getter();
            v16 = v18;
LABEL_19:
            specialized InteractionsLogger.log(_:_:)(v15, v16);
          }

          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();
        }
      }

      else
      {
      }
    }

    v19 = 91;
    v20 = 0xE100000000000000;
    v17 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v17, &v19);
    v19 = 91;
    v20 = 0xE100000000000000;
    v15 = static os_log_type_t.debug.getter();
    v16 = &v19;
    goto LABEL_19;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityInteractionsComponent.Registration.RegistrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityInteractionsComponent.Registration.RegistrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t __RKEntityInteractionsComponent.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x617265746E494152, 0xEE00736E6F697463, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKEntityInteractionsComponent.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKEntityInteractionsComponent.Registration.init()@<X0>(uint64_t *a3@<X8>)
{
  v4 = RECustomComponentTypeCreate();
  if (v4)
  {
    v5 = v4;
    result = REComponentTypeSetCloneCallback();
    *a3 = v5;
  }

  else
  {
    lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t @objc createInteractionsComponentObject(componentType:)()
{
  v0 = RECIntrospectionAlloc();
  memset(v2, 0, sizeof(v2));
  swift_weakInit();
  v3 = 2;
  outlined init with take of __RKEntityInteractionsComponent(v2, v0);
  return v0;
}

uint64_t @objc destroyInteractionsComponentObject(componentType:rawPointer:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of __RKEntityInteractionsComponent(a2);

  return RECIntrospectionFree();
}

void @objc didAddInteractionsComponentObject(componentRef:)(uint64_t a1)
{
  if (RECustomComponentGetObject())
  {
    __RKEntityInteractionsComponent.didAdd(componentRef:)(a1);
  }
}

void @objc willRemoveInteractionsComponentObject(componentRef:)(uint64_t a1)
{
  if (RECustomComponentGetObject())
  {
    specialized __RKEntityInteractionsComponent.willRemove(componentRef:)();
  }
}

uint64_t @objc interactionsComponentEntityDidActivate(componentRef:)(uint64_t a1)
{
  result = RECustomComponentGetObject();
  if (result)
  {
    return specialized __RKEntityInteractionsComponent.didActivate(componentRef:)();
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v10 = 1;
      v5 = v8;
LABEL_6:
      v11 = v5;
      v12 = 0;
      v13 = @objc createInteractionsComponentObject(componentType:);
      v14 = @objc destroyInteractionsComponentObject(componentType:rawPointer:);
      v15 = @objc didAddInteractionsComponentObject(componentRef:);
      v16 = @objc willRemoveInteractionsComponentObject(componentRef:);
      v17 = @objc interactionsComponentEntityDidActivate(componentRef:);
      v18 = 0;
      v19 = a3;
      v20 = 0;
      v6 = RECustomComponentTypeCreate();
      if (v6)
      {
        v3 = v6;
        REComponentTypeSetCloneCallback();
      }

      else
      {
        lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
        swift_allocError();
        swift_willThrow();
      }

      return v3;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = 1;
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v8[2];
  }

  return v3;
}

{
  v15 = *MEMORY[0x1E69E9840];
  v6[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6[0] = a1;
      v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = 1;
      v4 = v6;
LABEL_6:
      v8 = v4;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0;
      v13 = a3;
      v14 = 0;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError();
        swift_allocError();
        return swift_willThrow();
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = 1;
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v6[2];
  }

  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v10 = 1;
      v5 = v8;
LABEL_6:
      v11 = v5;
      v12 = 0;
      v13 = @objc createAnchoringComponentObject(componentType:);
      v14 = @objc destroyAnchoringComponentObject(componentType:rawPointer:);
      v15 = @objc didAddAnchoringComponentObject(componentRef:);
      v16 = @objc willRemoveAnchoringComponentObject(componentRef:);
      v17 = 0;
      v18 = 0;
      v19 = a3;
      v20 = 0;
      v6 = RECustomComponentTypeCreate();
      if (v6)
      {
        v3 = v6;
        REComponentTypeSetCloneCallback();
      }

      else
      {
        lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError();
        swift_allocError();
        swift_willThrow();
      }

      return v3;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = 1;
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v8[2];
  }

  return v3;
}

{
  v16 = *MEMORY[0x1E69E9840];
  v6[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6[0] = a1;
      v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = 1;
      v4 = v6;
LABEL_6:
      v8 = v4;
      v9 = 0;
      v10 = @objc createTagsComponentObject(componentType:);
      v11 = @objc destroyTagsComponentObject(componentType:rawComponentPointer:);
      v12 = 0u;
      v13 = 0u;
      v14 = a3;
      v15 = 0;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError();
        swift_allocError();
        return swift_willThrow();
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = 1;
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v6[2];
  }

  return result;
}

{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    result = REKeyValueComponentGetStringValue();
    if (result)
    {
      return String.init(cString:)();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    result = _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v5;
    }
  }

  return result;
}

{
  v15 = *MEMORY[0x1E69E9840];
  v6[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6[0] = a1;
      v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = 1;
      v4 = v6;
LABEL_6:
      v8 = v4;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0;
      v13 = a3;
      v14 = 0;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError();
        swift_allocError();
        return swift_willThrow();
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = 1;
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v6[2];
  }

  return result;
}

{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return REMaterialParameterBlockValueClearParameter();
  }

  else
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }
}

uint64_t __RKEntityInteractionsComponent.Registration.deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKEntityInteractionsComponent.Registration.__deallocating_deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

uint64_t static __RKEntityInteractionsComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKEntityInteractionsComponent.registration = a1;
}

uint64_t key path setter for static __RKEntityInteractionsComponent.registration : __RKEntityInteractionsComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKEntityInteractionsComponent.registration = v1;
}

uint64_t Entity.__interactions.getter()
{
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!REEntityGetCustomComponent())
  {
    return MEMORY[0x1E69E7CC0];
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(Object + 16))
  {
  }

  return __RKEntityInteractionsComponent.decodedJSON()();
}

uint64_t Entity.__interactions.setter(uint64_t a1)
{
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration)
  {
  }

  if (*(a1 + 16))
  {
    if ((REEntityGetCustomComponent() || REEntityAddComponentByClass()) && RECustomComponentGetObject())
    {
      return __RKEntityInteractionsComponent.specifications.setter(a1);
    }
  }

  result = REEntityGetCustomComponent();
  if (result)
  {
    return REEntityRemoveComponentByClass();
  }

  return result;
}

void (*Entity.__interactions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration && REEntityGetCustomComponent() && (Object = RECustomComponentGetObject()) != 0)
  {
    if (*(Object + 16))
    {
    }

    else
    {
      v6 = __RKEntityInteractionsComponent.decodedJSON()();
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 24) = v6;
  return Entity.__interactions.modify;
}

void Entity.__interactions.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    Entity.__interactions.setter(v4);
LABEL_9:

    goto LABEL_10;
  }

  if (!static __RKEntityInteractionsComponent.registration)
  {
    goto LABEL_9;
  }

  if (*(v3 + 16))
  {
    if ((REEntityGetCustomComponent() || REEntityAddComponentByClass()) && RECustomComponentGetObject())
    {
      __RKEntityInteractionsComponent.specifications.setter(v3);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (REEntityGetCustomComponent())
  {
    REEntityRemoveComponentByClass();
  }

LABEL_10:

  free(v2);
}

uint64_t getEnumTagSinglePayload for __RKEntityInteractionsComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityInteractionsComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionsComponent.Registration.RegistrationError, &type metadata for __RKEntityInteractionsComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionsComponent.Registration.RegistrationError, &type metadata for __RKEntityInteractionsComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError);
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized __RKEntityInteractionsComponent.willRemove(componentRef:)()
{
  v1 = v0;
  v19 = 91;
  v20 = 0xE100000000000000;
  if (swift_weakLoadStrong())
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v6 = v19;
  v5 = v20;
  v7 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v7, &v19);
  if (!swift_weakLoadStrong())
  {
    v19 = v6;
    v20 = v5;
    v12 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v12, &v19);
LABEL_27:
    v19 = v6;
    v20 = v5;
    v18 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v18, &v19);

    return;
  }

  v8 = *(v0 + 24);
  if (!v8)
  {

LABEL_26:
    swift_weakAssign();
    goto LABEL_27;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_22;
  }

  v10 = SceneNullable;
  v11 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v11)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v10);
  }

  Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
LABEL_22:
    v19 = v6;
    v20 = v5;
    v17 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v17, &v19);

LABEL_25:
    *(v1 + 24) = 0;
    goto LABEL_26;
  }

  v19 = v6;
  v20 = v5;
  v13 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v13, &v19);
  if (!(v8 >> 62))
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_24:

    swift_unknownObjectRelease();

    goto LABEL_25;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C68F41F0](i, v8);
      }

      else
      {
        v16 = *(v8 + 8 * i + 32);
      }

      __RKEntityInteractionManager.__removeInteraction(_:)(v16);
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t specialized __RKEntityInteractionsComponent.didActivate(componentRef:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v87 - v7;
  Strong = swift_weakLoadStrong();
  v98 = 91;
  v99 = 0xE100000000000000;
  if (Strong)
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    v94 = Strong;
    _print_unlocked<A, B>(_:_:)();
    v10 = v96;
    v11 = v97;
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1C68F3410](v10, v11);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v12 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v12);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v14 = v98;
  v13 = v99;
  v15 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v15, &v98);
  v16 = swift_weakLoadStrong();
  if (!v16)
  {
    v98 = v14;
    v99 = v13;
    v24 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v24, &v98);
LABEL_28:
    v98 = v14;
    v99 = v13;
    v40 = static os_log_type_t.debug.getter();
    v41 = &v98;
LABEL_29:
    specialized InteractionsLogger.log(_:_:)(v40, v41);
  }

  v17 = v16;
  v98 = v14;
  v99 = v13;
  v18 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v18, &v98);
  v19 = *(v0 + 40);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    v98 = v14;
    v99 = v13;
    v20 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v98);
LABEL_27:

    goto LABEL_28;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v98 = v14;
    v99 = v13;
    v39 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v39, &v98);
    goto LABEL_27;
  }

  v22 = SceneNullable;
  v23 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v23)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v22);
  }

  v25 = Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v27 = v26;
  swift_beginAccess();
  if (*(v27 + 26) != 1)
  {
    v96 = v14;
    v97 = v13;
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();
    swift_unknownObjectRelease();

    goto LABEL_79;
  }

  v87 = v27;
  v88 = v8;
  v92 = v25;
  v89 = v3;
  v90 = v2;
  swift_retain_n();
  REAnchorComponentGetComponentType();
  isUniquelyReferenced_nonNull_native = v17;
  if (REEntityGetComponentByClass())
  {
LABEL_16:

    REAnchorComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();

    if (ComponentByClass)
    {
      v96 = v14;
      v97 = v13;
      v30 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v30, &v96);
      *(v1 + 40) = 1;
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      v32 = (v31 + 16);

      ChildCount = REEntityGetChildCount();
      if (ChildCount < 0)
      {
LABEL_91:
        __break(1u);
      }

      else
      {
        v34 = ChildCount;
        if (!ChildCount)
        {

LABEL_81:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_1C1898160;
          *(v77 + 32) = v17;
          *v32 = v77;

          goto LABEL_82;
        }

        v35 = 0;
        do
        {
          if (v35 >= REEntityGetChildCount())
          {
            __break(1u);
            goto LABEL_88;
          }

          ++v35;
        }

        while (v34 != v35);

        v96 = v17;

        specialized Entity.ChildCollection.filter(recursive:_:)(1, &v96);
        v37 = v36;

        *v32 = v37;

        if (!v37)
        {
          goto LABEL_81;
        }

        MEMORY[0x1C68F3650](v38);
        if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_24:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_82:
          v78 = MEMORY[0x1C68F3280](0x747365544358, 0xE600000000000000);
          v79 = NSClassFromString(v78);

          if (v79 && (v80 = v87, swift_beginAccess(), (*(v80 + 25) & 1) != 0))
          {

            swift_unknownObjectRelease();
          }

          else
          {
            specialized static __ServiceLocator.shared.getter();
            swift_beginAccess();
            swift_unownedRetainStrong();
            static DispatchTime.now()();
            v81 = v31;
            v82 = v88;
            + infix(_:_:)();
            v83 = v90;
            v91 = *(v89 + 8);
            v91(v5, v90);
            v84 = swift_allocObject();
            v93 = isUniquelyReferenced_nonNull_native;
            v85 = v84;
            swift_weakInit();

            v86 = swift_allocObject();
            *(v86 + 16) = v85;
            *(v86 + 24) = v81;

            __Engine.asyncAfterOnEngineQueue(deadline:_:)(v82, partial apply for closure #2 in __RKEntityInteractionsComponent.didActivate(componentRef:), v86);

            swift_unknownObjectRelease();

            v91(v82, v83);
          }

          v95[0] = v14;
          v95[1] = v13;
          v40 = static os_log_type_t.debug.getter();
          v41 = v95;
          goto LABEL_29;
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_24;
    }

LABEL_78:

    v96 = v14;
    v97 = v13;
    v76 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v76, &v96);

    swift_unknownObjectRelease();
LABEL_79:
    v96 = v14;
    v97 = v13;
    v40 = static os_log_type_t.debug.getter();
    v41 = &v96;
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = v17;
  v93 = v5;
  v91 = v1;
  while (1)
  {
    Parent = REEntityGetParent();
    if (!Parent)
    {

      goto LABEL_78;
    }

    v31 = Parent;
    if (!REEntityGetSwiftObject())
    {
      break;
    }

    type metadata accessor for Entity();
    isUniquelyReferenced_nonNull_native = swift_dynamicCastClassUnconditional();
LABEL_33:
    REAnchorComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      goto LABEL_16;
    }
  }

  if (REEntityIsBeingDestroyed())
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v44 & 1) == 0))
  {
    v45 = v14;
    v14 = isUniquelyReferenced_nonNull_native;
    swift_endAccess();
    v5 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = static SceneManager.customComponentTypeObjectIdToHandles;
    v94 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
    v49 = *(v46 + 16);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_89;
    }

    v52 = v47;
    if (*(v46 + 24) >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, isUniquelyReferenced_nonNull_native);
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_94;
      }

      v48 = v53;
    }

    isUniquelyReferenced_nonNull_native = v14;
    v55 = v94;
    v14 = v45;
    if (v52)
    {
      *(*(v94 + 56) + 8 * v48) = v5;
      v1 = v91;
    }

    else
    {
      *(v94 + 8 * (v48 >> 6) + 64) |= 1 << v48;
      *(v55[6] + 8 * v48) = &type metadata for __EntityInfoComponent;
      *(v55[7] + 8 * v48) = v5;
      v56 = v55[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      v1 = v91;
      if (v57)
      {
        goto LABEL_90;
      }

      v55[2] = v58;
    }

    static SceneManager.customComponentTypeObjectIdToHandles = v55;
  }

  swift_endAccess();
  CustomComponent = REEntityGetCustomComponent();
  v5 = v93;
  if (!CustomComponent)
  {
    goto LABEL_74;
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
    goto LABEL_74;
  }

  v61 = *Object;
  if (*(Object + 8))
  {
    v62 = 1;
  }

  else
  {
    v62 = v61 == 0;
  }

  if (v62)
  {
  }

  else
  {
    v63 = *v61;
    v64 = String.init(utf8String:)();
    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v61 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v63 == 42, v66, v67);

    type metadata accessor for IntrospectionDataCleanupHelper();
    *(swift_allocObject() + 16) = v61;
  }

  if (v61)
  {
    v68 = String.init(utf8String:)();
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0xE000000000000000;
    }

    v71 = MEMORY[0x1C68F3280](v68, v70);

    v72 = NSClassFromString(v71);

    if (v72)
    {
      swift_getObjCClassMetadata();
      type metadata accessor for Entity();
      v73 = swift_dynamicCastMetatype();
      if (v73)
      {
        v74 = (*(v73 + 232))();
        v75 = *(v74 + 16);

        MEMORY[0x1C68F9740](v75, 0);
        *(v74 + 16) = v31;
        MEMORY[0x1C68F9740](v31, v74);

LABEL_75:

        isUniquelyReferenced_nonNull_native = v74;
        goto LABEL_33;
      }
    }

LABEL_74:
    v74 = makeEntity(for:)(v31);
    goto LABEL_75;
  }

  __break(1u);
LABEL_94:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of __RKEntityInteractionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of __RKEntityInteractionSpecification(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityInteractionSpecification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with take of __RKEntityInteractionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
    v10 = lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for __RKEntityInteractionSpecification(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntityInteractionsComponent.Registration.RegistrationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for __RKEntityInteractionsComponent.Registration.RegistrationError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void DirectionalLightComponent.Shadow.maximumDistance.setter(float a1)
{
  *(v1 + 12) = LODWORD(a1);
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 4) = a1;
}

uint64_t *(*DirectionalLightComponent.Shadow.maximumDistance.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return DirectionalLightComponent.Shadow.maximumDistance.modify;
}

uint64_t *DirectionalLightComponent.Shadow.maximumDistance.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  *(v1 + 12) = v2;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 4) = v2;
  return result;
}

double DirectionalLightComponent.Shadow.init()@<D0>(uint64_t a1@<X8>)
{
  result = 2048.00048;
  *a1 = 0x40A000003F800000;
  *(a1 + 8) = 3;
  *(a1 + 12) = 1084227584;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

void DirectionalLightComponent.Shadow.init(maximumDistance:depthBias:)(uint64_t a1@<X8>, unsigned int a2@<S0>, float a3@<S1>)
{
  *a1 = a3;
  *(a1 + 4) = *&a2;
  *(a1 + 8) = 3;
  *(a1 + 12) = a2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
}

uint64_t DirectionalLightComponent.Shadow.shadowProjection.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *(v1 + 12) = *result;
  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static DirectionalLightComponent.Shadow.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  REDirectionalLightShadowMapComponentGetDepthBias();
  v4 = v3;
  REDirectionalLightShadowMapComponentGetDistance();
  v6 = v5;
  CullMode = REDirectionalLightShadowMapComponentGetCullModeEx();
  AutomaticallyAdjustsShadowProjection = REDirectionalLightShadowMapComponentGetAutomaticallyAdjustsShadowProjection();
  REDirectionalLightShadowMapComponentGetZNear();
  v10 = v9;
  REDirectionalLightShadowMapComponentGetZFar();
  v12 = v11;
  result = REDirectionalLightShadowMapComponentGetOrthographicScale();
  v15 = v10 | (v12 << 32);
  if (AutomaticallyAdjustsShadowProjection)
  {
    v15 = v6;
    v14 = 0.0;
  }

  v16 = 1;
  if (!CullMode)
  {
    v16 = 3;
  }

  *a2 = v4;
  *(a2 + 4) = v6;
  *(a2 + 8) = v16;
  *(a2 + 12) = v15;
  *(a2 + 20) = v14;
  *(a2 + 24) = AutomaticallyAdjustsShadowProjection;
  return result;
}

uint64_t *DirectionalLightComponent.Shadow.init(shadowProjection:depthBias:cullMode:)@<X0>(uint64_t *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *result;
  v5 = *(result + 2);
  v6 = *(result + 12);
  v7 = *a2;
  *a3 = a4;
  *(a3 + 4) = 1084227584;
  *(a3 + 8) = v7;
  *(a3 + 12) = v4;
  *(a3 + 20) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t DirectionalLightComponent.Shadow.__toCore(_:)(void *a1)
{
  v2 = *(v1 + 24);
  REDirectionalLightShadowMapComponentSetDepthBias();
  if (v2)
  {
    REDirectionalLightShadowMapComponentSetDistance();
  }

  else
  {
    REDirectionalLightShadowMapComponentSetZNear();
    REDirectionalLightShadowMapComponentSetZFar();
    REDirectionalLightShadowMapComponentSetOrthographicScale();
  }

  REDirectionalLightShadowMapComponentSetAutomaticallyAdjustsShadowProjection();
  REDirectionalLightShadowMapComponentSetCullMode();
  return RENetworkMarkComponentDirty();
}

void DirectionalLightComponent.init(cgColor:intensity:isRealWorldProxy:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 12) = a2;
}

void static DirectionalLightComponent.__fromCore(_:)(uint64_t a2@<X8>)
{
  REDirectionalLightComponentGetColorGamut3F();
  REDirectionalLightComponentGetIntensity();
  v4 = v3;
  IsProxy = REDirectionalLightComponentGetIsProxy();
  v6 = RECreateCGColorFromColorGamut();

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 12) = IsProxy;
}

uint64_t DirectionalLightComponent.__toCore(_:)(uint64_t *a1)
{
  RECGColorToColorGamut();
  REDirectionalLightComponentSetColorGamut3F();
  REDirectionalLightComponentSetIntensity();
  REDirectionalLightComponentSetIsProxy();
  return RENetworkMarkComponentDirty();
}

uint64_t static DirectionalLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 12);
  v4 = a2[2];
  v5 = *(a2 + 12);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v3 ^ v5 ^ 1) & (v2 == v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DirectionalLightComponent(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 12);
  v4 = a2[2];
  v5 = *(a2 + 12);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v3 ^ v5 ^ 1) & (v2 == v4);
}

uint64_t (*DirectionalLightComponent.Shadow.cullModeOverride.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return DirectionalLightComponent.Shadow.cullModeOverride.modify;
}

void DirectionalLightComponent.Shadow.shadowProjection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 12);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t *(*DirectionalLightComponent.Shadow.shadowProjection.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 12);
  *(a1 + 16) = v2;
  *(a1 + 20) = v3;
  return DirectionalLightComponent.Shadow.shadowProjection.modify;
}

uint64_t *DirectionalLightComponent.Shadow.shadowProjection.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 4);
  v3 = *(result + 20);
  *(v1 + 12) = result[1];
  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t DirectionalLightComponent.Shadow.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 12);
  v12 = *(v1 + 20);
  v13 = *(v1 + 24);
  v7.n128_u64[0] = *v1;
  v18 = v7;
  v20 = v7.n128_u64[0];
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1897FD0;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x80000001C18DE1D0;
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  *(v14 + 60) = v13;
  *(v14 + 72) = &type metadata for DirectionalLightComponent.Shadow.ShadowProjectionType;
  *(v14 + 80) = 0x6169426874706564;
  *(v14 + 88) = 0xE900000000000073;
  v15 = MEMORY[0x1E69E6448];
  *(v14 + 96) = v18.n128_u32[0];
  *(v14 + 120) = v15;
  *(v14 + 128) = 0xD000000000000010;
  *(v14 + 136) = 0x80000001C18DE1F0;
  *(v14 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  *(v14 + 144) = v10;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL specialized static DirectionalLightComponent.Shadow.ShadowProjectionType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 12))
  {
    return (*(a2 + 12) & 1) != 0 && *&v2 == *&v3;
  }

  if (*(a2 + 12))
  {
    return 0;
  }

  v6 = *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
  return v6 && *(a1 + 2) == *(a2 + 2);
}

uint64_t specialized static DirectionalLightComponent.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  if (v4 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }

LABEL_12:
    if (v7)
    {
      if (*&v5 == *&v9)
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return 1;
      }
    }

    else if ((*(a2 + 24) & 1) == 0)
    {
      v11 = HIDWORD(v9);
      v12 = *&v5 == COERCE_FLOAT(*(a2 + 12)) && *(&v5 + 1) == *&v11;
      if (v12 && v6 == *(a2 + 20))
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (v8 != 3 && v4 == v8)
  {
    goto LABEL_12;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    type metadata accessor for CGColorRef(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CGColorRef, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalLightComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for DirectionalLightComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalLightComponent.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DirectionalLightComponent.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalLightComponent.Shadow.ShadowProjectionType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DirectionalLightComponent.Shadow.ShadowProjectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for UpdateLoop(uint64_t a1)
{
  return one-time initialization function for UpdateLoop(a1, 0x6F4C657461647055, 0xEA0000000000706FLL, &static __REOSLog.UpdateLoop);
}

{
  return one-time initialization function for UpdateLoop(a1, static __RESignpostID.UpdateLoop, &one-time initialization token for UpdateLoop, &static __REOSLog.UpdateLoop, one-time initialization function for UpdateLoop);
}

uint64_t one-time initialization function for ARQL(uint64_t a1)
{
  return one-time initialization function for UpdateLoop(a1, 1280397889, 0xE400000000000000, &static __REOSLog.ARQL);
}

{
  return one-time initialization function for UpdateLoop(a1, static __RESignpostID.ARQL, &one-time initialization token for ARQL, &static __REOSLog.ARQL, one-time initialization function for ARQL);
}

uint64_t one-time initialization function for RealityComposer(uint64_t a1)
{
  return one-time initialization function for UpdateLoop(a1, 0x437974696C616552, 0xEF7265736F706D6FLL, &static __REOSLog.RealityComposer);
}

{
  return one-time initialization function for UpdateLoop(a1, static __RESignpostID.RealityComposer, one-time initialization token for RealityComposer, &static __REOSLog.RealityComposer, one-time initialization function for RealityComposer);
}

uint64_t one-time initialization function for UpdateLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

id static __REOSLog.UpdateLoop.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t one-time initialization function for UpdateLoop(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for OSSignpostID();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return OSSignpostID.init(log:)();
}

uint64_t static __RESignpostID.UpdateLoop.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSSignpostID();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t __REOSSignpostScope.__allocating_init(osLog:signpostID:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = v5;
  *(v10 + 40) = a1;
  v11 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10 + v11, a2, v12);
  v14 = a1;
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v13 + 8))(a2, v12);
  return v10;
}

uint64_t __REOSSignpostScope.init(osLog:signpostID:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 40) = a1;
  v8 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5 + v8, a2, v9);
  v11 = a1;
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v10 + 8))(a2, v9);
  return v5;
}

uint64_t __REOSSignpostScope.deinit()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  v5 = *(v0 + 40);
  v6 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID, v1);
  v7 = v5;
  os_signpost(_:dso:log:name:signpostID:)();

  v8 = *(v2 + 8);
  v8(v4, v1);

  v8((v0 + v6), v1);
  return v0;
}

uint64_t __REOSSignpostScope.__deallocating_deinit()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  v5 = *(v0 + 40);
  v6 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID, v1);
  v7 = v5;
  os_signpost(_:dso:log:name:signpostID:)();

  v8 = *(v2 + 8);
  v8(v4, v1);

  v8((v0 + v6), v1);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for __REOSSignpostScope(uint64_t a1)
{
  result = type metadata singleton initialization cache for __REOSSignpostScope;
  if (!type metadata singleton initialization cache for __REOSSignpostScope)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for __REOSSignpostScope(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}