void sub_22F263A08(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(a3);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    v14 = [a1 photoLibrary];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [v14 librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22F771340;
    *(v17 + 32) = sub_22F740E20();
    *(v17 + 40) = v18;
    v19 = sub_22F741160();

    [v16 setFetchPropertySets_];

    [v16 setWantsIncrementalChangeDetails_];
    v20 = [objc_opt_self() fetchAssetsInAssetCollection:a1 options:v16];
    v21 = [v20 fetchedObjects];

    if (v21)
    {
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v22 = sub_22F741180();

      v23 = sub_22F34CE98(v22, a2, v8, a4);
      if (!v4)
      {
        v13 = v23;

        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v24 = sub_22F740B90();
      __swift_project_value_buffer(v24, qword_2810B4D90);
      v25 = sub_22F740B70();
      v26 = sub_22F7415E0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] [Metadata] Extracted assets backing asset collection: 🛑", v27, 2u);
        MEMORY[0x2319033A0](v27, -1, -1);
      }

      sub_22F263F04();
      swift_allocError();
      *v28 = a1;
      *(v28 + 8) = 0;
      *(v28 + 16) = 1;
      swift_willThrow();
      v29 = a1;
    }

LABEL_15:

    return;
  }

  v10 = v9;
  v11 = a1;
  sub_22F2C780C(v10, a2, v8, a4);
  v13 = v12;

  if (v4)
  {
    goto LABEL_15;
  }

LABEL_14:
  sub_22F7416A0();
  v30 = 7104878;
  sub_22F741B00();

  v31 = [a1 uuid];
  if (v31)
  {
    v32 = v31;
    v33 = sub_22F740E20();
    v35 = v34;
  }

  else
  {
    v35 = 0xE300000000000000;
    v33 = 7104878;
  }

  MEMORY[0x231900B10](v33, v35);

  MEMORY[0x231900B10](0x203A656C7469740ALL, 0xE800000000000000);
  v36 = [a1 title];
  v37 = sub_22F740E20();
  v39 = v38;

  MEMORY[0x231900B10](v37, v39);

  MEMORY[0x231900B10](0x6C7469746275730ALL, 0xEB00000000203A65);
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40 && (v41 = [v40 subtitle]) != 0)
  {
    v42 = v41;
    v30 = sub_22F740E20();
    v44 = v43;
  }

  else
  {
    v44 = 0xE300000000000000;
  }

  MEMORY[0x231900B10](v30, v44);

  MEMORY[0x231900B10](2570, 0xE200000000000000);
  v45 = MusicCurationFeatures.description.getter();
  MEMORY[0x231900B10](v45);
}

unint64_t sub_22F263F04()
{
  result = qword_27DAB2BD8;
  if (!qword_27DAB2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BD8);
  }

  return result;
}

void NodeCollectionBinaryAdjacency.init(sources:relation:targetClass:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v7 = [v6 concreteGraph];

  if (v7)
  {
    v8 = [a1 elementIdentifiers];
    v9 = [v7 adjacencyWithSources:v8 relation:a2];

    swift_unknownObjectRelease();
    *a3 = v9;
    a3[1] = v7;
  }

  else
  {
    sub_22F741D40();
    __break(1u);
  }
}

id NodeCollectionBinaryAdjacency.sources.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));
  v5 = [v2 sources];
  v6 = [v4 initWithGraph:v3 elementIdentifiers:v5];

  return v6;
}

uint64_t NodeCollectionBinaryAdjacency.enumerateTargetsBySource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v8;
  *(v9 + 56) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F264610;
  *(v10 + 24) = v9;
  v14[4] = sub_22F20AE34;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F107F34;
  v14[3] = &block_descriptor_14;
  v11 = _Block_copy(v14);
  v12 = v8;
  swift_unknownObjectRetain();

  [v12 enumerateTargetsBySourceWith_];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v8;
  *(v9 + 56) = v7;
  *(v9 + 64) = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F264A44;
  *(v10 + 24) = v9;
  v14[4] = sub_22F264C60;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F107F34;
  v14[3] = &block_descriptor_13_0;
  v11 = _Block_copy(v14);

  v12 = v8;
  swift_unknownObjectRetain();

  [v12 enumerateTargetsBySourceWith_];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else if (v15)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

id NodeCollectionBinaryAdjacency.targets(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v11 = v4;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata(v4));
  v7 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v8 = [v6 initWithGraph:v5 elementIdentifiers:v7];

  v9 = NodeCollectionBinaryAdjacency.targets(for:)(v8);
  swift_unknownObjectRelease();
  return v9;
}

id NodeCollectionBinaryAdjacency.transposed()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  result = [v4 transposed];
  *a1 = result;
  a1[1] = v3;
  return result;
}

id NodeCollectionBinaryAdjacency.targets.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));
  v5 = [v2 targets];
  v6 = [v4 initWithGraph:v3 elementIdentifiers:v5];

  return v6;
}

uint64_t NodeCollectionBinaryAdjacency.init(adjacency:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_22F264494(void *a1@<X0>, SEL *a2@<X2>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  swift_unknownObjectRetain();
  v9 = [a1 elementIdentifiers];
  v10 = [v8 *a2];

  *a3 = v10;
  a3[1] = v7;
}

uint64_t sub_22F264518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(id, id, uint64_t)@<X3>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata(a6));
  v12 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v13 = [v11 initWithGraph:a5 elementIdentifiers:v12];

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v14)) initWithGraph:a5 elementIdentifiers:a2];
  a4(v13, v15, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F264830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(id, id, uint64_t)@<X3>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata(a6));
  v12 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v13 = [v11 initWithGraph:a5 elementIdentifiers:v12];

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v14)) initWithGraph:a5 elementIdentifiers:a2];
  a4(v13, v15, a3);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

id NodeCollectionBinaryAdjacency.targets(for:)(void *a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = [a1 elementIdentifiers];
  v5 = [v3 targetsForSources_];

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v6)) initWithGraph:v2 elementIdentifiers:v5];
  return v7;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id NodeCollectionBinaryAdjacency.union(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  swift_unknownObjectRetain();
  result = [v6 unionWith_];
  *a2 = result;
  a2[1] = v5;
  return result;
}

id MAGraphChangeRequest.remove<A>(_:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {

    return [v2 removeEdges_];
  }

  else
  {
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000016, 0x800000022F7963E0);
    v5 = sub_22F742240();
    MEMORY[0x231900B10](v5);

    MEMORY[0x231900B10](0xD00000000000003DLL, 0x800000022F796400);
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F264BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id static MusicCurationInflationContext.context(cache:actionSource:shouldForceMetadataRefetch:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___PGMusicCurationInflationContext_cache] = a1;
  v9[OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch] = a4;
  v10 = &v9[OBJC_IVAR___PGMusicCurationInflationContext_actionSource];
  *v10 = a2;
  v10[1] = a3;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = a1;

  return objc_msgSendSuper2(&v13, sel_init);
}

id MusicCurationInflationContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurationInflationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F264F7C()
{
  v1 = v0;
  v2 = sub_22F14E718(MEMORY[0x277D84F90]);
  if (v1[11] >= 1)
  {

    v3 = sub_22F740DF0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v3, 0x6574656D61726170, 0xEE00656D616E5F72, isUniquelyReferenced_nonNull_native);
    sub_22F742010();
    v5 = sub_22F740DF0();

    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v5, 0x5F7463656A627573, 0xEF6E6F6973726576, v6);
    v7 = sub_22F7414B0();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v7, 0xD000000000000010, 0x800000022F796880, v8);
    v9 = sub_22F741350();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v9, 0xD000000000000011, 0x800000022F7968A0, v10);
    v11 = sub_22F741350();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v11, 0x5F6C6C617265766FLL, 0xEE006C6C61636572, v12);
    v13 = sub_22F741350();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v13, 0xD000000000000025, 0x800000022F7968C0, v14);
  }

  if (v1[12] >= 1)
  {
    v15 = sub_22F7414B0();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v15, 0xD00000000000001BLL, 0x800000022F796800, v16);
    v17 = sub_22F741350();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v17, 0xD000000000000023, 0x800000022F796820, v18);
    v19 = sub_22F741350();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v19, 0xD000000000000020, 0x800000022F796850, v20);
  }

  if (v1[13] >= 1)
  {
    v21 = sub_22F7414B0();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v21, 0xD000000000000021, 0x800000022F796780, v22);
    v23 = sub_22F741350();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v23, 0xD000000000000021, 0x800000022F7967B0, v24);
    v25 = sub_22F741350();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v25, 0xD00000000000001ELL, 0x800000022F7967E0, v26);
  }

  return v2;
}

uint64_t sub_22F265358()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F2653D8()
{
  v1 = (*(v0 + 80))();
  MEMORY[0x231900B10](v1);

  return 0x5F676E696E61654DLL;
}

