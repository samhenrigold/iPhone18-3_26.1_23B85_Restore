BOOL specialized static BlendWeight.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      outlined consume of BlendWeight(*a1, v2, v4, 0);
      outlined consume of BlendWeight(v7, v6, v8, 0);
      return *&v3 == *&v7;
    }

    goto LABEL_17;
  }

  if (v5 == 1)
  {
    if (v9 == 1)
    {
      v10 = *a1;
      if (v3 == v7 && v2 == v6)
      {
        outlined copy of BlendWeight(v10, v2, v8, 1);
        outlined copy of BlendWeight(v3, v2, v4, 1);
        outlined consume of BlendWeight(v3, v2, v4, 1);
        outlined consume of BlendWeight(v3, v2, v8, 1);
LABEL_20:
        v15 = *&v4;
        v16 = *&v8;
        return v15 == v16;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of BlendWeight(v7, v6, v8, 1);
      outlined copy of BlendWeight(v3, v2, v4, 1);
      outlined consume of BlendWeight(v3, v2, v4, 1);
      outlined consume of BlendWeight(v7, v6, v8, 1);
      if (v12)
      {
        goto LABEL_20;
      }

      return 0;
    }

LABEL_17:
    outlined copy of BlendWeight(v7, v6, v8, v9);
    outlined consume of BlendWeight(v3, v2, v4, v5);
    outlined consume of BlendWeight(v7, v6, v8, v9);
    return 0;
  }

  if (v9 != 2)
  {
    outlined copy of BindTarget(*a1, v2, v4);
    goto LABEL_17;
  }

  v20[0] = *a1;
  v20[1] = v2;
  v21 = v4;
  v18[0] = v7;
  v18[1] = v6;
  v19 = v8;
  outlined copy of BlendWeight(v7, v6, v8, 2);
  outlined copy of BlendWeight(v3, v2, v4, 2);
  outlined copy of BlendWeight(v7, v6, v8, 2);
  outlined copy of BlendWeight(v3, v2, v4, 2);
  v14 = specialized static BindTarget.== infix(_:_:)(v20, v18);
  outlined consume of BlendWeight(v3, v2, v4, 2);
  outlined consume of BlendWeight(v7, v6, v8, 2);
  outlined consume of BlendWeight(v7, v6, v8, 2);
  outlined consume of BlendWeight(v3, v2, v4, 2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(&v4 + 1);
  v16 = *(&v8 + 1);
  return v15 == v16;
}

uint64_t outlined assign with take of AnimationDefinition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of BlendWeight(uint64_t result, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4 == 2)
  {
    return outlined copy of BindTarget(result, a2, a3);
  }

  if (a4 == 1)
  {
  }

  return result;
}

void outlined consume of BlendWeight(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4 == 2)
  {
    outlined consume of BindTarget(a1, a2, a3);
  }

  else if (a4 == 1)
  {
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendWeight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendWeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for BlendTreeSourceNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendTreeSourceNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlendTreeBlendNode(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for BlendTreeBlendNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendTreeInvalidNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for BlendTreeInvalidNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for BlendTreeAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation10BindTargetOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendTreeAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendTreeAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 16))(v16, a5, a2, a3, a4, a5, v12, v13);
  a7(v14);

  return result;
}

double ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent.publish(_:on:componentType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 16))(v15, a5, a2, a3, a4, a5, v11, v12);
  a6(v13);

  return result;
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return ImagePresentationComponent.Spatial3DImage.init(imageSource:)(a1);
}

uint64_t ImagePresentationComponent.Spatial3DImage.init(imageSource:)(uint64_t a1)
{
  *(v2 + 1512) = v1;
  *(v2 + 760) = a1;
  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.init(imageSource:), 0, 0);
}

uint64_t ImagePresentationComponent.Spatial3DImage.init(imageSource:)()
{
  v1 = MEMORY[0x1E69E7CD0];
  v2 = *(v0 + 1512);
  *(v2 + 88) = 0;
  *(v2 + 96) = v1;
  *(v2 + 104) = 0;
  *(v2 + 108) = 1;
  *(v0 + 3068) = 0;
  v3 = swift_task_alloc();
  *(v0 + 2264) = v3;
  *v3 = v0;
  v3[1] = ImagePresentationComponent.Spatial3DImage.init(imageSource:);
  v4 = *(v0 + 760);

  return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v0 + 16, v4, (v0 + 3068));
}

{
  v2 = *v1;
  v3 = *v1;
  v3[377] = v0;
  v4 = v2[2];
  v3[378] = v4;
  v5 = v2[3];
  v3[379] = v5;
  v6 = *(v3 + 8);
  *(v3 + 766) = v6;
  v55 = *(v3 + 7);
  v56 = *(v3 + 5);
  *(v3 + 190) = v56;
  v3[382] = v55;
  v7 = *(v3 + 72);
  v8 = *(v3 + 76);
  v39 = *(v3 + 84);
  v23 = *(v3 + 9);
  v24 = *(v3 + 7);
  v18 = *(v3 + 8);
  v19 = *(v3 + 6);
  v21 = *(v3 + 13);
  v22 = *(v3 + 11);
  v16 = *(v3 + 12);
  v17 = *(v3 + 10);
  v20 = *(v3 + 15);
  v15 = *(v3 + 14);
  v54 = *(v3 + 17);
  v14 = *(v3 + 16);
  v53 = *(v3 + 19);
  v38 = *(v3 + 18);
  v52 = *(v3 + 21);
  v37 = *(v3 + 20);
  v51 = *(v3 + 23);
  v36 = *(v3 + 22);
  v50 = *(v3 + 25);
  v35 = *(v3 + 24);
  v49 = *(v3 + 27);
  v34 = *(v3 + 26);
  v48 = *(v3 + 29);
  v33 = *(v3 + 28);
  v47 = *(v3 + 31);
  v31 = *(v3 + 32);
  v32 = *(v3 + 30);
  v45 = *(v3 + 35);
  v46 = *(v3 + 33);
  v29 = *(v3 + 36);
  v30 = *(v3 + 34);
  v43 = *(v3 + 39);
  v44 = *(v3 + 37);
  v27 = *(v3 + 40);
  v28 = *(v3 + 38);
  v41 = *(v3 + 43);
  v42 = *(v3 + 41);
  v40 = *(v3 + 45);
  v25 = *(v3 + 44);
  v26 = *(v3 + 42);
  v9 = v2[92];
  v10 = v2[93];
  v11 = v2[94];

  if (v0)
  {
    v12 = ImagePresentationComponent.Spatial3DImage.init(imageSource:);
  }

  else
  {
    *(v3 + 100) = v19;
    *(v3 + 101) = v24;
    *(v3 + 102) = v18;
    *(v3 + 103) = v23;
    *(v3 + 104) = v17;
    *(v3 + 105) = v22;
    *(v3 + 106) = v16;
    *(v3 + 107) = v21;
    *(v3 + 108) = v15;
    *(v3 + 109) = v20;
    *(v3 + 110) = v14;
    v3[190] = v4;
    v3[191] = v5;
    *(v3 + 384) = v6;
    *(v3 + 193) = v56;
    *(v3 + 195) = v55;
    *(v3 + 1576) = v7;
    *(v3 + 1580) = v8;
    *(v3 + 1588) = v39;
    *(v3 + 111) = v54;
    *(v3 + 112) = v38;
    *(v3 + 113) = v53;
    *(v3 + 114) = v37;
    *(v3 + 115) = v52;
    *(v3 + 116) = v36;
    *(v3 + 117) = v51;
    *(v3 + 118) = v35;
    *(v3 + 119) = v50;
    *(v3 + 120) = v34;
    *(v3 + 121) = v49;
    *(v3 + 122) = v33;
    *(v3 + 123) = v48;
    *(v3 + 124) = v32;
    *(v3 + 125) = v47;
    *(v3 + 126) = v31;
    *(v3 + 127) = v46;
    *(v3 + 128) = v30;
    *(v3 + 129) = v45;
    *(v3 + 130) = v29;
    *(v3 + 131) = v44;
    *(v3 + 132) = v28;
    *(v3 + 133) = v43;
    *(v3 + 134) = v27;
    *(v3 + 135) = v42;
    *(v3 + 136) = v26;
    *(v3 + 137) = v41;
    *(v3 + 138) = v25;
    *(v3 + 139) = v40;
    v3[280] = v9;
    v3[281] = v10;
    v3[282] = v11;
    v12 = ImagePresentationComponent.Spatial3DImage.init(imageSource:);
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

{
  v1 = *(v0 + 3056);
  v2 = *(v0 + 3048);
  v3 = *(v0 + 3040);
  v4 = *(v0 + 3064);
  v5 = *(v0 + 3032);
  v6 = *(v0 + 3024);
  v7 = *(v0 + 1512);
  v8 = *(v0 + 760);
  *(v0 + 768) = v6;
  *(v0 + 776) = v5;
  *(v0 + 784) = v4;
  *(v0 + 792) = v3;
  *(v0 + 800) = v2;
  *(v0 + 808) = v1;
  memcpy((v0 + 816), (v0 + 1568), 0x2B8uLL);
  outlined init with copy of [String : String](v0 + 768, v0 + 2272, &_s17RealityFoundation26ImagePresentationComponentV0C4PairV05imageF0_AE08MetadataF0V08metadataF0tMd, &_s17RealityFoundation26ImagePresentationComponentV0C4PairV05imageF0_AE08MetadataF0V08metadataF0tMR);
  outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair(v0 + 1568);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  *(v7 + 64) = v8;

  outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair(v0 + 1568);
  v9 = *(v0 + 1584);
  v10 = *(v0 + 1588);
  *(v7 + 72) = *(v0 + 1568);
  *(v7 + 80) = v9;
  *(v7 + 84) = v10;
  *(v7 + 88) = 0;

  v11 = *(v0 + 8);
  v12 = *(v0 + 1512);

  return v11(v12);
}

{

  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:)@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CGImageSourceCreateWithURL(v2, 0);
  v1[3] = v4;

  if (v4)
  {
    type metadata accessor for ImagePresentationComponent.Spatial3DImage();
    swift_allocObject();
    v5 = v4;
    v6 = swift_task_alloc();
    v1[4] = v6;
    *v6 = v1;
    v6[1] = ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:);

    return ImagePresentationComponent.Spatial3DImage.init(imageSource:)(v5);
  }

  else
  {
    lazy protocol witness table accessor for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError();
    swift_allocError();
    swift_willThrow();
    v8 = v1[2];
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 8))(v8, v9);
    v10 = v1[1];

    return v10();
  }
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:)()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 48);

  return v3(v4);
}

{

  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:)(void *a1, uint64_t a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  swift_allocObject();
  v5 = a1;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:);

  return ImagePresentationComponent.Spatial3DImage.init(imageSource:)(v5);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  *(v1 + 88) = v2;

  *(v1 + 104) = 1065353216;
  *(v1 + 108) = 0;

  v3 = *(v0 + 8);
  v4 = *(v0 + 48);

  return v3(v4);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(Swift::OpaquePointer component)
{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: registering a new component", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v14, component._rawValue);
  swift_endAccess();
  v12 = implicit closure #1 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:);
  v13 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed Any?) -> ();
  v11 = &block_descriptor_9;
  v6 = _Block_copy(&aBlock);
  REImagePresentationComponentCreateSpatial3DImageGenerationRemoveOwnerCallback();
  _Block_release(v6);
  v12 = implicit closure #2 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:);
  v13 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed Any?) -> ();
  v11 = &block_descriptor_79;
  v7 = _Block_copy(&aBlock);
  REImagePresentationComponentCreateSpatial3DImageGenerationAddOwnerCallback();
  _Block_release(v7);
}

uint64_t implicit closure #1 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(Swift::OpaquePointer a1, uint64_t a2)
{
  outlined init with copy of [String : String](a2, &v4, &_sypSgMd, &_sypSgMR);
  if (!v5)
  {
    return outlined destroy of BodyTrackingComponent?(&v4, &_sypSgMd, &_sypSgMR);
  }

  outlined init with take of Any(&v4, v6);
  outlined init with copy of Any(v6, &v4);
  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  if (swift_dynamicCast())
  {
    ImagePresentationComponent.Spatial3DImage.unregisterComponent(component:)(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed Any?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a3;
    outlined init with take of Any(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  v5(a2, v9);

  return outlined destroy of BodyTrackingComponent?(v9, &_sypSgMd, &_sypSgMR);
}

uint64_t implicit closure #2 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(Swift::OpaquePointer a1, uint64_t a2)
{
  outlined init with copy of [String : String](a2, &v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    return outlined destroy of BodyTrackingComponent?(&v5, &_sypSgMd, &_sypSgMR);
  }

  outlined init with take of Any(&v5, v7);
  outlined init with copy of Any(v7, &v5);
  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    if (specialized Set.contains(_:)(a1._rawValue, *(v4 + 96)))
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

Swift::Void __swiftcall ImagePresentationComponent.Spatial3DImage.unregisterComponent(component:)(Swift::OpaquePointer component)
{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: unregistering a new component", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)(component._rawValue);
  swift_endAccess();
}

uint64_t ImagePresentationComponent.Spatial3DImage.deinit()
{
  *(v0 + 88) = 0;

  return v0;
}

uint64_t ImagePresentationComponent.Spatial3DImage.__deallocating_deinit()
{
  *(v0 + 88) = 0;

  return swift_deallocClassInstance();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted()()
{
  *(v1 + 184) = v0;
  type metadata accessor for MainActor();
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted(), v3, v2);
}

{

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, ImageLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has started", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = *(v0 + 184);

  *(v5 + 104) = 0;
  *(v5 + 108) = 0;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = -1;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v6 + 56);
  v10 = (63 - v8) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_12:
        v9 &= v9 - 1;
        REImagePresentationComponentNotifySpatial3DImageGenerationStarted();
      }

      while (v9);
      continue;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C1358000, v13, v14, "Spatial3DImage: publishing GenerationStartedEvent", v15, 2u);
    MEMORY[0x1C6902A30](v15, -1, -1);
  }

  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v16 + 80, v0 + 16);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = v19;
  if (v19 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_18:
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v22, v20);
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter((v0 + 56));
        v24 = *(v0 + 80);
        v25 = *(v0 + 88);
        v26 = __swift_project_boxed_opaque_existential_1((v0 + 56), v24);
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        EventService.publish<A>(_:on:componentType:)(v26, v0 + 96, 0, 0, v24, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent, v25, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent);

        outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        ++v22;
      }

      while (v23 != v21);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v27 = *(v0 + 8);

  return v27();
}

