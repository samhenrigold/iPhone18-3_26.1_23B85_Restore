uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement6SignalCGGMd, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement6SignalCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement0D13ExecutionStepCGGMd, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement0D13ExecutionStepCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement14TranscriptStepCGGMd, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement14TranscriptStepCGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSay18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGGMd, &_ss18_DictionaryStorageCySSSgSay18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for Date();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGTt1g504_s18de16Engagement36Homeik94ControlSignalFactoryC27processBiomeEventsToSignals02bmL013siriUISessionAA10PSESignalsVSayAA014g8BMHomee6J25F0VG_AA0bQ0VtFSSSgAJXEfU_Tf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 40);
  v4 = &selRef_recentCallStatus;
  while (1)
  {
    v6 = *v3;
    v7 = *(v3 - 1);
    v8 = [v7 v4[93]];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, 1);
      v1 = v32;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v1[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      *(v22 + 2) = v25 + 1;
      v5 = &v22[16 * v25];
      *(v5 + 4) = v7;
      *(v5 + 5) = v6;
      v4 = &selRef_recentCallStatus;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_25ED7C750;
      *(v26 + 32) = v7;
      *(v26 + 40) = v6;
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v27 = (v1[6] + 16 * v14);
      *v27 = v10;
      v27[1] = v12;
      *(v1[7] + 8 * v14) = v26;
      v28 = v1[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_21;
      }

      v1[2] = v30;
    }

    v3 += 2;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void static GeoCorrectionExample.runIdentifyCorrection()()
{
  v79 = type metadata accessor for ProtoNavigationUserFollowupContext();
  v0 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement27ProtoNavigationFollowupTypeOSgMd, &_s18SiriTaskEngagement27ProtoNavigationFollowupTypeOSgMR);
  MEMORY[0x28223BE20](v92);
  v3 = &v73 - v2;
  v83 = type metadata accessor for ProtoTaskFeatureSet();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v84 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v91 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v73 - v16;
  v18 = type metadata accessor for ProtoTaskEngagementType();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v94 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v73 - v22;
  v95 = type metadata accessor for ProtoSiriTaskEngagement();
  v108 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = static SiriTaskEngagementRetriever.retrieveAllSiriTaskEngagement(streamId:)();
  if (!v25)
  {
    if (one-time initialization token for engagement == -1)
    {
LABEL_28:
      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, static Logger.engagement);
      v108 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v108, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_25ECEC000, v108, v70, "Failed to retrieve engagement features", v71, 2u);
        MEMORY[0x25F8CEE50](v71, -1, -1);
      }

      v72 = v108;

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_28;
  }

  v107 = *(v25 + 16);
  if (v107)
  {
    v26 = 0;
    v105 = v25 + ((LOBYTE(v108[10].isa) + 32) & ~LOBYTE(v108[10].isa));
    v104 = v108 + 2;
    v103 = *MEMORY[0x277D61510];
    v101 = (v19 + 8);
    v102 = (v19 + 104);
    v100 = v108 + 1;
    v77 = v84 + 16;
    v76 = v84 + 8;
    v75 = (v4 + 8);
    v87 = 0x800000025ED809D0;
    v86 = 0x800000025ED80A00;
    v85 = 0x800000025ED80A20;
    v74 = (v0 + 8);
    v99 = xmmword_25ED7C750;
    v90 = v3;
    v89 = v10;
    v88 = v15;
    v28 = v93;
    v27 = v94;
    v29 = v95;
    v97 = v17;
    v106 = v25;
    while (v26 < *(v25 + 16))
    {
      (v108[2].isa)(v24, v105 + v108[9].isa * v26, v29);
      ProtoSiriTaskEngagement.engagementType.getter();
      (*v102)(v27, v103, v18);
      lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v30 = *v101;
      (*v101)(v27, v18);
      v30(v28, v18);
      if (v109 == v111)
      {
        v31 = *(ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter() + 16);

        if (v31)
        {
          v32 = ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter();
          if (*(v32 + 16))
          {
            v33 = v84;
            v34 = v80;
            v35 = v81;
            (*(v84 + 16))(v80, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v81);

            v36 = v82;
            ProtoTaskEngagementFeatureSet.featureSet.getter();
            (*(v33 + 8))(v34, v35);
            ProtoTaskFeatureSet.navigationFeatureSet.getter();
            (*v75)(v36, v83);
            v37 = 0;
          }

          else
          {

            v37 = 1;
          }

          v43 = type metadata accessor for ProtoNavigationTaskFeatureSet();
          v44 = *(v43 - 8);
          (*(v44 + 56))(v17, v37, 1, v43);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v45 = v17;
          v46 = swift_allocObject();
          *(v46 + 16) = v99;
          v109 = 0;
          v110 = 0xE000000000000000;
          _StringGuts.grow(_:)(47);

          v109 = 0xD00000000000002BLL;
          v110 = v87;
          outlined init with copy of ProtoNavigationTaskFeatureSet?(v45, v15);
          v98 = *(v44 + 48);
          v47 = v98(v15, 1, v43);
          v96 = v44;
          if (v47 == 1)
          {
            outlined destroy of ProtoNavigationTaskFeatureSet?(v15);
            v48 = 2;
          }

          else
          {
            v49 = ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.getter();
            (*(v44 + 8))(v15, v43);
            v48 = v49 & 1;
          }

          LOBYTE(v111) = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
          v50 = String.init<A>(describing:)();
          MEMORY[0x25F8CE090](v50);

          MEMORY[0x25F8CE090](2592, 0xE200000000000000);
          v51 = v109;
          v52 = v110;
          *(v46 + 56) = MEMORY[0x277D837D0];
          *(v46 + 32) = v51;
          *(v46 + 40) = v52;
          print(_:separator:terminator:)();

          v53 = swift_allocObject();
          *(v53 + 16) = v99;
          v109 = 0;
          v110 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);

          v109 = 0xD000000000000016;
          v110 = v86;
          v54 = v91;
          outlined init with copy of ProtoNavigationTaskFeatureSet?(v97, v91);
          if (v98(v54, 1, v43) == 1)
          {
            outlined destroy of ProtoNavigationTaskFeatureSet?(v54);
            v55 = 2;
          }

          else
          {
            v56 = ProtoNavigationTaskFeatureSet.isUserFollowup.getter();
            (*(v96 + 8))(v54, v43);
            v55 = v56 & 1;
          }

          LOBYTE(v111) = v55;
          v57 = String.init<A>(describing:)();
          MEMORY[0x25F8CE090](v57);

          MEMORY[0x25F8CE090](2592, 0xE200000000000000);
          v58 = v109;
          v59 = v110;
          *(v53 + 56) = MEMORY[0x277D837D0];
          *(v53 + 32) = v58;
          *(v53 + 40) = v59;
          print(_:separator:terminator:)();

          v60 = swift_allocObject();
          *(v60 + 16) = v99;
          v109 = 0;
          v110 = 0xE000000000000000;
          _StringGuts.grow(_:)(34);

          v109 = 0xD00000000000001ELL;
          v110 = v85;
          v17 = v97;
          v61 = v89;
          outlined init with copy of ProtoNavigationTaskFeatureSet?(v97, v89);
          if (v98(v61, 1, v43) == 1)
          {
            outlined destroy of ProtoNavigationTaskFeatureSet?(v61);
            v62 = 1;
            v63 = v90;
          }

          else
          {
            v64 = v78;
            ProtoNavigationTaskFeatureSet.followupContext.getter();
            (*(v96 + 8))(v61, v43);
            v63 = v90;
            ProtoNavigationUserFollowupContext.followupType.getter();
            (*v74)(v64, v79);
            v62 = 0;
          }

          v15 = v88;
          v28 = v93;
          v27 = v94;
          v65 = type metadata accessor for ProtoNavigationFollowupType();
          (*(*(v65 - 8) + 56))(v63, v62, 1, v65);
          v66 = String.init<A>(describing:)();
          MEMORY[0x25F8CE090](v66);

          MEMORY[0x25F8CE090](2592, 0xE200000000000000);
          v67 = v109;
          v68 = v110;
          *(v60 + 56) = MEMORY[0x277D837D0];
          *(v60 + 32) = v67;
          *(v60 + 40) = v68;
          print(_:separator:terminator:)();

          outlined destroy of ProtoNavigationTaskFeatureSet?(v17);
          v29 = v95;
        }

        else
        {
          if (one-time initialization token for engagement != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          __swift_project_value_buffer(v38, static Logger.engagement);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_25ECEC000, v39, v40, "No Geo PSE", v41, 2u);
            v42 = v41;
            v29 = v95;
            MEMORY[0x25F8CEE50](v42, -1, -1);
          }
        }
      }

      ++v26;
      (v100->isa)(v24, v29);
      v25 = v106;
      if (v107 == v26)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
}

uint64_t outlined init with copy of ProtoNavigationTaskFeatureSet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ProtoNavigationTaskFeatureSet?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PostInteractionEngagementCollector.collect(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*v2 + 328);

  v6(partial apply for closure #1 in PostInteractionEngagementCollector.collect(callback:), v5);
}

uint64_t PostInteractionEngagementCollector.perform()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](PostInteractionEngagementCollector.perform(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = PostInteractionEngagementCollector.perform();

  return MEMORY[0x2822008A0]();
}

{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = PostInteractionEngagementCollector.perform();
  }

  else
  {
    v2 = PostInteractionEngagementCollector.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in PostInteractionEngagementCollector.perform()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  (*(*a2 + 328))(partial apply for closure #1 in closure #1 in PostInteractionEngagementCollector.perform(), v9);
}

uint64_t PostInteractionEngagementCollector.collectWithSiriExecution(completion:)(void (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.engagement);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24[1] = v2;
    v18 = a1;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_25ECEC000, v15, v16, "Starting activity collector with Siri Execution", v17, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x25F8CEE50](v20, -1, -1);
  }

  UserDefaultsDomainProvider.lastCollectionDate.getter(v13);
  Date.init()();
  PostInteractionEngagementCollector.runPSECollection(startDate:endDate:)(v13, v11);
  (*(v5 + 16))(v8, v11, v4);
  v21 = UserDefaultsDomainProvider.lastCollectionDate.setter(v8);
  a1(v21);
  v22 = *(v5 + 8);
  v22(v11, v4);
  return (v22)(v13, v4);
}

uint64_t PostInteractionEngagementCollector.runPSECollection(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = type metadata accessor for UUID();
  v6 = *(v66 - 8);
  v7 = MEMORY[0x28223BE20](v66);
  v65 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v51 - v9;
  v63 = type metadata accessor for Date();
  v10 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - v13;
  type metadata accessor for UISessionSignalBuilder(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v16 = type metadata accessor for SiriUISession(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v60 = v15;
  v59 = v16;
  v58 = v18;
  v57 = v17 + 56;
  (v18)(v14 + v15, 1, 1);
  v19 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks;
  *(v14 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v20 = v14 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *(v20 + 112) = 0;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *v20 = 0u;
  *(v14 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = v3;
  v75 = 0;
  v68 = v3;

  v67 = a2;
  v21 = UISessionSignalBuilder.buildSiriExecutionTasks(startDate:endDate:)(a1, a2);
  swift_beginAccess();
  v74 = v14;
  *(v14 + v19) = v21;

  v69 = v21;
  if (v21 >> 62)
  {
    goto LABEL_14;
  }

  v22 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    while (1)
    {
      v23 = 0;
      v56 = v69 & 0xC000000000000001;
      v55 = v69 & 0xFFFFFFFFFFFFFF8;
      v53 = (v10 + 8);
      v52 = v6 + 1;
      v54 = v22;
      v24 = v61;
      while (v56)
      {
        v25 = MEMORY[0x25F8CE460](v23, v69);
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_18;
        }

LABEL_7:
        v73 = v26;
        v72 = MEMORY[0x25F8CE7F0]();
        v27 = UISessionSignalBuilder.fetchDataStreams(taskIndex:endDate:)(v23, v67);
        v28 = (*(*v25 + 352))(v27);
        v29 = *(*v25 + 376);
        v10 = v59;
        v30 = v29(v28);
        v31 = v62;
        v29(v30);
        Date.addingTimeInterval(_:)();
        (*v53)(v31, v63);
        v32 = v64;
        UUID.init()();
        v33 = UUID.uuidString.getter();
        v70 = v34;
        v71 = v33;
        v6 = v52;
        v35 = *v52;
        v36 = v23;
        v37 = v66;
        (*v52)(v32, v66);
        v38 = v65;
        UUID.init()();
        v39 = UUID.uuidString.getter();
        v41 = v40;
        v35(v38, v37);
        v42 = (v24 + *(v10 + 28));
        v43 = v70;
        *v42 = v71;
        v42[1] = v43;
        v44 = (v24 + *(v10 + 32));
        *v44 = v39;
        v44[1] = v41;
        v58(v24, 0, 1, v10);
        v45 = v60;
        v46 = v74;
        swift_beginAccess();
        outlined assign with take of SiriUISession?(v24, v46 + v45);
        swift_endAccess();
        v47 = v68;

        specialized UISessionSignalBuilder.buildSignalsAndTaskFeatureSets(task:completion:)(v25, v46, v47, &v75);
        v48 = v54;

        objc_autoreleasePoolPop(v72);

        v23 = v36 + 1;
        if (v73 == v48)
        {
          goto LABEL_18;
        }
      }

      if (v23 < *(v55 + 16))
      {
        break;
      }

      __break(1u);
LABEL_14:
      if (v69 < 0)
      {
        v49 = v69;
      }

      else
      {
        v49 = v69 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = MEMORY[0x25F8CE500](v49);
      if (!v22)
      {
        goto LABEL_18;
      }
    }

    v25 = *(v69 + 8 * v23 + 32);

    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_18:
}

void *PostInteractionEngagementCollector.deinit()
{

  return v0;
}

uint64_t PostInteractionEngagementCollector.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t dispatch thunk of PostInteractionEngagementCollector.perform()()
{
  v4 = (*(*v0 + 320) + **(*v0 + 320));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of PostInteractionEngagementCollector.perform();

  return v4();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void AppIntentTranscriptSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = a2;
    v7 = 0x800000025ED80A80;
    v8 = (a1 + 40);
    v32 = MEMORY[0x277D84F90];
    v9 = &selRef_recentCallStatus;
    do
    {
      v10 = *v8;
      v11 = *(v8 - 1);
      v12 = [v11 v9[102]];
      if (v12 && (v13 = v12, v14 = [v12 identifier], v13, v14))
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v33 = String.lowercased()();
        lazy protocol witness table accessor for type String and conformance String();
        v18 = StringProtocol.contains<A>(_:)();

        if (v18)
        {
          if (one-time initialization token for engagement != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Logger.engagement);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = v7;
            v24 = swift_slowAlloc();
            v33._countAndFlagsBits = v24;
            *v22 = 136315138;
            v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33._countAndFlagsBits);

            *(v22 + 4) = v25;
            _os_log_impl(&dword_25ECEC000, v20, v21, "Ignore IF SearchToolControl (Prewarm search tool): %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v24);
            v26 = v24;
            v7 = v23;
            MEMORY[0x25F8CEE50](v26, -1, -1);
            v27 = v22;
            v6 = a2;
            v5 = v31;
            MEMORY[0x25F8CEE50](v27, -1, -1);
          }

          else
          {
          }

          v9 = &selRef_recentCallStatus;
        }

        else
        {

          if ((*(*v5 + 88))(v11, v6, v10))
          {

            MEMORY[0x25F8CE160](v28);
            v9 = &selRef_recentCallStatus;
            if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v32 = v34;
          }

          else
          {

            v9 = &selRef_recentCallStatus;
          }
        }
      }

      else
      {
      }

      v8 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  *a3 = v32;
  a3[1] = MEMORY[0x277D84F90];
}

uint64_t AppIntentTranscriptSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(char *a1, uint64_t a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v462 = &v450 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v463 = &v450 - v8;
  v465 = type metadata accessor for Date();
  v9 = *(v465 - 8);
  v10 = MEMORY[0x28223BE20](v465);
  v12 = &v450 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v450 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v450 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v464 = &v450 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v450 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v450 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v450 - v27;
  v466 = a1;
  v29 = [a1 resolvedAction];
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  v31 = [v29 identifier];

  if (!v31)
  {
    goto LABEL_7;
  }

  v457 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (![v466 source])
  {

LABEL_7:
    if (one-time initialization token for engagement != -1)
    {
LABEL_241:
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.engagement);
    v53 = v466;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v469 = v57;
      *v56 = 136315138;
      v58 = [v53 resolvedAction];
      if (v58 && (v59 = v58, v60 = [v58 identifier], v59, v60))
      {
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      *&v471 = v61;
      *(&v471 + 1) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v64 = String.init<A>(describing:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v469);

      *(v56 + 4) = v66;
      _os_log_impl(&dword_25ECEC000, v54, v55, "This event: %s is not a valid event", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x25F8CEE50](v57, -1, -1);
      MEMORY[0x25F8CEE50](v56, -1, -1);
    }

    return 0;
  }

  v461 = v23;
  v458 = v33;
  v473 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  v34 = *(v9 + 56);
  v35 = v465;
  v460 = (v9 + 56);
  v459 = v34;
  v34(v28, 0, 1, v465);
  v36 = *(v9 + 16);
  v36(v17, a2, v35);
  v37 = type metadata accessor for SiriUISession(0);
  v36(v15, a2 + *(v37 + 20), v35);
  v38 = v9;
  outlined init with copy of Date?(v28, v26);
  v39 = *(v9 + 48);
  v454 = v39(v26, 1, v35);
  v456 = (v9 + 48);
  *&v455 = v39;
  if (v454 == 1)
  {
    v68 = *(v9 + 8);
    v68(v15, v35);
    v68(v17, v35);
    outlined destroy of Date?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v453 = 0x3FF0000000000000;
    v41 = 0;
    v45 = 0.0;
    v51 = 0.0;
  }

  else
  {
    (*(v9 + 32))(v12, v26, v35);
    Date.timeIntervalSinceReferenceDate.getter();
    v41 = v40;
    Date.timeIntervalSinceReferenceDate.getter();
    v43 = v42;
    Date.timeIntervalSinceReferenceDate.getter();
    v45 = v43 - v44;
    Date.timeIntervalSinceReferenceDate.getter();
    v47 = v46;
    Date.timeIntervalSinceReferenceDate.getter();
    v49 = v48;
    v50 = *(v9 + 8);
    v50(v12, v35);
    v50(v15, v35);
    v50(v17, v35);
    outlined destroy of Date?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v453 = 0;
    v51 = v47 - v49;
  }

  v69 = v466;
  [v466 source];
  v70 = BMAppIntentInvocationSourceAsString();
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = MEMORY[0x277D837D0];
  *(&v472 + 1) = MEMORY[0x277D837D0];
  *&v471 = v71;
  *(&v471 + 1) = v73;
  outlined init with take of Any(&v471, &v469);
  v75 = v473;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v467 = v75;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x656372756F73, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v77 = v467;
  v78 = [v69 source] == 3 || objc_msgSend(v69, sel_source) == 4;
  v79 = v465;
  v80 = MEMORY[0x277D839B0];
  *(&v472 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v471) = v78;
  outlined init with take of Any(&v471, &v469);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v467 = v77;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x42646574616E6F64, 0xED00006972695379, v81);
  v82 = v467;
  v473 = v467;
  v83 = [v69 bundleID];
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    *(&v472 + 1) = v74;
    *&v471 = v85;
    *(&v471 + 1) = v87;
    outlined init with take of Any(&v471, &v469);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v467 = v82;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x4449656C646E7562, 0xE800000000000000, v88);
    v473 = v467;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x4449656C646E7562, 0xE800000000000000, &v471);
    outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
  }

  v89 = v462;
  v90 = [v69 executionUUID];
  if (v90)
  {
    v91 = v90;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  v93 = type metadata accessor for UUID();
  v94 = *(v93 - 8);
  (*(v94 + 56))(v89, v92, 1, v93);
  v95 = v463;
  outlined init with take of DateInterval?(v89, v463, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v94 + 48))(v95, 1, v93) == 1)
  {
    outlined destroy of Date?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6F69747563657865, 0xED0000444955556ELL, &v471);
    outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    *(&v472 + 1) = v93;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v471);
    (*(v94 + 32))(boxed_opaque_existential_0, v95, v93);
    outlined init with take of Any(&v471, &v469);
    v97 = v473;
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v467 = v97;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x6F69747563657865, 0xED0000444955556ELL, v98);
    v473 = v467;
  }

  v99 = v464;
  v100 = v459;
  v101 = [v69 executionDate];
  if (v101)
  {
    v102 = v101;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  v100(v99, v103, 1, v79);
  v104 = v461;
  outlined init with take of DateInterval?(v99, v461, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v455)(v104, 1, v79) == 1)
  {
    outlined destroy of Date?(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6F69747563657865, 0xED0000657461446ELL, &v471);
    outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    *(&v472 + 1) = v79;
    v105 = __swift_allocate_boxed_opaque_existential_0(&v471);
    (*(v38 + 32))(v105, v104, v79);
    outlined init with take of Any(&v471, &v469);
    v106 = v473;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v467 = v106;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x6F69747563657865, 0xED0000657461446ELL, v107);
    v473 = v467;
  }

  v108 = [v69 bundleID];
  v109 = &selRef_recentCallStatus;
  if (v108)
  {
    v110 = v108;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0xE000000000000000;
  }

  *&v471 = v111;
  *(&v471 + 1) = v113;
  *&v469 = 0x6C7070612E6D6F63;
  *(&v469 + 1) = 0xEA00000000002E65;
  lazy protocol witness table accessor for type String and conformance String();
  v114 = StringProtocol.contains<A>(_:)();

  *(&v472 + 1) = v80;
  LOBYTE(v471) = v114 & 1;
  outlined init with take of Any(&v471, &v469);
  v115 = v473;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v467 = v115;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0xD000000000000016, 0x800000025ED7E770, v116);
  v473 = v467;
  v117 = [v69 bundleID];
  if (v117)
  {
    v118 = v117;
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    *&v471 = v119;
    *(&v471 + 1) = v121;
    *&v469 = 46;
    *(&v469 + 1) = 0xE100000000000000;
    v122 = (StringProtocol.components<A>(separatedBy:)() + 16);
    if (*v122)
    {
      v123 = &v122[2 * *v122];
      v125 = *v123;
      v124 = v123[1];

      *&v471 = v125;
      *(&v471 + 1) = v124;
      v109 = &selRef_recentCallStatus;
      *&v469 = 0x6F69736E65747845;
      *(&v469 + 1) = 0xE90000000000006ELL;
      v467 = 0;
      v468 = 0xE000000000000000;
      v126 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v128 = v127;

      goto LABEL_43;
    }
  }

  v128 = 0xE900000000000074;
  v126 = 0x6E65746E49707041;