uint64_t sub_22F265440(void *a1)
{
  if ([a1 type] != 3)
  {
    goto LABEL_10;
  }

  v3 = [a1 additionalInfo];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_22F740CA0();

  if (!*(v5 + 16) || (v6 = sub_22F1229E8(0x4C676E696E61656DLL, 0xEC0000006C656261), (v7 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_22F13A100(*(v5 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  if (v11 == (*(v1 + 80))() && v12 == v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F2655C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v56 = a3;
  v10 = sub_22F740E80();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v50 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73F470();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v51 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(PGPhotosChallengeMeaningAlgorithmWrapper) initWithEvaluationContext_];
  v65 = 0;
  v66 = 0xE000000000000000;
  v16 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_22F741A00())
  {
    v47 = v14;
    v48 = v13;
    v46 = v10;
    v45 = v11;
    v44 = a5;
    v43 = a4;
    v49 = v16;
    if (!result)
    {
      break;
    }

    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v11 = 0;
    v13 = (v5 + 10);
    v14 = v5[10];
    v55 = a1 & 0xC000000000000001;
    a4 = MEMORY[0x277D84F98];
    v18 = &selRef_coworkerScore;
    v52 = result;
    v53 = a1;
    v54 = v5;
    while (1)
    {
      v58 = a4;
      if (v55)
      {
        v19 = MEMORY[0x2319016F0](v11, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v11 + 32);
      }

      v20 = v19;
      v14();
      v21 = sub_22F740DF0();

      v22 = [v20 v18[436]];
      a1 = v18;
      if (!v22)
      {
        sub_22F740E20();
        v22 = sub_22F740DF0();
      }

      v23 = sub_22F740C80();
      v24 = [v57 predictQuestionStateForMeaningIdentifier:v21 assetUUID:v22 params:v23];

      v10 = v20;
      v25 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v25;
      sub_22F12FBF0(v24, v10, isUniquelyReferenced_nonNull_native);

      v27 = v63;
      v18 = a1;
      v28 = [v10 (a1 + 3813)];
      v29 = sub_22F740E20();
      v31 = v30;

      v63 = v29;
      v64 = v31;
      a4 = v27;
      v32 = MEMORY[0x231900B10](44, 0xE100000000000000);
      v16 = v54;
      v33 = (v14)(v32);
      a5 = v34;
      v5 = &v63;
      MEMORY[0x231900B10](v33);

      MEMORY[0x231900B10](44, 0xE100000000000000);
      if (!a4[2])
      {
        break;
      }

      v5 = a4;
      v35 = sub_22F122A80(v10);
      a1 = v53;
      if ((v36 & 1) == 0)
      {
        goto LABEL_24;
      }

      ++v11;
      LOWORD(v61) = *(a4[7] + 2 * v35);
      v37 = sub_22F742010();
      MEMORY[0x231900B10](v37);

      MEMORY[0x231900B10](10, 0xE100000000000000);

      MEMORY[0x231900B10](v63, v64);

      if (v52 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  a4 = MEMORY[0x277D84F98];
LABEL_16:
  v38 = a4;
  if (v49)
  {
    v39 = sub_22F741A00();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v50;
  v40 = v51;
  if (v39 < 1)
  {
  }

  else
  {
    v63 = v43;
    v64 = v44;
    v61 = 0xD000000000000011;
    v62 = 0x800000022F796FA0;
    v59 = 0xD000000000000011;
    v60 = 0x800000022F796FC0;
    sub_22F160DE4();
    sub_22F7418E0();
    sub_22F73F3D0();

    v63 = v65;
    v64 = v66;
    sub_22F740E70();
    sub_22F741900();
    v42 = (v45 + 8);

    (*v42)(v41, v46);

    (*(v47 + 1))(v40, v48);
  }

  return v38;
}

void *sub_22F265C18(unint64_t a1, uint64_t a2)
{
  v31 = [objc_allocWithZone(PGPhotosChallengeMeaningAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_22F741A00();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v28 = *(v30 + 80);
      v29 = a1 & 0xC000000000000001;
      v26 = a1 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F98];
      v27 = a1;
      while (1)
      {
        if (v29)
        {
          v6 = MEMORY[0x2319016F0](v4, a1);
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_27;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v28();
        v9 = sub_22F740DF0();

        v10 = [v7 entityIdentifier];
        if (!v10)
        {
          sub_22F740E20();
          v10 = sub_22F740DF0();
        }

        v11 = [v31 debugInformationForMeaningIdentifier:v9 assetUUID:{v10, v26}];

        v12 = sub_22F740CA0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v5;
        a1 = v5;
        v15 = sub_22F122A80(v7);
        v16 = v5[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v5[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v32;
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a1 = &v32;
            sub_22F133A8C();
            v5 = v32;
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22F125140(v18, isUniquelyReferenced_nonNull_native);
          a1 = v32;
          v20 = sub_22F122A80(v7);
          if ((v19 & 1) != (v21 & 1))
          {
            sub_22F254B18();
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v15 = v20;
          v5 = v32;
          if (v19)
          {
LABEL_4:
            *(v5[7] + 8 * v15) = v12;

            goto LABEL_5;
          }
        }

        v5[(v15 >> 6) + 8] |= 1 << v15;
        *(v5[6] + 8 * v15) = v7;
        *(v5[7] + 8 * v15) = v12;
        v22 = v5[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_26;
        }

        v5[2] = v24;
LABEL_5:
        ++v4;
        a1 = v27;
        if (v8 == v3)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_30:

  return v5;
}

uint64_t sub_22F266450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22F266498(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22F2664F0()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  sub_22F740D60();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F266570(uint64_t a1)
{
  MEMORY[0x231901D30](*v1);
  sub_22F740D60();

  return sub_22F740D60();
}

uint64_t sub_22F2665E0(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  MEMORY[0x231901D30](v2);
  sub_22F740D60();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F26665C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22F742040();
}

unint64_t sub_22F266714()
{
  result = qword_27DAB2BF8;
  if (!qword_27DAB2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BF8);
  }

  return result;
}

id sub_22F2667C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionCurationEntry();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F266818()
{
  v0 = qword_27DAB2C00;

  return v0;
}

id sub_22F266850(id a1, void *a2)
{
  v4 = objc_opt_self();

  v5 = sub_22F740DF0();

  v6 = [v4 entityForName:v5 inManagedObjectContext:a1];

  if (v6)
  {
    a1 = [objc_allocWithZone(type metadata accessor for CollectionCurationEntry()) initWithEntity:v6 insertIntoManagedObjectContext:a1];

    v7 = sub_22F740DF0();
    [a1 setCollectionId_];

    if (a2[3])
    {
      v8 = sub_22F740DF0();
    }

    else
    {
      v8 = 0;
    }

    [a1 setKeySongAdamID_];

    if (a2[5])
    {
      v9 = sub_22F740DF0();
    }

    else
    {
      v9 = 0;
    }

    [a1 setKeySongFlexUID_];

    type metadata accessor for CollectionCuration(0);
    v10 = sub_22F73F5B0();
    [a1 setCurationDate_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22F266A18()
{
  result = qword_27DAB2C10;
  if (!qword_27DAB2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C10);
  }

  return result;
}

char *sub_22F266A70(uint64_t a1)
{
  v2 = sub_22F740270();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = (&v46 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2C18, &qword_22F780E78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_22F7406B0();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v13;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  v52 = __swift_project_value_buffer(v14, qword_2810B4D00);
  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22F0FC000, v15, v16, "generateGenericLocationExtendedTokens for query tokens has started.", v17, 2u);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(sub_22F73FDA0() - 8);
    v60 = *MEMORY[0x277D3C2B8];
    v47 = (v3 + 16);
    v58 = (v3 + 8);
    v59 = (v3 + 104);
    v56 = (v50 + 48);
    v57 = (v50 + 56);
    v55 = (v50 + 32);
    v20 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v54 = *(v19 + 72);
    v62 = MEMORY[0x277D84F90];
    *&v21 = 136315138;
    v46 = v21;
    v22 = v53;
    v51 = v10;
    while (1)
    {
      v23 = sub_22F73FD50();
      v25 = v24;
      *v22 = sub_22F73FD80();
      (*v59)(v22, v60, v2);
      v26 = sub_22F73FD90();
      if (!v26)
      {
        goto LABEL_13;
      }

      if (!*(v26 + 16))
      {
        break;
      }

      (*v47)(v48, v22, v2);
      sub_22F7406A0();
      (*v58)(v22, v2);
      v27 = 0;
LABEL_17:
      (*v57)(v9, v27, 1, v10);
      if ((*v56)(v9, 1, v10) == 1)
      {
        sub_22F26713C(v9);
      }

      else
      {
        v36 = *v55;
        v37 = v49;
        (*v55)(v49, v9, v10);
        v36(v61, v37, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_22F13EA14(0, *(v62 + 2) + 1, 1, v62);
        }

        v39 = *(v62 + 2);
        v38 = *(v62 + 3);
        if (v39 >= v38 >> 1)
        {
          v62 = sub_22F13EA14((v38 > 1), v39 + 1, 1, v62);
        }

        v40 = v61;
        v41 = v62;
        *(v62 + 2) = v39 + 1;
        v36(&v41[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39], v40, v10);
        v22 = v53;
      }

      v20 += v54;
      if (!--v18)
      {
        goto LABEL_24;
      }
    }

LABEL_13:
    v28 = v9;
    v29 = v2;

    v30 = sub_22F740B70();
    v31 = sub_22F7415E0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = v33;
      *v32 = v46;
      v34 = sub_22F145F20(v23, v25, &v63);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_22F0FC000, v30, v31, "No assets for generic location query token! Skipping extended token creation for %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v35 = v33;
      v22 = v53;
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    else
    {
    }

    v2 = v29;
    (*v58)(v22, v29);
    v27 = 1;
    v9 = v28;
    v10 = v51;
    goto LABEL_17;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_24:
  v42 = sub_22F740B70();
  v43 = sub_22F7415C0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22F0FC000, v42, v43, "generateGenericLocationExtendedTokens for query tokens complete.", v44, 2u);
    MEMORY[0x2319033A0](v44, -1, -1);
  }

  return v62;
}

uint64_t sub_22F26713C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2C18, &qword_22F780E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PhotosGraph::LocationIndex::Subdomain_optional __swiftcall LocationIndex.Subdomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LocationIndex.Subdomain.rawValue.getter()
{
  v1 = 6909808;
  if (*v0 != 1)
  {
    v1 = 6909810;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687361486F6567;
  }
}

uint64_t sub_22F26725C(_BYTE *a1, _BYTE *a2)
{
  v2 = 6909808;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 6909808;
  }

  else
  {
    v4 = 6909810;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x687361486F6567;
  }

  if (v3)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 6909810;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x687361486F6567;
  }

  if (*a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F26732C()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F2673C4(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

uint64_t sub_22F267448(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

void sub_22F2674E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 6909808;
  if (v2 != 1)
  {
    v4 = 6909810;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x687361486F6567;
  }

  if (!v5)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

PhotosGraph::LocationIndex::CreationOptions __swiftcall LocationIndex.CreationOptions.init(geoHashSize:positivesOversamplingFactor:negativesOversamplingFactor:)(Swift::Int geoHashSize, Swift::Int positivesOversamplingFactor, Swift::Int negativesOversamplingFactor)
{
  *v3 = geoHashSize;
  v3[1] = positivesOversamplingFactor;
  v3[2] = negativesOversamplingFactor;
  result.negativesOversamplingFactor = negativesOversamplingFactor;
  result.positivesOversamplingFactor = positivesOversamplingFactor;
  result.geoHashSize = geoHashSize;
  return result;
}

void sub_22F2675D0(uint64_t a1, void *a2, SEL *a3, void *a4)
{
  v5 = [objc_opt_self() *a3];
  v6 = sub_22F741420();

  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_22F10B348(*(v6 + 16), 0);
  v9 = sub_22F11A438(&v11, v8 + 4, v7, v6);
  v10 = v11;

  sub_22F0FF590(v10);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x277D84F90];
  }

  v11 = v8;
  sub_22F1AB0EC(&v11);

  *a4 = v11;
}

uint64_t static LocationIndex.create(using:with:)(uint64_t a1, uint64_t *a2)
{
  v6 = sub_22F73FE50();
  v218 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v221 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v236 = &v184 - v10;
  MEMORY[0x28223BE20](v11);
  v227 = &v184 - v12;
  MEMORY[0x28223BE20](v13);
  v230 = &v184 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = (&v184 - v17);
  MEMORY[0x28223BE20](v19);
  v214 = &v184 - v20;
  MEMORY[0x28223BE20](v21);
  v213 = &v184 - v22;
  MEMORY[0x28223BE20](v23);
  v215 = &v184 - v26;
  v212 = *a2;
  if ((v212 - 13) < 0xFFFFFFFFFFFFFFF4)
  {
    sub_22F26B044();
    swift_allocError();
    swift_willThrow();
    return a1;
  }

  v229 = v25;
  v190 = v2;
  v193 = v24;
  isUniquelyReferenced_nonNull_native = a2[1];
  v28 = a2[2];
  if (qword_27DAAFDA8 != -1)
  {
    goto LABEL_97;
  }

LABEL_4:
  v217 = v18;
  v29 = qword_27DAD0E90;
  *&v30 = CACurrentMediaTime();
  sub_22F1B560C("CreateLocationIndex", 19, 2u, v30, 0, v29, v251);
  v249 = MEMORY[0x277D84F98];
  v250 = MEMORY[0x277D84F98];
  v247 = MEMORY[0x277D84F98];
  v248 = MEMORY[0x277D84F98];
  v245 = MEMORY[0x277D84F98];
  v246 = MEMORY[0x277D84F98];
  v243 = MEMORY[0x277D84F98];
  v244 = MEMORY[0x277D84F98];
  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  v32 = [swift_getObjCClassFromMetadata(v31) nodesInGraph_];
  v33 = objc_opt_self();
  v34 = v32;
  v235 = v33;
  v35 = v33;
  v36 = v34;
  v37 = [v35 preciseAddressOfMoment];
  v38 = [objc_msgSend(v36 graph)];
  swift_unknownObjectRelease();
  v39 = [v38 concreteGraph];

  if (!v39)
  {
    goto LABEL_112;
  }

  v40 = [v36 elementIdentifiers];
  v41 = [v39 adjacencyWithSources:v40 relation:v37];

  v207 = v36;
  v42 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v43 = [v41 sources];
  v44 = [v42 initWithGraph:v39 elementIdentifiers:v43];

  v45 = swift_allocObject();
  v45[2] = v41;
  v45[3] = v39;
  v45[4] = &v250;
  v45[5] = &v243;
  v45[6] = v212;
  v45[7] = isUniquelyReferenced_nonNull_native;
  v233 = isUniquelyReferenced_nonNull_native;
  *&v234 = v28;
  v45[8] = v28;
  v45[9] = &v249;
  v45[10] = &v244;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_22F26B098;
  *(v46 + 24) = v45;
  v241 = sub_22F15A678;
  v242 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v238 = 1107296256;
  v239 = sub_22F2136B4;
  v240 = &block_descriptor_15;
  v47 = _Block_copy(&aBlock);
  v28 = v242;

  v205 = v41;
  v206 = v39;
  swift_unknownObjectRetain();

  [v44 enumerateUUIDsUsingBlock_];
  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v204 = v45;
  v48 = v44;
  v49 = [v235 poiOfMoment];
  v50 = [objc_msgSend(v48 graph)];
  swift_unknownObjectRelease();
  v51 = [v50 concreteGraph];

  if (!v51)
  {
    goto LABEL_112;
  }

  v52 = [v48 elementIdentifiers];
  v53 = [v51 adjacencyWithSources:v52 relation:v49];

  swift_unknownObjectRetain();
  v3 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
  v54 = [v53 transposed];
  swift_unknownObjectRelease();

  v55 = objc_allocWithZone(PGGraphPOINodeCollection);
  v56 = [v54 sources];
  v57 = [v55 initWithGraph:v51 elementIdentifiers:v56];

  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  *(v58 + 24) = v51;
  *(v58 + 32) = &v250;
  *(v58 + 40) = &v246;
  *(v58 + 48) = &v248;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_22F26B0E8;
  *(v59 + 24) = v58;
  v203 = v58;
  v241 = sub_22F1F68E8;
  v242 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v238 = 1107296256;
  v239 = sub_22F107E24;
  v240 = &block_descriptor_13_1;
  v28 = _Block_copy(&aBlock);

  v60 = v54;
  swift_unknownObjectRetain();

  [v57 enumerateNodesUsingBlock_];

  _Block_release(v28);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
    goto LABEL_99;
  }

  v200 = v60;
  v201 = v51;
  v61 = v48;
  v62 = [v235 roiOfMoment];
  v63 = [objc_msgSend(v61 graph)];
  swift_unknownObjectRelease();
  v64 = [v63 concreteGraph];

  if (!v64)
  {
    goto LABEL_112;
  }

  v65 = [v61 elementIdentifiers];
  v66 = [v64 adjacencyWithSources:v65 relation:v62];

  v199 = v61;
  swift_unknownObjectRetain();
  v67 = [v66 transposed];
  swift_unknownObjectRelease();

  v68 = objc_allocWithZone(PGGraphROINodeCollection);
  v69 = [v67 sources];
  v70 = [v68 initWithGraph:v64 elementIdentifiers:v69];

  v71 = swift_allocObject();
  v71[2] = v67;
  v71[3] = v64;
  v71[4] = &v250;
  v71[5] = &v245;
  v71[6] = &v247;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_22F26B14C;
  *(v72 + 24) = v71;
  v241 = sub_22F26B650;
  v242 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v238 = 1107296256;
  v239 = sub_22F107E24;
  v240 = &block_descriptor_23_1;
  v73 = _Block_copy(&aBlock);
  v198 = v67;
  v202 = v64;
  swift_unknownObjectRetain();

  [v70 enumerateNodesUsingBlock_];

  _Block_release(v73);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  v28 = v217;
  if (v67)
  {
    goto LABEL_100;
  }

  v74 = *(v249 + 16);
  v235 = v6;
  if (v74)
  {
    v3 = sub_22F10B47C(v74, 0);
    v6 = sub_22F120B40();
    v75 = aBlock;
    v28 = v239;

    sub_22F0FF590(v75);
    if (v6 != v74)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v28 = v217;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
  v76 = swift_allocObject();
  v6 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
  sub_22F740830();
  v77 = v233;
  v78 = v234;
  if (v233 < 1 || v234 < 1)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v197 = v71;
  *(v76 + 16) = v3;
  *(v76 + 24) = 1;
  *(v76 + 32) = v77;
  *(v76 + 40) = v78;
  v196 = v76;
  v79 = *(v248 + 16);
  if (v79)
  {
    v3 = sub_22F10B47C(*(v248 + 16), 0);
    v232 = sub_22F120B40();
    v80 = aBlock;
    v28 = v238;
    v231 = v241;

    sub_22F0FF590(v80);
    if (v232 == v79)
    {
      v28 = v217;
      v77 = v233;
      goto LABEL_20;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:
  v81 = swift_allocObject();
  sub_22F740830();
  *(v81 + 16) = v3;
  *(v81 + 24) = 1;
  v195 = v81;
  v82 = v234;
  *(v81 + 32) = v77;
  *(v81 + 40) = v82;
  v83 = *(v247 + 16);
  if (v83)
  {
    v3 = sub_22F10B47C(*(v247 + 16), 0);
    v84 = sub_22F120B40();
    v85 = aBlock;
    v28 = v238;
    v232 = v241;

    sub_22F0FF590(v85);
    if (v84 == v83)
    {
      v28 = v217;
      v77 = v233;
      goto LABEL_24;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_24:
  v86 = swift_allocObject();
  sub_22F740830();
  *(v86 + 16) = v3;
  *(v86 + 24) = 1;
  v87 = v234;
  *(v86 + 32) = v77;
  *(v86 + 40) = v87;
  v216 = "v24@?0@MANode8^B16";
  v88 = sub_22F740F10();
  v89 = MEMORY[0x277D84F90];
  v194 = v86;
  if (!v88)
  {
    v6 = v235;
    goto LABEL_32;
  }

  v90 = v88;
  aBlock = MEMORY[0x277D84F90];
  sub_22F146454(0, v88 & ~(v88 >> 63), 0);
  v6 = v235;
  if (v90 < 0)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
    goto LABEL_34;
  }

  v89 = aBlock;
  do
  {
    v91 = sub_22F741020();
    aBlock = v89;
    v94 = v89[2];
    v93 = v89[3];
    if (v94 >= v93 >> 1)
    {
      v96 = v91;
      v97 = v92;
      sub_22F146454((v93 > 1), v94 + 1, 1);
      v92 = v97;
      v6 = v235;
      v91 = v96;
      v89 = aBlock;
    }

    v89[2] = v94 + 1;
    v95 = &v89[2 * v94];
    v95[4] = v91;
    v95[5] = v92;
    sub_22F740F20();
    --v90;
  }

  while (v90);
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2718, &unk_22F7889A0);
  v98 = swift_allocObject();
  v99 = v89[2];

  v101 = sub_22F1515F8(v100);

  v102 = *(v101 + 16);

  if (v99 != v102)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20, &unk_22F78B258);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_46:

    swift_deallocPartialClassInstance();

    sub_22F1B2BBC(1);

    a1 = v252;

    return a1;
  }

  *(v98 + 16) = v89;
  v3 = v98;
  if (qword_27DAAFDF8 != -1)
  {
    goto LABEL_106;
  }

LABEL_34:
  v103 = off_27DAB2C20;
  v104 = swift_allocObject();
  v105 = v103[2];
  swift_bridgeObjectRetain_n();
  v106 = sub_22F1515F8(v103);

  v107 = *(v106 + 16);

  if (v105 != v107)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20, &unk_22F78B258);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_45:

    goto LABEL_46;
  }

  v191 = v104;
  v186 = v103;
  *(v104 + 16) = v103;
  if (qword_27DAAFE00 != -1)
  {
    swift_once();
  }

  v108 = off_27DAB2C28;
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  v109 = v108[2];
  swift_bridgeObjectRetain_n();
  v110 = sub_22F1515F8(v108);

  v111 = *(v110 + 16);

  if (v109 != v111)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20, &unk_22F78B258);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_45;
  }

  *(isUniquelyReferenced_nonNull_native + 16) = v108;
  v112 = sub_22F740F10();
  if ((v212 * v112) >> 64 != (v212 * v112) >> 63)
  {
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v187 = v212 * v112;
  sub_22F73FE30();
  sub_22F73FE00();
  v185 = v108;
  sub_22F73FE00();
  v113 = v250;
  v114 = *(v250 + 16);
  v115 = v236;
  v222 = v3;
  if (v114)
  {
    v3 = isUniquelyReferenced_nonNull_native;
    v116 = sub_22F10B348(v114, 0);
    *&v234 = sub_22F11BAD8(&aBlock, v116 + 4, v114, v113);
    v117 = aBlock;
    v233 = v241;

    sub_22F0FF590(v117);
    if (v234 != v114)
    {
      goto LABEL_111;
    }

    v28 = v217;
    a1 = v216;
    v118 = v116;
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
    a1 = v216;
  }

  v211 = v118[2];
  if (v211)
  {
    v188 = isUniquelyReferenced_nonNull_native;
    v120 = 0;
    v210 = v118 + 4;
    v18 = (v218 + 8);
    v226 = (v218 + 32);
    v209 = (v218 + 16);
    v192 = v218 + 40;
    v121 = MEMORY[0x277D84F98];
    v208 = v118;
    v234 = xmmword_22F771340;
    while (1)
    {
      if (v120 >= v118[2])
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        swift_once();
        goto LABEL_4;
      }

      v220 = v121;
      v219 = v120;
      v125 = &v210[2 * v120];
      v126 = v125[1];
      v228 = *v125;
      v231 = v126;

      sub_22F73FE40();
      v127 = v244;
      if (*(v244 + 16) && (v128 = sub_22F1229E8(v228, v231), (v129 & 1) != 0) && (a1 = *(*(v127 + 56) + 8 * v128), *(a1 + 16)))
      {
        v189 = *(a1 + 16);

        sub_22F73FE00();
        v225 = *(a1 + 16);
        if (v225)
        {
          v130 = 0;
          v223 = a1 + 32;
          v224 = a1;
          while (v130 < *(a1 + 16))
          {
            v233 = v130;
            v132 = (v223 + 16 * v130);
            v133 = *v132;
            v134 = v132[1];

            sub_22F73FE40();
            v135 = HIBYTE(v134) & 0xF;
            aBlock = v133;
            v238 = v134;
            if ((v134 & 0x2000000000000000) == 0)
            {
              v135 = v133 & 0xFFFFFFFFFFFFLL;
            }

            v239 = 0;
            v240 = v135;
            v232 = v134;

            v136 = sub_22F740F80();
            v3 = &unk_27DAB1110;
            isUniquelyReferenced_nonNull_native = v229;
            v28 = &unk_22F771270;
            if (v137)
            {
              v138 = v136;
              v139 = v137;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
                inited = swift_initStackObject();
                *(inited + 16) = v234;
                *(inited + 32) = v138;
                v141 = inited + 32;
                *(inited + 40) = v139;

                sub_22F26AF34(inited);
                v115 = v236;
                swift_setDeallocating();
                v142 = v141;
                v6 = v235;
                sub_22F1DF3B0(v142);
                sub_22F73FE10();

                (*v18)(isUniquelyReferenced_nonNull_native, v6);
                v138 = sub_22F740F80();
                v139 = v143;
              }

              while (v143);
            }

            v130 = v233 + 1;

            v131 = v227;
            (*v226)(v227, v115, v6);
            sub_22F73FDE0();

            (*v18)(v131, v6);
            a1 = v224;
            if (v130 == v225)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
          goto LABEL_94;
        }

LABEL_84:

        a1 = v193;
        (*v226)(v193, v230, v6);
        sub_22F73FDD0();
        v28 = v217;
        sub_22F73FE10();
        (*v18)(a1, v6);
      }

      else
      {
        sub_22F73FE10();
      }

      v144 = v246;
      if (*(v246 + 16) && (v145 = sub_22F1229E8(v228, v231), (v146 & 1) != 0))
      {
        a1 = *(*(v144 + 56) + 8 * v145);

        v3 = v229;
        sub_22F26AF34(v147);

        sub_22F73FE10();
        (*v18)(v3, v6);
      }

      else
      {
        sub_22F73FE10();
      }

      v148 = v245;
      if (*(v245 + 16) && (v149 = sub_22F1229E8(v228, v231), (v150 & 1) != 0))
      {
        a1 = *(*(v148 + 56) + 8 * v149);

        v3 = v229;
        sub_22F26AF34(v151);

        sub_22F73FE10();
        (*v18)(v3, v6);
      }

      else
      {
        sub_22F73FE10();
      }

      (*v209)(v221, v28, v6);
      v152 = v220;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v152;
      v153 = sub_22F1229E8(v228, v231);
      v155 = v152[2];
      v156 = (v154 & 1) == 0;
      v157 = __OFADD__(v155, v156);
      v158 = v155 + v156;
      if (v157)
      {
        goto LABEL_95;
      }

      v159 = v154;
      if (v152[3] < v158)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_81;
      }

      v166 = v153;
      sub_22F135E28();
      v153 = v166;
      v115 = v236;
      if (v159)
      {
LABEL_51:
        v122 = v153;

        v123 = aBlock;
        v124 = v218;
        (*(v218 + 40))(aBlock[7] + *(v218 + 72) * v122, v221, v6);
        (*(v124 + 8))(v28, v6);
        v121 = v123;
        goto LABEL_52;
      }

LABEL_82:
      v161 = aBlock;
      aBlock[(v153 >> 6) + 8] |= 1 << v153;
      v162 = (v161[6] + 16 * v153);
      v163 = v231;
      *v162 = v228;
      v162[1] = v163;
      a1 = v218;
      (*(v218 + 32))(v161[7] + *(v218 + 72) * v153, v221, v6);
      (*(a1 + 8))(v28, v6);
      v164 = v161[2];
      v157 = __OFADD__(v164, 1);
      v165 = v164 + 1;
      if (v157)
      {
        goto LABEL_96;
      }

      v121 = v161;
      v161[2] = v165;
LABEL_52:
      v120 = v219 + 1;
      a1 = v216;
      v118 = v208;
      if (v219 + 1 == v211)
      {
        v220 = v121;

        goto LABEL_89;
      }
    }

    sub_22F128740(v158, isUniquelyReferenced_nonNull_native);
    v153 = sub_22F1229E8(v228, v231);
    if ((v159 & 1) != (v160 & 1))
    {
      goto LABEL_113;
    }

LABEL_81:
    if (v159)
    {
      goto LABEL_51;
    }

    goto LABEL_82;
  }

  v220 = MEMORY[0x277D84F98];
LABEL_89:
  v167 = sub_22F740F10();
  v168 = v212 * v167;
  if ((v212 * v167) >> 64 != (v212 * v167) >> 63)
  {
    goto LABEL_108;
  }

  v169 = v186[2];
  v157 = __OFADD__(v168, v169);
  v170 = v168 + v169;
  if (v157)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v171 = v185[2];
  v172 = v170 + v171;
  if (__OFADD__(v170, v171))
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    sub_22F741D40();
    __break(1u);
LABEL_113:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v173 = v229;
  sub_22F73FE40();
  v174 = v215;
  sub_22F73FE10();
  v175 = v213;
  sub_22F73FE10();
  v176 = v214;
  sub_22F73FE10();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v177 = v218;
  v178 = *(v218 + 8);
  v178(v176, v6);
  v178(v175, v6);
  v178(v174, v6);
  v180 = v244;
  v179 = v245;
  v181 = v246;
  v182 = v243;
  type metadata accessor for LocationIndex(0);
  a1 = swift_allocObject();
  *(a1 + OBJC_IVAR____TtC11PhotosGraph13LocationIndex_featureVectorLength) = v172;
  *(a1 + 72) = v220;
  (*(v177 + 32))(a1 + OBJC_IVAR____TtC11PhotosGraph13LocationIndex_fallbackFeatureVector, v173, v6);
  *(a1 + 16) = v182;
  *(a1 + 24) = v180;
  *(a1 + 32) = v181;
  *(a1 + 40) = v179;
  v183 = v195;
  *(a1 + 48) = v196;
  *(a1 + 56) = v183;
  *(a1 + 64) = v194;

  sub_22F1B2BBC(0);

  return a1;
}

void sub_22F26962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t *a13)
{
  v18 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v60 = a1;
  v19 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v20 = [v18 initWithGraph:a6 elementIdentifiers:v19];

  v21 = [v20 elementIdentifiers];
  v22 = [a5 targetsForSources_];

  v23 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:a6 elementIdentifiers:v22];
  v61 = v23;
  v24 = [v23 locations];
  sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
  v25 = sub_22F741180();

  v64 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v27 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v58 = a7;
    v59 = a8;
    v28 = 0;
    a8 = (v25 & 0xC000000000000001);
    a7 = (v25 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (a8)
      {
        v29 = MEMORY[0x2319016F0](v28, v25);
      }

      else
      {
        if (v28 >= a7[2])
        {
          goto LABEL_32;
        }

        v29 = *(v25 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = objc_opt_self();
      [v30 coordinate];
      if ([v32 canUseCoordinate_])
      {
        sub_22F741BA0();
        sub_22F741BE0();
        a7 = (v25 & 0xFFFFFFFFFFFFFF8);
        sub_22F741BF0();
        sub_22F741BB0();
      }

      else
      {
      }

      ++v28;
      if (v31 == i)
      {
        v33 = v64;
        a7 = v58;
        a8 = v59;
        v27 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_16:

  if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
  {
    v34 = sub_22F741A00();
    if (v34 > 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = *(v33 + 16);
    if (v34 > 0)
    {
LABEL_19:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *a7;
      *a7 = 0x8000000000000000;
      sub_22F1319BC(a2, a3, v60, isUniquelyReferenced_nonNull_native);
      *a7 = v64;

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v64 = *a8;
      *a8 = 0x8000000000000000;
      sub_22F131994(v33, a2, a3, v36);

      *a8 = v64;
      v64 = v27;
      sub_22F146454(0, v34, 0);
      v37 = 0;
      v38 = v27;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x2319016F0](v37, v33);
        }

        else
        {
          v39 = *(v33 + 8 * v37 + 32);
        }

        v40 = v39;
        type metadata accessor for Geohash();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        [v40 coordinate];
        v43 = v42;
        [v40 coordinate];
        sub_22F34AF8C(a9, v43, v44);
        v46 = v45;
        v48 = v47;

        swift_setDeallocating();

        v64 = v38;
        v50 = *(v38 + 16);
        v49 = *(v38 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22F146454((v49 > 1), v50 + 1, 1);
          v38 = v64;
        }

        ++v37;
        *(v38 + 16) = v50 + 1;
        v51 = v38 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
      }

      while (v34 != v37);

      v52 = sub_22F1515F8(v38);

      sub_22F26B17C(v52, a12, a2, a3);

      v53 = *(v52 + 16);
      if (v53)
      {
        v54 = sub_22F10B348(*(v52 + 16), 0);
        v55 = sub_22F11A438(&v64, v54 + 4, v53, v52);
        v56 = v64;

        sub_22F0FF590(v56);
        if (v55 == v53)
        {
LABEL_30:
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v64 = *a13;
          *a13 = 0x8000000000000000;
          sub_22F13121C(v54, a2, a3, v57);

          *a13 = v64;

          return;
        }

        __break(1u);
      }

      v54 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }
  }
}

void sub_22F269C24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = [a1 label];
  if (v13)
  {
    v14 = v13;
    v31 = a6;
    v15 = sub_22F740E20();
    v17 = v16;

    v18 = [a1 identifier];
    v19 = objc_allocWithZone(PGGraphPOINodeCollection);
    v20 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
    v21 = [v19 initWithGraph:a4 elementIdentifiers:v20];

    v22 = [v21 elementIdentifiers];
    v23 = [a3 targetsForSources_];

    v24 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v23];
    v33 = MEMORY[0x277D84F90];
    v25 = [v24 elementIdentifiers];
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = &v33;
    v26[4] = v31;
    v26[5] = v15;
    v26[6] = v17;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_22F26B618;
    *(v27 + 24) = v26;
    aBlock[4] = sub_22F21F1BC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F3618B8;
    aBlock[3] = &block_descriptor_85;
    v28 = _Block_copy(aBlock);

    [v25 enumerateIdentifiersWithBlock_];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = *a7;
      *a7 = 0x8000000000000000;
      sub_22F13121C(v29, v15, v17, isUniquelyReferenced_nonNull_native);

      *a7 = aBlock[0];
    }
  }
}

void sub_22F269F34(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = [a1 label];
  if (v13)
  {
    v14 = v13;
    v31 = a6;
    v15 = sub_22F740E20();
    v17 = v16;

    v18 = [a1 identifier];
    v19 = objc_allocWithZone(PGGraphROINodeCollection);
    v20 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
    v21 = [v19 initWithGraph:a4 elementIdentifiers:v20];

    v22 = [v21 elementIdentifiers];
    v23 = [a3 targetsForSources_];

    v24 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v23];
    v33 = MEMORY[0x277D84F90];
    v25 = [v24 elementIdentifiers];
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = &v33;
    v26[4] = v31;
    v26[5] = v15;
    v26[6] = v17;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_22F26B66C;
    *(v27 + 24) = v26;
    aBlock[4] = sub_22F21F0D4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F3618B8;
    aBlock[3] = &block_descriptor_75;
    v28 = _Block_copy(aBlock);

    [v25 enumerateIdentifiersWithBlock_];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = *a7;
      *a7 = 0x8000000000000000;
      sub_22F13121C(v29, v15, v17, isUniquelyReferenced_nonNull_native);

      *a7 = aBlock[0];
    }
  }
}

void sub_22F26A244(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4, char **a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  if (!*(*a3 + 16))
  {
    return;
  }

  v12 = sub_22F122B68(a1);
  if ((v13 & 1) == 0)
  {
    return;
  }

  v14 = (*(v7 + 56) + 16 * v12);
  v16 = *v14;
  v15 = v14[1];
  v17 = *a4;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_22F13E1A8(0, *(v17 + 2) + 1, 1, v17);
    *a4 = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_22F13E1A8((v19 > 1), v20 + 1, 1, v17);
    *a4 = v17;
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[16 * v20];
  *(v21 + 4) = v16;
  *(v21 + 5) = v15;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a5;
  v37 = *a5;
  *a5 = 0x8000000000000000;
  v25 = sub_22F1229E8(v16, v15);
  v26 = *(v23 + 2);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
  }

  else
  {
    v29 = v24;
    if (*(v23 + 3) >= v28)
    {
      if ((v22 & 1) == 0)
      {
        sub_22F135844();
        v23 = v37;
      }
    }

    else
    {
      sub_22F127C90(v28, v22);
      v23 = v37;
      v30 = sub_22F1229E8(v16, v15);
      if ((v29 & 1) != (v31 & 1))
      {
        sub_22F7420C0();
        __break(1u);
        return;
      }

      v25 = v30;
    }

    *a5 = v23;

    v32 = *a5;
    if (v29)
    {
    }

    else
    {
      sub_22F1534CC();
    }

    v15 = *(v32 + 7);
    v23 = *(v15 + 8 * v25);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 8 * v25) = v23;
    if (v33)
    {
      goto LABEL_18;
    }
  }

  v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
  *(v15 + 8 * v25) = v23;
LABEL_18:
  v35 = *(v23 + 2);
  v34 = *(v23 + 3);
  if (v35 >= v34 >> 1)
  {
    v23 = sub_22F13E1A8((v34 > 1), v35 + 1, 1, v23);
    *(v15 + 8 * v25) = v23;
  }

  *(v23 + 2) = v35 + 1;
  v36 = &v23[16 * v35];
  *(v36 + 4) = a6;
  *(v36 + 5) = a7;
}

uint64_t sub_22F26A4D4(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      v4 = sub_22F26B654;
    }

    else
    {
      v4 = sub_22F26B304;
    }
  }

  else
  {
    v4 = sub_22F26B654;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_22F26B658;
  *(v5 + 24) = v2;
  swift_retain_n();
  sub_22F215A34(a1, 0, v4, v5);
  v7 = v6;

  return v7;
}

uint64_t sub_22F26A5E0(uint64_t a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_22F26B30C;
  *(v4 + 24) = v2;
  swift_retain_n();
  sub_22F216048(a1, 0, sub_22F26B654, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_22F26A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22F73FE50();
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 72);
  if (*(v13 + 16) && (v20 = v9, v14 = sub_22F1229E8(a1, a2), v9 = v20, (v15 & 1) != 0))
  {
    (*(v20 + 16))(v12, *(v13 + 56) + *(v20 + 72) * v14, v8);
    return (*(v20 + 32))(a3, v12, v8);
  }

  else
  {
    v17 = *(v9 + 16);
    v18 = v4 + OBJC_IVAR____TtC11PhotosGraph13LocationIndex_fallbackFeatureVector;

    return v17(a3, v18, v8, v10);
  }
}