Swift::Void __swiftcall ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationProgress(percent:)(Swift::Float percent)
{
  v2 = v1;
  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, ImageLogger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = percent;
    _os_log_impl(&dword_1C1358000, v5, v6, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has reached %f%% completion", v7, 0xCu);
    MEMORY[0x1C6902A30](v7, -1, -1);
  }

  *(v2 + 104) = percent;
  *(v2 + 108) = 0;
  swift_beginAccess();
  v2 = *(v2 + 96);
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v2 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v2 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      do
      {
LABEL_12:
        v10 &= v10 - 1;
        REImagePresentationComponentNotifySpatial3DImageGenerationProgress();
      }

      while (v10);
      continue;
    }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C1358000, v14, v15, "Spatial3DImage: publishing GenerationProgressUpdatedEvent", v16, 2u);
    MEMORY[0x1C6902A30](v16, -1, -1);
  }

  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v17 + 80, v32);
  v18 = v33;
  v19 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v20 = (*(v19 + 8))(v18, v19);
  v2 = v20;
  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_18:
      v22 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v22, v2);
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v22 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter(v29);
        v24 = v30;
        v25 = v31;
        v26 = __swift_project_boxed_opaque_existential_1(v29, v30);
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        EventService.publish<A>(_:on:componentType:)(v26, v27, 0, 0, v24, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationProgressUpdatedEvent, v25, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationProgressUpdatedEvent);

        outlined destroy of BodyTrackingComponent?(v27, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v29);
        ++v22;
      }

      while (v23 != v21);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted()()
{
  *(v1 + 376) = v0;
  type metadata accessor for MainActor();
  *(v1 + 384) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted(), v3, v2);
}

{

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_46:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, ImageLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has finished", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = *(v0 + 376);

  if (*(v5 + 88))
  {
    v6 = *(v0 + 376);
    swift_beginAccess();
    v51 = v6;
    v7 = *(v6 + 96);
    v8 = -1 << *(v7 + 32);
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v7 + 56);

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v11 = 0;
    v12 = (63 - v8) >> 6;
    if (v10)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v13 >= v12)
      {
        break;
      }

      v10 = *(v7 + 56 + 8 * v13);
      ++v11;
      if (v10)
      {
        v11 = v13;
        do
        {
LABEL_14:
          v10 &= v10 - 1;
          REImagePresentationComponentSetMXIMeshAsset();
          REImagePresentationComponentSetMXITextureAsset();

          v15 = specialized static MXISceneResource.toCFArray(_:)(v14);

          REImagePresentationComponentSetMXITextureAssets();

          REImagePresentationComponentSetMXIBackgroundTextureAsset();
          REImagePresentationComponentSetMXIVerticalFOV();
          REImagePresentationComponentSetMXIAspectRatio();
          REImagePresentationComponentSetMXINearDistance();
          REImagePresentationComponentSetMXIFarDistance();
          REImagePresentationComponentSetMXILayerCount();
          REImagePresentationComponentSetMXIResolutionWidth();
          REImagePresentationComponentSetMXIResolutionHeight();
          REImagePresentationComponentSetMXIPremultipliedAlpha();
          REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
          REImagePresentationComponentNotifySpatial3DImageGenerationCompleted();
        }

        while (v10);
        continue;
      }
    }

    v16 = *(v51 + 96);
    v19 = *(v16 + 56);
    v18 = v16 + 56;
    v17 = v19;
    v20 = -1;
    v21 = -1 << *(*(v51 + 96) + 32);
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v22 = v20 & v17;
    v23 = (63 - v21) >> 6;
    v52 = *(v51 + 96);

    v24 = 0;
    while (v22)
    {
LABEL_25:
      v26 = *(*(v52 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v22)))));
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C1358000, v27, v28, "Spatial3DImage: unregistering a new component", v29, 2u);
        MEMORY[0x1C6902A30](v29, -1, -1);
      }

      v22 &= v22 - 1;

      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v26);
      swift_endAccess();
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_44;
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v18 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_25;
      }
    }

    v30 = *(v0 + 376);

    *(v30 + 104) = 1065353216;
    *(v30 + 108) = 0;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C1358000, v31, v32, "Spatial3DImage: publishing GenerationCompletedEvent", v33, 2u);
      MEMORY[0x1C6902A30](v33, -1, -1);
    }

    v34 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v34 + 80, v0 + 16);
    v35 = *(v0 + 40);
    v36 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v35);
    v37 = (*(v36 + 8))(v35, v36);
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = __CocoaSet.count.getter();
      if (v39)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_31:
        v40 = 0;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C68F41F0](v40, v38);
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          Scene.eventService.getter((v0 + 56));
          v42 = *(v0 + 80);
          v43 = *(v0 + 88);
          v44 = __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
          *(v0 + 96) = 0u;
          *(v0 + 112) = 0u;
          *(v0 + 128) = 0;
          EventService.publish<A>(_:on:componentType:)(v44, v0 + 96, 0, 0, v42, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationCompletedEvent, v43, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationCompletedEvent);

          outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          ++v40;
        }

        while (v41 != v39);
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v49 = *(v0 + 8);
  }

  else
  {
LABEL_40:
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C1358000, v45, v46, "Spatial3DImage: Missing MXISceneResource on generation completion.", v47, 2u);
      MEMORY[0x1C6902A30](v47, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    swift_allocError();
    *v48 = 9;
    swift_willThrow();
    v49 = *(v0 + 8);
  }

  return v49();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()()
{
  *(v1 + 184) = v0;
  type metadata accessor for MainActor();
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed(), v3, v2);
}

{

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, ImageLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has failed", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = *(v0 + 184);

  *(v5 + 104) = 0;
  *(v5 + 108) = 1;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = -1;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v6 + 56);
  v10 = (63 - v8) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_12:
        v9 &= v9 - 1;
        REImagePresentationComponentNotifySpatial3DImageGenerationFailed();
      }

      while (v9);
      continue;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C1358000, v13, v14, "Spatial3DImage: publishing GenerationFailedEvent", v15, 2u);
    MEMORY[0x1C6902A30](v15, -1, -1);
  }

  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v16 + 80, v0 + 16);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = v19;
  if (v19 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_18:
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v22, v20);
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter((v0 + 56));
        v24 = *(v0 + 80);
        v25 = *(v0 + 88);
        v26 = __swift_project_boxed_opaque_existential_1((v0 + 56), v24);
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        EventService.publish<A>(_:on:componentType:)(v26, v0 + 96, 0, 0, v24, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationFailedEvent, v25, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationFailedEvent);

        outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        ++v22;
      }

      while (v23 != v21);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v27 = *(v0 + 8);

  return v27();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()()
{
  *(v1 + 184) = v0;
  type metadata accessor for MainActor();
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled(), v3, v2);
}

{

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, ImageLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has been cancelled", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = *(v0 + 184);

  *(v5 + 104) = 0;
  *(v5 + 108) = 1;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = -1;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v6 + 56);
  v10 = (63 - v8) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_12:
        v9 &= v9 - 1;
        REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
      }

      while (v9);
      continue;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C1358000, v13, v14, "Spatial3DImage: publishing GenerationCancelledEvent", v15, 2u);
    MEMORY[0x1C6902A30](v15, -1, -1);
  }

  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v16 + 80, v0 + 16);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = v19;
  if (v19 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_18:
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v22, v20);
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter((v0 + 56));
        v24 = *(v0 + 80);
        v25 = *(v0 + 88);
        v26 = __swift_project_boxed_opaque_existential_1((v0 + 56), v24);
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        EventService.publish<A>(_:on:componentType:)(v26, v0 + 96, 0, 0, v24, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationCancelledEvent, v25, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationCancelledEvent);

        outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        ++v22;
      }

      while (v23 != v21);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v27 = *(v0 + 8);

  return v27();
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImagePresentationComponent.Spatial3DImage.currentGenerationProgress()()
{
  if ((*(v0 + 108) & 1) == 0)
  {
    return *(v0 + 104);
  }

  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, ImageLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Spatial3DImage.generate() has yet to be called", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
  swift_allocError();
  *v5 = 11;
  swift_willThrow();
  return result;
}

uint64_t ImagePresentationComponent.Spatial3DImage.generate()()
{
  v1[26] = v0;
  v2 = type metadata accessor for CancellationError();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for ALCService.GenerationOption();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for ALCConfiguration();
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = *(v0 + 208);
  if (*(v1 + 88))
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, ImageLogger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage has already been generated and cannot be generated again", v5, 2u);
    v6 = 0;
    goto LABEL_15;
  }

  if ((*(v1 + 108) & 1) == 0)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, ImageLogger);
    v3 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v10))
    {
      v6 = 1;
LABEL_16:

      lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
      v11 = swift_allocError();
      *v12 = v6;
      swift_willThrow();
      *(v0 + 488) = v11;
      *(v0 + 200) = v11;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v15 = *(v0 + 224);
        v14 = *(v0 + 232);
        v16 = *(v0 + 216);

        (*(v15 + 8))(v14, v16);
        v17 = swift_task_alloc();
        *(v0 + 496) = v17;
        *v17 = v0;
        v17[1] = ImagePresentationComponent.Spatial3DImage.generate();

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
      }

      else
      {

        v18 = swift_task_alloc();
        *(v0 + 504) = v18;
        *v18 = v0;
        v18[1] = ImagePresentationComponent.Spatial3DImage.generate();

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
      }
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v10, "Spatial3DImage is already in the process of generating", v5, 2u);
    v6 = 1;
LABEL_15:
    MEMORY[0x1C6902A30](v5, -1, -1);
    goto LABEL_16;
  }

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = ImagePresentationComponent.Spatial3DImage.generate();

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted()();
}

{

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = CGImageSourceRef.monoImage(index:)(*(*(v0 + 208) + 72));
  v3 = v2;
  *(v0 + 304) = v1;
  if (v2)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, ImageLogger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C1358000, v5, v6, "Spatial3DImage was unable to create source image using monoImage()", v7, 2u);
      MEMORY[0x1C6902A30](v7, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v8 = swift_allocError();
    *v9 = 6;
    swift_willThrow();

    goto LABEL_38;
  }

  v10 = v1;
  Width = CGImageGetWidth(v10);
  Height = CGImageGetHeight(v10);

  if (Height >= Width)
  {
    v13 = Width;
  }

  else
  {
    v13 = Height;
  }

  if (v13 < 320)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, ImageLogger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C1358000, v15, v16, "Spatial3DImage input image is too small (width and height must be at least 320px)", v17, 2u);
      MEMORY[0x1C6902A30](v17, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v8 = swift_allocError();
    v19 = 2;
LABEL_37:
    *v18 = v19;
    swift_willThrow();

    goto LABEL_38;
  }

  v20 = CGImageGetWidth(v10);
  v21 = CGImageGetHeight(v10);
  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (v22 > 0x4000)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, ImageLogger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C1358000, v24, v25, "Spatial3DImage input image is too large (width and height must be smaller than 16384px)", v26, 2u);
      MEMORY[0x1C6902A30](v26, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v8 = swift_allocError();
    v19 = 3;
    goto LABEL_37;
  }

  v27 = CGImageGetWidth(v10);
  v28 = v27 / CGImageGetHeight(v10);
  if (v28 < 0.333333333)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, ImageLogger);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C1358000, v30, v31, "Spatial3DImage input image aspect ratio is too tall (aspect ratio must be at least 1:3)", v32, 2u);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v8 = swift_allocError();
    v19 = 4;
    goto LABEL_37;
  }

  if (v28 > 3.0)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, ImageLogger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C1358000, v34, v35, "Spatial3DImage input image aspect ratio is too wide (aspect ratio must be at most 3:1)", v36, 2u);
      MEMORY[0x1C6902A30](v36, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v8 = swift_allocError();
    v19 = 5;
    goto LABEL_37;
  }

  v44 = *(v0 + 208);
  v45 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  *(v0 + 312) = [v45 imageByApplyingCGOrientation_];

  static Task<>.checkCancellation()();
  *(v0 + 320) = 0;
  v46 = *(v0 + 240);
  v47 = *(v0 + 248);
  v85 = *(v0 + 208);
  ALCConfiguration.init()();
  v48 = ALCConfiguration.sorterOptions.modify();
  ALCSorterOptions.sortingMode.setter();
  v48(v0 + 16, 0);
  v49 = ALCConfiguration.bakingOptions.modify();
  ALCBakingOptions.type.setter();
  v49(v0 + 48, 0);
  v50 = ALCConfiguration.bakingOptions.modify();
  ALCBakingOptions.enableRefinement.setter();
  v50(v0 + 80, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16AlchemistService10ALCServiceC16GenerationOptionO_yptGMd, &_ss23_ContiguousArrayStorageCy16AlchemistService10ALCServiceC16GenerationOptionO_yptGMR);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMd, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMR);
  v52 = *(*(v51 - 8) + 72);
  v53 = (*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C1897FC0;
  v55 = v54 + v53;
  v56 = (v55 + *(v51 + 48));
  v57 = *MEMORY[0x1E698A840];
  v58 = *(v47 + 104);
  *(v0 + 328) = v58;
  *(v0 + 336) = (v47 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  (v58)(v55, v57, v46);
  v56[3] = type metadata accessor for AdjustmentParams();
  __swift_allocate_boxed_opaque_existential_1(v56);
  AdjustmentParams.init()();
  v59 = (v55 + v52 + *(v51 + 48));
  v58();
  v60 = type metadata accessor for ALCService.ClientName();
  v59[3] = v60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(v60 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E698A740], v60);
  v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16AlchemistService10ALCServiceC16GenerationOptionO_ypTt0g5Tf4g_n(v54);
  *(v0 + 344) = v62;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v85 + 84))
  {
    *(v0 + 392) = v62;
    v63 = MTLCreateSystemDefaultDevice();
    *(v0 + 400) = v63;
    if (!v63)
    {
      v77 = *(v0 + 304);
      v76 = *(v0 + 312);
      v78 = *(v0 + 288);
      v79 = *(v0 + 264);
      v80 = *(v0 + 272);

      lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
      v8 = swift_allocError();
      *v81 = 7;
      swift_willThrow();

      (*(v80 + 8))(v78, v79);
LABEL_38:
      *(v0 + 488) = v8;
      *(v0 + 200) = v8;
      v37 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v39 = *(v0 + 224);
        v38 = *(v0 + 232);
        v40 = *(v0 + 216);

        (*(v39 + 8))(v38, v40);
        v41 = swift_task_alloc();
        *(v0 + 496) = v41;
        *v41 = v0;
        v41[1] = ImagePresentationComponent.Spatial3DImage.generate();

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
      }

      else
      {

        v43 = swift_task_alloc();
        *(v0 + 504) = v43;
        *v43 = v0;
        v43[1] = ImagePresentationComponent.Spatial3DImage.generate();

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
      }
    }

    v64 = *(v0 + 320);
    v65 = *(v0 + 280);
    v66 = *(v0 + 288);
    v67 = *(v0 + 264);
    v68 = *(v0 + 272);
    v69 = *(v0 + 208);
    v70 = swift_allocObject();
    *(v0 + 408) = v70;
    *(v70 + 16) = 0;
    (*(v68 + 16))(v65, v66, v67);
    v71 = swift_allocObject();
    *(v71 + 16) = v69;
    *(v71 + 24) = v70;
    type metadata accessor for ALCService();
    swift_allocObject();
    swift_unknownObjectRetain();

    *(v0 + 416) = ALCService.init(mtlDevice:configuration:eventHandler:)();
    if (v64)
    {
      v8 = v64;
      v73 = *(v0 + 304);
      v72 = *(v0 + 312);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

      swift_unknownObjectRelease();

      goto LABEL_38;
    }

    v86 = (*MEMORY[0x1E698A870] + MEMORY[0x1E698A870]);
    v82 = swift_task_alloc();
    *(v0 + 424) = v82;
    *v82 = v0;
    v82[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v83 = *(v0 + 312);
    v84 = *(v0 + 288);

    return v86(v83, v84, v62);
  }

  else
  {
    *(v0 + 512) = *(*(v0 + 208) + 80);
    *(v0 + 352) = *(v44 + 16);
    *(v0 + 360) = type metadata accessor for MainActor();
    *(v0 + 368) = static MainActor.shared.getter();
    v75 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), v75, v74);
  }
}