LABEL_43:
  *(&v472 + 1) = MEMORY[0x277D837D0];
  *&v471 = v126;
  *(&v471 + 1) = v128;
  outlined init with take of Any(&v471, &v469);
  v129 = v473;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v467 = v129;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0xD000000000000011, 0x800000025ED806E0, v130);
  v473 = v467;
  v131 = [v69 resolvedAction];
  v132 = v458;
  if (!v131)
  {
LABEL_247:
    v447 = v454 != 1;
    v448 = v473;
    type metadata accessor for Signal();
    result = swift_allocObject();
    *(result + 16) = v41;
    *(result + 24) = v45;
    *(result + 32) = v51;
    v449 = v453;
    *(result + 40) = 0;
    *(result + 48) = v449;
    *(result + 56) = v447;
    *(result + 64) = 0x6E65746E49707041;
    *(result + 72) = 0xE900000000000074;
    *(result + 80) = v457;
    *(result + 88) = v132;
    *(result + 96) = 1;
    *(result + 104) = v448;
    return result;
  }

  v133 = v131;
  v134 = [v131 parameters];

  type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for BMAppIntentInvocationProperty, 0x277CF0FF8);
  v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v135 >> 62)
  {
    if (v135 < 0)
    {
      v446 = v135;
    }

    else
    {
      v446 = v135 & 0xFFFFFFFFFFFFFF8;
    }

    v137 = MEMORY[0x25F8CE500](v446);
    if (v137)
    {
      goto LABEL_46;
    }

    goto LABEL_246;
  }

  v137 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v137)
  {
LABEL_246:

    v132 = v458;
    goto LABEL_247;
  }

LABEL_46:
  v138 = 0;
  v464 = 0;
  v465 = v135 & 0xC000000000000001;
  v462 = (v135 & 0xFFFFFFFFFFFFFF8);
  v451 = "ent Transcript PSE Schema.";
  v139 = &off_279A51000;
  *&v136 = 136315138;
  v452 = v136;
  *&v136 = 138412290;
  v455 = v136;
  v140 = &selRef_recentCallStatus;
  v459 = v135;
  v463 = v137;
  while (1)
  {
    if (v465)
    {
      v141 = MEMORY[0x25F8CE460](v138, v135);
    }

    else
    {
      if (v138 >= *(v462 + 2))
      {
        goto LABEL_240;
      }

      v141 = *(v135 + 8 * v138 + 32);
    }

    v142 = v141;
    if (__OFADD__(v138, 1))
    {
      __break(1u);
LABEL_240:
      __break(1u);
      goto LABEL_241;
    }

    v466 = (v138 + 1);
    v143 = [v141 *(v139 + 507)];
    if (!v143)
    {
      goto LABEL_101;
    }

    v144 = v143;
    v145 = [v143 v140[107]];

    if (!v145)
    {
      goto LABEL_101;
    }

    v146 = [v145 containerType];

    if (v146 != 3)
    {
      goto LABEL_101;
    }

    v147 = [v142 v109[33]];
    if (v147)
    {
      v148 = v147;
      v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = v150;

      if (v149 != 0x746567726174 || v151 != 0xE600000000000000)
      {
        v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v139 = &off_279A51000;
        if (v152)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

LABEL_64:
      v139 = &off_279A51000;

LABEL_65:
      v158 = [v142 *(v139 + 507)];
      if (v158 && (v159 = v158, v160 = [v158 v140[107]], v159, v160) && (v161 = objc_msgSend(v160, sel_entity), v160, v161) && (v162 = objc_msgSend(v161, v109[33]), v161, v162))
      {
        v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v165 = v164;

        *(&v472 + 1) = MEMORY[0x277D837D0];
        *&v471 = v163;
        *(&v471 + 1) = v165;
        outlined init with take of Any(&v471, &v469);
        v166 = v473;
        v167 = swift_isUniquelyReferenced_nonNull_native();
        v467 = v166;
        v168 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954797469746E65, 0xEA00000000006570);
        v170 = v166[2];
        v171 = (v169 & 1) == 0;
        v172 = __OFADD__(v170, v171);
        v173 = v170 + v171;
        if (v172)
        {
          goto LABEL_249;
        }

        v174 = v169;
        if (v166[3] >= v173)
        {
          if ((v167 & 1) == 0)
          {
            v441 = v168;
            specialized _NativeDictionary.copy()();
            v168 = v441;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v173, v167);
          v168 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954797469746E65, 0xEA00000000006570);
          if ((v174 & 1) != (v175 & 1))
          {
            goto LABEL_254;
          }
        }

        v139 = &off_279A51000;
        v176 = v467;
        if (v174)
        {
          v372 = (v467[7] + 32 * v168);
          __swift_destroy_boxed_opaque_existential_0(v372);
          outlined init with take of Any(&v469, v372);
          v473 = v176;
        }

        else
        {
          v467[(v168 >> 6) + 8] |= 1 << v168;
          v373 = (v176[6] + 16 * v168);
          *v373 = 0x7954797469746E65;
          v373[1] = 0xEA00000000006570;
          outlined init with take of Any(&v469, (v176[7] + 32 * v168));
          v374 = v176[2];
          v172 = __OFADD__(v374, 1);
          v375 = v374 + 1;
          if (v172)
          {
            goto LABEL_252;
          }

          v176[2] = v375;
          v473 = v176;
        }
      }

      else
      {
        v176 = v473;
        v177 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954797469746E65, 0xEA00000000006570);
        if (v178)
        {
          v179 = v177;
          v180 = swift_isUniquelyReferenced_nonNull_native();
          *&v469 = v176;
          if (!v180)
          {
            specialized _NativeDictionary.copy()();
            v176 = v469;
          }

          outlined init with take of Any((v176[7] + 32 * v179), &v471);
          specialized _NativeDictionary._delete(at:)(v179, v176);
          v473 = v176;
        }

        else
        {
          v471 = 0u;
          v472 = 0u;
        }

        outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
      }

      v181 = [v142 *(v139 + 507)];
      if (!v181 || (v182 = v181, v183 = [v181 displayRepresentation], v182, !v183) || (v184 = objc_msgSend(v183, sel_title), v183, !v184) || (v185 = objc_msgSend(v184, sel_key), v184, !v185))
      {
        v197 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
        if (v198)
        {
          v199 = v197;
          v200 = v473;
          v201 = swift_isUniquelyReferenced_nonNull_native();
          *&v469 = v200;
          if (!v201)
          {
            specialized _NativeDictionary.copy()();
            v200 = v469;
          }

          outlined init with take of Any((*(v200 + 56) + 32 * v199), &v471);
          specialized _NativeDictionary._delete(at:)(v199, v200);
          v473 = v200;
        }

        else
        {
          v471 = 0u;
          v472 = 0u;
        }

        v139 = &off_279A51000;
        outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
LABEL_93:
        v202 = [v142 *(v139 + 507)];
        if (v202)
        {
          v203 = v202;
          v204 = [v202 *(v139 + 507)];

          if (v204)
          {
            v205 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v207 = v206;

            type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
            type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
            v461 = v207;
            v208 = v464;
            v209 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
            v464 = v208;
            if (v208)
            {
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v210 = type metadata accessor for Logger();
              __swift_project_value_buffer(v210, static Logger.engagement);
              v211 = v464;
              v212 = v464;
              v213 = Logger.logObject.getter();
              v214 = static os_log_type_t.error.getter();

              v215 = os_log_type_enabled(v213, v214);
              v135 = v459;
              if (v215)
              {
                v216 = swift_slowAlloc();
                v217 = swift_slowAlloc();
                *v216 = v455;
                v218 = v211;
                v219 = _swift_stdlib_bridgeErrorToNSError();
                *(v216 + 4) = v219;
                *v217 = v219;
                _os_log_impl(&dword_25ECEC000, v213, v214, "Can't decode entityValue, error: %@", v216, 0xCu);
                outlined destroy of Date?(v217, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x25F8CEE50](v217, -1, -1);
                v220 = v216;
                v139 = &off_279A51000;
                MEMORY[0x25F8CEE50](v220, -1, -1);

                outlined consume of Data._Representation(v205, v461);
              }

              else
              {

                outlined consume of Data._Representation(v205, v461);
              }

              v464 = 0;
              v137 = v463;
              v140 = &selRef_recentCallStatus;
            }

            else
            {
              v337 = v209;
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v338 = type metadata accessor for Logger();
              __swift_project_value_buffer(v338, static Logger.engagement);
              v339 = v337;
              v340 = Logger.logObject.getter();
              v341 = static os_log_type_t.debug.getter();

              v342 = os_log_type_enabled(v340, v341);
              v460 = v339;
              if (v342)
              {
                v343 = swift_slowAlloc();
                v344 = swift_slowAlloc();
                *&v471 = v344;
                *v343 = v452;
                *&v469 = v337;
                v345 = v339;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8LNEntityCSgMd, &_sSo8LNEntityCSgMR);
                v346 = String.init<A>(describing:)();
                v348 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v346, v347, &v471);

                *(v343 + 4) = v348;
                _os_log_impl(&dword_25ECEC000, v340, v341, "Decoded entityValue: %s", v343, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v344);
                v349 = v344;
                v109 = &selRef_recentCallStatus;
                MEMORY[0x25F8CEE50](v349, -1, -1);
                v350 = v343;
                v140 = &selRef_recentCallStatus;
                MEMORY[0x25F8CEE50](v350, -1, -1);
              }

              if (v337)
              {
                v351 = v460;
                v352 = [v460 v109[33]];
                v353 = [v352 instanceIdentifier];

                v354 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v356 = v355;

                *(&v472 + 1) = MEMORY[0x277D837D0];
                *&v471 = v354;
                *(&v471 + 1) = v356;
                outlined init with take of Any(&v471, &v469);
                v357 = v473;
                v358 = swift_isUniquelyReferenced_nonNull_native();
                v467 = v357;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0xD000000000000010, v451 | 0x8000000000000000, v358);

                outlined consume of Data._Representation(v205, v461);
                v473 = v467;
              }

              else
              {
                specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, v451 | 0x8000000000000000, &v471);

                outlined consume of Data._Representation(v205, v461);
                outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
              }

              v139 = &off_279A51000;
              v135 = v459;
              v137 = v463;
            }

            goto LABEL_48;
          }
        }

LABEL_47:

        goto LABEL_48;
      }

      v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v188 = v187;

      *(&v472 + 1) = MEMORY[0x277D837D0];
      *&v471 = v186;
      *(&v471 + 1) = v188;
      outlined init with take of Any(&v471, &v469);
      v189 = swift_isUniquelyReferenced_nonNull_native();
      v467 = v176;
      v190 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
      v192 = v176[2];
      v193 = (v191 & 1) == 0;
      v172 = __OFADD__(v192, v193);
      v194 = v192 + v193;
      if (v172)
      {
        goto LABEL_250;
      }

      v195 = v191;
      if (v176[3] >= v194)
      {
        if ((v189 & 1) == 0)
        {
          v442 = v190;
          specialized _NativeDictionary.copy()();
          v190 = v442;
          v376 = v467;
          if (v195)
          {
            goto LABEL_194;
          }

          goto LABEL_236;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v194, v189);
        v190 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
        if ((v195 & 1) != (v196 & 1))
        {
          goto LABEL_254;
        }
      }

      v376 = v467;
      if (v195)
      {
LABEL_194:
        v377 = (v376[7] + 32 * v190);
        __swift_destroy_boxed_opaque_existential_0(v377);
        outlined init with take of Any(&v469, v377);
LABEL_238:
        v473 = v376;
        v139 = &off_279A51000;
        goto LABEL_93;
      }

LABEL_236:
      v376[(v190 >> 6) + 8] |= 1 << v190;
      v443 = (v376[6] + 16 * v190);
      *v443 = 0x6954797469746E65;
      v443[1] = 0xEB00000000656C74;
      outlined init with take of Any(&v469, (v376[7] + 32 * v190));
      v444 = v376[2];
      v172 = __OFADD__(v444, 1);
      v445 = v444 + 1;
      if (v172)
      {
        goto LABEL_253;
      }

      v376[2] = v445;
      goto LABEL_238;
    }

LABEL_61:
    v153 = [v142 v109[33]];
    if (v153)
    {
      v154 = v153;
      v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v156;

      if (v155 == 0x7465737361 && v157 == 0xE500000000000000)
      {
        goto LABEL_64;
      }

      v221 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v139 = &off_279A51000;
      if (v221)
      {
        goto LABEL_65;
      }
    }

