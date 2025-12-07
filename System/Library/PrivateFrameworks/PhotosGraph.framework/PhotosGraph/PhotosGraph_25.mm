unint64_t sub_22F2E42E4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    type metadata accessor for Song(0);
    return a2;
  }

  return result;
}

unint64_t sub_22F2E43EC()
{
  result = qword_2810AB2E0;
  if (!qword_2810AB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2E0);
  }

  return result;
}

unint64_t sub_22F2E4440()
{
  result = qword_2810AA660;
  if (!qword_2810AA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA660);
  }

  return result;
}

unint64_t sub_22F2E44B8()
{
  result = qword_2810ABF40[0];
  if (!qword_2810ABF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ABF40);
  }

  return result;
}

unint64_t sub_22F2E450C()
{
  result = qword_2810AB2C8;
  if (!qword_2810AB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2C8);
  }

  return result;
}

unint64_t sub_22F2E4560()
{
  result = qword_2810AA650;
  if (!qword_2810AA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA650);
  }

  return result;
}

uint64_t sub_22F2E45B4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB33C8, &qword_22F783278);
    sub_22F2E4654(a2, 255, type metadata accessor for Song, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F2E4654(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F2E469C()
{
  result = qword_27DAB33E8;
  if (!qword_27DAB33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB33E8);
  }

  return result;
}

unint64_t sub_22F2E46F0()
{
  result = qword_27DAB33F0;
  if (!qword_27DAB33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB33F0);
  }

  return result;
}

unint64_t sub_22F2E47EC()
{
  result = qword_27DAB33F8;
  if (!qword_27DAB33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB33F8);
  }

  return result;
}

unint64_t sub_22F2E4844()
{
  result = qword_27DAB3400;
  if (!qword_27DAB3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3400);
  }

  return result;
}

unint64_t sub_22F2E489C()
{
  result = qword_27DAB3408;
  if (!qword_27DAB3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3408);
  }

  return result;
}

unint64_t sub_22F2E48F4()
{
  result = qword_2810ABF30;
  if (!qword_2810ABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABF30);
  }

  return result;
}

unint64_t sub_22F2E494C()
{
  result = qword_2810ABF38;
  if (!qword_2810ABF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABF38);
  }

  return result;
}

unint64_t sub_22F2E49A4()
{
  result = qword_2810AA668[0];
  if (!qword_2810AA668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AA668);
  }

  return result;
}

unint64_t sub_22F2E49FC()
{
  result = qword_2810AA658;
  if (!qword_2810AA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA658);
  }

  return result;
}

unint64_t sub_22F2E4A54()
{
  result = qword_2810AB2D0;
  if (!qword_2810AB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2D0);
  }

  return result;
}

unint64_t sub_22F2E4AAC()
{
  result = qword_2810AB2D8;
  if (!qword_2810AB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2D8);
  }

  return result;
}

uint64_t sub_22F2E4B00(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = sub_22F741A00();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = sub_22F741A00();
    result = sub_22F741A00();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v6 = v9 & ~(v9 >> 63);
    }

    else
    {
      v6 = v11;
    }

    result = sub_22F741A00();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
        sub_22F741B20();
      }
    }

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_22F741DB0();
}

uint64_t sub_22F2E4C64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56726F7461727563 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F799190 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEB00000000756F59 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F7991C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEC000000656D6954 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7924F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7991E0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022F799200 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

PhotosGraph::EventClusterScoredLabels __swiftcall EventClusterScoredLabels.init(identifier:eventLabelConfidences:)(Swift::String identifier, Swift::OpaquePointer eventLabelConfidences)
{
  *v2 = identifier;
  *(v2 + 16) = eventLabelConfidences;
  result.identifier = identifier;
  result.eventLabelConfidences = eventLabelConfidences;
  return result;
}

PhotosGraph::EventLabelConfidence __swiftcall EventLabelConfidence.init(label:confidence:)(PhotosGraph::EventLabel label, Swift::Double confidence)
{
  *v2 = *label;
  *(v2 + 8) = confidence;
  result.confidence = confidence;
  result.label = label;
  return result;
}

uint64_t EventClusterScoredLabels.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t getEnumTagSinglePayload for EventLabelConfidence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && a1[16])
  {
    return (*a1 + 234);
  }

  v3 = *a1;
  v4 = v3 >= 0x17;
  v5 = v3 - 23;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EventLabelConfidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *result = a2 - 234;
    *(result + 8) = 0;
    if (a3 >= 0xEA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 22;
    }
  }

  return result;
}

uint64_t CachedBackedMomentsProducer.init(cache:features:prefetchFeaturesFor:photoLibrary:graph:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void sub_22F2E50A0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[4];
  EventLabelingFeaturesFileCache.synchronize()();
  if (!v4)
  {

    v6 = sub_22F173D70(v5);

    v81 = v2;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v12 = *(v1 + 32 + i);
        v13 = *(v6 + 16);
        v14 = (v6 + 32);
        while (v13)
        {
          v15 = *v14++;
          --v13;
          if (v15 == v12)
          {
            goto LABEL_7;
          }
        }

        *&v83 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22F146700(0, *(v8 + 16) + 1, 1);
          v8 = v83;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22F146700((v10 > 1), v11 + 1, 1);
          v8 = v83;
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + v11 + 32) = v12;
LABEL_7:
        ;
      }
    }

    static MomentGraphFeature.extractors(for:with:in:)(v8, v81, v3, &v83);

    v16 = v83;
    v18 = v84;
    v17 = v85;
    v69 = EventLabelingFeaturesFileCache.readFeatures()();
    v19 = [v81 momentNodeByMomentUUID];
    v20 = sub_22F2E57E8();
    v21 = sub_22F740CA0();

    v22 = v69;
    v23 = *(v69 + 2);
    if (v23)
    {
      v67 = v17;
      v68 = v21;
      v64 = v20;
      *&v83 = MEMORY[0x277D84F90];
      v65 = v23;
      sub_22F741BD0();
      v24 = 0;
      v25 = 0x277CCA000uLL;
      v66 = v18;
      while (2)
      {
        if (v24 >= *(v22 + 2))
        {
LABEL_46:
          __break(1u);
          return;
        }

        v27 = v25;
        v74 = v24;
        v28 = &v69[24 * v24 + 32];
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[2];
        v32 = *(v68 + 16);
        swift_bridgeObjectRetain_n();
        v78 = v31;

        if (!v32 || (v33 = sub_22F1229E8(v29, v30), (v34 & 1) == 0))
        {

          sub_22F176540();
          swift_allocError();
          *v63 = v29;
          v63[1] = v30;
          v63[2] = v64;
          swift_willThrow();

          return;
        }

        v35 = v33;
        v75 = v74 + 1;

        v36 = *(*(v68 + 56) + 8 * v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0878, &unk_22F7838B0);
        v37 = sub_22F741DC0();
        v38 = v37;
        v71 = v31 + 64;
        v39 = 1 << *(v31 + 32);
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        else
        {
          v40 = -1;
        }

        v41 = v40 & *(v31 + 64);
        v42 = (v39 + 63) >> 6;
        v76 = v37 + 64;
        v70 = v36;
        v43 = 0;
        v25 = v27;
        v44 = MEMORY[0x277D84F90];
        v73 = v38;
        v72 = v42;
        if (v41)
        {
          while (1)
          {
            v45 = __clz(__rbit64(v41));
            v82 = (v41 - 1) & v41;
LABEL_32:
            v48 = v45 | (v43 << 6);
            v49 = (*(v78 + 48) + 16 * v48);
            v79 = *v49;
            v80 = v48;
            v50 = *(*(v78 + 56) + 8 * v48);
            v51 = *(v50 + 16);
            if (v51)
            {
              v77 = v49[1];

              sub_22F741BD0();
              v52 = 32;
              do
              {
                v53 = *(v50 + v52);
                v54 = objc_allocWithZone(*(v25 + 2992));
                LODWORD(v55) = v53;
                [v54 initWithFloat_];
                sub_22F741BA0();
                sub_22F741BE0();
                v25 = v27;
                sub_22F741BF0();
                sub_22F741BB0();
                v52 += 4;
                --v51;
              }

              while (v51);

              v56 = v44;
              v44 = MEMORY[0x277D84F90];
              v38 = v73;
              v42 = v72;
              v57 = v77;
            }

            else
            {

              v56 = v44;
            }

            v41 = v82;
            *(v76 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v80;
            v58 = (v38[6] + 16 * v80);
            *v58 = v79;
            v58[1] = v57;
            *(v38[7] + 8 * v80) = v56;
            v59 = v38[2];
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              break;
            }

            v38[2] = v61;
            if (!v82)
            {
              goto LABEL_27;
            }
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_27:
        v46 = v43;
        while (1)
        {
          v43 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v43 >= v42)
          {
            break;
          }

          v47 = *(v71 + 8 * v43);
          ++v46;
          if (v47)
          {
            v45 = __clz(__rbit64(v47));
            v82 = (v47 - 1) & v47;
            goto LABEL_32;
          }
        }

        type metadata accessor for CachedMomentGraphCluster();
        v26 = swift_allocObject();
        *(v26 + 16) = v70;
        *(v26 + 24) = v38;
        *(v26 + 32) = v16;
        *(v26 + 48) = v66;
        *(v26 + 56) = v67;

        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v24 = v75;
        v22 = v69;
        if (v75 != v65)
        {
          continue;
        }

        break;
      }

      v62 = v83;
    }

    else
    {

      v62 = MEMORY[0x277D84F90];
    }

    sub_22F161A38(v62);
  }
}

uint64_t sub_22F2E5748(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22F2E5790(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_22F2E57E8()
{
  result = qword_2810A90E0;
  if (!qword_2810A90E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A90E0);
  }

  return result;
}

id FeatureExtractorStoredCLIP.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Bool __swiftcall PHAsset.hasValidSceneAnalysisVersionForCLIP()()
{
  v1 = [v0 sceneAnalysisProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 sceneAnalysisVersion];

    v4 = objc_opt_self();
    v5 = [v4 baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    LOBYTE(v1) = v5 == [v4 latestVersion];
  }

  else
  {
    __break(1u);
  }

  return v1;
}

id FeatureExtractorStoredCLIP.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeatureExtractorStoredCLIP.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F2E5B50(void *a1)
{
  v1 = [a1 clsSceneprint];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 descriptorData];
  if (!v3)
  {

LABEL_8:
    sub_22F2E5F80();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_22F73F510();
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_20:
      v16 = MEMORY[0x277D84F90];
      v9 = *(MEMORY[0x277D84F90] + 16);
LABEL_21:
      if (!(v9 >> 61))
      {
        sub_22F15C418();
        sub_22F73EFF0();
        v17 = objc_allocWithZone(sub_22F73FBE0());
        v18 = MEMORY[0x2318FF780](v16);
        [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

        sub_22F133BF0(v5, v7);
        return;
      }

      goto LABEL_24;
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7) >> 2;
    if (BYTE6(v7) <= 3uLL)
    {
      goto LABEL_20;
    }

LABEL_19:
    v16 = sub_22F741200();
    *(v16 + 16) = v9;
    bzero((v16 + 32), 4 * v9);
    goto LABEL_21;
  }

  LODWORD(v14) = HIDWORD(v5) - v5;
  if (!__OFSUB__(HIDWORD(v5), v5))
  {
    v14 = v14;
LABEL_15:
    v15 = v14 + 3;
    if (v14 >= 0)
    {
      v15 = v14;
    }

    if (v14 < -3)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = v15 >> 2;
    if (v14 <= 3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

void sub_22F2E5D58(void *a1)
{
  v2 = [a1 sceneAnalysisProperties];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sceneAnalysisVersion];

    v5 = objc_opt_self();
    v6 = [v5 baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    if (v6 == [v5 latestVersion])
    {
      sub_22F2E5B50(a1);
    }

    else
    {
      sub_22F2E5F80();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s11PhotosGraph26FeatureExtractorStoredCLIPC12featureNamesSaySSGvg_0()
{
  v9 = MEMORY[0x277D84F90];
  sub_22F146454(0, 768, 0);
  v0 = 0;
  do
  {
    v7 = sub_22F740E20();
    v8 = v1;
    MEMORY[0x231900B10](95, 0xE100000000000000);
    v2 = sub_22F742010();
    MEMORY[0x231900B10](v2);

    v4 = *(v9 + 16);
    v3 = *(v9 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_22F146454((v3 > 1), v4 + 1, 1);
    }

    ++v0;
    *(v9 + 16) = v4 + 1;
    v5 = v9 + 16 * v4;
    *(v5 + 32) = v7;
    *(v5 + 40) = v8;
  }

  while (v0 != 768);
  return v9;
}

unint64_t sub_22F2E5F80()
{
  result = qword_27DAB3410;
  if (!qword_27DAB3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3410);
  }

  return result;
}

unint64_t sub_22F2E5FE8()
{
  result = qword_27DAB3418;
  if (!qword_27DAB3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3418);
  }

  return result;
}

uint64_t sub_22F2E603C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v4 = sub_22F740B90();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2E612C, 0, 0);
}

uint64_t sub_22F2E612C()
{
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = __swift_project_value_buffer(v3, qword_2810B4CE0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22F740B70();
  v6 = sub_22F7415F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22F0FC000, v5, v6, "PetRelationshipDonator: Donating pet relationship inferences to Cascade, isRebuild: %{BOOL}d", v8, 8u);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  v9 = *(v0 + 264);

  if (v9 == 1)
  {
    v10 = objc_opt_self();
    v11 = sub_22F740DF0();
    *(v0 + 144) = 0;
    v12 = [v10 sourceIdentifierWithValue:v11 error:v0 + 144];
    *(v0 + 240) = v12;

    v13 = *(v0 + 144);
    if (v12)
    {
      v14 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_22F771EB0;
      *(v15 + 32) = v12;
      sub_22F120634(0, &unk_2810A9178, 0x277CF9500);
      v16 = v13;
      v17 = v12;
      v18 = sub_22F741160();
      *(v0 + 248) = v18;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 152;
      *(v0 + 24) = sub_22F2E65C0;
      v19 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3428, &qword_22F783A90);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_22F2E6DA0;
      *(v0 + 104) = &block_descriptor_24;
      *(v0 + 112) = v19;
      [v14 fullSetDonationWithItemType:59688 descriptors:v18 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    v30 = *(v0 + 216);
    v31 = v13;
    sub_22F73F370();

    swift_willThrow();
    (*(v29 + 8))(v28, v30);

    v27 = *(v0 + 8);
  }

  else
  {
    v20 = sub_22F740B70();
    v21 = sub_22F7415F0();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 216);
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "PetRelationshipDonator: early return, currently only donate inferences when doing a full rebuild", v26, 2u);
      MEMORY[0x2319033A0](v26, -1, -1);
    }

    (*(v24 + 8))(v23, v25);

    v27 = *(v0 + 8);
  }

  return v27();
}

uint64_t sub_22F2E65C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_22F2E6CC8;
  }

  else
  {
    v2 = sub_22F2E66FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F2E66FC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);

  v60 = v1 >> 62;
  v61 = v1;
  if (v1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v4 = *(v0 + 200);
    v5 = 0;
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    v62 = v4 + 32;
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2319016F0](v5, *(v0 + 200));
      }

      else
      {
        if (v5 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v6 = *(v62 + 8 * v5);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 petSpecies];
      if (v9 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9 == 2;
      }

      v11 = sub_22F7417E0();
      v12 = objc_allocWithZone(MEMORY[0x277D210D8]);
      *(v0 + 160) = 0;
      v13 = [v12 initWithIsUsersPet:v11 type:v10 error:v0 + 160];
      v14 = *(v0 + 160);
      if (!v13)
      {
        v44 = *(v0 + 240);
        v64 = *(v0 + 232);
        v45 = v2;
        v46 = *(v0 + 216);
        v47 = *(v0 + 224);
        v48 = v14;
        sub_22F73F370();

        swift_willThrow();
        (*(v47 + 8))(v64, v46);
        goto LABEL_30;
      }

      v15 = v13;
      v16 = v14;

      v17 = v7;
      v18 = [v7 localIdentifier];
      if (!v18)
      {
        sub_22F740E20();
        v18 = sub_22F740DF0();
      }

      v19 = v2;
      v20 = objc_allocWithZone(MEMORY[0x277D210E0]);
      *(v0 + 168) = 0;
      v21 = [v20 initWithSourceItemIdentifier:v18 error:v0 + 168];

      v22 = *(v0 + 168);
      if (!v21)
      {
        v49 = *(v0 + 240);
        v65 = *(v0 + 232);
        v50 = *(v0 + 216);
        v51 = *(v0 + 224);
        v52 = v22;
        sub_22F73F370();

        swift_willThrow();
LABEL_29:

        (*(v51 + 8))(v65, v50);
        goto LABEL_30;
      }

      v23 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      *(v0 + 176) = 0;
      v24 = v22;
      v25 = [v23 initWithContent:v15 metaContent:v21 error:v0 + 176];
      v26 = *(v0 + 176);
      if (!v25)
      {
        v53 = *(v0 + 240);
        v54 = *(v0 + 224);
        v63 = *(v0 + 216);
        v66 = *(v0 + 232);
        v55 = v26;
        sub_22F73F370();

        swift_willThrow();
        (*(v54 + 8))(v66, v63);
        goto LABEL_30;
      }

      v27 = v25;
      v28 = v26;

      *(v0 + 184) = 0;
      v2 = v19;
      v29 = [v19 registerItem:v27 error:v0 + 184];
      v30 = *(v0 + 184);
      if ((v29 & 1) == 0)
      {
        v49 = *(v0 + 240);
        v65 = *(v0 + 232);
        v50 = *(v0 + 216);
        v51 = *(v0 + 224);
        v56 = v30;
        sub_22F73F370();

        swift_willThrow();
        goto LABEL_29;
      }

      v31 = v30;

      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_19:
  *(v0 + 192) = 0;
  v32 = [v2 finish_];
  v33 = *(v0 + 192);
  if (v32)
  {
    v34 = v33;

    v35 = sub_22F740B70();
    v36 = sub_22F7415F0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      if (v60)
      {
        v38 = sub_22F741A00();
      }

      else
      {
        v38 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = *(v0 + 240);
      *(v37 + 4) = v38;

      _os_log_impl(&dword_22F0FC000, v35, v36, "PetRelationshipDonator: finished registering %ld pet relationship inferences", v37, 0xCu);
      MEMORY[0x2319033A0](v37, -1, -1);

      v35 = v58;
    }

    else
    {
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v57 = *(v0 + 8);
  }

  else
  {
    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    v41 = *(v0 + 216);
    v42 = *(v0 + 224);
    v43 = v33;
    sub_22F73F370();

    swift_willThrow();
    (*(v42 + 8))(v40, v41);
LABEL_30:

    v57 = *(v0 + 8);
  }

  return v57();
}

uint64_t sub_22F2E6CC8(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[27];
  v6 = v1[28];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);

  v7 = v1[1];

  return v7();
}

uint64_t sub_22F2E6DA0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22F2E7008(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_22F120634(0, &qword_2810A91A0, off_27887B268);
  v7 = sub_22F741180();
  v4[4] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_22F2E70F8;

  return sub_22F2E603C(v7, a2);
}

uint64_t sub_22F2E70F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_22F73F360();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_22F2E7338()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22F12094C;

  return sub_22F2E7008(v2, v3, v5, v4);
}

uint64_t sub_22F2E73FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F20B7C0;

  return sub_22F33C37C(v2, v3, v4);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F2E7514(void *a1, uint64_t a2)
{
  v50 = a2;
  v54 = a1;
  v2 = type metadata accessor for TriggerResult(0);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - v5;
  v47 = sub_22F740460();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22F740390();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = sub_22F73F9B0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22F73F090();
  v40 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F970();
  sub_22F73F650();
  sub_22F73F800();
  (*(v10 + 16))(v12, v15, v9);
  v52 = v24;
  sub_22F73F050();
  v25 = *(v10 + 8);
  v25(v15, v9);
  v25(v18, v9);
  (*(v20 + 8))(v22, v19);
  result = [v54 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v27 = 0;
      v43 = (v41 + 2);
      v44 += 2;
      ++v41;
      v42 = (v40 + 16);
      v28 = MEMORY[0x277D84F90];
      v29 = v51;
      v31 = v38;
      v30 = v39;
      v45 = result;
      do
      {
        v32 = [v54 objectAtIndexedSubscript_];
        (*v44)(v46, v50, v47);
        v33 = v32;
        sub_22F740360();
        (*v43)(v30, v8, v31);
        (*v42)(v30 + *(v49 + 20), v52, v53);
        sub_22F13C46C(v30, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_22F13DB78(0, v28[2] + 1, 1, v28);
        }

        v35 = v28[2];
        v34 = v28[3];
        if (v35 >= v34 >> 1)
        {
          v28 = sub_22F13DB78((v34 > 1), v35 + 1, 1, v28);
        }

        ++v27;

        sub_22F13DBA0(v30);
        (*v41)(v8, v31);
        v28[2] = v35 + 1;
        v36 = v28 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35;
        v29 = v51;
        sub_22F13DBFC(v51, v36);
      }

      while (v45 != v27);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    (*(v40 + 8))(v52, v53);
    return v28;
  }

  return result;
}