{

  RETextureAssetGetSize();
  *(v0 + 516) = v1;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{

  RETextureAssetGetSize();
  *(v0 + 384) = v1;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v40 = HIDWORD(*(v0 + 384));
  v1 = *(v0 + 516);
  result = (*(v0 + 328))(*(v0 + 256), *MEMORY[0x1E698A820], *(v0 + 240));
  v3 = v1 * v1;
  v4 = v40 * v40;
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
    return result;
  }

  v7 = *(v0 + 344);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  v11 = sqrtf(v6 / 1872.0) * *(v0 + 512);
  *(v0 + 136) = MEMORY[0x1E69E6448];
  *(v0 + 112) = v11;
  outlined init with take of Any((v0 + 112), (v0 + 144));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 144), v8, isUniquelyReferenced_nonNull_native);
  (*(v9 + 8))(v8, v10);
  v13 = v7;
  *(v0 + 392) = v7;
  v14 = MTLCreateSystemDefaultDevice();
  *(v0 + 400) = v14;
  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  if (!v14)
  {
    v27 = *(v0 + 304);
    v26 = *(v0 + 312);
    v28 = *(v0 + 288);

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v23 = swift_allocError();
    *v29 = 7;
    swift_willThrow();

    (*(v16 + 8))(v28, v15);
LABEL_6:
    *(v0 + 488) = v23;
    *(v0 + 200) = v23;
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v32 = *(v0 + 224);
      v31 = *(v0 + 232);
      v33 = *(v0 + 216);

      (*(v32 + 8))(v31, v33);
      v34 = swift_task_alloc();
      *(v0 + 496) = v34;
      *v34 = v0;
      v34[1] = ImagePresentationComponent.Spatial3DImage.generate();

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
    }

    else
    {

      v35 = swift_task_alloc();
      *(v0 + 504) = v35;
      *v35 = v0;
      v35[1] = ImagePresentationComponent.Spatial3DImage.generate();

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
    }
  }

  v17 = *(v0 + 320);
  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  v20 = *(v0 + 208);
  v21 = swift_allocObject();
  *(v0 + 408) = v21;
  *(v21 + 16) = 0;
  (*(v16 + 16))(v18, v19, v15);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  type metadata accessor for ALCService();
  swift_allocObject();
  swift_unknownObjectRetain();

  *(v0 + 416) = ALCService.init(mtlDevice:configuration:eventHandler:)();
  if (v17)
  {
    v23 = v17;
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  v39 = (*MEMORY[0x1E698A870] + MEMORY[0x1E698A870]);
  v36 = swift_task_alloc();
  *(v0 + 424) = v36;
  *v36 = v0;
  v36[1] = ImagePresentationComponent.Spatial3DImage.generate();
  v37 = *(v0 + 312);
  v38 = *(v0 + 288);

  return v39(v37, v38, v13);
}

{
  v1 = *(v0 + 440);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 432);
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  v6 = *(v0 + 408);
  swift_beginAccess();
  v2 = *(v6 + 16);
  v7 = *(v0 + 432);
  if (v2)
  {
    v8 = *(v0 + 304);
    v9 = *(v0 + 312);
    v10 = *(v0 + 272);
    v22 = *(v0 + 264);
    v23 = *(v0 + 288);
    swift_willThrow();
    v11 = v2;

    swift_unknownObjectRelease();

    (*(v10 + 8))(v23, v22);
LABEL_5:

    *(v0 + 488) = v2;
    *(v0 + 200) = v2;
    v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v15 = *(v0 + 216);

      (*(v14 + 8))(v13, v15);
      v16 = swift_task_alloc();
      *(v0 + 496) = v16;
      *v16 = v0;
      v16[1] = ImagePresentationComponent.Spatial3DImage.generate();

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
    }

    else
    {

      v18 = swift_task_alloc();
      *(v0 + 504) = v18;
      *v18 = v0;
      v18[1] = ImagePresentationComponent.Spatial3DImage.generate();

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
    }
  }

  v19 = v7;
  v20 = swift_task_alloc();
  *(v0 + 448) = v20;
  *v20 = v0;
  v20[1] = ImagePresentationComponent.Spatial3DImage.generate();
  v21 = *(v0 + 432);

  return specialized MXISceneResource.__allocating_init(mxiScene:)(v21);
}

{
  *(v0[26] + 88) = v0[58];

  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = ImagePresentationComponent.Spatial3DImage.generate();

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted()();
}

{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  else
  {
    v2 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 456);
  *(v0 + 200) = v6;
  *(v0 + 488) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);

    (*(v9 + 8))(v8, v10);
    v11 = swift_task_alloc();
    *(v0 + 496) = v11;
    *v11 = v0;
    v11[1] = ImagePresentationComponent.Spatial3DImage.generate();

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
  }

  else
  {

    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = ImagePresentationComponent.Spatial3DImage.generate();

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
  }
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

{

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 440);
  *(v0 + 200) = v5;
  *(v0 + 488) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 216);

    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    *v10 = v0;
    v10[1] = ImagePresentationComponent.Spatial3DImage.generate();

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
  }

  else
  {

    v12 = swift_task_alloc();
    *(v0 + 504) = v12;
    *v12 = v0;
    v12[1] = ImagePresentationComponent.Spatial3DImage.generate();

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
  }
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 480);
  *(v0 + 200) = v6;
  *(v0 + 488) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);

    (*(v9 + 8))(v8, v10);
    v11 = swift_task_alloc();
    *(v0 + 496) = v11;
    *v11 = v0;
    v11[1] = ImagePresentationComponent.Spatial3DImage.generate();

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
  }

  else
  {

    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = ImagePresentationComponent.Spatial3DImage.generate();

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
  }
}

uint64_t ImagePresentationComponent.Spatial3DImage.generate()(__n128 a1)
{
  *(v1 + 376) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), v3, v2);
}

{
  lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
  swift_allocError();
  *v2 = 10;
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t ImagePresentationComponent.Spatial3DImage.generate()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  else
  {
    v4 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  else
  {
    *(v4 + 464) = a1;
    v5 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

BOOL closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38[-v8];
  v10 = type metadata accessor for ALCService.GenerationEvent();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E698A7F8])
  {
    (*(v11 + 96))(v14, v10);
    v16 = v14[1];
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = (*v14 / v16) * 100.0;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = a3;
    *(v19 + 40) = v17;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate(), v19);

    static Task<>.checkCancellation()();
    goto LABEL_17;
  }

  if (v15 == *MEMORY[0x1E698A808])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, ImageLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_16;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Spatial3DImage: Alchemist generation started";
LABEL_15:
    _os_log_impl(&dword_1C1358000, v21, v22, v24, v23, 2u);
    MEMORY[0x1C6902A30](v23, -1, -1);
LABEL_16:

    goto LABEL_17;
  }

  if (v15 == *MEMORY[0x1E698A7E8])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, ImageLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_16;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Spatial3DImage: Alchemist generation finished";
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E698A7D0])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, ImageLogger);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C1358000, v28, v29, "Spatial3DImage: Alchemist generation failed", v30, 2u);
      MEMORY[0x1C6902A30](v30, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v31 = swift_allocError();
    *v32 = 9;
    swift_beginAccess();
    v33 = *(a4 + 16);
    *(a4 + 16) = v31;
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, ImageLogger);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C1358000, v35, v36, "Spatial3DImage: Generation reported an unknown event", v37, 2u);
      MEMORY[0x1C6902A30](v37, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }

LABEL_17:
  swift_beginAccess();
  return *(a4 + 16) == 0;
}

uint64_t closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  *(v5 + 16) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

uint64_t closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate(), v2, v1);
}

{
  v1 = *(v0 + 32);

  ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationProgress(percent:)(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of [String : String](a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted()();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  *(v1 + 88) = a1;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:), v7);
}

uint64_t closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted()();
}

{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C1358000, v4, v5, "Externally provided MXIScene Resource was not valid: %@", v8, 0xCu);
    outlined destroy of BodyTrackingComponent?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, a2, v8);
}

uint64_t closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCancelled()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
}

uint64_t specialized REEventDispatcher.receive(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + 64);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v0 + 72);

  os_unfair_lock_unlock(v8 + 4);
  if (v9 && (swift_beginAccess(), (v10 = *(v9 + 16)) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v14 + 24) = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v15 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v16 = *(v2 + 48);
  while (v16(v7, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + 64);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v0 + 72);

  os_unfair_lock_unlock(v8 + 4);
  if (v9 && (swift_beginAccess(), (v10 = *(v9 + 16)) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v14 + 24) = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v15 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v16 = *(v2 + 48);
  while (v16(v7, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + 64);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v0 + 72);

  os_unfair_lock_unlock(v8 + 4);
  if (v9 && (swift_beginAccess(), (v10 = *(v9 + 16)) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v14 + 24) = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v15 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v16 = *(v2 + 48);
  while (v16(v7, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + 64);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v0 + 72);

  os_unfair_lock_unlock(v8 + 4);
  if (v9 && (swift_beginAccess(), (v10 = *(v9 + 16)) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v14 + 24) = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v15 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v16 = *(v2 + 48);
  while (v16(v7, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + 64);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v0 + 72);

  os_unfair_lock_unlock(v8 + 4);
  if (v9 && (swift_beginAccess(), (v10 = *(v9 + 16)) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v14 + 24) = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v15 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v16 = *(v2 + 48);
  while (v16(v7, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v4, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + 64);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v0 + 72);

  os_unfair_lock_unlock(v8 + 4);
  if (v9 && (swift_beginAccess(), (v10 = *(v9 + 16)) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v14 + 24) = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v15 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v16 = *(v2 + 48);
  while (v16(v7, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v4, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v4, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

uint64_t specialized REEventDispatcher.receive(_:)(float a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  *&v21[15] = a1;
  v10 = *(v1 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v1 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v4 + 48);
  while (v18(v9, 1, v3) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v6, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v6, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v19 = static Subscribers.Demand.unlimited.getter();

  return v19;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.ImagePresentationComponentError, &type metadata for ImagePresentationComponent.ImagePresentationComponentError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.ImagePresentationComponentError, &type metadata for ImagePresentationComponent.ImagePresentationComponentError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.Spatial3DImageError, &type metadata for ImagePresentationComponent.Spatial3DImageError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.Spatial3DImageError, &type metadata for ImagePresentationComponent.Spatial3DImageError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError);
  }

  return result;
}

uint64_t partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()();
}

uint64_t partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)();
}

uint64_t partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCancelled()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCancelled()();
}

uint64_t dispatch thunk of ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:)(uint64_t a1)
{
  v6 = (*(v1 + 208) + **(v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return v6(a1);
}

uint64_t dispatch thunk of ImagePresentationComponent.Spatial3DImage.generate()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return v4();
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA30AccessibilityCustomActionEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA30AccessibilityCustomActionEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityDecrementEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityDecrementEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityIncrementEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityIncrementEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26AccessibilityActivateEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26AccessibilityActivateEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA33AccessibilityRotorNavigationEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA33AccessibilityRotorNavigationEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR, a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(v7, a1, v4, v5, v6);
}

uint64_t outlined init with take of AnySubscriber<EngineRenderEvent, Never>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_20Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

char *specialized static EmphasizeAnimations.createEmphasizeFlipAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 125, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 183, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 63, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

uint64_t GestureComponent._gesture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t GestureComponent._responder.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t GestureComponent.init(object:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

id one-time initialization function for shared()
{
  type metadata accessor for __RKSceneAssetLookupTable();
  v0 = swift_allocObject();
  result = [objc_opt_self() strongToWeakObjectsMapTable];
  *(v0 + 16) = result;
  static __RKSceneAssetLookupTable.shared = v0;
  return result;
}

double static __RKSceneAssetLookupTable.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

id __RKSceneAssetLookupTable.reSceneAsset(for:)()
{
  v1 = *(v0 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 objectForKey_];

  return v3;
}

void __RKSceneAssetLookupTable.registerRESceneAsset(_:for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setObject:a1 forKey:isa];
}

uint64_t __RKSceneAssetLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t QueryResult.init()@<X0>(uint64_t *a2@<X8>)
{
  result = static Array._allocateUninitialized(_:)();
  *a2 = result;
  return result;
}

uint64_t QueryResult.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1C68F3760](*v2, v5);
  v7 = v2[1];
  if (v7 != v6)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v11 = *(v5 - 8);
      result = (*(v11 + 16))(a2, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, v5);
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
LABEL_7:
        v2[1] = v12;
        return (*(v11 + 56))(a2, 0, 1, v5);
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      v11 = *(v5 - 8);
      if (*(v11 + 64) != 8)
      {
LABEL_12:
        __break(1u);
        return result;
      }

      v13 = result;
      (*(v11 + 16))(a2, &v13, v5);
      result = swift_unknownObjectRelease();
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = *(*(v5 - 8) + 56);

  return v8(a2, 1, 1, v5);
}

uint64_t QueryResult.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

double protocol witness for Sequence.makeIterator() in conformance QueryResult<A>@<D0>(uint64_t *a1@<X8>)
{
  QueryResult.makeIterator()(a1);

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance QueryResult<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

uint64_t type metadata instantiation function for QueryResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryResult.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v55 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 109, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #1 of static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 94, 0, MEMORY[0x1E69E7CC0]);
      v8 = &outlined read-only object #2 of static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v57._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 109, 0, MEMORY[0x1E69E7CC0]);
    v8 = &outlined read-only object #0 of static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v8, &v57);
  rawValue = v57._rawValue;
  if (!*(v57._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v10 = rawValue[2];
  if (v10)
  {
    v11 = &rawValue[6 * v10];
    v53 = *v11;
    v54 = *(v11 - 1);
    v52 = v11[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, rawValue);
LABEL_9:
  v10 = rawValue[2];
  v12 = rawValue[3];
  v13 = v10 + 1;
  if (v10 >= v12 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1, rawValue);
  }

  rawValue[2] = v13;
  v14 = rawValue + 2;
  v15 = &rawValue[6 * v10 + 4];
  *v15 = v54;
  v15[1] = v53;
  v15[2] = v52;
  v57._rawValue = rawValue;
  v16 = 0.0;
  v17 = 8;
  do
  {
    v18 = *&rawValue[v17];
    v19 = fabsf(*&v18);
    if ((LODWORD(v19) & 0x7FFFFF) != 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    if ((~LODWORD(v19) & 0x7F800000) != 0)
    {
      v20 = v19;
    }

    if (v19 >= v16)
    {
      v16 = v20;
    }

    v21 = fabsf(*(&v18 + 1));
    if (v21 >= v16)
    {
      if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v16 = v21;
      }

      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v16 = v21;
      }
    }

    v22 = fabsf(*(&v18 + 2));
    if (v22 >= v16)
    {
      if ((~LODWORD(v22) & 0x7F800000) != 0)
      {
        v16 = v22;
      }

      else if ((LODWORD(v22) & 0x7FFFFF) == 0)
      {
        v16 = v22;
      }
    }

    v17 += 6;
    --v13;
  }

  while (v13);
  v23 = 0;
  v24 = a6 / v16;
  v25 = v16 <= 0.0;
  v26 = 1.0;
  if (!v25)
  {
    v26 = v24;
  }

  v27 = vmulq_f32(v55, v55);
  *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v27.i32[0] = vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)).u32[0];
  v28 = vrecpe_f32(v27.u32[0]);
  v29 = vmul_f32(v28, vrecps_f32(v27.u32[0], v28));
  v30 = vmulq_n_f32(vmulq_f32(v55, xmmword_1C1899C90), vmul_f32(v29, vrecps_f32(v27.u32[0], v29)).f32[0]);
  v31 = vnegq_f32(a7);
  v32 = vtrn2q_s32(a7, vtrn1q_s32(a7, v31));
  v33 = vrev64q_s32(a7);
  v33.i32[0] = v31.i32[1];
  v33.i32[3] = v31.i32[2];
  v34 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v31, 8uLL), *v30.f32, 1), vextq_s8(v32, v32, 8uLL), v30.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a7, v30, 3), v33, v30, 2));
  v35 = vmulq_f32(v34, xmmword_1C1899C90);
  v36 = vnegq_f32(v35);
  v37 = vtrn2q_s32(v35, vtrn1q_s32(v35, v36));
  v38 = vextq_s8(v37, v37, 8uLL);
  v39 = vrev64q_s32(v35);
  v39.i32[0] = v36.i32[1];
  v39.i32[3] = v36.i32[2];
  v40 = vdupq_lane_s32(*v34.f32, 0);
  v41 = vextq_s8(v35, v36, 8uLL);
  v42 = vdupq_laneq_s32(v34, 2);
  v43 = 8;
  do
  {
    if (v23 >= *v14)
    {
      __break(1u);
      goto LABEL_40;
    }

    v44 = vsubq_f32(*&rawValue[v43], *&v14[6 * *v14]);
    v45 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v41, vmuls_lane_f32(v26, *v44.f32, 1)), v38, v26 * v44.f32[0]), v39, vmuls_lane_f32(v26, v44, 2));
    v46 = vnegq_f32(v45);
    v47 = vtrn2q_s32(v45, vtrn1q_s32(v45, v46));
    v48 = vrev64q_s32(v45);
    v48.i32[0] = v46.i32[1];
    v48.i32[3] = v46.i32[2];
    v49 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v45, v34, 3), v48, v42), vmlaq_f32(vmulq_lane_f32(vextq_s8(v45, v46, 8uLL), *v34.f32, 1), vextq_s8(v47, v47, 8uLL), v40));
    v49.i32[3] = a7.i32[3];
    ++v23;
    *&rawValue[v43] = v49;
    v43 += 6;
  }

  while (v10 + 1 != v23);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v51 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float SIMD3<>._xy.setter(__n128 a1)
{
  a1.n128_u64[1] = v1->n128_u32[2];
  *v1 = a1;
  return a1.n128_f32[0];
}