LABEL_101:
    v222 = [v142 v109[33]];
    if (!v222)
    {
      goto LABEL_120;
    }

    v223 = v222;
    v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v226 = v225;

    if (v224 == 0x6850686372616573 && v226 == 0xEC00000065736172)
    {

      v139 = &off_279A51000;
    }

    else
    {
      v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v139 = &off_279A51000;
      if ((v227 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v228 = [v142 *(v139 + 507)];
    if (v228)
    {
      v229 = v228;
      v230 = [v228 *(v139 + 507)];

      if (v230)
      {
        v231 = v139;
        v232 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v234 = v233;

        v235 = [v142 v231 + 376];
        if (v235)
        {
          v236 = v235;
          v237 = [v235 v140[107]];

          if (v237)
          {
            v238 = [v237 containerType];

            if (v238 == 7)
            {
              v239 = [v142 value];
              if (v239)
              {
                v240 = v239;
                v241 = [v239 v140[107]];

                if (v241)
                {
                  v242 = [v241 primitive];

                  if (v242 == 1)
                  {
                    v243 = [v142 value];
                    if (v243 && (v244 = v243, v245 = [v243 displayRepresentation], v244, v245) && (v246 = objc_msgSend(v245, sel_title), v245, v246) && (v247 = objc_msgSend(v246, sel_key), v246, v247))
                    {
                      v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v250 = v249;

                      *(&v472 + 1) = MEMORY[0x277D837D0];
                      *&v471 = v248;
                      *(&v471 + 1) = v250;
                      outlined init with take of Any(&v471, &v469);
                      v251 = v473;
                      v252 = swift_isUniquelyReferenced_nonNull_native();
                      v467 = v251;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x6954797469746E65, 0xEB00000000656C74, v252);
                      v473 = v467;
                    }

                    else
                    {
                      v378 = v473;
                      v379 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
                      if (v380)
                      {
                        v381 = v379;
                        v382 = swift_isUniquelyReferenced_nonNull_native();
                        *&v469 = v378;
                        if ((v382 & 1) == 0)
                        {
                          specialized _NativeDictionary.copy()();
                          v378 = v469;
                        }

                        outlined init with take of Any((*(v378 + 56) + 32 * v381), &v471);
                        specialized _NativeDictionary._delete(at:)(v381, v378);
                        v473 = v378;
                      }

                      else
                      {
                        v471 = 0u;
                        v472 = 0u;
                      }

                      outlined destroy of Date?(&v471, &_sypSgMd, &_sypSgMR);
                    }

                    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
                    v383 = type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
                    v384 = v464;
                    v385 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                    v464 = v384;
                    if (v384)
                    {
                      if (one-time initialization token for engagement != -1)
                      {
                        swift_once();
                      }

                      v386 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v386, static Logger.engagement);
                      v278 = v464;
                      v387 = v464;
                      v280 = Logger.logObject.getter();
                      v388 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v280, v388))
                      {
                        v389 = swift_slowAlloc();
                        v390 = swift_slowAlloc();
                        *v389 = v455;
                        v391 = v278;
                        v392 = _swift_stdlib_bridgeErrorToNSError();
                        *(v389 + 4) = v392;
                        *v390 = v392;
                        _os_log_impl(&dword_25ECEC000, v280, v388, "Can't decode value, error: %@", v389, 0xCu);
                        outlined destroy of Date?(v390, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                        MEMORY[0x25F8CEE50](v390, -1, -1);
                        MEMORY[0x25F8CEE50](v389, -1, -1);

                        v286 = v232;
                        v287 = v234;
                        goto LABEL_208;
                      }

                      v433 = v232;
                      v434 = v234;
                      goto LABEL_224;
                    }

                    v393 = v385;
                    if (one-time initialization token for engagement != -1)
                    {
                      swift_once();
                    }

                    v394 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v394, static Logger.engagement);
                    v395 = v393;
                    v396 = Logger.logObject.getter();
                    v461 = v393;
                    v397 = v396;
                    v398 = static os_log_type_t.debug.getter();

                    LODWORD(v456) = v398;
                    v399 = v398;
                    v400 = v397;
                    v401 = os_log_type_enabled(v397, v399);
                    v460 = v395;
                    if (v401)
                    {
                      v402 = swift_slowAlloc();
                      v403 = swift_slowAlloc();
                      *&v471 = v403;
                      *v402 = v452;
                      *&v469 = v461;
                      v404 = v395;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
                      v405 = String.init<A>(describing:)();
                      v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v405, v406, &v471);
                      v109 = &selRef_recentCallStatus;

                      *(v402 + 4) = v407;
                      _os_log_impl(&dword_25ECEC000, v400, v456, "Decoded value: %s", v402, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v403);
                      MEMORY[0x25F8CEE50](v403, -1, -1);
                      v408 = v402;
                      v140 = &selRef_recentCallStatus;
                      MEMORY[0x25F8CEE50](v408, -1, -1);
                    }

                    if (!v461)
                    {
                      specialized Dictionary._Variant.removeValue(forKey:)(0x6850686372616573, 0xEC00000065736172, &v469);
                      outlined destroy of Date?(&v469, &_sypSgMd, &_sypSgMR);

                      outlined consume of Data._Representation(v232, v234);
                      goto LABEL_227;
                    }

                    *(&v472 + 1) = v383;
                    v409 = v460;
                    *&v471 = v460;
                    outlined init with take of Any(&v471, &v469);
                    v410 = v409;
                    v411 = v473;
                    v412 = swift_isUniquelyReferenced_nonNull_native();
                    v467 = v411;
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x6850686372616573, 0xEC00000065736172, v412);

                    outlined consume of Data._Representation(v232, v234);
LABEL_221:
                    v473 = v467;
LABEL_227:
                    v135 = v459;
LABEL_228:
                    v137 = v463;
                    v139 = &off_279A51000;
                    goto LABEL_48;
                  }
                }
              }
            }
          }
        }

        outlined consume of Data._Representation(v232, v234);
        v137 = v463;
        v139 = &off_279A51000;
      }
    }

LABEL_120:
    v253 = [v142 v109[33]];
    if (!v253)
    {
      goto LABEL_139;
    }

    v254 = v253;
    v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v257 = v256;

    if (v255 == 0x7265755172657375 && v257 == 0xE900000000000079)
    {

      v139 = &off_279A51000;
    }

    else
    {
      v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v139 = &off_279A51000;
      if ((v258 & 1) == 0)
      {
        goto LABEL_139;
      }
    }

    v259 = [v142 *(v139 + 507)];
    if (v259)
    {
      v260 = v259;
      v261 = [v259 *(v139 + 507)];

      if (v261)
      {
        v262 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v263 = v139;
        v265 = v264;

        v266 = [v142 v263 + 376];
        if (v266)
        {
          v267 = v266;
          v268 = [v266 v140[107]];

          if (v268)
          {
            v269 = [v268 containerType];

            if (v269 == 7)
            {
              v270 = [v142 value];
              if (v270)
              {
                v271 = v270;
                v272 = [v270 v140[107]];

                if (v272)
                {
                  v273 = [v272 primitive];

                  if (v273 == 1)
                  {
                    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
                    v274 = type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
                    v275 = v464;
                    v276 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                    v464 = v275;
                    if (v275)
                    {
                      if (one-time initialization token for engagement != -1)
                      {
                        swift_once();
                      }

                      v277 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v277, static Logger.engagement);
                      v278 = v464;
                      v279 = v464;
                      v280 = Logger.logObject.getter();
                      v281 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v280, v281))
                      {
                        v282 = swift_slowAlloc();
                        v283 = swift_slowAlloc();
                        *v282 = v455;
                        v284 = v278;
                        v285 = _swift_stdlib_bridgeErrorToNSError();
                        *(v282 + 4) = v285;
                        *v283 = v285;
                        _os_log_impl(&dword_25ECEC000, v280, v281, "Can't decode value, error: %@", v282, 0xCu);
                        outlined destroy of Date?(v283, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                        MEMORY[0x25F8CEE50](v283, -1, -1);
                        MEMORY[0x25F8CEE50](v282, -1, -1);

                        v286 = v262;
                        v287 = v265;
LABEL_208:
                        outlined consume of Data._Representation(v286, v287);

LABEL_225:
                        v464 = 0;
                        v135 = v459;
                        v137 = v463;
                        v139 = &off_279A51000;
                        v140 = &selRef_recentCallStatus;
                        goto LABEL_48;
                      }

                      v433 = v262;
                      v434 = v265;
LABEL_224:
                      outlined consume of Data._Representation(v433, v434);

                      goto LABEL_225;
                    }

                    v413 = v276;
                    if (one-time initialization token for engagement != -1)
                    {
                      swift_once();
                    }

                    v414 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v414, static Logger.engagement);
                    v415 = v413;
                    v416 = Logger.logObject.getter();
                    v461 = v413;
                    v417 = v416;
                    v418 = static os_log_type_t.debug.getter();

                    LODWORD(v456) = v418;
                    v419 = v418;
                    v420 = v417;
                    v421 = os_log_type_enabled(v417, v419);
                    v460 = v415;
                    if (v421)
                    {
                      v422 = swift_slowAlloc();
                      v423 = swift_slowAlloc();
                      *&v471 = v423;
                      *v422 = v452;
                      *&v469 = v461;
                      v424 = v415;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
                      v425 = String.init<A>(describing:)();
                      v427 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v425, v426, &v471);
                      v109 = &selRef_recentCallStatus;

                      *(v422 + 4) = v427;
                      _os_log_impl(&dword_25ECEC000, v420, v456, "Decoded value: %s", v422, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v423);
                      MEMORY[0x25F8CEE50](v423, -1, -1);
                      v428 = v422;
                      v140 = &selRef_recentCallStatus;
                      MEMORY[0x25F8CEE50](v428, -1, -1);
                    }

                    if (!v461)
                    {
                      v435 = v473;
                      v436 = specialized __RawDictionaryStorage.find<A>(_:)(0x7265755172657375, 0xE900000000000079);
                      if (v437)
                      {
                        v438 = v436;
                        v439 = swift_isUniquelyReferenced_nonNull_native();
                        v467 = v435;
                        if ((v439 & 1) == 0)
                        {
                          specialized _NativeDictionary.copy()();
                          v435 = v467;
                        }

                        outlined init with take of Any((*(v435 + 56) + 32 * v438), &v469);
                        specialized _NativeDictionary._delete(at:)(v438, v435);
                        v473 = v435;
                      }

                      else
                      {
                        v469 = 0u;
                        v470 = 0u;
                      }

                      v135 = v459;

                      outlined consume of Data._Representation(v262, v265);
                      outlined destroy of Date?(&v469, &_sypSgMd, &_sypSgMR);
                      goto LABEL_228;
                    }

                    *(&v472 + 1) = v274;
                    v429 = v460;
                    *&v471 = v460;
                    outlined init with take of Any(&v471, &v469);
                    v430 = v429;
                    v431 = v473;
                    v432 = swift_isUniquelyReferenced_nonNull_native();
                    v467 = v431;
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v469, 0x7265755172657375, 0xE900000000000079, v432);

                    outlined consume of Data._Representation(v262, v265);
                    goto LABEL_221;
                  }
                }
              }
            }
          }
        }

        outlined consume of Data._Representation(v262, v265);
        v137 = v463;
        v139 = &off_279A51000;
      }
    }

LABEL_139:
    v288 = [v142 v109[33]];
    if (!v288)
    {
      goto LABEL_47;
    }

    v289 = v288;
    v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v292 = v291;

    if (v290 == 0x6169726574697263 && v292 == 0xE800000000000000)
    {

      v139 = &off_279A51000;
    }

    else
    {
      v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v139 = &off_279A51000;
      if ((v293 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v294 = [v142 *(v139 + 507)];
    if (!v294)
    {
      goto LABEL_47;
    }

    v295 = v294;
    v296 = [v294 *(v139 + 507)];

    if (!v296)
    {
      goto LABEL_47;
    }

    v297 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v299 = v298;

    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for LNStringSearchCriteria, 0x277D23918);
    v460 = v297;
    v461 = v299;
    v300 = v464;
    v301 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v464 = v300;
    if (v300)
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v302 = type metadata accessor for Logger();
      __swift_project_value_buffer(v302, static Logger.engagement);
      v303 = v464;
      v304 = v464;
      v305 = Logger.logObject.getter();
      v306 = static os_log_type_t.error.getter();

      v307 = os_log_type_enabled(v305, v306);
      v135 = v459;
      if (v307)
      {
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        *v308 = v455;
        v310 = v303;
        v311 = _swift_stdlib_bridgeErrorToNSError();
        *(v308 + 4) = v311;
        *v309 = v311;
        _os_log_impl(&dword_25ECEC000, v305, v306, "Can't decode value, error: %@", v308, 0xCu);
        outlined destroy of Date?(v309, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x25F8CEE50](v309, -1, -1);
        v312 = v308;
        v139 = &off_279A51000;
        MEMORY[0x25F8CEE50](v312, -1, -1);

        outlined consume of Data._Representation(v460, v461);
      }

      else
      {

        outlined consume of Data._Representation(v460, v461);
      }

      v464 = 0;
      v140 = &selRef_recentCallStatus;
      goto LABEL_48;
    }

    v313 = v301;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v314 = type metadata accessor for Logger();
    __swift_project_value_buffer(v314, static Logger.engagement);
    v315 = v313;
    v316 = Logger.logObject.getter();
    v317 = static os_log_type_t.debug.getter();
    v456 = v315;

    if (os_log_type_enabled(v316, v317))
    {
      v318 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      *&v469 = v319;
      *v318 = v452;
      if (v313)
      {
        v320 = [v456 term];
        v321 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v323 = v322;

        v137 = v463;
      }

      else
      {
        v321 = 0;
        v323 = 0;
      }

      *&v471 = v321;
      *(&v471 + 1) = v323;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v364 = String.init<A>(describing:)();
      v366 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v364, v365, &v469);

      *(v318 + 4) = v366;
      _os_log_impl(&dword_25ECEC000, v316, v317, "Decoded value: %s", v318, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v319);
      MEMORY[0x25F8CEE50](v319, -1, -1);
      MEMORY[0x25F8CEE50](v318, -1, -1);

      v139 = &off_279A51000;
      v140 = &selRef_recentCallStatus;
      v109 = &selRef_recentCallStatus;
      if (!v313)
      {
LABEL_180:
        v367 = v473;
        v368 = specialized __RawDictionaryStorage.find<A>(_:)(0x6169726574697263, 0xE800000000000000);
        if (v369)
        {
          v370 = v368;
          v371 = swift_isUniquelyReferenced_nonNull_native();
          v467 = v367;
          v135 = v459;
          if ((v371 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v367 = v467;
          }

          outlined init with take of Any((*(v367 + 56) + 32 * v370), &v469);
          specialized _NativeDictionary._delete(at:)(v370, v367);
          v473 = v367;
        }

        else
        {
          v469 = 0u;
          v470 = 0u;
          v135 = v459;
        }

        outlined consume of Data._Representation(v460, v461);
        outlined destroy of Date?(&v469, &_sypSgMd, &_sypSgMR);
        goto LABEL_48;
      }
    }

    else
    {

      v109 = &selRef_recentCallStatus;
      if (!v313)
      {
        goto LABEL_180;
      }
    }

    v324 = [v456 term];
    v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v327 = v326;

    *(&v472 + 1) = MEMORY[0x277D837D0];
    *&v471 = v325;
    *(&v471 + 1) = v327;
    outlined init with take of Any(&v471, &v469);
    v328 = v473;
    v329 = swift_isUniquelyReferenced_nonNull_native();
    v467 = v328;
    v330 = specialized __RawDictionaryStorage.find<A>(_:)(0x6169726574697263, 0xE800000000000000);
    v332 = v328[2];
    v333 = (v331 & 1) == 0;
    v172 = __OFADD__(v332, v333);
    v334 = v332 + v333;
    if (v172)
    {
      break;
    }

    v335 = v331;
    if (v328[3] >= v334)
    {
      if ((v329 & 1) == 0)
      {
        v440 = v330;
        specialized _NativeDictionary.copy()();
        v330 = v440;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v334, v329);
      v330 = specialized __RawDictionaryStorage.find<A>(_:)(0x6169726574697263, 0xE800000000000000);
      if ((v335 & 1) != (v336 & 1))
      {
        goto LABEL_254;
      }
    }

    v135 = v459;
    v359 = v467;
    if (v335)
    {
      v360 = (v467[7] + 32 * v330);
      __swift_destroy_boxed_opaque_existential_0(v360);
      outlined init with take of Any(&v469, v360);
    }

    else
    {
      v467[(v330 >> 6) + 8] |= 1 << v330;
      v361 = (v359[6] + 16 * v330);
      *v361 = 0x6169726574697263;
      v361[1] = 0xE800000000000000;
      outlined init with take of Any(&v469, (v359[7] + 32 * v330));
      v362 = v359[2];
      v172 = __OFADD__(v362, 1);
      v363 = v362 + 1;
      if (v172)
      {
        goto LABEL_251;
      }

      v359[2] = v363;
    }

    outlined consume of Data._Representation(v460, v461);
    v473 = v359;
    v139 = &off_279A51000;
LABEL_48:
    ++v138;
    if (v466 == v137)
    {
      goto LABEL_246;
    }
  }

  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Date() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for Date();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t PSESELFEmitter.getPSEDonationSource(pseDonationSource:)(char a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t PSESELFEmitter.getPSETriggerOrigin()()
{
  swift_beginAccess();
  v0 = static PSEStruct.pseTriggerOrigin;
  v1 = qword_280FEE450;
  v2 = static PSEStruct.pseTriggerOrigin == 0x6E61747369737361 && qword_280FEE450 == 0xEA00000000006474;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  result = 2;
  if (v0 != 0x636E657265666E69 || v1 != 0xEA00000000006465)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PSESELFEmitter.getPSEAppFollowup(appLaunchBundleId:taskAppPattern:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  if (!a2)
  {
    return v4;
  }

  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || !a4)
  {
    return v4;
  }

  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return v4;
  }

  v4 = 1;
  if (a1 == a3 && a2 == a4)
  {
    return v4;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t PSESELFEmitter.getPSEAppFollowupForMaps(appLaunchBundleId:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    return 1;
  }

  v4 = StringProtocol.contains<A>(_:)();
  result = 4;
  if ((v4 & 1) == 0)
  {
    if (StringProtocol.contains<A>(_:)())
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t PSESELFEmitter.getPSEAppLaunchReason(reason:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 1769105747 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65726373656D6F48 && a2 == 0xEA00000000006E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  result = 4;
  if (a1 != 0x726568744FLL || a2 != 0xE500000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized PSESELFEmitter.applyMissingDonationMonitor(task:)(uint64_t a1)
{
  v2 = type metadata accessor for ReliabilityCategory();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v73 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v73 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v73 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v73 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v73 - v18;
  (*(*a1 + 280))(v17);
  v20 = String.lowercased()();

  v79 = v20;
  v77 = 0x7373656D646E6573;
  v78 = 0xEB00000000656761;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.engagement);
    v22 = *MEMORY[0x277D616D8];
    v23 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v23 - 8) + 104))(v19, v22, v23);
    v25 = v75;
    v24 = v76;
    (*(v75 + 104))(v19, *MEMORY[0x277D61678], v76);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v79._countAndFlagsBits = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000057, 0x800000025ED80CF0, &v79._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F8CEE50](v29, -1, -1);
      MEMORY[0x25F8CEE50](v28, -1, -1);
    }

LABEL_6:

    type metadata accessor for SiriTaskEngagementUtils();
    v30 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v32 = v31;
