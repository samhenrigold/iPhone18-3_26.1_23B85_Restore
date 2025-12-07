void sub_19A488D88(uint64_t a1@<X8>)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  aBlock[0] = 0;
  v2 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:1 error:aBlock];
  if (!v2)
  {
    v28 = aBlock[0];
    v29 = sub_19A570D1C();

    swift_willThrow();
LABEL_12:
    *a1 = 0;
    *(a1 + 8) = -1;
    return;
  }

  v3 = v2;
  v4 = aBlock[0];
  v5 = [v3 librarySpecificFetchOptions];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0, &qword_19A57A800);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19A576E10;
  *(v7 + 32) = sub_19A570FDC();
  *(v7 + 40) = v8;
  v9 = sub_19A57307C();

  v10 = v5;
  v11 = [v6 fetchPersonsWithLocalIdentifiers:v9 options:v10];

  v12 = [v11 firstObject];
  if (!v12)
  {

LABEL_11:
    goto LABEL_12;
  }

  v13 = [objc_opt_self() fetchKeyFaceForPerson:v12 options:v10];

  v14 = [v13 firstObject];
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19A576E00;
  *(v16 + 32) = v14;
  sub_19A4897F0();
  v17 = v14;
  v18 = sub_19A57307C();

  v19 = [v15 fetchAssetsForFaces:v18 options:0];

  if (v19)
  {
    v20 = [v19 firstObject];

    if (v20)
    {
      v31 = v17;
      v21 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
      [v21 setSynchronous_];
      [v21 setDeliveryMode_];
      [v21 setNetworkAccessAllowed_];
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = -1;
      v30 = [objc_allocWithZone(MEMORY[0x1E6978860]) init];
      v23 = *MEMORY[0x1E695F060];
      v24 = *(MEMORY[0x1E695F060] + 8);
      aBlock[4] = sub_19A48983C;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A48929C;
      aBlock[3] = &block_descriptor_9;
      v25 = _Block_copy(aBlock);

      [v30 requestNewCGImageForAsset:v20 targetSize:0 contentMode:v21 options:v25 resultHandler:{v23, v24}];

      _Block_release(v25);
      swift_beginAccess();
      v26 = *(v22 + 16);
      *a1 = v26;
      v27 = *(v22 + 24);
      *(a1 + 8) = v27;
      sub_19A3319D0(v26, v27);

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_19A48922C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = a1;
    v6 = *(a3 + 24);
    *(a3 + 24) = 0;
    v7 = a1;
    sub_19A335458(v5, v6);
  }
}

double sub_19A48929C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_19A572AFC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);

  return result;
}

unint64_t sub_19A489348(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x19A902C70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x19A902C70](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19A4893D4()
{
  result = qword_1EAFA2508;
  if (!qword_1EAFA2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2508);
  }

  return result;
}

double sub_19A489428(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  return result;
}

uint64_t sub_19A489468(uint64_t a1)
{
  v1 = *(a1 + 40);
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

void sub_19A48948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_19A4894D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0778, &unk_19A57BFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A489544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0778, &unk_19A57BFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A489610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A489658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4896C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A489728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A48978C()
{
  result = qword_1EAFA2518;
  if (!qword_1EAFA2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2518);
  }

  return result;
}

unint64_t sub_19A4897F0()
{
  result = qword_1EAFA1740;
  if (!qword_1EAFA1740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFA1740);
  }

  return result;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t GenerationState.definitionSessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57102C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GenerationState.generationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerationState(0) + 20);

  return sub_19A489954(v3, a1);
}

uint64_t type metadata accessor for GenerationState(uint64_t a1)
{
  result = qword_1ED825CC8;
  if (!qword_1ED825CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A489954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GenerationState.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = sub_19A57102C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0x206E6F6973736553;
  v16 = 0xE800000000000000;
  sub_19A48AC1C(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_19A573EDC();
  MEMORY[0x19A900A50](v9);

  v10 = v15;
  v11 = type metadata accessor for GenerationState(0);
  sub_19A489954(v1 + *(v11 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19A489C30(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    strcpy(v14, ", Generation ");
    HIWORD(v14[1]) = -4864;
    v12 = sub_19A573EDC();
    MEMORY[0x19A900A50](v12);

    MEMORY[0x19A900A50](v14[0], v14[1]);

    (*(v6 + 8))(v8, v5);
    return v15;
  }

  return v10;
}

uint64_t sub_19A489C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GenerationState.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - v2;
  v4 = type metadata accessor for GenerationState(0);
  v5 = (v0 + *(v4 + 24));
  v6 = v5[1];
  v15 = *v5;
  v16 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D40, &unk_19A58F6F0);
  v7 = sub_19A572DAC();
  v9 = v8;
  sub_19A489954(v0 + *(v4 + 20), v3);
  v10 = sub_19A572DAC();
  v12 = v11;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_19A57395C();

  v15 = 0x203A746E65696C43;
  v16 = 0xE800000000000000;
  MEMORY[0x19A900A50](v7, v9);

  MEMORY[0x19A900A50](0x6E6F69737365530ALL, 0xED0000203A444920);
  sub_19A57102C();
  sub_19A48AC1C(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v13 = sub_19A573EDC();
  MEMORY[0x19A900A50](v13);

  MEMORY[0x19A900A50](0xD000000000000010, 0x800000019A59B270);
  MEMORY[0x19A900A50](v10, v12);

  return v15;
}

uint64_t GenerationState.radarDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = 0xE000000000000000;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_19A57395C();

  v25 = 0x203A746E65696C43;
  v26 = 0xE800000000000000;
  v12 = type metadata accessor for GenerationState(0);
  v13 = (v0 + *(v12 + 24));
  if (v13[1])
  {
    v14 = *v13;
    v23 = 34;
    v24 = 0xE100000000000000;
    MEMORY[0x19A900A50](v14);
    MEMORY[0x19A900A50](34, 0xE100000000000000);
    v15 = v23;
    v11 = v24;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x19A900A50](v15, v11);

  MEMORY[0x19A900A50](0x6E6F69737365530ALL, 0xED0000203A444920);
  (*(v5 + 16))(v10, v0, v4);
  v16 = sub_19A572DAC();
  MEMORY[0x19A900A50](v16);

  MEMORY[0x19A900A50](0xD000000000000010, 0x800000019A59B270);
  sub_19A489954(v0 + *(v12 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_19A489C30(v3);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v19 = off_1F0DB0150(v4);
    v18 = v20;
    (*(v5 + 8))(v7, v4);
    v17 = v19;
  }

  MEMORY[0x19A900A50](v17, v18);

  MEMORY[0x19A900A50](10, 0xE100000000000000);
  v21 = sub_19A39EBEC();
  MEMORY[0x19A900A50](v21);

  return v25;
}

uint64_t GenerationState.promptAfterRewrites.getter()
{
  v1 = v0 + *(type metadata accessor for GenerationState(0) + 28);
  if (!*(*(v1 + *(type metadata accessor for GenerationRecipe(0) + 76)) + 16))
  {
    return 0;
  }

  type metadata accessor for ResolvedTextPrompt(0);

  v3 = sub_19A386EC4(v2);

  return v3;
}

unint64_t sub_19A48A294()
{
  v1 = 0x69746172656E6567;
  v2 = 0x614E746E65696C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_19A48A320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A48B1BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A48A348(uint64_t a1)
{
  v2 = sub_19A48ABC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A48A384(uint64_t a1)
{
  v2 = sub_19A48ABC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2520, &qword_19A58B650);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A48ABC8();
  sub_19A5741AC();
  v12 = 0;
  sub_19A57102C();
  sub_19A48AC1C(&qword_1ED8252E8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_19A573E7C();
  if (!v1)
  {
    type metadata accessor for GenerationState(0);
    v11 = 1;
    sub_19A573E1C();
    v10 = 2;
    sub_19A573DCC();
    v9 = 3;
    type metadata accessor for GenerationRecipe(0);
    sub_19A48AC1C(&qword_1EAF9F868, type metadata accessor for GenerationRecipe, &unk_19A57FFC4);
    sub_19A573E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

void GenerationState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for GenerationRecipe(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v28 - v5;
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2530, &qword_19A58B658);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for GenerationState(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 20);
  v33 = v7;
  (*(v7 + 56))(&v15[v17], 1, 1, v6, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A48ABC8();
  v38 = v11;
  v18 = v39;
  sub_19A57417C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_19A489C30(&v15[v17]);
  }

  else
  {
    v39 = v17;
    v29 = v12;
    v20 = v33;
    v19 = v34;
    v43 = 0;
    sub_19A48AC1C(&qword_1ED8252E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v21 = v36;
    sub_19A573D4C();
    (*(v20 + 32))(v15, v37, v6);
    v42 = 1;
    sub_19A573CDC();
    sub_19A3315F4(v19, &v15[v39]);
    v41 = 2;
    v22 = sub_19A573C8C();
    v23 = v15;
    v24 = v29;
    v25 = &v15[*(v29 + 24)];
    *v25 = v22;
    v25[1] = v26;
    v40 = 3;
    sub_19A48AC1C(&qword_1EAF9ED78, type metadata accessor for GenerationRecipe, &unk_19A57FF9C);
    v27 = v32;
    sub_19A573D4C();
    (*(v35 + 8))(v38, v21);
    sub_19A3B5E6C(v27, v23 + *(v24 + 28));
    sub_19A48AC64(v23, v30);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_19A48ACC8(v23);
  }
}

unint64_t sub_19A48ABC8()
{
  result = qword_1EAFA2528;
  if (!qword_1EAFA2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2528);
  }

  return result;
}

uint64_t sub_19A48AC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A48AC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A48ACC8(uint64_t a1)
{
  v2 = type metadata accessor for GenerationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19A48AD4C(uint64_t a1)
{
  sub_19A57102C();
  if (v1 <= 0x3F)
  {
    sub_19A35B140(319);
    if (v2 <= 0x3F)
    {
      sub_19A48AE00();
      if (v3 <= 0x3F)
      {
        type metadata accessor for GenerationRecipe(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A48AE00()
{
  if (!qword_1ED8255C0)
  {
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8255C0);
    }
  }
}

uint64_t dispatch thunk of GenerationStateProviding.currentGenerationState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GenerationStateApplying.apply(generationState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return v9(a1, a2, a3);
}

unint64_t sub_19A48B0B8()
{
  result = qword_1EAFA2538;
  if (!qword_1EAFA2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2538);
  }

  return result;
}

unint64_t sub_19A48B110()
{
  result = qword_1EAFA2540;
  if (!qword_1EAFA2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2540);
  }

  return result;
}

unint64_t sub_19A48B168()
{
  result = qword_1EAFA2548;
  if (!qword_1EAFA2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2548);
  }

  return result;
}

uint64_t sub_19A48B1BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000019A59B290 == a2;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEC00000044496E6FLL || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E746E65696C63 && a2 == 0xEA0000000000656DLL || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A5954D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A48B33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[56] = a3;
  v4[57] = v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[58] = *v3;
  v5 = sub_19A57317C();
  v4[59] = v5;
  v4[60] = *(v5 - 8);
  v4[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0518, &qword_19A57AD50);
  v4[62] = swift_task_alloc();
  v6 = sub_19A571FCC();
  v4[63] = v6;
  v4[64] = *(v6 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v7 = sub_19A57102C();
  v4[67] = v7;
  v4[68] = *(v7 - 8);
  v4[69] = swift_task_alloc();
  v8 = type metadata accessor for GeneratedImage(0);
  v4[70] = v8;
  v4[71] = *(v8 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters(0);
  v4[76] = swift_task_alloc();
  v4[77] = type metadata accessor for GenerationState(0);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = type metadata accessor for GenerativePlayground.GenerationEvent(0);
  v4[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  v4[82] = swift_task_alloc();
  v4[83] = type metadata accessor for GenerationRecipe(0);
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A48B714, 0, 0);
}

uint64_t sub_19A48B714()
{
  v103 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 456) + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState;
  v6 = v5 + *(v2 + 28);
  sub_19A49BEA0(v6, *(v0 + 752), type metadata accessor for GenerationRecipe);
  sub_19A33546C(v5 + *(v2 + 20), v1, &qword_1EAF9FD80, &unk_19A57B720);
  result = (*(v3 + 48))(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 752);
    v9 = *(v0 + 656);
    v10 = *(v0 + 544);
    v11 = *(v0 + 536);
    sub_19A3B4DCC(v8, v9, v0 + 152);
    sub_19A49BD0C(v8, type metadata accessor for GenerationRecipe);
    v12 = *(v10 + 8);
    *(v0 + 760) = v12;
    *(v0 + 768) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
    if (*(v0 + 176))
    {
      v97 = v5;
      sub_19A2EA460((v0 + 152), v0 + 112);
      v13 = sub_19A45AE64();
      v15 = v14;
      *(v0 + 776) = v13;
      *(v0 + 784) = v14;
      v17 = *(v0 + 136);
      v16 = *(v0 + 144);
      v18 = __swift_project_boxed_opaque_existential_1((v0 + 112), v17);
      v19 = sub_19A3687E0(v18, v17, *(*(v16 + 8) + 8));
      v21 = v20;
      v101 = v19;
      *(v0 + 792) = v19;
      *(v0 + 800) = v20;
      if (qword_1EAF9F208 != -1)
      {
        swift_once();
      }

      v22 = sub_19A5723FC();
      *(v0 + 808) = v22;
      v95 = v22;
      *(v0 + 816) = __swift_project_value_buffer(v22, qword_1EAFCA1E8);

      v23 = sub_19A5723DC();
      v24 = sub_19A57356C();

      v100 = v2;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v102[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_19A31F114(v101, v21, v102);
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_19A31F114(v13, v15, v102);
        _os_log_impl(&dword_19A2DE000, v23, v24, "generating images with %s%{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v26, -1, -1);
        MEMORY[0x19A902C50](v25, -1, -1);
      }

      v94 = v13;
      v27 = sub_19A57231C();
      *(v0 + 824) = v27;
      v28 = *(v27 - 8);
      v29 = v28;
      *(v0 + 832) = v28;
      *(v0 + 840) = *(v28 + 64);
      *(v0 + 848) = swift_task_alloc();
      if (qword_1ED824BA8 != -1)
      {
        swift_once();
      }

      v30 = sub_19A57236C();
      *(v0 + 856) = __swift_project_value_buffer(v30, qword_1ED82BD30);
      sub_19A57234C();
      sub_19A5722EC();

      v31 = sub_19A57234C();
      v32 = sub_19A57361C();

      v99 = v21;
      if (sub_19A57376C())
      {
        v33 = v21;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v102[0] = v35;
        *v34 = 136446466;
        *(v34 + 4) = sub_19A31F114(v101, v33, v102);
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_19A31F114(v94, v15, v102);
        v36 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v31, v32, v36, "generateImagesTask", "%{public}s%{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v35, -1, -1);
        MEMORY[0x19A902C50](v34, -1, -1);
      }

      v37 = *(v0 + 440);
      swift_task_alloc();
      v38 = *(v29 + 16);
      *(v0 + 864) = v38;
      *(v0 + 872) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38();
      *(v0 + 880) = sub_19A5723BC();
      swift_allocObject();
      *(v0 + 888) = sub_19A5723AC();

      v39 = swift_allocBox();
      v41 = v40;
      *(v0 + 896) = v39;
      *(v0 + 904) = v40;
      sub_19A49BEA0(v97, v40, type metadata accessor for GenerationState);
      v98 = v41;
      if (v37)
      {
        v42 = *(v0 + 440);
        v43 = *(v0 + 448);
        v44 = qword_1ED824050;

        if (v44 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v95, qword_1ED82BCF0);
        v45 = sub_19A5723DC();
        v46 = sub_19A57356C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v102[0] = v48;
          *v47 = 136446210;
          *(v47 + 4) = sub_19A31F114(0xD00000000000001FLL, 0x800000019A59B360, v102);
          _os_log_impl(&dword_19A2DE000, v45, v46, "%{public}s: eventsHandler != nil", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x19A902C50](v48, -1, -1);
          MEMORY[0x19A902C50](v47, -1, -1);
        }

        v50 = *(v0 + 448);
        v49 = *(v0 + 456);
        v51 = *(v0 + 440);
        v52 = swift_allocObject();
        v52[2] = v42;
        v52[3] = v43;
        v52[4] = v49;
        sub_19A2E0A50(v51, v50);

        v53 = sub_19A5723DC();
        v54 = sub_19A57356C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v102[0] = v56;
          *v55 = 136446210;
          *(v55 + 4) = sub_19A31F114(0xD00000000000001FLL, 0x800000019A59B360, v102);
          _os_log_impl(&dword_19A2DE000, v53, v54, "%{public}s: before 'eventsHandler(self, .starting)'", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v56);
          MEMORY[0x19A902C50](v56, -1, -1);
          MEMORY[0x19A902C50](v55, -1, -1);
        }

        v57 = *(v0 + 648);
        v58 = *(v0 + 456);
        v96 = *(v0 + 448);
        v59 = *(v0 + 440);
        swift_storeEnumTagMultiPayload();
        v42(v58, v57);
        sub_19A49BD0C(v57, type metadata accessor for GenerativePlayground.GenerationEvent);
        sub_19A49BEA0(v41, v57, type metadata accessor for GenerationState);
        swift_storeEnumTagMultiPayload();
        v42(v58, v57);
        sub_19A49BD0C(v57, type metadata accessor for GenerativePlayground.GenerationEvent);
        *v57 = 0;
        *(v57 + 8) = 0;
        *(v57 + 16) = 1;
        *(v57 + 24) = 0;
        swift_storeEnumTagMultiPayload();
        v42(v58, v57);
        sub_19A2E0A60(v59, v96);
        sub_19A49BD0C(v57, type metadata accessor for GenerativePlayground.GenerationEvent);
        v60 = sub_19A49BE90;
        v61 = v100;
      }

      else
      {
        v61 = v100;
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v95, qword_1ED82BCF0);
        v68 = sub_19A5723DC();
        v69 = sub_19A57356C();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v102[0] = v71;
          *v70 = 136446210;
          *(v70 + 4) = sub_19A31F114(0xD00000000000001FLL, 0x800000019A59B360, v102);
          _os_log_impl(&dword_19A2DE000, v68, v69, "%{public}s: eventsHandler == nil", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v71);
          MEMORY[0x19A902C50](v71, -1, -1);
          MEMORY[0x19A902C50](v70, -1, -1);
        }

        v60 = 0;
        v52 = 0;
      }

      *(v0 + 920) = v52;
      *(v0 + 912) = v60;

      v72 = sub_19A5723DC();
      v73 = sub_19A57356C();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v102[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_19A31F114(v101, v99, v102);
        _os_log_impl(&dword_19A2DE000, v72, v73, "unprepared generation recipe policy check for %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        MEMORY[0x19A902C50](v75, -1, -1);
        MEMORY[0x19A902C50](v74, -1, -1);
      }

      v76 = *(v0 + 744);
      v77 = *(v0 + 632);
      v78 = *(v0 + 456);
      v79 = *(v0 + 464);
      v80 = *(v78 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService);
      *(v0 + 928) = v80;
      v81 = *(v78 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession);
      v82 = *(v61 + 28);
      *(v0 + 324) = v82;
      sub_19A49BEA0(v98 + v82, v76, type metadata accessor for GenerationRecipe);
      v83 = v80;

      v84 = sub_19A39B8E4();
      v86 = v85;
      sub_19A49BD0C(v76, type metadata accessor for GenerationRecipe);
      v87 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client;
      *(v0 + 936) = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client;
      v88 = (v78 + v87);
      v89 = *v88;
      v90 = v88[1];
      v91 = v88[2];
      *(v0 + 96) = v79;
      *(v0 + 104) = &off_1F0DB3780;
      *(v0 + 72) = v78;
      *(v0 + 16) = v83;
      *(v0 + 24) = v81;
      *(v0 + 32) = v84;
      *(v0 + 40) = v86;
      *(v0 + 48) = v89;
      *(v0 + 56) = v90;
      *(v0 + 64) = v91;
      sub_19A49BEA0(v98, v77, type metadata accessor for GenerationState);

      v92 = swift_task_alloc();
      *(v0 + 944) = v92;
      *v92 = v0;
      v92[1] = sub_19A48C514;
      v93 = *(v0 + 632);

      return sub_19A2F2B18(v93, v0 + 16);
    }

    else
    {
      v62 = *(v0 + 664);
      sub_19A2F3FA0(v0 + 152, &qword_1EAFA0710, &qword_19A57BC70);
      v63 = (v6 + *(v62 + 20));
      v64 = *v63;
      v65 = v63[1];
      sub_19A2F1130();
      swift_allocError();
      *v66 = v64;
      *(v66 + 8) = v65;
      *(v66 + 16) = 0;
      swift_willThrow();

      v67 = *(v0 + 8);

      return v67();
    }
  }

  return result;
}

uint64_t sub_19A48C514()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  sub_19A49BD0C(*(v2 + 632), type metadata accessor for GenerationState);
  if (v0)
  {
    v3 = sub_19A48CE98;
  }

  else
  {
    v3 = sub_19A48C65C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A48C65C()
{
  v57 = v0;
  v1 = *(v0 + 952);
  sub_19A432418();
  if (v1)
  {
    v2 = v1;
    sub_19A2E0A60(*(v0 + 912), *(v0 + 920));
    sub_19A368930(v0 + 16);

    *(v0 + 392) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {

      v4 = v1;
      v5 = sub_19A5723DC();
      v6 = sub_19A57356C();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 800);
      if (v7)
      {
        v9 = *(v0 + 792);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v56[0] = v12;
        *v10 = 136315394;
        v13 = sub_19A31F114(v9, v8, v56);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2112;
        v14 = v2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 14) = v15;
        *v11 = v15;
        _os_log_impl(&dword_19A2DE000, v5, v6, "%s image generation cancelled - %@", v10, 0x16u);
        sub_19A2F3FA0(v11, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v11, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        MEMORY[0x19A902C50](v10, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

      v42 = *(v0 + 440);
      if (!v42)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v30 = v1;
      v31 = sub_19A5723DC();
      v32 = sub_19A57355C();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 800);
      if (v33)
      {
        v35 = *(v0 + 792);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v56[0] = v38;
        *v36 = 136315394;
        v39 = sub_19A31F114(v35, v34, v56);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2112;
        v40 = v2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v41;
        *v37 = v41;
        _os_log_impl(&dword_19A2DE000, v31, v32, "%s image generation failed - %@", v36, 0x16u);
        sub_19A2F3FA0(v37, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x19A902C50](v38, -1, -1);
        MEMORY[0x19A902C50](v36, -1, -1);

        v42 = *(v0 + 440);
        if (!v42)
        {
          goto LABEL_16;
        }
      }

      else
      {

        v42 = *(v0 + 440);
        if (!v42)
        {
          goto LABEL_16;
        }
      }
    }

    v43 = *(v0 + 648);
    v44 = *(v0 + 456);
    *v43 = v2;
    swift_storeEnumTagMultiPayload();
    v45 = v2;
    v42(v44, v43);
    sub_19A49BD0C(v43, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_16:
    v46 = *(v0 + 888);
    v47 = *(v0 + 848);
    v48 = *(v0 + 832);
    v49 = *(v0 + 824);
    v50 = *(v0 + 784);
    v51 = *(v0 + 776);
    swift_willThrow();
    sub_19A49954C("generateImagesTask", 18, 2, v46, v51, v50);

    (*(v48 + 8))(v47, v49);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

    v52 = *(v0 + 8);

    return v52();
  }

  *(v0 + 960) = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v16 = sub_19A57234C();
  v17 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v16, v17, v19, "prepareRecipe", "", v18, 2u);
    MEMORY[0x19A902C50](v18, -1, -1);
  }

  v53 = *(v0 + 324);
  v20 = *(v0 + 904);
  v21 = *(v0 + 864);
  v22 = *(v0 + 728);
  v55 = *(v0 + 456);

  swift_task_alloc();
  v21();
  swift_allocObject();
  *(v0 + 968) = sub_19A5723AC();

  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v23);
  sub_19A49BEA0(v20 + v53, v22, type metadata accessor for GenerationRecipe);
  v25 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
  v54 = (*(v24 + 32) + **(v24 + 32));
  v26 = swift_task_alloc();
  *(v0 + 976) = v26;
  *v26 = v0;
  v26[1] = sub_19A48D468;
  v27 = *(v0 + 736);
  v28 = *(v0 + 728);

  return v54(v27, v28, v55 + v25, v23, v24);
}

uint64_t sub_19A48CE98()
{
  v40 = v0;
  sub_19A2E0A60(*(v0 + 912), *(v0 + 920));
  v1 = *(v0 + 952);
  sub_19A368930(v0 + 16);

  *(v0 + 392) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v3 = v1;
    v4 = sub_19A5723DC();
    v5 = sub_19A57356C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 800);
    if (v6)
    {
      v8 = *(v0 + 792);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39[0] = v11;
      *v9 = 136315394;
      v12 = sub_19A31F114(v8, v7, v39);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v14;
      *v10 = v14;
      _os_log_impl(&dword_19A2DE000, v4, v5, "%s image generation cancelled - %@", v9, 0x16u);
      sub_19A2F3FA0(v10, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x19A902C50](v11, -1, -1);
      MEMORY[0x19A902C50](v9, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v27 = *(v0 + 440);
    if (!v27)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = v1;
  v16 = sub_19A5723DC();
  v17 = sub_19A57355C();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 800);
  if (v18)
  {
    v20 = *(v0 + 792);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v21 = 136315394;
    v24 = sub_19A31F114(v20, v19, v39);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2112;
    v25 = v1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    *v22 = v26;
    _os_log_impl(&dword_19A2DE000, v16, v17, "%s image generation failed - %@", v21, 0x16u);
    sub_19A2F3FA0(v22, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x19A902C50](v23, -1, -1);
    MEMORY[0x19A902C50](v21, -1, -1);

    v27 = *(v0 + 440);
    if (!v27)
    {
      goto LABEL_10;
    }

LABEL_9:
    v28 = *(v0 + 648);
    v29 = *(v0 + 456);
    *v28 = v1;
    swift_storeEnumTagMultiPayload();
    v30 = v1;
    v27(v29, v28);
    sub_19A49BD0C(v28, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v27 = *(v0 + 440);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_10:
  v31 = *(v0 + 888);
  v32 = *(v0 + 848);
  v33 = *(v0 + 832);
  v34 = *(v0 + 824);
  v35 = *(v0 + 784);
  v36 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v31, v36, v35);

  (*(v33 + 8))(v32, v34);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_19A48D468()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  sub_19A49BD0C(*(v2 + 728), type metadata accessor for GenerationRecipe);
  if (v0)
  {
    v3 = sub_19A494B7C;
  }

  else
  {
    v3 = sub_19A48D5B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A48D5B0()
{
  v57 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 960);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  sub_19A368984(*(v0 + 736), *(v0 + 904) + *(v0 + 324));
  sub_19A499D4C("prepareRecipe", 13, 2);

  v5 = *(v3 + 8);
  *(v0 + 992) = v5;
  *(v0 + 1000) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  sub_19A432418();
  if (v1)
  {
    v6 = v1;
    sub_19A2E0A60(*(v0 + 912), *(v0 + 920));
    sub_19A368930(v0 + 16);

    *(v0 + 392) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {

      v8 = v1;
      v9 = sub_19A5723DC();
      v10 = sub_19A57356C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 800);
      if (v11)
      {
        v13 = *(v0 + 792);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v56[0] = v16;
        *v14 = 136315394;
        v17 = sub_19A31F114(v13, v12, v56);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2112;
        v18 = v6;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v19;
        *v15 = v19;
        _os_log_impl(&dword_19A2DE000, v9, v10, "%s image generation cancelled - %@", v14, 0x16u);
        sub_19A2F3FA0(v15, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x19A902C50](v16, -1, -1);
        MEMORY[0x19A902C50](v14, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

      v45 = *(v0 + 440);
      if (!v45)
      {
        goto LABEL_18;
      }
    }

    else
    {

      v33 = v1;
      v34 = sub_19A5723DC();
      v35 = sub_19A57355C();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 800);
      if (v36)
      {
        v38 = *(v0 + 792);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v56[0] = v41;
        *v39 = 136315394;
        v42 = sub_19A31F114(v38, v37, v56);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2112;
        v43 = v6;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 14) = v44;
        *v40 = v44;
        _os_log_impl(&dword_19A2DE000, v34, v35, "%s image generation failed - %@", v39, 0x16u);
        sub_19A2F3FA0(v40, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x19A902C50](v41, -1, -1);
        MEMORY[0x19A902C50](v39, -1, -1);

        v45 = *(v0 + 440);
        if (!v45)
        {
          goto LABEL_18;
        }
      }

      else
      {

        v45 = *(v0 + 440);
        if (!v45)
        {
          goto LABEL_18;
        }
      }
    }

    v46 = *(v0 + 648);
    v47 = *(v0 + 456);
    *v46 = v6;
    swift_storeEnumTagMultiPayload();
    v48 = v6;
    v45(v47, v46);
    sub_19A49BD0C(v46, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_18:
    v49 = *(v0 + 888);
    v50 = *(v0 + 848);
    v51 = *(v0 + 832);
    v52 = *(v0 + 824);
    v53 = *(v0 + 784);
    v54 = *(v0 + 776);
    swift_willThrow();
    sub_19A49954C("generateImagesTask", 18, 2, v49, v54, v53);

    (*(v51 + 8))(v50, v52);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

    v55 = *(v0 + 8);

    return v55();
  }

  v20 = *(v0 + 440);
  if (v20)
  {
    v21 = *(v0 + 648);
    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    sub_19A49BEA0(*(v0 + 904), v21, type metadata accessor for GenerationState);
    swift_storeEnumTagMultiPayload();

    v20(v22, v21);
    sub_19A2E0A60(v20, v23);
    sub_19A49BD0C(v21, type metadata accessor for GenerativePlayground.GenerationEvent);
  }

  v24 = sub_19A5723DC();
  v25 = sub_19A57356C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 800);
    v27 = *(v0 + 792);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_19A31F114(v27, v26, v56);
    _os_log_impl(&dword_19A2DE000, v24, v25, "prepared recipe policy check for %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x19A902C50](v29, -1, -1);
    MEMORY[0x19A902C50](v28, -1, -1);
  }

  sub_19A49BEA0(*(v0 + 904), *(v0 + 624), type metadata accessor for GenerationState);
  v30 = swift_task_alloc();
  *(v0 + 1008) = v30;
  *v30 = v0;
  v30[1] = sub_19A48DE14;
  v31 = *(v0 + 624);

  return sub_19A2F2B18(v31, v0 + 16);
}

uint64_t sub_19A48DE14()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  sub_19A49BD0C(*(v2 + 624), type metadata accessor for GenerationState);
  if (v0)
  {
    v3 = sub_19A48EF9C;
  }

  else
  {
    v3 = sub_19A48DF5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A48DF5C()
{
  v120 = v0;
  v1 = *(v0 + 1016);
  sub_19A432418();
  v2 = v1;
  if (v1)
  {
    sub_19A2E0A60(*(v0 + 912), *(v0 + 920));
    sub_19A368930(v0 + 16);

    *(v0 + 392) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {

      v4 = v1;
      v5 = sub_19A5723DC();
      v6 = sub_19A57356C();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 800);
      if (v7)
      {
        v9 = *(v0 + 792);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v114 = v12;
        *v10 = 136315394;
        v13 = sub_19A31F114(v9, v8, &v114);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2112;
        v14 = v2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 14) = v15;
        *v11 = v15;
        _os_log_impl(&dword_19A2DE000, v5, v6, "%s image generation cancelled - %@", v10, 0x16u);
        sub_19A2F3FA0(v11, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v11, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        MEMORY[0x19A902C50](v10, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

      v28 = *(v0 + 440);
      if (!v28)
      {
        goto LABEL_13;
      }
    }

    else
    {

      v16 = v1;
      v17 = sub_19A5723DC();
      v18 = sub_19A57355C();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 800);
      if (v19)
      {
        v21 = *(v0 + 792);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v114 = v24;
        *v22 = 136315394;
        v25 = sub_19A31F114(v21, v20, &v114);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2112;
        v26 = v2;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 14) = v27;
        *v23 = v27;
        _os_log_impl(&dword_19A2DE000, v17, v18, "%s image generation failed - %@", v22, 0x16u);
        sub_19A2F3FA0(v23, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v23, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x19A902C50](v24, -1, -1);
        MEMORY[0x19A902C50](v22, -1, -1);

        v28 = *(v0 + 440);
        if (!v28)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v28 = *(v0 + 440);
        if (!v28)
        {
          goto LABEL_13;
        }
      }
    }

    v35 = *(v0 + 648);
    v36 = *(v0 + 456);
    *v35 = v2;
    swift_storeEnumTagMultiPayload();
    v37 = v2;
    v28(v36, v35);
    sub_19A49BD0C(v35, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_13:
    v38 = *(v0 + 888);
    v39 = *(v0 + 848);
    v40 = *(v0 + 832);
    v41 = *(v0 + 824);
    v42 = *(v0 + 784);
    v43 = *(v0 + 776);
    swift_willThrow();
    sub_19A49954C("generateImagesTask", 18, 2, v38, v43, v42);

    (*(v40 + 8))(v39, v41);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

    v44 = *(v0 + 8);

    return v44();
  }

  v29 = *(*(v0 + 456) + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker);
  *(v0 + 1024) = v29;
  v30 = *(v29 + 16);
  os_unfair_lock_lock((v30 + 80));
  v31 = *(v30 + 64);
  v32 = *(v30 + 72);
  if (v31)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    v34 = sub_19A3558EC;
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  sub_19A2E0A50(v31, v32);
  os_unfair_lock_unlock((v30 + 80));
  if (v31)
  {
    v46 = *(v0 + 324);
    v47 = *(v0 + 904);
    v48 = *(v0 + 664);
    v119[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_19A576E10;
    *(v49 + 32) = 0xD000000000000010;
    *(v49 + 40) = 0x800000019A5954D0;
    *(v49 + 72) = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v49 + 48));
    sub_19A49BEA0(v47 + v46, boxed_opaque_existential_1, type metadata accessor for GenerationRecipe);
    sub_19A2E0A50(v34, v33);
    v51 = sub_19A330370(v49);
    swift_setDeallocating();
    sub_19A2F3FA0(v49 + 32, &qword_1EAFA2F00, &qword_19A578A30);
    swift_deallocClassInstance();
    sub_19A338028(v119, v51, &v114);
    v34(&v114);
    sub_19A2E0A60(v34, v33);
    sub_19A2E0A60(v34, v33);
  }

  v52 = *(v0 + 456);
  v53 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
  *(v0 + 1032) = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
  v54 = v52 + v53;
  v55 = *v54;
  if (*v54)
  {
    v56 = *(v54 + 8);
    v57 = *(v54 + 16);

    v58 = sub_19A5723DC();
    v59 = sub_19A57356C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 800);
      v61 = *(v0 + 792);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v114 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_19A31F114(v61, v60, &v114);
      _os_log_impl(&dword_19A2DE000, v58, v59, "engineered prompt language check for %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x19A902C50](v63, -1, -1);
      MEMORY[0x19A902C50](v62, -1, -1);
    }

    v64 = *(v0 + 324);
    v65 = *(v0 + 904);
    v66 = *(v0 + 720);
    v114 = v55;
    v115 = v56;
    LODWORD(v116) = v57;
    sub_19A49BEA0(v65 + v64, v66, type metadata accessor for GenerationRecipe);
    v81 = sub_19A42FC48(v66);
    sub_19A49BD0C(*(v0 + 720), type metadata accessor for GenerationRecipe);
    sub_19A432418();
    v67 = *(v0 + 440);
    if (v81 & 1 | (v67 == 0))
    {
      goto LABEL_27;
    }

    v52 = *(v0 + 456);
    goto LABEL_26;
  }

  v67 = *(v0 + 440);
  if (v67)
  {
LABEL_26:
    v68 = *(v0 + 648);
    swift_storeEnumTagMultiPayload();
    v67(v52, v68);
    sub_19A49BD0C(v68, type metadata accessor for GenerativePlayground.GenerationEvent);
  }

LABEL_27:
  *(v0 + 1040) = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v69 = sub_19A57234C();
  v70 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v69, v70, v72, "generateImages", "", v71, 2u);
    MEMORY[0x19A902C50](v71, -1, -1);
  }

  v73 = *(v0 + 936);
  v109 = *(v0 + 904);
  v111 = *(v0 + 324);
  v74 = *(v0 + 864);
  v75 = *(v0 + 712);
  v76 = *(v0 + 456);

  v77 = (v76 + v73);
  swift_task_alloc();
  v74();
  swift_allocObject();
  *(v0 + 1048) = sub_19A5723AC();

  sub_19A49BEA0(v109 + v111, v75, type metadata accessor for GenerationRecipe);
  v79 = *v77;
  v78 = v77[1];
  v80 = v77[2];

  sub_19A40FB04(v75, &v114);
  v82 = v114;
  v83 = v116;
  v84 = v118;
  v110 = v115;
  v112 = v117;
  v85 = AppleDiffusionAdapter.modelCatalogResourceBundleIdentifier.getter(v114);
  v86 = *(v0 + 712);
  v87 = v85;
  v89 = v88;
  v90 = AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(v82);
  v114 = v79;
  v115 = v78;
  v116 = v80;
  v92 = sub_19A40FD54(v87, v89, v110, v83, v90, v91, &v114, v112, v84);
  sub_19A49BD0C(v86, type metadata accessor for GenerationRecipe);

  *(v0 + 1056) = v92;
  v93 = *(v0 + 324);
  v94 = *(v0 + 920);
  v95 = *(v0 + 912);
  v96 = *(v0 + 904);
  v97 = *(v0 + 704);
  v98 = *(v0 + 608);
  v99 = *(v0 + 456);
  v100 = (v99 + *(v0 + 936));
  sub_19A33546C(v99 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, v98 + *(*(v0 + 600) + 24), &qword_1EAF9FDC8, &qword_19A577310);
  *v98 = v92;
  v98[1] = v95;
  v98[2] = v94;
  v101 = *(v0 + 136);
  v102 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v101);
  sub_19A49BEA0(v96 + v93, v97, type metadata accessor for GenerationRecipe);
  v103 = v100[1];
  v104 = v100[2];
  *(v0 + 256) = *v100;
  *(v0 + 264) = v103;
  *(v0 + 272) = v104;
  v105 = *(v102 + 40);
  sub_19A2E0A50(v95, v94);

  v113 = (v105 + *v105);
  v106 = swift_task_alloc();
  *(v0 + 1064) = v106;
  *v106 = v0;
  v106[1] = sub_19A48F56C;
  v107 = *(v0 + 704);
  v108 = *(v0 + 608);

  return v113(v107, v0 + 256, v108, v101, v102);
}