uint64_t sub_22F2E7BA8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F2E7BEC(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t *sub_22F2E7D14(char *a1, void *a2)
{
  v3 = v2;
  v64 = *v3;
  v6 = sub_22F740460();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F73F990();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73F9B0();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73F690();
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  v19 = sub_22F73F090();
  v71 = *(v19 - 8);
  v72 = v19;
  MEMORY[0x28223BE20](v19);
  v70 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph12RecentPeople_futureLookupResults) = 0;
  v63 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph12RecentPeople_triggerResults) = MEMORY[0x277D84F90];
  v23 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v24 = (*(v22 + 16))(v23, v22);
  if (v24)
  {
    v25 = v24;
    v26 = a2[3];
    v27 = a2[4];
    v65 = a2;
    __swift_project_boxed_opaque_existential_1(a2, v26);
    (*(v27 + 8))(v26, v27);
    sub_22F73F970();
    if (v21)
    {
      sub_22F73F890();
    }

    else
    {
      v37 = v60;
      v36 = v61;
      v38 = v62;
      (*(v61 + 104))(v60, *MEMORY[0x277CC9940], v62);
      sub_22F73F8C0();
      (*(v36 + 8))(v37, v38);
    }

    v39 = v70;
    (*(v68 + 8))(v12, v69);
    (*(v66 + 8))(v15, v67);
    v41 = v71;
    v40 = v72;
    if ((*(v71 + 48))(v18, 1, v72) == 1)
    {

      sub_22F1EDFCC(v18);
    }

    else
    {
      (*(v41 + 32))(v39, v18, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_22F771340;
      v44 = (*(v41 + 16))(v43 + v42, v39, v40);
      MEMORY[0x28223BE20](v44);
      *(&v57 - 2) = v43;
      *(&v57 - 1) = v25;
      v45 = sub_22F2A1FCC(sub_22F29B650, (&v57 - 4));

      v46 = v65[3];
      v47 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v46);
      v48 = sub_22F2A6EB8(v45, v46, v47);

      if (v48)
      {
        v49 = v39;
        v51 = v57;
        v50 = v58;
        v52 = v59;
        (*(v58 + 104))(v57, *MEMORY[0x277D3C468], v59);
        v53 = static CollectionTrigger.generateTriggerResults(from:type:)(v48, v51);

        (*(v50 + 8))(v51, v52);
        (*(v41 + 8))(v49, v40);
        v54 = v63;
        swift_beginAccess();
        *(v3 + v54) = v53;
      }

      else
      {

        (*(v41 + 8))(v39, v40);
        v55 = v63;
        swift_beginAccess();
        *(v3 + v55) = MEMORY[0x277D84F90];
      }
    }

    v35 = v65;
  }

  else
  {
    v28 = sub_22F740B70();
    v29 = sub_22F7415C0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v73[0] = v31;
      *v30 = 136315138;
      v32 = sub_22F742240();
      v34 = sub_22F145F20(v32, v33, v73);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_22F0FC000, v28, v29, "GraphWorkingContext not available. Skipping %s trigger", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2319033A0](v31, -1, -1);
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    v35 = a2;
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v3;
}

uint64_t sub_22F2E852C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F2E85F8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F2E863C(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_22F2E8764(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22F740460();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F73F990();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73F9B0();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73F690();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v19 = sub_22F73F090();
  v20 = *(v19 - 8);
  v79 = v19;
  v80 = v20;
  MEMORY[0x28223BE20](v19);
  v74 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph10RecentPets_futureLookupResults) = 0;
  v67 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph10RecentPets_triggerResults) = MEMORY[0x277D84F90];
  v23 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = (*(v24 + 16))(v23, v24);
  if (!v25)
  {
    v30 = a2;
    v31 = sub_22F740B70();
    v32 = sub_22F7415C0();
    v33 = v3;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22F145F20(0x6550746E65636552, 0xEA00000000007374, &v81);
      _os_log_impl(&dword_22F0FC000, v31, v32, "GraphWorkingContext not available. Skipping %s trigger", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    goto LABEL_15;
  }

  v26 = v25;
  v66 = v3;
  v27 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v27);
  (*(v28 + 8))(v27, v28);
  sub_22F73F970();
  v29 = a2;
  if (v22)
  {
    sub_22F73F890();
  }

  else
  {
    v37 = v71;
    v36 = v72;
    v38 = v73;
    (*(v72 + 104))(v71, *MEMORY[0x277CC9940], v73);
    sub_22F73F8C0();
    (*(v36 + 8))(v37, v38);
  }

  v39 = v79;
  (*(v77 + 8))(v12, v78);
  (*(v75 + 8))(v15, v76);
  v40 = v80;
  if ((*(v80 + 48))(v18, 1, v39) != 1)
  {
    v41 = v74;
    (*(v40 + 32))(v74, v18, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22F771340;
    v44 = (*(v40 + 16))(v43 + v42, v41, v39);
    MEMORY[0x28223BE20](v44);
    *(&v65 - 2) = v43;
    *(&v65 - 1) = v26;
    v45 = v29;
    v46 = sub_22F2A1FCC(sub_22F29B648, (&v65 - 4));

    v47 = v45[3];
    v48 = v45[4];
    v30 = v45;
    __swift_project_boxed_opaque_existential_1(v45, v47);
    v49 = (*(v48 + 24))(v47, v48);
    v50 = [v49 librarySpecificFetchOptions];

    [v50 setPersonContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_22F771350;
    *(v51 + 32) = sub_22F742140();
    *(v51 + 40) = sub_22F742140();
    sub_22F170D8C();
    v52 = sub_22F741160();

    [v50 setIncludedDetectionTypes_];

    v53 = *(v46 + 16);
    if (v53)
    {
      v54 = sub_22F10B348(*(v46 + 16), 0);
      v55 = sub_22F11A438(&v81, v54 + 4, v53, v46);
      sub_22F1534EC(v81);
      if (v55 == v53)
      {
LABEL_14:
        v33 = v66;
        v56 = objc_opt_self();
        v57 = sub_22F741160();

        v58 = [v56 fetchPersonsWithLocalIdentifiers:v57 options:v50];

        v60 = v68;
        v59 = v69;
        v61 = v70;
        (*(v69 + 104))(v68, *MEMORY[0x277D3C468], v70);
        v62 = sub_22F2E7514(v58, v60);

        (*(v59 + 8))(v60, v61);
        (*(v80 + 8))(v74, v39);
        v63 = v67;
        swift_beginAccess();
        *(v33 + v63) = v62;

LABEL_15:
        v29 = v30;
        goto LABEL_16;
      }

      __break(1u);
    }

    goto LABEL_14;
  }

  sub_22F1EDFCC(v18);
  v33 = v66;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v33;
}

uint64_t sub_22F2E9078()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F2E92E4(uint64_t a1)
{
  result = sub_22F740B90();
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

id static MusicFeatureExtractionContext.flexMusicFeatureExtractionContext(photoLibrary:useMoodKeywords:flexSongProvider:)(void *a1, void *a2, void *a3)
{
  v8 = &type metadata for FlexMusicSongKeywordProvider;
  v9 = &protocol witness table for FlexMusicSongKeywordProvider;
  v7 = -1;
  v6[0] = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(a3);
  v6[1] = 0;
  return sub_22F2E9C2C(a1, v6, a2);
}

uint64_t MusicFeatureExtractionContext.keywordsDataFrame()()
{
  v1 = v0 + OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  LOBYTE(v2) = v5;
  swift_endAccess();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  return v4;
}

uint64_t MusicFeatureExtractionContext.flexSongProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider);

  return v1;
}