LABEL_31:
    MEMORY[0x25F8CDB30](v19, v30, v32);

    return (*(v25 + 8))(v19, v24);
  }

  v79 = v20;
  v77 = 0x6C61637472617473;
  v78 = 0xE90000000000006CLL;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.engagement);
    v34 = *MEMORY[0x277D616D8];
    v35 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v35 - 8) + 104))(v16, v34, v35);
    v25 = v75;
    v24 = v76;
    (*(v75 + 104))(v16, *MEMORY[0x277D61678], v76);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79._countAndFlagsBits = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000025ED80C90, &v79._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x25F8CEE50](v39, -1, -1);
      MEMORY[0x25F8CEE50](v38, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v30 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v32 = v40;
    v19 = v16;
    goto LABEL_31;
  }

  v79 = v20;
  v77 = 0x6964656D79616C70;
  v78 = 0xE900000000000061;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.engagement);
    v42 = *MEMORY[0x277D616F8];
    v43 = type metadata accessor for NowPlayingEventDataIssues();
    (*(*(v43 - 8) + 104))(v13, v42, v43);
    v25 = v75;
    v24 = v76;
    (*(v75 + 104))(v13, *MEMORY[0x277D61688], v76);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v79._countAndFlagsBits = v47;
      *v46 = 136315138;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x800000025ED80C30, &v79._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v44, v45, "%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x25F8CEE50](v47, -1, -1);
      MEMORY[0x25F8CEE50](v46, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v30 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v32 = v48;
    v19 = v13;
    goto LABEL_31;
  }

  v79 = v20;
  v77 = 0x686C6F72746E6F63;
  v78 = 0xEB00000000656D6FLL;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.engagement);
    v50 = *MEMORY[0x277D61758];
    v51 = type metadata accessor for HomeKitClientAccessoryControlEventDataIssues();
    (*(*(v51 - 8) + 104))(v10, v50, v51);
    v25 = v75;
    v24 = v76;
    (*(v75 + 104))(v10, *MEMORY[0x277D616B0], v76);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v79._countAndFlagsBits = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000054, 0x800000025ED80BD0, &v79._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v52, v53, "%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x25F8CEE50](v55, -1, -1);
      MEMORY[0x25F8CEE50](v54, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v30 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v32 = v56;
    v19 = v10;
    goto LABEL_31;
  }

  v79 = v20;
  v77 = 1936744813;
  v78 = 0xE400000000000000;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.engagement);
    v58 = *MEMORY[0x277D61648];
    v59 = type metadata accessor for MapsEventDataIssues();
    (*(*(v59 - 8) + 104))(v7, v58, v59);
    v25 = v75;
    v24 = v76;
    (*(v75 + 104))(v7, *MEMORY[0x277D61660], v76);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v79._countAndFlagsBits = v63;
      *v62 = 136315138;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000050, 0x800000025ED80B70, &v79._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v60, v61, "%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x25F8CEE50](v63, -1, -1);
      MEMORY[0x25F8CEE50](v62, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v30 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v32 = v64;
    v19 = v7;
    goto LABEL_31;
  }

  v79 = v20;
  v77 = 0x6D72616C61;
  v78 = 0xE500000000000000;
  v66 = StringProtocol.contains<A>(_:)();

  if (v66)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.engagement);
    v68 = *MEMORY[0x277D616B8];
    v69 = type metadata accessor for AlarmEventDataIssues();
    v19 = v74;
    (*(*(v69 - 8) + 104))(v74, v68, v69);
    v25 = v75;
    v24 = v76;
    (*(v75 + 104))(v19, *MEMORY[0x277D61668], v76);
    v26 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v79._countAndFlagsBits = v72;
      *v71 = 136315138;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000051, 0x800000025ED80B10, &v79._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v26, v70, "%s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x25F8CEE50](v72, -1, -1);
      MEMORY[0x25F8CEE50](v71, -1, -1);
    }

    goto LABEL_6;
  }

  return result;
}

void specialized PSESELFEmitter.emitPSESELFInstrumentation(signals:task:)(unint64_t a1, uint64_t a2)
{
  v7 = [objc_opt_self() sharedConnection];
  if (!v7)
  {
    __break(1u);
    goto LABEL_259;
  }

  v8 = v7;
  v9 = [v7 effectiveBoolValueForSetting_];

  if (v9 != 1)
  {
LABEL_23:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.engagement);
    osloga = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(osloga, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25ECEC000, osloga, v20, "D&U is not allowed.", v21, 2u);
      MEMORY[0x25F8CEE50](v21, -1, -1);
    }

    return;
  }

  v113 = a2;
  v120 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_212:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v96 = a1;
    }

    else
    {
      v96 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x25F8CE500](v96);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_216:
    a1 = MEMORY[0x277D84F90];
    v86 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v2 = v113;
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_220;
    }

    goto LABEL_217;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_216;
  }

LABEL_5:
  v11 = 0;
  oslog = (a1 & 0xC000000000000001);
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (oslog)
    {
      v13 = MEMORY[0x25F8CE460](v11, a1);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
        goto LABEL_212;
      }

      v13 = *(a1 + 8 * v11 + 32);

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }
    }

    v16 = (*(*v13 + 144))() == 0x636E75614C707041 && v15 == 0xE900000000000068;
    if (v16)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    (*(*v13 + 120))(&v118, v18);
    if (v119 > 30.0)
    {
LABEL_6:

      goto LABEL_7;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_7:
    ++v11;
  }

  while (v14 != v10);
  v22 = 0;
  v109 = v120;
  v120 = MEMORY[0x277D84F90];
  v114 = a1;
  while (oslog)
  {
    v23 = MEMORY[0x25F8CE460](v22, a1);
    a1 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_54;
    }

LABEL_36:
    if ((*(*v23 + 144))() == 0x636E75614C707041 && v24 == 0xE900000000000068)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if ((*(*v23 + 168))(v27) == 0x65726373656D6F48 && v28 == 0xEA00000000006E65)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    (*(*v23 + 120))(&v118, v31);
    if (v119 <= 30.0)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_32;
    }

LABEL_31:

LABEL_32:
    ++v22;
    v16 = a1 == v10;
    a1 = v114;
    if (v16)
    {
      goto LABEL_55;
    }
  }

  if (v22 >= *(v12 + 16))
  {
    goto LABEL_204;
  }

  v23 = *(a1 + 8 * v22 + 32);

  a1 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_36;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  v32 = 0;
  v108 = v120;
  v120 = MEMORY[0x277D84F90];
  while (2)
  {
    if (oslog)
    {
      v33 = MEMORY[0x25F8CE460](v32, a1);
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_77;
      }

LABEL_61:
      if ((*(*v33 + 144))() == 0x736C6C6143 && v35 == 0xE500000000000000)
      {
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v37 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v39 = (*(*v33 + 216))(v38);
      if (!*(v39 + 16) || (v40 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v41 & 1) == 0))
      {

        goto LABEL_57;
      }

      outlined init with copy of Any(*(v39 + 56) + 32 * v40, &v118);

      if (swift_dynamicCast())
      {
        if (v117)
        {
          (*(*v33 + 120))(&v118);
          if (v119 <= 30.0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_57:
            ++v32;
            v16 = v34 == v10;
            a1 = v114;
            if (v16)
            {
              goto LABEL_78;
            }

            continue;
          }
        }
      }

LABEL_73:

      goto LABEL_57;
    }

    break;
  }

  if (v32 >= *(v12 + 16))
  {
    goto LABEL_205;
  }

  v33 = *(a1 + 8 * v32 + 32);

  v34 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    goto LABEL_61;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  v42 = 0;
  v107 = v120;
  v120 = MEMORY[0x277D84F90];
  a1 = 0xE800000000000000;
  while (2)
  {
    if (oslog)
    {
      v43 = MEMORY[0x25F8CE460](v42, v114);
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_100;
      }

LABEL_84:
      if ((*(*v43 + 144))() == 0x736567617373654DLL && v45 == 0xE800000000000000)
      {
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v47 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      v49 = (*(*v43 + 216))(v48);
      if (!*(v49 + 16) || (v50 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v51 & 1) == 0))
      {

        goto LABEL_80;
      }

      outlined init with copy of Any(*(v49 + 56) + 32 * v50, &v118);

      if (swift_dynamicCast())
      {
        if (v117)
        {
          (*(*v43 + 120))(&v118);
          if (v119 <= 30.0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_80:
            ++v42;
            if (v44 == v10)
            {
              goto LABEL_101;
            }

            continue;
          }
        }
      }

LABEL_96:

      goto LABEL_80;
    }

    break;
  }

  if (v42 >= *(v12 + 16))
  {
    goto LABEL_206;
  }

  v43 = *(v114 + 8 * v42 + 32);

  v44 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_84;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  v52 = 0;
  v112 = v120;
  v120 = MEMORY[0x277D84F90];
  a1 = 0xE400000000000000;
  while (2)
  {
    if (oslog)
    {
      v53 = MEMORY[0x25F8CE460](v52, v114);
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_123;
      }

LABEL_105:
      if ((*(*v53 + 144))() == 1936744781 && v55 == 0xE400000000000000)
      {
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v57 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      v59 = (*(*v53 + 216))(v58);
      if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v61 & 1) != 0))
      {
        outlined init with copy of Any(*(v59 + 56) + 32 * v60, &v118);

        if (swift_dynamicCast() & 1) != 0 && (v117)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_119;
        }
      }

      else
      {
      }

LABEL_118:

LABEL_119:
      ++v52;
      if (v54 == v10)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  if (v52 >= *(v12 + 16))
  {
    goto LABEL_207;
  }

  v53 = *(v114 + 8 * v52 + 32);

  v54 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    goto LABEL_105;
  }

LABEL_123:
  __break(1u);
LABEL_124:
  v62 = 0;
  v111 = v120;
  v120 = MEMORY[0x277D84F90];
  a1 = v114;
  while (2)
  {
    if (oslog)
    {
      v63 = MEMORY[0x25F8CE460](v62, a1);
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_141;
      }

LABEL_130:
      if ((*(*v63 + 144))() == 0x6F747541656D6F48 && v65 == 0xEE006E6F6974616DLL)
      {
      }

      else
      {
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v67 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      (*(*v63 + 120))(&v118, v68);
      if (v119 <= 30.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_126:
        a1 = v114;
        ++v62;
        if (v64 == v10)
        {
          goto LABEL_142;
        }

        continue;
      }

LABEL_125:

      goto LABEL_126;
    }

    break;
  }

  if (v62 >= *(v12 + 16))
  {
    goto LABEL_208;
  }

  v63 = *(a1 + 8 * v62 + 32);

  v64 = v62 + 1;
  if (!__OFADD__(v62, 1))
  {
    goto LABEL_130;
  }

LABEL_141:
  __break(1u);
LABEL_142:
  v69 = 0;
  v106 = v120;
  v120 = MEMORY[0x277D84F90];
  while (2)
  {
    if (oslog)
    {
      v70 = MEMORY[0x25F8CE460](v69, a1);
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_159;
      }

LABEL_148:
      if ((*(*v70 + 144))() == 0x6D72616C41 && v72 == 0xE500000000000000)
      {
      }

      else
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v74 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      (*(*v70 + 120))(&v118, v75);
      if (v119 <= 30.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_144:
        ++v69;
        if (v71 == v10)
        {
          goto LABEL_160;
        }

        continue;
      }

LABEL_143:

      goto LABEL_144;
    }

    break;
  }

  if (v69 >= *(v12 + 16))
  {
    goto LABEL_209;
  }

  v70 = *(a1 + 8 * v69 + 32);

  v71 = v69 + 1;
  if (!__OFADD__(v69, 1))
  {
    goto LABEL_148;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  a1 = 0;
  v110 = v120;
  v120 = MEMORY[0x277D84F90];
  while (2)
  {
    if (oslog)
    {
      v76 = MEMORY[0x25F8CE460](a1, v114);
      v77 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_182;
      }

LABEL_166:
      if ((*(*v76 + 144))() == 0x636973754DLL && v78 == 0xE500000000000000)
      {
      }

      else
      {
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v80 & 1) == 0)
        {
          goto LABEL_178;
        }
      }

      v82 = (*(*v76 + 216))(v81);
      if (!*(v82 + 16) || (v83 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v84 & 1) == 0))
      {

        goto LABEL_162;
      }

      outlined init with copy of Any(*(v82 + 56) + 32 * v83, &v118);

      if (swift_dynamicCast())
      {
        if (v117)
        {
          (*(*v76 + 120))(&v118);
          if (v119 <= 30.0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_162:
            ++a1;
            if (v77 == v10)
            {
              goto LABEL_183;
            }

            continue;
          }
        }
      }

LABEL_178:

      goto LABEL_162;
    }

    break;
  }

  if (a1 >= *(v12 + 16))
  {
    goto LABEL_210;
  }

  v76 = *(v114 + 8 * a1 + 32);

  v77 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_166;
  }

LABEL_182:
  __break(1u);
LABEL_183:
  v85 = 0;
  a1 = v120;
  v120 = MEMORY[0x277D84F90];
  v86 = v106;
  while (2)
  {
    if (oslog)
    {
      v87 = MEMORY[0x25F8CE460](v85, v114);
      v88 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_200;
      }

LABEL_189:
      if ((*(*v87 + 144))() == 0x6E65746E49707041 && v89 == 0xE900000000000074)
      {
      }

      else
      {
        v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v91 & 1) == 0)
        {
          goto LABEL_184;
        }
      }

      (*(*v87 + 120))(&v118, v92);
      if (v119 <= 30.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_185:
        ++v85;
        if (v88 == v10)
        {
          goto LABEL_201;
        }

        continue;
      }

LABEL_184:

      goto LABEL_185;
    }

    break;
  }

  if (v85 >= *(v12 + 16))
  {
    goto LABEL_211;
  }

  v87 = *(v114 + 8 * v85 + 32);

  v88 = v85 + 1;
  if (!__OFADD__(v85, 1))
  {
    goto LABEL_189;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  v93 = v120;
  v94 = v108;
  v3 = v109;
  v95 = v107;
  v2 = v113;
  if ((v107 & 0x8000000000000000) == 0)
  {
LABEL_217:
    if ((v95 & 0x4000000000000000) != 0)
    {
      goto LABEL_220;
    }

    if (*(v95 + 16) > 0)
    {
      goto LABEL_219;
    }

LABEL_221:

    v97 = v112;
    if ((v112 & 0x8000000000000000) != 0 || (v112 & 0x4000000000000000) != 0)
    {
      v97 = v112;
      if (MEMORY[0x25F8CE500](v112) >= 1)
      {
        goto LABEL_224;
      }
    }

    else if (*(v112 + 16) >= 1)
    {
LABEL_224:

      type metadata accessor for PSESMSSELFEmitter();
      swift_allocObject();
      PSESMSSELFEmitter.emitPSESMS(smsSignals:appLaunchSignals:task:)(v97, v94, v2);
      goto LABEL_230;
    }

    v98 = v111;
    if ((v111 & 0x8000000000000000) != 0 || (v111 & 0x4000000000000000) != 0)
    {
      v98 = v111;
      if (MEMORY[0x25F8CE500](v111) >= 1)
      {
        goto LABEL_229;
      }
    }

    else if (*(v111 + 16) >= 1)
    {
LABEL_229:

      type metadata accessor for PSEGeoSELFEmitter();
      swift_allocObject();
      PSEGeoSELFEmitter.emitPSEGeo(geoSignals:appLaunchSignals:task:)(v98, v94, v2);
      goto LABEL_230;
    }

    if ((v86 & 0x8000000000000000) != 0 || (v86 & 0x4000000000000000) != 0)
    {
      if (MEMORY[0x25F8CE500](v86) >= 1)
      {
        goto LABEL_237;
      }
    }

    else if (*(v86 + 16) >= 1)
    {
LABEL_237:

      type metadata accessor for PSEHomeSELFEmitter();
      swift_allocObject();
      PSEHomeSELFEmitter.emitPSEHome(homeSignals:appLaunchSignals:task:)(v86, v94, v2);

      goto LABEL_231;
    }

    v99 = v110;
    if ((v110 & 0x8000000000000000) != 0 || (v110 & 0x4000000000000000) != 0)
    {
      v99 = v110;
      if (MEMORY[0x25F8CE500](v110) >= 1)
      {
        goto LABEL_242;
      }
    }

    else if (*(v110 + 16) >= 1)
    {
LABEL_242:

      type metadata accessor for PSEAlarmSELFEmitter();
      swift_allocObject();
      PSEAlarmSELFEmitter.emitPSEAlarm(alarmSignals:appLaunchSignals:task:)(v99, v94, v2);
      goto LABEL_230;
    }

    if ((v93 & 0x8000000000000000) != 0 || (v93 & 0x4000000000000000) != 0)
    {
      if (MEMORY[0x25F8CE500](v93) >= 1)
      {
        goto LABEL_247;
      }
    }

    else if (*(v93 + 16) >= 1)
    {
      goto LABEL_247;
    }

    v4 = v94;
    if ((*(*v2 + 280))() == 0xD000000000000014 && 0x800000025ED7FA70 == v100)
    {

      goto LABEL_252;
    }

    v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v101)
    {
LABEL_247:

LABEL_252:
      type metadata accessor for PSEAppIntentTranscriptSELFEmitter();
      swift_allocObject();
      PSEAppIntentTranscriptSELFEmitter.emitPSEAppIntentTranscript(appIntentTranscriptSignals:appLaunchSignals:task:)(v93, v3, v2);

      goto LABEL_231;
    }

    if ((a1 & 0x8000000000000000) == 0 && (a1 & 0x4000000000000000) == 0)
    {
      if (*(a1 + 16) >= 1)
      {
LABEL_257:

        type metadata accessor for PSEMediaSELFEmitter();
        swift_allocObject();
        PSEMediaSELFEmitter.emitPSEMedia(mediaSignals:appLaunchSignals:task:)(a1, v4, v2);

        goto LABEL_232;
      }

LABEL_260:

      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.engagement);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_25ECEC000, v103, v104, "There is no specific PSE signals is available for supported domains for SELF Logging. Submit as Generic PSE (with/without App Launch info)", v105, 2u);
        MEMORY[0x25F8CEE50](v105, -1, -1);
      }

      specialized PSESELFEmitter.applyMissingDonationMonitor(task:)(v113);
      type metadata accessor for PSEGenericSELFEmitter();
      swift_allocObject();
      PSEGenericSELFEmitter.emitPSEGeneric(appLaunchSignals:task:)(v3, v113);
      goto LABEL_231;
    }

LABEL_259:
    if (MEMORY[0x25F8CE500](a1) >= 1)
    {
      goto LABEL_257;
    }

    goto LABEL_260;
  }

LABEL_220:
  if (MEMORY[0x25F8CE500](v95) <= 0)
  {
    goto LABEL_221;
  }

LABEL_219:

  type metadata accessor for PSEPhoneCallSELFEmitter();
  swift_allocObject();
  PSEPhoneCallSELFEmitter.emitPSEPhoneCall(phoneCallSignals:appLaunchSignals:task:)(v95, v94, v2);
LABEL_230:

LABEL_231:

LABEL_232:
}

unint64_t SynapseTypesAlarmRelatedConstants.rawValue.getter(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = 0xD00000000000005DLL;
  }

  else
  {
    v1 = 0xD00000000000005ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000005DLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SynapseTypesAlarmRelatedConstants(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SynapseTypesAlarmRelatedConstants.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SynapseTypesAlarmRelatedConstants.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SynapseTypesAlarmRelatedConstants()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SynapseTypesAlarmRelatedConstants.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SynapseTypesAlarmRelatedConstants(uint64_t a1)
{
  SynapseTypesAlarmRelatedConstants.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SynapseTypesAlarmRelatedConstants(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SynapseTypesAlarmRelatedConstants.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SynapseTypesAlarmRelatedConstants@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SynapseTypesAlarmRelatedConstants@<X0>(unint64_t *a1@<X8>)
{
  result = SynapseTypesAlarmRelatedConstants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SynapseTypesAlarmRelatedConstants.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants()
{
  result = lazy protocol witness table cache variable for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants;
  if (!lazy protocol witness table cache variable for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SynapseTypesAlarmRelatedConstants] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SynapseTypesAlarmRelatedConstants] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SynapseTypesAlarmRelatedConstants] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18PostSiriEngagement33SynapseTypesAlarmRelatedConstantsOGMd, &_sSay18PostSiriEngagement33SynapseTypesAlarmRelatedConstantsOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SynapseTypesAlarmRelatedConstants] and conformance [A]);
  }

  return result;
}