uint64_t sub_19A48EF9C()
{
  v40 = v0;
  sub_19A2E0A60(*(v0 + 912), *(v0 + 920));
  v1 = *(v0 + 1016);
  sub_19A368930(v0 + 16);

  *(v0 + 392) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v3 = v1;
    v4 = sub_19A5723DC();
    v5 = sub_19A57356C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 800);
    if (v6)
    {
      v8 = *(v0 + 792);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39[0] = v11;
      *v9 = 136315394;
      v12 = sub_19A31F114(v8, v7, v39);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v14;
      *v10 = v14;
      _os_log_impl(&dword_19A2DE000, v4, v5, "%s image generation cancelled - %@", v9, 0x16u);
      sub_19A2F3FA0(v10, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x19A902C50](v11, -1, -1);
      MEMORY[0x19A902C50](v9, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v27 = *(v0 + 440);
    if (!v27)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = v1;
  v16 = sub_19A5723DC();
  v17 = sub_19A57355C();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 800);
  if (v18)
  {
    v20 = *(v0 + 792);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v21 = 136315394;
    v24 = sub_19A31F114(v20, v19, v39);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2112;
    v25 = v1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    *v22 = v26;
    _os_log_impl(&dword_19A2DE000, v16, v17, "%s image generation failed - %@", v21, 0x16u);
    sub_19A2F3FA0(v22, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x19A902C50](v23, -1, -1);
    MEMORY[0x19A902C50](v21, -1, -1);

    v27 = *(v0 + 440);
    if (!v27)
    {
      goto LABEL_10;
    }

LABEL_9:
    v28 = *(v0 + 648);
    v29 = *(v0 + 456);
    *v28 = v1;
    swift_storeEnumTagMultiPayload();
    v30 = v1;
    v27(v29, v28);
    sub_19A49BD0C(v28, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v27 = *(v0 + 440);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_10:
  v31 = *(v0 + 888);
  v32 = *(v0 + 848);
  v33 = *(v0 + 832);
  v34 = *(v0 + 824);
  v35 = *(v0 + 784);
  v36 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v31, v36, v35);

  (*(v33 + 8))(v32, v34);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_19A48F56C(uint64_t a1)
{
  v3 = *v2;
  v3[134] = a1;
  v3[135] = v1;

  if (v1)
  {
    v4 = v3[88];

    sub_19A49BD0C(v4, type metadata accessor for GenerationRecipe);
    v5 = sub_19A4951A4;
  }

  else
  {
    v6 = v3[88];

    sub_19A49BD0C(v6, type metadata accessor for GenerationRecipe);
    v5 = sub_19A48F6D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A48F6D4()
{
  v173 = v0;
  v167 = v0 + 16;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 992);
  v3 = *(v0 + 824);
  v4 = *(v0 + 608);

  sub_19A49BD0C(v4, type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);

  sub_19A499D4C("generateImages", 14, 2);

  v2(v1, v3);

  *(v0 + 1088) = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "postProcessGeneratedImages", "GenerativePlayground.GenerationTask", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v170 = *(v0 + 1072);
  v168 = *(v0 + 324);
  v9 = *(v0 + 904);
  v10 = *(v0 + 864);
  v11 = *(v0 + 744);

  swift_task_alloc();
  v10();
  swift_allocObject();
  *(v0 + 1096) = sub_19A5723AC();

  sub_19A49BEA0(v9 + v168, v11, type metadata accessor for GenerationRecipe);
  sub_19A39C154(v172);
  sub_19A49BD0C(v11, type metadata accessor for GenerationRecipe);
  v12 = v172[0];

  *(v0 + 322) = sub_19A410B24(v12, &unk_1F0DA7BF0) & 1;
  sub_19A49BEA0(v9 + v168, v11, type metadata accessor for GenerationRecipe);
  *(v0 + 323) = sub_19A39BD48() & 1;
  v13 = sub_19A49BD0C(v11, type metadata accessor for GenerationRecipe);
  v14 = *(v170 + 16);
  *(v0 + 1104) = v14;
  if (v14)
  {
    v15 = *(v0 + 664);
    v16 = *(v0 + 592);
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 544);
    v171 = *(v0 + 1080);
    *(v0 + 1120) = 0;
    *(v0 + 1112) = MEMORY[0x1E69E7CC0];
    v20 = *(v0 + 1072);
    if (*(v20 + 16))
    {
      v21 = *(v0 + 1024);
      v22 = *(v0 + 552);
      v23 = *(v0 + 536);
      v24 = *(v0 + 904) + *(v0 + 324);
      v25 = *(v17 + 80);
      *(v0 + 372) = v25;
      *(v0 + 1128) = *(v17 + 72);
      sub_19A49BEA0(v20 + ((v25 + 32) & ~v25), v16, type metadata accessor for GeneratedImage);
      (*(v19 + 16))(v22, v24 + *(v15 + 72), v23);
      LOBYTE(v172[0]) = *(v16 + *(v18 + 24));
      v26 = sub_19A35563C(v172);
      *(v0 + 388) = v26;
      v27 = *(v21 + 16);
      os_unfair_lock_lock((v27 + 80));
      v28 = *(v27 + 64);
      v29 = *(v27 + 72);
      if (v28)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v29;
        v31 = sub_19A3558EC;
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      sub_19A2E0A50(v28, v29);
      os_unfair_lock_unlock((v27 + 80));
      if (!v28 || (v40 = *(v0 + 592), sub_19A2E0A60(v31, v30), v41 = *(v40 + 8), *(v0 + 376) = *v40, *(v0 + 384) = v41, v42 = sub_19A4CEB54(), v43 >> 60 == 15))
      {
        v44 = 0;
        v45 = 0;
LABEL_13:
        *(v0 + 1136) = v45;
        *(v0 + 369) = v44;
        v46 = *(v0 + 323);
        v47 = *(v0 + 322);
        v48 = *(v0 + 592);
        v49 = *v48;
        *(v0 + 1144) = *v48;
        v50 = *(v48 + 8);
        v51 = v49;
        *(v0 + 360) = v49;
        *(v0 + 368) = v50;
        v52 = swift_task_alloc();
        *(v0 + 1152) = v52;
        *v52 = v0;
        v52[1] = sub_19A490A9C;
        if (v47)
        {
          v53 = v46 | 2;
        }

        else
        {
          v53 = v46;
        }

        v54 = *(v0 + 552);

        return sub_19A353D4C(v0 + 360, v26, v53, v54);
      }

      v56 = *(v0 + 592);
      v57 = *(v0 + 560);
      v58 = v42;
      v59 = v43;
      v169 = sub_19A570F1C();
      v166 = v60;
      sub_19A33EFB0(v58, v59);
      *(v0 + 321) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_19A576E20;
      *(v61 + 32) = 0x69746172656E6567;
      *(v61 + 40) = 0xEA00000000006E6FLL;
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_19A576E20;
      *(v62 + 32) = 25705;
      *(v62 + 40) = 0xE200000000000000;
      v63 = v56 + *(v57 + 20);
      v64 = type metadata accessor for ImageProvenance(0);
      v65 = sub_19A570FDC();
      v66 = MEMORY[0x1E69E6158];
      *(v62 + 48) = v65;
      *(v62 + 56) = v67;
      *(v62 + 72) = v66;
      strcpy((v62 + 80), "representation");
      *(v62 + 95) = -18;
      v68 = *(v63 + *(v64 + 24));
      *(v62 + 120) = MEMORY[0x1E69E6530];
      *(v62 + 96) = v68;
      v69 = sub_19A330370(v62);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00, &qword_19A578A30);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210, &qword_19A57BCA0);
      *(v61 + 48) = v69;
      *(v61 + 72) = v70;
      strcpy((v61 + 80), "pngImageData");
      *(v61 + 120) = v66;
      *(v61 + 93) = 0;
      *(v61 + 94) = -5120;
      *(v61 + 96) = v169;
      *(v61 + 104) = v166;
      v71 = sub_19A330370(v61);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_19A338028((v0 + 321), v71, v0 + 344);
      if (!v171)
      {
        v44 = *(v0 + 344);
        v45 = *(v0 + 352);
        goto LABEL_13;
      }

      v34 = v171;
      v72 = *(v0 + 760);
      v73 = *(v0 + 552);
      v74 = *(v0 + 536);

      v72(v73, v74);

      v75 = *(v0 + 1088);
      v76 = *(v0 + 992);
      v77 = *(v0 + 920);
      v78 = *(v0 + 912);
      v79 = *(v0 + 824);
      sub_19A49BD0C(*(v0 + 592), type metadata accessor for GeneratedImage);
      sub_19A499D4C("postProcessGeneratedImages", 26, 2);

      sub_19A2E0A60(v78, v77);
      v76(v75, v79);
LABEL_21:

      sub_19A368930(v167);

      *(v0 + 392) = v34;
      v80 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
      if (swift_dynamicCast())
      {

        v81 = v34;
        v82 = sub_19A5723DC();
        v83 = sub_19A57356C();

        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 800);
        if (v84)
        {
          v86 = *(v0 + 792);
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v172[0] = v89;
          *v87 = 136315394;
          v90 = sub_19A31F114(v86, v85, v172);

          *(v87 + 4) = v90;
          *(v87 + 12) = 2112;
          v91 = v34;
          v92 = _swift_stdlib_bridgeErrorToNSError();
          *(v87 + 14) = v92;
          *v88 = v92;
          _os_log_impl(&dword_19A2DE000, v82, v83, "%s image generation cancelled - %@", v87, 0x16u);
          sub_19A2F3FA0(v88, &qword_1EAF9FD28, &qword_19A577340);
          MEMORY[0x19A902C50](v88, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v89);
          MEMORY[0x19A902C50](v89, -1, -1);
          MEMORY[0x19A902C50](v87, -1, -1);
        }

        else
        {
        }

        (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

        v105 = *(v0 + 440);
        if (!v105)
        {
          goto LABEL_37;
        }
      }

      else
      {

        v93 = v34;
        v94 = sub_19A5723DC();
        v95 = sub_19A57355C();

        v96 = os_log_type_enabled(v94, v95);
        v97 = *(v0 + 800);
        if (v96)
        {
          v98 = *(v0 + 792);
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v172[0] = v101;
          *v99 = 136315394;
          v102 = sub_19A31F114(v98, v97, v172);

          *(v99 + 4) = v102;
          *(v99 + 12) = 2112;
          v103 = v34;
          v104 = _swift_stdlib_bridgeErrorToNSError();
          *(v99 + 14) = v104;
          *v100 = v104;
          _os_log_impl(&dword_19A2DE000, v94, v95, "%s image generation failed - %@", v99, 0x16u);
          sub_19A2F3FA0(v100, &qword_1EAF9FD28, &qword_19A577340);
          MEMORY[0x19A902C50](v100, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v101);
          MEMORY[0x19A902C50](v101, -1, -1);
          MEMORY[0x19A902C50](v99, -1, -1);

          v105 = *(v0 + 440);
          if (!v105)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v105 = *(v0 + 440);
          if (!v105)
          {
            goto LABEL_37;
          }
        }
      }

      v128 = *(v0 + 648);
      v129 = *(v0 + 456);
      *v128 = v34;
      swift_storeEnumTagMultiPayload();
      v130 = v34;
      v105(v129, v128);
      sub_19A49BD0C(v128, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_37:
      v131 = *(v0 + 888);
      v132 = *(v0 + 848);
      v133 = *(v0 + 832);
      v134 = *(v0 + 824);
      v135 = *(v0 + 784);
      v136 = *(v0 + 776);
      swift_willThrow();
      sub_19A49954C("generateImagesTask", 18, 2, v131, v136, v135);

      (*(v133 + 8))(v132, v134);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

      v137 = *(v0 + 8);

      return v137();
    }

    __break(1u);
    return MEMORY[0x1EEE6DBF8](v13);
  }

  v32 = *(v0 + 1080);
  v33 = MEMORY[0x1E69E7CC0];
  *(v0 + 1176) = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();
  *(v0 + 400) = v33;
  sub_19A432418();
  if (v32)
  {
    v34 = v32;
    v35 = *(v0 + 1088);
    v36 = *(v0 + 992);
    v37 = *(v0 + 920);
    v38 = *(v0 + 912);
    v39 = *(v0 + 824);
    sub_19A499D4C("postProcessGeneratedImages", 26, 2);

    sub_19A2E0A60(v38, v37);
    v36(v35, v39);
    goto LABEL_21;
  }

  v106 = *(v0 + 696);
  v107 = *(v0 + 664);
  sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v106, type metadata accessor for GenerationRecipe);
  v108 = v106 + *(v107 + 92);
  v109 = *(v0 + 696);
  if (*(v108 + 24))
  {
    v110 = *(v108 + 80);
    sub_19A49BD0C(v109, type metadata accessor for GenerationRecipe);
    if (v110)
    {
      v111 = *(v0 + 688);
      sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v111, type metadata accessor for GenerationRecipe);
      v112 = v111 + *(v107 + 92);
      v113 = *(v112 + 24);
      *(v0 + 1184) = v113;
      *(v0 + 1192) = *(v112 + 32);
      if (v113)
      {
        v114 = *(v0 + 324);
        v115 = *(v0 + 904);
        v116 = *(v0 + 688);
        v117 = *(v0 + 680);
        v118 = v113;

        sub_19A49BD0C(v116, type metadata accessor for GenerationRecipe);
        sub_19A49BEA0(v115 + v114, v117, type metadata accessor for GenerationRecipe);
        v119 = (v117 + *(v107 + 92));
        v120 = v119[3];
        v121 = v119[8];
        *(v0 + 1200) = v121;
        *(v0 + 1208) = v119[9];
        if (v120)
        {
          v122 = *(v0 + 680);
          v123 = v121;

          sub_19A49BD0C(v122, type metadata accessor for GenerationRecipe);
          v124 = v118;
          v125 = v123;
          v126 = swift_task_alloc();
          *(v0 + 1216) = v126;
          *v126 = v0;
          v126[1] = sub_19A492BBC;
          v127 = MEMORY[0x1E69E7CC0];

          return sub_19A498A1C(v127, v113, v123);
        }

        v158 = (v0 + 680);
      }

      else
      {
        v158 = (v0 + 688);
      }

      v159 = *v158;
      v160 = *(v0 + 1088);
      v161 = *(v0 + 992);
      v162 = *(v0 + 920);
      v163 = *(v0 + 912);
      v164 = *(v0 + 824);
      sub_19A49BD0C(v159, type metadata accessor for GenerationRecipe);
      type metadata accessor for GeneratorError(0);
      sub_19A49BE48(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
      v34 = swift_allocError();
      *v165 = 0xD000000000000029;
      v165[1] = 0x800000019A59B330;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_19A499D4C("postProcessGeneratedImages", 26, 2);

      sub_19A2E0A60(v163, v162);
      v161(v160, v164);
      goto LABEL_21;
    }
  }

  else
  {
    sub_19A49BD0C(v109, type metadata accessor for GenerationRecipe);
  }

  *(v0 + 1248) = v33;
  *(v0 + 1240) = 0;
  if (*(*(v0 + 456) + *(v0 + 1032) + 56) == 1)
  {
    v138 = *(v0 + 928);
    v139 = *(v0 + 464);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    v141 = swift_task_alloc();
    *(v0 + 1256) = v141;
    v141[2] = v33;
    v141[3] = v139;
    v141[4] = v138;
    v142 = swift_task_alloc();
    *(v0 + 1264) = v142;
    *v142 = v0;
    v142[1] = sub_19A493688;
    v175 = v140;
    v13 = v0 + 424;

    return MEMORY[0x1EEE6DBF8](v13);
  }

  v143 = sub_19A5723DC();
  v144 = sub_19A57356C();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = *(v0 + 800);
    v146 = *(v0 + 792);
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v172[0] = v148;
    *v147 = 136315138;
    *(v147 + 4) = sub_19A31F114(v146, v145, v172);
    _os_log_impl(&dword_19A2DE000, v143, v144, "generated images policy check of %s", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v148);
    MEMORY[0x19A902C50](v148, -1, -1);
    MEMORY[0x19A902C50](v147, -1, -1);
  }

  v149 = *(v0 + 896);
  v150 = *(v0 + 800);
  v151 = *(v0 + 792);
  v152 = *(v0 + 672);
  sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v152, type metadata accessor for GenerationRecipe);
  v153 = swift_task_alloc();
  *(v0 + 1272) = v153;
  v153[2] = v0 + 400;
  v153[3] = v151;
  v153[4] = v150;
  v153[5] = v152;
  v153[6] = v167;
  v153[7] = v149;
  v154 = swift_task_alloc();
  *(v0 + 1280) = v154;
  *v154 = v0;
  v154[1] = sub_19A493FD4;
  v155 = MEMORY[0x1E69E7CA8] + 8;
  v175 = MEMORY[0x1E69E7CA8] + 8;
  v156 = MEMORY[0x1E69E7CA8] + 8;
  v157 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v154, v155, v156, 0, 0, &unk_19A58BA58, v153, v157);
}