float (*SIMD3<>._xy.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 16) = v4;
  return SIMD3<>._xy.modify;
}

float SIMD3<>._xy.modify(uint64_t *a1)
{
  v1 = *a1;
  *&v2 = *(v1 + 16);
  *(&v2 + 1) = *(v1 + 8);
  **(v1 + 24) = v2;
  free(v1);
  return result;
}

__n128 SIMD4<>._xyz.setter(__n128 result)
{
  result.n128_u32[3] = v1->n128_u32[3];
  *v1 = result;
  return result;
}

__n128 (*SIMD4<>._xyz.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *v1;
  *(v3 + 16) = *v1;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return SIMD4<>._xyz.modify;
}

__n128 SIMD4<>._xyz.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  **(v1 + 4) = v2;
  free(v1);
  return result;
}

uint64_t PhotogrammetrySample.id.getter()
{
  return *v0;
}

{
  return MEMORY[0x1EEDF9908]();
}

uint64_t PhotogrammetrySample.metadata.getter()
{
}

{
  return MEMORY[0x1EEDF9988]();
}

uint64_t PhotogrammetrySample.metadata.setter(uint64_t a1)
{

  *(v1 + 16) = a1;

  return PhotogrammetrySample.metadata.didset();
}

uint64_t PhotogrammetrySample.metadata.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v18 - v4;
  outlined init with copy of [String : String](v1 + 72, &v20, &_sypSgMd, &_sypSgMR);
  if (*(&v21 + 1))
  {
    v6 = type metadata accessor for PhotogrammetrySample();

    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
  }

  else
  {

    outlined destroy of BodyTrackingComponent?(&v20, &_sypSgMd, &_sypSgMR);
    v6 = type metadata accessor for PhotogrammetrySample();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  type metadata accessor for PhotogrammetrySample();
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v6))
  {
    v19 = v1;

    v18[2] = v18;
    MEMORY[0x1EEE9AC00](v10);
    v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = outlined init with copy of [String : String](v5, v18 - v11, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v18[1] = v18;
    MEMORY[0x1EEE9AC00](v12);
    outlined init with copy of [String : String](v18 - v11, v18 - v11, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v9(v18 - v11, 1, v6) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v18 - v11, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v18 - v11, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v18 - v11, v6);
      outlined destroy of BodyTrackingComponent?(v18 - v11, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v20, v19 + 72);
    return outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v13 = PhotogrammetrySample.metadata.setter();
    MEMORY[0x1EEE9AC00](v13);
    v14 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v5, v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v9(v14, 1, v6) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v6;
      v17 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(v17, v14, v6);
      outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v20, v1 + 72);
  }
}

uint64_t PhotogrammetrySample.metadata.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PhotogrammetrySample.metadata.didset();
  }

  return result;
}

void *PhotogrammetrySample.depthDataMap.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.depthDataMap.setter(uint64_t a1)
{
  *(v1 + 24) = a1;

  return PhotogrammetrySample.depthDataMap.didset();
}

uint64_t PhotogrammetrySample.depthDataMap.didset()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  outlined init with copy of [String : String](v1 + 72, &v22, &_sypSgMd, &_sypSgMR);
  if (*(&v23 + 1))
  {
    v7 = type metadata accessor for PhotogrammetrySample();
    v8 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v22, &_sypSgMd, &_sypSgMR);
    v7 = type metadata accessor for PhotogrammetrySample();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  type metadata accessor for PhotogrammetrySample();
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v7);
  if (v11)
  {
    v20[2] = v20;
    v21 = v1;
    MEMORY[0x1EEE9AC00](v11);
    v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = outlined init with copy of [String : String](v6, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v20[1] = v20;
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of [String : String](v20 - v12, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v20 - v12, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(boxed_opaque_existential_1, v20 - v12, v7);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v22, v21 + 72);
    return outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v14 = v2;
    v15 = PhotogrammetrySample.depthDataMap.setter();
    MEMORY[0x1EEE9AC00](v15);
    v16 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v6, v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v16, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      v19 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(v19, v16, v7);
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v22, v1 + 72);
  }
}

uint64_t PhotogrammetrySample.depthDataMap.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PhotogrammetrySample.depthDataMap.didset();
  }

  return result;
}

uint64_t PhotogrammetrySample.gravity.getter()
{
  return *(v0 + 32);
}

{
  return MEMORY[0x1EEDF9978]();
}

uint64_t PhotogrammetrySample.gravity.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4 & 1;
  return PhotogrammetrySample.gravity.didset();
}

uint64_t PhotogrammetrySample.gravity.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v17 - v4;
  outlined init with copy of [String : String](v1 + 72, &v19, &_sypSgMd, &_sypSgMR);
  if (*(&v20 + 1))
  {
    v6 = type metadata accessor for PhotogrammetrySample();
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v19, &_sypSgMd, &_sypSgMR);
    v6 = type metadata accessor for PhotogrammetrySample();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  type metadata accessor for PhotogrammetrySample();
  v18 = *(v6 - 8);
  v8 = *(v18 + 48);
  v9 = v8(v5, 1, v6);
  if (v9)
  {
    v17[2] = v17;
    MEMORY[0x1EEE9AC00](v9);
    v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = outlined init with copy of [String : String](v5, v17 - v10, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v17[1] = v17;
    MEMORY[0x1EEE9AC00](v11);
    outlined init with copy of [String : String](v17 - v10, v17 - v10, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v8(v17 - v10, 1, v6) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v17 - v10, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v17 - v10, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v19 = 0u;
      v20 = 0u;
    }

    else
    {
      *(&v20 + 1) = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(v18 + 32))(boxed_opaque_existential_1, v17 - v10, v6);
      outlined destroy of BodyTrackingComponent?(v17 - v10, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v19, v1 + 72);
    return outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v12 = PhotogrammetrySample.gravity.setter();
    MEMORY[0x1EEE9AC00](v12);
    v13 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v5, v13, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v8(v13, 1, v6) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v13, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v19 = 0u;
      v20 = 0u;
    }

    else
    {
      *(&v20 + 1) = v6;
      v16 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(v18 + 32))(v16, v13, v6);
      outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v19, v1 + 72);
  }
}

uint64_t PhotogrammetrySample.gravity.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PhotogrammetrySample.gravity.didset();
  }

  return result;
}

void *PhotogrammetrySample.objectMask.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.objectMask.setter(uint64_t a1)
{
  *(v1 + 64) = a1;

  return PhotogrammetrySample.objectMask.didset();
}

uint64_t PhotogrammetrySample.objectMask.didset()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  outlined init with copy of [String : String](v1 + 72, &v22, &_sypSgMd, &_sypSgMR);
  if (*(&v23 + 1))
  {
    v7 = type metadata accessor for PhotogrammetrySample();
    v8 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v22, &_sypSgMd, &_sypSgMR);
    v7 = type metadata accessor for PhotogrammetrySample();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  type metadata accessor for PhotogrammetrySample();
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v7);
  if (v11)
  {
    v20[2] = v20;
    v21 = v1;
    MEMORY[0x1EEE9AC00](v11);
    v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = outlined init with copy of [String : String](v6, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v20[1] = v20;
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of [String : String](v20 - v12, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v20 - v12, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(boxed_opaque_existential_1, v20 - v12, v7);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v22, v21 + 72);
    return outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v14 = v2;
    v15 = PhotogrammetrySample.objectMask.setter();
    MEMORY[0x1EEE9AC00](v15);
    v16 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v6, v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v16, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      v19 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(v19, v16, v7);
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v22, v1 + 72);
  }
}

uint64_t PhotogrammetrySample.objectMask.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PhotogrammetrySample.objectMask.didset();
  }

  return result;
}

double PhotogrammetrySample.init(id:image:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *a3 = a1;
  return result;
}

uint64_t one-time initialization function for idManager()
{
  type metadata accessor for UniqueIDManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  v2 = MEMORY[0x1E69E7CD0];
  *(result + 16) = 0;
  v0[2] = result;
  v0[3] = v2;
  v0[4] = 0;
  static PhotogrammetrySample.idManager = v0;
  return result;
}

uint64_t PhotogrammetrySample.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(172);
  v27 = v24;
  MEMORY[0x1C68F3410](540697705, 0xE400000000000000);
  *&v24 = *v0;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](0x3A6567616D690A2CLL, 0xE900000000000020);
  *&v24 = *(v0 + 8);
  type metadata accessor for CVBufferRef(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x61646174656D0A2CLL, 0xEC000000203A6174);
  v8 = Dictionary.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18E29E0);
  *&v24 = *(v0 + 24);
  v9 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CVBufferRefaSgMd, &_sSo11CVBufferRefaSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v10);

  MEMORY[0x1C68F3410](0x7469766172670A2CLL, 0xEB00000000203A79);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = v11;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CMAccelerationaSgMd, &_sSo14CMAccelerationaSgMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v13);

  MEMORY[0x1C68F3410](0x7463656A626F0A2CLL, 0xEE00203A6B73614DLL);
  *&v24 = *(v0 + 64);
  v14 = v24;
  v15 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v15);

  MEMORY[0x1C68F3410](0x657275747061630ALL, 0xEE00203A656D6954);
  PhotogrammetrySample.captureTime.getter(v6);
  v16 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](0xD000000000000015, 0x80000001C18E2A00);
  *&v24 = PhotogrammetrySample.depthConfidenceMap.getter();
  v17 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v17);

  MEMORY[0x1C68F3410](0x6E69646E756F620ALL, 0xEE00203A786F4267);
  PhotogrammetrySample.boundingBox.getter(&v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v18);

  MEMORY[0x1C68F3410](0x3A6172656D61630ALL, 0xE900000000000020);
  PhotogrammetrySample.camera.getter(&v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20PhotogrammetrySampleV6CameraVSgMd, &_s17RealityFoundation20PhotogrammetrySampleV6CameraVSgMR);
  v19 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v19);

  MEMORY[0x1C68F3410](0x6E6F69737365730ALL, 0xEC000000203A4449);
  PhotogrammetrySample.sessionID.getter(v3);
  v20 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v20);

  MEMORY[0x1C68F3410](0x746E656D6765730ALL, 0xEC000000203A4449);
  *&v24 = PhotogrammetrySample.scanPassID.getter();
  BYTE8(v24) = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v22 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v22);

  return v27;
}