void PSEPhoneCallSELFEmitter.emitPSEPhoneCall(phoneCallSignals:appLaunchSignals:task:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v236 = a1;
  v237 = a3;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v213 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v231 = &v213 - v14;
  MEMORY[0x28223BE20](v13);
  v232 = &v213 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v230 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v229 = &v213 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v213 - v21;
  v23 = type metadata accessor for UUID();
  v234 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v228 = &v213 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v226 = &v213 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v227 = &v213 - v29;
  MEMORY[0x28223BE20](v28);
  v233 = &v213 - v30;
  v31 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v31)
  {
    v32 = v31;
    v235 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v235)
    {
      v225 = [objc_allocWithZone(MEMORY[0x277D5A188]) init];
      if (v225)
      {
        v224 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v224)
        {
          v223 = v3;
          v33 = [objc_allocWithZone(MEMORY[0x277D5A180]) init];
          if (v33)
          {
            v34 = v33;
            v35 = v236;
            v36 = v236 >> 62;
            if (v236 >> 62)
            {
              if (v236 < 0)
              {
                v201 = v236;
              }

              else
              {
                v201 = v236 & 0xFFFFFFFFFFFFFF8;
              }

              v216 = v236 >> 62;
              v202 = MEMORY[0x25F8CE500](v201);
              v36 = v216;
              if (v202)
              {
LABEL_8:
                v214 = v35 & 0xC000000000000001;
                v217 = v34;
                v216 = v36;
                if ((v35 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x25F8CE460](0, v35);
                  v37 = v38;
                }

                else
                {
                  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_141;
                  }

                  v37 = *(v35 + 32);
                }

                v222 = v37;
                (*(*v37 + 120))(&v240, v38);
                v39 = v224;
                v40 = (*(*v37 + 144))([v224 setEventDonationTimeInSecondsSince2001_]);
                v41 = MEMORY[0x25F8CDFC0](v40);

                [v39 setDomain_];

                v42 = (*(*&v222->flags + 168))();
                v43 = MEMORY[0x25F8CDFC0](v42);

                [v39 setAction_];

                v44 = v222;
                v45 = (*&v222->flags + 216);
                v221 = *v45;
                v220 = v45;
                v46 = v221();
                v47 = *(v46 + 16);
                v215 = v12;
                if (v47 && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v49 & 1) != 0))
                {
                  outlined init with copy of Any(*(v46 + 56) + 32 * v48, &v240);

                  if (swift_dynamicCast())
                  {
                    v50 = v238;
                  }

                  else
                  {
                    v50 = 2;
                  }
                }

                else
                {

                  v50 = 2;
                }

                v53 = v217;
                v54 = v234;
                v55 = (*(*v223 + 104))(v50);
                [v224 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if ((a2 & 0x8000000000000000) != 0)
                  {
                    v212 = a2;
                  }

                  else
                  {
                    v212 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  v56 = MEMORY[0x25F8CE500](v212);
                }

                else
                {
                  v56 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v218 = v23;
                if (v56)
                {
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v58 = MEMORY[0x25F8CE460](0, a2);
                    v57 = v58;
                  }

                  else
                  {
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_144;
                    }

                    v57 = *(a2 + 32);
                  }

                  (*(*v57 + 120))(&v240, v58);
                  v59 = (*(*v57 + 216))([v224 setAppLaunchTimeInSecondsSince2001_]);
                  if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v61 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v59 + 56) + 32 * v60, &v240);

                    v62 = swift_dynamicCast();
                    v63 = v238;
                    if (!v62)
                    {
                      v63 = 0;
                    }

                    v213 = v63;
                    if (v62)
                    {
                      v64 = v239;
                    }

                    else
                    {
                      v64 = 0;
                    }
                  }

                  else
                  {

                    v213 = 0;
                    v64 = 0;
                  }

                  v65 = (*(*v237 + 256))();
                  if (v65[2])
                  {
                    v66 = v65[4];
                    v67 = v65[5];
                  }

                  else
                  {
                    v66 = 0;
                    v67 = 0;
                  }

                  v69 = v223;
                  v70 = (*(*v223 + 120))(v213, v64, v66, v67);

                  v71 = v224;
                  v72 = (*(*v57 + 168))([v224 setAppFollowup_]);
                  v73 = (*(*v69 + 136))(v72);

                  [v71 setAppLaunchReason_];

                  v23 = v218;
                  v53 = v217;
                  v54 = v234;
                }

                else
                {
                  v68 = [v224 setAppFollowup_];
                }

                v74 = (v221)(v68);
                if (*(v74 + 16) && (v75 = specialized __RawDictionaryStorage.find<A>(_:)(0x617275446C6C6163, 0xEC0000006E6F6974), (v76 & 1) != 0))
                {
                  outlined init with copy of Any(*(v74 + 56) + 32 * v75, &v240);

                  if (swift_dynamicCast())
                  {
                    v77 = *&v238;
LABEL_45:
                    v78 = [v53 setCallDurationInSeconds_];
                    v79 = (v221)(v78);
                    if (*(v79 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7F380), (v81 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v79 + 56) + 32 * v80, &v240);

                      if (swift_dynamicCast())
                      {
                        v82 = *&v238;
LABEL_51:
                        v83 = [v53 setTimeToEstablishInSeconds_];
                        v84 = (v221)(v83);
                        if (*(v84 + 16) && (v85 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED7F3A0), (v86 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v84 + 56) + 32 * v85, &v240);

                          if (swift_dynamicCast())
                          {
                            v87.n128_u64[0] = v238;
                            goto LABEL_57;
                          }
                        }

                        else
                        {
                        }

                        v87.n128_u64[0] = 0;
LABEL_57:
                        v88 = [v53 setRecentCallStatus_];
                        v89 = (v221)(v88);
                        if (*(v89 + 16) && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F3C0), (v91 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v89 + 56) + 32 * v90, &v240);

                          if (swift_dynamicCast())
                          {
                            v92.n128_u64[0] = v238;
                          }

                          else
                          {
                            v92.n128_u64[0] = 0;
                          }
                        }

                        else
                        {

                          v92.n128_u64[0] = 0;
                        }

                        [v53 setDisconnectedReason_];
                        if (v216)
                        {
                          v94 = v236;
                          if (v236 < 0)
                          {
                            v96 = v236;
                          }

                          else
                          {
                            v96 = v236 & 0xFFFFFFFFFFFFFF8;
                          }

                          v95 = MEMORY[0x25F8CE500](v96);
                        }

                        else
                        {
                          v94 = v236;
                          v95 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        v219 = v5;
                        if (v95 >= 2)
                        {
                          if (v214)
                          {
                            v97 = MEMORY[0x25F8CE460](1, v94);
                          }

                          else
                          {
                            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                            {
                              __break(1u);
                              return;
                            }

                            v97 = *(v94 + 40);
                          }

                          (*(*v97 + 120))(&v240);

                          v93.n128_f64[0] = v241;
                          if (v241 <= 30.0)
                          {
                            if (v214)
                            {
                              v98 = MEMORY[0x25F8CE460](1, v236, v241);
                            }

                            else
                            {
                              v98 = *(v236 + 40);
                            }

                            v99 = (*(*v98 + 216))();

                            if (*(v99 + 16) && (v100 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v101 & 1) != 0))
                            {
                              outlined init with copy of Any(*(v99 + 56) + 32 * v100, &v240);

                              if ((swift_dynamicCast() & 1) != 0 && (v238 & 1) == 0)
                              {
                                [v53 setHasUserInitiatedFollowup_];
                                v102 = [v224 setHasUserInitiatedFollowup_];
                                v103 = (v221)(v102);
                                if (v214)
                                {
                                  v104 = MEMORY[0x25F8CE460](1, v236);
                                }

                                else
                                {
                                  v104 = *(v236 + 40);
                                }

                                v195 = (*(*v104 + 216))();

                                v196 = (*(*v223 + 168))(v103, v195);

                                v197 = [v217 setContactMatch_];
                                v198 = (v221)(v197);
                                if (v214)
                                {
                                  v199 = MEMORY[0x25F8CE460](1, v236);
                                }

                                else
                                {
                                  v199 = *(v236 + 40);
                                }

                                v200 = (*(*v199 + 216))();

                                v53 = v217;
                                (*(*v223 + 160))(v198, v200, v217);

                                v23 = v218;
                                v109 = v224;
LABEL_93:
                                v110 = v225;
                                [v225 setCommonSignal_];
                                [v110 setCallSignal_];
                                v111 = v233;
                                UUID.init()();
                                v112 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                isa = UUID._bridgeToObjectiveC()().super.isa;
                                v114 = [v112 initWithNSUUID_];

                                v116 = (v54 + 1);
                                v115 = v54[1];
                                v115(v111, v23);
                                v117 = v235;
                                [v235 setPseId_];

                                (*(*v237 + 160))();
                                UUID.init(uuidString:)();

                                v118 = v23;
                                v119 = v54[6];
                                v221 = (v54 + 6);
                                v120 = v119(v22, 1, v118);
                                v236 = v115;
                                if (v120 == 1)
                                {
                                  v121 = outlined destroy of UUID?(v22);
                                }

                                else
                                {
                                  v122 = v54[4];
                                  v123 = v119;
                                  v124 = v227;
                                  v122(v227, v22, v118);
                                  v125 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                  v126 = UUID._bridgeToObjectiveC()().super.isa;
                                  v127 = [v125 initWithNSUUID_];

                                  [v117 setUiSessionId_];
                                  v128 = v124;
                                  v119 = v123;
                                  v121 = (v115)(v128, v118);
                                }

                                v129 = *((*(*v237 + 208))(v121) + 16);
                                v44 = &SiriExecutionTask;
                                v220 = v116;
                                if (v129)
                                {

                                  v130 = v229;
                                  UUID.init(uuidString:)();

                                  v131 = v218;
                                  if (v119(v130, 1, v218) != 1)
                                  {
                                    v147 = v226;
                                    (*(v234 + 32))(v226, v130, v131);
                                    v148 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                    v149 = UUID._bridgeToObjectiveC()().super.isa;
                                    v150 = [v148 initWithNSUUID_];

                                    [v235 setOriginalLastRequestId_];
                                    v151 = v147;
                                    v44 = &SiriExecutionTask;
                                    v146 = v236;
                                    v145 = (v236)(v151, v131);
                                    v141 = v230;
                                    goto LABEL_106;
                                  }

                                  outlined destroy of UUID?(v130);
                                }

                                else
                                {
                                }

                                if (one-time initialization token for engagement != -1)
                                {
                                  swift_once();
                                }

                                v132 = type metadata accessor for Logger();
                                __swift_project_value_buffer(v132, static Logger.engagement);
                                v133 = *MEMORY[0x277D615E0];
                                v134 = type metadata accessor for EngagementSignalCollectionError();
                                v135 = v232;
                                (*(*(v134 - 8) + 104))(v232, v133, v134);
                                (*(v6 + 104))(v135, *MEMORY[0x277D616A8], v219);
                                v136 = Logger.logObject.getter();
                                v137 = static os_log_type_t.debug.getter();
                                if (os_log_type_enabled(v136, v137))
                                {
                                  v138 = swift_slowAlloc();
                                  v139 = swift_slowAlloc();
                                  v240 = *&v139;
                                  *v138 = 136315138;
                                  *(v138 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v240);
                                  _os_log_impl(&dword_25ECEC000, v136, v137, "%s", v138, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0(v139);
                                  v140 = v139;
                                  v44 = &SiriExecutionTask;
                                  MEMORY[0x25F8CEE50](v140, -1, -1);
                                  MEMORY[0x25F8CEE50](v138, -1, -1);
                                }

                                v141 = v230;
                                type metadata accessor for SiriTaskEngagementUtils();
                                v142 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                v143 = v232;
                                MEMORY[0x25F8CDB30](v232, v142, v144);

                                v145 = (*(v6 + 8))(v143, v219);
                                v146 = v236;
LABEL_106:
                                (*(*v237 + 184))(v145);
                                UUID.init(uuidString:)();

                                v152 = v218;
                                if (v119(v141, 1, v218) != 1)
                                {
                                  v168 = v44;
                                  v169 = v228;
                                  (*(v234 + 32))(v228, v141, v152);
                                  v170 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                  v171 = UUID._bridgeToObjectiveC()().super.isa;
                                  v172 = [v170 initWithNSUUID_];

                                  v173 = v235;
                                  [v235 setTaskId_];

                                  v174 = v169;
                                  v44 = v168;
                                  v167 = v146(v174, v152);
                                  a2 = v173;
                                  v12 = v225;
                                  goto LABEL_112;
                                }

                                outlined destroy of UUID?(v141);
                                a2 = v235;
                                if (*&v44[20].flags == -1)
                                {
LABEL_108:
                                  v153 = type metadata accessor for Logger();
                                  __swift_project_value_buffer(v153, static Logger.engagement);
                                  v154 = *MEMORY[0x277D615C8];
                                  v155 = type metadata accessor for EngagementSignalCollectionError();
                                  v156 = v231;
                                  (*(*(v155 - 8) + 104))(v231, v154, v155);
                                  (*(v6 + 104))(v156, *MEMORY[0x277D616A8], v219);
                                  v157 = Logger.logObject.getter();
                                  v158 = static os_log_type_t.debug.getter();
                                  if (os_log_type_enabled(v157, v158))
                                  {
                                    v159 = swift_slowAlloc();
                                    v160 = a2;
                                    v161 = v44;
                                    v162 = swift_slowAlloc();
                                    v240 = *&v162;
                                    *v159 = 136315138;
                                    *(v159 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v240);
                                    _os_log_impl(&dword_25ECEC000, v157, v158, "%s", v159, 0xCu);
                                    __swift_destroy_boxed_opaque_existential_0(v162);
                                    v163 = v162;
                                    v44 = v161;
                                    a2 = v160;
                                    MEMORY[0x25F8CEE50](v163, -1, -1);
                                    MEMORY[0x25F8CEE50](v159, -1, -1);
                                  }

                                  v12 = v225;
                                  type metadata accessor for SiriTaskEngagementUtils();
                                  v164 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                  v165 = v231;
                                  MEMORY[0x25F8CDB30](v231, v164, v166);

                                  v167 = (*(v6 + 8))(v165, v219);
LABEL_112:
                                  v175 = (*(*v237 + 328))(v167);
                                  v176 = (*(*v175 + 104))(v175);

                                  v177 = v223;
                                  v178 = [a2 setSiriEngagementTaskSuccess_];
                                  [a2 setTriggerOrigin_];
                                  [v32 setEventMetadata_];
                                  [v32 setCallSignalGenerated_];
                                  if (*&v44[20].flags == -1)
                                  {
LABEL_113:
                                    v179 = type metadata accessor for Logger();
                                    __swift_project_value_buffer(v179, static Logger.engagement);
                                    v180 = *MEMORY[0x277D61638];
                                    v181 = type metadata accessor for SELFPSELogged();
                                    v182 = v215;
                                    (*(*(v181 - 8) + 104))(v215, v180, v181);
                                    v183 = v182;
                                    (*(v6 + 104))(v182, *MEMORY[0x277D61658], v219);
                                    v184 = Logger.logObject.getter();
                                    v185 = static os_log_type_t.debug.getter();
                                    if (os_log_type_enabled(v184, v185))
                                    {
                                      v186 = swift_slowAlloc();
                                      v187 = swift_slowAlloc();
                                      v240 = *&v187;
                                      *v186 = 136315138;
                                      *(v186 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000025ED80E10, &v240);
                                      _os_log_impl(&dword_25ECEC000, v184, v185, "%s", v186, 0xCu);
                                      __swift_destroy_boxed_opaque_existential_0(v187);
                                      MEMORY[0x25F8CEE50](v187, -1, -1);
                                      v188 = v186;
                                      v12 = v225;
                                      MEMORY[0x25F8CEE50](v188, -1, -1);
                                    }

                                    type metadata accessor for SiriTaskEngagementUtils();
                                    v189 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                    MEMORY[0x25F8CDB30](v183, v189, v190);

                                    (*(v6 + 8))(v183, v219);
                                    v191 = [objc_opt_self() sharedAnalytics];
                                    v192 = [v191 defaultMessageStream];

                                    v193 = v233;
                                    UUID.init()();
                                    v194 = UUID._bridgeToObjectiveC()().super.isa;
                                    (v236)(v193, v218);
                                    [v192 emitMessage:v32 isolatedStreamUUID:v194];

                                    return;
                                  }

LABEL_141:
                                  swift_once();
                                  goto LABEL_113;
                                }

LABEL_144:
                                swift_once();
                                goto LABEL_108;
                              }
                            }

                            else
                            {
                            }
                          }
                        }

                        v105 = (v221)(v93);
                        if (*(v105 + 16) && (v106 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v107 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v105 + 56) + 32 * v106, &v240);

                          if ((swift_dynamicCast() & 1) != 0 && (v238 & 1) == 0)
                          {
                            v108 = 1;
LABEL_92:
                            [v53 setHasUserInitiatedFollowup_];
                            v109 = v224;
                            [v224 setHasUserInitiatedFollowup_];
                            [v53 setContactMatch_];
                            goto LABEL_93;
                          }
                        }

                        else
                        {
                        }

                        v108 = 0;
                        goto LABEL_92;
                      }
                    }

                    else
                    {
                    }

                    v82 = -1.0;
                    goto LABEL_51;
                  }
                }

                else
                {
                }

                v77 = -1.0;
                goto LABEL_45;
              }
            }

            else if (*((v236 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_8;
            }

            v32 = v224;
            v51 = v235;
          }

          else
          {
            v34 = v32;
            v32 = v235;
            v51 = v224;
          }

          v52 = v225;
        }

        else
        {
          v52 = v235;
          v51 = v225;
        }

        v32 = v52;
      }

      else
      {
        v51 = v235;
      }

      v32 = v51;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v203 = type metadata accessor for Logger();
  __swift_project_value_buffer(v203, static Logger.engagement);
  v204 = *MEMORY[0x277D615B0];
  v205 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v205 - 8) + 104))(v9, v204, v205);
  (*(v6 + 104))(v9, *MEMORY[0x277D616A8], v5);
  v206 = Logger.logObject.getter();
  v207 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v240 = *&v209;
    *v208 = 136315138;
    *(v208 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x800000025ED80DD0, &v240);
    _os_log_impl(&dword_25ECEC000, v206, v207, "%s", v208, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v209);
    MEMORY[0x25F8CEE50](v209, -1, -1);
    MEMORY[0x25F8CEE50](v208, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v210 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v9, v210, v211);

  (*(v6 + 8))(v9, v5);
}