uint64_t sub_19A490A9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1160) = a1;
  *(v3 + 1168) = v1;

  if (v1)
  {
    v4 = sub_19A492538;
  }

  else
  {
    v4 = sub_19A490BB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A490BB4()
{
  v219 = v0;
  v216 = v0 + 16;
  v1 = *(v0 + 1160);
  if (!v1)
  {

    v215 = *(v0 + 1168);
    v7 = 3;
    goto LABEL_34;
  }

  v2 = *(*(v0 + 1024) + 16);
  os_unfair_lock_lock((v2 + 80));
  v4 = *(v2 + 64);
  v3 = *(v2 + 72);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = sub_19A3555A0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_19A2E0A50(v4, v3);
  os_unfair_lock_unlock((v2 + 80));
  if (v4)
  {
    if (*(v0 + 1136))
    {
      sub_19A2E0A50(v6, v5);

      v8 = [v1 signals];
      if (v8)
      {
        v9 = v8;
        v218[0] = 0;
        sub_19A355554();
        sub_19A572AEC();

        sub_19A2E0A60(v6, v5);
        sub_19A2E0A60(v6, v5);

        goto LABEL_12;
      }

      sub_19A2E0A60(v6, v5);
    }

    sub_19A2E0A60(v6, v5);
  }

LABEL_12:
  v215 = *(v0 + 1168);
  v10 = *(v0 + 388);
  os_unfair_lock_lock((v2 + 80));
  v11 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 80));
  sub_19A354CA4(v11, v10, v218);
  v12 = LOBYTE(v218[0]);
  os_unfair_lock_lock((v2 + 80));
  v13 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 80));
  if ((v13 & 1) != 0 && ([v1 safe] & 1) == 0)
  {
    if (qword_1ED824050 == -1)
    {
LABEL_19:
      __swift_project_value_buffer(*(v0 + 808), qword_1ED82BCF0);
      v30 = sub_19A5723DC();
      v31 = sub_19A57353C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v218[0] = v33;
        *v32 = 136315138;
        if (v12 <= 3)
        {
          v156 = 0x800000019A595530;
          v157 = 0xD000000000000014;
          if (v12 != 2)
          {
            v157 = 0xD000000000000012;
            v156 = 0x800000019A595550;
          }

          v158 = 0x800000019A5954F0;
          v159 = 0xD000000000000011;
          if (v12)
          {
            v158 = 0x800000019A595510;
          }

          else
          {
            v159 = 0xD000000000000017;
          }

          if (v12 <= 1)
          {
            v38 = v159;
          }

          else
          {
            v38 = v157;
          }

          if (v12 <= 1)
          {
            v39 = v158;
          }

          else
          {
            v39 = v156;
          }
        }

        else
        {
          v34 = 0xEE006567616D4974;
          v35 = 0x75706E4965636166;
          if (v12 != 7)
          {
            v35 = 0x6669636570736E75;
            v34 = 0xEB00000000646569;
          }

          if (v12 == 6)
          {
            v35 = 0xD000000000000020;
            v34 = 0x800000019A5955B0;
          }

          v36 = 0x800000019A595570;
          v37 = 0xD00000000000001DLL;
          if (v12 != 4)
          {
            v37 = 0xD000000000000012;
            v36 = 0x800000019A595590;
          }

          if (v12 <= 5)
          {
            v38 = v37;
          }

          else
          {
            v38 = v35;
          }

          if (v12 <= 5)
          {
            v39 = v36;
          }

          else
          {
            v39 = v34;
          }
        }

        v160 = sub_19A31F114(v38, v39, v218);

        *(v32 + 4) = v160;
        _os_log_impl(&dword_19A2DE000, v30, v31, "An image was rejected by the image checker. Rejection category: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x19A902C50](v33, -1, -1);
        MEMORY[0x19A902C50](v32, -1, -1);
      }

      v161 = *(v0 + 1144);
      v162 = v1;
      sub_19A43A488(v162, v218);
      v163 = v218[0];
      v164 = v218[1];
      v165 = v218[2] | 0x10000000;
      sub_19A355134();
      v166 = swift_allocError();
      *v167 = v12;
      v167[1] = v163;
      v54 = v166;
      v167[2] = v164;
      v167[3] = v165;
      swift_willThrow();

      (*(v0 + 760))(*(v0 + 552), *(v0 + 536));
      goto LABEL_87;
    }

LABEL_108:
    swift_once();
    goto LABEL_19;
  }

  v14 = *(v0 + 504);
  v15 = *(v0 + 512);
  v16 = *(v0 + 496);
  sub_19A57368C();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = *(v0 + 1144);
    v18 = *(v0 + 496);

    sub_19A2F3FA0(v18, &qword_1EAFA0518, &qword_19A57AD50);

    v7 = 3;
  }

  else
  {
    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);
    (*(v21 + 32))(v19, *(v0 + 496), v22);
    (*(v21 + 16))(v20, v19, v22);
    v23 = sub_19A571FAC();
    v24 = *(v0 + 1144);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 504);
    v28 = *(v0 + 512);
    if (v23)
    {

      v29 = *(v28 + 8);
      v29(v26, v27);
      v29(v25, v27);

      v7 = 2;
    }

    else
    {
      v40 = sub_19A571FBC();

      v41 = *(v28 + 8);
      v41(v26, v27);
      v41(v25, v27);

      v7 = v40 & 1;
    }
  }

LABEL_34:
  v42 = *(v0 + 592);
  v43 = *(v0 + 584);
  v44 = *(v0 + 576);
  v45 = *(v0 + 560);
  (*(v0 + 760))(*(v0 + 552), *(v0 + 536));
  sub_19A49BEA0(v42, v43, type metadata accessor for GeneratedImage);
  *(v43 + *(v45 + 40)) = v7;
  sub_19A49BEA0(v43, v44, type metadata accessor for GeneratedImage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v0 + 1112);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_19A31DA3C(0, v47[2] + 1, 1, v47);
  }

  v49 = v47[2];
  v48 = v47[3];
  if (v49 >= v48 >> 1)
  {
    v217 = sub_19A31DA3C((v48 > 1), v49 + 1, 1, v47);
  }

  else
  {
    v217 = v47;
  }

  v50 = *(v0 + 1128);
  v51 = *(v0 + 1104);
  v52 = *(v0 + 592);
  v53 = *(v0 + 576);
  v12 = *(v0 + 1120) + 1;
  v1 = ((*(v0 + 372) + 32) & ~*(v0 + 372));
  sub_19A49BD0C(*(v0 + 584), type metadata accessor for GeneratedImage);
  sub_19A49BD0C(v52, type metadata accessor for GeneratedImage);
  v217[2] = v49 + 1;
  sub_19A49C18C(v53, v1 + v217 + v50 * v49, type metadata accessor for GeneratedImage);
  if (v12 != v51)
  {
    v60 = *(v0 + 1120) + 1;
    *(v0 + 1120) = v60;
    *(v0 + 1112) = v217;
    v61 = *(v0 + 1072);
    if (v60 < *(v61 + 16))
    {
      v62 = *(v0 + 1024);
      v63 = *(v0 + 664);
      v64 = *(v0 + 592);
      v65 = *(v0 + 568);
      v66 = *(v0 + 560);
      v67 = *(v0 + 552);
      v68 = *(v0 + 544);
      v69 = *(v0 + 536);
      v70 = *(v0 + 904) + *(v0 + 324);
      v71 = *(v65 + 80);
      *(v0 + 372) = v71;
      v72 = *(v65 + 72);
      *(v0 + 1128) = v72;
      sub_19A49BEA0(v61 + ((v71 + 32) & ~v71) + v72 * v60, v64, type metadata accessor for GeneratedImage);
      (*(v68 + 16))(v67, v70 + *(v63 + 72), v69);
      LOBYTE(v218[0]) = *(v64 + *(v66 + 24));
      v73 = sub_19A35563C(v218);
      *(v0 + 388) = v73;
      v74 = *(v62 + 16);
      os_unfair_lock_lock((v74 + 80));
      v76 = *(v74 + 64);
      v75 = *(v74 + 72);
      if (v76)
      {
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *(v77 + 24) = v75;
        v78 = sub_19A3558EC;
      }

      else
      {
        v78 = 0;
        v77 = 0;
      }

      sub_19A2E0A50(v76, v75);
      os_unfair_lock_unlock((v74 + 80));
      if (!v76 || (v101 = *(v0 + 592), sub_19A2E0A60(v78, v77), v102 = *(v101 + 8), *(v0 + 376) = *v101, *(v0 + 384) = v102, v103 = sub_19A4CEB54(), v104 >> 60 == 15))
      {
        v105 = 0;
        v106 = 0;
LABEL_55:
        *(v0 + 1136) = v106;
        *(v0 + 369) = v105;
        v107 = *(v0 + 323);
        v108 = *(v0 + 322);
        v109 = *(v0 + 592);
        v110 = *v109;
        *(v0 + 1144) = *v109;
        v111 = *(v109 + 8);
        v112 = v110;
        *(v0 + 360) = v110;
        *(v0 + 368) = v111;
        v113 = swift_task_alloc();
        *(v0 + 1152) = v113;
        *v113 = v0;
        v113[1] = sub_19A490A9C;
        if (v108)
        {
          v114 = v107 | 2;
        }

        else
        {
          v114 = v107;
        }

        v115 = *(v0 + 552);

        return sub_19A353D4C(v0 + 360, v73, v114, v115);
      }

      v116 = *(v0 + 592);
      v117 = *(v0 + 560);
      v118 = v103;
      v119 = v104;
      v120 = sub_19A570F1C();
      v214 = v121;
      sub_19A33EFB0(v118, v119);
      *(v0 + 321) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_19A576E20;
      *(v122 + 32) = 0x69746172656E6567;
      *(v122 + 40) = 0xEA00000000006E6FLL;
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_19A576E20;
      *(v123 + 32) = 25705;
      *(v123 + 40) = 0xE200000000000000;
      v124 = v116 + *(v117 + 20);
      v125 = type metadata accessor for ImageProvenance(0);
      v126 = sub_19A570FDC();
      v127 = MEMORY[0x1E69E6158];
      *(v123 + 48) = v126;
      *(v123 + 56) = v128;
      *(v123 + 72) = v127;
      strcpy((v123 + 80), "representation");
      *(v123 + 95) = -18;
      v129 = *(v124 + *(v125 + 24));
      *(v123 + 120) = MEMORY[0x1E69E6530];
      *(v123 + 96) = v129;
      v130 = sub_19A330370(v123);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00, &qword_19A578A30);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210, &qword_19A57BCA0);
      *(v122 + 48) = v130;
      *(v122 + 72) = v131;
      strcpy((v122 + 80), "pngImageData");
      *(v122 + 120) = MEMORY[0x1E69E6158];
      *(v122 + 93) = 0;
      *(v122 + 94) = -5120;
      *(v122 + 96) = v120;
      *(v122 + 104) = v214;
      v132 = sub_19A330370(v122);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_19A338028((v0 + 321), v132, v0 + 344);
      if (!v215)
      {
        v105 = *(v0 + 344);
        v106 = *(v0 + 352);
        goto LABEL_55;
      }

      v54 = v215;
      v133 = *(v0 + 760);
      v134 = *(v0 + 552);
      v135 = *(v0 + 536);

      v133(v134, v135);