id MusicFeatureExtractionContext.__allocating_init(configuration:photoLibrary:songKeywordProvider:useMoodKeywords:flexSongProvider:)(const void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = sub_22F2E9E54(a1, a2, v15, v9, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v16;
}

id MusicFeatureExtractionContext.init(configuration:photoLibrary:songKeywordProvider:useMoodKeywords:flexSongProvider:)(const void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_22F2E9B04(a1, a2, v18, v9, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v20;
}

id MusicFeatureExtractionContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicFeatureExtractionContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F2E9B04(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v23[3] = a8;
  v23[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  memcpy(&a7[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], a1, 0x16CuLL);
  *&a7[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = a2;
  sub_22F15C30C(v23, &a7[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
  a7[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = a4;
  v19 = &a7[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
  *v19 = a5;
  v19[1] = a6;
  v22.receiver = a7;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v20;
}

id sub_22F2E9C2C(void *a1, void *a2, id a3)
{
  static MusicCuratorConfiguration.defaultConfiguration()(__src);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_22F15C30C(a2, v12);
    v7 = type metadata accessor for MusicFeatureExtractionContext();
    v8 = objc_allocWithZone(v7);
    memcpy(&v8[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], __dst, 0x16CuLL);
    *&v8[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = a1;
    sub_22F15C30C(v12, &v8[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
    v8[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = a3 & 1;
    v9 = &v8[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
    *v9 = 0;
    v9[1] = 0;
    v11.receiver = v8;
    v11.super_class = v7;
    a3 = objc_msgSendSuper2(&v11, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a2);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return a3;
}

id _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(uint64_t a1)
{
  memcpy(__dst, (a1 + OBJC_IVAR___PGMusicCuratorContext_configuration), sizeof(__dst));
  v2 = *(a1 + OBJC_IVAR___PGMusicCuratorContext_photoLibrary);
  v3 = type metadata accessor for MusicFeatureExtractionContext();
  v4 = objc_allocWithZone(v3);
  v12 = &type metadata for AppleMusicSongKeywordProvider;
  v13 = &protocol witness table for AppleMusicSongKeywordProvider;
  v10 = 0;
  v11 = -1;
  memcpy(&v4[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], __dst, 0x16CuLL);
  *&v4[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = v2;
  sub_22F15C30C(&v10, &v4[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
  v4[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = 0;
  v5 = &v4[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v4;
  v9.super_class = v3;
  v6 = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v10);
  return v7;
}

id sub_22F2E9E54(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a3, a8);
  return sub_22F2E9B04(a1, a2, v17, a4, a5, v22, v19, a8, a9);
}

id _s11PhotosGraph29MusicFeatureExtractionContextC04flexcdeF04withAcA0c7CuratorF0C_tFZ_0(uint64_t a1)
{
  memcpy(__dst, (a1 + OBJC_IVAR___PGMusicCuratorContext_configuration), sizeof(__dst));
  v2 = *(a1 + OBJC_IVAR___PGMusicCuratorContext_photoLibrary);
  v3 = sub_22F2A8AE4();
  v4 = type metadata accessor for MusicFeatureExtractionContext();
  v5 = objc_allocWithZone(v4);
  v13 = &type metadata for FlexMusicSongKeywordProvider;
  v14 = &protocol witness table for FlexMusicSongKeywordProvider;
  v11[0] = v3;
  v11[1] = 0;
  v12 = -1;
  memcpy(&v5[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], __dst, 0x16CuLL);
  *&v5[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = v2;
  sub_22F15C30C(v11, &v5[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
  v5[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = 0;
  v6 = &v5[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
  *v6 = 0;
  v6[1] = 0;

  sub_22F256018(0, 255);
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  sub_22F255F20(0, 255);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22F2EA170(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22F146454(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_22F741980();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_22F740EA0();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_22F146454((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_22F107D18(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22F2EA398(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    type metadata accessor for SongEntry();
    sub_22F2F4568();
    sub_22F741470();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_22F0FF590(v1);
      return;
    }

    while (1)
    {
      sub_22F10C6E4(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22F741A40())
      {
        type metadata accessor for SongEntry();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_22F2EA558(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = 0;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v11;
LABEL_9:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_22F2F3FA0(*(a1 + 48) + *(v19 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for Song);
    sub_22F2F4008(v10, v4, type metadata accessor for Song);
    sub_22F10C40C(v7, v4);
    sub_22F2F4070(v7, type metadata accessor for Song);
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = *(a1 + 56 + 8 * v16);
    ++v11;
    if (v14)
    {
      v11 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22F2EA740(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = 0;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v11;
LABEL_9:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_22F2F3FA0(*(a1 + 48) + *(v19 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for Song);
    sub_22F2F4008(v10, v4, type metadata accessor for Song);
    sub_22F10C40C(v7, v4);
    sub_22F2F4070(v7, type metadata accessor for Song);
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = *(a1 + 64 + 8 * v16);
    ++v11;
    if (v14)
    {
      v11 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22F2EA928(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22F10BBDC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_22F2EAA2C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22F10BBDC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_22F2EAB30(uint64_t *a1)
{
  v2 = *(sub_22F73FFC0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6594(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F2F1038(v5);
  *a1 = v3;
}

uint64_t sub_22F2EABD8()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B5038);
  v1 = __swift_project_value_buffer(v0, qword_2810B5038);
  if (qword_2810A9438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2810B4D30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t PersonalTraitMomentGraphDataSource.init(configuration:storyPhotoLibraryContext:graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_2810A9B88 != -1)
  {
    swift_once();
  }

  v8 = qword_2810B4E68;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("PersonalTraitMomentGraphDataSource init", 39, 2u, v9, 0, v8, v58);
  v10 = sub_22F740820();
  v55 = *(v10 - 8);
  (*(v55 + 16))(a4, a1, v10);
  v11 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v12 = v11[5];
  v13 = sub_22F740620();
  v53 = *(v13 - 8);
  v54 = v13;
  (*(v53 + 16))(a4 + v12, a2);
  *(a4 + v11[6]) = a3;
  v59 = a3;
  v14 = sub_22F740800();
  v15 = *(v14 + 16);
  v56 = v10;
  if (v15)
  {
    v16 = sub_22F10B348(v15, 0);
    v17 = sub_22F11A438(&v57, v16 + 4, v15, v14);
    sub_22F0FF590(v57);
    if (v17 != v15)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v18 = objc_opt_self();
  v19 = sub_22F741160();

  v20 = v59;
  v21 = [v18 meaningNodesWithMeaningLabels:v19 inGraph:v59];

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 highPrecisionFilter];
  v25 = [v24 inRelation];

  v26 = [objc_msgSend(v23 graph)];
  swift_unknownObjectRelease();
  v27 = [v26 concreteGraph];

  if (v27)
  {
    v51 = a2;
    v52 = a1;
    v28 = [v23 elementIdentifiers];
    v29 = [v27 adjacencyWithSources:v28 relation:v25];

    v30 = (a4 + v11[7]);
    *v30 = v29;
    v30[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3478, &unk_22F783BA0);
    v32 = [swift_getObjCClassFromMetadata(v31) nodesInGraph_];
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 anniversaryMomentOfPerson];
    v36 = [objc_msgSend(v34 graph)];
    swift_unknownObjectRelease();
    v37 = [v36 concreteGraph];

    if (v37)
    {
      v38 = [v34 elementIdentifiers];
      v39 = [v37 adjacencyWithSources:v38 relation:v35];

      swift_unknownObjectRetain();
      v40 = [v39 transposed];
      swift_unknownObjectRelease();

      v41 = (a4 + v11[8]);
      *v41 = v40;
      v41[1] = v37;
      v42 = v34;
      v43 = [v33 birthdayMomentOfPerson];
      v44 = [objc_msgSend(v42 graph)];
      swift_unknownObjectRelease();
      v45 = [v44 concreteGraph];

      if (v45)
      {
        v46 = [v42 elementIdentifiers];
        v47 = [v45 adjacencyWithSources:v46 relation:v43];

        swift_unknownObjectRetain();
        v48 = [v47 transposed];
        swift_unknownObjectRelease();

        v49 = (a4 + v11[9]);
        *v49 = v48;
        v49[1] = v45;
        sub_22F1B2BBC(0);

        (*(v53 + 8))(v51, v54);
        return (*(v55 + 8))(v52, v56);
      }
    }
  }

LABEL_12:
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t *PersonalTraitMomentGraphDataSource.generateTraits(for:progressReporter:)(uint64_t a1, uint64_t *a2)
{
  v22 = a2;
  v24 = sub_22F740510();
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F7405F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810AC5A0 != -1)
  {
    swift_once();
  }

  v21 = v5;
  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_2810B5038);

  v11 = sub_22F740B70();
  v12 = sub_22F7415F0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&dword_22F0FC000, v11, v12, "[PersonalTraitMomentGraphDataSource] Converting %ld assets to moments", v13, 0xCu);
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  else
  {
  }

  type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  sub_22F7407E0();
  v14 = MEMORY[0x277D84F90];
  v15 = sub_22F740590();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    v17 = v21;
    sub_22F740500();
    v14 = PersonalTraitMomentGraphDataSource.generateTraits(for:extendedTokenCollection:progressReporter:)(v16, v18, v22);
    (*(v23 + 8))(v17, v24);
  }

  return v14;
}

uint64_t *PersonalTraitMomentGraphDataSource.generateTraits(for:extendedTokenCollection:progressReporter:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v228 = sub_22F73FFA0();
  v212 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v240 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F73FFB0();
  v214 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v239 = (&v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v231 = &v201 - v9;
  v236 = sub_22F73FFC0();
  v237 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v224 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v229 = (&v201 - v12);
  v230 = type metadata accessor for PersonalTraitInfo(0);
  v242 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v14 = &v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v238 = (&v201 - v16);
  MEMORY[0x28223BE20](v17);
  v234 = (&v201 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v201 - v20;
  MEMORY[0x28223BE20](v22);
  v226 = &v201 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v201 - v25;
  MEMORY[0x28223BE20](v27);
  v243 = (&v201 - v28);
  if (qword_2810A9B88 != -1)
  {
LABEL_162:
    swift_once();
  }

  v235 = v6;
  v29 = qword_2810B4E68;
  *&v30 = CACurrentMediaTime();
  sub_22F1B560C("PersonalTraitMomentGraphDataSource generateTraits", 49, 2u, v30, 0, v29, v247);
  v31 = a1[2];
  v227 = a3;
  v233 = v14;
  v223 = a1;
  v222 = v31;
  if (v31)
  {
    v245 = MEMORY[0x277D84F90];
    sub_22F146454(0, v31, 0);
    v32 = v245;
    v33 = a1 + 5;
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      v245 = v32;
      v37 = v32[2];
      v36 = v32[3];

      if (v37 >= v36 >> 1)
      {
        sub_22F146454((v36 > 1), v37 + 1, 1);
        v32 = v245;
      }

      v32[2] = v37 + 1;
      v38 = &v32[2 * v37];
      v38[4] = v34;
      v38[5] = v35;
      v33 += 3;
      --v31;
    }

    while (v31);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  if (qword_2810AC5A0 != -1)
  {
    swift_once();
  }

  v39 = sub_22F740B90();
  v40 = __swift_project_value_buffer(v39, qword_2810B5038);

  v41 = v32;
  v42 = sub_22F740B70();
  v43 = sub_22F7415F0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v41[2];

    _os_log_impl(&dword_22F0FC000, v42, v43, "[PersonalTraitMomentGraphDataSource] Found %ld representative moments", v44, 0xCu);
    MEMORY[0x2319033A0](v44, -1, -1);

    if (v41[2])
    {
      goto LABEL_13;
    }

LABEL_26:

    v65 = v232;
    sub_22F7416A0();
    if (v65)
    {
LABEL_27:
      sub_22F1B2BBC(1);
    }

    else
    {
      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }
  }

  if (!v41[2])
  {
    goto LABEL_26;
  }

LABEL_13:
  v225 = v21;
  v208 = v40;
  v45 = objc_opt_self();
  v218 = v41;
  v46 = sub_22F741160();
  v47 = *(v241 + *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 24));
  v48 = [v45 momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:v46 inGraph:v47];

  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  v14 = sub_22F740CA0();

  v49 = objc_allocWithZone(PGGraphMomentNodeCollection);

  v50 = [v49 initWithGraph_];
  v51 = 1 << *(v14 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v14 + 64);
  v54 = (v51 + 63) >> 6;

  a3 = v50;
  v6 = 0;
  v21 = &selRef_assetIsSafeForWidgetDisplay_;
  a1 = a3;
  if (v53)
  {
    while (1)
    {
      v55 = v6;
LABEL_21:
      v56 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v57 = [a1 collectionByFormingUnionWith_];
      v58 = a1;
      a1 = v57;

      if (!v53)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v55 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    if (v55 >= v54)
    {
      break;
    }

    v53 = *(v14 + 64 + 8 * v55);
    v6 = (v6 + 1);
    if (v53)
    {
      v6 = v55;
      goto LABEL_21;
    }
  }

  v59 = v14;
  v60 = v227;
  v61 = [v227 childProgressReporterFromStart:0.0 toEnd:0.4];
  v62 = v232;
  v63 = sub_22F2ED588(a1, v61);
  if (v62)
  {

    sub_22F1B2BBC(1);
  }

  v207 = v63;
  v206 = v59;
  v66 = [v60 childProgressReporterFromStart:0.4 toEnd:0.8];
  v67 = sub_22F2EE9C0(a1, v66);
  v221 = 0;
  v219 = a1;
  v21 = v207;

  v68 = sub_22F740B70();
  a1 = sub_22F7415F0();
  v69 = os_log_type_enabled(v68, a1);
  v205 = v67;
  v203 = v66;
  if (v69)
  {
    v70 = swift_slowAlloc();
    *v70 = 134218240;
    *(v70 + 4) = *(v21 + 16);

    *(v70 + 12) = 2048;
    *(v70 + 14) = *(v67 + 16);

    _os_log_impl(&dword_22F0FC000, v68, a1, "[PersonalTraitMomentGraphDataSource] Found unfiltered traits %ld from scenes, %ld from meanings", v70, 0x16u);
    MEMORY[0x2319033A0](v70, -1, -1);
  }

  else
  {
  }

  v71 = sub_22F740B70();
  v72 = sub_22F7415F0();

  v73 = os_log_type_enabled(v71, v72);
  v204 = v61;
  if (v73)
  {
    LODWORD(v232) = v72;
    v74 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v245 = v220;
    *v74 = 136380675;
    v75 = v21;
    v76 = *(v21 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v76)
    {
      v216 = v74;
      v217 = v71;
      v246 = MEMORY[0x277D84F90];
      sub_22F146454(0, v76, 0);
      v21 = v246;
      v77 = v75 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
      v241 = *(v242 + 72);
      do
      {
        v78 = v243;
        sub_22F2F3FA0(v77, v243, type metadata accessor for PersonalTraitInfo);
        v79 = *v78;
        v80 = v78[1];

        sub_22F2F4070(v78, type metadata accessor for PersonalTraitInfo);
        v246 = v21;
        v82 = *(v21 + 16);
        v81 = *(v21 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_22F146454((v81 > 1), v82 + 1, 1);
          v21 = v246;
        }

        *(v21 + 16) = v82 + 1;
        v83 = v21 + 16 * v82;
        *(v83 + 32) = v79;
        *(v83 + 40) = v80;
        v77 += v241;
        --v76;
      }

      while (v76);
      v71 = v217;
      v74 = v216;
    }

    a1 = MEMORY[0x231900D40](v21, MEMORY[0x277D837D0]);
    v85 = v84;

    v86 = sub_22F145F20(a1, v85, &v245);

    *(v74 + 4) = v86;
    _os_log_impl(&dword_22F0FC000, v71, v232, "[PersonalTraitMomentGraphDataSource] Unfiltered traits from scenes: %{private}s", v74, 0xCu);
    v87 = v220;
    __swift_destroy_boxed_opaque_existential_0(v220);
    MEMORY[0x2319033A0](v87, -1, -1);
    MEMORY[0x2319033A0](v74, -1, -1);
  }

  v88 = v205;

  v14 = sub_22F740B70();
  v89 = sub_22F7415F0();

  if (os_log_type_enabled(v14, v89))
  {
    v21 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v245 = v241;
    *v21 = 136380675;
    v90 = *(v88 + 16);
    v91 = MEMORY[0x277D84F90];
    if (v90)
    {
      v217 = v21;
      LODWORD(v220) = v89;
      v232 = v14;
      v246 = MEMORY[0x277D84F90];
      sub_22F146454(0, v90, 0);
      v91 = v246;
      v92 = v88 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
      v93 = *(v242 + 72);
      do
      {
        v94 = v243;
        sub_22F2F3FA0(v92, v243, type metadata accessor for PersonalTraitInfo);
        v95 = *v94;
        v96 = v94[1];

        sub_22F2F4070(v94, type metadata accessor for PersonalTraitInfo);
        v246 = v91;
        v98 = v91[2];
        v97 = v91[3];
        if (v98 >= v97 >> 1)
        {
          sub_22F146454((v97 > 1), v98 + 1, 1);
          v91 = v246;
        }

        v91[2] = v98 + 1;
        v99 = &v91[2 * v98];
        v99[4] = v95;
        v99[5] = v96;
        v92 += v93;
        --v90;
      }

      while (v90);
      v88 = v205;
      v14 = v232;
      LOBYTE(v89) = v220;
      v21 = v217;
    }

    a1 = MEMORY[0x231900D40](v91, MEMORY[0x277D837D0]);
    v101 = v100;

    v102 = sub_22F145F20(a1, v101, &v245);

    *(v21 + 4) = v102;
    _os_log_impl(&dword_22F0FC000, v14, v89, "[PersonalTraitMomentGraphDataSource] Unfiltered traits from meanings: %{private}s", v21, 0xCu);
    v103 = v241;
    __swift_destroy_boxed_opaque_existential_0(v241);
    MEMORY[0x2319033A0](v103, -1, -1);
    MEMORY[0x2319033A0](v21, -1, -1);
  }

  v241 = *(v88 + 16);
  if (v241)
  {
    a1 = ((*(v242 + 80) + 32) & ~*(v242 + 80));
    v232 = a1 + v88;
    v104 = *(v242 + 72);
    v105 = v207;

    v106 = 0;
    while (1)
    {
      sub_22F2F3FA0(&v232[v104 * v106], v26, type metadata accessor for PersonalTraitInfo);
      if (*(v26 + 24) >= 1 && (v107 = v105[2]) != 0)
      {
        v21 = 0;
        v108 = a1;
        while (1)
        {
          v14 = v105;
          v109 = (v108 + v105);
          v110 = *v109 == *v26 && v109[1] == *(v26 + 8);
          if (v110 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          ++v21;
          v108 = (v108 + v104);
          v105 = v14;
          if (v107 == v21)
          {
            goto LABEL_62;
          }
        }

        v115 = v109;
        v116 = v243;
        sub_22F2F3FA0(v115, v243, type metadata accessor for PersonalTraitInfo);
        sub_22F2EED50(v26, v226);
        sub_22F2F4070(v116, type metadata accessor for PersonalTraitInfo);
        v105 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_22F2F2CBC(v14);
        }

        if (v21 >= v105[2])
        {
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        sub_22F2F3B58(v226, v108 + v105);
      }

      else
      {
LABEL_62:
        v111 = v225;
        sub_22F2F3FA0(v26, v225, type metadata accessor for PersonalTraitInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_22F13FA8C(0, v105[2] + 1, 1, v105);
        }

        v113 = v105[2];
        v112 = v105[3];
        v114 = v105;
        if (v113 >= v112 >> 1)
        {
          v114 = sub_22F13FA8C((v112 > 1), v113 + 1, 1, v105);
        }

        v114[2] = v113 + 1;
        v105 = v114;
        sub_22F2F4008(v111, a1 + v114 + v113 * v104, type metadata accessor for PersonalTraitInfo);
      }

      v106 = (v106 + 1);
      sub_22F2F4070(v26, type metadata accessor for PersonalTraitInfo);
      if (v106 == v241)
      {
        goto LABEL_71;
      }
    }
  }

  v105 = v207;

LABEL_71:
  v226 = v105;
  v117 = v105[2];
  v26 = MEMORY[0x277D84F90];
  if (v117)
  {
    v118 = 0;
    v241 = MEMORY[0x277D84F90];
    v6 = v219;
    a3 = v234;
    while (v118 < *(v226 + 2))
    {
      v119 = (*(v242 + 80) + 32) & ~*(v242 + 80);
      v21 = *(v242 + 72);
      sub_22F2F3FA0(&v226[v119 + v21 * v118], a3, type metadata accessor for PersonalTraitInfo);
      if (a3[3] < 1)
      {
        sub_22F2F4070(a3, type metadata accessor for PersonalTraitInfo);
      }

      else
      {
        sub_22F2F4008(a3, v238, type metadata accessor for PersonalTraitInfo);
        v120 = v241;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v245 = v120;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146B50(0, v120[2] + 1, 1);
          v120 = v245;
        }

        v123 = v120[2];
        v122 = v120[3];
        a1 = (v123 + 1);
        if (v123 >= v122 >> 1)
        {
          sub_22F146B50((v122 > 1), v123 + 1, 1);
          v120 = v245;
        }

        v120[2] = a1;
        v241 = v120;
        sub_22F2F4008(v238, v120 + v119 + v123 * v21, type metadata accessor for PersonalTraitInfo);
        v6 = v219;
        a3 = v234;
      }

      if (v117 == ++v118)
      {
        goto LABEL_83;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v241 = MEMORY[0x277D84F90];
  v6 = v219;
LABEL_83:
  v124 = [v6 numberOfAssetsByMomentUUID];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v125 = sub_22F740CA0();

  v126 = v221;
  v221 = sub_22F2F2AFC(v125);

  v127 = sub_22F161C68(v223);
  if (*(v127 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1230, &qword_22F770AE0);
    v128 = sub_22F741DF0();
  }

  else
  {
    v128 = MEMORY[0x277D84F98];
  }

  v129 = v233;
  v130 = v222;
  v245 = v128;
  sub_22F2F3674(v127, 1, &v245);
  v14 = v126;
  if (v126)
  {
LABEL_166:

    v200 = v14;
LABEL_169:

    __break(1u);
    return result;
  }

  v243 = v245;
  if (v130)
  {
    v238 = 0;
    v245 = v26;
    sub_22F14663C(0, v130, 0);
    v131 = v130;
    v26 = v245;
    v132 = v223 + 6;
    do
    {
      v134 = *(v132 - 2);
      v133 = *(v132 - 1);
      v21 = *(*v132 + 16);
      v245 = v26;
      v136 = *(v26 + 16);
      v135 = *(v26 + 24);

      if (v136 >= v135 >> 1)
      {
        sub_22F14663C((v135 > 1), v136 + 1, 1);
        v26 = v245;
      }

      *(v26 + 16) = v136 + 1;
      v137 = (v26 + 24 * v136);
      v137[4] = v134;
      v137[5] = v133;
      v137[6] = v21;
      v132 += 3;
      --v131;
    }

    while (v131);
    a1 = v235;
    v129 = v233;
    v14 = v238;
    goto LABEL_95;
  }

  if (*(v26 + 16))
  {
    a1 = v235;
LABEL_95:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
    v138 = sub_22F741DF0();
    goto LABEL_96;
  }

  v138 = MEMORY[0x277D84F98];
  a1 = v235;
LABEL_96:
  v245 = v138;
  sub_22F2F38DC(v26, 1, &v245);
  v6 = v218;
  v139 = v241;
  v202 = v14;
  if (v14)
  {

    v200 = v202;
    goto LABEL_169;
  }

  v220 = v245;
  v140 = *(v139 + 16);
  v141 = MEMORY[0x277D84F90];
  if (v140)
  {
    v246 = MEMORY[0x277D84F90];
    a3 = &v246;
    v211 = v140;
    sub_22F146ACC(0, v140, 0);
    v142 = v241;
    v26 = 0;
    v234 = v246;
    v217 = (v241 + ((*(v242 + 80) + 32) & ~*(v242 + 80)));
    v143 = (v214 + 2);
    v216 = (v214 + 11);
    v215 = *MEMORY[0x277D3C030];
    ++v214;
    v213 = *MEMORY[0x277D3C018];
    v212 += 13;
    v210 = v237 + 32;
    v222 = v143;
    while (v26 < *(v142 + 16))
    {
      sub_22F2F3FA0(v217 + *(v242 + 72) * v26, v129, type metadata accessor for PersonalTraitInfo);
      v144 = v129[4];
      sub_22F7402F0();
      v145 = *(v230 + 32);
      v14 = *v143;
      v146 = v231;
      (*v143)(v231, v145 + v129, a1);
      v6 = (*v216)(v146, a1);
      (*v214)(v146, a1);
      a3 = MEMORY[0x277D84F90];
      v238 = MEMORY[0x277D84F90];
      if (v6 == v215)
      {
        v223 = v145;
        v225 = v14;
        v232 = v26;
        a1 = (v144 + 64);
        v147 = 1 << *(v144 + 32);
        if (v147 < 64)
        {
          v148 = ~(-1 << v147);
        }

        else
        {
          v148 = -1;
        }

        v26 = v148 & *(v144 + 64);
        v21 = (v147 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v149 = 0;
        v150 = a3;
LABEL_119:
        v158 = v144;
        while (v26)
        {
          v151 = v26;
LABEL_111:
          v26 = (v151 - 1) & v151;
          if (v243[2])
          {
            v144 = v158;
            v153 = (*(v158 + 48) + ((v149 << 10) | (16 * __clz(__rbit64(v151)))));
            v154 = *v153;
            v6 = v153[1];

            a3 = v243;
            v155 = sub_22F1229E8(v154, v6);
            if ((v156 & 1) == 0)
            {

              goto LABEL_119;
            }

            a3 = *(v243[7] + 8 * v155);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v150 = sub_22F13EB2C(0, v150[2] + 1, 1, v150);
            }

            v14 = v150[2];
            v157 = v150[3];
            v6 = (v14 + 1);
            if (v14 >= v157 >> 1)
            {
              v150 = sub_22F13EB2C((v157 > 1), v14 + 1, 1, v150);
            }

            v158 = v144;
            v150[2] = v6;
            v150[v14 + 4] = a3;
          }
        }

        while (1)
        {
          v152 = v149 + 1;
          if (__OFADD__(v149, 1))
          {
            goto LABEL_158;
          }

          if (v152 >= v21)
          {
            v209 = v158;

            v244 = MEMORY[0x277D84FA0];
            v159 = v150[2];
            if (v159)
            {
              v160 = 0;
              v21 = (v150 + 4);
              while (v160 < v150[2])
              {
                a1 = *(v21 + 8 * v160);
                v26 = a1[2];

                if (v26)
                {
                  v14 = (a1 + 5);
                  do
                  {
                    v6 = *(v14 - 8);
                    v161 = *v14;

                    a3 = &v244;
                    sub_22F10BBDC(&v245, v6, v161);

                    v14 += 16;
                    --v26;
                  }

                  while (v26);
                }

                ++v160;

                if (v160 == v159)
                {
                  goto LABEL_128;
                }
              }

              goto LABEL_159;
            }

LABEL_128:

            v162 = v244;
            v163 = *(v244 + 16);
            if (v163)
            {
              v238 = sub_22F10B348(*(v244 + 16), 0);
              v164 = sub_22F11A438(&v245, v238 + 4, v163, v162);
              sub_22F0FF590(v245);
              v129 = v233;
              a3 = MEMORY[0x277D84F90];
              v26 = v232;
              v143 = v222;
              v14 = v225;
              v145 = v223;
              if (v164 != v163)
              {
                goto LABEL_165;
              }

              a1 = v235;
            }

            else
            {

              a3 = MEMORY[0x277D84F90];
              v238 = MEMORY[0x277D84F90];
              a1 = v235;
              v129 = v233;
              v26 = v232;
              v143 = v222;
              v14 = v225;
              v145 = v223;
            }

            break;
          }

          v151 = a1[v152];
          ++v149;
          if (v151)
          {
            v149 = v152;
            goto LABEL_111;
          }
        }
      }

      v165 = *v129;
      v232 = v129[1];
      (*v212)(v240, v213, v228);
      (v14)(v239, v145 + v129, a1);
      v166 = v129[2];
      v167 = *(v166 + 16);
      if (v167)
      {
        v223 = v165;
        v14 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
        v21 = swift_allocObject();
        v168 = _swift_stdlib_malloc_size(v21);
        v169 = v168 - 32;
        if (v168 < 32)
        {
          v169 = v168 - 17;
        }

        *(v21 + 16) = v167;
        *(v21 + 24) = 2 * (v169 >> 4);
        v225 = sub_22F11A438(&v245, (v21 + 32), v167, v166);
        v170 = v245;

        sub_22F0FF590(v170);
        if (v225 != v167)
        {
          __break(1u);
          goto LABEL_164;
        }

        v143 = v222;
        v129 = v233;
      }

      else
      {

        v21 = a3;
      }

      a3 = v229;
      sub_22F73FF80();
      sub_22F2F4070(v129, type metadata accessor for PersonalTraitInfo);
      v171 = v234;
      v246 = v234;
      v14 = v234[2];
      v172 = v234[3];
      v6 = (v14 + 1);
      a1 = v235;
      if (v14 >= v172 >> 1)
      {
        sub_22F146ACC((v172 > 1), v14 + 1, 1);
        a3 = v229;
        v171 = v246;
      }

      ++v26;
      v171[2] = v6;
      v173 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v234 = v171;
      (*(v237 + 32))(v171 + v173 + *(v237 + 72) * v14, a3, v236);
      v142 = v241;
      if (v26 == v211)
      {
        v141 = v234;
        goto LABEL_142;
      }
    }

    goto LABEL_161;
  }

LABEL_142:
  v245 = v141;
  v234 = v141;

  v174 = v202;
  sub_22F2EAB30(&v245);
  v175 = v174;
  v176 = v219;
  v177 = v204;
  if (v174)
  {
    v200 = v174;
    goto LABEL_169;
  }

  v178 = v245;

  v179 = sub_22F740B70();
  v180 = sub_22F7415F0();

  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v245 = v241;
    *v181 = 136380675;
    v182 = v178[2];
    if (v182)
    {
      v235 = v181;
      LODWORD(v238) = v180;
      v239 = v179;
      v240 = 0;
      v246 = MEMORY[0x277D84F90];
      sub_22F146454(0, v182, 0);
      v183 = v246;
      v243 = *(v237 + 16);
      v184 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v233 = v178;
      v185 = v178 + v184;
      v242 = *(v237 + 72);
      v237 += 16;
      v186 = (v237 - 8);
      do
      {
        v187 = v224;
        v188 = v236;
        (v243)(v224, v185, v236);
        v189 = sub_22F73FF90();
        v191 = v190;
        (*v186)(v187, v188);
        v246 = v183;
        v193 = v183[2];
        v192 = v183[3];
        if (v193 >= v192 >> 1)
        {
          sub_22F146454((v192 > 1), v193 + 1, 1);
          v183 = v246;
        }

        v183[2] = v193 + 1;
        v194 = &v183[2 * v193];
        v194[4] = v189;
        v194[5] = v191;
        v185 += v242;
        --v182;
      }

      while (v182);

      v177 = v204;
      v179 = v239;
      v175 = v240;
      LOBYTE(v180) = v238;
      v181 = v235;
    }

    else
    {

      v183 = MEMORY[0x277D84F90];
    }

    v195 = MEMORY[0x231900D40](v183, MEMORY[0x277D837D0]);
    v197 = v196;

    v198 = sub_22F145F20(v195, v197, &v245);

    *(v181 + 4) = v198;
    _os_log_impl(&dword_22F0FC000, v179, v180, "[PersonalTraitMomentGraphDataSource] Reduced and filtered traits: %{private}s", v181, 0xCu);
    v199 = v241;
    __swift_destroy_boxed_opaque_existential_0(v241);
    MEMORY[0x2319033A0](v199, -1, -1);
    MEMORY[0x2319033A0](v181, -1, -1);

    v176 = v219;
  }

  else
  {
  }

  sub_22F7416A0();
  if (v175)
  {

    goto LABEL_27;
  }

  sub_22F1B2BBC(0);

  return v234;
}

void *sub_22F2ED588(void *a1, void *a2)
{
  v185 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11F8, &unk_22F783C90);
  v169 = *(v4 - 8);
  v170 = v4;
  MEMORY[0x28223BE20](v4);
  v168 = &v146 - v5;
  v6 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v7 = v6 - 8;
  v172 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v173 = v8;
  v178 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F7407F0();
  v10 = objc_opt_self();
  v11 = sub_22F741410();
  v12 = *(v7 + 32);
  v174 = v2;
  v13 = *(v2 + v12);
  v14 = [v10 sceneNodesForSceneNames:v11 inGraph:v13];

  v15 = [a1 searchConfidenceSceneNodes];
  v181 = v14;
  v183 = v15;
  v16 = [v14 collectionByIntersecting_];
  v17 = objc_opt_self();
  v179 = v9;
  v18 = sub_22F741410();
  v175 = v13;
  v19 = [v17 sceneNodesForSceneNames:v18 inGraph:v13];

  v176 = a1;
  v20 = [a1 searchConfidenceEntityNetSceneNodes];
  v184 = v19;
  v182 = v20;
  v21 = [v19 collectionByIntersecting_];
  v203 = MEMORY[0x277D84F98];
  v204 = MEMORY[0x277D84F98];
  v205 = MEMORY[0x277D84F98];
  v196 = sub_22F120634(0, &qword_2810A8FE8, off_27887B390);
  v197 = &off_2843EB068;
  aBlock = v16;
  v22 = __swift_project_boxed_opaque_existential_1(&aBlock, v196);
  v23 = v16;
  v24 = [*v22 graph];
  v25 = v196;
  v26 = v197;
  __swift_project_boxed_opaque_existential_1(&aBlock, v196);
  v190 = &v203;
  p_aBlock = &aBlock;
  v192 = v24;
  (*(v26 + 4))(sub_22F2F41C0, v189, v25, v26);
  v27 = v196;
  v28 = v197;
  __swift_project_boxed_opaque_existential_1(&aBlock, v196);
  v188[2] = &v203;
  v29 = *(v28 + 5);
  v30 = v28;
  v31 = v23;
  v29(sub_22F2F41CC, v188, v27, v30);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v196 = sub_22F120634(0, &qword_2810A8F40, off_27887AD68);
  v197 = &off_2843EB098;
  aBlock = v21;
  v32 = __swift_project_boxed_opaque_existential_1(&aBlock, v196);
  v33 = v21;
  v34 = v185;
  v35 = [*v32 graph];
  v36 = v196;
  v37 = v197;
  __swift_project_boxed_opaque_existential_1(&aBlock, v196);
  v187[2] = &v203;
  v187[3] = &aBlock;
  v187[4] = v35;
  (*(v37 + 4))(sub_22F2F45E8, v187, v36, v37);
  v38 = v196;
  v39 = v197;
  __swift_project_boxed_opaque_existential_1(&aBlock, v196);
  v186[2] = &v203;
  (*(v39 + 5))(sub_22F2F4608, v186, v38, v39);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v40 = v34;
  v41 = v180;
  sub_22F741690();
  if (v41)
  {

LABEL_10:

    return v40;
  }

  v202 = MEMORY[0x277D84F90];
  v42 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8FF0, off_27887AD50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v43);
  v44 = [ObjCClassFromMetadata dominantSceneAssetsFilter];
  v167 = 0;
  v156 = v42;
  v45 = v176;
  v165 = v33;
  v46 = [v42 edgesFrom:v176 to:v33 matching:v44];

  v47 = objc_opt_self();
  v146 = objc_opt_self();
  v48 = [v146 dominantSceneAssetsFilter];
  v148 = v47;
  v164 = v31;
  v49 = [v47 edgesFrom:v45 to:v31 matching:v48];

  v160 = v49;
  v50 = [v49 elementIdentifiers];
  v159 = v46;
  v51 = [v46 elementIdentifiers];
  v52 = [v50 identifierSetByFormingUnion_];

  v53 = objc_allocWithZone(PGGraphEdgeCollection);
  v158 = v52;
  v163 = [v53 initWithGraph:v175 elementIdentifiers:v52];
  v54 = v174;
  v55 = sub_22F740810();
  v56 = v167;
  v57 = sub_22F2EA170(v55);
  v157 = v56;

  v177 = sub_22F1515F8(v57);

  v171 = v203;
  v166 = v204;
  v180 = v205;
  v167 = @"numberOfDominantSceneAssets";
  v162 = [v34 childProgressReporterFromStart:0.2 toEnd:0.3];
  v200 = 1;
  v201 = MEMORY[0x277D84F90];
  v199 = 0;
  v161 = type metadata accessor for PersonalTraitMomentGraphDataSource;
  sub_22F2F3FA0(v54, v178, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v58 = v172[80];
  v59 = (v58 + 16) & ~v58;
  v60 = (v173 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 31) & 0xFFFFFFFFFFFFFFF8;
  v63 = ((v62 + 15) & 0xFFFFFFFFFFFFFFF8);
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v173 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = ((v173 + 15) & 0xFFFFFFFFFFFFFFF8);
  v149 = v58;
  v66 = swift_allocObject();
  v150 = v59;
  sub_22F2F4008(v178, v66 + v59, v161);
  v151 = v61;
  v152 = v60;
  *(v66 + v60) = v177;
  v67 = v66;
  v68 = (v66 + v61);
  v69 = v166;
  *v68 = v171;
  v68[1] = v69;
  v68[2] = v180;
  v154 = v64;
  v155 = v62;
  *(v67 + v62) = &v201;
  v161 = v63;
  v70 = v162;
  *(v63 + v67) = v162;
  *(v67 + v64) = &v200;
  v71 = v163;
  *(v67 + v173) = v163;
  v153 = v65;
  *&v65[v67] = &v199;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_22F2F41D4;
  *(v72 + 24) = v67;
  v172 = v67;
  v197 = sub_22F2F41D8;
  v198 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v194 = 1107296256;
  v195 = sub_22F2F0180;
  v196 = &block_descriptor_50;
  v73 = _Block_copy(&aBlock);

  v74 = v70;
  v75 = v71;

  v76 = v167;
  [v75 enumerateUnsignedIntegerPropertyValuesForKey:v167 withBlock:v73];

  _Block_release(v73);
  LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

  if (v76)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v199)
  {
    v77 = v199;

    swift_willThrow();

    v78 = v165;
LABEL_8:

    v40 = v201;

LABEL_9:

    goto LABEL_10;
  }

  v79 = v157;
  sub_22F7416A0();
  v80 = v184;
  v78 = v165;
  v81 = v179;
  if (v79)
  {

    goto LABEL_8;
  }

  v83 = v201;
  v84 = v199;

  sub_22F145888(v85, v83);
  v86 = [ObjCClassFromMetadata searchConfidenceAssetsFilter];
  v167 = 0;
  v87 = v176;
  v88 = [v156 edgesFrom:v176 to:v78 matching:v86];

  v89 = [v146 searchConfidenceAssetsFilter];
  v90 = [v148 &:v87 OBJC:v164 LABEL:v89 PROTOCOL:? :? :?PGGraphEvent + 1];

  v172 = v90;
  v91 = [v90 elementIdentifiers];
  v162 = v88;
  v92 = [v88 elementIdentifiers];
  v93 = [v91 identifierSetByFormingUnion_];

  v94 = objc_allocWithZone(PGGraphEdgeCollection);
  v95 = v175;
  v175 = v93;
  v176 = [v94 initWithGraph:v95 elementIdentifiers:v93];
  v96 = v167;
  v97 = sub_22F2EA170(v81);
  v167 = v96;

  v98 = sub_22F1515F8(v97);

  v99 = v177[2];
  v100 = *(v98 + 16);
  v163 = v75;
  if (v99 <= v100 >> 3)
  {
    aBlock = v98;
    sub_22F3E7FB8(v177);

    v101 = aBlock;
  }

  else
  {
    v101 = sub_22F1E999C(v177, v98);
  }

  v102 = v174;
  v103 = v178;
  v179 = @"numberOfSearchConfidenceAssets";
  v104 = [v185 childProgressReporterFromStart:0.4 toEnd:0.5];
  v178 = v104;
  v200 = 1;
  v201 = MEMORY[0x277D84F90];
  v199 = 0;
  sub_22F2F3FA0(v102, v103, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v105 = v153;
  v106 = swift_allocObject();
  sub_22F2F4008(v103, v106 + v150, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v107 = v151;
  *(v106 + v152) = v101;
  v108 = (v106 + v107);
  v65 = v171;
  v109 = v166;
  *v108 = v171;
  v108[1] = v109;
  v108[2] = v180;
  *(v106 + v155) = &v201;
  *(v161 + v106) = v104;
  *(v106 + v154) = &v200;
  v110 = v176;
  *(v106 + v173) = v176;
  *&v105[v106] = &v199;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_22F2F45DC;
  *(v111 + 24) = v106;
  v197 = sub_22F2F4614;
  v198 = v111;
  aBlock = MEMORY[0x277D85DD0];
  v194 = 1107296256;
  v195 = sub_22F2F0180;
  v196 = &block_descriptor_61;
  v112 = _Block_copy(&aBlock);

  v113 = v178;
  v114 = v110;

  v177 = v114;
  v115 = v179;
  [v114 enumerateUnsignedIntegerPropertyValuesForKey:v179 withBlock:v112];

  _Block_release(v112);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_35;
  }

  v118 = v182;
  v117 = v183;
  v119 = v181;
  v120 = v165;
  if (v199)
  {
    v121 = v199;

    swift_willThrow();

LABEL_20:
    v40 = v201;

    goto LABEL_9;
  }

  v122 = v167;
  sub_22F7416A0();
  if (v122)
  {

    goto LABEL_20;
  }

  v123 = v201;
  v124 = v199;

  sub_22F145888(v125, v123);
  v126 = v202;
  v127 = v202[2];
  v128 = MEMORY[0x277D84F90];
  v176 = v202;
  if (v127)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_22F146A8C(0, v127, 0);
    v128 = aBlock;
    v179 = type metadata accessor for PersonalTraitInfo(0);
    v129 = v126 + ((*(v179[-1].length + 80) + 32) & ~*(v179[-1].length + 80));
    v178 = *(v179[-1].length + 72);
    v130 = v170;
    v131 = v168;
    do
    {
      v132 = v131 + *(v130 + 48);
      sub_22F2F3FA0(v129, v132, type metadata accessor for PersonalTraitInfo);
      isa_low = SLODWORD(v179[1].isa);
      v134 = sub_22F73FFB0();
      (*(*(v134 - 8) + 16))(v131, v132 + isa_low, v134);
      aBlock = v128;
      v136 = *(v128 + 16);
      v135 = *(v128 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_22F146A8C((v135 > 1), v136 + 1, 1);
        v128 = aBlock;
      }

      *(v128 + 16) = v136 + 1;
      sub_22F2F44F8(v131, v128 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v136);
      v129 += v178;
      --v127;
      v130 = v170;
    }

    while (v127);
  }

  if (*(v128 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0AB8, &qword_22F770C50);
    v137 = sub_22F741DF0();
  }

  else
  {
    v137 = MEMORY[0x277D84F98];
  }

  aBlock = v137;
  sub_22F2F31DC(v128, 1, &aBlock);

  v138 = aBlock;
  sub_22F7416A0();
  v139 = *(v138 + 16);
  v65 = v182;
  v140 = v165;
  if (!v139)
  {

    v40 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v40 = sub_22F10B560(*(v138 + 16), 0);
  v141 = *(type metadata accessor for PersonalTraitInfo(0) - 8);
  sub_22F11C024(&aBlock, v40 + ((*(v141 + 80) + 32) & ~*(v141 + 80)), v139, v138);
  v143 = v142;
  sub_22F0FF590(aBlock);
  if (v143 == v139)
  {

LABEL_33:
    v144 = v184;
    v145 = v162;

    return v40;
  }

LABEL_36:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2EE9C0(void *a1, void *a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(v7 + 36);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = objc_allocWithZone(PGGraphMeaningNodeCollection);
  v12 = [v9 sources];
  v13 = [v11 initWithGraph:v10 elementIdentifiers:v12];
  v36 = v13;

  v35 = [v13 count];
  v42 = MEMORY[0x277D84F90];
  v40 = 1;
  v41 = 0;
  sub_22F2F3FA0(v3, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonalTraitMomentGraphDataSource);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_22F2F4008(v34, v20 + v14, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v21 = v37;
  *(v20 + v15) = v37;
  *(v20 + v16) = &v42;
  v22 = v38;
  *(v20 + v17) = v38;
  *(v20 + v18) = &v40;
  v23 = v36;
  *(v20 + v19) = v35;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v41;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22F2F40D0;
  *(v24 + 24) = v20;
  aBlock[4] = sub_22F20AE34;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  aBlock[3] = &block_descriptor_39_0;
  v25 = _Block_copy(aBlock);
  v26 = v21;
  v22;

  [v23 enumerateIdentifiersAsCollectionsWithBlock_];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    v28 = v41;
    if (v41)
    {
      swift_willThrow();
      v29 = v28;
    }

    else
    {
      v30 = v33;
      sub_22F7416A0();

      if (!v30)
      {
        v31 = v42;
        v32 = v41;

        return v31;
      }
    }

    v31 = v42;

    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2EED50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3490, &qword_22F783C88);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  v7 = sub_22F73FFB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v44 - v11;
  v12 = v2[4];
  v13 = *(a1 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v12;
  sub_22F2F2F58(v13, sub_22F2F2D5C, 0, isUniquelyReferenced_nonNull_native, &v50);

  v15 = v50;
  v44 = type metadata accessor for PersonalTraitInfo(0);
  v16 = *(v44 + 32);
  v17 = *(v4 + 48);
  v18 = *(v8 + 16);
  v18(v6, v2 + v16, v7);
  v46 = a1;
  v18(&v6[v17], (a1 + v16), v7);
  v47 = v8;
  v19 = *(v8 + 88);
  if (v19(v6, v7) == *MEMORY[0x277D3C020] && v19(&v6[v17], v7) == *MEMORY[0x277D3C030])
  {
    v20 = *(v47 + 8);
    v20(&v6[v17], v7);
    v21 = (v46 + v16);
    v22 = v48;
    v18(v48, v21, v7);
    v20(v6, v7);
  }

  else
  {
    v23 = v2 + v16;
    v22 = v48;
    v18(v48, v23, v7);
    sub_22F120ADC(v6, &qword_27DAB3490, &qword_22F783C88);
  }

  v24 = v2[2];

  v26 = sub_22F144608(v25, v24);
  v27 = *v2;
  v28 = v2[1];
  v18(v49, v22, v7);
  v29 = 0;
  v30 = 0;
  v31 = v45;
  *v45 = v27;
  *(v31 + 1) = v28;
  *(v31 + 4) = v15;
  v32 = 1 << *(v15 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v15 + 64);
  v35 = (v32 + 63) >> 6;
  v36 = v47;
  while (v34)
  {
    v37 = v29;
LABEL_14:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = *(*(v15 + 56) + ((v37 << 9) | (8 * v38)));
    v40 = __OFADD__(v30, v39);
    v30 += v39;
    if (v40)
    {
      __break(1u);
LABEL_17:
      v41 = v36;
      v42 = *(v36 + 8);

      v42(v48, v7);

      *(v31 + 3) = v30;
      result = (*(v41 + 32))(&v31[*(v44 + 32)], v49, v7);
      *(v31 + 2) = v26;
      return result;
    }
  }

  while (1)
  {
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v37 >= v35)
    {
      goto LABEL_17;
    }

    v34 = *(v15 + 64 + 8 * v37);
    ++v29;
    if (v34)
    {
      v29 = v37;
      goto LABEL_14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2EF17C()
{
  sub_22F73FF70();
  v1 = v0;
  sub_22F73FF70();
  if (v1 == v2)
  {
    sub_22F73FF90();
    sub_22F160DE4();
    v3 = sub_22F7418F0();

    sub_22F73FF90();
    v4 = sub_22F7418F0();

    if (v3 == v4)
    {
      v5 = sub_22F73FF90();
      v7 = v6;
      if (v5 == sub_22F73FF90() && v7 == v8)
      {

        v9 = 0;
      }

      else
      {
        v9 = sub_22F742040();
      }
    }

    else
    {
      v9 = v3 < v4;
    }
  }

  else
  {
    sub_22F73FF70();
    v11 = v10;
    sub_22F73FF70();
    v9 = v12 < v11;
  }

  return v9 & 1;
}

uint64_t sub_22F2EF2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v39 = a7;
  v40 = a8;
  v36 = a5;
  v37 = a6;
  v38 = a4;
  v35 = a3;
  v43 = a11;
  v41 = a12;
  v42 = a10;
  v14 = type metadata accessor for PersonalTraitInfo(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3498, &unk_22F783CA0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v35 - v25;
  sub_22F2EF674(a1, a2, v36, v37, v39, v40, &v35 - v25);
  sub_22F13BA9C(v26, v23, &qword_27DAB3498, &unk_22F783CA0);
  if ((*(v15 + 48))(v23, 1, v14) == 1)
  {
    sub_22F120ADC(v23, &qword_27DAB3498, &unk_22F783CA0);
  }

  else
  {
    sub_22F2F4008(v23, v20, type metadata accessor for PersonalTraitInfo);
    sub_22F2F3FA0(v20, v17, type metadata accessor for PersonalTraitInfo);
    v27 = *a9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a9 = v27;
    v29 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_22F13FA8C(0, v27[2] + 1, 1, v27);
      *a9 = v27;
    }

    v31 = v27[2];
    v30 = v27[3];
    if (v31 >= v30 >> 1)
    {
      *a9 = sub_22F13FA8C((v30 > 1), v31 + 1, 1, v27);
    }

    sub_22F2F4070(v20, type metadata accessor for PersonalTraitInfo);
    v32 = *a9;
    v32[2] = v31 + 1;
    sub_22F2F4008(v29, v32 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31, type metadata accessor for PersonalTraitInfo);
  }

  v33 = v43;
  [v41 count];
  sub_22F741680();
  result = sub_22F120ADC(v26, &qword_27DAB3498, &unk_22F783CA0);
  if (__OFADD__(*v33, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v33;
  }

  return result;
}

uint64_t sub_22F2EF674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v110 = a4;
  v103 = a2;
  v113 = a7;
  v11 = type metadata accessor for PersonalTraitInfo(0);
  v114 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v106 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = sub_22F73FFB0();
  v108 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = (&v102 - v15);
  v16 = *(v7 + *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 24));
  v17 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  v18 = v16;
  v19 = [v17 initWithElementIdentifier_];
  v20 = [objc_allocWithZone(MEMORY[0x277D22C18]) initWithGraph:v18 elementIdentifiers:v19];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AA8, &qword_22F770C40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v21);
  v111 = v20;
  v112 = [ObjCClassFromMetadata targetNodesOfEdges_];
  v23 = [v112 elementIdentifiers];
  v24 = [v23 firstElement];

  if (*(a5 + 16) && (v25 = sub_22F122B68(v24), (v26 & 1) != 0))
  {
    v102 = v11;
    v27 = (*(a5 + 56) + 16 * v25);
    v11 = *v27;
    v28 = v27[1];

    if ((sub_22F15E910(v11, v28, a3) & 1) == 0)
    {
      if (qword_2810AC5A0 == -1)
      {
LABEL_32:
        v77 = sub_22F740B90();
        __swift_project_value_buffer(v77, qword_2810B5038);

        v78 = sub_22F740B70();
        v79 = sub_22F7415D0();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v115[0] = v81;
          *v80 = 136315138;
          v82 = sub_22F145F20(v11, v28, v115);

          *(v80 + 4) = v82;
          _os_log_impl(&dword_22F0FC000, v78, v79, "[PersonalTraitMomentGraphDataSource] Skipping scene %s that is not accepted for personal traits.", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x2319033A0](v81, -1, -1);
          MEMORY[0x2319033A0](v80, -1, -1);
        }

        else
        {
        }

        v73 = v113;
        v74 = *(v114 + 56);
        v75 = v102;
        goto LABEL_28;
      }

LABEL_49:
      swift_once();
      goto LABEL_32;
    }

    v29 = objc_allocWithZone(MEMORY[0x277D22BB0]);
    v30 = v18;
    v31 = [v29 initWithElementIdentifier_];
    v32 = [objc_allocWithZone(PGGraphEdgeCollection) initWithGraph:v30 elementIdentifiers:v31];

    v33 = [objc_opt_self() sourceNodesOfEdges_];
    v34 = [v33 uuids];
    v35 = sub_22F741420();

    v36 = sub_22F15ABD4(v35);
    v38 = v37;

    if (!v38)
    {
      v83 = v102;
      if (qword_2810AC5A0 != -1)
      {
        swift_once();
      }

      v84 = sub_22F740B90();
      __swift_project_value_buffer(v84, qword_2810B5038);
      v85 = sub_22F740B70();
      v86 = sub_22F7415E0();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v115[0] = v88;
        *v87 = 136315138;
        v89 = sub_22F741750();
        v91 = sub_22F145F20(v89, v90, v115);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_22F0FC000, v85, v86, "[PersonalTraitMomentGraphDataSource] Missing moment node at source of graph edge with identifier %s.", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x2319033A0](v88, -1, -1);
        MEMORY[0x2319033A0](v87, -1, -1);
      }

      v73 = v113;
      v74 = *(v114 + 56);
      v75 = v83;
      goto LABEL_28;
    }

    v39 = v110;
    v11 = v102;
    if (*(v110 + 16))
    {
      v40 = sub_22F122B68(v24);
      if (v41)
      {
        if (*(v109 + 16))
        {
          v42 = *(*(v39 + 56) + 8 * v40);
          v43 = sub_22F122B68(v24);
          if (v44)
          {
            v45 = (*(v109 + 56) + 16 * v43);
            v47 = *v45;
            v46 = v45[1];

            if (sub_22F740F10() >= 1)
            {
              v110 = v47;
              v48 = v107;
              *v107 = v42;
              v49 = v105;
              (*(v108 + 104))(v48, *MEMORY[0x277D3C020], v105);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11C8, qword_22F783CB0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_22F771340;
              *(inited + 32) = v36;
              v51 = inited + 32;
              v52 = v103;
              *(inited + 40) = v38;
              *(inited + 48) = v52;
              v28 = sub_22F14F1C0(inited);
              swift_setDeallocating();
              sub_22F120ADC(v51, &qword_27DAB11D0, &qword_22F771600);
              v53 = v104;
              (*(v108 + 16))(v104, v48, v49);
              v54 = 0;
              v55 = 0;
              v56 = v106;
              *v106 = v110;
              v56[1] = v46;
              v56[4] = v28;
              v57 = 1 << *(v28 + 32);
              v58 = -1;
              if (v57 < 64)
              {
                v58 = ~(-1 << v57);
              }

              v59 = v58 & *(v28 + 64);
              v60 = (v57 + 63) >> 6;
              while (v59)
              {
                v61 = v54;
LABEL_19:
                v62 = __clz(__rbit64(v59));
                v59 &= v59 - 1;
                v63 = *(*(v28 + 56) + ((v61 << 9) | (8 * v62)));
                v64 = __OFADD__(v55, v63);
                v55 += v63;
                if (v64)
                {
                  __break(1u);
                  goto LABEL_22;
                }
              }

              while (1)
              {
                v61 = v54 + 1;
                if (__OFADD__(v54, 1))
                {
                  break;
                }

                if (v61 >= v60)
                {

                  v92 = v108;
                  (*(v108 + 8))(v107, v49);

                  v56[3] = v55;
                  (*(v92 + 32))(v56 + *(v11 + 32), v53, v49);
                  v56[2] = MEMORY[0x277D84FA0];
                  v93 = v113;
                  sub_22F2F4008(v56, v113, type metadata accessor for PersonalTraitInfo);
                  return (*(v114 + 56))(v93, 0, 1, v11);
                }

                v59 = *(v28 + 64 + 8 * v61);
                ++v54;
                if (v59)
                {
                  v54 = v61;
                  goto LABEL_19;
                }
              }

              __break(1u);
              goto LABEL_49;
            }
          }
        }
      }
    }

    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v94 = sub_22F740B90();
    __swift_project_value_buffer(v94, qword_2810B5038);
    v95 = sub_22F740B70();
    v96 = sub_22F7415E0();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v115[0] = v98;
      *v97 = 136315138;
      v99 = sub_22F741750();
      v101 = sub_22F145F20(v99, v100, v115);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_22F0FC000, v95, v96, "Unexpectedly encountered node identifier %s that wasn't cached before.", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x2319033A0](v98, -1, -1);
      MEMORY[0x2319033A0](v97, -1, -1);
    }
  }

  else
  {
LABEL_22:
    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v65 = sub_22F740B90();
    __swift_project_value_buffer(v65, qword_2810B5038);
    v66 = sub_22F740B70();
    v67 = sub_22F7415E0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v115[0] = v69;
      *v68 = 136315138;
      v70 = sub_22F741750();
      v72 = sub_22F145F20(v70, v71, v115);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_22F0FC000, v66, v67, "[PersonalTraitMomentGraphDataSource] Missing localized name for graph node with element id %s.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x2319033A0](v69, -1, -1);
      MEMORY[0x2319033A0](v68, -1, -1);
    }
  }

  v73 = v113;
  v74 = *(v114 + 56);
  v75 = v11;
LABEL_28:

  return v74(v73, 1, 1, v75);
}

void sub_22F2F01B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v98 = a6;
  v100 = a4;
  v92 = a10;
  v94 = a9;
  v95 = a7;
  v99 = sub_22F73FFB0();
  v14 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v16 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for PersonalTraitInfo(0);
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v18 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v97 = &v86 - v21;
  v22 = [a2 localizedNames];
  v23 = sub_22F741420();

  v101 = sub_22F15ABD4(v23);
  v25 = v24;

  if (!v25)
  {
LABEL_10:
    if (qword_2810AC5A0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

  v90 = a8;
  v26 = a3;
  v27 = [a2 labels];
  v28 = sub_22F741420();

  v91 = sub_22F15ABD4(v28);
  v30 = v29;

  if (!v30)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (sub_22F740F10() < 1)
  {

    goto LABEL_9;
  }

  v87 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v31 = v100 + *(v87 + 28);
  v33 = *v31;
  v32 = *(v31 + 8);
  v34 = [a2 elementIdentifiers];
  v35 = [v33 targetsForSources_];

  v36 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:v32 elementIdentifiers:v35];
  v88 = v36;
  v89 = [v36 collectionByIntersecting_];
  v37 = sub_22F740E20();
  v39 = v91;
  v86 = v26;
  if (v91 == v37 && v30 == v38)
  {
    v40 = 32;
    v41 = v14;
    v42 = v99;
LABEL_7:
    v43 = v87;

LABEL_19:
    v53 = v100 + *(v43 + v40);
    v54 = *v53;
    v55 = *(v53 + 8);
    v56 = v89;
    v57 = [v89 elementIdentifiers];
    v58 = [v54 targetsForSources_];

    v59 = [objc_allocWithZone(PGGraphPersonNodeCollection) initWithGraph:v55 elementIdentifiers:v58];
    v60 = [v59 uuids];

    v61 = sub_22F741420();
    goto LABEL_20;
  }

  v52 = sub_22F742040();

  v41 = v14;
  if (v52)
  {
    v40 = 32;
    v42 = v99;
LABEL_18:
    v43 = v87;
    goto LABEL_19;
  }

  v83 = sub_22F740E20();
  v42 = v99;
  if (v39 == v83 && v30 == v84)
  {
    v40 = 36;
    goto LABEL_7;
  }

  v85 = sub_22F742040();

  if (v85)
  {
    v40 = 36;
    goto LABEL_18;
  }

  v61 = MEMORY[0x277D84FA0];
  v56 = v89;
LABEL_20:
  *v16 = v91;
  v16[1] = v30;
  (*(v41 + 104))(v16, *MEMORY[0x277D3C030], v42);
  v62 = [v56 numberOfAssetsByMomentUUID];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v63 = sub_22F740CA0();

  v64 = sub_22F2F2AFC(v63);

  v65 = 0;
  v66 = 0;
  *v18 = v101;
  v18[1] = v25;
  v18[4] = v64;
  v67 = 1 << LOBYTE(v64[4].isa);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  isa = v68 & v64[8].isa;
  v70 = (v67 + 63) >> 6;
  while (isa)
  {
    v71 = v65;
LABEL_29:
    v72 = __clz(__rbit64(isa));
    isa &= isa - 1;
    v73 = *(v64[7].isa + ((v71 << 9) | (8 * v72)));
    v74 = __OFADD__(v66, v73);
    v66 = (v66 + v73);
    if (v74)
    {
      __break(1u);
LABEL_32:
      v18[3] = v66;
      (*(v41 + 32))(v18 + *(v96 + 32), v16, v42);
      v18[2] = v61;
      v75 = v97;
      sub_22F2F4008(v18, v97, type metadata accessor for PersonalTraitInfo);
      v76 = v98;
      v77 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = sub_22F13FA8C(0, v77[2] + 1, 1, v77);
        *v76 = v77;
      }

      v79 = v93;
      v81 = v77[2];
      v80 = v77[3];
      if (v81 >= v80 >> 1)
      {
        v77 = sub_22F13FA8C((v80 > 1), v81 + 1, 1, v77);
        *v76 = v77;
      }

      v77[2] = v81 + 1;
      sub_22F2F4008(v75, v77 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v81, type metadata accessor for PersonalTraitInfo);
      v82 = v90;
      sub_22F741680();

      if (__OFADD__(*v82, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v82;
      }

      return;
    }
  }

  while (1)
  {
    v71 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v71 >= v70)
    {
      goto LABEL_32;
    }

    isa = v64[v71 + 8].isa;
    ++v65;
    if (isa)
    {
      v65 = v71;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_11:
  v44 = sub_22F740B90();
  __swift_project_value_buffer(v44, qword_2810B5038);
  v101 = sub_22F740B70();
  v45 = sub_22F7415E0();
  if (os_log_type_enabled(v101, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v102 = v47;
    *v46 = 136315138;
    v48 = sub_22F741750();
    v50 = sub_22F145F20(v48, v49, &v102);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_22F0FC000, v101, v45, "[PersonalTraitMomentGraphDataSource] Missing localized name for PGGraphMeaningNode with element id %s.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x2319033A0](v47, -1, -1);
    MEMORY[0x2319033A0](v46, -1, -1);
  }

  else
  {
    v51 = v101;
  }
}

uint64_t sub_22F2F0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_22F131FC0(a2, a1, isUniquelyReferenced_nonNull_native);
  *a4 = v26[0];

  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  DynamicType = swift_getDynamicType();
  v13 = a5[4];
  v14 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  swift_unknownObjectRetain();
  v15 = [v14 initWithElementIdentifier_];
  v16 = *(v13 + 24);
  v26[3] = DynamicType;
  v26[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v26);
  v16(a6, v15, DynamicType, v13);
  v17 = (*(v13 + 16))(DynamicType, v13);
  sub_22F15ABD4(v17);
  v19 = v18;

  if (v19)
  {
    v20 = sub_22F740EA0();
    v22 = v21;

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v25 = a4[1];
    a4[1] = 0x8000000000000000;
    sub_22F1319BC(v20, v22, a1, v23);
    a4[1] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

unint64_t sub_22F2F0C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  result = sub_22F1319BC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *(a5 + 16) = v11;
  return result;
}

uint64_t sub_22F2F0D14()
{
  v1 = [*v0 labels];
  v2 = sub_22F741420();

  return v2;
}

void sub_22F2F0D6C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a3)) initWithGraph:a1 elementIdentifiers:a2];
  swift_unknownObjectRelease();

  *a3 = v5;
}

uint64_t sub_22F2F0DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[4] = a6;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22F2F0CB8;
  v16[3] = a7;
  v14 = _Block_copy(v16);

  [v12 enumerateSceneIdentifiersUsingBlock_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F2F0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[4] = a6;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22F2136B4;
  v16[3] = a7;
  v14 = _Block_copy(v16);

  [v12 enumerateLocalizedNamesUsingBlock_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

void sub_22F2F1038(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F73FFC0();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F73FFC0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2F1538(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2F1164(0, v2, 1, a1);
  }
}

void sub_22F2F1164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73FFC0();
  MEMORY[0x28223BE20](v8);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v49 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v59 = (v19 - 8);
    v60 = v20;
    v61 = v19;
    v22 = (v18 + v21 * (a3 - 1));
    v55 = -v21;
    v56 = (v19 + 16);
    v23 = a1 - a3;
    v57 = v18;
    v48 = v21;
    v24 = v18 + v21 * a3;
    v54 = v8;
LABEL_6:
    v52 = v22;
    v53 = a3;
    v50 = v24;
    v51 = v23;
    while (1)
    {
      v26 = v60;
      (v60)(v17, v24, v8, v15);
      v26(v12, v22, v8);
      sub_22F73FF70();
      v28 = v27;
      sub_22F73FF70();
      if (v28 == v29)
      {
        v62 = sub_22F73FF90();
        v63 = v30;
        sub_22F160DE4();
        v31 = v17;
        v32 = sub_22F7418F0();

        v62 = sub_22F73FF90();
        v63 = v33;
        v34 = sub_22F7418F0();

        if (v32 == v34)
        {
          v35 = sub_22F73FF90();
          v37 = v36;
          v17 = v31;
          if (v35 == sub_22F73FF90() && v37 == v38)
          {

            v25 = *v59;
            v8 = v54;
            (*v59)(v12, v54);
            v25(v17, v8);
LABEL_5:
            a3 = v53 + 1;
            v22 = &v52[v48];
            v23 = v51 - 1;
            v24 = v50 + v48;
            if (v53 + 1 == v49)
            {
              return;
            }

            goto LABEL_6;
          }

          v39 = sub_22F742040();
        }

        else
        {
          v39 = v32 < v34;
          v17 = v31;
        }

        v8 = v54;
      }

      else
      {
        sub_22F73FF70();
        v41 = v40;
        sub_22F73FF70();
        v39 = v42 < v41;
      }

      v43 = *v59;
      (*v59)(v12, v8);
      v43(v17, v8);
      if ((v39 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v44 = *v56;
      v45 = v58;
      (*v56)(v58, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v44(v22, v45, v8);
      v22 += v55;
      v24 += v55;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F2F1538(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v156 = a1;
  v6 = sub_22F73FFC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v163 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v176 = &v153 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v153 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v153 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v153 - v18;
  MEMORY[0x28223BE20](v20);
  v169 = &v153 - v21;
  MEMORY[0x28223BE20](v22);
  v153 = &v153 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v157 = &v153 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v156;
    if (!*v156)
    {
      goto LABEL_158;
    }

    v19 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v172;
    if (isUniquelyReferenced_nonNull_native)
    {
      v147 = v19;
    }

    else
    {
LABEL_152:
      v147 = sub_22F3F5F98(v19);
    }

    v183 = v147;
    v19 = *(v147 + 2);
    if (v19 >= 2)
    {
      while (*a3)
      {
        v148 = *&v147[16 * v19];
        v149 = v147;
        v150 = *&v147[16 * v19 + 24];
        sub_22F2F22E8((*a3 + v7[9] * v148), (*a3 + v7[9] * *&v147[16 * v19 + 16]), *a3 + v7[9] * v150, a4);
        if (v16)
        {
          goto LABEL_130;
        }

        if (v150 < v148)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_22F3F5F98(v149);
        }

        if (v19 - 2 >= *(v149 + 2))
        {
          goto LABEL_146;
        }

        v151 = &v149[16 * v19];
        *v151 = v148;
        *(v151 + 1) = v150;
        v183 = v149;
        sub_22F3F5F0C(v19 - 1);
        v147 = v183;
        v19 = *(v183 + 2);
        if (v19 <= 1)
        {
          goto LABEL_130;
        }
      }

      goto LABEL_156;
    }

    goto LABEL_130;
  }

  v28 = 0;
  v179 = v7 + 2;
  v180 = v7 + 1;
  v178 = v7 + 4;
  v29 = MEMORY[0x277D84F90];
  v160 = a3;
  v173 = v6;
  v155 = a4;
  v170 = v13;
  v161 = v19;
  v154 = v7;
  v159 = v16;
  while (1)
  {
    v30 = v28 + 1;
    v164 = v29;
    if (v28 + 1 < v27)
    {
      v171 = v27;
      v158 = v28;
      v31 = *a3;
      v32 = v7[9];
      v33 = (*a3 + v32 * v30);
      v34 = v7[2];
      v34(v157, v33, v6, v25);
      v177 = v31;
      v175 = v32;
      v35 = &v31[v32 * v158];
      v36 = v153;
      v168 = v34;
      (v34)(v153, v35, v6);
      v37 = v172;
      LODWORD(v174) = sub_22F2EF17C();
      if (!v37)
      {
        v172 = 0;
        v38 = *v180;
        (*v180)(v36, v6);
        v167 = v38;
        (v38)(v157, v6);
        v39 = v158 + 2;
        v40 = v175;
        v41 = &v177[v175 * (v158 + 2)];
        do
        {
          if (v171 == v39)
          {
            v62 = v171;
            goto LABEL_21;
          }

          v47 = v168;
          v48 = v169;
          (v168)(v169, v41, v6);
          v47(v19, v33, v6);
          v49 = v19;
          sub_22F73FF70();
          v51 = v50;
          sub_22F73FF70();
          v177 = v33;
          if (v51 == v52)
          {
            v181 = sub_22F73FF90();
            v182 = v53;
            sub_22F160DE4();
            v54 = sub_22F7418F0();

            v181 = sub_22F73FF90();
            v182 = v55;
            v56 = sub_22F7418F0();

            if (v54 == v56)
            {
              v57 = sub_22F73FF90();
              v59 = v58;
              v60 = sub_22F73FF90();
              v13 = v170;
              if (v57 == v60 && v59 == v61)
              {

                v45 = 0;
              }

              else
              {
                v45 = sub_22F742040();
              }

              v6 = v173;
              v49 = v161;
              v48 = v169;
            }

            else
            {
              v45 = v54 < v56;
              v6 = v173;
              v13 = v170;
            }
          }

          else
          {
            sub_22F73FF70();
            v43 = v42;
            sub_22F73FF70();
            v45 = v44 < v43;
          }

          v46 = v167;
          (v167)(v49, v6);
          v46(v48, v6);
          ++v39;
          v40 = v175;
          v41 += v175;
          v33 = &v177[v175];
          v19 = v49;
        }

        while (((v174 ^ v45) & 1) == 0);
        v62 = v39 - 1;
LABEL_21:
        a3 = v160;
        v7 = v154;
        v63 = v164;
        a4 = v155;
        v16 = v159;
        v28 = v158;
        if (v174)
        {
          if (v62 < v158)
          {
            goto LABEL_151;
          }

          if (v158 < v62)
          {
            v19 = v40 * (v62 - 1);
            v64 = v62 * v40;
            v171 = v62;
            v65 = v62;
            v66 = v158;
            v67 = v158 * v40;
            do
            {
              if (v66 != --v65)
              {
                v69 = *a3;
                if (!v69)
                {
                  goto LABEL_155;
                }

                v70 = *v178;
                (*v178)(v163, &v69[v67], v173, v63);
                if (v67 < v19 || &v69[v67] >= &v69[v64])
                {
                  v68 = v173;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v68 = v173;
                  if (v67 != v19)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v70(&v69[v19], v163, v68);
                a3 = v160;
                v63 = v164;
                v13 = v170;
                v16 = v159;
                v40 = v175;
              }

              ++v66;
              v19 -= v40;
              v64 -= v40;
              v67 += v40;
            }

            while (v66 < v65);
            v7 = v154;
            v6 = v173;
            a4 = v155;
            v28 = v158;
            v62 = v171;
          }
        }

        goto LABEL_35;
      }

      v152 = *v180;
      (*v180)(v36, v6);
      v152(v157, v6);
LABEL_130:

      return;
    }

    v62 = v28 + 1;
LABEL_35:
    v71 = a3[1];
    if (v62 >= v71)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v62, v28))
    {
      goto LABEL_148;
    }

    if (v62 - v28 >= a4)
    {
LABEL_44:
      v73 = v62;
      if (v62 < v28)
      {
        goto LABEL_147;
      }

      goto LABEL_45;
    }

    if (__OFADD__(v28, a4))
    {
      goto LABEL_149;
    }

    if (v28 + a4 >= v71)
    {
      v72 = a3[1];
    }

    else
    {
      v72 = v28 + a4;
    }

    if (v72 < v28)
    {
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v62 == v72)
    {
      goto LABEL_44;
    }

    v121 = *a3;
    v122 = v7[9];
    v177 = v7[2];
    v123 = &v121[v122 * (v62 - 1)];
    v174 = -v122;
    v158 = v28;
    v124 = (v28 - v62);
    v175 = v121;
    v162 = v122;
    a4 = &v121[v62 * v122];
    v165 = v72;
LABEL_98:
    v171 = v62;
    v166 = a4;
    v167 = v124;
    v168 = v123;
    v126 = v123;
LABEL_99:
    v127 = v177;
    (v177)(v16, a4, v6, v25);
    v127(v13, v126, v6);
    sub_22F73FF70();
    v129 = v128;
    sub_22F73FF70();
    if (v129 != v130)
    {
      sub_22F73FF70();
      v142 = v141;
      sub_22F73FF70();
      v140 = v143 < v142;
      goto LABEL_106;
    }

    v181 = sub_22F73FF90();
    v182 = v131;
    sub_22F160DE4();
    v132 = v16;
    v133 = sub_22F7418F0();

    v181 = sub_22F73FF90();
    v182 = v134;
    v135 = sub_22F7418F0();

    if (v133 != v135)
    {
      break;
    }

    v136 = sub_22F73FF90();
    v138 = v137;
    v16 = v132;
    if (v136 != sub_22F73FF90() || v138 != v139)
    {
      v140 = sub_22F742040();

      v6 = v173;
      goto LABEL_106;
    }

    v19 = v180;
    v125 = *v180;
    v6 = v173;
    (*v180)(v13, v173);
    v125(v132, v6);
LABEL_97:
    v62 = v171 + 1;
    v123 = &v168[v162];
    v124 = v167 - 1;
    v73 = v165;
    a4 = v166 + v162;
    if (v171 + 1 != v165)
    {
      goto LABEL_98;
    }

    a3 = v160;
    v7 = v154;
    v28 = v158;
    if (v165 < v158)
    {
      goto LABEL_147;
    }

LABEL_45:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v164;
    }

    else
    {
      v29 = sub_22F13D970(0, *(v164 + 2) + 1, 1, v164);
    }

    v75 = *(v29 + 2);
    v74 = *(v29 + 3);
    v19 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v29 = sub_22F13D970((v74 > 1), v75 + 1, 1, v29);
    }

    *(v29 + 2) = v19;
    v76 = &v29[16 * v75];
    *(v76 + 4) = v28;
    *(v76 + 5) = v73;
    v165 = v73;
    v77 = *v156;
    if (!*v156)
    {
      goto LABEL_157;
    }

    if (v75)
    {
      while (2)
      {
        a4 = v19 - 1;
        if (v19 >= 4)
        {
          v82 = &v29[16 * v19 + 32];
          v83 = *(v82 - 64);
          v84 = *(v82 - 56);
          v88 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          if (v88)
          {
            goto LABEL_134;
          }

          v87 = *(v82 - 48);
          v86 = *(v82 - 40);
          v88 = __OFSUB__(v86, v87);
          v80 = v86 - v87;
          v81 = v88;
          if (v88)
          {
            goto LABEL_135;
          }

          v89 = &v29[16 * v19];
          v91 = *v89;
          v90 = *(v89 + 1);
          v88 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v88)
          {
            goto LABEL_137;
          }

          v88 = __OFADD__(v80, v92);
          v93 = v80 + v92;
          if (v88)
          {
            goto LABEL_140;
          }

          if (v93 >= v85)
          {
            v111 = &v29[16 * a4 + 32];
            v113 = *v111;
            v112 = *(v111 + 1);
            v88 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v88)
            {
              goto LABEL_144;
            }

            if (v80 < v114)
            {
              a4 = v19 - 2;
            }
          }

          else
          {
LABEL_64:
            if (v81)
            {
              goto LABEL_136;
            }

            v94 = &v29[16 * v19];
            v96 = *v94;
            v95 = *(v94 + 1);
            v97 = __OFSUB__(v95, v96);
            v98 = v95 - v96;
            v99 = v97;
            if (v97)
            {
              goto LABEL_139;
            }

            v100 = &v29[16 * a4 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v88 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v88)
            {
              goto LABEL_142;
            }

            if (__OFADD__(v98, v103))
            {
              goto LABEL_143;
            }

            if (v98 + v103 < v80)
            {
              goto LABEL_78;
            }

            if (v80 < v103)
            {
              a4 = v19 - 2;
            }
          }
        }

        else
        {
          if (v19 == 3)
          {
            v78 = *(v29 + 4);
            v79 = *(v29 + 5);
            v88 = __OFSUB__(v79, v78);
            v80 = v79 - v78;
            v81 = v88;
            goto LABEL_64;
          }

          v104 = &v29[16 * v19];
          v106 = *v104;
          v105 = *(v104 + 1);
          v88 = __OFSUB__(v105, v106);
          v98 = v105 - v106;
          v99 = v88;
LABEL_78:
          if (v99)
          {
            goto LABEL_138;
          }

          v107 = &v29[16 * a4];
          v109 = *(v107 + 4);
          v108 = *(v107 + 5);
          v88 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v88)
          {
            goto LABEL_141;
          }

          if (v110 < v98)
          {
            break;
          }
        }

        v115 = a4 - 1;
        if (a4 - 1 >= v19)
        {
          __break(1u);
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v116 = v29;
        v19 = *&v29[16 * v115 + 32];
        v117 = *&v29[16 * a4 + 40];
        v118 = v172;
        sub_22F2F22E8((*a3 + v7[9] * v19), (*a3 + v7[9] * *&v29[16 * a4 + 32]), *a3 + v7[9] * v117, v77);
        v172 = v118;
        if (v118)
        {
          goto LABEL_130;
        }

        if (v117 < v19)
        {
          goto LABEL_132;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v119 = v116;
        }

        else
        {
          v119 = sub_22F3F5F98(v116);
        }

        v13 = v170;
        if (v115 >= *(v119 + 2))
        {
          goto LABEL_133;
        }

        v120 = &v119[16 * v115];
        *(v120 + 4) = v19;
        *(v120 + 5) = v117;
        v183 = v119;
        sub_22F3F5F0C(a4);
        v29 = v183;
        v19 = *(v183 + 2);
        v6 = v173;
        if (v19 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = a3[1];
    v28 = v165;
    a4 = v155;
    v19 = v161;
    if (v165 >= v27)
    {
      goto LABEL_116;
    }
  }

  v140 = v133 < v135;
  v6 = v173;
  v16 = v132;
LABEL_106:
  v19 = *v180;
  (*v180)(v13, v6);
  (v19)(v16, v6);
  if ((v140 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (v175)
  {
    v19 = *v178;
    v144 = v176;
    (*v178)(v176, a4, v6);
    swift_arrayInitWithTakeFrontToBack();
    (v19)(v126, v144, v6);
    v126 += v174;
    a4 += v174;
    if (__CFADD__(v124++, 1))
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
}

void sub_22F2F22E8(void (**a1)(char *, uint64_t, __n128), void (**a2)(char *, uint64_t, __n128), unint64_t a3, void (**a4)(char *, uint64_t, __n128))
{
  v87 = sub_22F73FFC0();
  v8 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v75 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v85 = *(v18 + 72);
  if (!v85)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return;
  }

  v88 = a2;
  if (a2 - a1 == 0x8000000000000000 && v85 == -1)
  {
    goto LABEL_80;
  }

  v19 = a3 - v88;
  if (a3 - v88 == 0x8000000000000000 && v85 == -1)
  {
    goto LABEL_81;
  }

  v20 = (a2 - a1) / v85;
  v92 = a4;
  v93 = a1;
  if (v20 >= v19 / v85)
  {
    v22 = v19 / v85 * v85;
    if (a4 < v88 || (v88 + v22) <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v88)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v22;
    if (v22 >= 1)
    {
      v47 = -v85;
      v78 = (v8 + 8);
      v79 = (v8 + 16);
      v48 = a4 + v22;
      v86 = a4;
      v83 = -v85;
      do
      {
        v76 = v46;
        v49 = v88;
        v88 = (v88 + v47);
        v80 = v49;
        while (1)
        {
          if (v49 <= a1)
          {
            v93 = v49;
            v91 = v76;
            goto LABEL_78;
          }

          v50 = a3;
          v77 = v46;
          v51 = v83;
          v52 = *v79;
          v53 = v81;
          v84 = v48 + v83;
          v85 = v48;
          v54 = v87;
          v52(v81);
          v55 = v82;
          (v52)(v82, v88, v54);
          sub_22F73FF70();
          v57 = v56;
          sub_22F73FF70();
          if (v57 == v58)
          {
            v89 = sub_22F73FF90();
            v90 = v59;
            sub_22F160DE4();
            v60 = sub_22F7418F0();

            v89 = sub_22F73FF90();
            v90 = v61;
            v62 = sub_22F7418F0();

            if (v60 == v62)
            {
              v63 = sub_22F73FF90();
              v65 = v64;
              if (v63 == sub_22F73FF90() && v65 == v66)
              {

                v67 = 0;
              }

              else
              {
                v67 = sub_22F742040();
              }

              a4 = v86;
              v53 = v81;
              v55 = v82;
            }

            else
            {
              v67 = v60 < v62;
              a4 = v86;
            }

            v51 = v83;
          }

          else
          {
            sub_22F73FF70();
            v69 = v68;
            sub_22F73FF70();
            v67 = v70 < v69;
          }

          a3 = v50 + v51;
          v71 = *v78;
          v72 = v55;
          v73 = v87;
          (*v78)(v72, v87);
          v71(v53, v73);
          if (v67)
          {
            break;
          }

          v74 = v84;
          v46 = v84;
          if (v50 < v85 || a3 >= v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v46;
          v49 = v80;
          if (v74 <= a4)
          {
            v88 = v80;
            goto LABEL_77;
          }
        }

        if (v50 < v80 || a3 >= v80)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v77;
        }

        else
        {
          v46 = v77;
          if (v50 != v80)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v48 = v85;
        v47 = v83;
      }

      while (v85 > a4);
    }

LABEL_77:
    v93 = v88;
    v91 = v46;
  }

  else
  {
    v21 = v20 * v85;
    if (a4 < a1 || (a1 + v21) <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = a3;
    v84 = a4 + v21;
    v91 = a4 + v21;
    v23 = v87;
    if (v21 >= 1 && v88 < a3)
    {
      v25 = v88;
      v81 = *(v8 + 16);
      v82 = (v8 + 16);
      v80 = (v8 + 8);
      do
      {
        v26 = v81;
        (v81)(v17, v25, v23);
        v26(v14, a4, v23);
        sub_22F73FF70();
        v28 = v27;
        sub_22F73FF70();
        if (v28 == v29)
        {
          v86 = a4;
          v88 = v25;
          v89 = sub_22F73FF90();
          v90 = v30;
          sub_22F160DE4();
          v31 = sub_22F7418F0();

          v89 = sub_22F73FF90();
          v90 = v32;
          v33 = sub_22F7418F0();

          if (v31 == v33)
          {
            v34 = sub_22F73FF90();
            v36 = v35;
            if (v34 == sub_22F73FF90() && v36 == v37)
            {

              v38 = *v80;
              (*v80)(v14, v23);
              (v38)(v17, v23);
              v25 = v88;
              a4 = v86;
              goto LABEL_35;
            }

            v42 = sub_22F742040();
          }

          else
          {
            v42 = v31 < v33;
          }

          v25 = v88;
          a4 = v86;
        }

        else
        {
          sub_22F73FF70();
          v40 = v39;
          sub_22F73FF70();
          v42 = v41 < v40;
        }

        v43 = *v80;
        (*v80)(v14, v23);
        (v43)(v17, v23);
        if (v42)
        {
          v44 = v85;
          if (a1 < v25 || a1 >= v25 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25 += v44;
          goto LABEL_43;
        }

LABEL_35:
        v44 = v85;
        v45 = a4 + v85;
        if (a1 < a4 || a1 >= v45)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v92 = v45;
        a4 = (a4 + v44);
LABEL_43:
        a1 = (a1 + v44);
        v93 = a1;
      }

      while (a4 < v84 && v25 < v83);
    }
  }

LABEL_78:
  sub_22F3B6708(&v93, &v92, &v91);
}

void *sub_22F2F2AFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
  result = sub_22F741DC0();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v25 + 56) + 8 * v15);

      result = [v19 integerValue];
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = result;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2F2CF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22F741A00();
  }

  return sub_22F741B50();
}

double sub_22F2F2D5C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

void sub_22F2F2D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22F10BBDC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

void sub_22F2F2E24(uint64_t a1)
{
  v2 = type metadata accessor for Song(0) - 8;
  MEMORY[0x28223BE20](v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_22F2F3FA0(v10, v4, type metadata accessor for Song);
      sub_22F10C40C(v8, v4);
      sub_22F2F4070(v8, type metadata accessor for Song);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_22F2F2F58(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;

    (a2)(&v42, v45);

    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = *v46;
    v25 = sub_22F1229E8(v42, v43);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_28;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v41 & 1) == 0)
      {
        sub_22F1341B0();
      }
    }

    else
    {
      sub_22F125704(v28, v41 & 1);
      v30 = sub_22F1229E8(v20, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v46;
    if (v29)
    {
      v12 = *(v32[7] + 8 * v25);

      if (v22 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v22;
      }

      *(v32[7] + 8 * v25) = v13;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v20;
      v33[1] = v21;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_29;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22F0FF590(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F2F31DC(uint64_t a1, char a2, void *a3)
{
  v55 = a3;
  v5 = type metadata accessor for PersonalTraitInfo(0);
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v43 - v8;
  MEMORY[0x28223BE20](v9);
  v54 = &v43 - v10;
  v11 = sub_22F73FFB0();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11F8, &unk_22F783C90);
  MEMORY[0x28223BE20](v14);
  v52 = &v43 - v17;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v15 + 48);
    v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v49 = *(v16 + 72);
    v50 = v19;
    v53 = (v47 + 32);
    v44 = (v47 + 8);
    while (1)
    {
      v28 = v52;
      sub_22F13BA9C(v20, v52, &qword_27DAB11F8, &unk_22F783C90);
      v29 = *v53;
      (*v53)(v13, v28, v11);
      sub_22F2F4008(v28 + v50, v54, type metadata accessor for PersonalTraitInfo);
      v30 = *v55;
      v32 = sub_22F1233A4(v13);
      v33 = v30[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        break;
      }

      v36 = v31;
      if (v30[3] >= v35)
      {
        if ((a2 & 1) == 0)
        {
          sub_22F13706C();
        }
      }

      else
      {
        sub_22F12A868(v35, a2 & 1);
        v37 = sub_22F1233A4(v13);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_17;
        }

        v32 = v37;
      }

      v39 = *v55;
      if (v36)
      {
        v21 = v39[7];
        v48 = *(v51 + 72) * v32;
        v22 = v46;
        sub_22F2F3FA0(v21 + v48, v46, type metadata accessor for PersonalTraitInfo);
        v23 = v45;
        v24 = v13;
        v25 = v11;
        v26 = v54;
        sub_22F2EED50(v54, v45);
        sub_22F2F4070(v22, type metadata accessor for PersonalTraitInfo);
        v27 = v26;
        v11 = v25;
        v13 = v24;
        sub_22F2F4070(v27, type metadata accessor for PersonalTraitInfo);
        (*v44)(v24, v11);
        sub_22F2F3B58(v23, v39[7] + v48);
      }

      else
      {
        v39[(v32 >> 6) + 8] |= 1 << v32;
        v29((v39[6] + *(v47 + 72) * v32), v13, v11);
        sub_22F2F4008(v54, v39[7] + *(v51 + 72) * v32, type metadata accessor for PersonalTraitInfo);
        v40 = v39[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_16;
        }

        v39[2] = v42;
      }

      v20 += v49;
      a2 = 1;
      if (!--v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_22F7420C0();
    __break(1u);
  }
}

void sub_22F2F3674(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  for (i = (a1 + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    v11 = sub_22F1229E8(v8, v7);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v10[3] < v16)
    {
      sub_22F127C90(v16, a2 & 1);
      v11 = sub_22F1229E8(v8, v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v19 = *v4;
      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v29 = v11;
    sub_22F135844();
    v11 = v29;
    v4 = a3;
    v19 = *a3;
    if ((v17 & 1) == 0)
    {
LABEL_25:
      v19[(v11 >> 6) + 8] |= 1 << v11;
      v30 = (v19[6] + 16 * v11);
      *v30 = v8;
      v30[1] = v7;
      *(v19[7] + 8 * v11) = v9;
      v31 = v19[2];
      v15 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v15)
      {
        goto LABEL_30;
      }

      v19[2] = v32;
      goto LABEL_5;
    }

LABEL_12:
    v20 = *(v19[7] + 8 * v11);
    v21 = *(v9 + 16);
    v22 = *(v20 + 2);
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    v34 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v25 = *(v20 + 3) >> 1, v25 < v23))
    {
      if (v22 <= v23)
      {
        v26 = v22 + v21;
      }

      else
      {
        v26 = v22;
      }

      v20 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v26, 1, v20);
      v25 = *(v20 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      if (v25 - *(v20 + 2) < v21)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v27 = *(v20 + 2);
        v15 = __OFADD__(v27, v21);
        v28 = v27 + v21;
        if (v15)
        {
          goto LABEL_33;
        }

        *(v20 + 2) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_31;
      }
    }

    *(v19[7] + 8 * v34) = v20;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_22F7420C0();
  __break(1u);
}

void sub_22F2F38DC(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_22F1229E8(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_22F125704(v16, v5 & 1);
    v11 = sub_22F1229E8(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_12:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v19[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    *(v19[7] + 8 * v11) = v9;
    v24 = v19[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19[2] = v25;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_15;
    }

    return;
  }

  v22 = v11;
  sub_22F1341B0();
  v11 = v22;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v20 = v11;
  v21 = *(v19[7] + 8 * v11);

  if (__OFADD__(v21, v9))
  {
LABEL_27:
    __break(1u);
    return;
  }

  *(v19[7] + 8 * v20) = v21 + v9;
  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_15:
    v5 = v6 + 9;
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v29 = *a3;

      v30 = sub_22F1229E8(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_25;
      }

      v8 = v31;
      if (v29[3] < v34)
      {
        sub_22F125704(v34, 1);
        v30 = sub_22F1229E8(v7, v6);
        if ((v8 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      v36 = *a3;
      if (v8)
      {
        v37 = v30;
        v38 = *(v36[7] + 8 * v30);

        if (__OFADD__(v38, v9))
        {
          goto LABEL_27;
        }

        *(v36[7] + 8 * v37) = v38 + v9;
      }

      else
      {
        v36[(v30 >> 6) + 8] |= 1 << v30;
        v26 = (v36[6] + 16 * v30);
        *v26 = v7;
        v26[1] = v6;
        *(v36[7] + 8 * v30) = v9;
        v27 = v36[2];
        v15 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        v36[2] = v28;
      }

      v5 += 3;
      if (!--v17)
      {
        return;
      }
    }
  }
}

uint64_t sub_22F2F3B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F2F3BE4(uint64_t a1)
{
  sub_22F740820();
  if (v1 <= 0x3F)
  {
    sub_22F740620();
    if (v2 <= 0x3F)
    {
      sub_22F120634(319, &qword_2810A8EE8, off_27887AB78);
      if (v3 <= 0x3F)
      {
        sub_22F2F3CC0(319);
        if (v4 <= 0x3F)
        {
          sub_22F2F3D48(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22F2F3CC0(uint64_t a1)
{
  if (!qword_2810A9F18[0])
  {
    v2 = sub_22F120634(255, &qword_2810A8FA0, off_27887B088);
    v3 = sub_22F120634(255, &qword_2810A8FC8, off_27887B108);
    v5 = type metadata accessor for NodeCollectionBinaryAdjacency(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_2810A9F18);
    }
  }
}

void sub_22F2F3D48(uint64_t a1)
{
  if (!qword_27DAB3480)
  {
    v2 = sub_22F120634(255, &qword_2810A8FC8, off_27887B108);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3478, &unk_22F783BA0);
    v5 = type metadata accessor for NodeCollectionBinaryAdjacency(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27DAB3480);
    }
  }
}

void sub_22F2F3DF4(uint64_t a1)
{
  sub_22F2F3EA8();
  if (v1 <= 0x3F)
  {
    sub_22F2F3F00();
    if (v2 <= 0x3F)
    {
      sub_22F73FFB0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22F2F3EA8()
{
  if (!qword_27DAB3488)
  {
    v0 = sub_22F741490();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB3488);
    }
  }
}

void sub_22F2F3F00()
{
  if (!qword_2810A9398)
  {
    v0 = sub_22F740CE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2810A9398);
    }
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2F3FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F2F4008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F2F4070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22F2F40D0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F2F01B4(a1, a2, a3, v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_43Tm()
{
  v1 = (type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_22F740820();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = sub_22F740620();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22F2F43EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_22F2EF2F8(a1, a2, a3, v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), *(v3 + v10 + 16), *(v3 + v11), *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22F2F44F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11F8, &unk_22F783C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F2F4568()
{
  result = qword_2810A9520;
  if (!qword_2810A9520)
  {
    type metadata accessor for SongEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9520);
  }

  return result;
}

void EventFeatureExtractors.init(graphFeatureExtractors:momentNodeFeatureExtractors:assetFetchResultFeatureExtractors:)(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  if (a1 >> 62)
  {
    v8 = sub_22F741A00();
    a1 = v7;
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = a1;
  v9 = MEMORY[0x277D84F90];
  v72 = a4;
  if (v8)
  {
    v74 = MEMORY[0x277D84F90];

    sub_22F146454(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v10 = v74;
    v11 = v7;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x2319016F0](v12, v11);
        v13 = [swift_unknownObjectRetain() name];
        v14 = sub_22F740E20();
        v16 = v15;
        swift_unknownObjectRelease_n();

        v18 = *(v74 + 16);
        v17 = *(v74 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_22F146454((v17 > 1), v18 + 1, 1);
        }

        ++v12;
        *(v74 + 16) = v18 + 1;
        v19 = v74 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v11 = v73;
      }

      while (v8 != v12);
    }

    else
    {
      v20 = 32;
      do
      {
        v21 = *(v11 + v20);
        v22 = [v21 name];
        v23 = sub_22F740E20();
        v25 = v24;

        v27 = *(v74 + 16);
        v26 = *(v74 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22F146454((v26 > 1), v27 + 1, 1);
        }

        *(v74 + 16) = v27 + 1;
        v28 = v74 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v20 += 8;
        --v8;
        v11 = v73;
      }

      while (v8);
    }

    v7 = v11;

    v9 = MEMORY[0x277D84F90];
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v29 = sub_22F1515F8(v10);

  if (!(a2 >> 62))
  {
    v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_19;
    }

LABEL_33:

    v31 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v30 = sub_22F741A00();
  if (!v30)
  {
    goto LABEL_33;
  }

LABEL_19:
  sub_22F146454(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v70 = v29;
  v31 = v9;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v32 = 0;
    do
    {
      MEMORY[0x2319016F0](v32, a2);
      v33 = [swift_unknownObjectRetain() name];
      v34 = sub_22F740E20();
      v36 = v35;
      swift_unknownObjectRelease_n();

      v38 = *(v9 + 16);
      v37 = *(v9 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22F146454((v37 > 1), v38 + 1, 1);
      }

      ++v32;
      *(v9 + 16) = v38 + 1;
      v39 = v9 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v30 != v32);
  }

  else
  {
    v40 = 32;
    do
    {
      v41 = *(a2 + v40);
      v42 = [v41 name];
      v43 = sub_22F740E20();
      v45 = v44;

      v47 = *(v31 + 16);
      v46 = *(v31 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_22F146454((v46 > 1), v47 + 1, 1);
      }

      *(v31 + 16) = v47 + 1;
      v48 = v31 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v40 += 8;
      --v30;
    }

    while (v30);
  }

  v7 = v73;
  v9 = MEMORY[0x277D84F90];
  v29 = v70;
LABEL_34:
  v49 = sub_22F151690(v31, v29);

  if (!(a3 >> 62))
  {
    v50 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_36;
    }

LABEL_49:

    v51 = MEMORY[0x277D84F90];
LABEL_50:
    v69 = sub_22F151690(v51, v49);

    *v72 = v69;
    v72[1] = v7;
    v72[2] = a2;
    v72[3] = a3;
    return;
  }

  v50 = sub_22F741A00();
  if (!v50)
  {
    goto LABEL_49;
  }

LABEL_36:
  sub_22F146454(0, v50 & ~(v50 >> 63), 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v71 = v49;
    v51 = v9;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v52 = 0;
      do
      {
        MEMORY[0x2319016F0](v52, a3);
        v53 = [swift_unknownObjectRetain() name];
        v54 = sub_22F740E20();
        v56 = v55;
        swift_unknownObjectRelease_n();

        v58 = *(v9 + 16);
        v57 = *(v9 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_22F146454((v57 > 1), v58 + 1, 1);
        }

        ++v52;
        *(v9 + 16) = v58 + 1;
        v59 = v9 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
      }

      while (v50 != v52);
    }

    else
    {
      v60 = 32;
      do
      {
        v61 = *(a3 + v60);
        v62 = [v61 name];
        v63 = sub_22F740E20();
        v65 = v64;

        v67 = *(v51 + 16);
        v66 = *(v51 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_22F146454((v66 > 1), v67 + 1, 1);
        }

        *(v51 + 16) = v67 + 1;
        v68 = v51 + 16 * v67;
        *(v68 + 32) = v63;
        *(v68 + 40) = v65;
        v60 += 8;
        --v50;
      }

      while (v50);
    }

    v7 = v73;
    v49 = v71;
    goto LABEL_50;
  }

LABEL_53:
  __break(1u);
}

id sub_22F2F4C28(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v35[1] = *MEMORY[0x277D85DE8];
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v32 = sub_22F741670();
  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v29 = v4 & 0xFFFFFFFFFFFFFF8;
    v30 = v4 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F98];
    v7 = 4;
    v28 = v4;
    v27 = i;
    while (1)
    {
      v8 = v7 - 4;
      if (!v30)
      {
        break;
      }

      v9 = MEMORY[0x2319016F0](v7 - 4, v4);
      v10 = v7 - 3;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

LABEL_7:
      v33 = v10;
      v34 = v7 - 4;
      v11 = v6;
      v12 = v9;
      v13 = [v12 name];
      v14 = sub_22F740E20();
      v16 = v15;

      v35[0] = 0;
      v17 = [v12 floatVectorWithEntity:a1 error:v35];

      v18 = v35[0];
      if (!v17)
      {
        v25 = v18;

        sub_22F73F370();

        swift_willThrow();
        return v11;
      }

      v4 = v3;
      v19 = [v17 array];

      sub_22F170D8C();
      v3 = sub_22F741180();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35[0] = v11;
      sub_22F1307D0(v3, v14, v16, isUniquelyReferenced_nonNull_native);

      v21 = v35[0];
      if ((v32 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2319016F0](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v22 = *(v32 + 8 * v7);
      }

      v23 = v22;
      v24 = v4;
      sub_22F7416A0();
      v3 = v4;

      v4 = v28;
      if (v24)
      {

        return v11;
      }

      ++v7;
      v6 = v21;
      if (v33 == v27)
      {
        goto LABEL_26;
      }
    }

    if (v8 >= *(v29 + 16))
    {
      goto LABEL_22;
    }

    v9 = *(v4 + 8 * v7);
    v10 = v7 - 3;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22F741A00();
    v32 = sub_22F741670();
  }

  v21 = MEMORY[0x277D84F98];
LABEL_26:

  sub_22F7416A0();
  if (v3)
  {
  }

  return v21;
}

uint64_t sub_22F2F504C(uint64_t a1)
{
  v2 = sub_22F2F5244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2F5088(uint64_t a1)
{
  v2 = sub_22F2F5244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB34A0, &unk_22F783D40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2F5244();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F30, &qword_22F777828);
    sub_22F2F5298();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F2F5244()
{
  result = qword_27DAB34A8;
  if (!qword_27DAB34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34A8);
  }

  return result;
}

unint64_t sub_22F2F5298()
{
  result = qword_2810A9310;
  if (!qword_2810A9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1F30, &qword_22F777828);
    sub_22F1A8E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9310);
  }

  return result;
}

unint64_t sub_22F2F5358()
{
  result = qword_27DAB34B0;
  if (!qword_27DAB34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34B0);
  }

  return result;
}

unint64_t sub_22F2F53B0()
{
  result = qword_27DAB34B8;
  if (!qword_27DAB34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34B8);
  }

  return result;
}

unint64_t sub_22F2F5408()
{
  result = qword_27DAB34C0;
  if (!qword_27DAB34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34C0);
  }

  return result;
}

void sub_22F2F545C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F65A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F2F6B28(v5);
  *a1 = v3;
}

unint64_t sub_22F2F5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0xD00000000000004ALL;
    }

    if (a2 == 1)
    {
      return 0xD000000000000056;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD00000000000002ELL;
      case 3:
        return 0xD000000000000063;
      case 4:
        return 0xD000000000000016;
    }
  }

  sub_22F741B00();

  strcpy(v9, "Cannot cast ");
  MEMORY[0x231900B10](a1, a2);
  MEMORY[0x231900B10](544175136, 0xE400000000000000);
  MEMORY[0x231900B10](a3, a4);
  MEMORY[0x231900B10](46, 0xE100000000000000);
  return v9[0];
}

uint64_t *static TripTitleGenerator.title(for:locationHelper:)(void *a1, uint64_t a2)
{
  v4 = [a1 tripFeatureNodes];
  v5 = [a1 momentNodes];
  v6 = static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v4, v5, a2);

  return v6;
}

uint64_t *static TripTitleGenerator.title(for:momentNodes:locationHelper:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 array];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23E0, &qword_22F779828);
  v6 = sub_22F741180();

  v17 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v15 = a2;
    v16 = a3;
    v8 = 0;
    a3 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2319016F0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      a2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
      }

      else
      {
      }

      ++v8;
      if (a2 == i)
      {
        v11 = v17;
        a2 = v15;
        a3 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_19:

  v13 = sub_22F2F5A78(v11, a2, a3, v12);

  return v13;
}

uint64_t *sub_22F2F5A78(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_42:
    sub_22F2F6AD4();
    swift_allocError();
    *v47 = 0u;
    v47[1] = 0u;
    goto LABEL_43;
  }

LABEL_41:
  v44 = a3;
  v45 = a2;
  v46 = sub_22F741A00();
  a2 = v45;
  a3 = v44;
  v8 = v46;
  if (!v46)
  {
    goto LABEL_42;
  }

LABEL_3:
  v9 = v5;
  v54 = a2;
  v55 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7727B0;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v11;
  *(inited + 48) = sub_22F740E20();
  *(inited + 56) = v12;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v13;
  result = sub_22F740E20();
  *(inited + 80) = result;
  *(inited + 88) = v15;
  v59 = a1 & 0xC000000000000001;
  v53 = @"Country";
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v16 = MEMORY[0x2319016F0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
LABEL_6:
    v17 = v16;
    v18 = [v16 label];

    if (v18)
    {
      v50 = v7;
      v51 = v4;
      v7 = sub_22F740E20();
      v20 = v19;

      v4 = &v49;
      v58[0] = v7;
      v58[1] = v20;
      MEMORY[0x28223BE20](v21);
      v48[2] = v58;
      v5 = v9;
      v9 = sub_22F1C0E04(sub_22F15A388, v48, inited);
      v52 = v5;
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v9)
      {
        v22 = 0;
        v56 = a1 & 0xFFFFFFFFFFFFFF8;
        v57 = v20;
        v23 = v8;
        do
        {
          if (v59)
          {
            v24 = MEMORY[0x2319016F0](v22, a1);
          }

          else
          {
            if (v22 >= *(v56 + 16))
            {
              __break(1u);
              goto LABEL_46;
            }

            v24 = *(a1 + 8 * v22 + 32);
          }

          inited = v24;
          v8 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          v25 = [v24 label];
          if (!v25)
          {

            goto LABEL_27;
          }

          v9 = v25;
          v4 = sub_22F740E20();
          v27 = v26;

          if (v4 == v7 && v27 == v57)
          {
          }

          else
          {
            v9 = sub_22F742040();

            if ((v9 & 1) == 0)
            {

LABEL_27:
              sub_22F2F6AD4();
              swift_allocError();
              v30 = xmmword_22F783EE0;
              goto LABEL_28;
            }
          }

          ++v22;
        }

        while (v8 != v23);
        if (v7 == sub_22F740E20() && v57 == v31)
        {

          v32 = v54;
          v33 = v55;
          v4 = v51;
          v34 = v52;
          goto LABEL_33;
        }

        v35 = sub_22F742040();

        v32 = v54;
        v33 = v55;
        v4 = v51;
        v34 = v52;
        if (v35)
        {
LABEL_33:
          if (v50)
          {
            v42 = sub_22F741A00();
            v32 = v54;
            v33 = v55;
            if (v42 >= 5)
            {
              goto LABEL_35;
            }
          }

          else if (*(v56 + 16) >= 5)
          {
LABEL_35:

            type metadata accessor for LocalizedString();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata("PGLocationTitleFormatTripWorldTrip");
            v37 = [objc_opt_self() bundleForClass_];
            v38 = sub_22F740DF0();
            v39 = sub_22F740DF0();
            v40 = sub_22F740DF0();
            v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

            v4 = sub_22F740E20();
            return v4;
          }
        }

        v43 = sub_22F2F7D4C(a1, v32, v33);
        if (!v34)
        {
          v4 = v43;
        }

        return v4;
      }
    }

    else
    {
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    sub_22F2F6AD4();
    swift_allocError();
    v30 = xmmword_22F782950;
LABEL_28:
    *v29 = v30;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
LABEL_43:
    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

void static TripTitleGenerator.titleTuple(highlightGroupNode:locationHelper:)(void *a1, uint64_t a2)
{
  v4 = [a1 collection];
  v5 = [v4 tripFeatureNodes];
  v6 = [v4 momentNodes];
  static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v5, v6, a2);

  if (!v2)
  {
    v7 = sub_22F740DF0();

    v8 = objc_opt_self();
    v9 = [v8 titleWithString:v7 category:4];

    v10 = sub_22F740DF0();
    v11 = [v8 titleWithString:v10 category:0];

    [objc_allocWithZone(PGTitleTuple) initWithWithTitle:v9 subtitle:v11];
  }
}

uint64_t sub_22F2F6328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v47 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v47 - v27;
  v53 = [objc_opt_self() edgesFromNodes:a3 toNodes:a1];
  v29 = [v53 universalStartDate];
  v54 = v11;
  if (v29)
  {
    v30 = v29;
    sub_22F73F640();

    v31 = *(v7 + 56);
    v31(v25, 0, 1, v6);
  }

  else
  {
    v31 = *(v7 + 56);
    v31(v25, 1, 1, v6);
  }

  sub_22F1207AC(v25, v28, &qword_27DAB0920, &qword_22F770B20);
  sub_22F13BA9C(v28, v22, &qword_27DAB0920, &qword_22F770B20);
  v32 = *(v7 + 48);
  if (v32(v22, 1, v6) == 1)
  {
    sub_22F120ADC(v28, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    v48 = *(v7 + 32);
    v48(v54, v22, v6);
    v33 = v52;
    swift_beginAccess();
    v34 = *(v33 + 16);
    if (*(v34 + 16) && (v35 = sub_22F123478(v51), (v36 & 1) != 0))
    {
      (*(v7 + 16))(v19, *(v34 + 56) + *(v7 + 72) * v35, v6);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v47[1] = v7 + 56;
    v31(v19, v37, 1, v6);
    sub_22F1207AC(v19, v16, &qword_27DAB0920, &qword_22F770B20);
    v38 = v32(v16, 1, v6);
    v39 = v50;
    if (v38 == 1)
    {
      sub_22F73F570();
      sub_22F120ADC(v16, &qword_27DAB0920, &qword_22F770B20);
    }

    else
    {
      v48(v50, v16, v6);
    }

    v40 = v54;
    swift_endAccess();
    v41 = sub_22F73F5D0();
    v42 = v39;
    v43 = v41;
    v44 = *(v7 + 8);
    v44(v42, v6);
    if (v43)
    {
      v45 = v49;
      (*(v7 + 16))(v49, v40, v6);
      v31(v45, 0, 1, v6);
      swift_beginAccess();
      sub_22F121E34(v45, v51);
      swift_endAccess();
    }

    v44(v40, v6);
    v22 = v28;
  }

  return sub_22F120ADC(v22, &qword_27DAB0920, &qword_22F770B20);
}

void sub_22F2F6834(int a1, void *a2, int a3, id a4, uint64_t a5, uint64_t a6)
{
  v9 = [a4 addressNodesFromLocationNodes_];
  sub_22F2F6328(v9, a2, a5, a6);
}

void sub_22F2F68B0(int a1, void *a2, int a3, id a4, uint64_t a5, uint64_t a6)
{
  v13 = [a4 addressNodesFromAreaNodes_];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    sub_22F2F6328(v13, v10, a5, a6);

    v12 = v11;
  }

  else
  {
    sub_22F7415E0();
    if (qword_27DAAFD08 != -1)
    {
      swift_once();
    }

    sub_22F740A80();
    v12 = v13;
  }
}

id TripTitleGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TripTitleGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripTitleGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TripTitleGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripTitleGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2F6AD4()
{
  result = qword_27DAB34C8;
  if (!qword_27DAB34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34C8);
  }

  return result;
}

void sub_22F2F6B28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2F6ED4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2F6C6C(0, v2, 1, a1);
  }
}

void sub_22F2F6C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  MEMORY[0x28223BE20](v35);
  v34 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v32 = -v17;
    v33 = v16;
    v19 = a1 - a3;
    v26 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v20;
    v29 = v19;
    v21 = v18;
    while (1)
    {
      sub_22F13BA9C(v20, v15, &unk_27DAB0DD0, &qword_22F771178);
      sub_22F13BA9C(v21, v11, &unk_27DAB0DD0, &qword_22F771178);
      v22 = sub_22F73F660();
      sub_22F120ADC(v11, &unk_27DAB0DD0, &qword_22F771178);
      sub_22F120ADC(v15, &unk_27DAB0DD0, &qword_22F771178);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v19 = v29 - 1;
        v20 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_22F1207AC(v20, v34, &unk_27DAB0DD0, &qword_22F771178);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v23, v21, &unk_27DAB0DD0, &qword_22F771178);
      v21 += v32;
      v20 += v32;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F2F6ED4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  v112 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v105 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v100 - v10;
  MEMORY[0x28223BE20](v11);
  v118 = &v100 - v12;
  MEMORY[0x28223BE20](v13);
  v117 = &v100 - v14;
  v113 = a3;
  v15 = *(a3 + 8);
  if (v15 >= 1)
  {
    v101 = a4;
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v18 = &unk_27DAB0DD0;
    while (1)
    {
      v19 = v16;
      if (v16 + 1 >= v15)
      {
        v31 = v16 + 1;
      }

      else
      {
        v114 = v15;
        v103 = v5;
        v20 = *v113;
        v109 = v20;
        v21 = *(v112 + 72);
        a3 = v20 + v21 * (v16 + 1);
        v22 = v117;
        sub_22F13BA9C(a3, v117, v18, &qword_22F771178);
        v23 = v118;
        sub_22F13BA9C(v20 + v21 * v16, v118, v18, &qword_22F771178);
        v111 = sub_22F73F660();
        sub_22F120ADC(v23, v18, &qword_22F771178);
        sub_22F120ADC(v22, v18, &qword_22F771178);
        v102 = v16;
        v24 = v16 + 2;
        v115 = v21;
        v25 = v109 + v21 * (v16 + 2);
        v110 = v17;
        while (v114 != v24)
        {
          v26 = v111 == -1;
          v27 = v117;
          sub_22F13BA9C(v25, v117, v18, &qword_22F771178);
          v28 = v118;
          sub_22F13BA9C(a3, v118, v18, &qword_22F771178);
          v29 = sub_22F73F660();
          sub_22F120ADC(v28, v18, &qword_22F771178);
          sub_22F120ADC(v27, v18, &qword_22F771178);
          v30 = v26 ^ (v29 != -1);
          v17 = v110;
          ++v24;
          v25 += v115;
          a3 += v115;
          if ((v30 & 1) == 0)
          {
            v31 = v24 - 1;
            goto LABEL_11;
          }
        }

        v31 = v114;
LABEL_11:
        v19 = v102;
        v5 = v103;
        if (v111 == -1)
        {
          if (v31 < v102)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            return;
          }

          if (v102 < v31)
          {
            v32 = v115 * (v31 - 1);
            v33 = v31 * v115;
            v34 = v31;
            v35 = v31;
            v36 = v102;
            a3 = v102 * v115;
            do
            {
              if (v36 != --v35)
              {
                v37 = *v113;
                if (!*v113)
                {
                  goto LABEL_132;
                }

                sub_22F1207AC(v37 + a3, v105, v18, &qword_22F771178);
                if (a3 < v32 || v37 + a3 >= v37 + v33)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a3 != v32)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_22F1207AC(v105, v37 + v32, v18, &qword_22F771178);
              }

              ++v36;
              v32 -= v115;
              v33 -= v115;
              a3 += v115;
            }

            while (v36 < v35);
            v19 = v102;
            v5 = v103;
            v17 = v110;
            v31 = v34;
          }
        }
      }

      v38 = v113[1];
      if (v31 >= v38)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v31, v19))
      {
        goto LABEL_124;
      }

      if (v31 - v19 >= v101)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v19, v101))
      {
        goto LABEL_125;
      }

      if (v19 + v101 >= v38)
      {
        v39 = v113[1];
      }

      else
      {
        v39 = v19 + v101;
      }

      if (v39 < v19)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (v31 == v39)
      {
LABEL_34:
        v16 = v31;
        if (v31 < v19)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v110 = v17;
        v102 = v19;
        v103 = v5;
        v85 = *(v112 + 72);
        v86 = *v113 + v85 * (v31 - 1);
        v87 = -v85;
        v88 = v19 - v31;
        v115 = *v113;
        v106 = v85;
        v107 = v39;
        a3 = v115 + v31 * v85;
        do
        {
          v114 = v31;
          v108 = a3;
          v109 = v88;
          v111 = v86;
          do
          {
            v89 = v117;
            sub_22F13BA9C(a3, v117, v18, &qword_22F771178);
            v90 = v118;
            sub_22F13BA9C(v86, v118, v18, &qword_22F771178);
            v91 = sub_22F73F660();
            sub_22F120ADC(v90, v18, &qword_22F771178);
            sub_22F120ADC(v89, v18, &qword_22F771178);
            if (v91 != -1)
            {
              break;
            }

            if (!v115)
            {
              goto LABEL_129;
            }

            v92 = v18;
            v93 = v116;
            sub_22F1207AC(a3, v116, v92, &qword_22F771178);
            swift_arrayInitWithTakeFrontToBack();
            v94 = v93;
            v18 = v92;
            sub_22F1207AC(v94, v86, v92, &qword_22F771178);
            v86 += v87;
            a3 += v87;
          }

          while (!__CFADD__(v88++, 1));
          v31 = v114 + 1;
          v16 = v107;
          v86 = v111 + v106;
          v88 = v109 - 1;
          a3 = v108 + v106;
        }

        while (v114 + 1 != v107);
        v19 = v102;
        v5 = v103;
        v17 = v110;
        if (v107 < v102)
        {
          goto LABEL_123;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22F13D970(0, *(v17 + 2) + 1, 1, v17);
      }

      a3 = *(v17 + 2);
      v40 = *(v17 + 3);
      v41 = a3 + 1;
      if (a3 >= v40 >> 1)
      {
        v17 = sub_22F13D970((v40 > 1), a3 + 1, 1, v17);
      }

      *(v17 + 2) = v41;
      v42 = &v17[16 * a3];
      *(v42 + 4) = v19;
      *(v42 + 5) = v16;
      if (!*v104)
      {
        goto LABEL_133;
      }

      if (a3)
      {
        v43 = *v104;
        while (1)
        {
          a3 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v44 = *(v17 + 4);
            v45 = *(v17 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_55:
            if (v47)
            {
              goto LABEL_112;
            }

            v60 = &v17[16 * v41];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_115;
            }

            v66 = &v17[16 * a3 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_119;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                a3 = v41 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v70 = &v17[16 * v41];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_69:
          if (v65)
          {
            goto LABEL_114;
          }

          v73 = &v17[16 * a3];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_117;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_76:
          v81 = a3 - 1;
          if (a3 - 1 >= v41)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_126;
          }

          if (!*v113)
          {
            goto LABEL_130;
          }

          v82 = *&v17[16 * v81 + 32];
          v83 = *&v17[16 * a3 + 40];
          sub_22F2F7820(*v113 + *(v112 + 72) * v82, *v113 + *(v112 + 72) * *&v17[16 * a3 + 32], *v113 + *(v112 + 72) * v83, v43);
          if (v5)
          {
            goto LABEL_106;
          }

          if (v83 < v82)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_22F3F5F98(v17);
          }

          if (v81 >= *(v17 + 2))
          {
            goto LABEL_109;
          }

          v84 = &v17[16 * v81];
          *(v84 + 4) = v82;
          *(v84 + 5) = v83;
          v120 = v17;
          sub_22F3F5F0C(a3);
          v17 = v120;
          v41 = *(v120 + 2);
          if (v41 <= 1)
          {
            goto LABEL_3;
          }
        }

        v48 = &v17[16 * v41 + 32];
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_110;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_111;
        }

        v55 = &v17[16 * v41];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_113;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v59 >= v51)
        {
          v77 = &v17[16 * a3 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_120;
          }

          if (v46 < v80)
          {
            a3 = v41 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v15 = v113[1];
      if (v16 >= v15)
      {
        goto LABEL_96;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_96:
  a3 = *v104;
  if (!*v104)
  {
    goto LABEL_134;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_127:
    v17 = sub_22F3F5F98(v17);
  }

  v120 = v17;
  v96 = *(v17 + 2);
  if (v96 >= 2)
  {
    while (*v113)
    {
      v97 = *&v17[16 * v96];
      v98 = *&v17[16 * v96 + 24];
      sub_22F2F7820(*v113 + *(v112 + 72) * v97, *v113 + *(v112 + 72) * *&v17[16 * v96 + 16], *v113 + *(v112 + 72) * v98, a3);
      if (v5)
      {
        goto LABEL_106;
      }

      if (v98 < v97)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22F3F5F98(v17);
      }

      if (v96 - 2 >= *(v17 + 2))
      {
        goto LABEL_122;
      }

      v99 = &v17[16 * v96];
      *v99 = v97;
      *(v99 + 1) = v98;
      v120 = v17;
      sub_22F3F5F0C(v96 - 1);
      v17 = v120;
      v96 = *(v120 + 2);
      if (v96 <= 1)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_131;
  }

LABEL_106:
}

void sub_22F2F7820(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = v23;
      v40 = -v13;
      v41 = a1;
      v39 = a4;
      do
      {
        v37 = v23;
        v26 = a2 + v24;
        v42 = a2;
        v43 = a2 + v24;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v23 = v37;
            goto LABEL_57;
          }

          v28 = a3;
          v38 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          sub_22F13BA9C(v30, v11, &unk_27DAB0DD0, &qword_22F771178);
          v31 = v11;
          v32 = v44;
          sub_22F13BA9C(v26, v44, &unk_27DAB0DD0, &qword_22F771178);
          v33 = sub_22F73F660();
          v34 = v32;
          v11 = v31;
          sub_22F120ADC(v34, &unk_27DAB0DD0, &qword_22F771178);
          sub_22F120ADC(v31, &unk_27DAB0DD0, &qword_22F771178);
          if (v33 == -1)
          {
            break;
          }

          v23 = v30;
          a3 = v29;
          v35 = v39;
          if (v28 < v25 || v29 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v30;
            v26 = v43;
            a1 = v41;
          }

          else
          {
            v26 = v43;
            a1 = v41;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v30;
            }
          }

          v25 = v23;
          v27 = v30 > v35;
          v24 = v40;
          a2 = v42;
          if (!v27)
          {
            goto LABEL_55;
          }
        }

        a3 = v29;
        v36 = v39;
        if (v28 < v42 || v29 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v40;
          a1 = v41;
        }

        else
        {
          a2 = v43;
          v24 = v40;
          a1 = v41;
          if (v28 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v38;
      }

      while (v25 > v36);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = a3;
      do
      {
        v19 = v13;
        v20 = a2;
        sub_22F13BA9C(a2, v11, &unk_27DAB0DD0, &qword_22F771178);
        v21 = v44;
        sub_22F13BA9C(a4, v44, &unk_27DAB0DD0, &qword_22F771178);
        v22 = sub_22F73F660();
        sub_22F120ADC(v21, &unk_27DAB0DD0, &qword_22F771178);
        sub_22F120ADC(v11, &unk_27DAB0DD0, &qword_22F771178);
        v13 = v19;
        if (v22 == -1)
        {
          a2 += v19;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

  sub_22F3B6808(&v48, &v47, &v46);
}

id sub_22F2F7D4C(unint64_t a1, unint64_t *a2, void *a3)
{
  v159 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB34D0, &unk_22F783F30);
  MEMORY[0x28223BE20](v5 - 8);
  v162 = (&v143 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  v156 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v144 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  isUniquelyReferenced_nonNull_native = &v143 - v10;
  MEMORY[0x28223BE20](v12);
  v145 = &v143 - v13;
  MEMORY[0x28223BE20](v14);
  v143 = &v143 - v15;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB34E0, &unk_22F783F40);
  MEMORY[0x28223BE20](v160);
  v165 = (&v143 - v16);
  v17 = swift_allocObject();
  v157 = v17;
  *(v17 + 16) = MEMORY[0x277D84F98];
  v153 = v17 + 16;
  v154 = a2;
  v158 = [a2 graph];
  v166 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v164 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  if (a1 >> 62)
  {
    goto LABEL_77;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v161 = v7;
  v146 = isUniquelyReferenced_nonNull_native;
  if (v18)
  {
    v19 = 0;
    v168 = a1 & 0xC000000000000001;
    v20 = MEMORY[0x277D84F98];
    v163 = a1 & 0xFFFFFFFFFFFFFF8;
    v167 = @"Area";
    while (1)
    {
      if (v168)
      {
        v22 = MEMORY[0x2319016F0](v19, a1);
      }

      else
      {
        if (v19 >= *(v163 + 16))
        {
          goto LABEL_76;
        }

        v22 = *(a1 + 8 * v19 + 32);
      }

      v23 = v22;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_73;
      }

      v180 = (v19 + 1);
      v7 = a1;
      v24 = [v22 identifier];
      v25 = v23;
      v26 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v20;
      a1 = sub_22F122B68(v24);
      v28 = v20[2];
      v29 = (v27 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v18 = sub_22F741A00();
        goto LABEL_3;
      }

      v31 = v27;
      if (v26[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v34 = aBlock;
          if (v27)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_22F1374E4();
          v34 = aBlock;
          if (v31)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_22F12AF88(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_22F122B68(v24);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_81;
        }

        a1 = v32;
        v34 = aBlock;
        if (v31)
        {
LABEL_19:
          v20 = v34;
          v35 = v34[7];
          v36 = *(v35 + 8 * a1);
          *(v35 + 8 * a1) = v25;

          goto LABEL_23;
        }
      }

      v34[(a1 >> 6) + 8] |= 1 << a1;
      *(v34[6] + 8 * a1) = v24;
      *(v34[7] + 8 * a1) = v25;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_75;
      }

      v20 = v34;
      v34[2] = v39;
LABEL_23:
      v40 = [v25 label];
      a1 = v7;
      if (!v40)
      {
        sub_22F740E20();
LABEL_30:

LABEL_31:
        v21 = v166;
        goto LABEL_6;
      }

      v41 = v40;
      isUniquelyReferenced_nonNull_native = sub_22F740E20();
      v43 = v42;

      v44 = sub_22F740E20();
      if (!v43)
      {
        goto LABEL_30;
      }

      if (isUniquelyReferenced_nonNull_native == v44 && v43 == v45)
      {

        v21 = v164;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = sub_22F742040();

        v21 = v164;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_6:
      [v21 addIdentifier_];

      ++v19;
      if (v180 == v18)
      {
        goto LABEL_33;
      }
    }
  }

  v20 = MEMORY[0x277D84F98];
LABEL_33:
  v180 = v20;
  isUniquelyReferenced_nonNull_native = v166;
  v46 = [isUniquelyReferenced_nonNull_native isEmpty];
  v155 = isUniquelyReferenced_nonNull_native;
  if (v46)
  {

    v151 = 0;
    v152 = 0;
  }

  else
  {
    v47 = objc_allocWithZone(PGGraphLocationNodeCollection);
    v48 = v158;
    swift_unknownObjectRetain();
    v49 = [v47 initWithGraph:v48 elementIdentifiers:isUniquelyReferenced_nonNull_native];
    swift_unknownObjectRelease();

    v50 = swift_allocObject();
    a1 = v159;
    v51 = v154;
    v50[2] = v159;
    v50[3] = v51;
    v50[4] = v157;
    v52 = swift_allocObject();
    v151 = sub_22F2F90E4;
    *(v52 + 16) = sub_22F2F90E4;
    *(v52 + 24) = v50;
    v152 = v50;
    v178 = sub_22F264C60;
    v179 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v175 = 1107296256;
    v176 = sub_22F2F92A8;
    v177 = &block_descriptor_26;
    isUniquelyReferenced_nonNull_native = _Block_copy(&aBlock);
    v53 = a1;
    v54 = v51;

    [v49 enumerateIdentifiersAsCollectionsWithBlock_];

    _Block_release(isUniquelyReferenced_nonNull_native);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if (v49)
    {
      __break(1u);
      goto LABEL_79;
    }
  }

  v55 = v164;
  v56 = [v55 isEmpty];
  v150 = v55;
  if (v56)
  {

    v148 = 0;
    v149 = 0;
    goto LABEL_39;
  }

  sub_22F2F9108();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v57);
  v59 = v158;
  swift_unknownObjectRetain();
  v60 = v55;
  v61 = [objc_allocWithZone(ObjCClassFromMetadata) initWithGraph:v59 elementIdentifiers:v55];
  swift_unknownObjectRelease();

  v62 = swift_allocObject();
  v63 = v159;
  a1 = v154;
  v62[2] = v159;
  v62[3] = a1;
  v62[4] = v157;
  v64 = swift_allocObject();
  v148 = sub_22F2F919C;
  *(v64 + 16) = sub_22F2F919C;
  *(v64 + 24) = v62;
  v149 = v62;
  v178 = sub_22F20AE34;
  v179 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v175 = 1107296256;
  v176 = sub_22F2F92A8;
  v177 = &block_descriptor_16_0;
  isUniquelyReferenced_nonNull_native = _Block_copy(&aBlock);
  v65 = v63;
  v66 = a1;

  [v61 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(isUniquelyReferenced_nonNull_native);
  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

  if ((v61 & 1) == 0)
  {
LABEL_39:
    v67 = v153;
    swift_beginAccess();
    v68 = *v67;
    v69 = *v67 + 64;
    v70 = 1 << *(*v67 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(*v67 + 64);
    v73 = (v70 + 63) >> 6;
    v166 = v156 + 56;
    v164 = (v156 + 48);
    v168 = v68;
    swift_bridgeObjectRetain_n();
    v74 = 0;
    v154 = MEMORY[0x277D84F90];
    v167 = v73;
LABEL_42:
    v75 = v74;
    if (!v72)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v74 = v75;
LABEL_47:
      v76 = __clz(__rbit64(v72)) | (v74 << 6);
      v77 = *(v168 + 56);
      v78 = *(*(v168 + 48) + 8 * v76);
      isUniquelyReferenced_nonNull_native = sub_22F73F690();
      v79 = *(isUniquelyReferenced_nonNull_native - 8);
      v80 = *(v79 + 16);
      v81 = v77 + *(v79 + 72) * v76;
      v82 = v165;
      v163 = *(v160 + 48);
      v7 = v80;
      (v80)(v165 + v163, v81, isUniquelyReferenced_nonNull_native);
      *v82 = v78;
      v83 = [v78 elementIdentifiers];
      a1 = [v83 firstElement];

      v84 = v180;
      if (!v180[2])
      {
        goto LABEL_52;
      }

      v85 = sub_22F122B68(a1);
      if ((v86 & 1) == 0)
      {
        goto LABEL_52;
      }

      v87 = *(v84[7] + 8 * v85);
      v88 = objc_opt_self();
      v89 = v87;
      v90 = [v88 beautifiedLocationNodeStringWithPlaceNode:v89 locationHelper:v159];
      if (!v90)
      {
        break;
      }

      v91 = v90;
      a1 = sub_22F740E20();
      v153 = v92;

      v94 = v161;
      v93 = v162;
      v95 = *(v161 + 16);
      *v162 = v89;
      v93[1] = a1;
      v93[2] = v153;
      (v7)(v93 + v95, v165 + v163, isUniquelyReferenced_nonNull_native);
      v96 = 0;
LABEL_53:
      v72 &= v72 - 1;
      v97 = v162;
      (*v166)(v162, v96, 1, v94);
      sub_22F120ADC(v165, &qword_27DAB34E0, &unk_22F783F40);
      if ((*v164)(v97, 1, v94) != 1)
      {
        v98 = v97;
        v99 = v143;
        sub_22F1207AC(v98, v143, &unk_27DAB0DD0, &qword_22F771178);
        sub_22F1207AC(v99, v145, &unk_27DAB0DD0, &qword_22F771178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_22F13FAB4(0, v154[2] + 1, 1, v154);
        }

        isUniquelyReferenced_nonNull_native = v154[2];
        v100 = v154[3];
        v101 = v156;
        if (isUniquelyReferenced_nonNull_native >= v100 >> 1)
        {
          v103 = sub_22F13FAB4((v100 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v154);
          v101 = v156;
          v154 = v103;
        }

        v102 = v154;
        v154[2] = isUniquelyReferenced_nonNull_native + 1;
        sub_22F1207AC(v145, v102 + ((v101[80] + 32) & ~v101[80]) + *(v101 + 9) * isUniquelyReferenced_nonNull_native, &unk_27DAB0DD0, &qword_22F771178);
        v73 = v167;
        goto LABEL_42;
      }

      sub_22F120ADC(v97, &unk_27DAB34D0, &unk_22F783F30);
      v75 = v74;
      v73 = v167;
      if (!v72)
      {
LABEL_44:
        while (1)
        {
          v74 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v74 >= v73)
          {
            v104 = v168;

            if (v154[2])
            {
              v173[0] = v154;

              v105 = v147;
              sub_22F2F545C(v173);
              isUniquelyReferenced_nonNull_native = v105;
              v104 = v155;
              if (v105)
              {
                goto LABEL_82;
              }

              v106 = v173[0];
              v107 = *(v173[0] + 16);
              if (v107)
              {
                if (v107 == 1)
                {
                  type metadata accessor for LocalizedString();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
                  v108 = swift_allocObject();
                  *(v108 + 16) = xmmword_22F771340;
                  v109 = v146;
                  sub_22F13BA9C(v106 + ((v156[80] + 32) & ~v156[80]), v146, &unk_27DAB0DD0, &qword_22F771178);

                  v110 = *(v109 + 8);
                  v111 = *(v109 + 16);
                  v112 = *(v161 + 16);
                  *(v108 + 56) = MEMORY[0x277D837D0];
                  *(v108 + 64) = sub_22F153470();
                  *(v108 + 32) = v110;
                  *(v108 + 40) = v111;
                  v113 = sub_22F73F690();
                  (*(*(v113 - 8) + 8))(v109 + v112, v113);
                  v115 = static LocalizedString.localizedString(forKey:arguments:)(v114);
                  v117 = v116;

                  v173[0] = v115;
                  v173[1] = v117;
                  v171 = 32;
                  v172 = 0xE100000000000000;
                  v169 = sub_22F740E20();
                  v170 = v118;
                  sub_22F160DE4();
                  v104 = sub_22F7418E0();

                  swift_unknownObjectRelease();
                  sub_22F107E14(v151, v152);
                  sub_22F107E14(v148, v149);
                }

                else
                {
                  v168 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
                  v121 = swift_allocObject();
                  *(v121 + 16) = xmmword_22F770DF0;
                  isUniquelyReferenced_nonNull_native = v156;
                  v122 = v106 + ((v156[80] + 32) & ~v156[80]);
                  v123 = v146;
                  sub_22F13BA9C(v122, v146, &unk_27DAB0DD0, &qword_22F771178);

                  v124 = *(v123 + 16);
                  v125 = v161;
                  v126 = *(v161 + 16);
                  *(v121 + 32) = *(v123 + 8);
                  *(v121 + 40) = v124;
                  if (v107 > *(v106 + 16))
                  {
                    goto LABEL_80;
                  }

                  v127 = v122 + *(isUniquelyReferenced_nonNull_native + 72) * (v107 - 1);
                  v128 = v144;
                  sub_22F13BA9C(v127, v144, &unk_27DAB0DD0, &qword_22F771178);

                  v129 = *(v128 + 16);
                  v130 = *(v125 + 16);
                  *(v121 + 48) = *(v128 + 8);
                  *(v121 + 56) = v129;
                  v131 = sub_22F73F690();
                  v132 = *(*(v131 - 8) + 8);
                  v132(v128 + v130, v131);
                  v132(v123 + v126, v131);
                  v133 = swift_getObjCClassFromMetadata(&v175);
                  v134 = [objc_opt_self() bundleForClass_];
                  v135 = sub_22F740DF0();
                  v136 = sub_22F740DF0();
                  v137 = [v134 localizedStringForKey:v135 value:0 table:v136];

                  sub_22F740E20();
                  sub_22F161DB8(v121);
                  sub_22F740E50();

                  v138 = objc_opt_self();
                  v139 = sub_22F740DF0();

                  v140 = sub_22F741160();

                  v141 = [v138 titleWithNoLineBreakSpaceForTitle:v139 andUsedNames:v140];

                  v104 = sub_22F740E20();

                  swift_unknownObjectRelease();
                  sub_22F107E14(v151, v152);
                  sub_22F107E14(v148, v149);
                }

                return v104;
              }

              sub_22F2F6AD4();
              swift_allocError();
              *v120 = xmmword_22F783EF0;
              *(v120 + 16) = 0;
              *(v120 + 24) = 0;
              swift_willThrow();

              swift_unknownObjectRelease();
            }

            else
            {

              sub_22F2F6AD4();
              swift_allocError();
              *v119 = xmmword_22F783EF0;
              *(v119 + 16) = 0;
              *(v119 + 24) = 0;
              swift_willThrow();

              swift_unknownObjectRelease();
            }

            sub_22F107E14(v151, v152);
            sub_22F107E14(v148, v149);
            return v104;
          }

          v72 = *(v69 + 8 * v74);
          ++v75;
          if (v72)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

LABEL_52:
    v96 = 1;
    v94 = v161;
    goto LABEL_53;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  type metadata accessor for KGElementIdentifier(0);
  sub_22F7420C0();
  __break(1u);
LABEL_82:

  __break(1u);
  return result;
}