uint64_t PSEPhoneCallSELFEmitter.calculatePhoneticallySimilarScore(firstPhoneSignalData:secondPhoneSignalData:callSchema:)(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = a3;
  v73 = a2;
  v4 = type metadata accessor for PhoneticEmbedder.LoadingOption();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhoneticEmbedder.InputFormat();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8);
  type metadata accessor for PSEPhoneticEmbedder();
  v13 = swift_allocObject();
  Locale.init(identifier:)();
  (*(v9 + 104))(v11, *MEMORY[0x277CDCC88], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CDCC90], v4);
  type metadata accessor for PhoneticEmbedder();
  swift_allocObject();
  v14 = v13;
  v15 = v72;
  *(v14 + 16) = PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)();
  [v15 setContactFullNamePhoneticScore_];
  [v15 setContactFirstNamePhoneticScore_];
  v16 = &selRef_recentCallStatus;
  [v15 setContactLastNamePhoneticScore_];
  if (*(a1 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000025ED7F320);
    if (v18)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v17, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        v19 = v74;
        if (*(v73 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000025ED7F320), (v21 & 1) != 0) && (outlined init with copy of Any(*(v73 + 56) + 32 * v20, v75), (swift_dynamicCast() & 1) != 0))
        {
          v22 = v74;
          if (!v19[2])
          {
            goto LABEL_37;
          }

          v23 = v19[4];
          v24 = v19[5];

          v25 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v25 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (!v25 || !v22[2])
          {
            goto LABEL_37;
          }

          v26 = v22[5];
          v71 = v22[4];

          v27 = v71;
          v28 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v28 = v71 & 0xFFFFFFFFFFFFLL;
          }

          if (!v28)
          {
LABEL_37:

            v16 = 0x1FC20A000;
            if (!*(a1 + 16))
            {
              goto LABEL_43;
            }

            goto LABEL_20;
          }

          v29._countAndFlagsBits = v23;
          v29._object = v24;
          v30 = v26;
          v76 = PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(v29, *&v27);
          v31 = *&v76.is_nil;
          v33 = v32;

          v16 = 0x1FC20A000;
          if ((v33 & 1) == 0)
          {
            [v15 setContactFullNamePhoneticScore_];
            if (!*(a1 + 16))
            {
              goto LABEL_43;
            }

            goto LABEL_20;
          }
        }

        else
        {

          v16 = 0x1FC20A000;
        }
      }
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_43;
  }

LABEL_20:
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7F340);
  if ((v35 & 1) == 0)
  {
    goto LABEL_43;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v34, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_43;
  }

  v36 = v16;
  v37 = v74;
  if (!*(v73 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7F340), (v39 & 1) == 0) || (outlined init with copy of Any(*(v73 + 56) + 32 * v38, v75), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:

    v16 = v36;
    goto LABEL_43;
  }

  v40 = v74;
  if (!v37[2])
  {
    goto LABEL_41;
  }

  v41 = v37[4];
  v42 = v37[5];

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43 || !v40[2])
  {
    goto LABEL_41;
  }

  v45 = v40[4];
  v44 = v40[5];

  v46 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v46 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
LABEL_41:

    goto LABEL_42;
  }

  v47._countAndFlagsBits = v41;
  v47._object = v42;
  v48._countAndFlagsBits = v45;
  v48._object = v44;
  v77 = PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(v47, v48);
  v49 = *&v77.is_nil;
  v51 = v50;

  v16 = v36;
  if ((v51 & 1) == 0)
  {
    [v15 setContactFirstNamePhoneticScore_];
  }

LABEL_43:
  if (!*(a1 + 16))
  {
  }

  v52 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED7F360);
  if ((v53 & 1) == 0)
  {
  }

  v54 = v16;
  outlined init with copy of Any(*(a1 + 56) + 32 * v52, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v55 = v74;
  if (!*(v73 + 16) || (v56 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED7F360), (v57 & 1) == 0))
  {
  }

  outlined init with copy of Any(*(v73 + 56) + 32 * v56, v75);
  if (swift_dynamicCast())
  {
    v58 = v74;
    if (v55[2])
    {
      v60 = v55[4];
      v59 = v55[5];

      v61 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v61 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v61 && v58[2])
      {
        v63 = v58[4];
        v62 = v58[5];

        v64 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v64 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65._countAndFlagsBits = v60;
          v65._object = v59;
          v66._countAndFlagsBits = v63;
          v66._object = v62;
          v78 = PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(v65, v66);
          v67 = *&v78.is_nil;
          v69 = v68;

          if ((v69 & 1) == 0)
          {
            [v15 (v54 + 3953)];
          }
        }
      }
    }
  }
}

uint64_t PSEPhoneCallSELFEmitter.getPSEPhoneContactMatch(firstPhoneSignalData:secondPhoneSignalData:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a2 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v7 & 1) == 0) || (outlined init with copy of Any(*(a2 + 56) + 32 * v6, v11), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  if (!*(v10 + 16))
  {

    goto LABEL_11;
  }

  v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v10, v10);

  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t PSEPhoneCallSELFEmitter.getRecentCallStatus(recentCallStatus:)(double a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 1.0)
  {
    return 1;
  }

  if (a1 == 2.0)
  {
    return 2;
  }

  if (a1 == 4.0)
  {
    return 3;
  }

  if (a1 == 16.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 8.0)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t PSEPhoneCallSELFEmitter.getDisconnectedReason(disconnectedReason:)(double a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 1.0)
  {
    return 4;
  }

  if (a1 == 2.0)
  {
    return 2;
  }

  if (a1 == 3.0)
  {
    return 3;
  }

  if (a1 == 4.0)
  {
    return 18;
  }

  if (a1 == 5.0)
  {
    return 6;
  }

  if (a1 == 6.0)
  {
    return 1;
  }

  if (a1 == 7.0)
  {
    return 19;
  }

  if (a1 == 8.0)
  {
    return 14;
  }

  if (a1 == 9.0)
  {
    return 15;
  }

  if (a1 == 10.0)
  {
    return 16;
  }

  if (a1 == 11.0)
  {
    return 13;
  }

  if (a1 == 12.0)
  {
    return 5;
  }

  if (a1 == 13.0)
  {
    return 8;
  }

  if (a1 == 14.0)
  {
    return 11;
  }

  if (a1 == 15.0)
  {
    return 7;
  }

  if (a1 == 16.0)
  {
    return 17;
  }

  if (a1 == 17.0)
  {
    return 12;
  }

  if (a1 == 18.0)
  {
    return 9;
  }

  if (a1 == 19.0)
  {
    return 10;
  }

  if (a1 == 20.0)
  {
    return 20;
  }

  if (a1 == 21.0)
  {
    return 21;
  }

  if (a1 == 22.0)
  {
    return 22;
  }

  if (a1 == 23.0)
  {
    return 23;
  }

  if (a1 == 24.0)
  {
    return 24;
  }

  if (a1 == 25.0)
  {
    return 25;
  }

  if (a1 == 26.0)
  {
    return 26;
  }

  if (a1 == 27.0)
  {
    return 27;
  }

  if (a1 == 28.0)
  {
    return 28;
  }

  if (a1 == 29.0)
  {
    return 29;
  }

  if (a1 == 30.0)
  {
    return 30;
  }

  if (a1 == 31.0)
  {
    return 31;
  }

  if (a1 == 32.0)
  {
    return 32;
  }

  if (a1 == 33.0)
  {
    return 33;
  }

  if (a1 == 34.0)
  {
    return 34;
  }

  if (a1 == 35.0)
  {
    return 35;
  }

  if (a1 == 36.0)
  {
    return 36;
  }

  if (a1 == 1000.0)
  {
    return 1000;
  }

  if (a1 == 1001.0)
  {
    return 1001;
  }

  return 0;
}

void PSESMSSELFEmitter.emitPSESMS(smsSignals:appLaunchSignals:task:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v212 = a1;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v189 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v207 = v189 - v14;
  MEMORY[0x28223BE20](v13);
  v208 = v189 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v206 = v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v205 = v189 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v189 - v21;
  v211 = type metadata accessor for UUID();
  v209 = *(v211 - 8);
  v23 = MEMORY[0x28223BE20](v211);
  v204 = v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v202 = v189 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v203 = v189 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = v189 - v29;
  v31 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v31)
  {
    v32 = v31;
    v200 = v30;
    v33 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v33)
    {
      v34 = v33;
      v201 = [objc_allocWithZone(MEMORY[0x277D5A200]) init];
      if (v201)
      {
        v199 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v199)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277D5A1F8]) init];
          if (v35)
          {
            v36 = v212;
            v37 = (v212 >> 62);
            v197 = v35;
            if (v212 >> 62)
            {
              if (v212 < 0)
              {
                v176 = v212;
              }

              else
              {
                v176 = v212 & 0xFFFFFFFFFFFFFF8;
              }

              v177 = (v212 >> 62);
              v178 = MEMORY[0x25F8CE500](v176);
              v37 = v177;
              v36 = v212;
              if (v178)
              {
LABEL_8:
                v195 = v36 & 0xC000000000000001;
                v191 = v12;
                v198 = v37;
                v190 = v5;
                if ((v36 & 0xC000000000000001) != 0)
                {
                  v39 = MEMORY[0x25F8CE460](0);
                  v38 = v199;
                }

                else
                {
                  v38 = v199;
                  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_115;
                  }
                }

                v40 = v39;
                (*(*v39 + 120))(&v215);
                v41 = (*(*v40 + 144))([v38 setEventDonationTimeInSecondsSince2001_]);
                v5 = v38;
                v42 = MEMORY[0x25F8CDFC0](v41);

                [v38 setDomain_];

                v43 = (*(*v40 + 168))();
                v44 = MEMORY[0x25F8CDFC0](v43);

                [v38 setAction_];

                v45 = *(*v40 + 216);
                v46 = *v40 + 216;
                v192 = v40;
                v193 = v45;
                v189[1] = v46;
                v47 = v45();
                if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v49 & 1) != 0))
                {
                  outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v215);

                  if (swift_dynamicCast())
                  {
                    v50 = v213;
                  }

                  else
                  {
                    v50 = 2;
                  }
                }

                else
                {

                  v50 = 2;
                }

                [v38 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if ((a2 & 0x8000000000000000) != 0)
                  {
                    v188 = a2;
                  }

                  else
                  {
                    v188 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  v53 = MEMORY[0x25F8CE500](v188);
                }

                else
                {
                  v53 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v196 = a3;
                if (v53)
                {
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v55 = MEMORY[0x25F8CE460](0, a2);
                    v54 = v55;
                  }

                  else
                  {
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_118;
                    }

                    v54 = *(a2 + 32);
                  }

                  (*(*v54 + 120))(&v215, v55);
                  v56 = (*(*v54 + 216))([v199 setAppLaunchTimeInSecondsSince2001_]);
                  if (*(v56 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v58 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v56 + 56) + 32 * v57, &v215);

                    v59 = swift_dynamicCast();
                    v60 = v213;
                    if (!v59)
                    {
                      v60 = 0;
                    }

                    v194 = v60;
                    if (v59)
                    {
                      v61 = v214;
                    }

                    else
                    {
                      v61 = 0;
                    }
                  }

                  else
                  {

                    v194 = 0;
                    v61 = 0;
                  }

                  v62 = (*(*a3 + 256))();
                  if (v62[2])
                  {
                    v63 = v62[4];
                    v64 = v62[5];
                  }

                  else
                  {
                    v63 = 0;
                    v64 = 0;
                  }

                  v66 = v210;
                  v67 = (*(*v210 + 120))(v194, v61, v63, v64);

                  v68 = v199;
                  v69 = (*(*v54 + 168))([v199 setAppFollowup_]);
                  v70 = (*(*v66 + 136))(v69);

                  [v68 setAppLaunchReason_];
                }

                else
                {
                  [v38 setAppFollowup_];
                }

                v71 = v201;
                v72 = v212;
                if (v198)
                {
                  if (v212 < 0)
                  {
                    v74 = v212;
                  }

                  else
                  {
                    v74 = v212 & 0xFFFFFFFFFFFFFF8;
                  }

                  v73 = MEMORY[0x25F8CE500](v74);
                  v72 = v212;
                }

                else
                {
                  v73 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v75 = v199;
                a3 = v196;
                v198 = v34;
                v76 = v200;
                if (v73 >= 2)
                {
                  if (v195)
                  {
                    v77 = MEMORY[0x25F8CE460](1, v72);
                  }

                  else
                  {
                    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                    {
                      __break(1u);
                      return;
                    }

                    v77 = *(v72 + 40);
                  }

                  (*(*v77 + 120))(&v215);

                  v65 = v216;
                  if (v216 <= 30.0)
                  {
                    if (v195)
                    {
                      v78 = MEMORY[0x25F8CE460](1, v212, v216);
                    }

                    else
                    {
                      v78 = *(v212 + 40);
                    }

                    v79 = (*(*v78 + 216))();

                    if (*(v79 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v81 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v79 + 56) + 32 * v80, &v215);

                      if ((swift_dynamicCast() & 1) != 0 && (v213 & 1) == 0)
                      {
                        [v197 setHasUserInitiatedFollowup_];
                        [v75 setHasUserInitiatedFollowup_];
                        if (v195)
                        {
                          v82 = MEMORY[0x25F8CE460](1, v212);
                        }

                        else
                        {
                          v82 = *(v212 + 40);
                        }

                        (*(*v82 + 120))(&v215);

                        [v197 setUserFollowupEventDonationTimeInSecondsSince2001_];
                        if (v195)
                        {
                          v161 = MEMORY[0x25F8CE460](1, v212);
                        }

                        else
                        {
                          v161 = *(v212 + 40);
                        }

                        v162 = (*(*v161 + 168))();
                        v164 = v163;

                        v165 = (*(*v210 + 176))(v162, v164);

                        v166 = [v197 setMessageUserFollowupAction_];
                        v167 = (v193)(v166);
                        if (v195)
                        {
                          v168 = MEMORY[0x25F8CE460](1, v212);
                        }

                        else
                        {
                          v168 = *(v212 + 40);
                        }

                        v169 = (*(*v168 + 216))();

                        v170 = (*(*v210 + 168))(v167, v169);

                        v171 = [v197 setContactMatch_];
                        v172 = (v193)(v171);
                        if (v195)
                        {
                          v173 = MEMORY[0x25F8CE460](1, v212);
                        }

                        else
                        {
                          v173 = *(v212 + 40);
                        }

                        v174 = (*(*v173 + 216))();

                        v175 = v172;
                        v83 = v197;
                        (*(*v210 + 160))(v175, v174, v197);

                        v75 = v199;
LABEL_61:
                        [v71 setCommonSignal_];
                        [v71 setMessageSignal_];
                        UUID.init()();
                        v84 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                        isa = UUID._bridgeToObjectiveC()().super.isa;
                        v86 = [v84 initWithNSUUID_];

                        v87 = v209;
                        v89 = (v209 + 8);
                        v88 = *(v209 + 8);
                        v90 = v76;
                        v34 = v211;
                        v88(v90, v211);
                        [v198 setPseId_];

                        (*(*a3 + 160))();
                        UUID.init(uuidString:)();
                        v91 = v87;

                        v92 = *(v87 + 48);
                        v195 = v87 + 48;
                        v194 = v92;
                        v93 = v92(v22, 1, v34);
                        v212 = v88;
                        if (v93 == 1)
                        {
                          v94 = outlined destroy of UUID?(v22);
                        }

                        else
                        {
                          v95 = v88;
                          v96 = a3;
                          v97 = v203;
                          (*(v91 + 32))(v203, v22, v34);
                          v98 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          v99 = UUID._bridgeToObjectiveC()().super.isa;
                          v100 = [v98 initWithNSUUID_];

                          [v198 setUiSessionId_];
                          v101 = v97;
                          a3 = v96;
                          v94 = v95(v101, v34);
                        }

                        v5 = v190;
                        if (*((*(*a3 + 208))(v94) + 16))
                        {

                          v34 = v211;

                          v102 = v205;
                          UUID.init(uuidString:)();

                          if (v194(v102, 1, v34) != 1)
                          {
                            v118 = v202;
                            (*(v209 + 32))(v202, v102, v34);
                            v119 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            v120 = UUID._bridgeToObjectiveC()().super.isa;
                            v121 = [v119 initWithNSUUID_];

                            [v198 setOriginalLastRequestId_];
                            v117 = v212;
                            v116 = (v212)(v118, v34);
                            v112 = v206;
                            goto LABEL_74;
                          }

                          outlined destroy of UUID?(v102);
                        }

                        else
                        {
                        }

                        if (one-time initialization token for engagement != -1)
                        {
                          swift_once();
                        }

                        v103 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v103, static Logger.engagement);
                        v104 = *MEMORY[0x277D615E0];
                        v105 = type metadata accessor for EngagementSignalCollectionError();
                        v106 = v208;
                        (*(*(v105 - 8) + 104))(v208, v104, v105);
                        (*(v6 + 104))(v106, *MEMORY[0x277D616A8], v5);
                        v107 = Logger.logObject.getter();
                        v108 = static os_log_type_t.debug.getter();
                        if (os_log_type_enabled(v107, v108))
                        {
                          v109 = swift_slowAlloc();
                          v110 = swift_slowAlloc();
                          v215 = *&v110;
                          *v109 = 136315138;
                          *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v215);
                          _os_log_impl(&dword_25ECEC000, v107, v108, "%s", v109, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v110);
                          v111 = v110;
                          v34 = v211;
                          MEMORY[0x25F8CEE50](v111, -1, -1);
                          MEMORY[0x25F8CEE50](v109, -1, -1);
                        }

                        v112 = v206;
                        type metadata accessor for SiriTaskEngagementUtils();
                        v113 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                        v114 = v208;
                        MEMORY[0x25F8CDB30](v208, v113, v115);

                        v116 = (*(v6 + 8))(v114, v5);
                        a3 = v196;
                        v117 = v212;
LABEL_74:
                        (*(*a3 + 184))(v116);
                        UUID.init(uuidString:)();

                        v122 = v194(v112, 1, v34);
                        v193 = v89;
                        if (v122 != 1)
                        {
                          v137 = v204;
                          (*(v209 + 32))(v204, v112, v34);
                          v138 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          v139 = UUID._bridgeToObjectiveC()().super.isa;
                          v140 = [v138 initWithNSUUID_];

                          v136 = v198;
                          [v198 setTaskId_];

                          v135 = v117(v137, v34);
                          a2 = v201;
                          goto LABEL_80;
                        }

                        outlined destroy of UUID?(v112);
                        a2 = v201;
                        if (one-time initialization token for engagement == -1)
                        {
LABEL_76:
                          v123 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v123, static Logger.engagement);
                          v124 = *MEMORY[0x277D615C8];
                          v125 = type metadata accessor for EngagementSignalCollectionError();
                          v126 = v207;
                          (*(*(v125 - 8) + 104))(v207, v124, v125);
                          (*(v6 + 104))(v126, *MEMORY[0x277D616A8], v5);
                          v127 = Logger.logObject.getter();
                          v128 = static os_log_type_t.debug.getter();
                          if (os_log_type_enabled(v127, v128))
                          {
                            v129 = swift_slowAlloc();
                            v130 = swift_slowAlloc();
                            v215 = *&v130;
                            *v129 = 136315138;
                            *(v129 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v215);
                            _os_log_impl(&dword_25ECEC000, v127, v128, "%s", v129, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v130);
                            v131 = v130;
                            v34 = v211;
                            MEMORY[0x25F8CEE50](v131, -1, -1);
                            MEMORY[0x25F8CEE50](v129, -1, -1);
                          }

                          type metadata accessor for SiriTaskEngagementUtils();
                          v132 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                          v133 = v207;
                          MEMORY[0x25F8CDB30](v207, v132, v134);

                          v135 = (*(v6 + 8))(v133, v5);
                          v136 = v198;
LABEL_80:
                          v141 = (*(*a3 + 328))(v135);
                          v142 = (*(*v141 + 104))(v141);

                          v143 = v210;
                          v144 = [v136 setSiriEngagementTaskSuccess_];
                          [v136 setTriggerOrigin_];
                          [v32 setEventMetadata_];
                          [v32 setMessageSignalGenerated_];
                          if (one-time initialization token for engagement == -1)
                          {
LABEL_81:
                            v145 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v145, static Logger.engagement);
                            v146 = *MEMORY[0x277D61630];
                            v147 = type metadata accessor for SELFPSELogged();
                            v148 = v191;
                            (*(*(v147 - 8) + 104))(v191, v146, v147);
                            v149 = v148;
                            (*(v6 + 104))(v148, *MEMORY[0x277D61658], v5);
                            v150 = Logger.logObject.getter();
                            v151 = static os_log_type_t.debug.getter();
                            if (os_log_type_enabled(v150, v151))
                            {
                              v152 = swift_slowAlloc();
                              v153 = swift_slowAlloc();
                              v215 = *&v153;
                              *v152 = 136315138;
                              *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000025ED80EC0, &v215);
                              _os_log_impl(&dword_25ECEC000, v150, v151, "%s", v152, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v153);
                              v154 = v153;
                              v34 = v211;
                              MEMORY[0x25F8CEE50](v154, -1, -1);
                              MEMORY[0x25F8CEE50](v152, -1, -1);
                            }

                            type metadata accessor for SiriTaskEngagementUtils();
                            v155 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                            MEMORY[0x25F8CDB30](v149, v155, v156);

                            (*(v6 + 8))(v149, v5);
                            v157 = [objc_opt_self() sharedAnalytics];
                            v158 = [v157 defaultMessageStream];

                            v159 = v200;
                            UUID.init()();
                            v160 = UUID._bridgeToObjectiveC()().super.isa;
                            (v212)(v159, v34);
                            [v158 emitMessage:v32 isolatedStreamUUID:v160];

                            return;
                          }