LABEL_87:

      v55 = *(v0 + 1088);
      v56 = *(v0 + 992);
      v57 = *(v0 + 920);
      v58 = *(v0 + 912);
      v59 = *(v0 + 824);
      sub_19A49BD0C(*(v0 + 592), type metadata accessor for GeneratedImage);
      goto LABEL_88;
    }

    __break(1u);
    goto LABEL_108;
  }

  *(v0 + 1176) = v217;
  swift_bridgeObjectRelease_n();
  *(v0 + 400) = v217;
  sub_19A432418();
  if (v215)
  {
    v54 = v215;
    v55 = *(v0 + 1088);
    v56 = *(v0 + 992);
    v57 = *(v0 + 920);
    v58 = *(v0 + 912);
    v59 = *(v0 + 824);
LABEL_88:
    sub_19A499D4C("postProcessGeneratedImages", 26, 2);

    sub_19A2E0A60(v58, v57);
    v56(v55, v59);
    goto LABEL_89;
  }

  v79 = *(v0 + 696);
  v80 = *(v0 + 664);
  sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v79, type metadata accessor for GenerationRecipe);
  v81 = v79 + *(v80 + 92);
  v82 = *(v0 + 696);
  if (*(v81 + 24))
  {
    v83 = *(v81 + 80);
    sub_19A49BD0C(v82, type metadata accessor for GenerationRecipe);
    if (v83)
    {
      v84 = *(v0 + 688);
      sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v84, type metadata accessor for GenerationRecipe);
      v85 = v84 + *(v80 + 92);
      v86 = *(v85 + 24);
      *(v0 + 1184) = v86;
      *(v0 + 1192) = *(v85 + 32);
      if (v86)
      {
        v87 = *(v0 + 324);
        v88 = *(v0 + 904);
        v89 = *(v0 + 688);
        v90 = *(v0 + 680);
        v91 = v86;

        sub_19A49BD0C(v89, type metadata accessor for GenerationRecipe);
        sub_19A49BEA0(v88 + v87, v90, type metadata accessor for GenerationRecipe);
        v92 = (v90 + *(v80 + 92));
        v93 = v92[3];
        v94 = v92[8];
        *(v0 + 1200) = v94;
        *(v0 + 1208) = v92[9];
        if (v93)
        {
          v95 = *(v0 + 680);
          v96 = v94;

          sub_19A49BD0C(v95, type metadata accessor for GenerationRecipe);
          v97 = v91;
          v98 = v96;
          v99 = swift_task_alloc();
          *(v0 + 1216) = v99;
          *v99 = v0;
          v99[1] = sub_19A492BBC;

          return sub_19A498A1C(v217, v86, v96);
        }

        v204 = (v0 + 680);
      }

      else
      {
        v204 = (v0 + 688);
      }

      v205 = *v204;
      v206 = *(v0 + 1088);
      v207 = *(v0 + 992);
      v208 = *(v0 + 920);
      v209 = *(v0 + 912);
      v210 = *(v0 + 824);
      sub_19A49BD0C(v205, type metadata accessor for GenerationRecipe);
      type metadata accessor for GeneratorError(0);
      sub_19A49BE48(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
      v211 = swift_allocError();
      *v212 = 0xD000000000000029;
      v212[1] = 0x800000019A59B330;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_19A499D4C("postProcessGeneratedImages", 26, 2);

      v213 = v209;
      v54 = v211;
      sub_19A2E0A60(v213, v208);
      v207(v206, v210);
LABEL_89:

      sub_19A368930(v216);

      *(v0 + 392) = v54;
      v168 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
      if (swift_dynamicCast())
      {

        v169 = v54;
        v170 = sub_19A5723DC();
        v171 = sub_19A57356C();

        v172 = os_log_type_enabled(v170, v171);
        v173 = *(v0 + 800);
        if (v172)
        {
          v174 = *(v0 + 792);
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v218[0] = v177;
          *v175 = 136315394;
          v178 = sub_19A31F114(v174, v173, v218);

          *(v175 + 4) = v178;
          *(v175 + 12) = 2112;
          v179 = v54;
          v180 = _swift_stdlib_bridgeErrorToNSError();
          *(v175 + 14) = v180;
          *v176 = v180;
          _os_log_impl(&dword_19A2DE000, v170, v171, "%s image generation cancelled - %@", v175, 0x16u);
          sub_19A2F3FA0(v176, &qword_1EAF9FD28, &qword_19A577340);
          MEMORY[0x19A902C50](v176, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v177);
          MEMORY[0x19A902C50](v177, -1, -1);
          MEMORY[0x19A902C50](v175, -1, -1);
        }

        else
        {
        }

        (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

        v193 = *(v0 + 440);
        if (!v193)
        {
          goto LABEL_98;
        }
      }

      else
      {

        v181 = v54;
        v182 = sub_19A5723DC();
        v183 = sub_19A57355C();

        v184 = os_log_type_enabled(v182, v183);
        v185 = *(v0 + 800);
        if (v184)
        {
          v186 = *(v0 + 792);
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v218[0] = v189;
          *v187 = 136315394;
          v190 = sub_19A31F114(v186, v185, v218);

          *(v187 + 4) = v190;
          *(v187 + 12) = 2112;
          v191 = v54;
          v192 = _swift_stdlib_bridgeErrorToNSError();
          *(v187 + 14) = v192;
          *v188 = v192;
          _os_log_impl(&dword_19A2DE000, v182, v183, "%s image generation failed - %@", v187, 0x16u);
          sub_19A2F3FA0(v188, &qword_1EAF9FD28, &qword_19A577340);
          MEMORY[0x19A902C50](v188, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v189);
          MEMORY[0x19A902C50](v189, -1, -1);
          MEMORY[0x19A902C50](v187, -1, -1);

          v193 = *(v0 + 440);
          if (!v193)
          {
            goto LABEL_98;
          }
        }

        else
        {

          v193 = *(v0 + 440);
          if (!v193)
          {
            goto LABEL_98;
          }
        }
      }

      v194 = *(v0 + 648);
      v195 = *(v0 + 456);
      *v194 = v54;
      swift_storeEnumTagMultiPayload();
      v196 = v54;
      v193(v195, v194);
      sub_19A49BD0C(v194, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_98:
      v197 = *(v0 + 888);
      v198 = *(v0 + 848);
      v199 = *(v0 + 832);
      v200 = *(v0 + 824);
      v201 = *(v0 + 784);
      v202 = *(v0 + 776);
      swift_willThrow();
      sub_19A49954C("generateImagesTask", 18, 2, v197, v202, v201);

      (*(v199 + 8))(v198, v200);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

      v203 = *(v0 + 8);

      return v203();
    }
  }

  else
  {
    sub_19A49BD0C(v82, type metadata accessor for GenerationRecipe);
  }

  *(v0 + 1248) = v217;
  *(v0 + 1240) = 0;
  if (*(*(v0 + 456) + *(v0 + 1032) + 56) == 1)
  {
    v136 = *(v0 + 928);
    v137 = *(v0 + 464);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    v139 = swift_task_alloc();
    *(v0 + 1256) = v139;
    v139[2] = v217;
    v139[3] = v137;
    v139[4] = v136;
    v140 = swift_task_alloc();
    *(v0 + 1264) = v140;
    *v140 = v0;
    v140[1] = sub_19A493688;
    v221 = v138;

    return MEMORY[0x1EEE6DBF8](v0 + 424);
  }

  else
  {

    v141 = sub_19A5723DC();
    v142 = sub_19A57356C();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = *(v0 + 800);
      v144 = *(v0 + 792);
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v218[0] = v146;
      *v145 = 136315138;
      *(v145 + 4) = sub_19A31F114(v144, v143, v218);
      _os_log_impl(&dword_19A2DE000, v141, v142, "generated images policy check of %s", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v146);
      MEMORY[0x19A902C50](v146, -1, -1);
      MEMORY[0x19A902C50](v145, -1, -1);
    }

    v147 = *(v0 + 896);
    v148 = *(v0 + 800);
    v149 = *(v0 + 792);
    v150 = *(v0 + 672);
    sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v150, type metadata accessor for GenerationRecipe);
    v151 = swift_task_alloc();
    *(v0 + 1272) = v151;
    v151[2] = v0 + 400;
    v151[3] = v149;
    v151[4] = v148;
    v151[5] = v150;
    v151[6] = v216;
    v151[7] = v147;
    v152 = swift_task_alloc();
    *(v0 + 1280) = v152;
    *v152 = v0;
    v152[1] = sub_19A493FD4;
    v153 = MEMORY[0x1E69E7CA8] + 8;
    v221 = MEMORY[0x1E69E7CA8] + 8;
    v154 = MEMORY[0x1E69E7CA8] + 8;
    v155 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v152, v153, v154, 0, 0, &unk_19A58BA58, v151, v155);
  }
}

uint64_t sub_19A492538()
{
  v46 = v0;
  v1 = *(v0 + 1144);

  v2 = *(v0 + 1168);
  (*(v0 + 760))(*(v0 + 552), *(v0 + 536));

  v3 = *(v0 + 1088);
  v4 = *(v0 + 992);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  v7 = *(v0 + 824);
  sub_19A49BD0C(*(v0 + 592), type metadata accessor for GeneratedImage);
  sub_19A499D4C("postProcessGeneratedImages", 26, 2);

  sub_19A2E0A60(v6, v5);
  v4(v3, v7);

  sub_19A368930(v0 + 16);

  *(v0 + 392) = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v9 = v2;
    v10 = sub_19A5723DC();
    v11 = sub_19A57356C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 800);
    if (v12)
    {
      v14 = *(v0 + 792);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v15 = 136315394;
      v18 = sub_19A31F114(v14, v13, v45);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_19A2DE000, v10, v11, "%s image generation cancelled - %@", v15, 0x16u);
      sub_19A2F3FA0(v16, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v2;
  v22 = sub_19A5723DC();
  v23 = sub_19A57355C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 800);
  if (v24)
  {
    v26 = *(v0 + 792);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v27 = 136315394;
    v30 = sub_19A31F114(v26, v25, v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2112;
    v31 = v2;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v32;
    *v28 = v32;
    _os_log_impl(&dword_19A2DE000, v22, v23, "%s image generation failed - %@", v27, 0x16u);
    sub_19A2F3FA0(v28, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x19A902C50](v29, -1, -1);
    MEMORY[0x19A902C50](v27, -1, -1);

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

LABEL_9:
    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    *v34 = v2;
    swift_storeEnumTagMultiPayload();
    v36 = v2;
    v33(v35, v34);
    sub_19A49BD0C(v34, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v33 = *(v0 + 440);
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  v37 = *(v0 + 888);
  v38 = *(v0 + 848);
  v39 = *(v0 + 832);
  v40 = *(v0 + 824);
  v41 = *(v0 + 784);
  v42 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v37, v42, v41);

  (*(v39 + 8))(v38, v40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_19A492BBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1224) = a1;
  *(v3 + 1232) = v1;

  if (v1)
  {
    v4 = sub_19A4957EC;
  }

  else
  {
    v4 = sub_19A492CD4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A492CD4()
{
  v73 = v0;
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);

  *(v0 + 400) = v2;
  sub_19A432418();
  if (v1)
  {
    v3 = *(v0 + 1200);
    v4 = *(v0 + 1184);
    v5 = *(v0 + 1088);
    v71 = *(v0 + 992);
    v6 = *(v0 + 920);
    v7 = *(v0 + 912);
    v70 = *(v0 + 824);

    sub_19A499D4C("postProcessGeneratedImages", 26, 2);

    v8 = v7;
    v9 = v1;
    sub_19A2E0A60(v8, v6);
    v71(v5, v70);

    sub_19A368930(v0 + 16);

    *(v0 + 392) = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {

      v11 = v1;
      v12 = sub_19A5723DC();
      v13 = sub_19A57356C();

      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 800);
      if (v14)
      {
        v16 = *(v0 + 792);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v72 = v19;
        *v17 = 136315394;
        v20 = sub_19A31F114(v16, v15, &v72);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2112;
        v21 = v9;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v22;
        *v18 = v22;
        _os_log_impl(&dword_19A2DE000, v12, v13, "%s image generation cancelled - %@", v17, 0x16u);
        sub_19A2F3FA0(v18, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x19A902C50](v19, -1, -1);
        MEMORY[0x19A902C50](v17, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

      v43 = *(v0 + 440);
      if (!v43)
      {
        goto LABEL_20;
      }
    }

    else
    {

      v31 = v1;
      v32 = sub_19A5723DC();
      v33 = sub_19A57355C();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 800);
      if (v34)
      {
        v36 = *(v0 + 792);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v72 = v39;
        *v37 = 136315394;
        v40 = sub_19A31F114(v36, v35, &v72);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2112;
        v41 = v9;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v42;
        *v38 = v42;
        _os_log_impl(&dword_19A2DE000, v32, v33, "%s image generation failed - %@", v37, 0x16u);
        sub_19A2F3FA0(v38, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x19A902C50](v39, -1, -1);
        MEMORY[0x19A902C50](v37, -1, -1);

        v43 = *(v0 + 440);
        if (!v43)
        {
          goto LABEL_20;
        }
      }

      else
      {

        v43 = *(v0 + 440);
        if (!v43)
        {
          goto LABEL_20;
        }
      }
    }

    v59 = *(v0 + 648);
    v60 = *(v0 + 456);
    *v59 = v9;
    swift_storeEnumTagMultiPayload();
    v61 = v9;
    v43(v60, v59);
    sub_19A49BD0C(v59, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_20:
    v62 = *(v0 + 888);
    v63 = *(v0 + 848);
    v64 = *(v0 + 832);
    v65 = *(v0 + 824);
    v66 = *(v0 + 784);
    v67 = *(v0 + 776);
    swift_willThrow();
    sub_19A49954C("generateImagesTask", 18, 2, v62, v67, v66);

    (*(v64 + 8))(v63, v65);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

    v68 = *(v0 + 8);

    return v68();
  }

  v23 = *(v0 + 1200);
  v24 = *(v0 + 1184);

  v25 = *(v0 + 1224);
  *(v0 + 1248) = v25;
  *(v0 + 1240) = 0;
  if (*(*(v0 + 456) + *(v0 + 1032) + 56) == 1)
  {
    v26 = *(v0 + 928);
    v27 = *(v0 + 464);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    v29 = swift_task_alloc();
    *(v0 + 1256) = v29;
    v29[2] = v25;
    v29[3] = v27;
    v29[4] = v26;
    v30 = swift_task_alloc();
    *(v0 + 1264) = v30;
    *v30 = v0;
    v30[1] = sub_19A493688;
    v75 = v28;

    return MEMORY[0x1EEE6DBF8](v0 + 424);
  }

  else
  {

    v44 = sub_19A5723DC();
    v45 = sub_19A57356C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 800);
      v47 = *(v0 + 792);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_19A31F114(v47, v46, &v72);
      _os_log_impl(&dword_19A2DE000, v44, v45, "generated images policy check of %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x19A902C50](v49, -1, -1);
      MEMORY[0x19A902C50](v48, -1, -1);
    }

    v50 = *(v0 + 896);
    v51 = *(v0 + 800);
    v52 = *(v0 + 792);
    v53 = *(v0 + 672);
    sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v53, type metadata accessor for GenerationRecipe);
    v54 = swift_task_alloc();
    *(v0 + 1272) = v54;
    v54[2] = v0 + 400;
    v54[3] = v52;
    v54[4] = v51;
    v54[5] = v53;
    v54[6] = v0 + 16;
    v54[7] = v50;
    v55 = swift_task_alloc();
    *(v0 + 1280) = v55;
    *v55 = v0;
    v55[1] = sub_19A493FD4;
    v56 = MEMORY[0x1E69E7CA8] + 8;
    v75 = MEMORY[0x1E69E7CA8] + 8;
    v57 = MEMORY[0x1E69E7CA8] + 8;
    v58 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v55, v56, v57, 0, 0, &unk_19A58BA58, v54, v58);
  }
}

uint64_t sub_19A493688()
{

  return MEMORY[0x1EEE6DFA0](sub_19A4937A0, 0, 0);
}

uint64_t sub_19A4937A0()
{
  v62 = v0;
  v1 = *(v0 + 1240);
  v2 = *(v0 + 424);

  *(v0 + 400) = v2;
  sub_19A432418();
  if (v1)
  {
    v3 = *(v0 + 1088);
    v4 = *(v0 + 992);
    v5 = *(v0 + 920);
    v6 = *(v0 + 912);
    v7 = *(v0 + 824);
    sub_19A499D4C("postProcessGeneratedImages", 26, 2);

    sub_19A2E0A60(v6, v5);
    v4(v3, v7);
    v8 = v1;

    sub_19A368930(v0 + 16);

    *(v0 + 392) = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {

      v10 = v1;
      v11 = sub_19A5723DC();
      v12 = sub_19A57356C();

      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 800);
      if (v13)
      {
        v15 = *(v0 + 792);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v61 = v18;
        *v16 = 136315394;
        v19 = sub_19A31F114(v15, v14, &v61);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2112;
        v20 = v8;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v21;
        *v17 = v21;
        _os_log_impl(&dword_19A2DE000, v11, v12, "%s image generation cancelled - %@", v16, 0x16u);
        sub_19A2F3FA0(v17, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x19A902C50](v18, -1, -1);
        MEMORY[0x19A902C50](v16, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

      v49 = *(v0 + 440);
      if (!v49)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v37 = v1;
      v38 = sub_19A5723DC();
      v39 = sub_19A57355C();

      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 800);
      if (v40)
      {
        v42 = *(v0 + 792);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v61 = v45;
        *v43 = 136315394;
        v46 = sub_19A31F114(v42, v41, &v61);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2112;
        v47 = v8;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v48;
        *v44 = v48;
        _os_log_impl(&dword_19A2DE000, v38, v39, "%s image generation failed - %@", v43, 0x16u);
        sub_19A2F3FA0(v44, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v44, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x19A902C50](v45, -1, -1);
        MEMORY[0x19A902C50](v43, -1, -1);

        v49 = *(v0 + 440);
        if (!v49)
        {
          goto LABEL_16;
        }
      }

      else
      {

        v49 = *(v0 + 440);
        if (!v49)
        {
          goto LABEL_16;
        }
      }
    }

    v50 = *(v0 + 648);
    v51 = *(v0 + 456);
    *v50 = v8;
    swift_storeEnumTagMultiPayload();
    v52 = v8;
    v49(v51, v50);
    sub_19A49BD0C(v50, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_16:
    v53 = *(v0 + 888);
    v54 = *(v0 + 848);
    v55 = *(v0 + 832);
    v56 = *(v0 + 824);
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    swift_willThrow();
    sub_19A49954C("generateImagesTask", 18, 2, v53, v58, v57);

    (*(v55 + 8))(v54, v56);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

    v59 = *(v0 + 8);

    return v59();
  }

  v22 = sub_19A5723DC();
  v23 = sub_19A57356C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_19A31F114(v25, v24, &v61);
    _os_log_impl(&dword_19A2DE000, v22, v23, "generated images policy check of %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x19A902C50](v27, -1, -1);
    MEMORY[0x19A902C50](v26, -1, -1);
  }

  v28 = *(v0 + 896);
  v29 = *(v0 + 800);
  v30 = *(v0 + 792);
  v31 = *(v0 + 672);
  sub_19A49BEA0(*(v0 + 904) + *(v0 + 324), v31, type metadata accessor for GenerationRecipe);
  v32 = swift_task_alloc();
  *(v0 + 1272) = v32;
  v32[2] = v0 + 400;
  v32[3] = v30;
  v32[4] = v29;
  v32[5] = v31;
  v32[6] = v0 + 16;
  v32[7] = v28;
  v33 = swift_task_alloc();
  *(v0 + 1280) = v33;
  *v33 = v0;
  v33[1] = sub_19A493FD4;
  v34 = MEMORY[0x1E69E7CA8] + 8;
  v64 = MEMORY[0x1E69E7CA8] + 8;
  v35 = MEMORY[0x1E69E7CA8] + 8;
  v36 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v33, v34, v35, 0, 0, &unk_19A58BA58, v32, v36);
}

uint64_t sub_19A493FD4()
{
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v2 = sub_19A495E54;
  }

  else
  {

    v2 = sub_19A4940F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4940F0()
{
  v71 = v0;
  v1 = *(v0 + 1288);
  sub_19A432418();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 1088);
    v4 = *(v0 + 992);
    v5 = *(v0 + 920);
    v6 = *(v0 + 912);
    v7 = *(v0 + 824);
    sub_19A49BD0C(*(v0 + 672), type metadata accessor for GenerationRecipe);
    sub_19A499D4C("postProcessGeneratedImages", 26, 2);

    sub_19A2E0A60(v6, v5);
    v4(v3, v7);

    sub_19A368930(v0 + 16);

    *(v0 + 392) = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {

      v9 = v2;
      v10 = sub_19A5723DC();
      v11 = sub_19A57356C();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 800);
      if (v12)
      {
        v14 = *(v0 + 792);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v70[0] = v17;
        *v15 = 136315394;
        v18 = sub_19A31F114(v14, v13, v70);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2112;
        v19 = v2;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 14) = v20;
        *v16 = v20;
        _os_log_impl(&dword_19A2DE000, v10, v11, "%s image generation cancelled - %@", v15, 0x16u);
        sub_19A2F3FA0(v16, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x19A902C50](v17, -1, -1);
        MEMORY[0x19A902C50](v15, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

      v42 = *(v0 + 440);
      if (!v42)
      {
        goto LABEL_19;
      }
    }

    else
    {

      v30 = v2;
      v31 = sub_19A5723DC();
      v32 = sub_19A57355C();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 800);
      if (v33)
      {
        v35 = *(v0 + 792);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v70[0] = v38;
        *v36 = 136315394;
        v39 = sub_19A31F114(v35, v34, v70);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2112;
        v40 = v2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v41;
        *v37 = v41;
        _os_log_impl(&dword_19A2DE000, v31, v32, "%s image generation failed - %@", v36, 0x16u);
        sub_19A2F3FA0(v37, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x19A902C50](v38, -1, -1);
        MEMORY[0x19A902C50](v36, -1, -1);

        v42 = *(v0 + 440);
        if (!v42)
        {
          goto LABEL_19;
        }
      }

      else
      {

        v42 = *(v0 + 440);
        if (!v42)
        {
          goto LABEL_19;
        }
      }
    }

    v55 = *(v0 + 648);
    v56 = *(v0 + 456);
    *v55 = v2;
    swift_storeEnumTagMultiPayload();
    v57 = v2;
    v42(v56, v55);
    sub_19A49BD0C(v55, type metadata accessor for GenerativePlayground.GenerationEvent);