void PhotogrammetrySample.boundingBox.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotogrammetrySample();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  outlined init with copy of [String : String](v1 + 72, v35, &_sypSgMd, &_sypSgMR);
  if (!v36)
  {
    outlined destroy of BodyTrackingComponent?(v35, &_sypSgMd, &_sypSgMR);
    (*(v4 + 56))(v9, 1, 1, v3);
    goto LABEL_7;
  }

  v10 = swift_dynamicCast();
  (*(v4 + 56))(v9, v10 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v9, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C1358000, v20, v21, "No wrapped CoreOC.PhotogrammetrySample!", v22, 2u);
      MEMORY[0x1C6902A30](v22, -1, -1);
    }

    v18 = 1;
    goto LABEL_12;
  }

  (*(v4 + 32))(v6, v9, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMd, &_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  PhotogrammetrySample.object.getter();
  v14 = type metadata accessor for PhotogrammetrySample.Object();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    PhotogrammetrySample.Object.boundingBox.getter();
LABEL_15:
    v33 = v28;
    v34 = v27;
    v31 = v30;
    v32 = v29;
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v13, v14);
    v26 = v31;
    v25 = v32;
    v24 = v33;
    v23 = v34;
    v18 = 0;
    goto LABEL_16;
  }

  outlined destroy of BodyTrackingComponent?(v13, &_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMd, &_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleV5SceneVSgMd, &_s6CoreOC20PhotogrammetrySampleV5SceneVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v13 = &v31 - v17;
  PhotogrammetrySample.scene.getter();
  v14 = type metadata accessor for PhotogrammetrySample.Scene();
  v15 = *(v14 - 8);
  v18 = 1;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    PhotogrammetrySample.Scene.boundingBox.getter();
    goto LABEL_15;
  }

  (*(v4 + 8))(v6, v3);
  outlined destroy of BodyTrackingComponent?(v13, &_s6CoreOC20PhotogrammetrySampleV5SceneVSgMd, &_s6CoreOC20PhotogrammetrySampleV5SceneVSgMR);
  v35[0] = 1;
LABEL_12:
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
LABEL_16:
  *a1 = v23;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  *(a1 + 64) = v18;
}

__n128 PhotogrammetrySample.camera.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotogrammetrySample.Camera();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleV6CameraVSgMd, &_s6CoreOC20PhotogrammetrySampleV6CameraVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  outlined init with copy of [String : String](v1 + 72, v38, &_sypSgMd, &_sypSgMR);
  if (!*&v38[24])
  {
    outlined destroy of BodyTrackingComponent?(v38, &_sypSgMd, &_sypSgMR);
    v29 = type metadata accessor for PhotogrammetrySample();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    goto LABEL_6;
  }

  v13 = type metadata accessor for PhotogrammetrySample();
  v14 = swift_dynamicCast();
  v15 = *(v13 - 8);
  (*(v15 + 56))(v12, v14 ^ 1u, 1, v13);
  if ((*(v15 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    outlined destroy of BodyTrackingComponent?(v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    (*(v4 + 56))(v9, 1, 1, v3);
    goto LABEL_7;
  }

  PhotogrammetrySample.camera.getter();
  (*(v15 + 8))(v12, v13);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v9, &_s6CoreOC20PhotogrammetrySampleV6CameraVSgMd, &_s6CoreOC20PhotogrammetrySampleV6CameraVSgMR);
    _s17RealityFoundation20PhotogrammetrySampleV6CameraVSgWOi0_(v38);
    v26 = v40;
    v30 = v42;
    *(a1 + 96) = v41;
    *(a1 + 112) = v30;
    v28 = v43;
    goto LABEL_8;
  }

  v16 = (*(v4 + 32))(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v3);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v18, v18, v3, v17);
  v19 = PhotogrammetrySample.Camera.id.getter();
  PhotogrammetrySample.Camera.intrinsics.getter();
  *&v37[12] = v44;
  *&v37[28] = v45;
  *&v37[44] = v46;
  PhotogrammetrySample.Camera.transform.getter();
  v36 = v20;
  v35 = v21;
  v34 = v22;
  v33 = v23;
  v24 = PhotogrammetrySample.Camera.calibrationData.getter();
  v25 = *(v4 + 8);
  v25(v18, v3);
  v25(v6, v3);
  *v38 = v19;
  *&v38[4] = *v37;
  *&v38[20] = *&v37[16];
  *&v38[36] = *&v37[32];
  *&v38[48] = *&v37[44];
  v39 = v36;
  v40 = v35;
  v41 = v34;
  v42 = v33;
  v43 = v24;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v26 = v40;
  v27 = v42;
  *(a1 + 96) = v41;
  *(a1 + 112) = v27;
  v28 = v43;
LABEL_8:
  *(a1 + 128) = v28;
  v31 = *&v38[48];
  *(a1 + 32) = *&v38[32];
  *(a1 + 48) = v31;
  *(a1 + 64) = v39;
  *(a1 + 80) = v26;
  result = *&v38[16];
  *a1 = *v38;
  *(a1 + 16) = result;
  return result;
}

uint64_t PhotogrammetrySample.captureTime.getter@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  outlined init with copy of [String : String](v3 + 72, v16, &_sypSgMd, &_sypSgMR);
  if (v17)
  {
    v10 = type metadata accessor for PhotogrammetrySample();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    (*(v12 + 56))(v9, v11 ^ 1u, 1, v10);
    if ((*(v12 + 48))(v9, 1, v10) != 1)
    {
      a1();
      return (*(v12 + 8))(v9, v10);
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v16, &_sypSgMd, &_sypSgMR);
    v14 = type metadata accessor for PhotogrammetrySample();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  outlined destroy of BodyTrackingComponent?(v9, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v15 = a2(0);
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t PhotogrammetrySample.scanPassID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-v2];
  outlined init with copy of [String : String](v0 + 72, v10, &_sypSgMd, &_sypSgMR);
  if (v11)
  {
    v4 = type metadata accessor for PhotogrammetrySample();
    v5 = swift_dynamicCast();
    v6 = *(v4 - 8);
    (*(v6 + 56))(v3, v5 ^ 1u, 1, v4);
    if ((*(v6 + 48))(v3, 1, v4) != 1)
    {
      v7 = PhotogrammetrySample.staticSegmentID.getter();
      (*(v6 + 8))(v3, v4);
      return v7;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v10, &_sypSgMd, &_sypSgMR);
    v9 = type metadata accessor for PhotogrammetrySample();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  }

  outlined destroy of BodyTrackingComponent?(v3, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  return 0;
}

__n128 PhotogrammetrySample.init(contentsOf:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a2 + 16) = v5;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  if (one-time initialization token for idManager != -1)
  {
    swift_once();
  }

  UniqueIDManager.generateNextUnassignedID()();
  v6 = type metadata accessor for PhotogrammetrySample();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectCaptureImageFolderReader();
  static ObjectCaptureImageFolderReader.loadPhotogrammetrySample(id:url:)();
  if (v2)
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);

    outlined destroy of BodyTrackingComponent?(a2 + 72, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    v12 = PhotogrammetrySample.id.getter();
    v30 = v5;
    v13 = v12;
    v14 = PhotogrammetrySample.image.getter();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v23 = &v23;
    memset(&v29[8], 0, 32);
    *&v25 = v13;
    *(&v25 + 1) = v14;
    v15 = PhotogrammetrySample.metadata.getter();

    *&v26 = v15;
    *(&v26 + 1) = PhotogrammetrySample.depthDataMap.getter();
    *&v27 = PhotogrammetrySample.gravity.getter();
    *(&v27 + 1) = v16;
    v28.n128_u64[0] = v17;
    v28.n128_u8[8] = v18 & 1;
    *v29 = PhotogrammetrySample.objectMask.getter();
    v24[3] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v7 + 32))(boxed_opaque_existential_1, v9, v6);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(a1, v20);
    outlined assign with take of Any?(v24, &v29[8]);

    outlined destroy of BodyTrackingComponent?(a2 + 72, &_sypSgMd, &_sypSgMR);
    v21 = *&v29[16];
    *(a2 + 64) = *v29;
    *(a2 + 80) = v21;
    *(a2 + 96) = *&v29[32];
    v22 = v26;
    *a2 = v25;
    *(a2 + 16) = v22;
    result = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t PhotogrammetrySample.init(contentsOf:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](PhotogrammetrySample.init(contentsOf:), 0, 0);
}

uint64_t PhotogrammetrySample.init(contentsOf:)()
{
  v1 = *(v0 + 152);
  *(v1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  if (one-time initialization token for idManager != -1)
  {
    swift_once();
  }

  UniqueIDManager.generateNextUnassignedID()();
  v2 = type metadata accessor for PhotogrammetrySample();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  type metadata accessor for ObjectCaptureImageFolderReader();
  static ObjectCaptureImageFolderReader.loadPhotogrammetrySample(id:url:)();
  v5 = *(v0 + 152);
  v21 = *(v0 + 160);
  v6 = PhotogrammetrySample.id.getter();
  v7 = PhotogrammetrySample.image.getter();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  v8 = PhotogrammetrySample.metadata.getter();

  *(v0 + 32) = v8;
  *(v0 + 40) = PhotogrammetrySample.depthDataMap.getter();
  *(v0 + 48) = PhotogrammetrySample.gravity.getter();
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  *(v0 + 72) = v11 & 1;
  *(v0 + 80) = PhotogrammetrySample.objectMask.getter();
  *(v0 + 144) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
  (*(v3 + 32))(boxed_opaque_existential_1, v4, v2);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(v21, v13);
  outlined assign with take of Any?(v0 + 120, v0 + 88);

  outlined destroy of BodyTrackingComponent?(v1 + 72, &_sypSgMd, &_sypSgMR);
  v15 = *(v0 + 32);
  v14 = *(v0 + 48);
  *v5 = *(v0 + 16);
  *(v5 + 16) = v15;
  *(v5 + 32) = v14;
  v17 = *(v0 + 80);
  v16 = *(v0 + 96);
  v18 = *(v0 + 64);
  *(v5 + 96) = *(v0 + 112);
  *(v5 + 64) = v17;
  *(v5 + 80) = v16;
  *(v5 + 48) = v18;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t PhotogrammetrySample.depthConfidenceMap.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  outlined init with copy of [String : String](v1 + 72, v12, &_sypSgMd, &_sypSgMR);
  if (v13)
  {
    v6 = type metadata accessor for PhotogrammetrySample();
    v7 = swift_dynamicCast();
    v8 = *(v6 - 8);
    (*(v8 + 56))(v5, v7 ^ 1u, 1, v6);
    if ((*(v8 + 48))(v5, 1, v6) != 1)
    {
      v9 = a1();
      (*(v8 + 8))(v5, v6);
      return v9;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v12, &_sypSgMd, &_sypSgMR);
    v11 = type metadata accessor for PhotogrammetrySample();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  return 0;
}

uint64_t PhotogrammetrySample.Camera.id.getter()
{
  return *v0;
}

{
  return MEMORY[0x1EEDF9940]();
}

__n128 PhotogrammetrySample.Camera.intrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 PhotogrammetrySample.Camera.intrinsics.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

void PhotogrammetrySample.Camera.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void *PhotogrammetrySample.Camera.calibrationData.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.orientation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-v2];
  outlined init with copy of [String : String](v0 + 72, v10, &_sypSgMd, &_sypSgMR);
  if (v11)
  {
    v4 = type metadata accessor for PhotogrammetrySample();
    v5 = swift_dynamicCast();
    v6 = *(v4 - 8);
    (*(v6 + 56))(v3, v5 ^ 1u, 1, v4);
    if ((*(v6 + 48))(v3, 1, v4) != 1)
    {
      v7 = PhotogrammetrySample.orientation.getter();
      (*(v6 + 8))(v3, v4);
      return v7;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v10, &_sypSgMd, &_sypSgMR);
    v9 = type metadata accessor for PhotogrammetrySample();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  }

  outlined destroy of BodyTrackingComponent?(v3, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  return 1;
}

{
  return MEMORY[0x1EEDF98E0]();
}

double _s17RealityFoundation20PhotogrammetrySampleV6CameraVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySample(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySample(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy136_16(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySample.Camera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySample.Camera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Hasher.init(_seed:)();
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a2, a3);
  String.hash(into:)();

  return Hasher._finalize()();
}

RealityKit::__REAnchoringType::Name_optional __swiftcall __REAnchoringType.Name.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __REAnchoringType.Name.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __REAnchoringType.Name.rawValue.getter()
{
  v1 = 0x65636166727573;
  v2 = 1701011814;
  if (*v0 != 2)
  {
    v2 = 0x7463656A626FLL;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __REAnchoringType.Name()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __REAnchoringType.Name(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __REAnchoringType.Name()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __REAnchoringType.Name(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x65636166727573;
  v4 = 0xE400000000000000;
  v5 = 1701011814;
  if (*v1 != 2)
  {
    v5 = 0x7463656A626FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567616D69;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t __REAnchoringType.name.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for __REAnchoringType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAnchoringType(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      *a1 = 2;
      return result;
    }

    *a1 = 3;
  }

  else
  {
    if (!result)
    {
      *a1 = 0;
      return result;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
    *a1 = 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    (*(*(v9 - 8) + 8))(&v6[v8], v9);
  }

  v10 = type metadata accessor for URL();
  return (*(*(v10 - 8) + 8))(v6, v10);
}

uint64_t type metadata accessor for __REAnchoringType(uint64_t a1)
{
  result = type metadata singleton initialization cache for __REAnchoringType;
  if (!type metadata singleton initialization cache for __REAnchoringType)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double protocol witness for Hashable.hash(into:) in conformance __REAnchoringType.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __REAnchoringType.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized __REAnchoringType.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __REAnchoringType.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE300000000000000;
  v6 = 7107189;
  v7 = 0xED00006874646957;
  v8 = 0x6C61636973796870;
  if (v2 != 4)
  {
    v8 = 0x747265566873656DLL;
    v7 = 0xEA00000000007865;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E656D6E67696C61;
  if (v2 != 1)
  {
    v10 = 0x6966697373616C63;
    v9 = 0xEE006E6F69746163;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAnchoringType.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 7107189;
  v4 = 0x6C61636973796870;
  if (v1 != 4)
  {
    v4 = 0x747265566873656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x6966697373616C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAnchoringType.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized __REAnchoringType.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAnchoringType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAnchoringType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAnchoringType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v46 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v42 - v3;
  v51 = type metadata accessor for URL();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMR);
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for __REAnchoringType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();
  v16 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v11;
    v53 = v5;
    v18 = v51;
    v19 = v52;
    v44 = v14;
    v45 = v9;
    v20 = v50;
    LOBYTE(v56) = 0;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    v43 = 0;

    v25 = v22;
    v26._countAndFlagsBits = v22;
    v26._object = v24;
    v27 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __REAnchoringType.Name.init(rawValue:), v26);

    if (v27 > 1)
    {
      if (v27 == 3)
      {

        LOBYTE(v56) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FD0]);
        v39 = v43;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (!v39)
        {
          (*(v20 + 8))(v8, v6);
          swift_storeEnumTagMultiPayload();
          v41 = v44;
          outlined init with take of __REAnchoringType(v17, v44);
LABEL_20:
          v38 = v49;
          goto LABEL_21;
        }

        goto LABEL_3;
      }

      if (v27 == 2)
      {

        LOBYTE(v56) = 5;
        v30 = v43;
        v31 = KeyedDecodingContainer.decode(_:forKey:)();
        if (!v30)
        {
          v32 = v31;
          (*(v20 + 8))(v8, v6);
          v41 = v44;
          *v44 = v32;
          goto LABEL_19;
        }

        goto LABEL_3;
      }
    }

    else
    {
      if (!v27)
      {

        v55 = 1;
        lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment();
        v34 = v43;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (!v34)
        {
          v35 = v49;
          v36 = v56;
          v55 = 2;
          lazy protocol witness table accessor for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v20 + 8))(v8, v6);
          v37 = v56;
          v41 = v44;
          *v44 = v36;
          *(v41 + 1) = v37;
          swift_storeEnumTagMultiPayload();
          v38 = v35;
LABEL_21:
          outlined init with take of __REAnchoringType(v41, v38);
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }

        goto LABEL_3;
      }

      if (v27 == 1)
      {

        LOBYTE(v56) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FD0]);
        v28 = v43;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (!v28)
        {
          LOBYTE(v56) = 4;
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR, MEMORY[0x1E6968098]);
          v29 = v48;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v20 + 8))(v8, v6);
          v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
          v41 = v44;
          (*(v47 + 32))(v44, v53, v18);
          (*(v46 + 32))(&v41[v40], v29, v19);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          goto LABEL_20;
        }

        goto LABEL_3;
      }
    }

    lazy protocol witness table accessor for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError();
    swift_allocError();
    *v33 = v25;
    v33[1] = v24;
    swift_willThrow();