float sub_22F26A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!*(v5 + 16))
  {
    return 3.4028e38;
  }

  v8 = sub_22F1229E8(a1, a2);
  if ((v9 & 1) == 0 || !*(v5 + 16))
  {
    return 3.4028e38;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  v11 = sub_22F1229E8(a3, a4);
  if (v12)
  {
    v13 = *(*(v5 + 56) + 8 * v11);
    if (v10 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {

      v29 = v10;
      if (!i)
      {
        break;
      }

      v15 = 0;
      v32 = v10 & 0xFFFFFFFFFFFFFF8;
      v33 = v10 & 0xC000000000000001;
      v16 = 3.4028e38;
      v31 = (v10 + 32);
      v10 = &selRef_coworkerScore;
      v30 = i;
      while (1)
      {
        if (v33)
        {
          v17 = MEMORY[0x2319016F0](v15, v29);
        }

        else
        {
          if (v15 >= *(v32 + 16))
          {
            goto LABEL_38;
          }

          v17 = v31[v15];
        }

        v18 = v17;
        if (__OFADD__(v15++, 1))
        {
          break;
        }

        if (v13 >> 62)
        {
          v20 = sub_22F741A00();
          if (v20)
          {
LABEL_16:
            v21 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x2319016F0](v21, v13);
              }

              else
              {
                if (v21 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_36;
                }

                v22 = *(v13 + 8 * v21 + 32);
              }

              v23 = v22;
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              [v18 distanceFromLocation_];
              v26 = v25;

              v27 = v26;
              if (v16 > v27)
              {
                v16 = v26;
              }

              ++v21;
              if (v24 == v20)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_36:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_16;
          }
        }

LABEL_9:

        if (v15 == v30)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v16 = 3.4028e38;
LABEL_33:
  }

  else
  {
    v16 = 3.4028e38;
  }

  return v16;
}

void sub_22F26AAA8()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v7 << 6);
    v10 = (*(v1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(*(v1 + 56) + 8 * v9);

    sub_22F26ABD4(v11, v12, v13, v0);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_22F26ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  if (*(v8 + 16) && (v9 = sub_22F1229E8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(a4 + 40);
  if (*(v12 + 16) && (v13 = sub_22F1229E8(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_22F741B00();
  MEMORY[0x231900B10](0x5555746E656D6F6DLL, 0xEC000000203A4449);
  MEMORY[0x231900B10](a1, a2);
  MEMORY[0x231900B10](0x61486F6567202D20, 0xEE00203A73656873);
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x231900D40](a3, MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v17);

  MEMORY[0x231900B10](0x62614C696F70202CLL, 0xED0000203A736C65);
  v18 = MEMORY[0x231900D40](v11, v16);
  v20 = v19;

  MEMORY[0x231900B10](v18, v20);

  MEMORY[0x231900B10](0x62614C696F72202CLL, 0xED0000203A736C65);
  v21 = MEMORY[0x231900D40](v15, v16);
  v23 = v22;

  MEMORY[0x231900B10](v21, v23);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  MEMORY[0x231900B10](0, 0xE000000000000000);

  return result;
}

uint64_t LocationIndex.deinit()
{

  v1 = OBJC_IVAR____TtC11PhotosGraph13LocationIndex_fallbackFeatureVector;
  v2 = sub_22F73FE50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LocationIndex.__deallocating_deinit()
{
  LocationIndex.deinit();

  return swift_deallocClassInstance();
}

void sub_22F26AF34(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_22F73FE00();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;
      MEMORY[0x28223BE20](v4);
      v9[2] = v10;

      if (sub_22F1C0E04(sub_22F15A388, v9, a1))
      {
        sub_22F73FE80();
      }

      ++v6;

      v7 += 2;
      if (v5 == v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_22F26B044()
{
  result = qword_27DAB2C30;
  if (!qword_27DAB2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C30);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_22F26B17C(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_22F219AC0(v17, a2, a3, v18);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for LocationIndex(uint64_t a1)
{
  result = qword_27DAB2C58;
  if (!qword_27DAB2C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F26B314()
{
  result = qword_27DAB2C40;
  if (!qword_27DAB2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C40);
  }

  return result;
}

uint64_t sub_22F26B3B4(uint64_t a1)
{
  result = sub_22F73FE50();
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

uint64_t getEnumTagSinglePayload for LocationIndex.CreationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationIndex.CreationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_22F26B5C4()
{
  result = qword_27DAB2C68;
  if (!qword_27DAB2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C68);
  }

  return result;
}

char *sub_22F26B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27DAAFD80 != -1)
  {
LABEL_37:
    swift_once();
  }

  v6 = qword_27DAD0E70;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("LabelEvents", 11, 2u, v7, 0, v6, v41);
  v8 = *(a1 + 16);
  v9 = sub_22F741670();

  if (v8)
  {
    v10 = 0;
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    v35 = v9 & 0xC000000000000001;
    v12 = a1 + 32;
    v13 = MEMORY[0x277D84F90];
    v36 = v9 >> 62;
    v34 = v8;
    v32 = a1;
    do
    {
      v33 = v13;
      v14 = v12 + 40 * v10;
      v15 = v10;
      while (1)
      {
        if (v15 >= v8)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_22F15C30C(v14, &v38);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_35;
        }

        if (v36)
        {
          v24 = sub_22F741A00();
          v16 = v15 + 1;
          if (v15 == v24)
          {
LABEL_26:

            __swift_destroy_boxed_opaque_existential_0(&v38);
            v13 = v33;
            goto LABEL_29;
          }
        }

        else if (v15 == *(v11 + 16))
        {
          goto LABEL_26;
        }

        v42 = v16;
        if (v35)
        {
          v17 = MEMORY[0x2319016F0](v15, v9);
        }

        else
        {
          if (v15 >= *(v11 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(v9 + 8 * v15 + 32);
        }

        v18 = v17;
        sub_22F100260(&v38, v40);
        v40[5] = v18;
        v19 = objc_autoreleasePoolPush();
        sub_22F26BA28(a3, v40, &v38);
        if (v4)
        {
          objc_autoreleasePoolPop(v19);

          sub_22F1A4394(v40);
          v13 = v33;

          v30 = 1;
          goto LABEL_33;
        }

        v20 = v11;
        v21 = v9;
        objc_autoreleasePoolPop(v19);
        sub_22F1A4394(v40);
        v22 = *(&v38 + 1);
        a1 = v38;
        v23 = v39;
        if (*(&v38 + 1))
        {
          break;
        }

        sub_22F1A43FC(v38, 0, v39);
        ++v15;
        v14 += 40;
        v8 = v34;
        v9 = v21;
        v11 = v20;
        v4 = 0;
        if (v42 == v34)
        {
          v13 = v33;
          goto LABEL_28;
        }
      }

      v25 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_22F13E7A0(0, *(v33 + 2) + 1, 1, v33);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      v28 = v25;
      if (v27 >= v26 >> 1)
      {
        v28 = sub_22F13E7A0((v26 > 1), v27 + 1, 1, v25);
      }

      *(v28 + 2) = v27 + 1;
      v13 = v28;
      v29 = &v28[24 * v27];
      *(v29 + 4) = a1;
      *(v29 + 5) = v22;
      *(v29 + 6) = v23;
      v8 = v34;
      v10 = v42;
      a1 = v32;
      v9 = v21;
      v11 = v20;
      v4 = 0;
    }

    while (v42 != v34);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

LABEL_28:

LABEL_29:
  sub_22F7416A0();
  if (v4)
  {
  }

  v30 = 0;
LABEL_33:
  sub_22F1B2BBC(v30);

  return v13;
}

void sub_22F26BA28(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22F740B90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[2] = a1;
  v11 = EspressoEventLabeler.label(event:progressReporter:)(a2);
  if (!v3)
  {
    v12 = v11;
    v31 = 0;
    if (qword_27DAAFD80 != -1)
    {
      swift_once();
    }

    sub_22F1B3158(v10);

    v13 = sub_22F740B70();
    v14 = sub_22F7415D0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = a3;
      v16 = v15;
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v16 = 136315138;
      v17 = MEMORY[0x231900D40](v12, &type metadata for EventLabelConfidence);
      v29 = v8;
      v19 = sub_22F145F20(v17, v18, v32);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_22F0FC000, v13, v14, "[EventLabeling] Inferred scores: %s", v16, 0xCu);
      v20 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2319033A0](v20, -1, -1);
      v21 = v16;
      a3 = v30;
      MEMORY[0x2319033A0](v21, -1, -1);

      (*(v29 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v22 = a2[3];
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v22);
    v24 = v31;
    v25 = (*(v23 + 24))(v22, v23);
    if (v24)
    {
    }

    else
    {
      *a3 = v25;
      a3[1] = v26;
      a3[2] = v12;
    }
  }
}

id EventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F26BE88(void *a1, id a2)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v5 = [a2 eventLabelingFeaturesCache];
  if (v5)
  {
    v6 = v5;
    v7 = _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = objc_allocWithZone(PGEventLabelerE5Model);
      v12 = sub_22F212148(v9, v10);
      if (!v2)
      {
        v13 = v12;
        v37[0] = 0;
        v14 = [v12 inputNamesWithError_];
        v15 = v37[0];
        if (v14)
        {
          v16 = v14;
          v17 = sub_22F741420();
          v18 = v15;

          sub_22F173D70(v17);

          v34 = v6;
          v33 = [a2 photoLibrary];
          v20 = [a2 graph];
          v21 = type metadata accessor for EventLabelingConfiguration();
          v22 = objc_allocWithZone(v21);
          v23 = a1;
          v24 = [v22 init];
          v37[4] = v21;
          v37[5] = &protocol witness table for EventLabelingConfiguration;
          v37[0] = a2;
          v37[1] = v24;
          v35 = v23;
          sub_22F26C260(v37, v36);
          v25 = a2;
          v26 = sub_22F7416D0();
          v28 = v27;
          v30 = v29;
          sub_22F2E50A0();
          v32 = sub_22F26B670(v31, v28, v13);

          MomentBasedEventLabelWriter.performWrite(clustersWithScoredLabels:progressReporter:)(v32);

          sub_22F26C2BC(v36);

          sub_22F26C2BC(v37);
          return;
        }

        v19 = v37[0];
        sub_22F73F370();

        swift_willThrow();
      }
    }

    else
    {
      sub_22F176594();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    sub_22F26C20C();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F26C20C()
{
  result = qword_27DAB2C70;
  if (!qword_27DAB2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C70);
  }

  return result;
}

unint64_t sub_22F26C324()
{
  result = qword_27DAB2C78;
  if (!qword_27DAB2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C78);
  }

  return result;
}

uint64_t PGUpNextDebugInfoBuilder.wantsVerboseDebugInfo.getter()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  return *(v0 + v1);
}

void PGUpNextDebugInfoBuilder.wantsVerboseDebugInfo.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PGUpNextDebugInfoBuilder.inputDebugInfo.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PGUpNextDebugInfoBuilder.inputDebugInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t PGUpNextDebugInfoBuilder.rootMemoryIsAggregation.getter()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  swift_beginAccess();
  return *(v0 + v1);
}

void PGUpNextDebugInfoBuilder.rootMemoryIsAggregation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PGUpNextDebugInfoBuilder.rootMemoryNodeUniqueIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PGUpNextDebugInfoBuilder.rootMemoryNodeUniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_22F26CCCC(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double sub_22F26CD94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

id PGUpNextDebugInfoBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PGUpNextDebugInfoBuilder.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo] = 0;
  v2 = &v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo];
  *v2 = 0xD000000000000013;
  v2[1] = 0x800000022F797260;
  v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation] = 0;
  v3 = &v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_momentUUIDs] = 0;
  *&v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_featureWeightVectors] = 0;
  *&v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs] = MEMORY[0x277D84F90];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall PGUpNextDebugInfoBuilder.add(suggestionFilteringLog:)(Swift::String suggestionFilteringLog)
{
  object = suggestionFilteringLog._object;
  countAndFlagsBits = suggestionFilteringLog._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
  swift_beginAccess();
  v5 = *(v1 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_22F13E1A8(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_22F13E1A8((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = countAndFlagsBits;
  *(v9 + 5) = object;
  *(v1 + v4) = v5;
  swift_endAccess();
}

PhotosGraph::PGUpNextDebugInfoBuilder::Keys_optional __swiftcall PGUpNextDebugInfoBuilder.Keys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0xD000000000000015 && 0x800000022F797280 == stringValue._object;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6265447475706E69 && object == 0xEE006F666E496775 || (sub_22F742040() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0xD00000000000001ELL && 0x800000022F7972A0 == object || (sub_22F742040() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x5555746E656D6F6DLL && object == 0xEB00000000734449 || (sub_22F742040() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0xD000000000000017 && 0x800000022F7972C0 == object || (sub_22F742040() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x800000022F7972E0 == object || (sub_22F742040() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0xD000000000000017 && 0x800000022F797300 == object)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_22F742040();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t PGUpNextDebugInfoBuilder.Keys.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

unint64_t PGUpNextDebugInfoBuilder.Keys.stringValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6265447475706E69;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x5555746E656D6F6DLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_22F26D53C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6265447475706E69;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x5555746E656D6F6DLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F26D648(uint64_t a1)
{
  v2 = sub_22F26E2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F26D684(uint64_t a1)
{
  v2 = sub_22F26E2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PGUpNextDebugInfoBuilder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2CB8, &unk_22F7811F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F26E2E4();
  sub_22F742210();
  swift_beginAccess();
  v41 = 0;
  sub_22F741F90();
  if (v2)
  {
    goto LABEL_2;
  }

  swift_beginAccess();
  v40 = 1;

  sub_22F741F80();

  v9 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier;
  swift_beginAccess();
  v39 = *(v3 + v9);
  LOBYTE(v38) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
  sub_22F26E3E8(&qword_27DAB2CC8, &qword_27DAB1048, &qword_22F78B5C0, MEMORY[0x277D84F40]);
  sub_22F741FE0();
  v10 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_momentUUIDs;
  swift_beginAccess();
  v38 = *(v3 + v10);
  LOBYTE(v37) = 3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2CD0, &unk_22F781200);
  v12 = sub_22F26E338();
  sub_22F741FE0();
  v29 = v12;
  v13 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
  swift_beginAccess();
  v37 = *(v3 + v13);
  v36 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F26E3E8(&qword_2810A92E8, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83948]);
  sub_22F741FE0();
  swift_beginAccess();
  v36 = 6;
  sub_22F741F90();
  v14 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_featureWeightVectors;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (!v15)
  {
    v18 = 0;
LABEL_19:
    v42 = v18;
    v35 = 5;
    sub_22F741FE0();

LABEL_2:
    (*(v6 + 8))(v8, v5);
    return;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_22;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    goto LABEL_19;
  }

  v28 = v16;
  v27 = v11;
  v42 = MEMORY[0x277D84F90];
  v16 = v15;

  v15 = sub_22F146454(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v18 = v42;
    v19 = v16;
    v32 = v16 & 0xC000000000000001;
    v31 = v16;
    v30 = v17;
    while (1)
    {
      if (v32)
      {
        v20 = MEMORY[0x2319016F0](v11, v19);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v26 = v15;
          v17 = sub_22F741A00();
          v15 = v26;
          goto LABEL_6;
        }

        if (v11 >= *(v28 + 16))
        {
          goto LABEL_21;
        }

        v20 = *(v19 + 8 * v11 + 32);
      }

      v21 = v20;
      v34 = sub_22F26DC94(v20);
      v33 = v22;

      v42 = v18;
      v16 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v16 >= v23 >> 1)
      {
        v15 = sub_22F146454((v23 > 1), v16 + 1, 1);
        v18 = v42;
      }

      ++v11;
      *(v18 + 16) = v16 + 1;
      v24 = v18 + 16 * v16;
      v25 = v33;
      *(v24 + 32) = v34;
      *(v24 + 40) = v25;
      v19 = v31;
      if (v30 == v11)
      {

        goto LABEL_19;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22F26DC94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v26 - v5;
  v7 = [a1 wrapper];
  sub_22F73FBC0();

  v8 = sub_22F73FD10();
  (*(v3 + 8))(v6, v2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v30 = MEMORY[0x277D84F90];
    sub_22F146454(0, v9, 0);
    v10 = 32;
    v11 = v30;
    v28 = xmmword_22F771340;
    v12 = MEMORY[0x277D83A90];
    v13 = MEMORY[0x277D83B08];
    do
    {
      v14 = *(v8 + v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v15 = swift_allocObject();
      *(v15 + 16) = v28;
      *(v15 + 56) = v12;
      *(v15 + 64) = v13;
      *(v15 + 32) = v14;
      v16 = sub_22F740E60();
      v30 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v16;
        v21 = v17;
        sub_22F146454((v18 > 1), v19 + 1, 1);
        v17 = v21;
        v16 = v27;
        v11 = v30;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v10 += 4;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v30 = 91;
  v31 = 0xE100000000000000;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v22 = sub_22F740DA0();
  v24 = v23;

  MEMORY[0x231900B10](v22, v24);

  MEMORY[0x231900B10](93, 0xE100000000000000);
  return v30;
}

uint64_t PGUpNextDebugInfoBuilder.debugInfo.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22F740E80();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  if (*(v1 + v3) != 1)
  {
    v6 = (v1 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
    swift_beginAccess();
    v19 = *v6;

    MEMORY[0x231900B10](10, 0xE100000000000000);
    v7 = v19;
    v8 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
    swift_beginAccess();
    v9 = *(v1 + v8);
    v10 = *(v9 + 16);
    if (v10)
    {

      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        MEMORY[0x231900B10](v12, v13);

        MEMORY[0x231900B10](10, 0xE100000000000000);
        v11 += 2;
        --v10;
      }

      while (v10);

      return v19;
    }

    return v7;
  }

  sub_22F73EFB0();
  swift_allocObject();
  v4 = sub_22F73EFA0();
  sub_22F26E448(v4, v5);
  v14 = sub_22F73EF90();
  v16 = v15;
  sub_22F740E70();
  result = sub_22F740E40();
  if (v18)
  {
    v7 = result;
    sub_22F133BF0(v14, v16);

    return v7;
  }

  __break(1u);
  return result;
}

id PGUpNextDebugInfoBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F26E2E4()
{
  result = qword_27DAB2CC0;
  if (!qword_27DAB2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CC0);
  }

  return result;
}

unint64_t sub_22F26E338()
{
  result = qword_27DAB2CD8;
  if (!qword_27DAB2CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2CD0, &unk_22F781200);
    sub_22F26E3E8(&qword_2810A92E8, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CD8);
  }

  return result;
}

uint64_t sub_22F26E3E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_22F26E448(uint64_t a1, uint64_t a2)
{
  result = qword_27DAB2CE0;
  if (!qword_27DAB2CE0)
  {
    type metadata accessor for PGUpNextDebugInfoBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CE0);
  }

  return result;
}

unint64_t sub_22F26E4C4()
{
  result = qword_27DAB2CE8;
  if (!qword_27DAB2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CE8);
  }

  return result;
}

unint64_t sub_22F26E51C()
{
  result = qword_27DAB2CF0;
  if (!qword_27DAB2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CF0);
  }

  return result;
}

unint64_t sub_22F26E574()
{
  result = qword_27DAB2CF8;
  if (!qword_27DAB2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CF8);
  }

  return result;
}

uint64_t sub_22F26E5D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F770E00;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v1;
  *(inited + 48) = sub_22F740E20();
  *(inited + 56) = v2;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v3;
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v4;
  *(inited + 96) = sub_22F740E20();
  *(inited + 104) = v5;
  *(inited + 112) = sub_22F740E20();
  *(inited + 120) = v6;
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v7;
  *(inited + 144) = sub_22F740E20();
  *(inited + 152) = v8;
  *(inited + 160) = sub_22F740E20();
  *(inited + 168) = v9;
  *(inited + 176) = sub_22F740E20();
  *(inited + 184) = v10;
  v11 = sub_22F3D9AEC(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_2810AB8C0 = v11;
  return result;
}

void *sub_22F26E730(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v128 = a4;
  v139 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
  v8 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v10 = &v120 - v9;
  v123 = type metadata accessor for Song(0);
  v136 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v143 = (&v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v126 = (&v120 - v13);
  MEMORY[0x28223BE20](v14);
  v131 = (&v120 - v15);
  MEMORY[0x28223BE20](v16);
  v135 = (&v120 - v17);
  MEMORY[0x28223BE20](v18);
  isUniquelyReferenced_nonNull_native = &v120 - v19;
  MEMORY[0x28223BE20](v21);
  v121 = &v120 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  MEMORY[0x28223BE20](v23 - 8);
  v127 = (&v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v133 = (&v120 - v26);
  MEMORY[0x28223BE20](v27);
  v130 = &v120 - v28;
  MEMORY[0x28223BE20](v29);
  v129 = &v120 - v30;
  if (qword_2810A9B28 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    v31 = qword_2810B4E28;
    *&v32 = CACurrentMediaTime();
    sub_22F1B560C("Sentiment Ranker", 16, 2u, v32, 0, v31, v142);
    v33 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 340);
    v34 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel + 8);
    v132 = v10;
    if (v34)
    {
      v143 = v34;
      v137 = v5;
      v140 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel);
      v35 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 352);
      v5 = v139 + 56;
      v36 = -1 << *(v139 + 32);
      if (-v36 < 64)
      {
        v37 = ~(-1 << -v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v139 + 56);
      v120 = -1 << *(v139 + 32);
      a3 = ((63 - v36) >> 6);
      v127 = (v8 + 56);
      v126 = (v8 + 48);

      v39 = 0;
      v8 = 0;
      v40 = MEMORY[0x277D84F98];
      v138 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        while (1)
        {
          v125 = v38;
          v124 = v8;
          if (!v38)
          {
            if (a3 <= v8 + 1)
            {
              v41 = (v8 + 1);
            }

            else
            {
              v41 = a3;
            }

            isUniquelyReferenced_nonNull_native = v41 - 1;
            v42 = v8;
            while (1)
            {
              v8 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                break;
              }

              if (v8 >= a3)
              {
                v47 = v130;
                v48 = v134;
                (*v127)(v130, 1, 1, v134);
                v38 = 0;
                v8 = isUniquelyReferenced_nonNull_native;
                goto LABEL_20;
              }

              a2 = *(v5 + 8 * v8);
              ++v42;
              if (a2)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_103;
          }

          a2 = v38;
LABEL_18:
          v43 = v121;
          sub_22F15CAA0(*(v139 + 48) + *(v136 + 72) * (__clz(__rbit64(a2)) | (v8 << 6)), v121);
          isUniquelyReferenced_nonNull_native = v134;
          v44 = *(v134 + 48);
          *v10 = v39;
          sub_22F15CB04(v43, v10 + v44);
          v45 = __OFADD__(v39++, 1);
          if (v45)
          {
            goto LABEL_104;
          }

          v38 = (a2 - 1) & a2;
          v46 = v10;
          v47 = v130;
          sub_22F1207AC(v46, v130, &qword_27DAB1630, &qword_22F772A70);
          (*v127)(v47, 0, 1, isUniquelyReferenced_nonNull_native);
          v48 = isUniquelyReferenced_nonNull_native;
LABEL_20:
          v49 = v47;
          v10 = v129;
          sub_22F1207AC(v49, v129, &qword_27DAB1628, &qword_22F772A68);
          v50 = (*v126)(v10, 1, v48);
          v51 = v138;
          if (v50 == 1)
          {
            v86 = v139;
            goto LABEL_96;
          }

          v133 = *v10;
          sub_22F15CB04(v10 + *(v48 + 48), v138);
          v52 = &v51[*(v123 + 72)];
          if ((v52[1] & 1) == 0)
          {
            break;
          }

          v53 = v131;
          sub_22F15CAA0(v51, v131);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v141[0] = v40;
          v54 = v53;
          a2 = v40;
          v55 = sub_22F122A14(v54);
          v57 = v40[2];
          v58 = (v56 & 1) == 0;
          v45 = __OFADD__(v57, v58);
          v59 = v57 + v58;
          if (v45)
          {
            goto LABEL_105;
          }

          v10 = v56;
          if (v40[3] < v59)
          {
            sub_22F125F5C(v59, isUniquelyReferenced_nonNull_native);
            a2 = v141[0];
            v55 = sub_22F122A14(v131);
            if ((v10 & 1) != (v60 & 1))
            {
              goto LABEL_113;
            }

LABEL_44:
            v40 = v141[0];
            if (v10)
            {
              goto LABEL_7;
            }

            goto LABEL_45;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          a2 = v141;
          v85 = v55;
          sub_22F134678();
          v55 = v85;
          v40 = v141[0];
          if (v10)
          {
LABEL_7:
            *(v40[7] + 4 * v55) = v33;
            sub_22F15CBD8(v131);
            sub_22F15CBD8(v138);
            goto LABEL_8;
          }

LABEL_45:
          v40[(v55 >> 6) + 8] |= 1 << v55;
          a2 = v55;
          isUniquelyReferenced_nonNull_native = v131;
          sub_22F15CAA0(v131, v40[6] + *(v136 + 72) * v55);
          *(v40[7] + 4 * a2) = v33;
          sub_22F15CBD8(isUniquelyReferenced_nonNull_native);
          sub_22F15CBD8(v138);
          v80 = v40[2];
          v45 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v45)
          {
            goto LABEL_110;
          }

          v40[2] = v81;
LABEL_8:
          v10 = v132;
        }

        v61 = *v52;
        sub_22F15CAA0(v51, v135);
        if (qword_2810AB8B8 != -1)
        {
          swift_once();
        }

        v62 = off_2810AB8C0;
        v63 = *(off_2810AB8C0 + 2);
        v122 = v38;
        if (v63)
        {
          sub_22F742170();
          sub_22F740D60();
          v64 = sub_22F7421D0();
          v65 = -1 << v62[32];
          v10 = v64 & ~v65;
          if ((*&v62[((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v10))
          {
            break;
          }
        }

LABEL_37:
        v72 = 1.0;
        if (v35 < v61)
        {
          goto LABEL_38;
        }

LABEL_39:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141[0] = v40;
        a2 = v40;
        v74 = sub_22F122A14(v135);
        v75 = v40[2];
        v76 = (v73 & 1) == 0;
        v77 = v75 + v76;
        if (__OFADD__(v75, v76))
        {
          goto LABEL_106;
        }

        v10 = v73;
        if (v40[3] >= v77)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F134678();
          }
        }

        else
        {
          sub_22F125F5C(v77, isUniquelyReferenced_nonNull_native);
          v78 = sub_22F122A14(v135);
          if ((v10 & 1) != (v79 & 1))
          {
            goto LABEL_113;
          }

          v74 = v78;
        }

        isUniquelyReferenced_nonNull_native = v138;
        v40 = v141[0];
        if (v10)
        {
          *(*(v141[0] + 56) + 4 * v74) = v72;
          sub_22F15CBD8(v135);
        }

        else
        {
          *(v141[0] + 8 * (v74 >> 6) + 64) |= 1 << v74;
          a2 = v135;
          sub_22F15CAA0(v135, v40[6] + *(v136 + 72) * v74);
          *(v40[7] + 4 * v74) = v72;
          sub_22F15CBD8(a2);
          v82 = v40[2];
          v45 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v45)
          {
            goto LABEL_109;
          }

          v40[2] = v83;
        }

        v84 = v137;
        sub_22F741680();
        a2 = v84;
        sub_22F15CBD8(isUniquelyReferenced_nonNull_native);
        v10 = v132;
        v137 = v84;
        v38 = v122;
        if (v84)
        {

          sub_22F0FF590(v139);

          return v40;
        }
      }

      v66 = ~v65;
      v67 = v143;
      v68 = v140;
      while (1)
      {
        v69 = (*(v62 + 6) + 16 * v10);
        if (*v69 == v68 && v67 == v69[1])
        {
          break;
        }

        v71 = sub_22F742040();
        v68 = v140;
        v67 = v143;
        if (v71)
        {
          break;
        }

        v10 = (v10 + 1) & v66;
        if (((*&v62[((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v10) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v72 = 1.0;
      if (v35 < v61)
      {
        goto LABEL_39;
      }

LABEL_38:
      v72 = 0.0;
      goto LABEL_39;
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v87 = sub_22F740B90();
    __swift_project_value_buffer(v87, qword_2810B4D90);
    v88 = sub_22F740B70();
    v89 = sub_22F7415D0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134217984;
      *(v90 + 4) = v33;
      _os_log_impl(&dword_22F0FC000, v88, v89, "[MemoriesMusic] SentimentRanker producing default scores of %f because the graph is not available.", v90, 0xCu);
      MEMORY[0x2319033A0](v90, -1, -1);
    }

    v91 = *(v139 + 56);
    v129 = v139 + 56;
    v92 = -1 << *(v139 + 32);
    if (-v92 < 64)
    {
      v93 = ~(-1 << -v92);
    }

    else
    {
      v93 = -1;
    }

    a3 = (v93 & v91);
    v125 = -1 << *(v139 + 32);
    v10 = (63 - v92) >> 6;
    v135 = (v8 + 56);
    v138 = (v8 + 48);

    v140 = 0;
    isUniquelyReferenced_nonNull_native = 0;
    v40 = MEMORY[0x277D84F98];
LABEL_71:
    v131 = a3;
    v130 = isUniquelyReferenced_nonNull_native;
    if (a3)
    {
      v95 = a3;
LABEL_80:
      v98 = v126;
      sub_22F15CAA0(*(v139 + 48) + *(v136 + 72) * (__clz(__rbit64(v95)) | (isUniquelyReferenced_nonNull_native << 6)), v126);
      a2 = v134;
      v99 = *(v134 + 48);
      v8 = v132;
      v100 = v140;
      *v132 = v140;
      sub_22F15CB04(v98, v8 + v99);
      v45 = __OFADD__(v100, 1);
      a3 = (v100 + 1);
      v140 = a3;
      if (!v45)
      {
        v137 = v5;
        a3 = ((v95 - 1) & v95);
        v101 = v8;
        v102 = v127;
        sub_22F1207AC(v101, v127, &qword_27DAB1630, &qword_22F772A70);
        (*v135)(v102, 0, 1, a2);
        goto LABEL_82;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v96 = v10 <= isUniquelyReferenced_nonNull_native + 1 ? isUniquelyReferenced_nonNull_native + 1 : v10;
    a2 = v96 - 1;
    v97 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (isUniquelyReferenced_nonNull_native >= v10)
      {
        break;
      }

      v95 = *(v129 + 8 * isUniquelyReferenced_nonNull_native);
      ++v97;
      if (v95)
      {
        goto LABEL_80;
      }
    }

    v137 = v5;
    v102 = v127;
    v117 = v134;
    (*v135)(v127, 1, 1, v134);
    a3 = 0;
    isUniquelyReferenced_nonNull_native = a2;
    a2 = v117;
LABEL_82:
    v103 = v133;
    sub_22F1207AC(v102, v133, &qword_27DAB1628, &qword_22F772A68);
    if ((*v138)(v103, 1, a2) == 1)
    {
      break;
    }

    v8 = *v103;
    v104 = v103 + *(a2 + 48);
    v105 = v143;
    sub_22F15CB04(v104, v143);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v141[0] = v40;
    a2 = v40;
    v107 = sub_22F122A14(v105);
    v108 = v40[2];
    v109 = (v106 & 1) == 0;
    v110 = v108 + v109;
    if (__OFADD__(v108, v109))
    {
      goto LABEL_107;
    }

    v111 = v106;
    if (v40[3] < v110)
    {
      sub_22F125F5C(v110, v5);
      a2 = v141[0];
      v112 = sub_22F122A14(v143);
      if ((v111 & 1) != (v113 & 1))
      {
LABEL_113:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v107 = v112;
      v40 = v141[0];
      if ((v111 & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_69:
      *(v40[7] + 4 * v107) = v33;
      sub_22F15CBD8(v143);
LABEL_70:
      v94 = v137;
      sub_22F741680();
      v5 = v94;
      if (v94)
      {
        sub_22F0FF590(v139);

LABEL_100:

        return v40;
      }

      goto LABEL_71;
    }

    if (v5)
    {
      v40 = v141[0];
      if ((v106 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_69;
    }

    a2 = v141;
    sub_22F134678();
    v40 = v141[0];
    if (v111)
    {
      goto LABEL_69;
    }

LABEL_90:
    v40[(v107 >> 6) + 8] |= 1 << v107;
    v114 = v143;
    sub_22F15CAA0(v143, v40[6] + *(v136 + 72) * v107);
    *(v40[7] + 4 * v107) = v33;
    sub_22F15CBD8(v114);
    v115 = v40[2];
    v45 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (!v45)
    {
      v40[2] = v116;
      goto LABEL_70;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    swift_once();
  }

  v86 = v139;
LABEL_96:
  sub_22F0FF590(v86);
  v118 = v137;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  if (v118)
  {

    goto LABEL_100;
  }

  return v40;
}

id MusicSourceCacheManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicSourceCacheManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicSourceCacheManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F26F9C0(void *a1, void *a2)
{
  v5 = sub_22F7416E0();
  v7 = v6;
  v18 = v8;
  v10 = v9;
  v11 = [a1 librarySpecificFetchOptions];
  sub_22F26FBF8();
  v13 = [swift_getObjCClassFromMetadata(v12) fetchMomentsWithOptions_];
  sub_22F7416A0();
  if (v2)
  {
  }

  else
  {
    v15 = a2;
    sub_22F3D9D90(v13, a1);
    if (qword_2810A9B40 != -1)
    {
      swift_once();
    }

    v14 = qword_2810B4E38;
    sub_22F1B560C("MusicForTimePruneSourcesPerformance", 35, 2u, 0, 1, qword_2810B4E38, v16);
    sub_22F1B2BBC(0);

    sub_22F1B560C("MusicForTimePruneSourcesPerformance", 35, 2u, 0, 1, v14, v17);
    sub_22F1B2BBC(0);

    sub_22F3B078C(v13, a1, v15);
  }
}

unint64_t sub_22F26FBF8()
{
  result = qword_2810A8EA8;
  if (!qword_2810A8EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EA8);
  }

  return result;
}

uint64_t sub_22F26FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent) & 1) != 0 || a3 == 0x726F46636973756DLL && a4 == 0xEE00747369747241)
  {
    return 1;
  }

  if (sub_22F742040())
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 72) ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_22F26FD00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22F7414D0();
  if (!v19)
  {
    return sub_22F7411F0();
  }

  v41 = v19;
  v45 = sub_22F741C10();
  v32 = sub_22F741C20();
  sub_22F741BC0();
  result = sub_22F7414C0();
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
      v22 = sub_22F741510();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22F741C00();
      result = sub_22F7414E0();
      ++v21;
      v13 = v24;
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

void __swiftcall ImportantEntitiesEngineParameters.init()(PhotosGraph::ImportantEntitiesEngineParameters *__return_ptr retstr)
{
  *&retstr->recencyThresholdTimeIntervalFromLatestMomentDateSeconds = xmmword_22F781420;
  retstr->minimumNumberOfMoments = 10;
  *&retstr->minimumImportantLocationPresenceRatioInLifespan = xmmword_22F781430;
  retstr->nonOutlierEntityMinimumImportantLocationPresenceRatioProportion = 0.0;
}

void *static ImportantEntitiesEngine.inferImportantEntities(inContainer:withParameters:progressBlock:reportToCoreAnalytics:)(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4, int a5)
{
  v6 = v5;
  v12 = v6[11];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v827 = sub_22F741860();
  v777 = *(v827 - 8);
  MEMORY[0x28223BE20](v827);
  v826 = &v752 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v825 = &v752 - v15;
  v833 = sub_22F73F090();
  v807 = *(v833 - 8);
  MEMORY[0x28223BE20](v833);
  v793 = &v752 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v818 = &v752 - v18;
  MEMORY[0x28223BE20](v19);
  v830 = &v752 - v20;
  MEMORY[0x28223BE20](v21);
  v776 = &v752 - v22;
  MEMORY[0x28223BE20](v23);
  v785 = &v752 - v24;
  MEMORY[0x28223BE20](v25);
  v784 = &v752 - v26;
  MEMORY[0x28223BE20](v27);
  v790 = &v752 - v28;
  MEMORY[0x28223BE20](v29);
  v805 = (&v752 - v30);
  v829 = sub_22F73F690();
  v783 = *(v829 - 8);
  MEMORY[0x28223BE20](v829);
  v781 = &v752 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v780 = &v752 - v33;
  MEMORY[0x28223BE20](v34);
  v792 = &v752 - v35;
  MEMORY[0x28223BE20](v36);
  v791 = &v752 - v37;
  MEMORY[0x28223BE20](v38);
  v804 = &v752 - v39;
  MEMORY[0x28223BE20](v40);
  v803 = &v752 - v41;
  MEMORY[0x28223BE20](v42);
  v817 = &v752 - v43;
  MEMORY[0x28223BE20](v44);
  v816 = &v752 - v45;
  MEMORY[0x28223BE20](v46);
  v802 = &v752 - v47;
  MEMORY[0x28223BE20](v48);
  v819 = &v752 - v49;
  MEMORY[0x28223BE20](v50);
  v820 = &v752 - v51;
  v52 = v6[12];
  v824 = sub_22F741860();
  v53 = *(v824 - 1);
  MEMORY[0x28223BE20](v824);
  v814 = &v752 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v831 = &v752 - v56;
  v850 = v52;
  v57 = *(v52 - 1);
  MEMORY[0x28223BE20](v58);
  v789 = &v752 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v823 = &v752 - v61;
  MEMORY[0x28223BE20](v62);
  v832 = &v752 - v63;
  v856 = v12;
  v843 = *(v12 - 8);
  MEMORY[0x28223BE20](v64);
  v800 = &v752 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v815 = &v752 - v67;
  MEMORY[0x28223BE20](v68);
  v794 = &v752 - v69;
  MEMORY[0x28223BE20](v70);
  v812 = &v752 - v71;
  MEMORY[0x28223BE20](v72);
  v808 = &v752 - v73;
  MEMORY[0x28223BE20](v74);
  v834 = &v752 - v75;
  MEMORY[0x28223BE20](v76);
  v813 = &v752 - v77;
  MEMORY[0x28223BE20](v78);
  v801 = (&v752 - v79);
  MEMORY[0x28223BE20](v80);
  v775 = &v752 - v81;
  MEMORY[0x28223BE20](v82);
  v774 = &v752 - v83;
  MEMORY[0x28223BE20](v84);
  v778 = &v752 - v85;
  MEMORY[0x28223BE20](v86);
  v779 = &v752 - v87;
  MEMORY[0x28223BE20](v88);
  v788 = &v752 - v89;
  MEMORY[0x28223BE20](v90);
  v842 = &v752 - v91;
  MEMORY[0x28223BE20](v92);
  v852 = &v752 - v93;
  v772 = v94;
  MEMORY[0x28223BE20](v95);
  v851 = (&v752 - v96);
  v795 = sub_22F740B90();
  v796 = *(v795 - 8);
  MEMORY[0x28223BE20](v795);
  v98 = &v752 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a2;
  v100 = *(a2 + 8);
  v844 = *(a2 + 16);
  v102 = *(a2 + 24);
  v101 = *(a2 + 32);
  v103 = *(a2 + 40);
  v104 = swift_slowAlloc();
  *v104 = 0;
  v809 = a4;
  v810 = a3;
  a3(0.0);
  v797 = v104;
  if (*v104 == 1)
  {
    v105 = MEMORY[0x277D84F90];

    return sub_22F14E740(v105);
  }

  v855 = v53;
  v107 = v57;
  sub_22F740B80();
  v108 = v6[13];
  v109 = *(v108 + 6);
  v773 = v6;
  v110 = v6[10];
  v849 = v108;
  v111 = v109(v110);
  v112 = sub_22F741230();
  v113 = v98;
  if (!v112)
  {

    v119 = sub_22F740B70();
    v120 = sub_22F7415D0();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_22F0FC000, v119, v120, "No entities found in the container, returning...", v121, 2u);
      MEMORY[0x2319033A0](v121, -1, -1);
    }

    v122 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v796 + 8))(v98, v795);
    return v122;
  }

  v114 = v112;
  v756 = a5;

  v115 = sub_22F740B70();
  v116 = sub_22F7415D0();
  v117 = os_log_type_enabled(v115, v116);
  v845 = a1;
  v853 = v110;
  if (v117)
  {
    v118 = swift_slowAlloc();
    *v118 = 134217984;
    *(v118 + 4) = sub_22F741230();

    _os_log_impl(&dword_22F0FC000, v115, v116, "There are %ld potential entities.", v118, 0xCu);
    v110 = v853;
    MEMORY[0x2319033A0](v118, -1, -1);
  }

  else
  {
  }

  v123 = v849;
  v767 = (*(v849 + 7))(v110, v849);
  v770 = sub_22F276A8C(v767);
  v124 = v844 / 2;
  if (v844 / 2 <= 1)
  {
    v124 = 1;
  }

  v761 = v124;
  v125 = sub_22F7411F0();
  v861 = v125;
  v126 = MEMORY[0x277D84F90];
  v762 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v860 = v762;
  v821 = sub_22F14E214(v126);

  v127 = sub_22F741230();
  v854 = v113;
  v841 = v111;
  if (v127)
  {
    v129 = 0;
    v840 = 0;
    v837.n128_u64[0] = *(v123 + 8);
    v753 = 0.3 / v114;
    v848 = (v843 + 16);
    v836 = (v843 + 32);
    v822 = (v107 + 48);
    v799 = (v107 + 32);
    v838 = (v123 + 64);
    v771 = v123 + 40;
    v782 = (v783 + 8);
    v760 = (v807 + 16);
    v766 = (v807 + 8);
    v798.n128_u64[0] = v107 + 8;
    v839 = v843 + 8;
    v755 = v100 / 86400.0;
    v765 = (v107 + 16);
    v811 = (v855 + 1);
    v855 = MEMORY[0x277D84F98];
    v130 = 0.0;
    v128.n128_u64[0] = 134218498;
    v806 = v128;
    v128.n128_u64[0] = 136315138;
    v787 = v128;
    v128.n128_u64[0] = 134219010;
    v754 = v128;
    v128.n128_u64[0] = 136315394;
    v752 = v128;
    v759 = v99 / 86400.0;
    v131 = v850;
    v132 = v852;
    while (1)
    {
      v133 = sub_22F741210();
      sub_22F7411B0();
      if (v133)
      {
        v134 = *(v843 + 16);
        v135 = v134(v851, v111 + ((*(v843 + 80) + 32) & ~*(v843 + 80)) + *(v843 + 72) * v129, v856);
      }

      else
      {
        v403 = sub_22F741B30();
        if (v772 != 8)
        {
          goto LABEL_305;
        }

        v857 = v403;
        v134 = *v848;
        (*v848)(v851, &v857, v856);
        v135 = swift_unknownObjectRelease();
      }

      v136 = v842;
      if (__OFADD__(v129, 1))
      {
        __break(1u);
LABEL_282:
        v749 = v135;

        v122 = sub_22F14E740(MEMORY[0x277D84F90]);
        (*v822)(v749, v833);
        (*v852)(v123, v856);
        (*(v796 + 8))(v113, v795);

        return v122;
      }

      v847 = v129 + 1;
      v846 = v129;
      (*v836)(v132, v851, v856);
      v137 = v853;
      v138 = (v837.n128_u64[0])(v132, v853, v123);
      v139 = sub_22F741230();
      if (v139 < v844)
      {
        break;
      }

      v835 = v134;
      v857 = v138;
      MEMORY[0x28223BE20](v139);
      *(&v752 - 4) = v137;
      v154 = v856;
      *(&v752 - 3) = v856;
      *(&v752 - 2) = v131;
      *(&v752 - 1) = v123;
      sub_22F741280();
      swift_getWitnessTable();
      v155 = v131;
      v156 = v840;
      v157 = sub_22F7410A0();
      v840 = v156;
      v857 = v157;
      swift_getWitnessTable();
      v158 = v831;
      sub_22F7414F0();
      v159 = *v822;
      if ((*v822)(v158, 1, v155) == 1)
      {

        (*v811)(v158, v824);

        v160 = v813;
        v835(v813, v852, v154);
        v161 = sub_22F740B70();
        v162 = sub_22F7415E0();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v857 = v164;
          *v163 = v787.n128_u32[0];
          v165 = v856;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v167 = (*(AssociatedConformanceWitness + 8))(v165, AssociatedConformanceWitness);
          v168 = v160;
          v169 = v167;
          v171 = v170;
          v172 = *v839;
          (*v839)(v168, v165);
          v173 = sub_22F145F20(v169, v171, &v857);

          *(v163 + 4) = v173;
          _os_log_impl(&dword_22F0FC000, v161, v162, "Unable to find first moment for entity with uuid %s", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v164);
          MEMORY[0x2319033A0](v164, -1, -1);
          MEMORY[0x2319033A0](v163, -1, -1);
        }

        else
        {

          v172 = *v839;
          (*v839)(v160, v856);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        }

        v208 = v855;
        v209 = (*(AssociatedConformanceWitness + 8))(v856, AssociatedConformanceWitness);
        v211 = v210;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v857 = v208;
        v213 = sub_22F1229E8(v209, v211);
        v215 = *(v208 + 16);
        v216 = (v214 & 1) == 0;
        v182 = __OFADD__(v215, v216);
        v217 = v215 + v216;
        if (v182)
        {
          goto LABEL_287;
        }

        v218 = v214;
        if (*(v208 + 24) >= v217)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v405 = v213;
            sub_22F134340();
            v213 = v405;
          }
        }

        else
        {
          sub_22F1259D0(v217, isUniquelyReferenced_nonNull_native);
          v213 = sub_22F1229E8(v209, v211);
          if ((v218 & 1) != (v219 & 1))
          {
            goto LABEL_307;
          }
        }

        v132 = v852;
        if (v218)
        {
          v255 = v213;

          v855 = v857;
          *(v857[7] + v255) = 3;
          v172(v132, v856);
          goto LABEL_54;
        }

        v204 = v857;
        v857[(v213 >> 6) + 8] |= 1 << v213;
        v256 = (v204[6] + 16 * v213);
        *v256 = v209;
        v256[1] = v211;
        *(v204[7] + v213) = 3;
        v172(v132, v856);
        v257 = v204[2];
        v182 = __OFADD__(v257, 1);
        v207 = v257 + 1;
        if (v182)
        {
          goto LABEL_292;
        }

LABEL_53:
        v855 = v204;
        v204[2] = v207;
        goto LABEL_54;
      }

      v186 = *v799;
      v187 = v850;
      (*v799)(v832, v158, v850);
      v857 = v157;
      swift_getWitnessTable();
      v188 = v814;
      sub_22F740D90();
      if ((v159)(v188, 1, v187) == 1)
      {

        (*v811)(v188, v824);

        v189 = v801;
        v835(v801, v852, v856);
        v190 = sub_22F740B70();
        v191 = sub_22F7415E0();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v857 = v193;
          *v192 = v787.n128_u32[0];
          v194 = v856;
          v195 = swift_getAssociatedConformanceWitness();
          v196 = (*(v195 + 8))(v194, v195);
          v197 = v189;
          v198 = v196;
          v200 = v199;
          v201 = *v839;
          (*v839)(v197, v194);
          v202 = sub_22F145F20(v198, v200, &v857);

          *(v192 + 4) = v202;
          _os_log_impl(&dword_22F0FC000, v190, v191, "Unable to find last moment for entity with uuid %s", v192, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v193);
          MEMORY[0x2319033A0](v193, -1, -1);
          MEMORY[0x2319033A0](v192, -1, -1);
        }

        else
        {

          v201 = *v839;
          (*v839)(v189, v856);
          v195 = swift_getAssociatedConformanceWitness();
        }

        v259 = v855;
        v260 = (*(v195 + 8))(v856, v195);
        v262 = v261;
        v263 = swift_isUniquelyReferenced_nonNull_native();
        v857 = v259;
        v264 = sub_22F1229E8(v260, v262);
        v266 = *(v259 + 16);
        v267 = (v265 & 1) == 0;
        v182 = __OFADD__(v266, v267);
        v268 = v266 + v267;
        if (v182)
        {
          goto LABEL_290;
        }

        v269 = v265;
        if (*(v259 + 24) >= v268)
        {
          if ((v263 & 1) == 0)
          {
            v406 = v264;
            sub_22F134340();
            v264 = v406;
          }
        }

        else
        {
          sub_22F1259D0(v268, v263);
          v264 = sub_22F1229E8(v260, v262);
          if ((v269 & 1) != (v270 & 1))
          {
            goto LABEL_307;
          }
        }

        v132 = v852;
        if (v269)
        {
          v319 = v264;

          v855 = v857;
          *(v857[7] + v319) = 3;
        }

        else
        {
          v320 = v857;
          v857[(v264 >> 6) + 8] |= 1 << v264;
          v321 = (v320[6] + 16 * v264);
          *v321 = v260;
          v321[1] = v262;
          *(v320[7] + v264) = 3;
          v322 = v320[2];
          v182 = __OFADD__(v322, 1);
          v323 = v322 + 1;
          if (v182)
          {
            goto LABEL_297;
          }

          v855 = v320;
          v320[2] = v323;
        }

        v131 = v850;
        (*v798.n128_u64[0])(v832, v850);
        v201(v132, v856);
        v113 = v854;
        goto LABEL_55;
      }

      v220 = v850;
      v186(v823, v188, v850);

      v221 = v849;
      v222 = v853;
      v223 = swift_getAssociatedConformanceWitness();
      v225 = v223 + 8;
      v224 = *(v223 + 8);
      v226 = v820;
      v786 = v223;
      (v224)(v220, v223);
      v227 = v802;
      (*(v221 + 5))(v222, v221);
      v228 = v819;
      sub_22F73F5E0();
      v229 = *v782;
      v230 = v829;
      (*v782)(v227, v829);
      LOBYTE(v221) = sub_22F73F5D0();
      v229(v228, v230);
      v229(v226, v230);
      if (v221)
      {
        v763 = v224;
        v764 = v225;

        v231 = v788;
        v835(v788, v852, v856);
        v232 = v789;
        (*v765)(v789, v823, v850);
        v233 = sub_22F740B70();
        v234 = sub_22F7415D0();
        if (os_log_type_enabled(v233, v234))
        {
          v235 = swift_slowAlloc();
          v768 = v229;
          v236 = v235;
          v758 = swift_slowAlloc();
          v857 = v758;
          *v236 = v806.n128_u32[0];
          *(v236 + 4) = v759;
          *(v236 + 12) = 2080;
          v237 = v849;
          v238 = swift_getAssociatedConformanceWitness();
          v239 = (*(v238 + 8))(v856, v238);
          LODWORD(v757) = v234;
          v240 = v239;
          v242 = v241;
          v243 = *v839;
          v769 = (v839 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v835 = v243;
          v243(v231, v856);
          v244 = sub_22F145F20(v240, v242, &v857);

          *(v236 + 14) = v244;
          *(v236 + 22) = 2080;
          v245 = v820;
          v246 = v850;
          v763(v850, v786);
          v247 = *v798.n128_u64[0];
          (*v798.n128_u64[0])(v232, v246);
          sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
          v248 = v829;
          v249 = sub_22F742010();
          v251 = v250;
          v252 = v245;
          v123 = v237;
          v768(v252, v248);
          v253 = sub_22F145F20(v249, v251, &v857);

          *(v236 + 24) = v253;
          _os_log_impl(&dword_22F0FC000, v233, v757, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v236, 0x20u);
          v254 = v758;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v254, -1, -1);
          MEMORY[0x2319033A0](v236, -1, -1);
        }

        else
        {
          v247 = *v798.n128_u64[0];
          (*v798.n128_u64[0])(v232, v850);

          v324 = *v839;
          v769 = (v839 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v835 = v324;
          v324(v231, v856);
          v123 = v849;
          v238 = swift_getAssociatedConformanceWitness();
        }

        v325 = v852;
        v326 = v856;
        v327 = (*(v238 + 8))(v856, v238);
        v329 = v328;
        v330 = v855;
        v331 = swift_isUniquelyReferenced_nonNull_native();
        v857 = v330;
        sub_22F1302A0(1, v327, v329, v331);

        v131 = v850;
        v247(v823, v850);
        v247(v832, v131);
        v132 = v325;
        (v835)(v325, v326);
        v855 = v857;
        v113 = v854;
      }

      else
      {
        v271 = v850;
        v272 = v786;
        (v224)(v850, v786);
        (v224)(v271, v272);
        v273 = v805;
        sub_22F73F040();
        sub_22F73F080();
        v274 = v835;
        if (v275 >= v100)
        {
          v332 = sub_22F276A8C(v138);

          v113 = v854;
          sub_22F2770FC(v770, v332, v761, v854);
          v334 = v333;

          v123 = v849;
          v132 = v852;
          if (v334 <= 1.0)
          {
            if (v334 >= v102)
            {
              v382 = v856;
              v383 = swift_getAssociatedConformanceWitness();
              v384 = *(v383 + 8);
              v786 = v384(v382, v383);
              v386 = v385;
              v387 = v776;
              v142 = v833;
              (*v760)(v776, v805, v833);
              v388 = swift_isUniquelyReferenced_nonNull_native();
              v857 = v860;
              sub_22F130088(v387, v786, v386, v388);

              v762 = v857;
              v860 = v857;
              v389 = v384(v382, v383);
              v132 = v852;
              v390 = v389;
              v392 = v391;
              v393 = v821;
              v394 = swift_isUniquelyReferenced_nonNull_native();
              v857 = v393;
              sub_22F12FF10(v390, v392, v394, v334);

              v821 = v857;
              v274(v775, v132, v382);
              sub_22F741280();
              sub_22F741240();
              v130 = v753 + v130;
              v395 = v797;
              (v810)(v797, v130);
              if (*v395 == 1)
              {
                goto LABEL_284;
              }

              (*v766)(v805, v142);
              v396 = *v798.n128_u64[0];
              v131 = v850;
              (*v798.n128_u64[0])(v823, v850);
              v396(v832, v131);
              (*v839)(v132, v856);
              v123 = v849;
              v111 = v841;
              v258 = v846;
              goto LABEL_57;
            }

            v356 = v774;
            v274(v774, v852, v856);
            v357 = sub_22F740B70();
            v358 = sub_22F7415D0();
            v359 = os_log_type_enabled(v357, v358);
            v360 = v839;
            v361 = (v839 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            if (v359)
            {
              v362 = swift_slowAlloc();
              v363 = swift_slowAlloc();
              v857 = v363;
              *v362 = v806.n128_u32[0];
              *(v362 + 4) = v102;
              *(v362 + 12) = 2080;
              v835 = v361;
              v364 = v849;
              v365 = v856;
              v366 = swift_getAssociatedConformanceWitness();
              v367 = (*(v366 + 8))(v365, v366);
              v368 = v356;
              v369 = v367;
              v371 = v370;
              v372 = *v839;
              (*v839)(v368, v365);
              v373 = sub_22F145F20(v369, v371, &v857);

              *(v362 + 14) = v373;
              *(v362 + 22) = 2048;
              *(v362 + 24) = v334;
              v374 = v358;
              v123 = v364;
              _os_log_impl(&dword_22F0FC000, v357, v374, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v362, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v363);
              MEMORY[0x2319033A0](v363, -1, -1);
              v375 = v362;
              v132 = v852;
              MEMORY[0x2319033A0](v375, -1, -1);
            }

            else
            {

              v365 = v856;
              v372 = *v360;
              (*v360)(v356, v856);
              v123 = v849;
              v366 = swift_getAssociatedConformanceWitness();
            }

            v397 = (*(v366 + 8))(v365, v366);
            v399 = v398;
            v400 = v855;
            v401 = swift_isUniquelyReferenced_nonNull_native();
            v857 = v400;
            sub_22F1302A0(5, v397, v399, v401);

            (*v766)(v805, v833);
            v402 = *v798.n128_u64[0];
            v131 = v850;
            (*v798.n128_u64[0])(v823, v850);
            v402(v832, v131);
            v372(v132, v365);
          }

          else
          {
            v335 = v778;
            v274(v778, v852, v856);
            v336 = sub_22F740B70();
            v337 = sub_22F7415E0();
            if (os_log_type_enabled(v336, v337))
            {
              v338 = swift_slowAlloc();
              v339 = swift_slowAlloc();
              v857 = v339;
              *v338 = v752.n128_u32[0];
              v340 = v856;
              v341 = swift_getAssociatedConformanceWitness();
              v342 = (*(v341 + 8))(v340, v341);
              v343 = v335;
              v344 = v342;
              v346 = v345;
              v347 = *v839;
              (*v839)(v343, v340);
              v348 = sub_22F145F20(v344, v346, &v857);

              *(v338 + 4) = v348;
              *(v338 + 12) = 2048;
              *(v338 + 14) = v334;
              _os_log_impl(&dword_22F0FC000, v336, v337, "Entity %s has invalid location presence %f!", v338, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v339);
              MEMORY[0x2319033A0](v339, -1, -1);
              v349 = v338;
              v123 = v849;
              MEMORY[0x2319033A0](v349, -1, -1);
            }

            else
            {

              v347 = *v839;
              v340 = v856;
              (*v839)(v335, v856);
              v341 = swift_getAssociatedConformanceWitness();
            }

            v132 = v852;
            v376 = (*(v341 + 8))(v340, v341);
            v378 = v377;
            v379 = v855;
            v380 = swift_isUniquelyReferenced_nonNull_native();
            v857 = v379;
            sub_22F1302A0(7, v376, v378, v380);

            (*v766)(v805, v833);
            v381 = *v798.n128_u64[0];
            v131 = v850;
            (*v798.n128_u64[0])(v823, v850);
            v381(v832, v131);
            v347(v132, v340);
          }
        }

        else
        {

          v276 = v779;
          v274(v779, v852, v856);
          v277 = *v760;
          v278 = v833;
          (*v760)(v790, v273, v833);
          v279 = v784;
          v277(v784, v273, v278);
          v280 = v785;
          v277(v785, v273, v278);
          v281 = sub_22F740B70();
          v282 = sub_22F7415D0();
          v283 = os_log_type_enabled(v281, v282);
          v284 = v766;
          v835 = (v766 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v123 = v849;
          if (v283)
          {
            v285 = swift_slowAlloc();
            v769 = swift_slowAlloc();
            v857 = v769;
            *v285 = v754.n128_u32[0];
            *(v285 + 4) = v755;
            *(v285 + 12) = 2080;
            v768 = v229;
            v286 = v856;
            v764 = swift_getAssociatedConformanceWitness();
            v287 = *(v764 + 8);
            LODWORD(v758) = v282;
            v288 = v287(v286, v764);
            v757 = v281;
            v289 = v288;
            v291 = v290;
            v763 = *v839;
            v786 = v839 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v763(v276, v286);
            v292 = sub_22F145F20(v289, v291, &v857);

            *(v285 + 14) = v292;
            *(v285 + 22) = 2080;
            v293 = v820;
            v294 = v790;
            sub_22F73F060();
            sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
            v295 = v829;
            v296 = sub_22F742010();
            v298 = v297;
            v768(v293, v295);
            v299 = *v284;
            v300 = v294;
            v301 = v833;
            (*v284)(v300, v833);
            v302 = sub_22F145F20(v296, v298, &v857);
            v303 = v301;

            *(v285 + 24) = v302;
            *(v285 + 32) = 2080;
            v304 = v784;
            sub_22F73F030();
            v305 = sub_22F742010();
            v307 = v306;
            v308 = v293;
            v123 = v849;
            v768(v308, v295);
            v299(v304, v303);
            v309 = sub_22F145F20(v305, v307, &v857);

            *(v285 + 34) = v309;
            *(v285 + 42) = 2048;
            v310 = v785;
            sub_22F73F080();
            v312 = v311;
            v299(v310, v303);
            v313 = v856;
            *(v285 + 44) = v312 / 86400.0;
            v314 = v757;
            _os_log_impl(&dword_22F0FC000, v757, v758, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v285, 0x34u);
            v315 = v769;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v315, -1, -1);
            v316 = v285;
            v317 = v763;
            MEMORY[0x2319033A0](v316, -1, -1);

            v318 = v764;
          }

          else
          {

            v299 = *v284;
            (*v284)(v280, v278);
            v299(v279, v278);
            v299(v790, v278);
            v317 = *v839;
            v313 = v856;
            v303 = v278;
            v786 = v839 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v317(v276, v856);
            v318 = swift_getAssociatedConformanceWitness();
          }

          v132 = v852;
          v350 = (*(v318 + 8))(v313);
          v352 = v351;
          v353 = v855;
          v354 = swift_isUniquelyReferenced_nonNull_native();
          v857 = v353;
          sub_22F1302A0(2, v350, v352, v354);

          v299(v805, v303);
          v355 = *v798.n128_u64[0];
          v131 = v850;
          (*v798.n128_u64[0])(v823, v850);
          v355(v832, v131);
          v317(v132, v313);
        }

        v855 = v857;
        v113 = v854;
      }

LABEL_56:
      v111 = v841;
      v258 = v846;
LABEL_57:
      v129 = v258 + 1;
      if (v847 == sub_22F741230())
      {

        v407 = v861;
        goto LABEL_94;
      }
    }

    v140 = v856;
    v134(v136, v132, v856);

    v141 = sub_22F740B70();
    v142 = v140;
    v143 = sub_22F7415D0();
    if (os_log_type_enabled(v141, v143))
    {
      v144 = swift_slowAlloc();
      v835 = swift_slowAlloc();
      v857 = v835;
      *v144 = v806.n128_u32[0];
      *(v144 + 4) = v844;
      *(v144 + 12) = 2080;
      v145 = swift_getAssociatedConformanceWitness();
      v146 = (*(v145 + 8))(v142, v145);
      v147 = v136;
      v149 = v148;
      v113 = v839;
      v150 = *v839;
      (*v839)(v147, v142);
      v151 = sub_22F145F20(v146, v149, &v857);

      *(v144 + 14) = v151;
      *(v144 + 22) = 2048;
      v152 = sub_22F741230();

      *(v144 + 24) = v152;

      _os_log_impl(&dword_22F0FC000, v141, v143, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v144, 0x20u);
      v153 = v835;
      __swift_destroy_boxed_opaque_existential_0(v835);
      MEMORY[0x2319033A0](v153, -1, -1);
      MEMORY[0x2319033A0](v144, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v113 = v839;
      v150 = *v839;
      (*v839)(v136, v142);
      v145 = swift_getAssociatedConformanceWitness();
    }

    v174 = v855;
    v175 = (*(v145 + 8))(v856, v145);
    v177 = v176;
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v857 = v174;
    v178 = sub_22F1229E8(v175, v177);
    v180 = *(v174 + 16);
    v181 = (v179 & 1) == 0;
    v182 = __OFADD__(v180, v181);
    v183 = v180 + v181;
    if (v182)
    {
      __break(1u);
LABEL_284:

      swift_bridgeObjectRelease_n();

      v122 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*v766)(v805, v142);
      v750 = *v798.n128_u64[0];
      v751 = v850;
      (*v798.n128_u64[0])(v823, v850);
      v750(v832, v751);
      (*v839)(v132, v856);
      (*(v796 + 8))(v113, v795);

      return v122;
    }

    v184 = v179;
    if (*(v174 + 24) >= v183)
    {
      if ((v132 & 1) == 0)
      {
        v404 = v178;
        sub_22F134340();
        v178 = v404;
      }
    }

    else
    {
      sub_22F1259D0(v183, v132);
      v178 = sub_22F1229E8(v175, v177);
      if ((v184 & 1) != (v185 & 1))
      {
        goto LABEL_307;
      }
    }

    v132 = v852;
    if (v184)
    {
      v203 = v178;

      v855 = v857;
      *(v857[7] + v203) = 4;
      v150(v132, v856);
LABEL_54:
      v113 = v854;
      v131 = v850;
LABEL_55:
      v123 = v849;
      goto LABEL_56;
    }

    v204 = v857;
    v857[(v178 >> 6) + 8] |= 1 << v178;
    v205 = (v204[6] + 16 * v178);
    *v205 = v175;
    v205[1] = v177;
    *(v204[7] + v178) = 4;
    v150(v132, v856);
    v206 = v204[2];
    v182 = __OFADD__(v206, 1);
    v207 = v206 + 1;
    if (v182)
    {
      goto LABEL_288;
    }

    goto LABEL_53;
  }

  v840 = 0;
  v855 = MEMORY[0x277D84F98];
  v407 = v125;
LABEL_94:

  v408 = sub_22F740B70();
  v409 = sub_22F7415D0();
  if (os_log_type_enabled(v408, v409))
  {
    v410 = swift_slowAlloc();
    *v410 = 134217984;
    *(v410 + 4) = sub_22F741230();
    v411 = v407;

    _os_log_impl(&dword_22F0FC000, v408, v409, "After filtering potential entities, there are %ld entities remaining.", v410, 0xCu);
    MEMORY[0x2319033A0](v410, -1, -1);
  }

  else
  {

    v411 = v407;
  }

  v412 = v797;
  v413 = v850;
  v414 = (v810)(v797, 0.3);
  if (*v412 == 1)
  {

    v122 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v796 + 8))(v113, v795);

    return v122;
  }

  v857 = v411;
  MEMORY[0x28223BE20](v414);
  v415 = v856;
  *(&v752 - 6) = v853;
  *(&v752 - 5) = v415;
  *(&v752 - 4) = v413;
  *(&v752 - 3) = v416;
  *(&v752 - 2) = &v860;
  v417 = sub_22F741280();

  WitnessTable = swift_getWitnessTable();
  v419 = v797;
  v420 = v840;
  v421 = sub_22F7410A0();

  v422 = 0.4;
  (v810)(v419, 0.4);
  if (*v419 == 1)
  {

    v122 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v796 + 8))(v113, v795);
LABEL_255:

    return v122;
  }

  v788 = v420;
  v790 = v411;
  v799 = sub_22F741230();
  v423 = 0.5 / v799;
  v859 = MEMORY[0x277D84FA0];
  v839 = v421;
  v858 = v421;
  MEMORY[0x231900C20](&v857, v417, WitnessTable);
  v858 = v857;
  sub_22F741D90();
  sub_22F741D60();
  v836 = sub_22F741D80();
  v835 = (v777 + 32);
  v424 = TupleTypeMetadata2;
  v832 = (TupleTypeMetadata2 - 8);
  v831 = (v843 + 32);
  v823 = (v807 + 16);
  v824 = (v783 + 8);
  v801 = (v783 + 32);
  v822 = (v807 + 8);
  v852 = (v843 + 8);
  v838 = (v843 + 16);
  v425.n128_u64[0] = 136315138;
  v837 = v425;
  v425.n128_u64[0] = 136315394;
  v798 = v425;
  v425.n128_u64[0] = 136315906;
  v787 = v425;
  v123 = v834;
  v789 = v417;
LABEL_105:
  v427 = v826;
  sub_22F741D70();
  v428 = v825;
  (*v835)(v825, v427, v827);
  if ((*(*(v424 - 8) + 48))(v428, 1, v424) == 1)
  {

    v857 = v790;
    MEMORY[0x28223BE20](v718);
    v719 = v853;
    v720 = v856;
    *(&v752 - 6) = v853;
    *(&v752 - 5) = v720;
    v721 = v849;
    *(&v752 - 4) = v850;
    *(&v752 - 3) = v721;
    *(&v752 - 2) = &v859;
    swift_getWitnessTable();
    v722 = v810;
    v723 = sub_22F741B90();
    v724 = v797;
    v725 = v809;
    (v722)(v797, 0.9);
    if (*v724 == 1)
    {

      v122 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v796 + 8))(v113, v795);

      goto LABEL_255;
    }

    (*(v721 + 9))(v723, v722, v725, v719, v721);
    v726 = sub_22F741230();
    v727 = v800;
    if (!v726)
    {
LABEL_277:

      (v810)(v797, 1.0);
      if (v756)
      {
        sub_22F277E50(v855);
      }

      (*(v796 + 8))(v113, v795);

      return v855;
    }

    v728 = 0;
    v853 = swift_getAssociatedConformanceWitness();
    v850 = *(v853 + 8);
    v851 = (v853 + 8);
    while (1)
    {
      v729 = sub_22F741210();
      sub_22F7411B0();
      if (v729)
      {
        (*(v843 + 16))(v727, v723 + ((*(v843 + 80) + 32) & ~*(v843 + 80)) + *(v843 + 72) * v728, v856);
        v730 = v728 + 1;
        if (__OFADD__(v728, 1))
        {
          goto LABEL_293;
        }
      }

      else
      {
        v748 = sub_22F741B30();
        if (v772 != 8)
        {
          goto LABEL_306;
        }

        v857 = v748;
        (*v838)(v727, &v857, v856);
        swift_unknownObjectRelease();
        v730 = v728 + 1;
        if (__OFADD__(v728, 1))
        {
          goto LABEL_293;
        }
      }

      v731 = v850(v856, v853);
      v733 = v732;
      v734 = v855;
      v735 = swift_isUniquelyReferenced_nonNull_native();
      v857 = v734;
      v737 = sub_22F1229E8(v731, v733);
      v738 = *(v734 + 16);
      v739 = (v736 & 1) == 0;
      v740 = v738 + v739;
      if (__OFADD__(v738, v739))
      {
        goto LABEL_294;
      }

      v741 = v736;
      if (*(v734 + 24) >= v740)
      {
        v727 = v800;
        (*v852)(v800, v856);
        if (v735)
        {
          if (v741)
          {
            goto LABEL_258;
          }
        }

        else
        {
          sub_22F134340();
          v727 = v800;
          if (v741)
          {
            goto LABEL_258;
          }
        }
      }

      else
      {
        sub_22F1259D0(v740, v735);
        v742 = sub_22F1229E8(v731, v733);
        if ((v741 & 1) != (v743 & 1))
        {
          goto LABEL_307;
        }

        v737 = v742;
        v727 = v800;
        (*v852)(v800, v856);
        if (v741)
        {
LABEL_258:

          v855 = v857;
          *(v857[7] + v737) = 0;
          goto LABEL_259;
        }
      }

      v744 = v857;
      v857[(v737 >> 6) + 8] |= 1 << v737;
      v745 = (v744[6] + 16 * v737);
      *v745 = v731;
      v745[1] = v733;
      *(v744[7] + v737) = 0;
      v746 = v744[2];
      v182 = __OFADD__(v746, 1);
      v747 = v746 + 1;
      if (v182)
      {
        goto LABEL_298;
      }

      v855 = v744;
      v744[2] = v747;
LABEL_259:
      ++v728;
      if (v730 == sub_22F741230())
      {
        goto LABEL_277;
      }
    }
  }

  v429 = *v428;
  v430 = v856;
  (*v831)(v123, &v428[*(v424 + 48)], v856);
  v431 = swift_getAssociatedConformanceWitness();
  v432 = v431 + 8;
  v433 = *(v431 + 8);
  v851 = v433(v430, v431);
  v846 = v434;
  v435 = v431;
  v436 = v433(v430, v431);
  v438 = v860;
  if (*(v860 + 16))
  {
    v811 = v429;
    v439 = sub_22F1229E8(v436, v437);
    v441 = v440;

    if ((v441 & 1) == 0)
    {
      goto LABEL_161;
    }

    v442 = *(v438 + 56);
    v814 = *(v807 + 72);
    v813 = *(v807 + 16);
    (v813)(v830, v442 + v814 * v439, v833);
    v443 = v433(v856, v431);
    if (!*(v821 + 16))
    {

LABEL_174:

      v560 = v794;
      (*v838)(v794, v123, v856);
      v561 = sub_22F740B70();
      v562 = sub_22F7415E0();
      if (os_log_type_enabled(v561, v562))
      {
        v563 = swift_slowAlloc();
        v564 = v560;
        v565 = swift_slowAlloc();
        v857 = v565;
        *v563 = v837.n128_u32[0];
        v566 = v856;
        v567 = v433(v856, v435);
        v844 = v432;
        v569 = v568;
        v851 = *v852;
        v570 = v435;
        v571 = v433;
        v572 = v564;
        v573 = v570;
        (v851)(v572, v566);
        v574 = sub_22F145F20(v567, v569, &v857);

        *(v563 + 4) = v574;
        _os_log_impl(&dword_22F0FC000, v561, v562, "Unable to find important location presence for entity %s", v563, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v565);
        MEMORY[0x2319033A0](v565, -1, -1);
        v575 = v563;
        v123 = v834;
        MEMORY[0x2319033A0](v575, -1, -1);

        v576 = v851;
      }

      else
      {

        v566 = v856;
        v576 = *v852;
        v573 = v435;
        v571 = v433;
        (*v852)(v560, v856);
      }

      v577 = v571(v566, v573);
      v579 = v578;
      v580 = v855;
      v581 = swift_isUniquelyReferenced_nonNull_native();
      v857 = v580;
      sub_22F1302A0(9, v577, v579, v581);

      (*v822)(v830, v833);
      (v576)(v123, v566);
      v855 = v857;
LABEL_103:
      v113 = v854;
      goto LABEL_104;
    }

    v840 = v438;
    v445 = sub_22F1229E8(v443, v444);
    v447 = v446;

    if ((v447 & 1) == 0)
    {
      goto LABEL_174;
    }

    v448 = (v811 - 1);
    if (__OFSUB__(v811, 1))
    {
      goto LABEL_301;
    }

    v449 = *(*(v821 + 56) + 8 * v445);
    v450 = v808;
    v451 = v855;
    v847 = v435;
    v452 = v840;
    if (v448 < 0)
    {
      goto LABEL_181;
    }

    v844 = v432;
    v848 = v433;
    while (1)
    {
      while (1)
      {
        v842 = v448;
        v453 = v856;
        sub_22F7412B0();
        v454 = v433(v453, v435);
        v456 = v454;
        v457 = v455;
        if (*(v452 + 2))
        {
          v458 = sub_22F1229E8(v454, v455);
          if (v459)
          {
            break;
          }
        }

        v486 = sub_22F740B70();
        v487 = sub_22F7415E0();

        if (os_log_type_enabled(v486, v487))
        {
          v488 = v451;
          v489 = swift_slowAlloc();
          v490 = swift_slowAlloc();
          v857 = v490;
          *v489 = v837.n128_u32[0];
          v491 = sub_22F145F20(v456, v457, &v857);

          *(v489 + 4) = v491;
          _os_log_impl(&dword_22F0FC000, v486, v487, "Unable to find lifespan for entity %s", v489, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v490);
          MEMORY[0x2319033A0](v490, -1, -1);
          v492 = v489;
          v451 = v488;
          MEMORY[0x2319033A0](v492, -1, -1);
        }

        else
        {
        }

        v493 = v848(v856, v847);
        v495 = v494;
        v496 = swift_isUniquelyReferenced_nonNull_native();
        v857 = v451;
        v497 = sub_22F1229E8(v493, v495);
        v499 = v451[2];
        v500 = (v498 & 1) == 0;
        v182 = __OFADD__(v499, v500);
        v501 = v499 + v500;
        if (v182)
        {
          __break(1u);
          goto LABEL_286;
        }

        v502 = v498;
        if (v451[3] >= v501)
        {
          if ((v496 & 1) == 0)
          {
            v530 = v497;
            sub_22F134340();
            v497 = v530;
          }
        }

        else
        {
          sub_22F1259D0(v501, v496);
          v497 = sub_22F1229E8(v493, v495);
          if ((v502 & 1) != (v503 & 1))
          {
            goto LABEL_307;
          }
        }

        v435 = v847;
        v433 = v848;
        if (v502)
        {
          v504 = v497;

          v505 = v857;
          *(v857[7] + v504) = 8;
          v451 = v505;
          (*v852)(v450, v856);
        }

        else
        {
          v451 = v857;
          v857[(v497 >> 6) + 8] |= 1 << v497;
          v506 = (v451[6] + 16 * v497);
          *v506 = v493;
          v506[1] = v495;
          *(v451[7] + v497) = 8;
          (*v852)(v450, v856);
          v507 = v451[2];
          v182 = __OFADD__(v507, 1);
          v508 = v507 + 1;
          if (v182)
          {
            goto LABEL_289;
          }

          v451[2] = v508;
        }

        v432 = v844;
        v452 = v840;
LABEL_158:
        v448 = v842;
        if (v842 < 0)
        {
          goto LABEL_181;
        }
      }

      v805 = v456;
      v806.n128_u64[0] = v457;
      v855 = v451;
      v460 = v818;
      (v813)(v818, *(v452 + 7) + v458 * v814, v833);
      v461 = v820;
      sub_22F73F030();
      v462 = v819;
      sub_22F73F060();
      sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
      v463 = v829;
      v464 = sub_22F740DB0();
      v465 = *v824;
      (*v824)(v462, v463);
      (v465)(v461, v463);
      if ((v464 & 1) == 0)
      {

        (*v822)(v460, v833);
        goto LABEL_180;
      }

      sub_22F73F060();
      v466 = v803;
      sub_22F73F030();
      v467 = v804;
      sub_22F73F030();
      v468 = sub_22F740DB0();
      v469 = (v468 & 1) == 0;
      if (v468)
      {
        v470 = v466;
      }

      else
      {
        v470 = v467;
      }

      if (v469)
      {
        v467 = v466;
      }

      (v465)(v470, v463);
      (*v801)(v817, v467, v463);
      sub_22F73F590();
      v472 = v471;
      sub_22F73F080();
      if (v101 * v473 >= v472)
      {

        (v465)(v817, v463);
        (v465)(v816, v463);
        (*v822)(v818, v833);
LABEL_180:
        (*v852)(v808, v856);
        v451 = v855;
        v432 = v844;
        v433 = v848;
LABEL_181:
        v855 = v451;
        v582 = v859;
        v583 = v846;
        v113 = v854;
        if (*(v859 + 16))
        {
          sub_22F742170();
          sub_22F740D60();
          v584 = sub_22F7421D0();
          v585 = v851;
          v586 = -1 << *(v582 + 32);
          v587 = v584 & ~v586;
          if ((*(v582 + 56 + ((v587 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v587))
          {
            v588 = ~v586;
            do
            {
              v589 = (*(v582 + 48) + 16 * v587);
              v590 = *v589 == v585 && v589[1] == v583;
              if (v590 || (v591 = sub_22F742040(), v585 = v851, (v591 & 1) != 0))
              {

                (*v822)(v830, v833);
                v123 = v834;
                (*v852)(v834, v856);
                goto LABEL_104;
              }

              v587 = (v587 + 1) & v588;
            }

            while (((*(v582 + 56 + ((v587 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v587) & 1) != 0);
          }
        }

        v592 = v811 + 1;
        if (__OFADD__(v811, 1))
        {
          goto LABEL_303;
        }

        v593 = v810;
        v123 = v834;
        v594 = v840;
        if (v592 >= v799)
        {
LABEL_239:

          goto LABEL_240;
        }

        v844 = v432;
        v848 = v433;
        while (2)
        {
          v596 = v856;
          sub_22F7412B0();
          v597 = v433(v596, v847);
          v599 = v597;
          v600 = v598;
          if (!*(v594 + 2) || (v601 = sub_22F1229E8(v597, v598), (v602 & 1) == 0))
          {

            v629 = sub_22F740B70();
            v630 = sub_22F7415E0();

            if (os_log_type_enabled(v629, v630))
            {
              v631 = swift_slowAlloc();
              v632 = v433;
              v633 = swift_slowAlloc();
              v857 = v633;
              *v631 = v837.n128_u32[0];
              v634 = sub_22F145F20(v599, v600, &v857);
              v635 = v432;
              v636 = v634;

              *(v631 + 4) = v636;
              v432 = v635;
              _os_log_impl(&dword_22F0FC000, v629, v630, "Unable to find lifespan for entity %s", v631, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v633);
              v637 = v633;
              v433 = v632;
              v638 = v847;
              MEMORY[0x2319033A0](v637, -1, -1);
              MEMORY[0x2319033A0](v631, -1, -1);

              v639 = v855;
            }

            else
            {

              v639 = v855;
              v638 = v847;
            }

            v640 = v638;
            v641 = v432;
            v642 = v433;
            v643 = v433(v856, v640);
            v645 = v644;
            v646 = swift_isUniquelyReferenced_nonNull_native();
            v857 = v639;
            v647 = sub_22F1229E8(v643, v645);
            v649 = *(v639 + 16);
            v650 = (v648 & 1) == 0;
            v182 = __OFADD__(v649, v650);
            v651 = v649 + v650;
            if (v182)
            {
              goto LABEL_296;
            }

            v652 = v648;
            if (*(v639 + 24) >= v651)
            {
              if ((v646 & 1) == 0)
              {
                v682 = v647;
                sub_22F134340();
                v647 = v682;
              }
            }

            else
            {
              sub_22F1259D0(v651, v646);
              v647 = sub_22F1229E8(v643, v645);
              if ((v652 & 1) != (v653 & 1))
              {
                goto LABEL_307;
              }
            }

            v433 = v642;
            v113 = v854;
            if (v652)
            {
              v595 = v647;

              v855 = v857;
              *(v857[7] + v595) = 8;
              (*v852)(v812, v856);
            }

            else
            {
              v654 = v857;
              v857[(v647 >> 6) + 8] |= 1 << v647;
              v655 = (v654[6] + 16 * v647);
              *v655 = v643;
              v655[1] = v645;
              *(v654[7] + v647) = 8;
              (*v852)(v812, v856);
              v656 = v654[2];
              v182 = __OFADD__(v656, 1);
              v657 = v656 + 1;
              if (v182)
              {
                goto LABEL_300;
              }

              v855 = v654;
              v654[2] = v657;
            }

            v593 = v810;
            v432 = v641;
            goto LABEL_195;
          }

          v842 = v599;
          v811 = v600;
          v806.n128_u64[0] = v592;
          v603 = v793;
          (v813)(v793, *(v594 + 7) + v601 * v814, v833);
          v604 = v820;
          sub_22F73F030();
          v605 = v819;
          sub_22F73F060();
          sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
          v606 = v829;
          v607 = sub_22F740DB0();
          v608 = *v824;
          (*v824)(v605, v606);
          (v608)(v604, v606);
          if ((v607 & 1) == 0)
          {

            (*v822)(v603, v833);
LABEL_246:
            (*v852)(v812, v856);
            v593 = v810;
            v123 = v834;
            v113 = v854;
            goto LABEL_240;
          }

          sub_22F73F060();
          v609 = v780;
          sub_22F73F030();
          v610 = v781;
          sub_22F73F030();
          v611 = sub_22F740DB0();
          v612 = (v611 & 1) == 0;
          if (v611)
          {
            v613 = v609;
          }

          else
          {
            v613 = v610;
          }

          if (v612)
          {
            v610 = v609;
          }

          (v608)(v613, v606);
          (*v801)(v792, v610, v606);
          sub_22F73F590();
          v615 = v614;
          sub_22F73F080();
          if (v101 * v616 >= v615)
          {

            v692 = v829;
            (v608)(v792, v829);
            (v608)(v791, v692);
            (*v822)(v793, v833);
            goto LABEL_246;
          }

          v805 = v608;
          v113 = v854;
          v617 = v846;
          v618 = v811;
          if (!*(v821 + 16) || (v619 = sub_22F1229E8(v842, v811), (v620 & 1) == 0))
          {

            v658 = sub_22F740B70();
            v659 = sub_22F7415E0();

            v660 = os_log_type_enabled(v658, v659);
            v123 = v834;
            if (v660)
            {
              v661 = swift_slowAlloc();
              v662 = swift_slowAlloc();
              v857 = v662;
              *v661 = v837.n128_u32[0];
              v663 = sub_22F145F20(v842, v618, &v857);

              *(v661 + 4) = v663;
              _os_log_impl(&dword_22F0FC000, v658, v659, "Unable to find important location presence for entity %s", v661, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v662);
              MEMORY[0x2319033A0](v662, -1, -1);
              MEMORY[0x2319033A0](v661, -1, -1);
            }

            else
            {
            }

            v593 = v810;
            v664 = v848(v856, v847);
            v666 = v665;
            v667 = v855;
            v668 = swift_isUniquelyReferenced_nonNull_native();
            v857 = v667;
            v669 = sub_22F1229E8(v664, v666);
            v671 = *(v667 + 16);
            v672 = (v670 & 1) == 0;
            v182 = __OFADD__(v671, v672);
            v673 = v671 + v672;
            if (v182)
            {
              goto LABEL_302;
            }

            v674 = v670;
            if (*(v667 + 24) >= v673)
            {
              if ((v668 & 1) == 0)
              {
                v683 = v669;
                sub_22F134340();
                v669 = v683;
                v593 = v810;
              }
            }

            else
            {
              sub_22F1259D0(v673, v668);
              v669 = sub_22F1229E8(v664, v666);
              if ((v674 & 1) != (v675 & 1))
              {
                goto LABEL_307;
              }
            }

            v433 = v848;
            v676 = v857;
            v855 = v857;
            if (v674)
            {
              *(v857[7] + v669) = 9;
            }

            else
            {
              v857[(v669 >> 6) + 8] |= 1 << v669;
              v677 = (v676[6] + 16 * v669);
              *v677 = v664;
              v677[1] = v666;
              *(v676[7] + v669) = 9;
              v678 = v676[2];
              v182 = __OFADD__(v678, 1);
              v679 = v678 + 1;
              if (v182)
              {
                goto LABEL_304;
              }

              v676[2] = v679;
            }

            v432 = v844;
            v680 = v829;
            v681 = v805;
            (v805)(v792, v829);
            (v681)(v791, v680);
            (*v822)(v793, v833);
            (*v852)(v812, v856);
            v592 = v806.n128_u64[0];
            goto LABEL_195;
          }

          v621 = *(*(v821 + 56) + 8 * v619);

          v622 = sub_22F740B70();
          v623 = sub_22F7415C0();

          v624 = os_log_type_enabled(v622, v623);
          v432 = v844;
          if (v624)
          {
            v625 = swift_slowAlloc();
            v626 = swift_slowAlloc();
            v857 = v626;
            *v625 = v798.n128_u32[0];
            *(v625 + 4) = sub_22F145F20(v851, v617, &v857);
            *(v625 + 12) = 2080;
            *(v625 + 14) = sub_22F145F20(v842, v618, &v857);
            _os_log_impl(&dword_22F0FC000, v622, v623, "Entity %s's lifespan has significant overlap with %s's lifespan!", v625, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v626, -1, -1);
            MEMORY[0x2319033A0](v625, -1, -1);
          }

          v593 = v810;
          v123 = v834;
          v433 = v848;
          if (v449 >= v103 * v621)
          {

            v627 = v829;
            v628 = v805;
            (v805)(v792, v829);
            (v628)(v791, v627);
            (*v822)(v793, v833);
            (*v852)(v812, v856);
            v592 = (v806.n128_u64[0] + 1);
LABEL_195:
            v594 = v840;
            if (v592 >= v799)
            {
              goto LABEL_239;
            }

            continue;
          }

          break;
        }

        v701 = v851;
        sub_22F10BBDC(&v857, v851, v617);

        v702 = sub_22F740B70();
        v703 = sub_22F7415D0();

        if (os_log_type_enabled(v702, v703))
        {
          v704 = swift_slowAlloc();
          v814 = swift_slowAlloc();
          v857 = v814;
          *v704 = v787.n128_u32[0];
          v705 = sub_22F145F20(v701, v617, &v857);

          *(v704 + 4) = v705;
          v433 = v848;
          v706 = v847;
          *(v704 + 12) = 2048;
          *(v704 + 14) = v449;
          *(v704 + 22) = 2080;
          v707 = sub_22F145F20(v842, v618, &v857);

          *(v704 + 24) = v707;
          *(v704 + 32) = 2048;
          *(v704 + 34) = v621;
          _os_log_impl(&dword_22F0FC000, v702, v703, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v704, 0x2Au);
          v708 = v814;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v708, -1, -1);
          MEMORY[0x2319033A0](v704, -1, -1);
        }

        else
        {

          v706 = v847;
        }

        v709 = v856;
        v710 = v433(v856, v706);
        v712 = v711;
        v713 = v855;
        v714 = swift_isUniquelyReferenced_nonNull_native();
        v857 = v713;
        sub_22F1302A0(6, v710, v712, v714);

        v715 = v829;
        v716 = v805;
        (v805)(v792, v829);
        (v716)(v791, v715);
        (*v822)(v793, v833);
        (*v852)(v812, v709);
        v855 = v857;
        v593 = v810;
        v113 = v854;
LABEL_240:
        v422 = v423 + v422;
        v684 = v797;
        (v593)(v797, v422);
        v135 = v830;
        if (*v684 == 1)
        {
          goto LABEL_282;
        }

        (*v822)(v830, v833);
        (*v852)(v123, v856);
LABEL_104:
        v424 = TupleTypeMetadata2;
        goto LABEL_105;
      }

      v802 = v465;
      v450 = v808;
      v474 = v856;
      v475 = v806.n128_u64[0];
      v476 = v805;
      if (!*(v821 + 16) || (v477 = sub_22F1229E8(v805, v806.n128_i64[0]), (v478 & 1) == 0))
      {

        v509 = sub_22F740B70();
        v510 = sub_22F7415E0();

        if (os_log_type_enabled(v509, v510))
        {
          v511 = swift_slowAlloc();
          v512 = swift_slowAlloc();
          v857 = v512;
          *v511 = v837.n128_u32[0];
          v513 = sub_22F145F20(v476, v475, &v857);

          *(v511 + 4) = v513;
          _os_log_impl(&dword_22F0FC000, v509, v510, "Unable to find important location presence for entity %s", v511, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v512);
          v474 = v856;
          MEMORY[0x2319033A0](v512, -1, -1);
          MEMORY[0x2319033A0](v511, -1, -1);
        }

        else
        {
        }

        v514 = v855;
        v515 = v848(v474, v847);
        v517 = v516;
        v518 = swift_isUniquelyReferenced_nonNull_native();
        v857 = v514;
        v519 = sub_22F1229E8(v515, v517);
        v521 = *(v514 + 16);
        v522 = (v520 & 1) == 0;
        v182 = __OFADD__(v521, v522);
        v523 = v521 + v522;
        if (v182)
        {
          goto LABEL_295;
        }

        v524 = v520;
        if (*(v514 + 24) >= v523)
        {
          if ((v518 & 1) == 0)
          {
            v531 = v519;
            sub_22F134340();
            v519 = v531;
          }
        }

        else
        {
          sub_22F1259D0(v523, v518);
          v519 = sub_22F1229E8(v515, v517);
          if ((v524 & 1) != (v525 & 1))
          {
            goto LABEL_307;
          }
        }

        v433 = v848;
        v451 = v857;
        if (v524)
        {
          *(v857[7] + v519) = 9;
        }

        else
        {
          v857[(v519 >> 6) + 8] |= 1 << v519;
          v526 = (v451[6] + 16 * v519);
          *v526 = v515;
          v526[1] = v517;
          *(v451[7] + v519) = 9;
          v527 = v451[2];
          v182 = __OFADD__(v527, 1);
          v528 = v527 + 1;
          if (v182)
          {
            goto LABEL_299;
          }

          v451[2] = v528;
        }

        v529 = v802;
        (v802)(v817, v463);
        v529(v816, v463);
        (*v822)(v818, v833);
        (*v852)(v450, v856);
        v432 = v844;
        v452 = v840;
        v435 = v847;
        goto LABEL_158;
      }

      v479 = *(*(v821 + 56) + 8 * v477);
      v480 = v846;

      v481 = sub_22F740B70();
      v482 = sub_22F7415C0();

      if (os_log_type_enabled(v481, v482))
      {
        v483 = swift_slowAlloc();
        v484 = swift_slowAlloc();
        v857 = v484;
        *v483 = v798.n128_u32[0];
        *(v483 + 4) = sub_22F145F20(v851, v480, &v857);
        *(v483 + 12) = 2080;
        *(v483 + 14) = sub_22F145F20(v476, v475, &v857);
        _os_log_impl(&dword_22F0FC000, v481, v482, "Entity %s's lifespan has significant overlap with %s's lifespan!", v483, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v484, -1, -1);
        MEMORY[0x2319033A0](v483, -1, -1);
      }

      v451 = v855;
      v435 = v847;
      v433 = v848;
      v452 = v840;
      if (v449 < v103 * v479)
      {
        v685 = v846;

        v686 = v851;
        sub_22F10BBDC(&v857, v851, v685);

        v687 = sub_22F740B70();
        v688 = sub_22F7415D0();

        if (os_log_type_enabled(v687, v688))
        {
          v689 = swift_slowAlloc();
          v690 = swift_slowAlloc();
          v857 = v690;
          *v689 = v787.n128_u32[0];
          *(v689 + 4) = sub_22F145F20(v686, v685, &v857);
          *(v689 + 12) = 2048;
          *(v689 + 14) = v449;
          *(v689 + 22) = 2080;
          v691 = sub_22F145F20(v805, v475, &v857);

          *(v689 + 24) = v691;
          *(v689 + 32) = 2048;
          *(v689 + 34) = v479;
          _os_log_impl(&dword_22F0FC000, v687, v688, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v689, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v690, -1, -1);
          MEMORY[0x2319033A0](v689, -1, -1);
        }

        else
        {
        }

        v693 = v856;
        v432 = v844;
        v694 = v433(v856, v435);
        v696 = v695;
        v697 = v855;
        v698 = swift_isUniquelyReferenced_nonNull_native();
        v857 = v697;
        sub_22F1302A0(6, v694, v696, v698);

        v699 = v829;
        v700 = v802;
        (v802)(v817, v829);
        v700(v816, v699);
        (*v822)(v818, v833);
        (*v852)(v450, v693);
        v451 = v857;
        goto LABEL_181;
      }

      v485 = v802;
      (v802)(v817, v463);
      v485(v816, v463);
      (*v822)(v818, v833);
      (*v852)(v450, v856);
      v448 = v842 - 1;
      v432 = v844;
      if (v842 - 1 < 0)
      {
        goto LABEL_181;
      }
    }
  }

LABEL_161:

  v532 = v815;
  (*v838)(v815, v123, v856);
  v533 = sub_22F740B70();
  v534 = sub_22F7415E0();
  if (os_log_type_enabled(v533, v534))
  {
    v535 = swift_slowAlloc();
    v536 = swift_slowAlloc();
    v857 = v536;
    *v535 = v837.n128_u32[0];
    v537 = v856;
    v538 = v433(v856, v435);
    v539 = v537;
    v848 = v433;
    v541 = v540;
    v542 = *v852;
    (*v852)(v532, v539);
    v543 = sub_22F145F20(v538, v541, &v857);
    v433 = v848;

    *(v535 + 4) = v543;
    _os_log_impl(&dword_22F0FC000, v533, v534, "Unable to find lifespan for entity %s", v535, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v536);
    MEMORY[0x2319033A0](v536, -1, -1);
    MEMORY[0x2319033A0](v535, -1, -1);
  }

  else
  {

    v542 = *v852;
    (*v852)(v532, v856);
  }

  v544 = v433(v856, v435);
  v546 = v545;
  v547 = v855;
  v548 = swift_isUniquelyReferenced_nonNull_native();
  v857 = v547;
  v549 = sub_22F1229E8(v544, v546);
  v551 = *(v547 + 16);
  v552 = (v550 & 1) == 0;
  v182 = __OFADD__(v551, v552);
  v553 = v551 + v552;
  if (v182)
  {
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  v554 = v550;
  if (*(v547 + 24) >= v553)
  {
    if ((v548 & 1) == 0)
    {
      v717 = v549;
      sub_22F134340();
      v549 = v717;
    }
  }

  else
  {
    sub_22F1259D0(v553, v548);
    v549 = sub_22F1229E8(v544, v546);
    if ((v554 & 1) != (v555 & 1))
    {
      goto LABEL_307;
    }
  }

  if (v554)
  {
    v426 = v549;

    v855 = v857;
    *(v857[7] + v426) = 8;
    v123 = v834;
    v542(v834, v856);
    goto LABEL_103;
  }

  v556 = v857;
  v857[(v549 >> 6) + 8] |= 1 << v549;
  v557 = (v556[6] + 16 * v549);
  *v557 = v544;
  v557[1] = v546;
  *(v556[7] + v549) = 8;
  v123 = v834;
  v542(v834, v856);
  v558 = v556[2];
  v182 = __OFADD__(v558, 1);
  v559 = v558 + 1;
  if (!v182)
  {
    v855 = v556;
    v556[2] = v559;
    goto LABEL_103;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

PhotosGraph::ImportantEntityInferenceResult_optional __swiftcall ImportantEntityInferenceResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ImportantEntityInferenceResult.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000020;
    v7 = 0xD00000000000001FLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000022;
    if (v1 != 5)
    {
      v8 = 0x457265696C74756FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E65636552746F6ELL;
    v3 = 0xD000000000000019;
    v4 = 0x746E656D6F4D6F6ELL;
    if (v1 != 3)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000017;
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
}

uint64_t sub_22F2769C4()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F1B5E48(v3, v1);
  return sub_22F7421D0();
}

uint64_t sub_22F276A14(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  sub_22F1B5E48(v4, v2);
  return sub_22F7421D0();
}

unint64_t sub_22F276A64@<X0>(unint64_t *a1@<X8>)
{
  result = ImportantEntityInferenceResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22F276A8C(uint64_t a1)
{
  v3 = *(v1 + 96);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v28 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = sub_22F741280();
  v10 = sub_22F740C50();
  v40 = v10;
  v36 = a1;
  if (!sub_22F741230())
  {
    return v10;
  }

  v26[0] = v5;
  v11 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = *(AssociatedConformanceWitness + 16);
  v32 = AssociatedConformanceWitness + 16;
  v35 = (v4 + 16);
  v29 = (v4 + 8);
  v30 = (v4 + 32);
  v12 = v28;
  v26[1] = v9;
  v27 = v8;
  while (1)
  {
    v13 = sub_22F741210();
    sub_22F7411B0();
    if (v13)
    {
      v14 = *(v4 + 16);
      v14(v8, (v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11), v3);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    result = sub_22F741B30();
    if (v26[0] != 8)
    {
      break;
    }

    v37 = result;
    v14 = *v35;
    (*v35)(v8, &v37, v3);
    swift_unknownObjectRelease();
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_15:
      __break(1u);
      return v40;
    }

LABEL_7:
    (*v30)(v12, v8, v3);
    v16 = v31(v3, AssociatedConformanceWitness);
    if (v17)
    {
      v18 = v17;
      v34 = v16;
      v37 = v16;
      v38 = v17;

      sub_22F740D10();

      if (v39)
      {
        sub_22F210E70(v3, v3);
        swift_allocObject();
        v19 = sub_22F7411A0();
        v14(v20, v28, v3);
        sub_22F20F8F4(v19, v3);
        v21 = sub_22F7411D0();
        v12 = v28;

        v38 = v18;
        v39 = v21;
      }

      else
      {
        sub_22F210E70(v3, v3);
        swift_allocObject();
        v22 = sub_22F7411A0();
        v14(v23, v12, v3);
        v24 = sub_22F20F8F4(v22, v3);
        v38 = v18;
        v39 = v24;
      }

      v37 = v34;
      sub_22F740CE0();
      sub_22F740D20();
      (*(v4 + 8))(v12, v3);
      v8 = v27;
    }

    else
    {
      (*v29)(v12, v3);
    }

    ++v11;
    if (v15 == sub_22F741230())
    {
      return v40;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F276F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[0] = a1;
  v19[1] = a2;
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 8);
  v15(a5, AssociatedConformanceWitness);
  v15(a5, AssociatedConformanceWitness);
  v16 = sub_22F73F5D0();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  return v16 & 1;
}

void sub_22F2770FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v73 = a3;
  v80 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - v9;
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v68 - v15;
  v16 = *(v4 + 96);
  v17 = sub_22F741280();
  v79 = a2;
  GEOLocationCoordinate2DMake();
  v87 = v18;
  sub_22F740CD0();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22F7410D0();
  v87 = v85;
  sub_22F741C30();
  swift_getWitnessTable();
  v85 = sub_22F741290();
  v72 = *(v4 + 80);
  v82 = v72;
  v19 = *(v4 + 104);
  v75 = v16;
  v83 = v16;
  v84 = v19;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_22F26FD00(sub_22F278B24, v81, v17, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);

  sub_22F1732E8(v22, v10);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {

    sub_22F15FCF0(v10);
    v24 = sub_22F740B70();
    v25 = sub_22F7415E0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22F0FC000, v24, v25, "Couldn't find the minimum of the datetime array!", v26, 2u);
      MEMORY[0x2319033A0](v26, -1, -1);
    }
  }

  else
  {
    v27 = v19;
    v71 = v12;
    v28 = *(v12 + 32);
    v28(v78, v10, v11);
    v29 = v76;
    sub_22F172094(v22, v76);

    if (v23(v29, 1, v11) == 1)
    {
      sub_22F15FCF0(v29);
      v30 = sub_22F740B70();
      v31 = sub_22F7415E0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22F0FC000, v30, v31, "Couldn't find the minimum of the datetime array!", v32, 2u);
        MEMORY[0x2319033A0](v32, -1, -1);
      }

      (*(v71 + 8))(v78, v11);
    }

    else
    {
      v33 = v74;
      v70 = v11;
      v28(v74, v29, v11);
      v34 = v80 + 64;
      v35 = 1 << *(v80 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v80 + 64);
      v38 = (v35 + 63) >> 6;

      v69 = 0;
      v76 = 0;
      v39 = 0;
      *&v40 = v75;
      *(&v40 + 1) = v27;
      v41 = v33;
      v68 = v40;
      do
      {
        while (1)
        {
          v42 = v39;
          if (!v37)
          {
            while (1)
            {
              v39 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                break;
              }

              if (v39 >= v38)
              {
                goto LABEL_22;
              }

              v37 = *(v34 + 8 * v39);
              ++v42;
              if (v37)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

LABEL_16:
          v43 = __clz(__rbit64(v37)) | (v39 << 6);
          v44 = (*(v80 + 48) + 16 * v43);
          v45 = v44[1];
          v46 = *(*(v80 + 56) + 8 * v43);
          v37 &= v37 - 1;
          v85 = *v44;
          v86 = v45;

          sub_22F740D10();

          if (v87)
          {
            break;
          }
        }

        v85 = v46;
        MEMORY[0x28223BE20](v47);
        v48 = v68;
        *(&v68 - 3) = v72;
        *(&v68 - 2) = v48;
        *(&v68 - 2) = v78;
        *(&v68 - 1) = v49;
        swift_getWitnessTable();
        sub_22F741B90();
        v50 = sub_22F741230();

        v51 = __OFADD__(v69, v50);
        v69 += v50;
        if (v51)
        {
          goto LABEL_30;
        }

        v52 = sub_22F741230();

        v51 = __OFADD__(v76, v52);
        v76 += v52;
        v41 = v74;
      }

      while (!v51);
      __break(1u);
LABEL_22:

      v53 = v73;
      v54 = v76;
      if (v76 >= v73)
      {
        v66 = *(v71 + 8);
        v67 = v70;
        v66(v41, v70);
        v66(v78, v67);
      }

      else
      {
        v55 = sub_22F740B70();
        v56 = sub_22F7415C0();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v70;
        v59 = v71;
        v60 = v78;
        if (v57)
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_22F0FC000, v55, v56, "Not enough moments at important locations that the entity has been to in the entity's lifetime!", v61, 2u);
          MEMORY[0x2319033A0](v61, -1, -1);
        }

        v62 = sub_22F740B70();
        v63 = sub_22F7415C0();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 134218240;
          *(v64 + 4) = v54;
          *(v64 + 12) = 2048;
          *(v64 + 14) = v53;
          _os_log_impl(&dword_22F0FC000, v62, v63, "Only had %ld moments, which is less than minimum threshold %ld", v64, 0x16u);
          MEMORY[0x2319033A0](v64, -1, -1);
        }

        v65 = *(v59 + 8);
        v65(v41, v58);
        v65(v60, v58);
      }
    }
  }
}

uint64_t sub_22F27798C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a2;
  v9 = sub_22F73F690();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v53 - v12;
  v13 = sub_22F73F090();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v53 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v64 = &v53 - v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 8);
  v24 = v23(a5, AssociatedConformanceWitness);
  v63 = a3;
  v26 = *a3;
  if (!*(*a3 + 16))
  {

    goto LABEL_7;
  }

  v56 = v9;
  v27 = sub_22F1229E8(v24, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_7:
    v47 = 0;
    return v47 & 1;
  }

  v30 = *(v26 + 56);
  v32 = v65;
  v31 = v66;
  v55 = *(v65 + 72);
  v33 = *(v65 + 16);
  v33(v19, v30 + v55 * v27, v66);
  v54 = *(v32 + 32);
  v54(v64, v19, v31);
  v34 = v23(a5, AssociatedConformanceWitness);
  v36 = *v63;
  if (!*(*v63 + 16))
  {

    goto LABEL_9;
  }

  v37 = sub_22F1229E8(v34, v35);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_9:
    (*(v65 + 8))(v64, v66);
    v47 = 1;
    return v47 & 1;
  }

  v40 = *(v36 + 56) + v37 * v55;
  v41 = v57;
  v42 = v66;
  v33(v57, v40, v66);
  v43 = v58;
  v54(v58, v41, v42);
  v44 = v59;
  v45 = v64;
  sub_22F73F060();
  v46 = v60;
  sub_22F73F060();
  v47 = sub_22F73F5D0();
  v48 = *(v61 + 8);
  v49 = v46;
  v50 = v56;
  v48(v49, v56);
  v48(v44, v50);
  v51 = *(v65 + 8);
  v51(v43, v42);
  v51(v45, v42);
  return v47 & 1;
}