LABEL_19:
    v58 = *(v0 + 888);
    v59 = *(v0 + 848);
    v60 = *(v0 + 832);
    v61 = *(v0 + 824);
    v62 = *(v0 + 784);
    v63 = *(v0 + 776);
    swift_willThrow();
    sub_19A49954C("generateImagesTask", 18, 2, v58, v63, v62);

    (*(v60 + 8))(v59, v61);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

    v64 = *(v0 + 8);

    return v64();
  }

  v21 = sub_19A5723DC();
  v22 = sub_19A57356C();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 800);
  if (v23)
  {
    v25 = *(v0 + 792);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v70[0] = v27;
    *v26 = 136315138;
    v28 = sub_19A31F114(v25, v24, v70);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_19A2DE000, v21, v22, "generated images with %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x19A902C50](v27, -1, -1);
    MEMORY[0x19A902C50](v26, -1, -1);

    v29 = *(v0 + 440);
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v29 = *(v0 + 440);
  if (v29)
  {
LABEL_12:
    v43 = *(v0 + 648);
    v44 = *(v0 + 456);
    *v43 = *(v0 + 400);
    swift_storeEnumTagMultiPayload();

    v29(v44, v43);
    sub_19A49BD0C(v43, type metadata accessor for GenerativePlayground.GenerationEvent);
  }

LABEL_13:
  v45 = *(v0 + 992);
  v66 = *(v0 + 920);
  v67 = *(v0 + 1088);
  v65 = *(v0 + 912);
  v46 = *(v0 + 904);
  v47 = *(v0 + 888);
  v48 = *(v0 + 824);
  v49 = *(v0 + 784);
  v68 = *(v0 + 776);
  v69 = *(v0 + 848);
  v50 = *(v0 + 672);
  v51 = *(v0 + 432);
  swift_beginAccess();
  sub_19A49BEA0(v46, v51, type metadata accessor for GenerationState);
  v52 = *(v0 + 400);

  sub_19A49BD0C(v50, type metadata accessor for GenerationRecipe);
  sub_19A499D4C("postProcessGeneratedImages", 26, 2);

  sub_19A2E0A60(v65, v66);
  v45(v67, v48);

  sub_19A368930(v0 + 16);

  sub_19A49954C("generateImagesTask", 18, 2, v47, v68, v49);

  v45(v69, v48);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v53 = *(v0 + 8);

  return v53(v52);
}

uint64_t sub_19A494B7C()
{
  v45 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  sub_19A499D4C("prepareRecipe", 13, 2);

  sub_19A2E0A60(v3, v2);
  (*(v4 + 8))(v1, v5);

  v6 = *(v0 + 984);
  sub_19A368930(v0 + 16);

  *(v0 + 392) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v8 = v6;
    v9 = sub_19A5723DC();
    v10 = sub_19A57356C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 800);
    if (v11)
    {
      v13 = *(v0 + 792);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44[0] = v16;
      *v14 = 136315394;
      v17 = sub_19A31F114(v13, v12, v44);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = v6;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_19A2DE000, v9, v10, "%s image generation cancelled - %@", v14, 0x16u);
      sub_19A2F3FA0(v15, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x19A902C50](v16, -1, -1);
      MEMORY[0x19A902C50](v14, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v32 = *(v0 + 440);
    if (!v32)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v20 = v6;
  v21 = sub_19A5723DC();
  v22 = sub_19A57355C();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 800);
  if (v23)
  {
    v25 = *(v0 + 792);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44[0] = v28;
    *v26 = 136315394;
    v29 = sub_19A31F114(v25, v24, v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2112;
    v30 = v6;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v31;
    *v27 = v31;
    _os_log_impl(&dword_19A2DE000, v21, v22, "%s image generation failed - %@", v26, 0x16u);
    sub_19A2F3FA0(v27, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x19A902C50](v28, -1, -1);
    MEMORY[0x19A902C50](v26, -1, -1);

    v32 = *(v0 + 440);
    if (!v32)
    {
      goto LABEL_10;
    }

LABEL_9:
    v33 = *(v0 + 648);
    v34 = *(v0 + 456);
    *v33 = v6;
    swift_storeEnumTagMultiPayload();
    v35 = v6;
    v32(v34, v33);
    sub_19A49BD0C(v33, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v32 = *(v0 + 440);
  if (v32)
  {
    goto LABEL_9;
  }

LABEL_10:
  v36 = *(v0 + 888);
  v37 = *(v0 + 848);
  v38 = *(v0 + 832);
  v39 = *(v0 + 824);
  v40 = *(v0 + 784);
  v41 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v36, v41, v40);

  (*(v38 + 8))(v37, v39);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_19A4951A4()
{
  v46 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 992);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 824);
  v6 = *(v0 + 608);

  sub_19A49BD0C(v6, type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);
  sub_19A499D4C("generateImages", 14, 2);

  sub_19A2E0A60(v4, v3);
  v2(v1, v5);

  v7 = *(v0 + 1080);
  sub_19A368930(v0 + 16);

  *(v0 + 392) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v9 = v7;
    v10 = sub_19A5723DC();
    v11 = sub_19A57356C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 800);
    if (v12)
    {
      v14 = *(v0 + 792);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v15 = 136315394;
      v18 = sub_19A31F114(v14, v13, v45);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_19A2DE000, v10, v11, "%s image generation cancelled - %@", v15, 0x16u);
      sub_19A2F3FA0(v16, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v7;
  v22 = sub_19A5723DC();
  v23 = sub_19A57355C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 800);
  if (v24)
  {
    v26 = *(v0 + 792);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v27 = 136315394;
    v30 = sub_19A31F114(v26, v25, v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2112;
    v31 = v7;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v32;
    *v28 = v32;
    _os_log_impl(&dword_19A2DE000, v22, v23, "%s image generation failed - %@", v27, 0x16u);
    sub_19A2F3FA0(v28, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x19A902C50](v29, -1, -1);
    MEMORY[0x19A902C50](v27, -1, -1);

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

LABEL_9:
    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    *v34 = v7;
    swift_storeEnumTagMultiPayload();
    v36 = v7;
    v33(v35, v34);
    sub_19A49BD0C(v34, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v33 = *(v0 + 440);
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  v37 = *(v0 + 888);
  v38 = *(v0 + 848);
  v39 = *(v0 + 832);
  v40 = *(v0 + 824);
  v41 = *(v0 + 784);
  v42 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v37, v42, v41);

  (*(v39 + 8))(v38, v40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_19A4957EC()
{
  v47 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1088);
  v45 = *(v0 + 992);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 824);

  sub_19A499D4C("postProcessGeneratedImages", 26, 2);

  sub_19A2E0A60(v5, v4);
  v45(v3, v6);

  v7 = *(v0 + 1232);
  sub_19A368930(v0 + 16);

  *(v0 + 392) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v9 = v7;
    v10 = sub_19A5723DC();
    v11 = sub_19A57356C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 800);
    if (v12)
    {
      v14 = *(v0 + 792);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46[0] = v17;
      *v15 = 136315394;
      v18 = sub_19A31F114(v14, v13, v46);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_19A2DE000, v10, v11, "%s image generation cancelled - %@", v15, 0x16u);
      sub_19A2F3FA0(v16, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v7;
  v22 = sub_19A5723DC();
  v23 = sub_19A57355C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 800);
  if (v24)
  {
    v26 = *(v0 + 792);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46[0] = v29;
    *v27 = 136315394;
    v30 = sub_19A31F114(v26, v25, v46);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2112;
    v31 = v7;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v32;
    *v28 = v32;
    _os_log_impl(&dword_19A2DE000, v22, v23, "%s image generation failed - %@", v27, 0x16u);
    sub_19A2F3FA0(v28, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x19A902C50](v29, -1, -1);
    MEMORY[0x19A902C50](v27, -1, -1);

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

LABEL_9:
    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    *v34 = v7;
    swift_storeEnumTagMultiPayload();
    v36 = v7;
    v33(v35, v34);
    sub_19A49BD0C(v34, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v33 = *(v0 + 440);
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  v37 = *(v0 + 888);
  v38 = *(v0 + 848);
  v39 = *(v0 + 832);
  v40 = *(v0 + 824);
  v41 = *(v0 + 784);
  v42 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v37, v42, v41);

  (*(v39 + 8))(v38, v40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_19A495E54()
{
  v46 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 992);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 824);
  v6 = *(v0 + 672);

  sub_19A49BD0C(v6, type metadata accessor for GenerationRecipe);
  sub_19A499D4C("postProcessGeneratedImages", 26, 2);

  sub_19A2E0A60(v4, v3);
  v2(v1, v5);

  v7 = *(v0 + 1288);
  sub_19A368930(v0 + 16);

  *(v0 + 392) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {

    v9 = v7;
    v10 = sub_19A5723DC();
    v11 = sub_19A57356C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 800);
    if (v12)
    {
      v14 = *(v0 + 792);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v15 = 136315394;
      v18 = sub_19A31F114(v14, v13, v45);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_19A2DE000, v10, v11, "%s image generation cancelled - %@", v15, 0x16u);
      sub_19A2F3FA0(v16, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v7;
  v22 = sub_19A5723DC();
  v23 = sub_19A57355C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 800);
  if (v24)
  {
    v26 = *(v0 + 792);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v27 = 136315394;
    v30 = sub_19A31F114(v26, v25, v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2112;
    v31 = v7;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v32;
    *v28 = v32;
    _os_log_impl(&dword_19A2DE000, v22, v23, "%s image generation failed - %@", v27, 0x16u);
    sub_19A2F3FA0(v28, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x19A902C50](v29, -1, -1);
    MEMORY[0x19A902C50](v27, -1, -1);

    v33 = *(v0 + 440);
    if (!v33)
    {
      goto LABEL_10;
    }

LABEL_9:
    v34 = *(v0 + 648);
    v35 = *(v0 + 456);
    *v34 = v7;
    swift_storeEnumTagMultiPayload();
    v36 = v7;
    v33(v35, v34);
    sub_19A49BD0C(v34, type metadata accessor for GenerativePlayground.GenerationEvent);
    goto LABEL_10;
  }

  v33 = *(v0 + 440);
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  v37 = *(v0 + 888);
  v38 = *(v0 + 848);
  v39 = *(v0 + 832);
  v40 = *(v0 + 824);
  v41 = *(v0 + 784);
  v42 = *(v0 + 776);
  swift_willThrow();
  sub_19A49954C("generateImagesTask", 18, 2, v37, v42, v41);

  (*(v39 + 8))(v38, v40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  v43 = *(v0 + 8);

  return v43();
}

unint64_t GenerativePlayground.GenerationTask.Progress.completionPercentage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16) | (v1 < 1);
  if (*(v0 + 16) & 1 | (v1 < 1))
  {
    v3 = 0;
  }

  else
  {
    v4 = *v0 / v1;
    if (v4 > 1.0)
    {
      v4 = 1.0;
    }

    v3 = LODWORD(v4);
  }

  return v3 | ((v2 & 1) << 32);
}

uint64_t GenerativePlayground.GenerationTask.Progress.images.getter()
{
  v1 = type metadata accessor for GeneratedImage(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_19A322860(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_19A49BEA0(v8, v4, type metadata accessor for GeneratedImage);
      v10 = *v4;
      v11 = v4[8];
      v12 = *v4;
      sub_19A49BD0C(v4, type metadata accessor for GeneratedImage);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_19A322860((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t GenerativePlayground.GenerationTask.Progress.description.getter()
{
  v1 = *(v0 + 16);
  result = sub_19A573EDC();
  v4 = result;
  if ((v1 & 1) == 0)
  {
    v3 = sub_19A573EDC();
    MEMORY[0x19A900A50](v3);

    MEMORY[0x19A900A50](543584032, 0xE400000000000000);

    return v4;
  }

  return result;
}

uint64_t sub_19A496774()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2578, &qword_19A58BAB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = vdupq_n_s64(0x200uLL);
  *(inited + 48) = vdupq_n_s64(0x400uLL);
  *(inited + 64) = vdupq_n_s64(0x300uLL);
  *(inited + 80) = vdupq_n_s64(0x600uLL);
  v1 = sub_19A331030(inited);
  result = swift_setDeallocating();
  off_1EAFA2550 = v1;
  return result;
}

uint64_t sub_19A496804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2578, &qword_19A58BAB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = vdupq_n_s64(0x300uLL);
  *(inited + 48) = vdupq_n_s64(0xC00uLL);
  *(inited + 64) = xmmword_19A5842D0;
  *(inited + 80) = xmmword_19A5842E0;
  v1 = sub_19A331030(inited);
  result = swift_setDeallocating();
  off_1EAFA2558 = v1;
  return result;
}

uint64_t sub_19A496894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v3[26] = type metadata accessor for GeneratedImage(0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A496950, 0, 0);
}

void sub_19A496950()
{
  v62 = v0;
  v1 = *(v0 + 192);
  if (*(v1 + *(*(v0 + 208) + 24)) == 5)
  {
    if (qword_1EAF9F980 != -1)
    {
      swift_once();
      v1 = *(v0 + 192);
    }

    v2 = off_1EAFA2558;
    v3 = *v1;
    v4 = *(v1 + 8);
    if (v4)
    {
      if (v4 == 1)
      {
        [v3 extent];
        sub_19A39AAB4(&v60, v5, v6);
LABEL_16:
        if (!v2[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v7 = sub_19A31FCD8(v60, v61);
        if (v18)
        {
          goto LABEL_23;
        }

        __break(1u);
LABEL_19:
        v14 = v7;
        Width = CVPixelBufferGetWidth(v14);
        Height = CVPixelBufferGetHeight(v14);
        goto LABEL_20;
      }

      v11 = v3;
      v12 = CVPixelBufferGetWidth(v11);
      v13 = CVPixelBufferGetHeight(v11);
    }

    else
    {
      v11 = v3;
      v12 = CGImageGetWidth(v11);
      v13 = CGImageGetHeight(v11);
    }

    v17 = v13;

    v60 = v12;
    v61 = v17;
    goto LABEL_16;
  }

  if (qword_1EAF9F978 != -1)
  {
    swift_once();
    v1 = *(v0 + 192);
  }

  v2 = off_1EAFA2550;
  v7 = *v1;
  v8 = *(v1 + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      [v7 extent];
      sub_19A39AAB4(&v60, v9, v10);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v14 = v7;
  Width = CGImageGetWidth(v14);
  Height = CGImageGetHeight(v14);
LABEL_20:
  v19 = Height;

  v60 = Width;
  v61 = v19;
LABEL_21:
  if (!v2[2])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = sub_19A31FCD8(v60, v61);
  if ((v20 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    return;
  }

LABEL_23:
  v56 = *(v2[7] + 16 * v7);
  *(v0 + 248) = v56;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 240);
  v22 = *(v0 + 192);
  v23 = sub_19A5723FC();
  *(v0 + 264) = __swift_project_value_buffer(v23, qword_1EAFCA1E8);
  sub_19A49BEA0(v22, v21, type metadata accessor for GeneratedImage);
  v24 = sub_19A5723DC();
  v25 = sub_19A57356C();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 240);
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v57 = v29;
    *v28 = 136315650;
    *(v0 + 72) = sub_19A4978FC;
    *(v0 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2570, &qword_19A58BAB0);
    v30 = sub_19A572DAC();
    v32 = sub_19A31F114(v30, v31, &v57);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = *v27;
    if (*(v27 + 8))
    {
      if (*(v27 + 8) == 1)
      {
        [v33 extent];
        sub_19A39AAB4(&v58, v34, v35);
        v36 = v58;
        v37 = v59;
LABEL_33:
        v40 = *(v0 + 240);
        *(v0 + 152) = v36;
        v60 = sub_19A573EDC();
        v61 = v41;
        MEMORY[0x19A900A50](2127904, 0xE300000000000000);
        *(v0 + 160) = v37;
        v42 = sub_19A573EDC();
        MEMORY[0x19A900A50](v42);

        v43 = v60;
        v44 = v61;
        sub_19A49BD0C(v40, type metadata accessor for GeneratedImage);
        v45 = sub_19A31F114(v43, v44, &v57);

        *(v28 + 14) = v45;
        *(v28 + 22) = 2080;
        *(v0 + 168) = v56;
        v60 = sub_19A573EDC();
        v61 = v46;
        MEMORY[0x19A900A50](2127904, 0xE300000000000000);
        *(v0 + 176) = *(&v56 + 1);
        v47 = sub_19A573EDC();
        MEMORY[0x19A900A50](v47);

        v48 = sub_19A31F114(v60, v61, &v57);

        *(v28 + 24) = v48;
        _os_log_impl(&dword_19A2DE000, v24, v25, "attempting to resize for imageStyle=%s %s generated image to %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v29, -1, -1);
        MEMORY[0x19A902C50](v28, -1, -1);

        goto LABEL_34;
      }

      v38 = v33;
      v36 = CVPixelBufferGetWidth(v38);
      v39 = CVPixelBufferGetHeight(v38);
    }

    else
    {
      v38 = v33;
      v36 = CGImageGetWidth(v38);
      v39 = CGImageGetHeight(v38);
    }

    v37 = v39;

    v58 = v36;
    v59 = v37;
    goto LABEL_33;
  }

  sub_19A49BD0C(v27, type metadata accessor for GeneratedImage);
LABEL_34:
  v49 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
  inited = swift_initStackObject();
  *(v0 + 272) = inited;
  *(inited + 16) = xmmword_19A576E00;
  type metadata accessor for MediaAnalysisServiceImageScaler();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(inited + 32) = v51;
  *(v0 + 56) = v56;
  v52 = v49;
  v53 = sub_19A31A41C(inited);
  *(v0 + 280) = v53;

  v54 = swift_task_alloc();
  *(v0 + 288) = v54;
  *v54 = v0;
  v54[1] = sub_19A496F98;
  v55 = *(v0 + 232);

  sub_19A3E82B0(v55, (v0 + 56), v53);
}

uint64_t sub_19A496F98()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_19A49741C;
  }

  else
  {

    v2 = sub_19A4970B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4970B4()
{
  v33 = v0;
  sub_19A49BEA0(v0[24], v0[28], type metadata accessor for GeneratedImage);
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[28];
  if (!v3)
  {

    sub_19A49BD0C(v4, type metadata accessor for GeneratedImage);
    goto LABEL_10;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v28 = v6;
  *v5 = 136315394;
  v7 = *v4;
  v27 = v6;
  if (!*(v4 + 8))
  {
    v12 = v7;
    Width = CGImageGetWidth(v12);
    Height = CGImageGetHeight(v12);
LABEL_8:
    v11 = Height;

    v29 = Width;
    v30 = v11;
    goto LABEL_9;
  }

  if (*(v4 + 8) != 1)
  {
    v12 = v7;
    Width = CVPixelBufferGetWidth(v12);
    Height = CVPixelBufferGetHeight(v12);
    goto LABEL_8;
  }

  [v7 extent];
  sub_19A39AAB4(&v29, v8, v9);
  Width = v29;
  v11 = v30;
LABEL_9:
  v14 = v0[31];
  v26 = v0[32];
  v15 = v0[28];
  v0[15] = Width;
  v31 = sub_19A573EDC();
  v32 = v16;
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  v0[16] = v11;
  v17 = sub_19A573EDC();
  MEMORY[0x19A900A50](v17);

  v18 = v31;
  v19 = v32;
  sub_19A49BD0C(v15, type metadata accessor for GeneratedImage);
  v20 = sub_19A31F114(v18, v19, &v28);

  *(v5 + 4) = v20;
  *(v5 + 12) = 2080;
  v0[17] = v14;
  v31 = sub_19A573EDC();
  v32 = v21;
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  v0[18] = v26;
  v22 = sub_19A573EDC();
  MEMORY[0x19A900A50](v22);

  v23 = sub_19A31F114(v31, v32, &v28);

  *(v5 + 14) = v23;
  _os_log_impl(&dword_19A2DE000, v1, v2, "resized %s generated image to %s", v5, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x19A902C50](v27, -1, -1);
  MEMORY[0x19A902C50](v5, -1, -1);

LABEL_10:
  sub_19A49C18C(v0[29], v0[23], type metadata accessor for GeneratedImage);

  v24 = v0[1];

  return v24();
}

uint64_t sub_19A49741C()
{
  v43 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);

  sub_19A49BEA0(v3, v2, type metadata accessor for GeneratedImage);
  v4 = v1;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  if (!os_log_type_enabled(v5, v6))
  {
    v16 = *(v0 + 216);

    sub_19A49BD0C(v16, type metadata accessor for GeneratedImage);
    goto LABEL_10;
  }

  v7 = *(v0 + 216);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v38 = v10;
  *v8 = 136315650;
  v11 = *v7;
  v37 = v6;
  v35 = v9;
  v36 = v10;
  if (!*(v7 + 8))
  {
    v17 = v11;
    Width = CGImageGetWidth(v17);
    Height = CGImageGetHeight(v17);
LABEL_8:
    v15 = Height;

    v39 = Width;
    v40 = v15;
    goto LABEL_9;
  }

  if (*(v7 + 8) != 1)
  {
    v17 = v11;
    Width = CVPixelBufferGetWidth(v17);
    Height = CVPixelBufferGetHeight(v17);
    goto LABEL_8;
  }

  [v11 extent];
  sub_19A39AAB4(&v39, v12, v13);
  Width = v39;
  v15 = v40;
LABEL_9:
  v19 = *(v0 + 296);
  v20 = *(v0 + 248);
  v34 = *(v0 + 256);
  v21 = *(v0 + 216);
  *(v0 + 88) = Width;
  v41 = sub_19A573EDC();
  v42 = v22;
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  *(v0 + 96) = v15;
  v23 = sub_19A573EDC();
  MEMORY[0x19A900A50](v23);

  v24 = v41;
  v25 = v42;
  sub_19A49BD0C(v21, type metadata accessor for GeneratedImage);
  v26 = sub_19A31F114(v24, v25, &v38);

  *(v8 + 4) = v26;
  *(v8 + 12) = 2080;
  *(v0 + 104) = v20;
  v41 = sub_19A573EDC();
  v42 = v27;
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  *(v0 + 112) = v34;
  v28 = sub_19A573EDC();
  MEMORY[0x19A900A50](v28);

  v29 = sub_19A31F114(v41, v42, &v38);

  *(v8 + 14) = v29;
  *(v8 + 22) = 2112;
  v30 = v19;
  v31 = _swift_stdlib_bridgeErrorToNSError();
  *(v8 + 24) = v31;
  *v35 = v31;
  _os_log_impl(&dword_19A2DE000, v5, v37, "could not resize %s generated image to %s: %@", v8, 0x20u);
  sub_19A2F3FA0(v35, &qword_1EAF9FD28, &qword_19A577340);
  MEMORY[0x19A902C50](v35, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x19A902C50](v36, -1, -1);
  MEMORY[0x19A902C50](v8, -1, -1);

LABEL_10:
  sub_19A49BEA0(*(v0 + 192), *(v0 + 184), type metadata accessor for GeneratedImage);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_19A497820(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_19A33546C(a3 + 128, &v9, &qword_1EAF9FDA8, &qword_19A581780);
  if (v10)
  {
    sub_19A2EA460(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    LOBYTE(v9) = v4;
    v7 = (*(*(v6 + 40) + 8))(&v9, a2, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    sub_19A2F3FA0(&v9, &qword_1EAF9FDA8, &qword_19A581780);
    v7 = 0;
  }

  return v7 & 1;
}

double sub_19A4978FC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_19A49C0F0;
  *(v4 + 24) = v3;
  *a2 = sub_19A49C0F8;
  a2[1] = v4;

  return result;
}

uint64_t sub_19A497970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1130, &qword_19A5816C0);
  v5[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2568, &qword_19A58BA80);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for GeneratedImage(0);
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v5[20] = *(v8 + 64);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A497B30, 0, 0);
}

uint64_t sub_19A497B30()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v32 = **(v0 + 80);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v31 = *(v3 + 72);
    v30 = (v4 + 40) & ~v4;
    v29 = (*(v0 + 160) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_19A5731CC();
    v7 = *(v6 - 8);
    v28 = *(v7 + 56);
    v27 = (v7 + 48);
    v26 = (v7 + 8);
    do
    {
      v33 = v2;
      v11 = *(v0 + 184);
      v10 = *(v0 + 192);
      v12 = *(v0 + 176);
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v28(v10, 1, 1, v6);
      sub_19A49BEA0(v5, v12, type metadata accessor for GeneratedImage);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v13;
      sub_19A49C18C(v12, v15 + v30, type metadata accessor for GeneratedImage);
      *(v15 + v29) = v14;
      sub_19A33546C(v10, v11, &qword_1EAF9FD98, &qword_19A57A710);
      LODWORD(v11) = (*v27)(v11, 1, v6);
      v16 = v14;
      v17 = *(v0 + 184);
      if (v11 == 1)
      {
        sub_19A2F3FA0(*(v0 + 184), &qword_1EAF9FD98, &qword_19A57A710);
      }

      else
      {
        sub_19A5731BC();
        (*v26)(v17, v6);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_19A57314C();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_19A58BA98;
      *(v21 + 24) = v15;

      if (v20 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 192);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v32;
      swift_task_create();

      sub_19A2F3FA0(v9, &qword_1EAF9FD98, &qword_19A57A710);
      v5 += v31;
      v2 = v33 - 1;
    }

    while (v33 != 1);
  }

  sub_19A57318C();
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v22 = swift_task_alloc();
  *(v0 + 208) = v22;
  *v22 = v0;
  v22[1] = sub_19A497F08;
  v23 = *(v0 + 112);
  v24 = *(v0 + 120);

  return MEMORY[0x1EEE6D8A8](v23, 0, 0, v24);
}

uint64_t sub_19A497F08()
{

  return MEMORY[0x1EEE6DFA0](sub_19A498004, 0, 0);
}

uint64_t sub_19A498004()
{
  v1 = v0[14];
  v2 = (*(v0[19] + 48))(v1, 1, v0[18]);
  v3 = v0[25];
  if (v2 == 1)
  {
    v4 = v0[9];
    (*(v0[16] + 8))(v0[17], v0[15]);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_19A49C18C(v1, v0[21], type metadata accessor for GeneratedImage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_19A31DA3C(0, v8[2] + 1, 1, v0[25]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_19A31DA3C((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = v0[21];
    v12 = v0[19];
    v8[2] = v10 + 1;
    sub_19A49C18C(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, type metadata accessor for GeneratedImage);
    v0[25] = v8;
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_19A497F08;
    v14 = v0[14];
    v15 = v0[15];

    return MEMORY[0x1EEE6D8A8](v14, 0, 0, v15);
  }
}

uint64_t sub_19A498244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19A498268, 0, 0);
}

uint64_t sub_19A498268()
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57230C();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "upscaleImage", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[6] = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_19A4984BC;
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];

  return sub_19A496894(v12, v10, v11);
}

uint64_t sub_19A4984BC()
{

  return MEMORY[0x1EEE6DFA0](sub_19A4985B8, 0, 0);
}

uint64_t sub_19A4985B8()
{
  sub_19A499D4C("upscaleImage", 12, 2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A498634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A498658, 0, 0);
}

uint64_t sub_19A498658()
{
  v39 = v0;
  if (MTLCreateSystemDefaultDevice())
  {
    type metadata accessor for ImageBlendingRenderer();
    swift_allocObject();
    v1 = swift_unknownObjectRetain();
    sub_19A44381C(v1);
    v7 = v0[3];
    v8 = *(v7 + 8);
    v36 = *v7;
    v9 = *v7;
    if (v8)
    {
      if (v8 == 1)
      {
        [v9 extent];
        sub_19A39AAB4(v37, v10, v11);
        Width = v37[0];
        v13 = v37[1];
LABEL_14:
        v38[0] = Width;
        v38[1] = v13;
        sub_19A41ED10(0x42475241, v38, 0);
        v19 = v18;
        v21 = v0[4];
        v20 = v0[5];

        sub_19A444104(v21, v19, v20);
        v23 = v22;
        v24 = v0[2];
        v25 = v0[3];
        v26 = type metadata accessor for GeneratedImage(0);
        sub_19A49BEA0(v25 + v26[5], v24 + v26[5], type metadata accessor for ImageProvenance);
        v27 = *(v25 + v26[6]);
        v28 = (v25 + v26[7]);
        v29 = *v28;
        v30 = v28[1];
        v35 = *(v28 + 16);

        swift_unknownObjectRelease();
        v31 = v26[10];
        *(v24 + v31) = 3;
        *v24 = v23;
        *(v24 + 8) = 1;
        *(v24 + v26[6]) = v27;
        v32 = v24 + v26[7];
        *v32 = v29;
        *(v32 + 8) = v30;
        *(v32 + 16) = v35;
        v33 = (v24 + v26[8]);
        *v33 = 0;
        v33[1] = 0xE000000000000000;
        v34 = (v24 + v26[9]);
        *v34 = 0;
        v34[1] = 0xE000000000000000;
        *(v24 + v31) = 3;
        v16 = v0[1];
        goto LABEL_15;
      }

      v14 = v9;
      Width = CVPixelBufferGetWidth(v14);
      Height = CVPixelBufferGetHeight(v14);
    }

    else
    {
      v14 = v9;
      Width = CGImageGetWidth(v14);
      Height = CGImageGetHeight(v14);
    }

    v13 = Height;

    goto LABEL_14;
  }

  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1EAFCA1E8);
  v3 = sub_19A5723DC();
  v4 = sub_19A57355C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A2DE000, v3, v4, "could not create MTLDevice", v5, 2u);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  type metadata accessor for GeneratorError(0);
  sub_19A49BE48(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
  swift_allocError();
  *v6 = 0xD000000000000015;
  v6[1] = 0x800000019A59A040;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v16 = v0[1];
LABEL_15:

  return v16();
}

uint64_t sub_19A498A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(type metadata accessor for GeneratedImage(0) - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A498AF4, 0, 0);
}

uint64_t sub_19A498AF4()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = *(v0 + 32)) != 0)
  {
    v3 = *(v0 + 16);
    v4 = *(v3 + 16);
    *(v0 + 80) = v4;
    if (v4)
    {
      v5 = *(v0 + 48);
      v6 = *(v5 + 80);
      *(v0 + 136) = v6;
      v7 = (v6 + 32) & ~v6;
      v8 = *(v5 + 72);
      v9 = MEMORY[0x1E69E7CC0];
      *(v0 + 96) = 0;
      *(v0 + 104) = v9;
      *(v0 + 88) = v8;
      v10 = *(v0 + 72);
      v11 = v1;
      v12 = v2;
      sub_19A49BEA0(v3 + v7, v10, type metadata accessor for GeneratedImage);
      if (qword_1ED824BA8 != -1)
      {
        swift_once();
      }

      v13 = sub_19A57236C();
      __swift_project_value_buffer(v13, qword_1ED82BD30);
      v14 = sub_19A57231C();
      v15 = *(v14 - 8);
      v16 = swift_task_alloc();
      sub_19A57230C();
      v17 = sub_19A57234C();
      v18 = sub_19A57361C();
      if (sub_19A57376C())
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v17, v18, v20, "blendImage", "", v19, 2u);
        MEMORY[0x19A902C50](v19, -1, -1);
      }

      v22 = *(v0 + 24);
      v21 = *(v0 + 32);

      swift_task_alloc();
      (*(v15 + 16))();
      sub_19A5723BC();
      swift_allocObject();
      *(v0 + 112) = sub_19A5723AC();
      (*(v15 + 8))(v16, v14);

      v23 = swift_task_alloc();
      *(v0 + 120) = v23;
      *v23 = v0;
      v23[1] = sub_19A498F28;
      v24 = *(v0 + 64);
      v25 = *(v0 + 72);

      return sub_19A498634(v24, v25, v22, v21);
    }

    else
    {

      v29 = *(v0 + 8);
      v30 = MEMORY[0x1E69E7CC0];

      return v29(v30);
    }
  }

  else
  {
    type metadata accessor for GeneratorError(0);
    sub_19A49BE48(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
    swift_allocError();
    *v27 = 0xD000000000000029;
    v27[1] = 0x800000019A59B330;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_19A498F28()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_19A49947C;
  }

  else
  {
    v2 = sub_19A499044;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A499044()
{
  sub_19A49BEA0(*(v0 + 64), *(v0 + 56), type metadata accessor for GeneratedImage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 104);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_19A31DA3C(0, v2[2] + 1, 1, *(v0 + 104));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_19A31DA3C((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v27 = *(v0 + 96) + 1;
  v28 = *(v0 + 80);
  v8 = (*(v0 + 136) + 32) & ~*(v0 + 136);
  sub_19A49BD0C(*(v0 + 64), type metadata accessor for GeneratedImage);
  v2[2] = v4 + 1;
  sub_19A49C18C(v7, v2 + v8 + v5 * v4, type metadata accessor for GeneratedImage);
  sub_19A499D4C("blendImage", 10, 2);

  sub_19A49BD0C(v6, type metadata accessor for GeneratedImage);
  if (v27 == v28)
  {
    v9 = *(v0 + 24);

    v10 = *(v0 + 8);

    return v10(v2);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 96) + 1;
    *(v0 + 96) = v13;
    *(v0 + 104) = v2;
    sub_19A49BEA0(*(v0 + 16) + ((*(v0 + 136) + 32) & ~*(v0 + 136)) + v12 * v13, *(v0 + 72), type metadata accessor for GeneratedImage);
    if (qword_1ED824BA8 != -1)
    {
      swift_once();
    }

    v14 = sub_19A57236C();
    __swift_project_value_buffer(v14, qword_1ED82BD30);
    v15 = sub_19A57231C();
    v16 = *(v15 - 8);
    v17 = swift_task_alloc();
    sub_19A57230C();
    v18 = sub_19A57234C();
    v19 = sub_19A57361C();
    if (sub_19A57376C())
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v18, v19, v21, "blendImage", "", v20, 2u);
      MEMORY[0x19A902C50](v20, -1, -1);
    }

    v23 = *(v0 + 24);
    v22 = *(v0 + 32);

    swift_task_alloc();
    (*(v16 + 16))();
    sub_19A5723BC();
    swift_allocObject();
    *(v0 + 112) = sub_19A5723AC();
    (*(v16 + 8))(v17, v15);

    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    *v24 = v0;
    v24[1] = sub_19A498F28;
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);

    return sub_19A498634(v25, v26, v23, v22);
  }
}