LABEL_3:
    (*(v20 + 8))(v8, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.CodingKeys, &unk_1F40F6F00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.CodingKeys, &unk_1F40F6F00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.CodingKeys, &unk_1F40F6F00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.CodingKeys, &unk_1F40F6F00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.AnchoringError, &unk_1F40F6E70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError);
  }

  return result;
}

uint64_t outlined init with take of __REAnchoringType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAnchoringType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Alignment, &type metadata for __REAnchoringType.Alignment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Alignment, &type metadata for __REAnchoringType.Alignment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Alignment, &type metadata for __REAnchoringType.Alignment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Alignment, &type metadata for __REAnchoringType.Alignment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Alignment, &type metadata for __REAnchoringType.Alignment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Alignment, &type metadata for __REAnchoringType.Alignment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Classification, &type metadata for __REAnchoringType.Classification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Classification, &type metadata for __REAnchoringType.Classification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Classification, &type metadata for __REAnchoringType.Classification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Classification, &type metadata for __REAnchoringType.Classification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Classification, &type metadata for __REAnchoringType.Classification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Classification, &type metadata for __REAnchoringType.Classification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

void __REAnchoringType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v41 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v10;
  v11 = type metadata accessor for __REAnchoringType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMR);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();
  v19 = v18;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v2;
  outlined init with copy of __REAnchoringType(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v47 + 8))(v16, v46);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR);
    (*(v44 + 8))(&v16[*(v22 + 48)], v45);
    (*(v47 + 8))(v16, v46);
  }

  LOBYTE(v53) = 0;
  v23 = v51;
  v24 = v48;
  KeyedEncodingContainer.encode(_:forKey:)();
  v25 = v50;
  if (v24)
  {
    (*(v49 + 8))(v19, v23);
  }

  else
  {

    outlined init with copy of __REAnchoringType(v20, v13);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 1)
    {
      v31 = v47;
      v32 = v51;
      if (v26 == 2)
      {
        LOBYTE(v53) = 5;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      else
      {
        v39 = v42;
        v40 = v46;
        (*(v47 + 32))(v42, v13, v46);
        LOBYTE(v53) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB8]);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v31 + 8))(v39, v40);
      }

      (*(v49 + 8))(v19, v32);
    }

    else
    {
      v27 = v47;
      v28 = v51;
      v29 = v19;
      if (v26)
      {
        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
        v34 = v46;
        (*(v27 + 32))(v25, v13, v46);
        v35 = v44;
        v36 = v13 + v33;
        v37 = v43;
        v38 = v45;
        (*(v44 + 32))(v43, v36, v45);
        LOBYTE(v53) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB8]);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        LOBYTE(v53) = 4;
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR, MEMORY[0x1E6968078]);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v35 + 8))(v37, v38);
        (*(v27 + 8))(v50, v34);
      }

      else
      {
        v30 = v13[1];
        v53 = *v13;
        v52 = 1;
        lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v53 = v30;
        v52 = 2;
        lazy protocol witness table accessor for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v49 + 8))(v29, v28);
    }
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for URL();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static __REAnchoringType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v57 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v57 - v13;
  v14 = type metadata accessor for __REAnchoringType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v57 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v57 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeO_ACtMd, &_s10RealityKit17__REAnchoringTypeO_ACtMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v57 - v27;
  v30 = (&v57 + *(v29 + 56) - v27);
  outlined init with copy of __REAnchoringType(a1, &v57 - v27);
  outlined init with copy of __REAnchoringType(a2, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of __REAnchoringType(v28, v19);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = *v19 == *v30;
LABEL_9:
        v34 = v33;
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    outlined init with copy of __REAnchoringType(v28, v16);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v51 = v63;
      v52 = v64;
      (*(v64 + 32))(v11, v30, v63);
      v34 = static URL.== infix(_:_:)();
      v53 = *(v52 + 8);
      v53(v11, v51);
      v53(v16, v51);
      goto LABEL_17;
    }

    v22 = v16;
LABEL_20:
    (*(v64 + 8))(v22, v63);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of __REAnchoringType(v28, v25);
    v32 = v25[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v25 == *v30)
      {
        v33 = v32 == v30[1];
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_21:
    outlined destroy of (__REAnchoringType, __REAnchoringType)(v28);
LABEL_22:
    v34 = 0;
    return v34 & 1;
  }

  outlined init with copy of __REAnchoringType(v28, v22);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v61 + 8))(&v22[v35], v62);
    goto LABEL_20;
  }

  v36 = v63;
  v37 = v58;
  (*(v64 + 32))(v58, v30, v63);
  v38 = v61;
  v39 = *(v61 + 32);
  v40 = v62;
  v39(v60, &v22[v35], v62);
  v41 = v30 + v35;
  v42 = v59;
  v39(v59, v41, v40);
  v43 = v37;
  v44 = v64;
  v45 = static URL.== infix(_:_:)();
  v46 = *(v44 + 8);
  v46(v22, v36);
  if ((v45 & 1) == 0)
  {
    v55 = *(v38 + 8);
    v56 = v62;
    v55(v42, v62);
    v55(v60, v56);
    v46(v37, v36);
LABEL_25:
    outlined destroy of __REAnchoringType(v28);
    goto LABEL_22;
  }

  type metadata accessor for NSUnitLength();
  v47 = v60;
  v34 = static Measurement.== infix<A, B>(_:_:)();
  v48 = *(v38 + 8);
  v49 = v42;
  v50 = v62;
  v48(v49, v62);
  v48(v47, v50);
  v46(v43, v36);
LABEL_17:
  outlined destroy of __REAnchoringType(v28);
  return v34 & 1;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.Name and conformance __REAnchoringType.Name()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Name and conformance __REAnchoringType.Name;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Name and conformance __REAnchoringType.Name)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoringType.Name, &type metadata for __REAnchoringType.Name, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Name and conformance __REAnchoringType.Name);
  }

  return result;
}

void type metadata completion function for __REAnchoringType(uint64_t a1)
{
  type metadata accessor for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (url: URL, physicalWidth: Measurement<NSUnitLength>)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (meshVertex: Int)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (url: URL)();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification)()
{
  if (!lazy cache variable for type metadata for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification));
    }
  }
}

void type metadata accessor for (url: URL, physicalWidth: Measurement<NSUnitLength>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (url: URL, physicalWidth: Measurement<NSUnitLength>))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (url: URL, physicalWidth: Measurement<NSUnitLength>));
    }
  }
}

uint64_t type metadata accessor for (meshVertex: Int)()
{
  result = lazy cache variable for type metadata for (meshVertex: Int);
  if (!lazy cache variable for type metadata for (meshVertex: Int))
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &lazy cache variable for type metadata for (meshVertex: Int));
  }

  return result;
}

void type metadata accessor for (url: URL)()
{
  if (!lazy cache variable for type metadata for (url: URL))
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (url: URL));
    }
  }
}

unint64_t specialized __REAnchoringType.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __REAnchoringType.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined copy of __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t outlined destroy of (__REAnchoringType, __REAnchoringType)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeO_ACtMd, &_s10RealityKit17__REAnchoringTypeO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of __REAnchoringType(uint64_t a1)
{
  v2 = type metadata accessor for __REAnchoringType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSUnitLength()
{
  result = lazy cache variable for type metadata for NSUnitLength;
  if (!lazy cache variable for type metadata for NSUnitLength)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitLength);
  }

  return result;
}

uint64_t CustomMaterial.CustomMaterialTexture.resource.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double CustomMaterial.CustomMaterialTexture.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&result = 84148994;
  *(a2 + 8) = 84148994;
  *a2 = a1;
  return result;
}

{
  v3 = *(a1 + 8);

  *a2 = v3;
  *&result = 84148994;
  *(a2 + 8) = 84148994;
  return result;
}

uint64_t CustomMaterial.CustomMaterialTexture.init(_:_:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t (*static CustomMaterial.BaseColor.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return partial apply for closure #1 in static TextureResource.builtinTexture(named:);
}

void outlined consume of MaterialParameters.Texture?(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

id CustomMaterial.BaseColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *v2;
  if (v5)
  {

    result = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2A60;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "baseColorTint");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  return result;
}

void CustomMaterial.BaseColor.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v8 = a1[3];
  value = static CGColorRef.linearSRGBWhite;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x6F6C6F4365736162;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0xED0000746E695472;
  }

  v12 = v11;
  v13.value = Material.getColorParameter(key:)(*&v10).value;

  if (v13.value)
  {

    value = v13.value;
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2A60, &v20, v14, v15);
  v16 = v21;
  if (v21)
  {
    v17 = v20;

    outlined consume of MaterialParameters.Texture?(v17, v16);
    v18 = 84148994;
  }

  else
  {
    v18 = 0;
  }

  *a4 = value;
  *(a4 + 8) = v16;
  *(a4 + 16) = v18;
  v19 = value;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.Metallic.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static CustomMaterial.Roughness.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

id CustomMaterial.Roughness.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {

    result = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    result = 0;
    v9 = 0;
    v8 = -1;
  }

  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2A80;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  strcpy(a2, "roughnessScale");
  *(a2 + 15) = -18;
  *(a2 + 16) = v5;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.Roughness.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x73656E6867756F72;
  v5._object = 0xEE00656C61635373;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2A80, &v16, v9, v10);
  v11 = v17;
  if (v17)
  {
    v12 = v16;

    outlined consume of MaterialParameters.Texture?(v12, v11);
    v13 = 84148994;
  }

  else
  {
    v13 = 0;
  }

  v14 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

double CustomMaterial.EmissiveColor.texture.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;

  return result;
}

uint64_t (*static CustomMaterial.EmissiveColor.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.black");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t CustomMaterial.EmissiveColor.init(color:texture:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

void CustomMaterial.BaseColor.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (v5)
  {

    v6 = 84148994;
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  outlined consume of MaterialParameters.Texture?(v3, v7);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

id CustomMaterial.EmissiveColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *v2;
  if (v5)
  {

    result = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0x4565727574786574;
  *(a1 + 8) = 0xEF6576697373696DLL;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "emissiveColor");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  return result;
}

void CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v5 = a1[3];
  v6 = static CGColorRef.linearSRGBWhite;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7._countAndFlagsBits = 0x6576697373696D65;
  v7._object = 0xED0000726F6C6F43;
  v8.value = Material.getColorParameter(key:)(v7).value;
  if (v8.value)
  {
    value = v8.value;

    v6 = value;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  Material.getTextureParameter(key:)(0x4565727574786574, 0xEF6576697373696DLL, &v16, v10, v11);
  v12 = v17;
  if (v17)
  {
    v13 = v16;

    outlined consume of MaterialParameters.Texture?(v13, v12);
    v14 = 84148994;
  }

  else
  {
    v14 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  v15 = v6;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.Specular.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

double CustomMaterial.Metallic.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *(v7 + 1);
  if (v14)
  {

    v15 = REMaterialCreateDefaultSamplerDescriptor();
    v16 = 1;
    v17 = 84148994;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v16 = -1;
  }

  *a1 = a5;
  *(a1 + 8) = a6;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = v17;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v16;
  *a2 = a7;
  *(a2 + 8) = 0xED0000656C616353;
  *(a2 + 16) = v13;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.Metallic.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11._object = 0xED0000656C616353;
  v11._countAndFlagsBits = a3;
  Material.getFloatParameter(key:)(v12, v11);
  v14 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  Material.getTextureParameter(key:)(a4, a5, &v22, v15, v16);
  v17 = v23;
  if (v23)
  {
    v18 = v22;

    outlined consume of MaterialParameters.Texture?(v18, v17);
    v19 = 84148994;
  }

  else
  {
    v19 = 0;
  }

  v20 = *&v14;
  if ((v14 & 0x100000000) != 0)
  {
    v20 = 1.0;
  }

  *a6 = v20;
  *(a6 + 8) = v17;
  *(a6 + 16) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void CustomMaterial.Blending.init(blending:)(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[2];
  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = *(result + 8);
    v8 = result[3];
    v9 = result[1];
    v11 = *result;
    v12 = v9;
    v13 = v3;
    v14 = v8;
    v15 = v7;
    CustomMaterial.Opacity.init(_:)(&v11, &v16);
    v4 = v16;
    v6 = v17;
    v10 = 0x100000000;
    if (!v19)
    {
      v10 = 0;
    }

    v5 = v10 | v18;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 20) = BYTE4(v5);
}

void CustomMaterial.Opacity.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 1);

    outlined consume of MaterialParameters.Texture?(v5, v4);
    v6 = 84148994;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 20) = 0;
}

Swift::Int CustomMaterial.BlendMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

double CustomMaterial.Opacity.texture.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;

  return result;
}

uint64_t CustomMaterial.Opacity.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*static CustomMaterial.Opacity.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t *CustomMaterial.Opacity.init(scale:texture:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *result;
  v4 = *(result + 2);
  *(a2 + 20) = 0;
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *CustomMaterial.Opacity.init(scale:texture:blendMode:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *result;
  v5 = *(result + 2);
  *(a3 + 20) = *a2;
  *a3 = a4;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  return result;
}

void CustomMaterial.Opacity.init(floatLiteral:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
}

uint64_t CustomMaterial.Opacity.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {

    v7 = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
  }

  strcpy(a1, "textureOpacity");
  *(a1 + 15) = -18;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  result = RELinkedOnOrAfterFall2024OSVersions();
  v11 = 0x537974696361706FLL;
  if (!result)
  {
    v11 = 0;
  }

  v12 = 0xEC000000656C6163;
  if (!result)
  {
    v12 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  if (result)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  *(a2 + 16) = v13;
  *(a2 + 20) = 0u;
  if (result)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 36) = 0uLL;
  *(a2 + 52) = 0uLL;
  *(a2 + 64) = 0uLL;
  *(a2 + 80) = v14;
  return result;
}