BOOL sub_22F277DA0(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);

  v11 = v10(a5, AssociatedConformanceWitness);
  LOBYTE(a5) = sub_22F15E910(v11, v12, v8);

  return (a5 & 1) == 0;
}

void sub_22F277E50(uint64_t a1)
{
  type metadata accessor for ImportantEntitiesPetContainer(0);
  v1 = sub_22F14E718(MEMORY[0x277D84F90]);
  v2 = sub_22F740DF0();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v2, 0x636E657265666E69, 0xED00006570795465, isUniquelyReferenced_nonNull_native);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v4 = sub_22F7417F0();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v1;
  sub_22F12FEE8(v4, 0xD000000000000010, 0x800000022F792BD0, v5);
  v6 = 0;
  v7 = v92;
  do
  {
    while (1)
    {
      v11 = &unk_2843D9058 + v6++;
      v12 = v11[32];
      v13 = 0xD000000000000020;
      v14 = 0xD00000000000001FLL;
      if (v12 == 8)
      {
        v14 = 0xD000000000000010;
      }

      v15 = 0x800000022F78E4D0;
      if (v12 == 8)
      {
        v15 = 0x800000022F78E4B0;
      }

      if (v12 != 7)
      {
        v13 = v14;
      }

      v16 = 0x800000022F78E480;
      if (v12 != 7)
      {
        v16 = v15;
      }

      v17 = 0xD000000000000022;
      if (v12 != 5)
      {
        v17 = 0x457265696C74756FLL;
      }

      v18 = 0xED0000797469746ELL;
      if (v12 == 5)
      {
        v18 = 0x800000022F78E440;
      }

      if (v12 <= 6)
      {
        v13 = v17;
        v16 = v18;
      }

      v19 = 0xD000000000000019;
      v20 = 0x746E656D6F4D6F6ELL;
      if (v12 != 3)
      {
        v20 = 0xD000000000000010;
      }

      v21 = 0x800000022F78E420;
      if (v12 == 3)
      {
        v21 = 0xE900000000000073;
      }

      if (v12 != 2)
      {
        v19 = v20;
      }

      v22 = 0x800000022F78E3F0;
      if (v12 != 2)
      {
        v22 = v21;
      }

      v23 = 0xD000000000000017;
      if (v12)
      {
        v23 = 0x6E65636552746F6ELL;
      }

      v24 = 0xEF6867756F6E4574;
      if (!v12)
      {
        v24 = 0x800000022F78E3C0;
      }

      if (v12 <= 1)
      {
        v19 = v23;
        v22 = v24;
      }

      v25 = v12 <= 4;
      if (v12 <= 4)
      {
        v26 = v19;
      }

      else
      {
        v26 = v13;
      }

      if (v25)
      {
        v27 = v22;
      }

      else
      {
        v27 = v16;
      }

      v92 = v26;
      v93 = v27;

      MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

      v29 = v92;
      v28 = v27;
      v30 = sub_22F7417F0();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v7;
      v32 = sub_22F1229E8(v29, v28);
      v34 = v7[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        __break(1u);
        goto LABEL_98;
      }

      v38 = v33;
      if (v7[3] >= v37)
      {
        break;
      }

      sub_22F125718(v37, v31);
      v32 = sub_22F1229E8(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_103;
      }

LABEL_42:
      if ((v38 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_2:
      v8 = v32;

      v7 = v92;
      v9 = v92[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v30;

      if (v6 == 10)
      {
        goto LABEL_48;
      }
    }

    if (v31)
    {
      goto LABEL_42;
    }

    v43 = v32;
    sub_22F1341C4();
    v32 = v43;
    if (v38)
    {
      goto LABEL_2;
    }

LABEL_43:
    v7 = v92;
    v92[(v32 >> 6) + 8] |= 1 << v32;
    v40 = (v7[6] + 16 * v32);
    *v40 = v29;
    v40[1] = v28;
    *(v7[7] + 8 * v32) = v30;
    v41 = v7[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_99;
    }

    v7[2] = v42;
  }

  while (v6 != 10);
LABEL_48:
  v44 = a1;
  v45 = a1 + 64;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v90 = v49;
  while (2)
  {
    while (2)
    {
      v51 = v50;
      while (2)
      {
        if (!v48)
        {
          while (1)
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v50 >= v49)
            {

              v85 = objc_opt_self();
              v86 = sub_22F740DF0();
              sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
              v91 = sub_22F740C80();
              [v85 sendEvent:v86 withPayload:v91];

              return;
            }

            v48 = *(v45 + 8 * v50);
            ++v51;
            if (v48)
            {
              goto LABEL_59;
            }
          }

LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v50 = v51;
LABEL_59:
        v52 = *(*(v44 + 56) + (__clz(__rbit64(v48)) | (v50 << 6)));
        if (v52 > 4)
        {
          if (v52 <= 6)
          {
            if (v52 == 5)
            {
              v53 = 0xD000000000000022;
              v54 = 0x800000022F78E440;
            }

            else
            {
              v53 = 0x457265696C74756FLL;
              v54 = 0xED0000797469746ELL;
            }
          }

          else if (v52 == 7)
          {
            v53 = 0xD000000000000020;
            v54 = 0x800000022F78E480;
          }

          else if (v52 == 8)
          {
            v53 = 0xD000000000000010;
            v54 = 0x800000022F78E4B0;
          }

          else
          {
            v53 = 0xD00000000000001FLL;
            v54 = 0x800000022F78E4D0;
          }
        }

        else if (v52 <= 1)
        {
          v53 = 0x6E65636552746F6ELL;
          v54 = 0xEF6867756F6E4574;
          if (!v52)
          {
            v53 = 0xD000000000000017;
            v54 = 0x800000022F78E3C0;
          }
        }

        else if (v52 == 2)
        {
          v53 = 0xD000000000000019;
          v54 = 0x800000022F78E3F0;
        }

        else if (v52 == 3)
        {
          v53 = 0x746E656D6F4D6F6ELL;
          v54 = 0xE900000000000073;
        }

        else
        {
          v53 = 0xD000000000000010;
          v54 = 0x800000022F78E420;
        }

        v48 &= v48 - 1;
        v92 = v53;
        v93 = v54;

        MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

        v56 = v92;
        v55 = v93;
        if (!v7[2] || (v57 = sub_22F1229E8(v92, v93), (v58 & 1) == 0) || (v59 = *(v7[7] + 8 * v57), objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) == 0))
        {

          v61 = sub_22F740B70();
          v62 = sub_22F7415E0();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v92 = v64;
            *v63 = 136315138;
            v65 = sub_22F145F20(v56, v55, &v92);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_22F0FC000, v61, v62, "Unable to parse result count for %s as a NSNumber!", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
            v66 = v64;
            v45 = a1 + 64;
            MEMORY[0x2319033A0](v66, -1, -1);
            v67 = v63;
            v44 = a1;
            MEMORY[0x2319033A0](v67, -1, -1);
          }

          else
          {
          }

          v51 = v50;
          v49 = v90;
          continue;
        }

        break;
      }

      v68 = v60;
      v88 = v59;
      if (__OFADD__([v68 integerValue], 1))
      {
        goto LABEL_100;
      }

      v87 = sub_22F7417F0();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v7;
      v71 = sub_22F1229E8(v56, v55);
      v72 = v7[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v7[3] >= v74)
      {
        if (v69)
        {
          v44 = a1;
          if ((v70 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v80 = v70;
          sub_22F1341C4();
          v81 = v80;
          v44 = a1;
          if ((v81 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_90:

        v7 = v92;
        v78 = v92[7];
        v79 = *(v78 + 8 * v71);
        *(v78 + 8 * v71) = v87;

        v49 = v90;
        continue;
      }

      break;
    }

    v75 = v70;
    sub_22F125718(v74, v69);
    v76 = sub_22F1229E8(v56, v55);
    if ((v75 & 1) != (v77 & 1))
    {
      goto LABEL_103;
    }

    v71 = v76;
    v44 = a1;
    if (v75)
    {
      goto LABEL_90;
    }

LABEL_92:
    v7 = v92;
    v92[(v71 >> 6) + 8] |= 1 << v71;
    v82 = (v7[6] + 16 * v71);
    *v82 = v56;
    v82[1] = v55;
    *(v7[7] + 8 * v71) = v87;

    v83 = v7[2];
    v36 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v36)
    {
      v7[2] = v84;
      v49 = v90;
      continue;
    }

    break;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  sub_22F7420C0();
  __break(1u);
}

uint64_t sub_22F2787B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  v22 = a2;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  v19 = a1;
  v20 = a6;
  v14(a6, AssociatedConformanceWitness);
  sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
  LOBYTE(a1) = sub_22F740DB0();
  v15 = *(v10 + 8);
  v15(v12, v9);
  if (a1)
  {
    v16 = 0;
  }

  else
  {
    v14(v20, AssociatedConformanceWitness);
    v17 = sub_22F740DB0();
    v15(v12, v9);
    v16 = v17 ^ 1;
  }

  return v16 & 1;
}

unint64_t sub_22F278A14()
{
  result = qword_27DAB2D00[0];
  if (!qword_27DAB2D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAB2D00);
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

uint64_t sub_22F278A7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F278A9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_22F278B24(__n128 a1)
{
  v2 = *(v1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(v2, AssociatedConformanceWitness);
}

uint64_t sub_22F278BCC(uint64_t a1, unint64_t isUniquelyReferenced_nonNull_native, int a3)
{
  LODWORD(v3) = a3;
  v510 = sub_22F73F690();
  v6 = *(v510 - 8);
  MEMORY[0x28223BE20](v510);
  v501 = &v459 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v480 = &v459 - v9;
  MEMORY[0x28223BE20](v10);
  v479 = &v459 - v11;
  MEMORY[0x28223BE20](v12);
  v490 = &v459 - v13;
  MEMORY[0x28223BE20](v14);
  v489 = &v459 - v15;
  MEMORY[0x28223BE20](v16);
  v471 = &v459 - v17;
  MEMORY[0x28223BE20](v18);
  v470 = &v459 - v19;
  MEMORY[0x28223BE20](v20);
  v477 = &v459 - v21;
  MEMORY[0x28223BE20](v22);
  v476 = &v459 - v23;
  MEMORY[0x28223BE20](v24);
  v511 = &v459 - v25;
  MEMORY[0x28223BE20](v26);
  v513 = &v459 - v27;
  v508 = sub_22F73F090();
  v484 = *(v508 - 8);
  MEMORY[0x28223BE20](v508);
  v469 = &v459 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v486 = (&v459 - v30);
  MEMORY[0x28223BE20](v31);
  v485 = &v459 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v459 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v459.n128_u64 - v37;
  MEMORY[0x28223BE20](v39);
  v491 = &v459 - v40;
  MEMORY[0x28223BE20](v41);
  v499 = &v459 - v42;
  MEMORY[0x28223BE20](v43);
  v494 = &v459 - v44;
  v482 = sub_22F740B90();
  v481 = *(v482 - 8);
  MEMORY[0x28223BE20](v482);
  v46 = &v459 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = swift_slowAlloc();
  *v487 = 0;
  v520 = v46;
  sub_22F740B80();
  swift_beginAccess();
  v519 = a1;
  v47 = *(a1 + 24);
  v48 = v47 >> 62;
  v517 = v47;
  if (!(v47 >> 62))
  {
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_305:
    v427 = sub_22F740B70();
    v428 = sub_22F7415D0();
    if (os_log_type_enabled(v427, v428))
    {
      v429 = swift_slowAlloc();
      *v429 = 0;
      _os_log_impl(&dword_22F0FC000, v427, v428, "No entities found in the container, returning...", v429, 2u);
      MEMORY[0x2319033A0](v429, -1, -1);
    }

    v38 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v481 + 8))(v520, v482);
    return v38;
  }

  while (2)
  {
    if (!sub_22F741A00())
    {
      goto LABEL_305;
    }

LABEL_3:
    v460 = v3;
    swift_bridgeObjectRetain_n();
    v49 = sub_22F740B70();
    v50 = sub_22F7415D0();
    v51 = os_log_type_enabled(v49, v50);
    v475 = v35;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      if (v48)
      {
        v35 = v517;
        v53 = sub_22F741A00();
      }

      else
      {
        v53 = *((v517 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v52 + 4) = v53;

      _os_log_impl(&dword_22F0FC000, v49, v50, "There are %ld potential entities.", v52, 0xCu);
      MEMORY[0x2319033A0](v52, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    v483 = sub_22F250878();
    v518 = *(isUniquelyReferenced_nonNull_native + 16);
    v54 = v518 / 2;
    if (v518 / 2 <= 1)
    {
      v54 = 1;
    }

    v474.n128_u64[0] = v54;
    v55 = MEMORY[0x277D84F90];
    v527 = MEMORY[0x277D84F90];
    v467 = sub_22F14E83C(MEMORY[0x277D84F90]);
    v526 = v467;
    v500 = sub_22F14E214(v55);
    if (v48)
    {
      v58 = v517;
      v59 = sub_22F741A00();
      v56 = v58;
      v57 = v59;
    }

    else
    {
      v56 = v517;
      v57 = *((v517 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v505 = isUniquelyReferenced_nonNull_native;
    v461 = v6;
    if (!v57)
    {
      v219 = 0;
      v218 = MEMORY[0x277D84F90];
      v38 = MEMORY[0x277D84F98];
LABEL_115:

      v3 = sub_22F740B70();
      LOBYTE(v220) = sub_22F7415D0();
      v221 = os_log_type_enabled(v3, v220);
      v488 = v218;
      if (v221)
      {
        v222 = swift_slowAlloc();
        *v222 = 134217984;
        if (!(v218 >> 62))
        {
          v223 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_118;
        }

        goto LABEL_316;
      }

      while (1)
      {
        if (*v487 == 1)
        {

          v38 = sub_22F14E740(MEMORY[0x277D84F90]);
          (*(v481 + 8))(v520, v482);

          goto LABEL_362;
        }

        v523 = sub_22F36C3E4(v225);
        sub_22F243D88(&v523, &v526, v226, v227);
        v85 = &v507;
        v478 = v219;
        if (v219)
        {
          goto LABEL_373;
        }

        v35 = v523;
        if (*v487)
        {

          v38 = sub_22F14E740(MEMORY[0x277D84F90]);
          (*(v481 + 8))(v520, v482);
          goto LABEL_361;
        }

        while (1)
        {
          v492 = sub_22F741A00();
          v524 = MEMORY[0x277D84FA0];
          v219 = sub_22F741A00();
          if (!v219)
          {
            goto LABEL_319;
          }

LABEL_128:
          v48 = 0;
          v516 = v35 & 0xC000000000000001;
          v509 = v35 + 32;
          v502 = v484 + 16;
          v504 = (v461 + 8);
          v486 = (v461 + 32);
          v501 = (v484 + 8);
          v228.n128_u64[0] = 136315138;
          v506 = v228;
          v228.n128_u64[0] = 136315394;
          v474 = v228;
          v228.n128_u64[0] = 136315906;
          v472 = v228;
          v512 = v35;
          v475 = v219;
LABEL_132:
          if (v516)
          {
            v6 = MEMORY[0x2319016F0](v48, v35);
            v229 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_295;
            }
          }

          else
          {
            if (v48 >= *(v35 + 16))
            {
              goto LABEL_296;
            }

            v6 = *(v509 + 8 * v48);

            v229 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_295;
            }
          }

          v514 = v229;
          v230 = v526;
          v231 = *(v526 + 16);
          v521 = v6;
          if (!v231)
          {
            goto LABEL_191;
          }

          v232 = *(v6 + 24);
          isUniquelyReferenced_nonNull_native = *(v6 + 32);

          v233 = sub_22F1229E8(v232, isUniquelyReferenced_nonNull_native);
          if ((v234 & 1) == 0)
          {
            break;
          }

          v485 = v232;
          v518 = v230;
          v235 = *(v230 + 56);
          v498.n128_u64[0] = *(v484 + 72);
          v497 = *(v484 + 16);
          v497(v494, v235 + v498.n128_u64[0] * v233, v508);
          v220 = v500;
          if (*(v500 + 16))
          {
            v493 = isUniquelyReferenced_nonNull_native;
            v236 = *(v6 + 24);
            v237 = *(v6 + 32);

            v3 = sub_22F1229E8(v236, v237);
            v239 = v238;
            isUniquelyReferenced_nonNull_native = v493;

            if (v239)
            {
              v240 = *(v220[7].isa + v3);
              v241 = v48 - 1;
              if (v48 < 1)
              {
                isUniquelyReferenced_nonNull_native = v511;
                v219 = v499;
                v35 = v512;
                goto LABEL_221;
              }

              isUniquelyReferenced_nonNull_native = v511;
              v35 = v512;
              while (1)
              {
                v515 = v241;
                if (v516)
                {
                  v242 = MEMORY[0x2319016F0]();
                }

                else
                {
                  if (v241 >= *(v35 + 16))
                  {
                    goto LABEL_301;
                  }

                  v242 = *(v509 + 8 * v241);
                }

                v243 = *(v242 + 24);
                v48 = *(v242 + 32);
                v3 = *(v518 + 16);

                if (!v3 || (v244 = sub_22F1229E8(v243, v48), (v245 & 1) == 0))
                {

                  v220 = sub_22F740B70();
                  v270 = sub_22F7415E0();

                  if (os_log_type_enabled(v220, v270))
                  {
                    v271 = swift_slowAlloc();
                    v3 = swift_slowAlloc();
                    v523 = v3;
                    *v271 = v506.n128_u32[0];
                    v272 = sub_22F145F20(v243, v48, &v523);
                    v48 = v242;
                    v273 = v38;
                    v274 = v272;

                    *(v271 + 4) = v274;
                    v38 = v273;
                    _os_log_impl(&dword_22F0FC000, v220, v270, "Unable to find lifespan for entity %s", v271, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v3);
                    MEMORY[0x2319033A0](v3, -1, -1);
                    MEMORY[0x2319033A0](v271, -1, -1);
                  }

                  else
                  {
                  }

                  v275 = *(v521 + 24);
                  v6 = *(v521 + 32);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v523 = v38;
                  LOBYTE(v220) = v38;
                  v276 = sub_22F1229E8(v275, v6);
                  v278 = v38;
                  v279 = *(v38 + 16);
                  v280 = (v277 & 1) == 0;
                  v153 = __OFADD__(v279, v280);
                  v281 = v279 + v280;
                  if (v153)
                  {
                    goto LABEL_299;
                  }

                  v282 = v277;
                  if (*(v278 + 24) >= v281)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v220 = &v523;
                      v3 = v276;
                      sub_22F134340();
                      v276 = v3;
                    }
                  }

                  else
                  {
                    sub_22F1259D0(v281, isUniquelyReferenced_nonNull_native);
                    LOBYTE(v220) = v523;
                    v276 = sub_22F1229E8(v275, v6);
                    if ((v282 & 1) != (v283 & 1))
                    {
                      goto LABEL_372;
                    }
                  }

                  isUniquelyReferenced_nonNull_native = v511;
                  if (v282)
                  {
                    v3 = v276;

                    v38 = v523;
                    *(*(v523 + 56) + v3) = 8;
                  }

                  else
                  {
                    v38 = v523;
                    *(v523 + 8 * (v276 >> 6) + 64) |= 1 << v276;
                    v284 = (*(v38 + 48) + 16 * v276);
                    *v284 = v275;
                    v284[1] = v6;
                    *(*(v38 + 56) + v276) = 8;

                    v285 = *(v38 + 16);
                    v153 = __OFADD__(v285, 1);
                    v286 = v285 + 1;
                    if (v153)
                    {
                      goto LABEL_303;
                    }

                    *(v38 + 16) = v286;
                  }

                  goto LABEL_142;
                }

                v495 = v243;
                v503 = v48;
                v496 = v242;
                v522 = v38;
                v246 = v491;
                v497(v491, *(v518 + 56) + v244 * v498.n128_u64[0], v508);
                v247 = v513;
                sub_22F73F030();
                v248 = v494;
                sub_22F73F060();
                sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
                v249 = v510;
                LOBYTE(v220) = v510;
                v250 = sub_22F740DB0();
                v251 = *v504;
                (*v504)(isUniquelyReferenced_nonNull_native, v249);
                v251(v247, v249);
                if ((v250 & 1) == 0)
                {
                  (*v501)(v246, v508);

LABEL_220:
                  isUniquelyReferenced_nonNull_native = v511;
                  v219 = v499;
                  v38 = v522;
                  v35 = v512;
                  v6 = v521;
                  goto LABEL_221;
                }

                sub_22F73F060();
                v252 = v479;
                sub_22F73F030();
                v253 = v480;
                sub_22F73F030();
                v254 = sub_22F740DB0();
                v255 = (v254 & 1) == 0;
                if (v254)
                {
                  v256 = v252;
                }

                else
                {
                  v256 = v253;
                }

                if (v255)
                {
                  v253 = v252;
                }

                v251(v256, v249);
                (*v486)(v490, v253, v249);
                sub_22F73F590();
                v258 = v257;
                LOBYTE(v220) = v248;
                sub_22F73F080();
                v3 = v505;
                v260 = v249;
                if (v259 * v505[4] >= v258)
                {

                  v251(v490, v249);
                  v251(v489, v249);
                  (*v501)(v491, v508);
                  goto LABEL_220;
                }

                v219 = v251;
                v38 = v522;
                v35 = v512;
                v48 = v503;
                v261 = v495;
                if (!*(v500 + 16) || (v262 = sub_22F1229E8(v495, v503), (v263 & 1) == 0))
                {

                  v220 = sub_22F740B70();
                  v287 = sub_22F7415E0();

                  if (os_log_type_enabled(v220, v287))
                  {
                    v3 = swift_slowAlloc();
                    v288 = swift_slowAlloc();
                    v523 = v288;
                    *v3 = v506.n128_u32[0];
                    v289 = sub_22F145F20(v261, v48, &v523);

                    *(v3 + 4) = v289;
                    v38 = v522;
                    _os_log_impl(&dword_22F0FC000, v220, v287, "Unable to find important location presence for entity %s", v3, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v288);
                    MEMORY[0x2319033A0](v288, -1, -1);
                    MEMORY[0x2319033A0](v3, -1, -1);
                  }

                  else
                  {
                  }

                  v290 = *(v521 + 24);
                  v6 = *(v521 + 32);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v523 = v38;
                  LOBYTE(v220) = v38;
                  v222 = sub_22F1229E8(v290, v6);
                  v292 = v38;
                  v293 = *(v38 + 16);
                  v294 = (v291 & 1) == 0;
                  v153 = __OFADD__(v293, v294);
                  v295 = v293 + v294;
                  if (v153)
                  {
                    goto LABEL_310;
                  }

                  v38 = v291;
                  if (*(v292 + 24) >= v295)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v300 = v222;
                      sub_22F134340();
                      v222 = v300;
                    }
                  }

                  else
                  {
                    sub_22F1259D0(v295, isUniquelyReferenced_nonNull_native);
                    v222 = sub_22F1229E8(v290, v6);
                    if ((v38 & 1) != (v296 & 1))
                    {
                      goto LABEL_372;
                    }
                  }

                  v3 = v510;
                  isUniquelyReferenced_nonNull_native = v511;
                  v220 = v523;
                  if (v38)
                  {
                    *(*(v523 + 56) + v222) = 9;

                    v38 = v220;
                  }

                  else
                  {
                    *(v523 + 8 * (v222 >> 6) + 64) |= 1 << v222;
                    v297 = (v220[6].isa + 16 * v222);
                    *v297 = v290;
                    v297[1] = v6;
                    *(v220[7].isa + v222) = 9;
                    isa = v220[2].isa;
                    v153 = __OFADD__(isa, 1);
                    v299 = (isa + 1);
                    if (v153)
                    {
                      goto LABEL_315;
                    }

                    v38 = v220;
                    v220[2].isa = v299;
                  }

                  LOBYTE(v220) = v504;
                  v251(v490, v3);
                  v251(v489, v3);
                  (*v501)(v491, v508);
LABEL_142:
                  v219 = v499;
                  v6 = v521;
                  v241 = v515;
                  if ((v515 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_221;
                  }

                  continue;
                }

                v264 = *(*(v500 + 56) + 8 * v262);
                v265 = v493;

                v220 = sub_22F740B70();
                v266 = sub_22F7415C0();

                if (os_log_type_enabled(v220, v266))
                {
                  v267 = swift_slowAlloc();
                  v268 = swift_slowAlloc();
                  v523 = v268;
                  *v267 = v474.n128_u32[0];
                  *(v267 + 4) = sub_22F145F20(v485, v265, &v523);
                  *(v267 + 12) = 2080;
                  *(v267 + 14) = sub_22F145F20(v261, v48, &v523);
                  _os_log_impl(&dword_22F0FC000, v220, v266, "Entity %s's lifespan has significant overlap with %s's lifespan!", v267, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x2319033A0](v268, -1, -1);
                  v269 = v267;
                  v260 = v510;
                  v3 = v505;
                  MEMORY[0x2319033A0](v269, -1, -1);
                }

                if (v240 < v264 * *(v3 + 40))
                {
                  break;
                }

                LODWORD(v3) = v504;
                (v219)(v490, v260);
                (v219)(v489, v260);
                (*v501)(v491, v508);
                v241 = v515 - 1;
                isUniquelyReferenced_nonNull_native = v511;
                v219 = v499;
                v6 = v521;
                if (((v515 - 1) & 0x8000000000000000) != 0)
                {
                  goto LABEL_221;
                }
              }

              v398 = v493;

              v399 = v485;
              sub_22F10BBDC(&v523, v485, v398);

              v220 = sub_22F740B70();
              v400 = sub_22F7415D0();

              v401 = os_log_type_enabled(v220, v400);
              v473 = v219;
              if (v401)
              {
                v402 = swift_slowAlloc();
                v403 = swift_slowAlloc();
                v523 = v403;
                *v402 = v472.n128_u32[0];
                *(v402 + 4) = sub_22F145F20(v399, v398, &v523);
                *(v402 + 12) = 2048;
                *(v402 + 14) = v240;
                *(v402 + 22) = 2080;
                v404 = sub_22F145F20(v261, v48, &v523);

                *(v402 + 24) = v404;
                *(v402 + 32) = 2048;
                *(v402 + 34) = v264;
                _os_log_impl(&dword_22F0FC000, v220, v400, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v402, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x2319033A0](v403, -1, -1);
                MEMORY[0x2319033A0](v402, -1, -1);
              }

              else
              {
              }

              v35 = v512;
              v6 = v521;
              v405 = *(v521 + 24);
              v406 = *(v521 + 32);

              v407 = swift_isUniquelyReferenced_nonNull_native();
              v523 = v38;
              sub_22F1302A0(6, v405, v406, v407);

              v408 = v510;
              LOBYTE(v220) = v504;
              v409 = v473;
              v473(v490, v510);
              v409(v489, v408);
              (*v501)(v491, v508);
              v38 = v523;
              isUniquelyReferenced_nonNull_native = v511;
              v219 = v499;
LABEL_221:
              v3 = v493;
              if (sub_22F15E910(v485, v493, v524))
              {
                (*v501)(v494, v508);

                v219 = v475;
LABEL_131:
                v48 = v514;
                if (v514 == v219)
                {
                  goto LABEL_319;
                }

                goto LABEL_132;
              }

              if (v514 >= v492)
              {
LABEL_268:

LABEL_269:
                v219 = v475;
LABEL_270:
                v65 = v508;
                if (*v487 != 1)
                {
                  (*v501)(v494, v508);
                  goto LABEL_202;
                }

LABEL_288:
                v426 = v65;

                v38 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v501)(v494, v426);
                (*(v481 + 8))(v520, v482);

                goto LABEL_362;
              }

              v222 = v514;
              while (2)
              {
                v503 = v222;
                if (v516)
                {
                  v333 = MEMORY[0x2319016F0]();
                }

                else
                {
                  if ((v222 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_312;
                  }

                  if (v222 >= *(v35 + 16))
                  {
                    goto LABEL_313;
                  }
                }

                v334 = *(v333 + 24);
                v335 = *(v333 + 32);
                v515 = v333;
                v3 = *(v518 + 16);

                if (v3)
                {
                  v336 = sub_22F1229E8(v334, v335);
                  if (v337)
                  {
                    v495 = v334;
                    v496 = v335;
                    v338 = v513;
                    v497(v219, *(v518 + 56) + v336 * v498.n128_u64[0], v508);
                    sub_22F73F030();
                    sub_22F73F060();
                    v3 = isUniquelyReferenced_nonNull_native;
                    isUniquelyReferenced_nonNull_native = sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
                    v339 = v510;
                    v340 = sub_22F740DB0();
                    v341 = *v504;
                    (*v504)(v3, v339);
                    v341(v338, v339);
                    if ((v340 & 1) == 0)
                    {
                      (*v501)(v219, v508);

LABEL_274:
                      v35 = v512;
                      v219 = v475;
                      v6 = v521;
                      goto LABEL_270;
                    }

                    v522 = v38;
                    sub_22F73F060();
                    v342 = v470;
                    sub_22F73F030();
                    v343 = v471;
                    sub_22F73F030();
                    v344 = sub_22F740DB0();
                    v345 = (v344 & 1) == 0;
                    if (v344)
                    {
                      v346 = v342;
                    }

                    else
                    {
                      v346 = v343;
                    }

                    if (v345)
                    {
                      v347 = v342;
                    }

                    else
                    {
                      v347 = v343;
                    }

                    v341(v346, v339);
                    (*v486)(v477, v347, v339);
                    sub_22F73F590();
                    v349 = v348;
                    sub_22F73F080();
                    v351 = v341;
                    if (v350 * v505[4] >= v349)
                    {

                      LODWORD(v3) = v504;
                      v341(v477, v339);
                      v341(v476, v339);
                      (*v501)(v499, v508);
                      v38 = v522;
                      goto LABEL_274;
                    }

                    v38 = v522;
                    v352 = v496;
                    v353 = v495;
                    if (*(v500 + 16))
                    {
                      v354 = sub_22F1229E8(v495, v496);
                      if (v355)
                      {
                        v473 = v341;
                        v356 = *(*(v500 + 56) + 8 * v354);
                        v357 = v493;

                        v358 = sub_22F740B70();
                        v359 = sub_22F7415C0();

                        v360 = os_log_type_enabled(v358, v359);
                        v219 = v499;
                        if (v360)
                        {
                          v361 = swift_slowAlloc();
                          v362 = v219;
                          v363 = v352;
                          v364 = swift_slowAlloc();
                          v523 = v364;
                          *v361 = v474.n128_u32[0];
                          *(v361 + 4) = sub_22F145F20(v485, v357, &v523);
                          *(v361 + 12) = 2080;
                          v365 = v363;
                          v219 = v362;
                          *(v361 + 14) = sub_22F145F20(v495, v365, &v523);
                          _os_log_impl(&dword_22F0FC000, v358, v359, "Entity %s's lifespan has significant overlap with %s's lifespan!", v361, 0x16u);
                          swift_arrayDestroy();
                          MEMORY[0x2319033A0](v364, -1, -1);
                          MEMORY[0x2319033A0](v361, -1, -1);
                        }

                        v220 = v510;
                        v35 = v512;
                        v6 = v521;
                        isUniquelyReferenced_nonNull_native = v511;
                        if (v240 < v356 * v505[5])
                        {
                          v410 = v493;

                          v411 = v485;
                          sub_22F10BBDC(&v523, v485, v410);

                          v412 = v496;

                          v413 = sub_22F740B70();
                          v414 = sub_22F7415D0();

                          if (os_log_type_enabled(v413, v414))
                          {
                            v415 = v412;
                            v416 = swift_slowAlloc();
                            v417 = swift_slowAlloc();
                            v523 = v417;
                            *v416 = v472.n128_u32[0];
                            v418 = sub_22F145F20(v411, v410, &v523);

                            *(v416 + 4) = v418;
                            *(v416 + 12) = 2048;
                            *(v416 + 14) = v240;
                            *(v416 + 22) = 2080;
                            v419 = sub_22F145F20(v495, v415, &v523);
                            v219 = v499;

                            *(v416 + 24) = v419;
                            *(v416 + 32) = 2048;
                            *(v416 + 34) = v356;
                            _os_log_impl(&dword_22F0FC000, v413, v414, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v416, 0x2Au);
                            swift_arrayDestroy();
                            MEMORY[0x2319033A0](v417, -1, -1);
                            MEMORY[0x2319033A0](v416, -1, -1);
                          }

                          else
                          {
                          }

                          v420 = *(v6 + 24);
                          v421 = *(v6 + 32);

                          v422 = swift_isUniquelyReferenced_nonNull_native();
                          v523 = v38;
                          sub_22F1302A0(6, v420, v421, v422);

                          v423 = v510;
                          LODWORD(v3) = v504;
                          isUniquelyReferenced_nonNull_native = v473;
                          v473(v477, v510);
                          (isUniquelyReferenced_nonNull_native)(v476, v423);
                          (*v501)(v219, v508);
                          v38 = v523;
                          v35 = v512;
                          goto LABEL_269;
                        }

                        v3 = v504;
                        v366 = v473;
                        v473(v477, v220);
                        v366(v476, v220);
                        (*v501)(v219, v508);
                        v367 = &v525;
                        v222 = v503 + 1;
                        if (__OFADD__(v503, 1))
                        {
                          goto LABEL_369;
                        }

                        goto LABEL_267;
                      }
                    }

                    v388 = sub_22F740B70();
                    v389 = sub_22F7415E0();

                    v390 = os_log_type_enabled(v388, v389);
                    v219 = v499;
                    v6 = v521;
                    if (v390)
                    {
                      v391 = swift_slowAlloc();
                      v392 = v352;
                      v393 = swift_slowAlloc();
                      v523 = v393;
                      *v391 = v506.n128_u32[0];
                      v394 = sub_22F145F20(v353, v392, &v523);

                      *(v391 + 4) = v394;
                      v38 = v522;
                      _os_log_impl(&dword_22F0FC000, v388, v389, "Unable to find important location presence for entity %s", v391, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v393);
                      MEMORY[0x2319033A0](v393, -1, -1);
                      MEMORY[0x2319033A0](v391, -1, -1);
                    }

                    else
                    {
                    }

                    v395 = *(v6 + 24);
                    v396 = *(v6 + 32);

                    v397 = swift_isUniquelyReferenced_nonNull_native();
                    v523 = v38;
                    sub_22F1302A0(9, v395, v396, v397);

                    v220 = v510;
                    v3 = v504;
                    v351(v477, v510);
                    v351(v476, v220);
                    (*v501)(v219, v508);
                    v38 = v523;
                    isUniquelyReferenced_nonNull_native = v511;
                    v35 = v512;
LABEL_266:
                    v222 = v503;
LABEL_267:
                    if (v222 >= v492)
                    {
                      goto LABEL_268;
                    }

                    continue;
                  }
                }

                break;
              }

              v220 = sub_22F740B70();
              v368 = sub_22F7415E0();

              if (os_log_type_enabled(v220, v368))
              {
                v369 = v334;
                v370 = v219;
                v371 = v335;
                v372 = swift_slowAlloc();
                v373 = swift_slowAlloc();
                v523 = v373;
                *v372 = v506.n128_u32[0];
                v374 = sub_22F145F20(v369, v371, &v523);
                v3 = v38;
                v375 = v374;
                v219 = v370;

                *(v372 + 4) = v375;
                v38 = v3;
                _os_log_impl(&dword_22F0FC000, v220, v368, "Unable to find lifespan for entity %s", v372, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v373);
                v376 = v373;
                v35 = v512;
                MEMORY[0x2319033A0](v376, -1, -1);
                MEMORY[0x2319033A0](v372, -1, -1);
              }

              else
              {
              }

              v377 = *(v6 + 24);
              v6 = *(v6 + 32);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v523 = v38;
              LOBYTE(v220) = v38;
              v222 = sub_22F1229E8(v377, v6);
              v379 = v38;
              v380 = *(v38 + 16);
              v381 = (v378 & 1) == 0;
              v153 = __OFADD__(v380, v381);
              v382 = v380 + v381;
              if (v153)
              {
                goto LABEL_309;
              }

              v383 = v378;
              if (*(v379 + 24) >= v382)
              {
                LOBYTE(v220) = v515;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v3 = v222;
                  sub_22F134340();
                  LOBYTE(v220) = v515;
                  v222 = v3;
                }

                isUniquelyReferenced_nonNull_native = v511;
                if ((v383 & 1) == 0)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                sub_22F1259D0(v382, isUniquelyReferenced_nonNull_native);
                v222 = sub_22F1229E8(v377, v6);
                if ((v383 & 1) != (v384 & 1))
                {
                  goto LABEL_372;
                }

                isUniquelyReferenced_nonNull_native = v511;
                LOBYTE(v220) = v515;
                if ((v383 & 1) == 0)
                {
LABEL_255:
                  v38 = v523;
                  *(v523 + 8 * (v222 >> 6) + 64) |= 1 << v222;
                  v385 = (*(v38 + 48) + 16 * v222);
                  *v385 = v377;
                  v385[1] = v6;
                  *(*(v38 + 56) + v222) = 8;

                  v386 = *(v38 + 16);
                  v153 = __OFADD__(v386, 1);
                  v387 = v386 + 1;
                  if (v153)
                  {
                    goto LABEL_314;
                  }

                  *(v38 + 16) = v387;
                  goto LABEL_261;
                }
              }

              v3 = v222;

              v38 = v523;
              *(*(v523 + 56) + v3) = 8;

LABEL_261:
              v6 = v521;
              goto LABEL_266;
            }
          }

          v317 = sub_22F740B70();
          v318 = sub_22F7415E0();
          if (os_log_type_enabled(v317, v318))
          {
            v319 = swift_slowAlloc();
            isUniquelyReferenced_nonNull_native = swift_slowAlloc();
            v523 = isUniquelyReferenced_nonNull_native;
            *v319 = v506.n128_u32[0];
            v320 = *(v6 + 24);
            v321 = *(v521 + 32);

            v322 = sub_22F145F20(v320, v321, &v523);
            v6 = v521;

            *(v319 + 4) = v322;
            _os_log_impl(&dword_22F0FC000, v317, v318, "Unable to find important location presence for entity %s", v319, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(isUniquelyReferenced_nonNull_native);
            MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
            MEMORY[0x2319033A0](v319, -1, -1);
          }

          else
          {
          }

          v323 = *(v6 + 24);
          v3 = *(v6 + 32);

          v324 = swift_isUniquelyReferenced_nonNull_native();
          v523 = v38;
          LOBYTE(v220) = v38;
          v222 = sub_22F1229E8(v323, v3);
          v326 = *(v38 + 16);
          v327 = (v325 & 1) == 0;
          v153 = __OFADD__(v326, v327);
          v328 = v326 + v327;
          if (v153)
          {
            goto LABEL_311;
          }

          isUniquelyReferenced_nonNull_native = v325;
          if (*(v38 + 24) >= v328)
          {
            if ((v324 & 1) == 0)
            {
              v425 = v222;
              sub_22F134340();
              v222 = v425;
            }
          }

          else
          {
            sub_22F1259D0(v328, v324);
            v222 = sub_22F1229E8(v323, v3);
            if ((isUniquelyReferenced_nonNull_native & 1) != (v329 & 1))
            {
              goto LABEL_372;
            }
          }

          v35 = v512;
          v38 = v523;
          if (isUniquelyReferenced_nonNull_native)
          {
            *(*(v523 + 56) + v222) = 9;

LABEL_130:
            (*v501)(v494, v508);
            goto LABEL_131;
          }

          *(v523 + 8 * (v222 >> 6) + 64) |= 1 << v222;
          v330 = (*(v38 + 48) + 16 * v222);
          *v330 = v323;
          v330[1] = v3;
          *(*(v38 + 56) + v222) = 9;
          v331 = *(v38 + 16);
          v153 = __OFADD__(v331, 1);
          v332 = v331 + 1;
          if (!v153)
          {
            *(v38 + 16) = v332;

            goto LABEL_130;
          }

          __break(1u);
        }

LABEL_191:

        v301 = sub_22F740B70();
        v302 = sub_22F7415E0();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          v523 = isUniquelyReferenced_nonNull_native;
          *v303 = v506.n128_u32[0];
          v304 = *(v6 + 24);
          v305 = *(v521 + 32);

          v306 = sub_22F145F20(v304, v305, &v523);
          v6 = v521;

          *(v303 + 4) = v306;
          _os_log_impl(&dword_22F0FC000, v301, v302, "Unable to find lifespan for entity %s", v303, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(isUniquelyReferenced_nonNull_native);
          MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
          MEMORY[0x2319033A0](v303, -1, -1);
        }

        else
        {
        }

        v48 = *(v6 + 24);
        v3 = *(v6 + 32);

        v35 = swift_isUniquelyReferenced_nonNull_native();
        v523 = v38;
        LOBYTE(v220) = v38;
        v307 = sub_22F1229E8(v48, v3);
        v309 = *(v38 + 16);
        v310 = (v308 & 1) == 0;
        v153 = __OFADD__(v309, v310);
        v311 = v309 + v310;
        if (v153)
        {
          goto LABEL_300;
        }

        isUniquelyReferenced_nonNull_native = v308;
        if (*(v38 + 24) >= v311)
        {
          if ((v35 & 1) == 0)
          {
            v220 = &v523;
            v424 = v307;
            sub_22F134340();
            v307 = v424;
          }
        }

        else
        {
          sub_22F1259D0(v311, v35);
          LOBYTE(v220) = v523;
          v307 = sub_22F1229E8(v48, v3);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v312 & 1))
          {
            goto LABEL_372;
          }
        }

        v35 = v512;
        if (isUniquelyReferenced_nonNull_native)
        {
          v313 = v307;

          v38 = v523;
          *(*(v523 + 56) + v313) = 8;
LABEL_202:

          goto LABEL_131;
        }

        v38 = v523;
        *(v523 + 8 * (v307 >> 6) + 64) |= 1 << v307;
        v314 = (*(v38 + 48) + 16 * v307);
        *v314 = v48;
        v314[1] = v3;
        *(*(v38 + 56) + v307) = 8;

        v315 = *(v38 + 16);
        v153 = __OFADD__(v315, 1);
        v316 = v315 + 1;
        if (!v153)
        {
          *(v38 + 16) = v316;
          goto LABEL_131;
        }

        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        v430 = v222;
        v223 = sub_22F741A00();
        v222 = v430;
LABEL_118:
        *(v222 + 4) = v223;
        v224 = v222;

        _os_log_impl(&dword_22F0FC000, v3, v220, "After filtering potential entities, there are %ld entities remaining.", v224, 0xCu);
        MEMORY[0x2319033A0](v224, -1, -1);
      }

      v219 = *(v523 + 16);
      v524 = MEMORY[0x277D84FA0];
      v492 = v219;
      if (v219)
      {
        goto LABEL_128;
      }

LABEL_319:

      v219 = sub_22F250860(v488, &v524);

      if (*v487)
      {

        v38 = sub_22F14E740(MEMORY[0x277D84F90]);
        (*(v481 + 8))(v520, v482);
LABEL_360:

LABEL_361:

LABEL_362:

        return v38;
      }

      *swift_slowAlloc() = 0;
      v431 = v219;
      v367 = (v219 & 0xFFFFFFFFFFFFFF8);
      v351 = (v219 >> 62);
      if (v219 >> 62)
      {
        goto LABEL_370;
      }

      v518 = v219 & 0xFFFFFFFFFFFFFF8;
      v219 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_323:
      v522 = v431 & 0xC000000000000001;
      v521 = v431;
      if (v219)
      {
        v432 = 0;
        v433 = (v519 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode);
        do
        {
          if (v522)
          {
            v434 = MEMORY[0x2319016F0](v432, v431);
            v435 = v432 + 1;
            if (__OFADD__(v432, 1))
            {
LABEL_332:
              __break(1u);
              break;
            }
          }

          else
          {
            v367 = *(v518 + 16);
            if (v432 >= v367)
            {
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              v518 = v367;
              sub_22F741A00();
              v458 = sub_22F741A00();
              v431 = v219;
              v219 = v458;
              goto LABEL_323;
            }

            v434 = *(v431 + 8 * v432 + 32);

            v435 = v432 + 1;
            if (__OFADD__(v432, 1))
            {
              goto LABEL_332;
            }
          }

          v436 = v38;
          v437 = *v433;
          v438 = *(v434 + 16);
          v437();
          v38 = v436;

          v431 = v521;
          ++v432;
        }

        while (v435 != v219);
      }

      if (v351)
      {
        v439 = v431;
        v440 = sub_22F741A00();
        v431 = v439;
        v351 = v440;
        if (!v440)
        {
LABEL_357:

          v456 = v520;
          if (v460)
          {
            sub_22F242910(v38);
          }

          (*(v481 + 8))(v456, v482);
          goto LABEL_360;
        }
      }

      else
      {
        v351 = *(v518 + 16);
        if (!v351)
        {
          goto LABEL_357;
        }
      }

      v441 = 0;
      while (1)
      {
        if (v522)
        {
          v442 = MEMORY[0x2319016F0](v441, v431);
          v443 = (v441 + 1);
          if (__OFADD__(v441, 1))
          {
            goto LABEL_365;
          }
        }

        else
        {
          v367 = *(v518 + 16);
          if (v441 >= v367)
          {
            goto LABEL_368;
          }

          v442 = *(v431 + 8 * v441 + 32);

          v443 = (v441 + 1);
          if (__OFADD__(v441, 1))
          {
            goto LABEL_365;
          }
        }

        v445 = *(v442 + 24);
        v444 = *(v442 + 32);

        v219 = swift_isUniquelyReferenced_nonNull_native();
        v523 = v38;
        v447 = sub_22F1229E8(v445, v444);
        v448 = v38;
        v367 = *(v38 + 16);
        v449 = (v446 & 1) == 0;
        v450 = &v367[v449];
        if (__OFADD__(v367, v449))
        {
          goto LABEL_366;
        }

        v451 = v446;
        if (*(v448 + 24) >= v450)
        {

          if (v219)
          {
            if (v451)
            {
              goto LABEL_338;
            }
          }

          else
          {
            sub_22F134340();
            if (v451)
            {
              goto LABEL_338;
            }
          }
        }

        else
        {
          sub_22F1259D0(v450, v219);
          v452 = sub_22F1229E8(v445, v444);
          if ((v451 & 1) != (v453 & 1))
          {
            goto LABEL_372;
          }

          v447 = v452;

          if (v451)
          {
LABEL_338:

            v38 = v523;
            *(*(v523 + 56) + v447) = 0;
            goto LABEL_339;
          }
        }

        v38 = v523;
        *(v523 + 8 * (v447 >> 6) + 64) |= 1 << v447;
        v454 = (*(v38 + 48) + 16 * v447);
        *v454 = v445;
        v454[1] = v444;
        *(*(v38 + 56) + v447) = 0;
        v455 = *(v38 + 16);
        v153 = __OFADD__(v455, 1);
        v367 = (v455 + 1);
        if (v153)
        {
          goto LABEL_367;
        }

        *(v38 + 16) = v367;
LABEL_339:
        ++v441;
        v431 = v521;
        if (v443 == v351)
        {
          goto LABEL_357;
        }
      }
    }

    v497 = v38;
    v60 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
    v515 = v56 & 0xC000000000000001;

    LODWORD(v3) = v519;
    swift_beginAccess();
    v496 = v60;
    swift_beginAccess();
    v61 = v517;
    isUniquelyReferenced_nonNull_native = 0;
    v516 = 0;
    v502 = v517 & 0xFFFFFFFFFFFFFF8;
    v495 = (v6 + 16);
    v504 = (v6 + 8);
    v473 = (v484 + 16);
    v492 = v484 + 8;
    v38 = MEMORY[0x277D84F98];
    v62.n128_u64[0] = 134218498;
    v498 = v62;
    v62.n128_u64[0] = 136315138;
    v472 = v62;
    v62.n128_u64[0] = 134219010;
    v462 = v62;
    v62.n128_u64[0] = 136315394;
    v459 = v62;
    v488 = MEMORY[0x277D84F90];
    v514 = v57;
    while (1)
    {
      if (v515)
      {
        v48 = MEMORY[0x2319016F0](isUniquelyReferenced_nonNull_native, v61);
        v66 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native >= *(v502 + 16))
        {
          goto LABEL_290;
        }

        v48 = *(v61 + 8 * isUniquelyReferenced_nonNull_native + 32);

        v66 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
LABEL_287:
          __break(1u);
          goto LABEL_288;
        }
      }

      v521 = v66;
      v67 = *(v519 + 32);
      v68 = *(v67 + 16);
      v522 = v38;
      if (v68)
      {
        break;
      }

LABEL_37:
      v38 = MEMORY[0x277D84F90];
      v75 = MEMORY[0x277D84F90] >> 62;
      if (MEMORY[0x277D84F90] >> 62)
      {
        goto LABEL_74;
      }

LABEL_38:
      v76 = v38 & 0xFFFFFFFFFFFFFF8;
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < v518)
      {
        goto LABEL_39;
      }

LABEL_43:
      v523 = v76;
      v84 = v516;
      sub_22F25089C(&v523);
      v85 = &v528;
      v516 = v84;
      if (v84)
      {
        goto LABEL_373;
      }

      v86 = v523;
      if ((v523 & 0x8000000000000000) != 0 || (v523 & 0x4000000000000000) != 0)
      {
        v194 = v523;
        v3 = sub_22F741A00();
        v86 = v194;
        if (!v3)
        {
LABEL_92:

          v195 = sub_22F740B70();
          v196 = sub_22F7415E0();
          if (os_log_type_enabled(v195, v196))
          {
            v197 = swift_slowAlloc();
            v6 = swift_slowAlloc();
            v523 = v6;
            *v197 = v472.n128_u32[0];
            v198 = *(v48 + 24);
            v199 = *(v48 + 32);

            v200 = sub_22F145F20(v198, v199, &v523);

            *(v197 + 4) = v200;
            _os_log_impl(&dword_22F0FC000, v195, v196, "Unable to find first moment for entity with uuid %s", v197, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v6);
            MEMORY[0x2319033A0](v6, -1, -1);
            MEMORY[0x2319033A0](v197, -1, -1);
          }

          else
          {
          }

          v201 = v522;
          v35 = *(v48 + 24);
          v3 = *(v48 + 32);

          v202 = swift_isUniquelyReferenced_nonNull_native();
          v523 = v201;
          v203 = sub_22F1229E8(v35, v3);
          v205 = *(v201 + 16);
          v206 = (v204 & 1) == 0;
          v153 = __OFADD__(v205, v206);
          v207 = v205 + v206;
          if (v153)
          {
            goto LABEL_298;
          }

          v6 = v204;
          if (*(v201 + 24) < v207)
          {
            sub_22F1259D0(v207, v202);
            v203 = sub_22F1229E8(v35, v3);
            if ((v6 & 1) != (v208 & 1))
            {
              goto LABEL_372;
            }

            goto LABEL_100;
          }

          if (v202)
          {
LABEL_100:
            if ((v6 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v215 = v203;
            sub_22F134340();
            v203 = v215;
            if ((v6 & 1) == 0)
            {
LABEL_111:
              v38 = v523;
              *(v523 + 8 * (v203 >> 6) + 64) |= 1 << v203;
              v216 = (*(v38 + 48) + 16 * v203);
              *v216 = v35;
              v216[1] = v3;
              *(*(v38 + 56) + v203) = 3;

              v217 = *(v38 + 16);
              v153 = __OFADD__(v217, 1);
              v214 = v217 + 1;
              if (v153)
              {
                goto LABEL_302;
              }

              goto LABEL_112;
            }
          }

          v209 = v203;

          v38 = v523;
          *(*(v523 + 56) + v209) = 3;
LABEL_102:

          goto LABEL_19;
        }
      }

      else
      {
        v3 = *(v523 + 16);
        if (!v3)
        {
          goto LABEL_92;
        }
      }

      v506.n128_u64[0] = isUniquelyReferenced_nonNull_native;
      v509 = v48;
      if ((v86 & 0xC000000000000001) != 0)
      {
        v210 = v86;
        v512 = MEMORY[0x2319016F0](0);
        if (__OFSUB__(v3, 1))
        {
          goto LABEL_371;
        }

        v89 = MEMORY[0x2319016F0](v3 - 1, v210);
      }

      else
      {
        v87 = *(v86 + 16);
        if (!v87)
        {
          goto LABEL_291;
        }

        v88 = v3 - 1;
        if (__OFSUB__(v3, 1))
        {
          goto LABEL_292;
        }

        if (v88 >= v87)
        {
          goto LABEL_293;
        }

        v89 = *(v86 + 32 + 8 * v88);
        v512 = *(v86 + 32);
      }

      v35 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
      v90 = [*(v89 + 16) universalStartDate];
      v91 = v513;
      sub_22F73F640();

      v92 = v501;
      v93 = v510;
      (*v495)(v501, v519 + v496, v510);
      v94 = v505;
      v95 = *v505;
      v96 = v511;
      sub_22F73F5E0();
      v97 = *v504;
      (*v504)(v92, v93);
      LOBYTE(v92) = sub_22F73F5D0();
      v97(v96, v93);
      v503 = v97;
      v97(v91, v93);
      if (v92)
      {

        swift_retain_n();
        v48 = v509;

        v98 = sub_22F740B70();
        v99 = sub_22F7415D0();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v523 = v35;
          *v100 = v498.n128_u32[0];
          *(v100 + 4) = v95 / 86400.0;
          *(v100 + 12) = 2080;
          v101 = *(v48 + 24);
          v102 = *(v48 + 32);

          v103 = sub_22F145F20(v101, v102, &v523);

          *(v100 + 14) = v103;
          *(v100 + 22) = 2080;
          v104 = [*(v89 + 16) universalStartDate];
          v105 = v513;
          sub_22F73F640();

          sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
          v106 = v510;
          v107 = sub_22F742010();
          v109 = v108;

          v503(v105, v106);
          v110 = sub_22F145F20(v107, v109, &v523);

          *(v100 + 24) = v110;
          _os_log_impl(&dword_22F0FC000, v98, v99, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v100, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v35, -1, -1);
          MEMORY[0x2319033A0](v100, -1, -1);
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = v506.n128_u64[0];
        v3 = *(v48 + 24);
        v6 = *(v48 + 32);

        v63 = v522;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v523 = v63;
        sub_22F1302A0(1, v3, v6, v64);
      }

      else
      {
        v111 = [*(v512 + 16) universalStartDate];
        sub_22F73F640();

        v493 = v89;
        v112 = [*(v89 + 16) universalStartDate];
        sub_22F73F640();

        v113 = v497;
        sub_22F73F040();
        sub_22F73F080();
        v114 = v94[1];
        v48 = v509;
        if (v115 >= v114)
        {
          v157 = sub_22F250878();

          sub_22F241D04(v483, v157, v474.n128_i64[0], v520);
          v159 = v158;

          isUniquelyReferenced_nonNull_native = v506.n128_u64[0];
          if (v159 <= 1.0)
          {
            v172 = v505[3];
            v38 = v522;
            if (v159 >= v172)
            {
              v184 = *(v48 + 24);
              v185 = *(v48 + 32);
              v186 = v469;
              (*v473)(v469, v497, v508);

              v187 = v526;
              v188 = swift_isUniquelyReferenced_nonNull_native();
              v523 = v187;
              sub_22F130088(v186, v184, v185, v188);

              v467 = v523;
              v526 = v523;
              v189 = *(v48 + 24);
              v6 = *(v48 + 32);

              v190 = v500;
              v191 = swift_isUniquelyReferenced_nonNull_native();
              v523 = v190;
              sub_22F12FF10(v189, v6, v191, v159);

              v500 = v523;

              MEMORY[0x231900D00](v192);
              if (*((v527 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v527 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_22F7411C0();
              }

              sub_22F741220();
              v488 = v527;
              LODWORD(v3) = v493;
              if (*v487 == 1)
              {

                swift_bridgeObjectRelease_n();

                v38 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v492)(v497, v508);
                (*(v481 + 8))(v520, v482);

                return v38;
              }

              (*v492)(v497, v508);

              goto LABEL_102;
            }

            v173 = sub_22F740B70();
            v174 = sub_22F7415D0();
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              v523 = v176;
              *v175 = v498.n128_u32[0];
              *(v175 + 4) = v172;
              *(v175 + 12) = 2080;
              v177 = v38;
              v178 = *(v48 + 24);
              v179 = *(v48 + 32);

              v180 = sub_22F145F20(v178, v179, &v523);
              v38 = v177;

              *(v175 + 14) = v180;
              *(v175 + 22) = 2048;
              *(v175 + 24) = v159;
              _os_log_impl(&dword_22F0FC000, v173, v174, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v175, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v176);
              MEMORY[0x2319033A0](v176, -1, -1);
              MEMORY[0x2319033A0](v175, -1, -1);
            }

            else
            {
            }

            v3 = *(v48 + 24);
            v6 = *(v48 + 32);

            v193 = swift_isUniquelyReferenced_nonNull_native();
            v523 = v38;
            sub_22F1302A0(5, v3, v6, v193);

            (*v492)(v497, v508);
          }

          else
          {

            v160 = sub_22F740B70();
            v161 = sub_22F7415E0();
            if (os_log_type_enabled(v160, v161))
            {
              v162 = swift_slowAlloc();
              v163 = swift_slowAlloc();
              v523 = v163;
              *v162 = v459.n128_u32[0];
              v164 = *(v48 + 24);
              v165 = *(v48 + 32);

              v166 = sub_22F145F20(v164, v165, &v523);

              *(v162 + 4) = v166;
              *(v162 + 12) = 2048;
              *(v162 + 14) = v159;
              _os_log_impl(&dword_22F0FC000, v160, v161, "Entity %s has invalid location presence %f!", v162, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v163);
              MEMORY[0x2319033A0](v163, -1, -1);
              MEMORY[0x2319033A0](v162, -1, -1);
            }

            else
            {
            }

            v181 = v522;
            v182 = v497;
            v3 = *(v48 + 24);
            v6 = *(v48 + 32);

            v183 = swift_isUniquelyReferenced_nonNull_native();
            v523 = v181;
            sub_22F1302A0(7, v3, v6, v183);

            (*v492)(v182, v508);
          }
        }

        else
        {

          v116 = *v473;
          v117 = v475;
          v118 = v508;
          (*v473)();
          v119 = v485;
          v116(v485, v113, v118);
          v120 = v486;
          v116(v486, v113, v118);

          v121 = sub_22F740B70();
          v122 = sub_22F7415D0();

          v123 = os_log_type_enabled(v121, v122);
          v124 = v492;
          v478 = v492 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          isUniquelyReferenced_nonNull_native = v506.n128_u64[0];
          if (v123)
          {
            v125 = swift_slowAlloc();
            v465 = v121;
            v126 = v125;
            v466 = swift_slowAlloc();
            v523 = v466;
            *v126 = v462.n128_u32[0];
            *(v126 + 4) = v114 / 86400.0;
            *(v126 + 12) = 2080;
            v127 = *(v48 + 24);
            v128 = *(v48 + 32);

            v129 = sub_22F145F20(v127, v128, &v523);

            *(v126 + 14) = v129;
            *(v126 + 22) = 2080;
            v464 = v122;
            v130 = v513;
            v131 = v117;
            sub_22F73F060();
            v463 = sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
            v132 = v510;
            v133 = sub_22F742010();
            v135 = v134;
            v503(v130, v132);
            v35 = *v492;
            (*v492)(v131, v118);
            v136 = sub_22F145F20(v133, v135, &v523);

            *(v126 + 24) = v136;
            *(v126 + 32) = 2080;
            v137 = v485;
            sub_22F73F030();
            v138 = sub_22F742010();
            v140 = v139;
            v503(v130, v132);
            v48 = v509;
            (v35)(v137, v118);
            v141 = sub_22F145F20(v138, v140, &v523);

            *(v126 + 34) = v141;
            *(v126 + 42) = 2048;
            v142 = v486;
            sub_22F73F080();
            v144 = v143;
            (v35)(v142, v118);
            *(v126 + 44) = v144 / 86400.0;
            v145 = v465;
            _os_log_impl(&dword_22F0FC000, v465, v464, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v126, 0x34u);
            v146 = v466;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v146, -1, -1);
            MEMORY[0x2319033A0](v126, -1, -1);
          }

          else
          {

            v35 = *v124;
            (*v124)(v120, v118);
            (v35)(v119, v118);
            (v35)(v117, v118);
          }

          v3 = *(v48 + 24);
          v6 = *(v48 + 32);

          v170 = v522;
          v171 = swift_isUniquelyReferenced_nonNull_native();
          v523 = v170;
          sub_22F1302A0(2, v3, v6, v171);

          (v35)(v497, v118);
        }
      }

      v38 = v523;
LABEL_19:
      v61 = v517;
      ++isUniquelyReferenced_nonNull_native;
      if (v521 == v514)
      {

        v218 = v488;
        v219 = v516;
        goto LABEL_115;
      }
    }

    v69 = *(v48 + 24);
    v35 = *(v48 + 32);

    v70 = sub_22F1229E8(v69, v35);
    v6 = v71;

    if ((v6 & 1) == 0)
    {
      goto LABEL_36;
    }

    v3 = *(*(v67 + 56) + 8 * v70);

    if ((v3 & 0xC000000000000001) != 0)
    {
      v72 = sub_22F741A00();
      if (v72)
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }

    v72 = *(v3 + 16);
    if (!v72)
    {
LABEL_36:

      goto LABEL_37;
    }

LABEL_30:
    if (v72 < 1)
    {
      v38 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v38 = swift_allocObject();
      v73 = _swift_stdlib_malloc_size(v38);
      v74 = v73 - 32;
      if (v73 < 32)
      {
        v74 = v73 - 25;
      }

      *(v38 + 16) = v72;
      *(v38 + 24) = (2 * (v74 >> 3)) | 1;
    }

    v35 = sub_22F11A590(&v523, (v38 + 32), v72, v3);
    sub_22F0FF590(v523);
    if (v35 != v72)
    {
      goto LABEL_297;
    }

    v75 = v38 >> 62;
    if (!(v38 >> 62))
    {
      goto LABEL_38;
    }

LABEL_74:
    if (sub_22F741A00() < v518)
    {
LABEL_39:

      v77 = sub_22F740B70();
      v78 = sub_22F7415D0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v523 = v6;
        *v79 = v498.n128_u32[0];
        *(v79 + 4) = v518;
        *(v79 + 12) = 2080;
        v81 = *(v48 + 24);
        v80 = *(v48 + 32);

        v82 = sub_22F145F20(v81, v80, &v523);

        *(v79 + 14) = v82;
        *(v79 + 22) = 2048;
        if (v75)
        {
          v83 = sub_22F741A00();
        }

        else
        {
          v83 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v79 + 24) = v83;

        _os_log_impl(&dword_22F0FC000, v77, v78, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v79, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x2319033A0](v6, -1, -1);
        MEMORY[0x2319033A0](v79, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v35 = *(v48 + 24);
      v3 = *(v48 + 32);

      v147 = v522;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v523 = v147;
      v149 = sub_22F1229E8(v35, v3);
      v151 = *(v147 + 16);
      v152 = (v150 & 1) == 0;
      v153 = __OFADD__(v151, v152);
      v154 = v151 + v152;
      if (v153)
      {
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
        continue;
      }

      v6 = v150;
      if (*(v147 + 24) >= v154)
      {
        if ((v148 & 1) == 0)
        {
          v211 = v149;
          sub_22F134340();
          v149 = v211;
          if ((v6 & 1) == 0)
          {
LABEL_106:
            v38 = v523;
            *(v523 + 8 * (v149 >> 6) + 64) |= 1 << v149;
            v212 = (*(v38 + 48) + 16 * v149);
            *v212 = v35;
            v212[1] = v3;
            *(*(v38 + 56) + v149) = 4;

            v213 = *(v38 + 16);
            v153 = __OFADD__(v213, 1);
            v214 = v213 + 1;
            if (v153)
            {
              goto LABEL_294;
            }

LABEL_112:
            *(v38 + 16) = v214;
            goto LABEL_19;
          }

          goto LABEL_67;
        }
      }

      else
      {
        sub_22F1259D0(v154, v148);
        v149 = sub_22F1229E8(v35, v3);
        if ((v6 & 1) != (v155 & 1))
        {
          goto LABEL_372;
        }
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_67:
      v156 = v149;

      v38 = v523;
      *(*(v523 + 56) + v156) = 4;
      goto LABEL_102;
    }

    break;
  }

  v167 = sub_22F741A00();
  if (!v167)
  {
    v76 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v168 = v167;
  v76 = sub_22F120B48();

  sub_22F3CC8CC(v76 + 32, v168, v38);
  v35 = v169;

  if (v35 == v168)
  {
    goto LABEL_43;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_22F7420C0();
  __break(1u);
LABEL_373:

  __break(1u);
  return result;
}