uint64_t sub_19A49947C()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  sub_19A499D4C("blendImage", 10, 2);

  sub_19A49BD0C(v1, type metadata accessor for GeneratedImage);

  v4 = v0[1];

  return v4();
}

void sub_19A49954C(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v36 = a1;
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v9 = sub_19A57236C();
  __swift_project_value_buffer(v9, qword_1ED82BD30);
  v10 = sub_19A57234C();
  v11 = sub_19A57231C();
  v12 = v32;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57239C();
  v35 = sub_19A57360C();
  if ((sub_19A57376C() & 1) == 0)
  {
LABEL_16:

    (*(v13 + 8))(v15, v11);
    v24 = sub_19A45AE64();
    v12 = v25;
    if (v24 == a5 && v25 == a6 || (v10 = v24, (sub_19A573F1C() & 1) != 0))
    {

      return;
    }

    if (qword_1EAF9F208 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v32[0] = v11;
  v32[1] = v32;
  v33 = a5;
  v34 = a6;
  if ((a3 & 1) == 0)
  {
    v12 = v36;
    if (v36)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!(v36 >> 32))
  {
    if ((v36 & 0xFFFFF800) != 0xD800)
    {
      if (v36 >> 16 <= 0x10)
      {
        v12 = &v37;
LABEL_11:
        v16 = sub_19A57237C();
        v17 = *(v16 - 8);
        MEMORY[0x1EEE9AC00](v16);
        v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

        sub_19A5723CC();

        v20 = (*(v17 + 88))(v19, v16);
        if (MEMORY[0x1E69E93E0] && v20 == *MEMORY[0x1E69E93E0])
        {
          v21 = "[Error] Interval already ended";
        }

        else
        {
          (*(v17 + 8))(v19, v16);
          v21 = "";
        }

        a5 = v33;
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v10, v35, v23, v12, v21, v22, 2u);
        MEMORY[0x19A902C50](v22, -1, -1);
        a6 = v34;
        v11 = v32[0];
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_21:
  v26 = sub_19A5723FC();
  __swift_project_value_buffer(v26, qword_1EAFCA1E8);

  v27 = sub_19A5723DC();
  v28 = sub_19A57356C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446210;
    v31 = sub_19A31F114(v10, v12, &v38);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_19A2DE000, v27, v28, "Thermal state changed after generation%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x19A902C50](v30, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19A4999C0(uint64_t a1, uint64_t a2, char a3, double (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v30 = a1;
  v31 = a2;
  v32 = type metadata accessor for GenerativePlayground.GenerationEvent(0);
  MEMORY[0x1EEE9AC00](v32);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v12 = sub_19A5723FC();
  v13 = __swift_project_value_buffer(v12, qword_1ED82BCF0);

  v14 = sub_19A5723DC();
  v15 = sub_19A57356C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[1] = v13;
    v17 = v16;
    v29[0] = swift_slowAlloc();
    v34 = v29[0];
    *v17 = 136446466;
    *(v17 + 4) = sub_19A31F114(0xD00000000000001FLL, 0x800000019A59B360, &v34);
    *(v17 + 12) = 2080;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v33[0] = sub_19A33478C;
    v33[1] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2560, &qword_19A58BA70);
    v19 = sub_19A572DAC();
    v21 = sub_19A31F114(v19, v20, &v34);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_19A2DE000, v14, v15, "%{public}s: progressHandler is called. eventsHandler=%s", v17, 0x16u);
    v22 = v29[0];
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v22, -1, -1);
    MEMORY[0x19A902C50](v17, -1, -1);
  }

  v23 = sub_19A5723DC();
  v24 = sub_19A57356C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_19A31F114(0xD00000000000001FLL, 0x800000019A59B360, v33);
    _os_log_impl(&dword_19A2DE000, v23, v24, "%{public}s: before 'eventsHandler(self, .progress(generationProgress))'", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x19A902C50](v26, -1, -1);
    MEMORY[0x19A902C50](v25, -1, -1);
  }

  v27 = v31;
  *v11 = v30;
  *(v11 + 1) = v27;
  v11[16] = a3 & 1;
  *(v11 + 3) = 0;
  swift_storeEnumTagMultiPayload();
  a4(a6, v11);
  return sub_19A49BD0C(v11, type metadata accessor for GenerativePlayground.GenerationEvent);
}

uint64_t sub_19A499D4C(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A49A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[21] = a2;
  v9 = *(type metadata accessor for GenerationRecipe(0) - 8);
  v8[28] = v9;
  v8[29] = *(v9 + 64);
  v8[30] = swift_task_alloc();
  v10 = *(type metadata accessor for GeneratedImage(0) - 8);
  v8[31] = v10;
  v8[32] = *(v10 + 64);
  v8[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A49A1A8, 0, 0);
}

uint64_t sub_19A49A1A8()
{
  v1 = *(v0 + 176);
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 248);
    v39 = *(v0 + 224);
    v38 = **(v0 + 168);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = *v1 + v4;
    v37 = v4;
    v35 = (*(v0 + 256) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = *(v3 + 72);
    v34 = *(v0 + 232) + 7;
    v6 = sub_19A5731CC();
    v7 = *(v6 - 8);
    v33 = *(v7 + 56);
    v32 = (v7 + 48);
    v31 = (v7 + 8);

    do
    {
      v44 = v2;
      v10 = *(v0 + 280);
      v11 = *(v0 + 264);
      v12 = *(v0 + 240);
      v13 = *(v0 + 208);
      v42 = *(v0 + 216);
      v43 = *(v0 + 272);
      v14 = *(v0 + 200);
      v41 = *(v0 + 192);
      v40 = *(v0 + 184);
      v33(v10, 1, 1, v6);
      sub_19A49BEA0(v5, v11, type metadata accessor for GeneratedImage);
      sub_19A49BEA0(v14, v12, type metadata accessor for GenerationRecipe);
      sub_19A49C130(v13, v0 + 16);
      v15 = (v35 + 16 + *(v39 + 80)) & ~*(v39 + 80);
      v16 = v6;
      v17 = (v34 + v15) & 0xFFFFFFFFFFFFFFF8;
      v18 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      sub_19A49C18C(v11, v19 + v37, type metadata accessor for GeneratedImage);
      v20 = (v19 + v35);
      *v20 = v40;
      v20[1] = v41;
      sub_19A49C18C(v12, v19 + v15, type metadata accessor for GenerationRecipe);
      v21 = (v19 + v17);
      v6 = v16;
      v22 = *(v0 + 64);
      v21[2] = *(v0 + 48);
      v21[3] = v22;
      v23 = *(v0 + 96);
      v21[4] = *(v0 + 80);
      v21[5] = v23;
      v24 = *(v0 + 32);
      *v21 = *(v0 + 16);
      v21[1] = v24;
      *(v19 + v18) = v42;
      sub_19A33546C(v10, v43, &qword_1EAF9FD98, &qword_19A57A710);
      LODWORD(v18) = (*v32)(v43, 1, v16);

      v25 = *(v0 + 272);
      if (v18 == 1)
      {
        sub_19A2F3FA0(*(v0 + 272), &qword_1EAF9FD98, &qword_19A57A710);
      }

      else
      {
        sub_19A5731BC();
        (*v31)(v25, v6);
      }

      if (*(v19 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_19A57314C();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      if (v28 | v26)
      {
        v8 = v0 + 112;
        *(v0 + 112) = 0;
        *(v0 + 120) = 0;
        *(v0 + 128) = v26;
        *(v0 + 136) = v28;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 280);
      *(v0 + 144) = 1;
      *(v0 + 152) = v8;
      *(v0 + 160) = v38;
      swift_task_create();

      sub_19A2F3FA0(v9, &qword_1EAF9FD98, &qword_19A57A710);
      v5 += v36;
      v2 = v44 - 1;
    }

    while (v44 != 1);
  }

  v29 = swift_task_alloc();
  *(v0 + 288) = v29;
  *v29 = v0;
  v29[1] = sub_19A49A634;

  return sub_19A49AD44(0, 0);
}

uint64_t sub_19A49A634()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_19A49A7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for GenerationState(0);
  v8[10] = swift_task_alloc();
  type metadata accessor for GeneratedImage(0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_19A49A880, 0, 0);
}

uint64_t sub_19A49A880()
{
  v25 = v0;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[5];
  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1EAFCA1E8);
  sub_19A49BEA0(v2, v1, type metadata accessor for GeneratedImage);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    v12 = GeneratedImage.description.getter();
    v14 = v13;
    sub_19A49BD0C(v7, type metadata accessor for GeneratedImage);
    v15 = sub_19A31F114(v12, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_19A31F114(v9, v8, &v24);
    _os_log_impl(&dword_19A2DE000, v4, v5, "%s policy check of %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  else
  {

    sub_19A49BD0C(v7, type metadata accessor for GeneratedImage);
  }

  v16 = v0[12];
  v17 = v0[10];
  swift_beginAccess();
  sub_19A49BEA0(v16, v17, type metadata accessor for GenerationState);
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_19A49AB54;
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[8];
  v22 = v0[5];

  return sub_19A2F3274(v22, v21, v19, v20);
}

uint64_t sub_19A49AB54()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 112) = v0;

  sub_19A49BD0C(v2, type metadata accessor for GenerationState);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A49ACD8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_19A49ACD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A49AD44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_19A57314C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A49ADD8, v4, v6);
}

uint64_t sub_19A49ADD8()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (sub_19A57328C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2580, &qword_19A58BAD8);
    *v3 = v0;
    v3[1] = sub_19A49AF10;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_19A49AF10()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_19A49B15C;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_19A49B02C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19A49B02C()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_19A57328C())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2580, &qword_19A58BAD8);
  *v4 = v0;
  v4[1] = sub_19A49AF10;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_19A49B15C()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_19A57328C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2580, &qword_19A58BAD8);
    *v4 = v0;
    v4[1] = sub_19A49AF10;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t GenerativePlayground.GenerationTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState;
  v7 = type metadata accessor for GenerationState(0);
  sub_19A33546C(v6 + *(v7 + 20), v5, &qword_1EAF9FD80, &unk_19A57B720);
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t GenerativePlayground.GenerationTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall GenerativePlayground.GenerationTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t GenerativePlayground.GenerationTask.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_19A5741FC();
  v13[1] = v8;
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  v9 = v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState;
  v10 = type metadata accessor for GenerationState(0);
  sub_19A33546C(v9 + *(v10 + 20), v3, &qword_1EAF9FD80, &unk_19A57B720);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_19A49BE48(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_19A573EDC();
    MEMORY[0x19A900A50](v12);

    (*(v5 + 8))(v7, v4);
    return v13[0];
  }

  return result;
}