LABEL_115:
                          swift_once();
                          goto LABEL_81;
                        }

LABEL_118:
                        swift_once();
                        goto LABEL_76;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v83 = v197;
                [v197 setHasUserInitiatedFollowup_];
                [v75 setHasUserInitiatedFollowup_];
                [v83 setMessageUserFollowupAction_];
                [v83 setContactMatch_];
                goto LABEL_61;
              }
            }

            else if (*((v212 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_8;
            }

            v52 = v197;
            v32 = v199;
          }

          else
          {
            v52 = v32;
            v32 = v34;
            v34 = v199;
          }

          v51 = v34;

          v34 = v201;
        }

        else
        {
          v51 = v201;
        }

        v32 = v34;
        v34 = v51;
      }

      v32 = v34;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v179 = type metadata accessor for Logger();
  __swift_project_value_buffer(v179, static Logger.engagement);
  v180 = *MEMORY[0x277D615B0];
  v181 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v181 - 8) + 104))(v9, v180, v181);
  (*(v6 + 104))(v9, *MEMORY[0x277D616A8], v5);
  v182 = Logger.logObject.getter();
  v183 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v215 = *&v185;
    *v184 = 136315138;
    *(v184 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000025ED80E90, &v215);
    _os_log_impl(&dword_25ECEC000, v182, v183, "%s", v184, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v185);
    MEMORY[0x25F8CEE50](v185, -1, -1);
    MEMORY[0x25F8CEE50](v184, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v186 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v9, v186, v187);

  (*(v6 + 8))(v9, v5);
}

uint64_t PSESMSSELFEmitter.calculatePhoneticallySimilarScore(firstSMSSignalData:secondSMSSignalData:smsSchema:)(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = a3;
  v73 = a2;
  v4 = type metadata accessor for PhoneticEmbedder.LoadingOption();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhoneticEmbedder.InputFormat();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8);
  type metadata accessor for PSEPhoneticEmbedder();
  v13 = swift_allocObject();
  Locale.init(identifier:)();
  (*(v9 + 104))(v11, *MEMORY[0x277CDCC88], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CDCC90], v4);
  type metadata accessor for PhoneticEmbedder();
  swift_allocObject();
  v14 = v13;
  v15 = v72;
  *(v14 + 16) = PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)();
  [v15 setContactFullNamePhoneticScore_];
  [v15 setContactFirstNamePhoneticScore_];
  v16 = &selRef_recentCallStatus;
  [v15 setContactLastNamePhoneticScore_];
  if (*(a1 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000025ED7F320);
    if (v18)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v17, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        v19 = v74;
        if (*(v73 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000025ED7F320), (v21 & 1) != 0) && (outlined init with copy of Any(*(v73 + 56) + 32 * v20, v75), (swift_dynamicCast() & 1) != 0))
        {
          v22 = v74;
          if (!v19[2])
          {
            goto LABEL_37;
          }

          v23 = v19[4];
          v24 = v19[5];

          v25 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v25 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (!v25 || !v22[2])
          {
            goto LABEL_37;
          }

          v26 = v22[5];
          v71 = v22[4];

          v27 = v71;
          v28 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v28 = v71 & 0xFFFFFFFFFFFFLL;
          }

          if (!v28)
          {
LABEL_37:

            v16 = 0x1FC20A000;
            if (!*(a1 + 16))
            {
              goto LABEL_43;
            }

            goto LABEL_20;
          }

          v29._countAndFlagsBits = v23;
          v29._object = v24;
          v30 = v26;
          v76 = PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(v29, *&v27);
          v31 = *&v76.is_nil;
          v33 = v32;

          v16 = 0x1FC20A000;
          if ((v33 & 1) == 0)
          {
            [v15 setContactFullNamePhoneticScore_];
            if (!*(a1 + 16))
            {
              goto LABEL_43;
            }

            goto LABEL_20;
          }
        }

        else
        {

          v16 = 0x1FC20A000;
        }
      }
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_43;
  }

LABEL_20:
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7F340);
  if ((v35 & 1) == 0)
  {
    goto LABEL_43;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v34, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_43;
  }

  v36 = v16;
  v37 = v74;
  if (!*(v73 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7F340), (v39 & 1) == 0) || (outlined init with copy of Any(*(v73 + 56) + 32 * v38, v75), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:

    v16 = v36;
    goto LABEL_43;
  }

  v40 = v74;
  if (!v37[2])
  {
    goto LABEL_41;
  }

  v41 = v37[4];
  v42 = v37[5];

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43 || !v40[2])
  {
    goto LABEL_41;
  }

  v45 = v40[4];
  v44 = v40[5];

  v46 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v46 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
LABEL_41:

    goto LABEL_42;
  }

  v47._countAndFlagsBits = v41;
  v47._object = v42;
  v48._countAndFlagsBits = v45;
  v48._object = v44;
  v77 = PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(v47, v48);
  v49 = *&v77.is_nil;
  v51 = v50;

  v16 = v36;
  if ((v51 & 1) == 0)
  {
    [v15 setContactFirstNamePhoneticScore_];
  }

LABEL_43:
  if (!*(a1 + 16))
  {
  }

  v52 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED7F360);
  if ((v53 & 1) == 0)
  {
  }

  v54 = v16;
  outlined init with copy of Any(*(a1 + 56) + 32 * v52, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v55 = v74;
  if (!*(v73 + 16) || (v56 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED7F360), (v57 & 1) == 0))
  {
  }

  outlined init with copy of Any(*(v73 + 56) + 32 * v56, v75);
  if (swift_dynamicCast())
  {
    v58 = v74;
    if (v55[2])
    {
      v60 = v55[4];
      v59 = v55[5];

      v61 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v61 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v61 && v58[2])
      {
        v63 = v58[4];
        v62 = v58[5];

        v64 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v64 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65._countAndFlagsBits = v60;
          v65._object = v59;
          v66._countAndFlagsBits = v63;
          v66._object = v62;
          v78 = PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(v65, v66);
          v67 = *&v78.is_nil;
          v69 = v68;

          if ((v69 & 1) == 0)
          {
            [v15 (v54 + 3953)];
          }
        }
      }
    }
  }
}

uint64_t PSESMSSELFEmitter.getPSEMessageContactMatch(firstSMSSignalData:secondSMSSignalData:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAD0);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        if (*(a2 + 16))
        {
          v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAF0);
          if (v7)
          {
            outlined init with copy of Any(*(a2 + 56) + 32 * v6, v17);
            if (swift_dynamicCast())
            {
              if (*(v16 + 16))
              {
                v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v16);

                v9 = (v8 & 1) == 0;
                goto LABEL_18;
              }
            }
          }
        }
      }
    }
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v10, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a2 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v13 & 1) == 0) || (outlined init with copy of Any(*(a2 + 56) + 32 * v12, v17), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

    return 0;
  }

  if (!*(v16 + 16))
  {

    goto LABEL_21;
  }

  v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v16);

  v9 = (v14 & 1) == 0;
LABEL_18:
  if (v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t PSESMSSELFEmitter.getPSEMessageUserFollowupAction(userAction:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    return 3;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 4;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 2;
  }

  return 0;
}

uint64_t closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.engagement);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a5;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    type metadata accessor for AbstractActivityCollector();

    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25ECEC000, v11, v12, "Starting %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v18 = v14;
    a5 = v24;
    MEMORY[0x25F8CEE50](v18, -1, -1);
    MEMORY[0x25F8CEE50](v13, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v20 = *(*a1 + 88);

  v21 = a2;

  v22 = a5;
  v20(partial apply for closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:), v19);
}

void closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v39 = a4;
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.engagement);

  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = a5;
    v22 = v21;
    v42 = a2;
    aBlock[0] = v21;
    *v20 = 136315394;
    type metadata accessor for AbstractActivityCollector();
    v36 = v11;

    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v42 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);
    v11 = v36;

    *(v20 + 14) = v29;
    _os_log_impl(&dword_25ECEC000, v17, v18, "%s completed with error? %s (nil is good)", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v22;
    a5 = v35;
    MEMORY[0x25F8CEE50](v30, -1, -1);
    v31 = v20;
    v10 = v37;
    MEMORY[0x25F8CEE50](v31, -1, -1);
  }

  if (a1)
  {
    static DispatchWorkItemFlags.barrier.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = v39;
    *(v32 + 24) = a5;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_46;
    v33 = _Block_copy(aBlock);

    v34 = v40;
    static DispatchQoS.unspecified.getter();
    MEMORY[0x25F8CE2F0](0, v34, v14, v33);
    _Block_release(v33);
    (*(v11 + 8))(v34, v10);
    (*(v38 + 8))(v14, v41);
  }

  dispatch_group_leave(a6);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #1 in closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *(a1 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 16) = v4;
  return swift_endAccess();
}

void closure #3 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for ReliabilityCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v35[1] = a3;
    v36 = a2;
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.engagement);
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v37 = 0xD000000000000022;
    v38 = 0x800000025ED81170;
    swift_beginAccess();
    v11 = *(a1 + 16);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v13 = MEMORY[0x25F8CE190](v11, v12);
    v15 = v14;

    MEMORY[0x25F8CE090](v13, v15);

    v16 = v37;
    v17 = v38;
    v18 = *MEMORY[0x277D615C0];
    v19 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v19 - 8) + 104))(v9, v18, v19);
    (*(v7 + 104))(v9, *MEMORY[0x277D616A8], v6);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35[0] = v6;
      v23 = v16;
      v24 = v22;
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v17, &v37);
      _os_log_impl(&dword_25ECEC000, v20, v21, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8CEE50](v25, -1, -1);
      v6 = v35[0];
      MEMORY[0x25F8CEE50](v24, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v26 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v26, v27);

    (*(v7 + 8))(v9, v6);
    v28 = objc_opt_self();
    swift_beginAccess();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v28 getErrorFailedCollectors_];

    v36(v30, 1);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.engagement);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_25ECEC000, v32, v33, "All collectors run successfully", v34, 2u);
      MEMORY[0x25F8CEE50](v34, -1, -1);
    }

    a2(1, 0);
  }
}

double ActivityDispatcher.getJSONObjectFromCollectorDefinitions(collectorDefinitions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v72 = a3;
  v77 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = type metadata accessor for String.Encoding();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.engagement);
    v34 = *MEMORY[0x277D615B8];
    v35 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v35 - 8) + 104))(v12, v34, v35);
    (*(v6 + 104))(v12, *MEMORY[0x277D616A8], v5);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v75 = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000025ED80F30, &v75);
      _os_log_impl(&dword_25ECEC000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x25F8CEE50](v39, -1, -1);
      MEMORY[0x25F8CEE50](v38, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v40 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v12, v40, v41);

    (*(v6 + 8))(v12, v5);
    goto LABEL_13;
  }

  v71 = v5;
  static String.Encoding.utf8.getter();
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  if (v21 >> 60 == 15)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.engagement);
    *&v75 = 0;
    *(&v75 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x25F8CE090](0xD00000000000004DLL, 0x800000025ED80F60);
    MEMORY[0x25F8CE090](a1, a2);
    v23 = v75;
    v24 = *MEMORY[0x277D615E8];
    v25 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v25 - 8) + 104))(v14, v24, v25);
    v26 = v71;
    (*(v6 + 104))(v14, *MEMORY[0x277D616A8], v71);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v75 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, *(&v23 + 1), &v75);
      _os_log_impl(&dword_25ECEC000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F8CEE50](v30, -1, -1);
      MEMORY[0x25F8CEE50](v29, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v14, v31, v32);

    (*(v6 + 8))(v14, v26);
LABEL_13:
    result = 0.0;
    v43 = v72;
    *v72 = 0u;
    v43[1] = 0u;
    return result;
  }

  v75 = 0u;
  v76 = 0u;
  v44 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v73 = 0;
  v46 = [v44 JSONObjectWithData:isa options:4 error:&v73];

  v47 = v73;
  v48 = v19;
  if (v46)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data?(v19, v21);
    swift_unknownObjectRelease();
    outlined destroy of Date?(&v75, &_sypSgMd, &_sypSgMR);
    v75 = v74[0];
    v76 = v74[1];
  }

  else
  {
    v49 = v47;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.engagement);
    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    MEMORY[0x25F8CE090](0xD000000000000052, 0x800000025ED80FB0);
    v73 = v50;
    v52 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v53 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v53);

    v54 = v74[0];
    v55 = *MEMORY[0x277D615A0];
    v56 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v56 - 8) + 104))(v9, v55, v56);
    v57 = v71;
    (*(v6 + 104))(v9, *MEMORY[0x277D616A8], v71);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v69 = v48;
      v61 = v60;
      v62 = swift_slowAlloc();
      v70 = v50;
      v63 = v62;
      *&v74[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, *(&v54 + 1), v74);
      _os_log_impl(&dword_25ECEC000, v58, v59, "%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v64 = v63;
      v50 = v70;
      MEMORY[0x25F8CEE50](v64, -1, -1);
      v48 = v69;
      MEMORY[0x25F8CEE50](v61, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v65 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v65, v66);

    outlined consume of Data?(v48, v21);

    (*(v6 + 8))(v9, v57);
  }

  result = *&v75;
  v67 = v76;
  v68 = v72;
  *v72 = v75;
  v68[1] = v67;
  return result;
}

void ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
  }

  else
  {
    a2 = 0x800000025ED81030;
    a1 = 0xD0000000000000DDLL;
  }

  ActivityDispatcher.getJSONObjectFromCollectorDefinitions(collectorDefinitions:)(a1, a2, &aBlock);
  if (v47)
  {
    v39 = v9;
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v40 = a4;
      v20 = v50;
      v21 = *(v50 + 16);

      if (v21)
      {
        if (*(v20 + 16))
        {
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED81010);
          if (v23)
          {
            outlined init with copy of Any(*(v20 + 56) + 32 * v22, &aBlock);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, "jF");
            v24 = swift_dynamicCast();
            v25 = v40;
            if ((v24 & 1) == 0)
            {
LABEL_17:
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v33 = type metadata accessor for Logger();
              __swift_project_value_buffer(v33, static Logger.engagement);
              v34 = Logger.logObject.getter();
              v35 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                *v36 = 0;
                _os_log_impl(&dword_25ECEC000, v34, v35, "Trying to run with no activity dictionaries - disregarding", v36, 2u);
                MEMORY[0x25F8CEE50](v36, -1, -1);
              }

              v37 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
              a3();
              goto LABEL_24;
            }

            v26 = v50;
            if (*(v50 + 16))
            {
              type metadata accessor for OS_dispatch_queue();
              v27 = v41;
              (*(v41 + 104))(v17, *MEMORY[0x277D851C8], v15);
              v38 = static OS_dispatch_queue.global(qos:)();
              (*(v27 + 8))(v17, v15);
              v28 = swift_allocObject();
              v28[2] = v4;
              v28[3] = v26;
              v28[4] = v19;
              v28[5] = v25;
              v48 = partial apply for closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:);
              v49 = v28;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              v46 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v47 = &block_descriptor_1;
              v29 = _Block_copy(&aBlock);
              v30 = v4;

              static DispatchQoS.unspecified.getter();
              v50 = MEMORY[0x277D84F90];
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              v31 = v39;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v32 = v38;
              MEMORY[0x25F8CE2F0](0, v14, v11, v29);
              _Block_release(v29);

              (*(v44 + 8))(v11, v31);
              (*(v42 + 8))(v14, v43);

              return;
            }
          }
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    outlined destroy of Date?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  v37 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
  a3();
LABEL_24:
}

void closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;

    specialized ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(a2, partial apply for closure #1 in closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:), v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for ReliabilityCategory();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v35 = a4;
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v37 = 0xD000000000000018;
    v38 = 0x800000025ED811A0;
    v36 = a1;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v14);

    v16 = v37;
    v15 = v38;
    v17 = *MEMORY[0x277D615A8];
    v18 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v18 - 8) + 104))(v11, v17, v18);
    (*(v9 + 104))(v11, *MEMORY[0x277D616A8], v8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v37);
      _os_log_impl(&dword_25ECEC000, v19, v20, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25F8CEE50](v23, -1, -1);
      v24 = v22;
      a3 = v34;
      MEMORY[0x25F8CEE50](v24, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v25 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v11, v25, v26);

    (*(v9 + 8))(v11, v8);
    v27 = a1;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.engagement);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_25ECEC000, v29, v30, "DispatchSerially success", v31, 2u);
      MEMORY[0x25F8CEE50](v31, -1, -1);
    }

    v27 = 0;
  }

  return a3(v27);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t ActivityDispatcher.runEngagementCollector(collectionDefinition:completion:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v15 = a1[1];
  v16 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 48);
  if (one-time initialization token for defaultParameters != -1)
  {
    swift_once();
  }

  v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(static Constants.defaultParameters);
  v17[1] = v15;
  v17[0] = v16;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v9 = specialized ActivityDispatcher.adaptActivityCollectionParameter(collectionDefinition:)(v17);
  if (v9)
  {
    v10 = v9;

    v8 = v10;
  }

  type metadata accessor for PostSiriEngagementMetricsCollector();
  swift_allocObject();
  v11 = PostSiriEngagementMetricsCollector.init(parameters:)(v8);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(*v11 + 88);

  v13(partial apply for closure #1 in ActivityDispatcher.runEngagementCollector(collectionDefinition:completion:), v12);
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t closure #1 in ActivityDispatcher.runEngagementCollector(collectionDefinition:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for ReliabilityCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a3;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.engagement);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v34 = 0xD000000000000027;
    v35 = 0x800000025ED81140;
    v33 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v12 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v12);

    v14 = v34;
    v13 = v35;
    v15 = *MEMORY[0x277D615C0];
    v16 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v16 - 8) + 104))(v9, v15, v16);
    (*(v7 + 104))(v9, *MEMORY[0x277D616A8], v6);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v34);
      _os_log_impl(&dword_25ECEC000, v17, v18, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F8CEE50](v21, -1, -1);
      v22 = v20;
      a2 = v31;
      MEMORY[0x25F8CEE50](v22, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v23 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v23, v24);

    (*(v7 + 8))(v9, v6);
    a2(a1);
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.engagement);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25ECEC000, v26, v27, "Engagement processing success", v28, 2u);
    MEMORY[0x25F8CEE50](v28, -1, -1);
  }

  return (a2)(0);
}

uint64_t specialized ActivityDispatcher.getCollectorClassObjectFromString(collectorID:)(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AbstractActivityCollector();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = [v9 infoDictionary];
  if (v10)
  {
    v11 = v10;
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEC000000656D614ELL), (v14 & 1) != 0))
    {
      outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v36);

      if (swift_dynamicCast())
      {
        v36 = v35[0];
        v37 = v35[1];
        MEMORY[0x25F8CE090](46, 0xE100000000000000);
        MEMORY[0x25F8CE090](a1, a2);
        v15 = MEMORY[0x25F8CDFC0](v36, v37);

        v16 = [v9 classNamed_];

        if (v16)
        {
          swift_getObjCClassMetadata();
          v17 = swift_dynamicCastMetatype();
          if (v17)
          {
            v18 = v17;

            return v18;
          }
        }
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.engagement);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v36 = a1;
  v37 = a2;
  MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED81210);
  v21 = [v9 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  MEMORY[0x25F8CE090](v22, v24);

  v26 = v36;
  v25 = v37;
  v27 = *MEMORY[0x277D615D0];
  v28 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v28 - 8) + 104))(v7, v27, v28);
  (*(v5 + 104))(v7, *MEMORY[0x277D616A8], v4);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v36);
    _os_log_impl(&dword_25ECEC000, v29, v30, "%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x25F8CEE50](v32, -1, -1);
    MEMORY[0x25F8CEE50](v31, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v33 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v7, v33, v34);

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t specialized ActivityDispatcher.createCollectorFromParameters(parameters:)(uint64_t a1)
{
  v2 = type metadata accessor for ReliabilityCategory();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000025ED811C0), (v7 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v6, &v38), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v36;
    v8 = v37;
    v10 = specialized ActivityDispatcher.getCollectorClassObjectFromString(collectorID:)(v36, v37);
    if (v10)
    {
      v11 = *(v10 + 80);

      v13 = v11(v12);

      return v13;
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.engagement);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315394;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v38);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      v33 = Dictionary.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v38);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_25ECEC000, v28, v29, "Failed to construct collector: %s with parameters: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v31, -1, -1);
      MEMORY[0x25F8CEE50](v30, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.engagement);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v38 = 0xD000000000000026;
    v39 = 0x800000025ED811E0;
    v16 = Dictionary.description.getter();
    MEMORY[0x25F8CE090](v16);

    MEMORY[0x25F8CE090](32, 0xE100000000000000);
    v18 = v38;
    v17 = v39;
    v19 = *MEMORY[0x277D615D0];
    v20 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v20 - 8) + 104))(v5, v19, v20);
    (*(v3 + 104))(v5, *MEMORY[0x277D616A8], v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v38);
      _os_log_impl(&dword_25ECEC000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x25F8CEE50](v24, -1, -1);
      MEMORY[0x25F8CEE50](v23, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v25 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v5, v25, v26);

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t specialized ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v43 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = [objc_opt_self() getExecQ];
  v53 = swift_allocObject();
  *(v53 + 16) = MEMORY[0x277D84F90];
  v48 = dispatch_group_create();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v51 = &v59;
    v50 = (v44 + 8);
    v49 = (v43 + 8);
    *&v8 = 136315138;
    v45 = v8;
    v46 = v4;
    v47 = v6;
    do
    {
      v14 = *v10;
      v15 = one-time initialization token for engagement;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.engagement);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock = v20;
        *v19 = v45;
        v21 = Dictionary.description.getter();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &aBlock);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_25ECEC000, v17, v18, "Creating collector with %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v24 = v20;
        v4 = v46;
        v6 = v47;
        MEMORY[0x25F8CEE50](v24, -1, -1);
        MEMORY[0x25F8CEE50](v19, -1, -1);
      }

      v25 = specialized ActivityDispatcher.createCollectorFromParameters(parameters:)(v14);
      if (v25)
      {
        v26 = v25;
        v27 = v48;
        dispatch_group_enter(v48);
        v28 = swift_allocObject();
        v30 = v52;
        v29 = v53;
        v28[2] = v26;
        v28[3] = v30;
        v28[4] = v29;
        v28[5] = v14;
        v28[6] = v27;
        v61 = partial apply for closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
        v62 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v60 = &block_descriptor_37;
        v31 = _Block_copy(&aBlock);

        v30;

        v32 = v27;
        v33 = v54;
        static DispatchQoS.unspecified.getter();
        v56 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x25F8CE2F0](0, v33, v6, v31);
        _Block_release(v31);

        (*v50)(v6, v4);
        (*v49)(v33, v55);
      }

      else
      {
        static DispatchWorkItemFlags.barrier.getter();
        v11 = swift_allocObject();
        *(v11 + 16) = v53;
        *(v11 + 24) = v14;
        v61 = partial apply for closure #2 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
        v62 = v11;
        aBlock = MEMORY[0x277D85DD0];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v60 = &block_descriptor_25;
        v12 = _Block_copy(&aBlock);

        v13 = v54;
        static DispatchQoS.unspecified.getter();
        MEMORY[0x25F8CE2F0](0, v13, v6, v12);
        _Block_release(v12);
        (*v49)(v13, v55);
        (*v50)(v6, v4);
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  v34 = swift_allocObject();
  v35 = v41;
  v34[2] = v53;
  v34[3] = v35;
  v34[4] = v42;
  v61 = partial apply for closure #3 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
  v62 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v60 = &block_descriptor_31;
  v36 = _Block_copy(&aBlock);

  v37 = v54;
  static DispatchQoS.unspecified.getter();
  v56 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v52;
  v39 = v48;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v36);

  (*(v44 + 8))(v6, v4);
  (*(v43 + 8))(v37, v55);
}

void specialized ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v42 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
  }

  else
  {
    a2 = 0x800000025ED81030;
    a1 = 0xD0000000000000DDLL;
  }

  _Block_copy(a4);
  ActivityDispatcher.getJSONObjectFromCollectorDefinitions(collectorDefinitions:)(a1, a2, &aBlock);
  if (v47)
  {
    v40 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v39 = v7;
      v19 = v50;
      v20 = *(v50 + 16);

      if (v20)
      {
        if (*(v19 + 16))
        {
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED81010);
          if (v22)
          {
            outlined init with copy of Any(*(v19 + 56) + 32 * v21, &aBlock);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, "jF");
            if (!swift_dynamicCast())
            {
LABEL_18:
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v34 = type metadata accessor for Logger();
              __swift_project_value_buffer(v34, static Logger.engagement);
              v35 = Logger.logObject.getter();
              v36 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                *v37 = 0;
                _os_log_impl(&dword_25ECEC000, v35, v36, "Trying to run with no activity dictionaries - disregarding", v37, 2u);
                MEMORY[0x25F8CEE50](v37, -1, -1);
              }

              v31 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
              goto LABEL_16;
            }

            v23 = v50;
            if (*(v50 + 16))
            {
              type metadata accessor for OS_dispatch_queue();
              v24 = v41;
              (*(v41 + 104))(v16, *MEMORY[0x277D851C8], v14);
              v25 = static OS_dispatch_queue.global(qos:)();
              (*(v24 + 8))(v16, v14);
              v26 = swift_allocObject();
              v27 = v42;
              v26[2] = v42;
              v26[3] = v23;
              v26[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
              v26[5] = v17;
              v48 = closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)partial apply;
              v49 = v26;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              v46 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v47 = &block_descriptor_13;
              v28 = _Block_copy(&aBlock);
              v29 = v27;

              static DispatchQoS.unspecified.getter();
              v50 = MEMORY[0x277D84F90];
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              v30 = v39;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              MEMORY[0x25F8CE2F0](0, v13, v10, v28);
              _Block_release(v28);

              (*(v40 + 8))(v10, v30);
              (*(v43 + 8))(v13, v44);

              return;
            }
          }
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    outlined destroy of Date?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  v31 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
LABEL_16:
  v32 = v31;
  v33 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v33);
}

unint64_t specialized ActivityDispatcher.adaptActivityCollectionParameter(collectionDefinition:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v27 = *(a1 + 32);
    v4 = (v1 + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = 0xE900000000000074;
      v9 = v7 == 4;
      v10 = 0x636E75614C707041;
      if (v7 != 4)
      {
        v10 = 0x6D72616C41;
      }

      v11 = 0xE500000000000000;
      if (v9)
      {
        v11 = 0xE900000000000068;
      }

      if (v6 == 3)
      {
        v10 = 0x6E65746E49707041;
      }

      else
      {
        v8 = v11;
      }

      v12 = 0x6365784569726953;
      if (v6 != 1)
      {
        v12 = 0x6979616C50776F4ELL;
      }

      v13 = 0xED00006E6F697475;
      if (v6 != 1)
      {
        v13 = 0xEA0000000000676ELL;
      }

      if (!v6)
      {
        v12 = 0x495569726953;
        v13 = 0xE600000000000000;
      }

      if (v6 <= 2)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v6 <= 2)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      --v3;
    }

    while (v3);
    v1 = v27;
    v19 = *(v27 + 16);
  }

  else
  {
    v19 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v20 = (v1 + 32);
  while (v19)
  {
    v21 = *v20++;
    --v19;
    if (!v21)
    {
      goto LABEL_40;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v23 = *(v5 + 2);
  v22 = *(v5 + 3);
  if (v23 >= v22 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
  }

  *(v5 + 2) = v23 + 1;
  v24 = &v5[16 * v23];
  *(v24 + 4) = 0x495569726953;
  *(v24 + 5) = 0xE600000000000000;
LABEL_40:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25ED7C750;
  *(inited + 32) = 0x614E6D6165727473;
  *(inited + 40) = 0xEB0000000073656DLL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 48) = v5;
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Date?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v26;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t StreamType.name.getter()
{
  v1 = *v0;
  v2 = 0x495569726953;
  v3 = 0x6E65746E49707041;
  v4 = 0x636E75614C707041;
  if (v1 != 4)
  {
    v4 = 0x6D72616C41;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6365784569726953;
  if (v1 != 1)
  {
    v5 = 0x6979616C50776F4ELL;
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

uint64_t ActivityCollectionParameter.startTime.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ActivityCollectionParameter.endTime.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ActivityCollectionParameter.streams.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ActivityCollectionParameter.timeWindowForCollection.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ActivityCollectionParameter.init(collectionType:_:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return a1();
}

Swift::Int CollectionType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CollectionType()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollectionType(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](0);
  return Hasher._finalize()();
}

Swift::Int StreamType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CollectionType and conformance CollectionType()
{
  result = lazy protocol witness table cache variable for type CollectionType and conformance CollectionType;
  if (!lazy protocol witness table cache variable for type CollectionType and conformance CollectionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionType and conformance CollectionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamType and conformance StreamType()
{
  result = lazy protocol witness table cache variable for type StreamType and conformance StreamType;
  if (!lazy protocol witness table cache variable for type StreamType and conformance StreamType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamType and conformance StreamType);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ActivityCollectionParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ActivityCollectionParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CollectionType(_WORD *result, int a2, int a3)
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

void CalendarEventSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, char *a2)
{
  v93 = a2;
  v92 = type metadata accessor for Date();
  v90 = *(v92 - 8);
  v3 = MEMORY[0x28223BE20](v92);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v81 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v81 - v21;
  v23 = MEMORY[0x25F8CE7F0](v20);
  v24 = v94;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v95, &v96);
  if (v24)
  {
    objc_autoreleasePoolPop(v23);
    return;
  }

  v82 = a1;
  v83 = v13;
  v84 = v15;
  v85 = v19;
  v25 = v92;
  v26 = v93;
  v88 = 0;
  v89 = v22;
  v27 = v91;
  v86 = v7;
  v87 = v9;
  objc_autoreleasePoolPop(v23);
  v28 = v96;
  v94 = [v96 intent];
  v29 = [v94 domain];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v30 == 0x7261646E656C6143 && v32 == 0xE800000000000000)
  {

    v33 = v26;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = v26;
    if ((v34 & 1) == 0)
    {

      return;
    }
  }

  v35 = [v94 verb];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v36;

  v37 = [v82 absoluteTimestamp];
  if (v37)
  {
    v38 = v89;
    v39 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
    v38 = v89;
  }

  v41 = v90;
  v42 = v25;
  v43 = 1;
  (*(v90 + 56))(v38, v40, 1, v25);
  v44 = [v28 dateInterval];
  v45 = v83;
  if (v44)
  {
    v46 = v44;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  v93 = v28;
  v47 = type metadata accessor for DateInterval();
  v48 = *(v47 - 8);
  (*(v48 + 56))(v45, v43, 1, v47);
  v49 = v45;
  v50 = v84;
  outlined init with take of DateInterval?(v49, v84);
  v51 = 0;
  if (!(*(v48 + 48))(v50, 1, v47))
  {
    DateInterval.duration.getter();
    v51 = v52;
  }

  outlined destroy of Date?(v50, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v53 = *(v41 + 16);
  v54 = v87;
  v53(v87, v33, v42);
  v55 = type metadata accessor for SiriUISession(0);
  v56 = v86;
  v53(v86, &v33[*(v55 + 20)], v42);
  v57 = v89;
  v58 = v85;
  outlined init with copy of Date?(v89, v85);
  v59 = (*(v41 + 48))(v58, 1, v42);
  if (v59 == 1)
  {
    v73 = *(v41 + 8);
    v73(v56, v42);
    v73(v54, v42);
    outlined destroy of Date?(v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v71 = 0x3FF0000000000000;
    v61 = 0;
    v65 = 0.0;
    v72 = 0.0;
    v51 = 0;
  }

  else
  {
    (*(v41 + 32))(v27, v58, v42);
    Date.timeIntervalSinceReferenceDate.getter();
    v61 = v60;
    Date.timeIntervalSinceReferenceDate.getter();
    v63 = v62;
    Date.timeIntervalSinceReferenceDate.getter();
    v65 = v63 - v64;
    Date.timeIntervalSinceReferenceDate.getter();
    v67 = v66;
    Date.timeIntervalSinceReferenceDate.getter();
    v69 = v68;
    v70 = *(v41 + 8);
    v70(v27, v42);
    v70(v56, v42);
    v70(v54, v42);
    outlined destroy of Date?(v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v71 = 0;
    v72 = v67 - v69;
  }

  v74 = v94;
  v75 = [v94 domain];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  type metadata accessor for Signal();
  v79 = swift_allocObject();
  *(v79 + 16) = v61;
  *(v79 + 24) = v65;
  *(v79 + 32) = v72;
  *(v79 + 40) = v51;
  *(v79 + 48) = v71;
  *(v79 + 56) = v59 != 1;
  *(v79 + 64) = v76;
  *(v79 + 72) = v78;
  v80 = v81;
  *(v79 + 80) = v91;
  *(v79 + 88) = v80;
  *(v79 + 96) = 1;
  *(v79 + 104) = MEMORY[0x277D84F98];
}

uint64_t UISessionSignalBuilder.__allocating_init(siriUISession:index:collector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v10 = type metadata accessor for SiriUISession(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v12 = v8 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *(v12 + 112) = 0;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 0u;
  outlined init with take of SiriUISession(a1, v7);
  v11(v7, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of SiriUISession?(v7, v8 + v9);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a3;
  return v8;
}

uint64_t SiriUISession.init(startDate:endDate:postEndDate:sessionID:uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  v17 = type metadata accessor for SiriUISession(0);
  v16(a8 + v17[5], a2, v15);
  result = (v16)(a8 + v17[6], a3, v15);
  v19 = (a8 + v17[7]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + v17[8]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t UISessionSignalBuilder.__allocating_init(collector:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v5 = v2 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *(v5 + 112) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v2 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a1;
  return v2;
}

uint64_t SiriUISession.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriUISession.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriUISession.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriUISession.postEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriUISession.postEndDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriUISession.sessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriUISession(0) + 28));

  return v1;
}

uint64_t SiriUISession.uuid.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriUISession(0) + 32));

  return v1;
}

uint64_t key path setter for UISessionSignalBuilder.siriUISession : UISessionSignalBuilder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  return (*(**a2 + 120))(v6);
}

uint64_t UISessionSignalBuilder.siriUISession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
}

uint64_t UISessionSignalBuilder.siriUISession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  swift_beginAccess();
  outlined assign with take of SiriUISession?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t UISessionSignalBuilder.siriExecutionTasks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double UISessionSignalBuilder.postSiriDataStream.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream);
  swift_beginAccess();
  v4 = v3[5];
  v16 = v3[4];
  v17 = v4;
  v18 = v3[6];
  v19 = *(v3 + 14);
  v5 = v3[1];
  v12 = *v3;
  v13 = v5;
  v6 = v3[3];
  v14 = v3[2];
  v15 = v6;
  outlined init with copy of Date?(&v12, &v11, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  v7 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  *(a1 + 96) = v18;
  *(a1 + 112) = v19;
  v8 = v13;
  *a1 = v12;
  *(a1 + 16) = v8;
  result = *&v14;
  v10 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v10;
  return result;
}

uint64_t UISessionSignalBuilder.postSiriDataStream.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = *(v3 + 112);
  v16 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v16;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v17 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v17;
  v18 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v18;
  return outlined consume of PSEBiomeEventsSource?(v4, v5, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
}