uint64_t CustomMaterial.Opacity.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  if (RELinkedOnOrAfterFall2024OSVersions())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5._countAndFlagsBits = 0x537974696361706FLL;
    v5._object = 0xEC000000656C6163;
    Material.getFloatParameter(key:)(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v8 = 1065353216;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 1065353216;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0x4F65727574786574, 0xEE00797469636170, &v15, v9, v10);
  v11 = v16;
  if (v16)
  {
    v12 = v15;

    outlined consume of MaterialParameters.Texture?(v12, v11);
    v13 = 84148994;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 20) = 0;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance CustomMaterial.Opacity@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  return result;
}

uint64_t (*static CustomMaterial.Clearcoat.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

id CustomMaterial.Clearcoat.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {

    result = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    result = 0;
    v9 = 0;
    v8 = -1;
  }

  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2AA0;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  strcpy(a2, "clearcoatScale");
  *(a2 + 15) = -18;
  *(a2 + 16) = v5;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.Clearcoat.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x616F637261656C63;
  v5._object = 0xEE00656C61635374;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2AA0, &v16, v9, v10);
  v11 = v17;
  if (v17)
  {
    v12 = v16;

    outlined consume of MaterialParameters.Texture?(v12, v11);
    v13 = 84148994;
  }

  else
  {
    v13 = 0;
  }

  v14 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomMaterial.BaseColor.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*static CustomMaterial.ClearcoatRoughness.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t *CustomMaterial.ClearcoatRoughness.init(scale:texture:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *result;
  v4 = *(result + 2);
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

void CustomMaterial.ClearcoatRoughness.init(floatLiteral:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void CustomMaterial.Metallic.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 1);

    outlined consume of MaterialParameters.Texture?(v5, v4);
    v6 = 84148994;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
}

double CustomMaterial.ClearcoatRoughness.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {

    v7 = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
  }

  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000001C18E2AC0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  *a2 = 0xD000000000000017;
  *(a2 + 8) = 0x80000001C18DD830;
  *(a2 + 16) = v5;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD830;
  v5._countAndFlagsBits = 0xD000000000000017;
  Material.getFloatParameter(key:)("form1", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000019, 0x80000001C18E2AC0, &v15, v8, v9);
  v10 = v16;
  if (v16)
  {
    v11 = v15;

    outlined consume of MaterialParameters.Texture?(v11, v10);
    v12 = 84148994;
  }

  else
  {
    v12 = 0;
  }

  v13 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v13 = 1.0;
  }

  *a3 = v13;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.Normal.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001C18E2AE0;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

double CustomMaterial.Normal.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {

    v6 = REMaterialCreateDefaultSamplerDescriptor();
    v7 = 1;
    v8 = 84148994;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = -1;
  }

  strcpy(a1, "textureNormal");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v8;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v7;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  return result;
}

uint64_t CustomMaterial.Normal.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Material.getTextureParameter(key:)(0x4E65727574786574, 0xED00006C616D726FLL, &v11, v5, v6);
  v7 = v12;
  if (v12)
  {
    v8 = v11;

    outlined consume of MaterialParameters.Texture?(v8, v7);
    v9 = 84148994;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v9;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.AmbientOcclusion.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

double CustomMaterial.AmbientOcclusion.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {

    v6 = REMaterialCreateDefaultSamplerDescriptor();
    v7 = 1;
    v8 = 84148994;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = -1;
  }

  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001C18DDE20;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v8;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v7;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  return result;
}

uint64_t CustomMaterial.AmbientOcclusion.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Material.getTextureParameter(key:)(0xD000000000000017, 0x80000001C18DDE20, &v11, v5, v6);
  v7 = v12;
  if (v12)
  {
    v8 = v11;

    outlined consume of MaterialParameters.Texture?(v8, v7);
    v9 = 84148994;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v9;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double CustomMaterial.ClearcoatNormal.texture.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;

  return result;
}

uint64_t CustomMaterial.ClearcoatNormal.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t CustomMaterial.ClearcoatNormal.init(texture:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void CustomMaterial.Normal.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;

    outlined consume of MaterialParameters.Texture?(v4, v3);
    v5 = 84148994;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode;
  if (!lazy protocol witness table cache variable for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.BlendMode, &type metadata for CustomMaterial.BlendMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.BaseColor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for CustomMaterial.BaseColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14CustomMaterialV8BlendingO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Blending(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 21))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CustomMaterial.Blending(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 13) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CustomMaterial.Blending(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Opacity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 21))
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

uint64_t storeEnumTagSinglePayload for CustomMaterial.Opacity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Metallic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for CustomMaterial.Metallic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double CustomMaterial.ClearcoatNormal.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {

    v6 = REMaterialCreateDefaultSamplerDescriptor();
    v7 = 1;
    v8 = 84148994;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = -1;
  }

  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001C18E2B00;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v8;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v7;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  return result;
}

uint64_t CustomMaterial.ClearcoatNormal.init(material:alternateTintKey:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E2B00, &v11, v5, v6);
  v7 = v12;
  if (v12)
  {
    v8 = v11;

    outlined consume of MaterialParameters.Texture?(v8, v7);
    v9 = 84148994;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v9;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomComponentProxy.init(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  CustomComponentProxy.updateJSON(with:)(a1, a2);
  result = outlined consume of Data?(a1, a2);
  *a3 = 0;
  return result;
}

void CustomComponentProxy.updateJSON(with:)(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    RECIntrospectionFree();
    *v2 = 0;
  }

  if (a2 >> 60 != 15)
  {
    v5 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_45;
      }

      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = v6 - v7;
      if (!__OFSUB__(v6, v7))
      {
LABEL_14:
        outlined copy of Data._Representation(a1, a2);
        if (v8 < 1)
        {
          goto LABEL_45;
        }

LABEL_15:
        if (v5)
        {
          if (v5 != 2)
          {
            LODWORD(v12) = HIDWORD(a1) - a1;
            if (__OFSUB__(HIDWORD(a1), a1))
            {
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v12 = v12;
LABEL_23:
            if (v12 > 2147483646)
            {
              goto LABEL_45;
            }

            if (v5 == 2)
            {
              v15 = *(a1 + 16);
              v14 = *(a1 + 24);
              v11 = __OFSUB__(v14, v15);
              v13 = v14 - v15;
              if (!v11)
              {
                goto LABEL_30;
              }

              __break(1u);
            }

            LODWORD(v13) = HIDWORD(a1) - a1;
            if (__OFSUB__(HIDWORD(a1), a1))
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            v13 = v13;
LABEL_30:
            v16 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
            }

            else if (v16 >= 0xFFFFFFFF80000000)
            {
              if (v16 <= 0x7FFFFFFF)
              {
                v17 = RECIntrospectionAlloc();
                *v2 = v17;
                if (v17)
                {
                  v18 = v17;
                  if (!v5)
                  {
LABEL_40:
                    v21 = BYTE6(a2);
LABEL_43:
                    Data.copyBytes(to:count:)();
LABEL_44:
                    *(v18 + v21) = 0;
                    goto LABEL_45;
                  }

                  if (v5 != 2)
                  {
                    if (!__OFSUB__(HIDWORD(a1), a1))
                    {
                      v21 = HIDWORD(a1) - a1;
                      goto LABEL_43;
                    }

LABEL_55:
                    __break(1u);
                    return;
                  }

                  if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
                  {
                    Data.copyBytes(to:count:)();
                    v20 = *(a1 + 16);
                    v19 = *(a1 + 24);
                    v21 = v19 - v20;
                    if (!__OFSUB__(v19, v20))
                    {
                      goto LABEL_44;
                    }

                    __break(1u);
                    goto LABEL_40;
                  }

LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

LABEL_45:

                outlined consume of Data?(a1, a2);
                return;
              }

              goto LABEL_50;
            }

            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v10 = *(a1 + 16);
          v9 = *(a1 + 24);
          v11 = __OFSUB__(v9, v10);
          v12 = v9 - v10;
          if (!v11)
          {
            goto LABEL_23;
          }

          __break(1u);
        }

        v13 = BYTE6(a2);
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v5)
    {
      if (!BYTE6(a2))
      {
        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v8 = HIDWORD(a1) - a1;
    goto LABEL_14;
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t CustomComponentProxy.getJSONData()()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v6 = strlen(*v0);
  (*(v2 + 104))(v4, *MEMORY[0x1E6969010], v1);
  return specialized Data.init(bytesNoCopy:count:deallocator:)(v5, v6, v4);
}

uint64_t CustomComponentProxy.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance CustomComponentProxy(void *a1)
{
  if (*a1)
  {
    RECIntrospectionFree();
    *a1 = 0;
    v1 = vars8;
  }

  JUMPOUT(0x1C6902A30);
}

void static CustomComponentProxy.__free(to:offset:)(void *a1)
{
  if (*a1)
  {
    RECIntrospectionFree();
    *a1 = 0;
    v1 = vars8;
  }

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__addIntrospectionData(_:) in conformance CustomComponentProxy(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

uint64_t static CustomComponentProxy.__addIntrospectionData(_:)(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CustomComponentProxy@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

uint64_t CustomComponentProxy.encodeToData(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Data.Deallocator();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1887600;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = 0xD00000000000001FLL;
  *(v11 + 40) = 0x80000001C18E2E90;
  type metadata accessor for OS_os_log();
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v10, &dword_1C1358000, v12, "%s", v17);

  if (a1 == 1852797802 && a2 == 0xE400000000000000 || (v13 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v9)
    {
      v14 = strlen(v9);
      (*(v6 + 104))(v8, *MEMORY[0x1E6969010], v5);
      return specialized Data.init(bytesNoCopy:count:deallocator:)(v9, v14, v8);
    }

    v13 = 1;
  }

  lazy protocol witness table accessor for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError();
  swift_allocError();
  *v16 = v13;
  return swift_willThrow();
}

unint64_t one-time initialization function for customComponentTypesToHandles()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.customComponentTypesToHandles = result;
  return result;
}

void *one-time initialization function for customComponentTypesToKeys()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.customComponentTypesToKeys = result;
  return result;
}

unint64_t one-time initialization function for handlesToCustomComponentTypes()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit9Component_pXpTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.handlesToCustomComponentTypes = result;
  return result;
}

unint64_t one-time initialization function for customComponentTypeObjectIdToHandles()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.customComponentTypeObjectIdToHandles = result;
  return result;
}

double SceneManager.builtinComponentRegistry.getter()
{
  swift_beginAccess();

  return result;
}

void SceneManager.append(scene:)(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x1C68F3650](v2);
  if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  REECSManagerAddScene();
  swift_beginAccess();
  v3 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    swift_beginAccess();
    if (v3[2])
    {
      v4 = RFServiceManagerGetAnchorManagementService();
      if (v4)
      {
        v5 = v4;
        RFAnchorManagementUpdateAnchoringInScene();
      }
    }
  }
}