uint64_t GenerativePlayground.GenerationTask.deinit(double a1)
{
  sub_19A49BD0C(v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller));
  sub_19A2F3FA0(v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer, &qword_1EAF9FDE0, &unk_19A57B770);

  sub_19A2F3FA0(v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);
  return v1;
}

uint64_t GenerativePlayground.GenerationTask.__deallocating_deinit(double a1)
{
  GenerativePlayground.GenerationTask.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_19A49B7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState;
  v7 = type metadata accessor for GenerationState(0);
  sub_19A33546C(v6 + *(v7 + 20), v5, &qword_1EAF9FD80, &unk_19A57B720);
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A49B92C()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A49B990()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

double sub_19A49BA14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0708, &qword_19A57BC60);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_19A576E10;
  *(v0 + 56) = &type metadata for GeneratedImageFaceDetectionPolicyEvaluator;
  *(v0 + 64) = &off_1F0DAD048;
  return result;
}

uint64_t type metadata accessor for GenerativePlayground.GenerationTask(uint64_t a1)
{
  result = qword_1EAF9EB58;
  if (!qword_1EAF9EB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A49BB04(uint64_t a1)
{
  type metadata accessor for GenerationState(319);
  if (v1 <= 0x3F)
  {
    sub_19A366D8C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_19A49BC38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_19A49BC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_19A49BD0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A49BD6C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_19A2F759C;

  return sub_19A49A034(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_19A49BE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A49BEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A49BF08(uint64_t a1)
{
  v4 = *(type metadata accessor for GeneratedImage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A2F759C;

  return sub_19A498244(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_19A49C038(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A31CA04(a1, v4);
}

uint64_t sub_19A49C0F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19A49C18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A49C1F4(uint64_t a1)
{
  v3 = *(type metadata accessor for GeneratedImage(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for GenerationRecipe(0) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_19A33558C;

  return sub_19A49A7A8(a1, v9, v10, v1 + v4, v12, v13, v1 + v7, v1 + v8);
}

id InputImageFacesPolicy.inputImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t InputImageFacesPolicy.description.getter()
{
  sub_19A57395C();
  v0 = sub_19A573EDC();

  MEMORY[0x19A900A50](0xD000000000000011, 0x800000019A59B3B0);
  sub_19A573ACC();
  MEMORY[0x19A900A50](3943982, 0xE300000000000000);
  sub_19A573ACC();
  MEMORY[0x19A900A50](0, 0xE000000000000000);

  MEMORY[0x19A900A50](0x6465776F6C6C6120, 0xE800000000000000);
  return v0;
}

unint64_t sub_19A49C51C(uint64_t a1)
{
  result = sub_19A2F1248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19A49C544(uint64_t a1)
{
  result = sub_19A49C56C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19A49C56C()
{
  result = qword_1EAFA2588;
  if (!qword_1EAFA2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2588);
  }

  return result;
}

uint64_t sub_19A49C5C4()
{
  v1 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v5 == v4)
  {
    sub_19A572C4C();
LABEL_9:
    sub_19A5710EC();
    return sub_19A572D7C();
  }

  if (v5)
  {
    sub_19A572C8C();
    sub_19A572C7C();
    sub_19A572C5C();
    sub_19A572C7C();
    sub_19A572C5C();
    sub_19A572C7C();
    if (!__OFSUB__(v4, 1))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  sub_19A572C8C();
  sub_19A572C7C();
  sub_19A572C5C();
  result = sub_19A572C7C();
  if (!__OFSUB__(v4, 1))
  {
LABEL_8:
    sub_19A572C5C();
    sub_19A572C7C();
    sub_19A572CAC();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A49C8BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A49C904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A49C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19A57102C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A49CA2C, 0, 0);
}

uint64_t sub_19A49CA2C()
{
  v39 = v0;
  v1 = *(v0[7] + 16);
  v1(v0[9], v0[5] + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask_id, v0[6]);
  v38[0] = 0x206B736154;
  v38[1] = 0xE500000000000000;
  sub_19A36BC14(&qword_1ED8252D8, MEMORY[0x1E69695E0]);
  v2 = sub_19A573EDC();
  MEMORY[0x19A900A50](v2);

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  v0[10] = 0x206B736154;
  v0[11] = 0xE500000000000000;
  if (qword_1EAF9F200 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  v0[12] = __swift_project_value_buffer(v3, qword_1EAFCA1D0);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(0x206B736154, 0xE500000000000000, v38);
    _os_log_impl(&dword_19A2DE000, v4, v5, "%{public}s assigning conditioning image", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = sub_19A57231C();
  v0[13] = v8;
  v37 = *(v8 - 8);
  v0[14] = v37;
  v0[15] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = sub_19A57236C();
  __swift_project_value_buffer(v12, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v1(v10, v9, v11);
  v13 = sub_19A57234C();
  v14 = sub_19A57361C();
  v15 = sub_19A57376C();
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v19 = 136446210;
    v20 = sub_19A573EDC();
    v36 = v14;
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v16, v18);
    v24 = sub_19A31F114(v20, v22, v38);

    *(v19 + 4) = v24;
    v25 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v36, v25, "conditioningImageAssignment", "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x19A902C50](v35, -1, -1);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  else
  {

    v23 = *(v17 + 8);
    v23(v16, v18);
  }

  v0[16] = v23;
  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  swift_task_alloc();
  (*(v37 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[17] = sub_19A5723AC();

  v29 = swift_task_alloc();
  v0[18] = v29;
  v29[2] = v26;
  v29[3] = v28;
  v29[4] = v27;
  v29[5] = 0x206B736154;
  v29[6] = 0xE500000000000000;
  v30 = swift_task_alloc();
  v0[19] = v30;
  *(v30 + 16) = 0x206B736154;
  *(v30 + 24) = 0xE500000000000000;
  v31 = swift_task_alloc();
  v0[20] = v31;
  v32 = type metadata accessor for DefinitionSession(0);
  *v31 = v0;
  v31[1] = sub_19A49CF98;
  v33 = v0[2];

  return MEMORY[0x1EEE6DE18](v33, &unk_19A58BD00, v29, sub_19A368918, v30, 0, 0, v32);
}

uint64_t sub_19A49CF98()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_19A49D1C8;
  }

  else
  {

    v2 = sub_19A49D0D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A49D0D0()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[6];
  sub_19A49D6A0("conditioningImageAssignment", 27, 2);

  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A49D1C8()
{
  v27 = v0;
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_19A49D6A0("conditioningImageAssignment", 27, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v1;
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();

  if (!os_log_type_enabled(v6, v7))
  {

    v17 = v0[3];
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = v0[21];
  v10 = v0[10];
  v9 = v0[11];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v25 = v13;
  *v11 = 136446466;
  v14 = sub_19A31F114(v10, v9, &v25);

  *(v11 + 4) = v14;
  *(v11 + 12) = 2112;
  v15 = v8;
  v16 = _swift_stdlib_bridgeErrorToNSError();
  *(v11 + 14) = v16;
  *v12 = v16;
  _os_log_impl(&dword_19A2DE000, v6, v7, "%{public}s conditioning image rejected - %@", v11, 0x16u);
  sub_19A2F3FA0(v12, &qword_1EAF9FD28, &qword_19A577340);
  MEMORY[0x19A902C50](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A902C50](v13, -1, -1);
  MEMORY[0x19A902C50](v11, -1, -1);

  v17 = v0[3];
  if (v17)
  {
LABEL_5:
    v18 = v0[5];
    v25 = v0[21];
    v26 = 64;
    v19 = v25;
    v17(v18, &v25);
    sub_19A36C080(v25, v26);
  }

LABEL_6:
  v20 = v0[16];
  v21 = v0[9];
  v22 = v0[6];
  swift_willThrow();
  v20(v21, v22);

  v23 = v0[1];

  return v23();
}

id KeyboardEmojiGenerator.ConditioningImageAssignmentTask.conditioningImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    *a1 = v3;
    *(a1 + 8) = v4;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyboardEmojiGenerator.ConditioningImageAssignmentTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask_id;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KeyboardEmojiGenerator.ConditioningImageAssignmentTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall KeyboardEmojiGenerator.ConditioningImageAssignmentTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

unint64_t KeyboardEmojiGenerator.ConditioningImageAssignmentTask.description.getter()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8, MEMORY[0x1E69695E0]);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD000000000000020;
}

uint64_t sub_19A49D6A0(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A49D988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_19A57102C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A49DA50, 0, 0);
}

uint64_t sub_19A49DA50()
{
  sub_19A4332A4();
  v1 = *(v0 + 200);
  sub_19A36C0A8(v1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__definitionSession, *(v0 + 192));
  v2 = *(v1 + 16);
  *(v0 + 264) = v2;
  v3 = *(v2 + 16);
  *(v0 + 272) = v3;
  v4 = type metadata accessor for DefinitionSession(0);
  v5 = *(v4 + 88);
  if (v3)
  {
    v6 = *(v0 + 192);
    *(v0 + 140) = v5;
    v7 = *(v6 + v5);
    v8 = *(v0 + 208);
    *(v0 + 153) = v7;
    *(v0 + 156) = *(v6 + *(v4 + 20) + 20);
    result = type metadata accessor for GenerationRecipe(0);
    *(v0 + 172) = *(result + 72);
    *(v0 + 280) = 0;
    if (!*(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = *(v2 + 32);
    *(v0 + 288) = v10;
    v11 = *(v2 + 40);
    *(v0 + 154) = v11;
    if (v8)
    {
      v12 = *(v0 + 200);
      *(v0 + 176) = v10;
      *(v0 + 184) = v11;
      v13 = v10;
      v8(v12, v0 + 176);
      sub_19A36C080(*(v0 + 176), *(v0 + 184));
      v7 = *(v0 + 153);
    }

    else
    {
      v20 = v10;
    }

    v21 = sub_19A4CB924();
    *(v0 + 312) = v21;
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        v22 = "promptGuidanceSketchAssignment";
        v23 = 0xD000000000000010;
        goto LABEL_16;
      }

      v44 = 0xD000000000000025;
      v22 = "Generation.AppleDiffusion";
    }

    else
    {
      if (!v7)
      {
        v22 = ".PhotosGenerativeEdit";
        v23 = 0xD000000000000027;
LABEL_16:
        v44 = v23;
        goto LABEL_17;
      }

      v44 = 0xD000000000000025;
      v22 = ".KeyboardEmojiGenerator";
    }

LABEL_17:
    *(v0 + 320) = v22;
    (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 192) + *(v0 + 140) + *(v0 + 172), *(v0 + 240));
    v24 = *(v21 + 16);

    os_unfair_lock_lock((v24 + 80));
    v25 = *(v24 + 64);
    v26 = *(v24 + 72);
    if (v25)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v26;
      v28 = sub_19A3555A0;
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }

    sub_19A3558F8(v25, v26);
    os_unfair_lock_unlock((v24 + 80));
    if (v25 && (sub_19A3558FC(v28, v27), *(v0 + 160) = v10, *(v0 + 168) = v11, v29 = sub_19A4CEB54(), v30 >> 60 != 15))
    {
      v36 = v29;
      v37 = v30;
      v38 = sub_19A570F1C();
      v40 = v39;
      sub_19A33EFB0(v36, v37);
      *(v0 + 139) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19A576E10;
      *(inited + 32) = 0x6567616D49676E70;
      v42 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEC00000061746144;
      *(inited + 48) = v38;
      *(inited + 56) = v40;
      v43 = sub_19A330370(inited);
      swift_setDeallocating();
      sub_19A2F3FA0(v42, &qword_1EAFA2F00, &qword_19A578A30);
      sub_19A338028((v0 + 139), v43, v0 + 112);
      v31 = *(v0 + 112);
      v32 = *(v0 + 120);
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    *(v0 + 128) = v10;
    *(v0 + 136) = v11;
    *(v0 + 96) = v31;
    *(v0 + 104) = v32;
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_19A49E0F0;
    v34 = *(v0 + 156);
    v35 = *(v0 + 256);

    return sub_19A353318(v0 + 137, (v0 + 128), 0, 0, v44, v22 | 0x8000000000000000, v34, v35);
  }

  v14 = *(v0 + 192);
  v15 = (*(v0 + 200) + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__options);
  v16 = *v15;
  v17 = v14 + *(type metadata accessor for GenerationRecipe(0) + 20) + v5;
  *(v17 + 52) = v16;
  *(v17 + 53) = v15[1];
  *(v0 + 138) = 1;
  v18 = swift_task_alloc();
  *(v0 + 296) = v18;
  *v18 = v0;
  v18[1] = sub_19A49DFB4;
  v19 = *(v0 + 264);

  return sub_19A4C07D8(v19, (v0 + 138));
}

uint64_t sub_19A49DFB4()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A49E9B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A49E0F0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_19A49E910;
  }

  else
  {
    v2 = sub_19A49E234;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_19A49E234()
{
  v59 = v0;
  v1 = *(v0 + 336);
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  sub_19A4332A4();
  if (v1)
  {
    v2 = *(v0 + 288);
    sub_19A36BAC0(*(v0 + 192));

    v3 = *(v0 + 8);

    v3();
    return;
  }

  if (qword_1EAF9F200 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1EAFCA1D0);

  v5 = sub_19A5723DC();
  v6 = sub_19A57356C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v58 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_19A31F114(v8, v7, &v58);
    _os_log_impl(&dword_19A2DE000, v5, v6, "%{public}s accepted conditioning image", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x19A902C50](v10, -1, -1);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  v11 = *(v0 + 208);
  if (v11)
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 200);
    v14 = *(v0 + 154) | 0x80;
    *(v0 + 144) = v12;
    *(v0 + 152) = v14;
    v15 = v12;
    v11(v13, v0 + 144);

    sub_19A36C080(*(v0 + 144), *(v0 + 152));
  }

  else
  {
    v16 = *(v0 + 288);
  }

  v17 = *(v0 + 280) + 1;
  if (v17 == *(v0 + 272))
  {
    v18 = *(v0 + 192);
    v19 = (*(v0 + 200) + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__options);
    v20 = *v19;
    v21 = v18 + *(type metadata accessor for DefinitionSession(0) + 88);
    v22 = v21 + *(type metadata accessor for GenerationRecipe(0) + 20);
    *(v22 + 52) = v20;
    *(v22 + 53) = v19[1];
    *(v0 + 138) = 1;
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = sub_19A49DFB4;
    v24 = *(v0 + 264);

    sub_19A4C07D8(v24, (v0 + 138));
    return;
  }

  *(v0 + 280) = v17;
  v25 = *(v0 + 264);
  if (v17 >= *(v25 + 16))
  {
    __break(1u);
    return;
  }

  v26 = *(v0 + 208);
  v27 = v25 + 16 * v17;
  v28 = *(v27 + 32);
  *(v0 + 288) = v28;
  v29 = *(v27 + 40);
  *(v0 + 154) = v29;
  if (v26)
  {
    v30 = *(v0 + 200);
    *(v0 + 176) = v28;
    *(v0 + 184) = v29;
    v31 = v28;
    v26(v30, v0 + 176);
    sub_19A36C080(*(v0 + 176), *(v0 + 184));
  }

  else
  {
    v32 = v28;
  }

  v33 = *(v0 + 153);
  v34 = sub_19A4CB924();
  *(v0 + 312) = v34;
  if (v33 > 1)
  {
    if (v33 != 2)
    {
      v35 = "promptGuidanceSketchAssignment";
      v36 = 0xD000000000000010;
      goto LABEL_27;
    }

    v57 = 0xD000000000000025;
    v35 = "Generation.AppleDiffusion";
  }

  else
  {
    if (!v33)
    {
      v35 = ".PhotosGenerativeEdit";
      v36 = 0xD000000000000027;
LABEL_27:
      v57 = v36;
      goto LABEL_28;
    }

    v57 = 0xD000000000000025;
    v35 = ".KeyboardEmojiGenerator";
  }

LABEL_28:
  *(v0 + 320) = v35;
  (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 192) + *(v0 + 140) + *(v0 + 172), *(v0 + 240));
  v37 = *(v34 + 16);

  os_unfair_lock_lock((v37 + 80));
  v38 = *(v37 + 64);
  v39 = *(v37 + 72);
  if (v38)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    v41 = sub_19A3555A0;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  sub_19A3558F8(v38, v39);
  os_unfair_lock_unlock((v37 + 80));
  if (v38 && (sub_19A3558FC(v41, v40), *(v0 + 160) = v28, *(v0 + 168) = v29, v42 = sub_19A4CEB54(), v43 >> 60 != 15))
  {
    v49 = v42;
    v50 = v43;
    v51 = sub_19A570F1C();
    v53 = v52;
    sub_19A33EFB0(v49, v50);
    *(v0 + 139) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0x6567616D49676E70;
    v55 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xEC00000061746144;
    *(inited + 48) = v51;
    *(inited + 56) = v53;
    v56 = sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(v55, &qword_1EAFA2F00, &qword_19A578A30);
    sub_19A338028((v0 + 139), v56, v0 + 112);
    v44 = *(v0 + 112);
    v45 = *(v0 + 120);
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  *(v0 + 128) = v28;
  *(v0 + 136) = v29;
  *(v0 + 96) = v44;
  *(v0 + 104) = v45;
  v46 = swift_task_alloc();
  *(v0 + 328) = v46;
  *v46 = v0;
  v46[1] = sub_19A49E0F0;
  v47 = *(v0 + 156);
  v48 = *(v0 + 256);
  v61 = v0 + 96;

  sub_19A353318(v0 + 137, (v0 + 128), 0, 0, v57, v35 | 0x8000000000000000, v47, v48);
}

uint64_t sub_19A49E910()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  v1 = v0[36];
  v2 = v0[24];

  sub_19A36BAC0(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A49E9B0()
{
  sub_19A36BAC0(*(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KeyboardEmojiGenerator.ConditioningImageAssignmentTask.deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller));
  return v0;
}

uint64_t KeyboardEmojiGenerator.ConditioningImageAssignmentTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller));

  return swift_deallocClassInstance();
}

uint64_t sub_19A49EB68@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A49EBE4()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A49EC48()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator31ConditioningImageAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

unint64_t sub_19A49ECA8()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8, MEMORY[0x1E69695E0]);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD000000000000020;
}

uint64_t type metadata accessor for KeyboardEmojiGenerator.ConditioningImageAssignmentTask(uint64_t a1)
{
  result = qword_1EAFA25A8;
  if (!qword_1EAFA25A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A49EDC0(uint64_t a1)
{
  result = sub_19A57102C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DefinitionSession(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19A49EEC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A2F759C;

  return sub_19A49D988(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A49EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6 >= v7;
  v9 = v5 < v4 || v8;
  if (v4 >= v5)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t PixelDimensions.description.getter()
{
  v2 = sub_19A573EDC();
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return v2;
}

uint64_t sub_19A49F098()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

void sub_19A49F0CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A49F1A0(uint64_t a1)
{
  v2 = sub_19A49F7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A49F1DC(uint64_t a1)
{
  v2 = sub_19A49F7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PixelDimensions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25B8, &qword_19A58BD10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A49F7B4();
  sub_19A5741AC();
  v11 = 0;
  sub_19A573E6C();
  if (!v2)
  {
    v10 = 1;
    sub_19A573E6C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PixelDimensions.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x19A901C40](*v0);
  return MEMORY[0x19A901C40](v1);
}

uint64_t PixelDimensions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  MEMORY[0x19A901C40](v2);
  return sub_19A57410C();
}

uint64_t PixelDimensions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25C8, &qword_19A58BD18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A49F7B4();
  sub_19A57417C();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_19A573D3C();
    v13 = 1;
    v10 = sub_19A573D3C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A49F5DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  MEMORY[0x19A901C40](v2);
  return sub_19A57410C();
}

uint64_t sub_19A49F638()
{
  v1 = v0[1];
  MEMORY[0x19A901C40](*v0);
  return MEMORY[0x19A901C40](v1);
}

uint64_t sub_19A49F674(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_19A5740BC();
  MEMORY[0x19A901C40](v2);
  MEMORY[0x19A901C40](v3);
  return sub_19A57410C();
}

BOOL sub_19A49F714(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s16VisualGeneration15PixelDimensionsV1loiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL _s16VisualGeneration15PixelDimensionsV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 >= *a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 >= v4)
  {
    v7 = *a2;
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 < v7)
  {
    return 1;
  }

  if (v3 > v2)
  {
    v2 = a1[1];
  }

  if (v5 > v4)
  {
    v4 = a2[1];
  }

  v9 = v2 < v4;
  return v7 >= v6 && v9;
}

unint64_t sub_19A49F7B4()
{
  result = qword_1EAFA25C0;
  if (!qword_1EAFA25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA25C0);
  }

  return result;
}

unint64_t sub_19A49F808()
{
  result = qword_1EAF9F6E8;
  if (!qword_1EAF9F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F6E8);
  }

  return result;
}

unint64_t sub_19A49F880()
{
  result = qword_1EAFA25D0;
  if (!qword_1EAFA25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA25D0);
  }

  return result;
}

unint64_t sub_19A49F8D8()
{
  result = qword_1EAFA25D8;
  if (!qword_1EAFA25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA25D8);
  }

  return result;
}

unint64_t sub_19A49F930()
{
  result = qword_1EAFA25E0;
  if (!qword_1EAFA25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA25E0);
  }

  return result;
}

uint64_t sub_19A49F988(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_19A3355EC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_19A33CD88(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_19A573AFC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_19A2F3FA0(a1, &qword_1EAFA2640, &qword_19A58C1B0);
    sub_19A4AC868(a2, v9);
    v7 = sub_19A573AFC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_19A2F3FA0(v9, &qword_1EAFA2640, &qword_19A58C1B0);
  }

  return result;
}

void sub_19A49FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2 == 1)
  {
    v7 = sub_19A31F6BC(a3, a4);
    v9 = v8;

    if (v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v5;
      v17 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19A32D004();
        v11 = v17;
      }

      sub_19A4AD0D0(v7, v11, v12);
      *v5 = v11;
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_19A33D7E4(a1, a2, a3, a4, v16);

    *v4 = v18;
  }
}

uint64_t sub_19A49FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1130, &qword_19A5816C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GeneratedImage(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_19A2F3FA0(a1, &qword_1EAFA1130, &qword_19A5816C0);
    v16 = sub_19A31FCD8(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v25 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19A32D2D8();
        v20 = v25;
      }

      sub_19A4AF61C(*(v20 + 56) + *(v12 + 72) * v18, v10, type metadata accessor for GeneratedImage);
      sub_19A4AD280(v18, v20, v21);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_19A2F3FA0(v10, &qword_1EAFA1130, &qword_19A5816C0);
  }

  else
  {
    sub_19A4AF61C(a1, v15, type metadata accessor for GeneratedImage);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    result = sub_19A33DA68(v15, a2, a3, v22);
    *v4 = v25;
  }

  return result;
}

void sub_19A49FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_19A33DD04(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v11 = sub_19A31F6BC(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v18 = *v5;
      if (!v14)
      {
        sub_19A32D67C();
        v15 = v18;
      }

      sub_19A4AD0D0(v11, v15, v16);
      *v5 = v15;
    }
  }
}

uint64_t sub_19A49FF18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F8, &qword_19A58C0F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_19A2F3FA0(a1, &qword_1EAFA25F8, &qword_19A58C0F8);
    v14 = sub_19A31FBD4(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19A32D7F4();
        v18 = v23;
      }

      sub_19A4AF61C(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
      sub_19A4AD460(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_19A2F3FA0(v8, &qword_1EAFA25F8, &qword_19A58C0F8);
  }

  else
  {
    sub_19A4AF61C(a1, v13, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_19A33DE54(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_19A4A016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19A33546C(a3, v22 - v9, &qword_1EAF9FD98, &qword_19A57A710);
  v11 = sub_19A5731CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19A2F3FA0(v10, &qword_1EAF9FD98, &qword_19A57A710);
  }

  else
  {
    sub_19A5731BC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19A57314C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_19A572DEC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19A2F3FA0(a3, &qword_1EAF9FD98, &qword_19A57A710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A2F3FA0(a3, &qword_1EAF9FD98, &qword_19A57A710);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_19A4A0418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19A33546C(a3, v22 - v9, &qword_1EAF9FD98, &qword_19A57A710);
  v11 = sub_19A5731CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19A2F3FA0(v10, &qword_1EAF9FD98, &qword_19A57A710);
  }

  else
  {
    sub_19A5731BC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19A57314C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_19A572DEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0, &qword_19A58C0A0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19A2F3FA0(a3, &qword_1EAF9FD98, &qword_19A57A710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A2F3FA0(a3, &qword_1EAF9FD98, &qword_19A57A710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0, &qword_19A58C0A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_19A4A06D4()
{
  v0 = swift_allocObject();
  type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager(0);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_19A32FDEC(MEMORY[0x1E69E7CC0]);
  v2 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  v3 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_19A4A0788@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int64_t a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v159 = a6;
  v160 = a5;
  v162 = a11;
  v163 = a7;
  v161 = a10;
  v158 = type metadata accessor for ImageProvenance(0);
  MEMORY[0x1EEE9AC00](v158);
  MEMORY[0x1EEE9AC00](v17);
  if (a2)
  {
    if (__OFADD__(a1, 1))
    {
      goto LABEL_106;
    }

    v144 = a4;
    v147 = a1 + 1;
    v148 = &v142 - v18;
    v149 = v19;
    v150 = a8;
    v156 = a9;
    v20 = a2;
    v21 = sub_19A330E3C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for AppleDiffusionResourceFactory(0);
    v22 = static AppleDiffusionResourceFactory.shared(reset:)(0);
    v28 = v22;
    v143 = 0;
    v151 = OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentVersions;
    v29 = *(v22 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentVersions);
    a8 = v29 + 64;
    v30 = 1 << *(v29 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;
    v157 = v29;

    v34 = 0;
    v154 = v20;
    v155 = a2;
    v153 = a3;
    v152 = v28;
    v146 = a8;
    v145 = v33;
LABEL_13:
    v167 = v21;
    if (v32)
    {
      v40 = v34;
LABEL_18:
      v41 = *(v28 + v151);
      if (!*(v41 + 16))
      {
        goto LABEL_104;
      }

      v166 = v40;
      v42 = *(*(v157 + 48) + (__clz(__rbit64(v32)) | (v40 << 6)));
      v43 = sub_19A31FCAC(v42);
      if ((v44 & 1) == 0)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v164 = v42;
      v165 = (v32 - 1) & v32;
      v45 = *(*(v41 + 56) + 8 * v43);

      v46 = sub_19A330D28(MEMORY[0x1E69E7CC0]);
      a8 = v45 + 64;
      v47 = 1 << *(v45 + 32);
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v49 = v48 & *(v45 + 64);
      a3 = (v47 + 63) >> 6;

      v50 = 0;
      v169 = v45 + 64;
      v170 = v45;
      v168 = a3;
      while (v49)
      {
        v52 = v50;
LABEL_31:
        v53 = __clz(__rbit64(v49)) | (v52 << 6);
        v54 = *(v45 + 48);
        v55 = *(v54 + v53);
        if (*(v54 + v53))
        {
          if (v55 == 1)
          {
            v56 = 0x676E696E69617274;
          }

          else
          {
            v56 = 0x6365705361726F6CLL;
          }

          if (v55 == 1)
          {
            v57 = 0xEB00000000676154;
          }

          else
          {
            v57 = 0xE800000000000000;
          }

          if (!*(v45 + 16))
          {
            goto LABEL_99;
          }
        }

        else
        {
          v57 = 0xE700000000000000;
          v56 = 0x676F6C61746163;
          if (!*(v45 + 16))
          {
            goto LABEL_99;
          }
        }

        v58 = sub_19A31FDEC(v55);
        if ((v59 & 1) == 0)
        {
          goto LABEL_100;
        }

        v60 = (*(v45 + 56) + 16 * v58);
        v61 = v60[1];
        v171 = *v60;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = v46;
        a3 = v56;
        v63 = v56;
        v64 = v57;
        a8 = sub_19A31F6BC(v63, v57);
        v66 = v46[2];
        v67 = (v65 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_101;
        }

        v69 = v65;
        if (v46[3] >= v68)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19A32D67C();
          }
        }

        else
        {
          sub_19A32B730(v68, isUniquelyReferenced_nonNull_native);
          v70 = sub_19A31F6BC(a3, v64);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_114;
          }

          a8 = v70;
        }

        v49 &= v49 - 1;
        if (v69)
        {

          v46 = v172;
          v51 = (v172[7] + 16 * a8);
          *v51 = v171;
          v51[1] = v61;
        }

        else
        {
          v46 = v172;
          v172[(a8 >> 6) + 8] |= 1 << a8;
          v72 = (v46[6] + 16 * a8);
          *v72 = a3;
          v72[1] = v64;
          v73 = (v46[7] + 16 * a8);
          *v73 = v171;
          v73[1] = v61;
          v74 = v46[2];
          v75 = __OFADD__(v74, 1);
          v76 = v74 + 1;
          if (v75)
          {
            goto LABEL_103;
          }

          v46[2] = v76;
        }

        v50 = v52;
        a8 = v169;
        v45 = v170;
        a3 = v168;
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v52 >= a3)
        {

          v35 = AppleDiffusionPipeline.ComponentModel.rawValue.getter(v164);
          v37 = v36;
          v38 = v167;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v172 = v38;
          sub_19A33DFA8(v46, v35, v37, v39);

          v21 = v172;
          v32 = v165;
          v34 = v166;
          v20 = v154;
          a2 = v155;
          a3 = v153;
          v28 = v152;
          a8 = v146;
          v33 = v145;
          goto LABEL_13;
        }

        v49 = *(a8 + 8 * v52);
        ++v50;
        if (v49)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_98;
        }

        if (v40 >= v33)
        {
          break;
        }

        v32 = *(a8 + 8 * v40);
        ++v34;
        if (v32)
        {
          goto LABEL_18;
        }
      }

      if (v144 == 11)
      {

LABEL_86:
        if (a3 == 2)
        {
          v119 = v20;
        }

        else
        {
          v120 = v20;
          if (a3)
          {
            a3 = v120;
            a8 = v143;
            a2 = sub_19A35A114(a3, &unk_1F0DA8D60);

            if (a8)
            {

              swift_arrayDestroy();
              if (qword_1ED824050 != -1)
              {
                goto LABEL_113;
              }

LABEL_91:
              v121 = sub_19A5723FC();
              __swift_project_value_buffer(v121, qword_1ED82BCF0);
              v122 = a8;
              v123 = sub_19A5723DC();
              v124 = sub_19A57355C();

              if (os_log_type_enabled(v123, v124))
              {
                v125 = swift_slowAlloc();
                v126 = swift_slowAlloc();
                *v125 = 138412290;
                v127 = a8;
                v128 = _swift_stdlib_bridgeErrorToNSError();
                *(v125 + 4) = v128;
                *v126 = v128;
                _os_log_impl(&dword_19A2DE000, v123, v124, "error framing emoji image: %@", v125, 0xCu);
                sub_19A2F3FA0(v126, &qword_1EAF9FD28, &qword_19A577340);
                MEMORY[0x19A902C50](v126, -1, -1);
                MEMORY[0x19A902C50](v125, -1, -1);
              }

              else
              {
              }

              v141 = type metadata accessor for GeneratedImage(0);
              v24 = *(*(v141 - 8) + 56);
              v25 = v141;
              v26 = v156;
              goto LABEL_5;
            }

            swift_arrayDestroy();
          }
        }

        v129 = v158;
        v130 = *(v158 + 20);
        v131 = sub_19A57102C();
        v132 = v148;
        (*(*(v131 - 8) + 16))(&v148[v130], v159, v131);
        *v132 = v160;
        *&v132[v129[6]] = v147;
        *&v132[v129[7]] = v21;
        *&v132[v129[8]] = 0;
        v133 = v149;
        sub_19A4AF804(v132, v149, type metadata accessor for ImageProvenance);

        sub_19A4AF7A4(v132, type metadata accessor for ImageProvenance);
        v134 = type metadata accessor for GeneratedImage(0);
        v135 = v134[10];
        v136 = v156;
        *(v156 + v135) = 3;
        *v136 = a2;
        *(v136 + 8) = 2;
        sub_19A4AF61C(v133, v136 + v134[5], type metadata accessor for ImageProvenance);
        *(v136 + v134[6]) = v163;
        v137 = v136 + v134[7];
        v138 = v161;
        *v137 = v150;
        *(v137 + 8) = v138;
        *(v137 + 16) = v162 & 1;
        v139 = (v136 + v134[8]);
        *v139 = 0;
        v139[1] = 0xE000000000000000;
        v140 = (v136 + v134[9]);
        *v140 = 0;
        v140[1] = 0xE000000000000000;
        *(v136 + v135) = 3;
        return (*(*(v134 - 1) + 56))(v136, 0, 1, v134);
      }

      v77 = *(v28 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions);
      if (!*(v77 + 16))
      {
        goto LABEL_111;
      }

      v78 = sub_19A31FBD4(v144);
      if ((v79 & 1) == 0)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        swift_once();
        goto LABEL_91;
      }

      v80 = *(*(v77 + 56) + 8 * v78);

      v81 = sub_19A330D28(MEMORY[0x1E69E7CC0]);
      v82 = v80 + 64;
      v83 = 1 << *(v80 + 32);
      v84 = -1;
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      v85 = v84 & *(v80 + 64);
      v86 = (v83 + 63) >> 6;

      v87 = 0;
      v169 = v80 + 64;
      v170 = v80;
      while (v85)
      {
        a3 = v87;
LABEL_65:
        v90 = __clz(__rbit64(v85)) | (a3 << 6);
        v91 = *(v80 + 48);
        v92 = *(v91 + v90);
        if (*(v91 + v90))
        {
          if (v92 == 1)
          {
            v93 = 0x676E696E69617274;
          }

          else
          {
            v93 = 0x6365705361726F6CLL;
          }

          if (v92 == 1)
          {
            v94 = 0xEB00000000676154;
          }

          else
          {
            v94 = 0xE800000000000000;
          }

          if (!*(v80 + 16))
          {
            goto LABEL_107;
          }
        }

        else
        {
          v94 = 0xE700000000000000;
          v93 = 0x676F6C61746163;
          if (!*(v80 + 16))
          {
            goto LABEL_107;
          }
        }

        v95 = sub_19A31FDEC(v92);
        if ((v96 & 1) == 0)
        {
          goto LABEL_108;
        }

        v97 = (*(v80 + 56) + 16 * v95);
        a8 = v97[1];
        v171 = *v97;

        v98 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v81;
        v99 = v93;
        v100 = v93;
        v101 = v94;
        v102 = sub_19A31F6BC(v100, v94);
        v104 = v81[2];
        v105 = (v103 & 1) == 0;
        v75 = __OFADD__(v104, v105);
        v106 = v104 + v105;
        if (v75)
        {
          goto LABEL_109;
        }

        v107 = v103;
        if (v81[3] >= v106)
        {
          if ((v98 & 1) == 0)
          {
            v113 = v102;
            sub_19A32D67C();
            v102 = v113;
          }
        }

        else
        {
          sub_19A32B730(v106, v98);
          v102 = sub_19A31F6BC(v99, v101);
          if ((v107 & 1) != (v108 & 1))
          {
LABEL_114:
            result = sub_19A57404C();
            __break(1u);
            return result;
          }
        }

        v85 &= v85 - 1;
        if (v107)
        {
          v88 = v102;

          v81 = v172;
          v89 = (v172[7] + 16 * v88);
          *v89 = v171;
          v89[1] = a8;
        }

        else
        {
          v81 = v172;
          v172[(v102 >> 6) + 8] |= 1 << v102;
          v109 = (v81[6] + 16 * v102);
          *v109 = v99;
          v109[1] = v101;
          v110 = (v81[7] + 16 * v102);
          *v110 = v171;
          v110[1] = a8;
          v111 = v81[2];
          v75 = __OFADD__(v111, 1);
          v112 = v111 + 1;
          if (v75)
          {
            goto LABEL_110;
          }

          v81[2] = v112;
        }

        v87 = a3;
        v82 = v169;
        v80 = v170;
      }

      while (1)
      {
        a3 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (a3 >= v86)
        {

          v114 = AppleDiffusionAdapter.rawValue.getter(v144);
          v116 = v115;
          v117 = v167;
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v172 = v117;
          sub_19A33DFA8(v81, v114, v116, v118);

          v21 = v172;
          v20 = v154;
          a2 = v155;
          LOBYTE(a3) = v153;
          goto LABEL_86;
        }

        v85 = *(v82 + 8 * a3);
        ++v87;
        if (v85)
        {
          goto LABEL_65;
        }
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v23 = type metadata accessor for GeneratedImage(0);
  v24 = *(*(v23 - 8) + 56);
  v25 = v23;
  v26 = a9;
LABEL_5:

  return v24(v26, 1, 1, v25);
}

uint64_t sub_19A4A13E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1130, &qword_19A5816C0);
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for GeneratedImage(0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30, &unk_19A57EAB0);
  v5[17] = swift_task_alloc();
  v7 = sub_19A5731CC();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for PipelineConfiguration(0);
  v5[21] = swift_task_alloc();
  v8 = sub_19A57102C();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A1624, 0, 0);
}

uint64_t sub_19A4A1624()
{
  *(v0 + 296) = **(v0 + 64);
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_19A4A16CC;
  v2 = *(v0 + 64);

  return sub_19A4A6BBC(v0 + 16, v2);
}

uint64_t sub_19A4A16CC(char a1)
{
  v3 = *v2;
  *(v3 + 297) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_19A4A1E94;
  }

  else
  {
    v4 = sub_19A4A17E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A4A17E4()
{
  v59 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_id;
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v10 = sub_19A5723FC();
  v0[31] = __swift_project_value_buffer(v10, qword_1ED82BCF0);
  v6(v8, v7, v9);
  v11 = sub_19A5723DC();
  v12 = sub_19A57356C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[25];
  v16 = v0[22];
  v15 = v0[23];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v17 = 136446210;
    sub_19A4AF86C(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = sub_19A573EDC();
    v20 = v19;
    v54 = v12;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = sub_19A31F114(v18, v20, v58);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_19A2DE000, v11, v54, "Configuring pipeline for task %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x19A902C50](v55, -1, -1);
    MEMORY[0x19A902C50](v17, -1, -1);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  v0[32] = v21;
  v23 = v0[28];
  v24 = v0[21];
  v25 = v0[8];
  type metadata accessor for AppleDiffusionImageGenerator();
  sub_19A4A76C8(v25, (v0 + 2), v24);
  if (v23)
  {
    v21(v0[26], v0[22]);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    v26 = v0[1];

    return v26();
  }

  else
  {
    sub_19A43274C();

    v28 = sub_19A5723DC();
    v29 = sub_19A57356C();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = v0[19];
      v30 = v0[20];
      v32 = v0[18];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58[0] = v34;
      *v33 = 136446466;
      sub_19A4AF86C(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v35 = sub_19A573EDC();
      v37 = sub_19A31F114(v35, v36, v58);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      sub_19A57324C();
      v38 = sub_19A5731AC();
      v40 = v39;
      (*(v31 + 8))(v30, v32);
      v41 = sub_19A31F114(v38, v40, v58);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_19A2DE000, v28, v29, "Running pipeline image generation for task %{public}s at priority %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v34, -1, -1);
      MEMORY[0x19A902C50](v33, -1, -1);
    }

    v42 = v0[17];
    v43 = v0[11];
    v44 = type metadata accessor for InferenceDiagnosticsAccessor(0);
    v56 = *(v0 + 9);
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
    v45 = v0[5];
    v46 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
    v47 = OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_requestIdentifier;
    v48 = v56;
    v49 = swift_task_alloc();
    v0[33] = v49;
    *(v49 + 16) = v56;
    *(v49 + 32) = v43;
    v57 = (*(v46 + 24) + **(v46 + 24));
    v50 = swift_task_alloc();
    v0[34] = v50;
    *v50 = v0;
    v50[1] = sub_19A4A1F6C;
    v51 = v0[26];
    v52 = v0[17];
    v53 = v0[21];

    return v57(v53, v48 + v47, v51, v52, sub_19A4AFB30, v49, v45, v46);
  }
}

uint64_t sub_19A4A1E94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4A1F6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_19A4A27D0;
  }

  else
  {
    v4 = sub_19A4A20A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A4A20A8()
{
  v71 = v0;
  (*(v0 + 232))(*(v0 + 192), *(v0 + 208), *(v0 + 176));
  swift_bridgeObjectRetain_n();
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 192);
  v68 = v0;
  v7 = *(v0 + 176);
  if (v3)
  {
    v66 = v2;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v70 = v9;
    *v8 = 136446466;
    sub_19A4AF86C(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_19A573EDC();
    v12 = v11;
    v5(v6, v7);
    v13 = sub_19A31F114(v10, v12, &v70);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    v14 = *(v4 + 16);

    *(v8 + 14) = v14;

    _os_log_impl(&dword_19A2DE000, v1, v66, "Completed pipeline image generation for task %{public}s; number of images generated: %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v5(v6, v7);
  }

  v15 = v68;
  v16 = v68[36];
  sub_19A43274C();
  if (v16)
  {
    v17 = v68[32];
    v18 = v68[26];
    v19 = v68[22];
    v20 = v68[21];
    v21 = v68;
    v22 = v68[17];

    sub_19A2F3FA0(v22, &qword_1EAFA0C30, &unk_19A57EAB0);
    sub_19A4AF7A4(v20, type metadata accessor for PipelineConfiguration);
    v17(v18, v19);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0Tm(v21 + 2);

    v23 = v21[1];
LABEL_23:

    return v23();
  }

  v24 = v68[8];
  result = type metadata accessor for GenerationRecipe(0);
  v26 = *(v24 + *(result + 24));
  v27 = v68[35];
  if (!*(v26 + 16))
  {
    v45 = v68[32];
    v46 = v68[26];
    v47 = v68[22];
    v21 = v68;
    v48 = v68[21];
    v49 = v68[17];

    type metadata accessor for GeneratorError(0);
    sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
    swift_allocError();
    *v50 = 0xD000000000000034;
    v50[1] = 0x800000019A59B690;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_19A2F3FA0(v49, &qword_1EAFA0C30, &unk_19A57EAB0);
    sub_19A4AF7A4(v48, type metadata accessor for PipelineConfiguration);
    v45(v46, v47);
    goto LABEL_6;
  }

  v65 = *(v27 + 16);
  if (!v65)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v51 = v15[32];
    v52 = v15[26];
    v54 = v15[21];
    v53 = v15[22];
    v55 = v15[17];
    v56 = v15;
    v57 = v15[7];

    sub_19A4AF7A4(v54, type metadata accessor for PipelineConfiguration);
    v51(v52, v53);
    v58 = type metadata accessor for ImageGenerator.Result(0);
    sub_19A3351B8(v55, v57 + *(v58 + 20), &qword_1EAFA0C30, &unk_19A57EAB0);
    *v57 = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(v56 + 2);

    v23 = v56[1];
    goto LABEL_23;
  }

  v28 = 0;
  v63 = *(v26 + 32);
  v29 = v24 + *(result + 36);
  v61 = *(v29 + 8);
  v62 = *v29;
  v60 = *(v29 + 16);
  v59 = v68[14];
  v30 = (v27 + 40);
  v31 = MEMORY[0x1E69E7CC0];
  v64 = v68[35];
  while (v28 < *(v27 + 16))
  {
    v32 = v15[26];
    v33 = v15[12];
    v67 = v15[13];
    v69 = v31;
    v34 = *(v30 - 1);
    v35 = *v30;
    v36 = *(v15 + 296);
    v37 = *(v15 + 297);
    v38 = v34;
    sub_19A4A0788(v28, v34, v35, v37, v36, v32, v63, v62, v33, v61, v60);

    if ((*(v59 + 48))(v33, 1, v67) == 1)
    {
      result = sub_19A2F3FA0(v15[12], &qword_1EAFA1130, &qword_19A5816C0);
      v31 = v69;
    }

    else
    {
      v39 = v15[15];
      v40 = v15[16];
      sub_19A4AF61C(v15[12], v40, type metadata accessor for GeneratedImage);
      sub_19A4AF61C(v40, v39, type metadata accessor for GeneratedImage);
      v31 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_19A31DA3C(0, v69[2] + 1, 1, v69);
      }

      v42 = v31[2];
      v41 = v31[3];
      if (v42 >= v41 >> 1)
      {
        v31 = sub_19A31DA3C((v41 > 1), v42 + 1, 1, v31);
      }

      v43 = v15[15];
      v31[2] = v42 + 1;
      result = sub_19A4AF61C(v43, v31 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v42, type metadata accessor for GeneratedImage);
    }

    ++v28;
    v30 += 16;
    v27 = v64;
    if (v65 == v28)
    {
      v44 = v31;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}