uint64_t SceneManager.remove(scene:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[4];
  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_19:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C68F41F0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v10;
          v8 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      if (v6 == a1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v11;
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v1[4] = v8;

  return REECSManagerRemoveScene();
}

void *SceneManager.init(coreECSManager:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_So19REComponentClassPtraTt0g5Tf4g_n(v3);
  v1[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19REComponentClassPtra_10RealityKit9Component_pXpTt0g5Tf4g_n(v3);
  type metadata accessor for BuiltInComponentRegistry();
  v4 = swift_allocObject();
  *(v4 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(v3);
  *(v4 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(v3);
  v1[2] = v4;
  RERetain();
  v1[3] = a1;
  REECSManagerSetSwiftObject();
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  SceneManager.registerBuiltInComponents()();
  specialized SceneManager.registerObservableComponents()();
  return v1;
}

uint64_t SceneManager.deinit()
{
  result = swift_beginAccess();
  v2 = *(v0 + 32);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    REECSManagerSetSwiftObject();
    RERelease();

    return v0;
  }

  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68F41F0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      SceneManager.remove(scene:)(v5);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t SceneManager.__deallocating_deinit()
{
  SceneManager.deinit();

  return swift_deallocClassInstance();
}

Class encodeComponent(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = RECustomComponentGetObject();
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static SceneManager.handlesToCustomComponentTypes;
  if (!*(static SceneManager.handlesToCustomComponentTypes + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v8 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v21 = *(*(v6 + 56) + 16 * v7);
  swift_endAccess();
  v9 = *(*(&v21 + 1) + 32);
  v29 = v21;
  __swift_allocate_boxed_opaque_existential_1(v28);
  v9(v5);
  outlined init with copy of __REAssetService(v28, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
  if (!swift_dynamicCast())
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    outlined destroy of BodyTrackingComponent?(v22, &_sSE_pSgMd, &_sSE_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return 0;
  }

  outlined init with take of ForceEffectBase(v22, v25);
  outlined init with copy of __REAssetService(v28, &v24);
  if (swift_dynamicCast())
  {
    v24 = *&v22[0];
    v10 = String.init(cString:)();
    v12 = CustomComponentProxy.encodeToData(_:)(v10, v11);
  }

  else
  {
    v17 = v26;
    v18 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = String.init(cString:)();
    v12 = Encodable.encodeToData(_:)(v19, v20, v17, v18);
  }

  v14 = v12;
  v15 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return isa;
}

uint64_t @objc decodeComponent(_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  LOBYTE(a4) = decodeComponent(_:_:_:_:)(a1, a2, v7, a4);

  return a4 & 1;
}

uint64_t decodeComponent(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = RECustomComponentGetObject();
  if (result)
  {
    v6 = result;
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = swift_endAccess();
      v14 = MEMORY[0x1EEE9AC00](v13);
      (*(v12 + 32))(v6, v11, v12, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_pMd, &_sSe_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(v24, v26);
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        v18 = String.init(cString:)();
        v20 = v19;
        v21 = v27;
        v22 = v28;
        __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
        Decodable.decodeFromData(_:_:)(v15, v17, v18, v20, v21, v22);

        outlined consume of Data._Representation(v15, v17);
        outlined init with copy of __REAssetService(v26, v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
        swift_dynamicCast();
        (*(v12 + 40))(v23, v6, 0, 1, v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v23);
        __swift_destroy_boxed_opaque_existential_1(v26);
        return 1;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));
      outlined destroy of BodyTrackingComponent?(v24, &_sSe_pSgMd, &_sSe_pSgMR);
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in static SceneManager.customComponentTypeHelper(_:typeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = *MEMORY[0x1E69E9840];
  v30 = 2;
  v32 = 0;
  v33 = 0;
  v31 = a1;
  v34 = @objc deinitComponent(componentTypeHandle:rawPointer:);
  v35 = 0u;
  v36 = 0u;
  v37 = a3;
  v38 = a2;
  v18 = MEMORY[0x1C68F8510](&v30, a4 & 1);
  if (v18)
  {
    v19 = v18;
    REComponentTypeSetCloneCallback();
    if (a5)
    {
      v27 = 0x6F436D6F74737543;
      v28 = 0xEF746E656E6F706DLL;
      MEMORY[0x1C68F3410](a6, a7);
      v20 = String.utf8CString.getter();

      MEMORY[0x1C68FD440](v20 + 32);
    }

    if (a8)
    {
      type metadata accessor for SceneManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      LOBYTE(v26) = 0;
      v28 = 0;
      v29 = 0;
      v27 = MEMORY[0x1E69E7CC0];
      static Component.registerBuiltin(bundle:reComponentClass:access:availability:)(v22, 0, &v26, &v27, a10, a11);
    }

    if (one-time initialization token for customComponentTypesToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = static SceneManager.customComponentTypesToHandles;
    static SceneManager.customComponentTypesToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a12, a13, isUniquelyReferenced_nonNull_native);
    static SceneManager.customComponentTypesToHandles = v26;
    swift_endAccess();
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v26 = static SceneManager.handlesToCustomComponentTypes;
    static SceneManager.handlesToCustomComponentTypes = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a10, a11, v19, v24);
    static SceneManager.handlesToCustomComponentTypes = v26;
    result = swift_endAccess();
    *a9 = v19;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t deinitComponent(componentTypeHandle:rawPointer:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static SceneManager.handlesToCustomComponentTypes;
  if (!*(static SceneManager.handlesToCustomComponentTypes + 16))
  {
    return swift_endAccess();
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  swift_endAccess();
  return (*(v9 + 56))(a2, 0, v8, v9);
}

Swift::OpaquePointer __swiftcall cloneComponent(_:)(Swift::OpaquePointer a1)
{
  Class = REComponentGetClass();
  v2 = REComponentCreateByClass();
  Object = RECustomComponentGetObject();
  if (!Object)
  {
    v11 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_1C1358000, v12, "cloneComponent: Failed to get original Swift component.", 55, 2, MEMORY[0x1E69E7CC0]);
LABEL_11:

    return v2;
  }

  v4 = Object;
  v5 = RECustomComponentGetObject();
  if (!v5)
  {
    v14 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v14, &dword_1C1358000, v12, "cloneComponent: Failed to get cloned Swift component.", 53, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_11;
  }

  v6 = v5;
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static SceneManager.handlesToCustomComponentTypes;
  if (!*(static SceneManager.handlesToCustomComponentTypes + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v9 & 1) == 0))
  {
    swift_endAccess();
    v13 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_1C1358000, v12, "cloneComponent: Could not find Swift component type.", 52, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_11;
  }

  v16 = *(*(v7 + 56) + 16 * v8);
  swift_endAccess();
  v10 = *(*(&v16 + 1) + 32);
  v18 = v16;
  __swift_allocate_boxed_opaque_existential_1(v17);
  v10(v4, v16, *(&v16 + 1));
  (*(*(&v16 + 1) + 40))(v17, v6, 0, 1, v16, *(&v16 + 1));
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v2;
}

uint64_t SceneManager.registerBuiltInType(_:typeEnum:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = REComponentClassFromType();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 40);
    *(v4 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v4 + 40) = v11;
    swift_endAccess();
    swift_beginAccess();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v8, v10);
    *(v4 + 48) = v12;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SceneManager.componentTypeToComponentClass(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
LABEL_6:
      swift_endAccess();
      return v9;
    }
  }

  swift_endAccess();
  (*(a2 + 104))(v19, a1, a2);
  v9 = v19[0];
  if (v19[0])
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 40) = v18;
    goto LABEL_6;
  }

  v12 = specialized static SceneManager.makeComponentTypeHandleKey(_:typeName:)(a1, a2, 0, 0);
  v14 = v13;
  if (one-time initialization token for customComponentTypesToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static SceneManager.customComponentTypesToHandles;
  if (*(static SceneManager.customComponentTypesToHandles + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14), (v17 & 1) != 0))
  {
    v9 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    return 0;
  }

  return v9;
}

uint64_t SceneManager.componentClassToComponentType(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  if (*(v3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  swift_endAccess();
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static SceneManager.handlesToCustomComponentTypes;
  if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
LABEL_7:
    v7 = *(*(v3 + 56) + 16 * v4);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t Encodable.encodeToData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  }

  else
  {
    type metadata accessor for REEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = REEncoderCreate();
    v11 = REEncoder.encode<A>(_:)(v4, a3, a4);
    if (!v5)
    {
      v6 = v11;
    }

    swift_setDeallocating();
    REEncoderDestroy();
  }

  return v6;
}

uint64_t Decodable.decodeFromData(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  if (v14 == v15 && v11 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v6)
    {
    }

    v17 = v20;
    v18 = v21;
    (*(v20 + 8))(v21, a5);
  }

  else
  {
    type metadata accessor for REDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = REDecoderCreate();
    REDecoder.decode<A>(_:from:)(a5, v9);
    if (v6)
    {
      swift_setDeallocating();
      return REDecoderDestroy();
    }

    v17 = v20;
    v18 = v21;
    (*(v20 + 8))(v21, a5);
    swift_setDeallocating();
    REDecoderDestroy();
    v13 = v9;
  }

  return (*(v17 + 32))(v18, v13, a5);
}

uint64_t specialized static SceneManager.makeComponentTypeHandleKey(_:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v17 = dispatch thunk of CustomStringConvertible.description.getter();

    MEMORY[0x1C68F3410](95, 0xE100000000000000);

    MEMORY[0x1C68F3410](a3, a4);

    return v17;
  }

  else
  {
    if (one-time initialization token for customComponentTypesToKeys != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static SceneManager.customComponentTypesToKeys;
    if (*(static SceneManager.customComponentTypesToKeys + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 16 * v9);
      swift_endAccess();

      return v11;
    }

    else
    {
      swift_endAccess();
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = static SceneManager.customComponentTypesToKeys;
      static SceneManager.customComponentTypesToKeys = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v14, a1, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypesToKeys = v16;
      swift_endAccess();
      return v12;
    }
  }
}

uint64_t specialized static SceneManager.customComponentTypeHelper(_:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v8 = specialized static SceneManager.makeComponentTypeHandleKey(_:typeName:)(a1, a2, a3, a4);
  v10 = v9;
  if (one-time initialization token for customComponentTypesToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static SceneManager.customComponentTypesToHandles;
  if (*(static SceneManager.customComponentTypesToHandles + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      swift_endAccess();

      return v14;
    }
  }

  swift_endAccess();
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v5 = (*(a2 + 8))(a1, a2);
    v16 = v17;
  }

  v18 = a2 + 24;
  v19 = *(a2 + 24);

  v20 = v19(a1, a2);
  v21 = REStructBuilderCreate();
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = v21;
  v50 = v8;
  String.utf8CString.getter();
  v23 = REStructBuilderInit();

  if (!v23)
  {
    goto LABEL_51;
  }

  (*(a2 + 88))(v22, a1, a2);
  v24 = RECIntrospectionStructRegister();
  if (!v24)
  {
    goto LABEL_51;
  }

  v25 = v24;
  REStructBuilderDestroy();
  v26 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  if (v26)
  {
    v63 = a1;
    v64 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pXpMd, &_s10RealityKit9Component_pXpMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13DisableRESync_pMd, &_s17RealityFoundation13DisableRESync_pMR);
    v27 = swift_dynamicCast();
    if ((v27 & 1) == 0)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
    }

    v28 = v27 ^ 1;
    outlined destroy of BodyTrackingComponent?(&v56, &_s17RealityFoundation13DisableRESync_pSgMd, &_s17RealityFoundation13DisableRESync_pSgMR);
  }

  else
  {
    v28 = 0;
  }

  v63 = 48;
  LODWORD(v64) = 1;
  v65 = 0;
  v66 = @objc ecsNetSyncWriteSnapshot(_:_:_:_:_:);
  v67 = @objc ecsNetSyncReadSnapshot(_:_:_:_:_:_:);
  v68 = v28;
  if (v26)
  {
    RERegisterSwiftCodableCallbacks();
  }

  else
  {
    v49 = static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1887600;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E2D00);
    v30 = _typeName(_:qualified:)();
    MEMORY[0x1C68F3410](v30);

    MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E2D20);

    MEMORY[0x1C68F3410](0xD000000000000027, 0x80000001C18E2D40);

    v31 = v56;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 32) = v31;
    type metadata accessor for OS_os_log();
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v49, &dword_1C1358000, v32, "%s", v49);
  }

  LODWORD(v33) = swift_conformsToProtocol2() != 0;
  v34 = swift_conformsToProtocol2();
  if (a1)
  {
    v33 = v33;
  }

  else
  {
    v33 = 0;
  }

  if (a1)
  {
    v35 = v34 != 0;
  }

  else
  {
    v35 = 0;
  }

  MEMORY[0x1EEE9AC00](v34);
  if ((v16 & 0x1000000000000000) != 0)
  {
LABEL_47:

    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_46;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v52[0] = v5;
    v52[1] = v16 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v56) = 2;
    v57 = 0uLL;
    *(&v56 + 1) = v52;
    v58 = @objc deinitComponent(componentTypeHandle:rawPointer:);
    v59 = 0u;
    v60 = 0u;
    v61 = v25;
    v62 = &v63;

    v43 = MEMORY[0x1C68F8510](&v56, v33);
    if (!v43)
    {
      goto LABEL_51;
    }

    v8 = v43;
    REComponentTypeSetCloneCallback();
    if (v26)
    {
      v53 = 0x6F436D6F74737543;
      v54 = 0xEF746E656E6F706DLL;
      MEMORY[0x1C68F3410](v5, v16);
      v44 = String.utf8CString.getter();

      MEMORY[0x1C68FD440](v44 + 32);
    }

    if (v35)
    {
      type metadata accessor for SceneManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      LOBYTE(v51) = 0;
      v54 = 0;
      v55 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      static Component.registerBuiltin(bundle:reComponentClass:access:availability:)(v46, 0, &v51, &v53, a1, a2);
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = static SceneManager.customComponentTypesToHandles;
    v18 = 0x8000000000000000;
    static SceneManager.customComponentTypesToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v50, v10, isUniquelyReferenced_nonNull_native);
    static SceneManager.customComponentTypesToHandles = v51;
    swift_endAccess();
    if (one-time initialization token for handlesToCustomComponentTypes == -1)
    {
LABEL_44:
      swift_beginAccess();
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v51 = static SceneManager.handlesToCustomComponentTypes;
      static SceneManager.handlesToCustomComponentTypes = v18;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v8, v48);
      v42 = &v70;
LABEL_45:
      static SceneManager.handlesToCustomComponentTypes = *(v42 - 32);
      swift_endAccess();
      *&v56 = v8;
LABEL_46:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return v56;
    }

LABEL_50:
    swift_once();
    goto LABEL_44;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_47;
  }

  LODWORD(v56) = 2;
  v57 = 0uLL;
  *(&v56 + 1) = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v58 = @objc deinitComponent(componentTypeHandle:rawPointer:);
  v59 = 0u;
  v60 = 0u;
  v61 = v25;
  v62 = &v63;

  v36 = MEMORY[0x1C68F8510](&v56, v33);
  if (v36)
  {
    v8 = v36;
    REComponentTypeSetCloneCallback();
    if (v26)
    {
      v53 = 0x6F436D6F74737543;
      v54 = 0xEF746E656E6F706DLL;
      MEMORY[0x1C68F3410](v5, v16);
      v37 = String.utf8CString.getter();

      MEMORY[0x1C68FD440](v37 + 32);
    }

    if (v35)
    {
      type metadata accessor for SceneManager();
      v38 = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      LOBYTE(v52[0]) = 0;
      v54 = 0;
      v55 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      static Component.registerBuiltin(bundle:reComponentClass:access:availability:)(v39, 0, v52, &v53, a1, a2);
    }

    swift_beginAccess();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = static SceneManager.customComponentTypesToHandles;
    static SceneManager.customComponentTypesToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v50, v10, v40);
    static SceneManager.customComponentTypesToHandles = v52[0];
    swift_endAccess();
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = static SceneManager.handlesToCustomComponentTypes;
    static SceneManager.handlesToCustomComponentTypes = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v8, v41);
    v42 = &v71;
    goto LABEL_45;
  }

LABEL_51:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static SceneManager.customComponentType(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static SceneManager.customComponentTypeObjectIdToHandles;
  if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    swift_endAccess();
    v7 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(a1, a2, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
    static SceneManager.customComponentTypeObjectIdToHandles = v10;
  }

  swift_endAccess();
  return v7;
}

uint64_t specialized static CustomComponentProxy.__store(attribute:to:offset:deinitialize:)(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAssetService(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v10 = v17;
  if (v17)
  {
    v11 = strlen(v17);
    (*(v7 + 104))(v9, *MEMORY[0x1E6969010], v6);
    v12 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v11, v9);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v18[0] = 0;
  CustomComponentProxy.updateJSON(with:)(v12, v14);
  result = outlined consume of Data?(v12, v14);
  v16 = v18[0];
  if (a3)
  {
    result = *a2;
    if (*a2)
    {
      result = RECIntrospectionFree();
    }
  }

  *a2 = v16;
  return result;
}

double specialized static SceneManager.unregisterCustomComponents()()
{
  if (one-time initialization token for customComponentTypesToHandles != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v0 = static SceneManager.customComponentTypesToHandles;
  v1 = 1 << *(static SceneManager.customComponentTypesToHandles + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(static SceneManager.customComponentTypesToHandles + 64);
  v4 = (v1 + 63) >> 6;

  v5 = 0;
  if (v3)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = *(v0 + 64 + 8 * v6);
    ++v5;
    if (v3)
    {
      v5 = v6;
      do
      {
LABEL_10:
        v3 &= v3 - 1;
        RECustomComponentTypeGetObjectIntrospection();
        RECustomComponentTypeDestroy();
        RECIntrospectionStructUnregister();
      }

      while (v3);
      continue;
    }
  }

  if (one-time initialization token for customComponentTypesToKeys != -1)
  {
    swift_once();
  }

  v7 = MEMORY[0x1E69E7CC0];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  static SceneManager.customComponentTypesToKeys = v8;

  static SceneManager.customComponentTypesToHandles = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s13OpaquePointerVTt0g5Tf4g_n(v7);

  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit9Component_pXpTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  static SceneManager.handlesToCustomComponentTypes = v9;

  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
    swift_once();
  }

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  static SceneManager.customComponentTypeObjectIdToHandles = v10;

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError()
{
  result = lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError;
  if (!lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomComponentProxy.CustomComponentProxyEncodeError, &type metadata for CustomComponentProxy.CustomComponentProxyEncodeError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError;
  if (!lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomComponentProxy.CustomComponentProxyEncodeError, &type metadata for CustomComponentProxy.CustomComponentProxyEncodeError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError);
  }

  return result;
}

RealityKit::__RKEntityMoveSelection_optional __swiftcall __RKEntityMoveSelection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelection.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityMoveSelection(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "move by distance";
  }

  else
  {
    v2 = "e";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "move by distance";
  }

  else
  {
    v4 = "e";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityMoveSelection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKEntityMoveSelection(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityMoveSelection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityMoveSelection(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelection.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}