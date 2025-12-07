Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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

{
  v2 = v1;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v33 = *(matched - 8);
  v34 = matched;
  MEMORY[0x28223BE20](matched);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
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
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      outlined init with take of PerformanceUtil.Ticket(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      Hasher.init(_seed:)();
      type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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
      result = outlined init with take of PerformanceUtil.Ticket(v5, *(v8 + 48) + v16 * v21, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      ++*(v8 + 16);
      v6 = v32;
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
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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
      *(*(v5 + 48) + v13) = v17;
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

{
  v2 = v1;
  v3 = type metadata accessor for VideoCategory();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v45 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  v48 = v11;
  if (*(v11 + 16))
  {
    v44 = v3;
    v38 = v1;
    v14 = 0;
    v15 = (v48 + 56);
    v16 = 1 << *(v48 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v48 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = v10;
    v43 = (v4 + 48);
    v39 = (v4 + 8);
    v40 = (v4 + 32);
    v20 = result + 56;
    v21 = v46;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v48 + 48);
      v47 = *(v45 + 72);
      outlined init with take of PommesSearchReason?(v26 + v47 * (v23 | (v14 << 6)), v10, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v10, v21, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v27 = v44;
      if ((*v43)(v21, 1, v44) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v41;
        (*v40)(v41, v21, v27);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
        dispatch thunk of Hashable.hash(into:)();
        (*v39)(v28, v27);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v10 = v42;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v21 = v46;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v21 = v46;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = outlined init with take of PommesSearchReason?(v10, *(v13 + 48) + v22 * v47, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v48 + 32);
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    v2 = v38;
    *(v48 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for StringSearchScope();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v45 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  v48 = v11;
  if (*(v11 + 16))
  {
    v44 = v3;
    v38 = v1;
    v14 = 0;
    v15 = (v48 + 56);
    v16 = 1 << *(v48 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v48 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = v10;
    v43 = (v4 + 48);
    v39 = (v4 + 8);
    v40 = (v4 + 32);
    v20 = result + 56;
    v21 = v46;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v48 + 48);
      v47 = *(v45 + 72);
      outlined init with take of PommesSearchReason?(v26 + v47 * (v23 | (v14 << 6)), v10, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v10, v21, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v27 = v44;
      if ((*v43)(v21, 1, v44) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v41;
        (*v40)(v41, v21, v27);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
        dispatch thunk of Hashable.hash(into:)();
        (*v39)(v28, v27);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v10 = v42;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v21 = v46;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v21 = v46;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = outlined init with take of PommesSearchReason?(v10, *(v13 + 48) + v22 * v47, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v48 + 32);
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    v2 = v38;
    *(v48 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = specialized _NativeSet.copy()();
        goto LABEL_58;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    CommonAudio.Attribute.rawValue.getter(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEA00000000007473;
        v13 = 0x697472416D6F7266;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE800000000000000;
            v13 = 0x676E6F536D6F7266;
            break;
          case 2:
            v13 = 0x75626C416D6F7266;
            v12 = 0xE90000000000006DLL;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x7478654E79616C70;
            break;
          case 4:
            v12 = 0xE700000000000000;
            v13 = 0x776F4E79616C70;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x7473614C79616C70;
            break;
          case 6:
            v12 = 0xE800000000000000;
            v13 = 0x7974696E69666661;
            break;
          case 7:
            v13 = 0x6E656D6D6F636572;
            v12 = 0xEB00000000646564;
            break;
          case 8:
            v12 = 0xE900000000000079;
            v13 = 0x7265766F63736964;
            break;
          case 9:
            v13 = 0xD000000000000018;
            v12 = 0x80000002234D9AC0;
            break;
          case 0xA:
            v12 = 0xE400000000000000;
            v13 = 1954047342;
            break;
          case 0xB:
            v12 = 0xE500000000000000;
            v13 = 0x64656D616ELL;
            break;
          case 0xC:
            v12 = 0xE800000000000000;
            v13 = 0x73756F6976657270;
            break;
          case 0xD:
            v13 = 0x44657361656C6572;
            v12 = 0xEB00000000657461;
            break;
          case 0xE:
            v12 = 0xE800000000000000;
            v13 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v14 = 0x697472416D6F7266;
        v15 = 0xEA00000000007473;
        switch(v6)
        {
          case 1:
            v15 = 0xE800000000000000;
            if (v13 == 0x676E6F536D6F7266)
            {
              goto LABEL_52;
            }

            goto LABEL_53;
          case 2:
            v15 = 0xE90000000000006DLL;
            if (v13 != 0x75626C416D6F7266)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 3:
            v15 = 0xE800000000000000;
            if (v13 != 0x7478654E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 4:
            v15 = 0xE700000000000000;
            if (v13 != 0x776F4E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 5:
            v15 = 0xE800000000000000;
            if (v13 != 0x7473614C79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 6:
            v15 = 0xE800000000000000;
            if (v13 != 0x7974696E69666661)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 7:
            v16 = 0x6E656D6D6F636572;
            v17 = 6579556;
            goto LABEL_46;
          case 8:
            v15 = 0xE900000000000079;
            if (v13 != 0x7265766F63736964)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 9:
            v15 = 0x80000002234D9AC0;
            if (v13 != 0xD000000000000018)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 10:
            v15 = 0xE400000000000000;
            v14 = 1954047342;
            goto LABEL_51;
          case 11:
            v15 = 0xE500000000000000;
            if (v13 != 0x64656D616ELL)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 12:
            v15 = 0xE800000000000000;
            if (v13 != 0x73756F6976657270)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 13:
            v16 = 0x44657361656C6572;
            v17 = 6648929;
LABEL_46:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v13 != v16)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 14:
            v15 = 0xE800000000000000;
            if (v13 != 0x6E6F697461727564)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          default:
LABEL_51:
            if (v13 != v14)
            {
              goto LABEL_53;
            }

LABEL_52:
            if (v12 == v15)
            {
              goto LABEL_61;
            }

LABEL_53:
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_62;
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

LABEL_58:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_61:

LABEL_62:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_25;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = 0x664F65726F6DLL;
  v9 = *v3;
  Hasher.init(_seed:)();
  if (v5)
  {
    v8 = 0x6E65726566666964;
    v10 = 0xED00006E61685474;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 0x6E65726566666964 : 0x664F65726F6DLL;
      v14 = *(*(v9 + 48) + a2) ? 0xED00006E61685474 : 0xE600000000000000;
      if (v13 == v8 && v14 == v10)
      {
        goto LABEL_28;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v7 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v25 = v7;
  v26 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
  dispatch thunk of Hashable.hash(into:)();
  v13 = *(matched + 20);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
  v28 = v14;
  v29 = v13;
  dispatch thunk of Hashable.hash(into:)();
  v15 = Hasher._finalize()();
  v31 = v12;
  v16 = -1 << *(v12 + 32);
  a2 = v15 & ~v16;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v7 + 72);
    v27 = v9;
    do
    {
      outlined init with copy of PommesSearchRequest.ParseState(*(v31 + 48) + v18 * a2, v9, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398C8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v33 == v32)
      {
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39548]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v9 = v27;
        dispatch thunk of RawRepresentable.rawValue.getter();
        outlined destroy of PommesSearchRequest.ParseState(v9, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        if (v33 == v32)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        outlined destroy of PommesSearchRequest.ParseState(v9, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v19 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PerformanceUtil.Ticket(a1, *(v19 + 48) + *(v25 + 72) * a2, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
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
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v53 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
  MEMORY[0x28223BE20](v52);
  v7 = &v38 - v6;
  v8 = type metadata accessor for VideoCategory();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v43 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v40 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v18;
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        specialized _NativeSet.copy()(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMR);
        goto LABEL_21;
      }

      v39 = v18;
      specialized _NativeSet.copyAndResize(capacity:)(v21 + 1);
    }

    v51 = *v3;
    Hasher.init(_seed:)();
    outlined init with copy of MediaUserStateCenter?(v53, v20, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v49 = *(v9 + 48);
    v50 = v9 + 48;
    if (v49(v20, 1, v8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v23 = v44;
      (*(v9 + 32))(v44, v20, v8);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v23, v8);
    }

    v24 = Hasher._finalize()();
    v25 = -1 << *(v51 + 32);
    a2 = v24 & ~v25;
    v48 = v51 + 56;
    if ((*(v51 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v25;
      v41 = (v9 + 32);
      v26 = *(v43 + 72);
      v45 = (v9 + 8);
      v46 = v26;
      v42 = v17;
      do
      {
        outlined init with copy of MediaUserStateCenter?(*(v51 + 48) + v46 * a2, v17, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        v31 = *(v52 + 48);
        outlined init with copy of MediaUserStateCenter?(v17, v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        outlined init with copy of MediaUserStateCenter?(v53, &v7[v31], &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        v32 = v49;
        if (v49(v7, 1, v8) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v17, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          if (v32(&v7[v31], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          outlined init with copy of MediaUserStateCenter?(v7, v14, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          if (v32(&v7[v31], 1, v8) != 1)
          {
            v27 = v44;
            (*v41)(v44, &v7[v31], v8);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E30]);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            v29 = *v45;
            v30 = v27;
            v17 = v42;
            (*v45)(v30, v8);
            outlined destroy of MediaUserStateCenter?(v17, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
            v29(v14, v8);
            outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
            if (v28)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          outlined destroy of MediaUserStateCenter?(v17, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          (*v45)(v14, v8);
        }

        outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
LABEL_14:
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v33 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PommesSearchReason?(v53, *(v33 + 48) + *(v43 + 72) * a2, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_24:
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

{
  v53 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
  MEMORY[0x28223BE20](v52);
  v7 = &v38 - v6;
  v8 = type metadata accessor for StringSearchScope();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v43 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v40 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v18;
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        specialized _NativeSet.copy()(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMR);
        goto LABEL_21;
      }

      v39 = v18;
      specialized _NativeSet.copyAndResize(capacity:)(v21 + 1);
    }

    v51 = *v3;
    Hasher.init(_seed:)();
    outlined init with copy of MediaUserStateCenter?(v53, v20, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v49 = *(v9 + 48);
    v50 = v9 + 48;
    if (v49(v20, 1, v8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v23 = v44;
      (*(v9 + 32))(v44, v20, v8);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v23, v8);
    }

    v24 = Hasher._finalize()();
    v25 = -1 << *(v51 + 32);
    a2 = v24 & ~v25;
    v48 = v51 + 56;
    if ((*(v51 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v25;
      v41 = (v9 + 32);
      v26 = *(v43 + 72);
      v45 = (v9 + 8);
      v46 = v26;
      v42 = v17;
      do
      {
        outlined init with copy of MediaUserStateCenter?(*(v51 + 48) + v46 * a2, v17, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        v31 = *(v52 + 48);
        outlined init with copy of MediaUserStateCenter?(v17, v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        outlined init with copy of MediaUserStateCenter?(v53, &v7[v31], &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        v32 = v49;
        if (v49(v7, 1, v8) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v17, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          if (v32(&v7[v31], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          outlined init with copy of MediaUserStateCenter?(v7, v14, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          if (v32(&v7[v31], 1, v8) != 1)
          {
            v27 = v44;
            (*v41)(v44, &v7[v31], v8);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA010]);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            v29 = *v45;
            v30 = v27;
            v17 = v42;
            (*v45)(v30, v8);
            outlined destroy of MediaUserStateCenter?(v17, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
            v29(v14, v8);
            outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
            if (v28)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          outlined destroy of MediaUserStateCenter?(v17, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          (*v45)(v14, v8);
        }

        outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
LABEL_14:
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v33 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PommesSearchReason?(v53, *(v33 + 48) + *(v43 + 72) * a2, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_24:
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

{
  v1 = v0;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v3 = *(matched - 8);
  MEMORY[0x28223BE20](matched - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of PommesSearchRequest.ParseState(*(v6 + 48) + v21, v5, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        result = outlined init with take of PerformanceUtil.Ticket(v5, *(v8 + 48) + v21, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = static _SetStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v9;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v30 + 72) * (v25 | (v19 << 6));
        outlined init with copy of MediaUserStateCenter?(*(v13 + 48) + v28, v12, a1, a2);
        result = outlined init with take of PommesSearchReason?(v12, *(v15 + 48) + v28, a1, a2);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v9 = v29;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v9 = v15;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

id specialized AudioQueueStateManager.init(queueStateObserver:)(uint64_t a1, _BYTE *a2)
{
  v11[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SOMediaNowPlayingObserver, 0x277D5E1D0);
  v11[4] = &protocol witness table for SOMediaNowPlayingObserver;
  v11[0] = a1;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup;
  *&a2[v4] = dispatch_group_create();
  a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered] = 0;
  v5 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache] = 0;
  v6 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache];
  *v6 = 0;
  v6[8] = 1;
  v7 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache];
  *v7 = 0;
  v7[1] = 0;
  outlined init with copy of AppDataProviding(v11, &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for AudioQueueStateManager();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(uint64_t a1, void *a2)
{
  v11[3] = type metadata accessor for AppDataProvider();
  v11[4] = &protocol witness table for AppDataProvider;
  v11[0] = a1;
  outlined init with copy of AppDataProviding(v11, v10);
  type metadata accessor for PreferredNavigationAppDataProvider();
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v4 = swift_allocObject();
  *(v4 + 64) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(v10, v4 + 16);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = a2;
  swift_beginAccess();

  v5 = a2;
  outlined assign with take of MediaUserStateCenter?(v8, v4 + 80, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v6 = specialized AnyDataProvider.init<A>(provider:)(v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v6;
}

uint64_t _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for AppDataProvider();
  v28[4] = &protocol witness table for AppDataProvider;
  v28[0] = a1;
  v27[3] = &type metadata for RunningBoardForegroundAppProvider;
  v27[4] = &protocol witness table for RunningBoardForegroundAppProvider;
  v8 = one-time initialization token for pommes;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2 != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_2232BB000, v10, v11, "SiriKitAppInfoDataProvider make, isEnabled=%{BOOL}d, satisfyingAppsDataProvider specified=%{BOOL}d", v12, 0xEu);
    MEMORY[0x223DE0F80](v12, -1, -1);

    v13 = a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    v13 = a2;
    if (!a2)
    {
LABEL_7:
      swift_beginAccess();
      v14 = off_280FB8C58;

      v13 = v14();
      a3 = v15;

      swift_unknownObjectRetain();
    }
  }

  outlined init with copy of AppDataProviding(v28, v26);
  outlined init with copy of AppDataProviding(v27, v25);
  outlined init with copy of MediaUserStateCenter?(a4, v23, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  type metadata accessor for SiriKitAppInfoDataProvider(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v19 = v16 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v19 = 0;
  *(v19 + 8) = 1;
  outlined init with take of DomainWarmupHandling(v26, v16 + 16);
  *(v16 + 56) = v13;
  *(v16 + 64) = a3;
  outlined init with take of DomainWarmupHandling(v25, v16 + 72);
  v20 = v23[1];
  *(v16 + 112) = v23[0];
  *(v16 + 128) = v20;
  *(v16 + 144) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v21 = specialized AnyDataProvider.init<A>(provider:)(v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v21;
}

uint64_t specialized MusicDomain.init(spanMatcher:)(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0350;
  *(inited + 32) = xmmword_2234D0360;
  *(inited + 48) = -1529961267;
  *(inited + 52) = -23348;
  v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt16V_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  *(a2 + 32) = v5;
  type metadata accessor for VocabularySearchClient();
  v6 = swift_allocObject();
  *(a2 + 16) = specialized VocabularySearchClient.init(spanMatcher:)(a1, v6);
  return a2;
}

uint64_t specialized VocabularySearchClient.init(spanMatcher:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v4 - 8);
  v16 = v4;
  MEMORY[0x28223BE20](v4);
  v14 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMSpanMatcher, 0x277D55D38);
  v20 = &protocol witness table for SEMSpanMatcher;
  *&v18 = a1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v13 = "preparedRequestsIds";
  (*(v9 + 104))(v11, *MEMORY[0x277D851C8], v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v14, *MEMORY[0x277D85260], v16);
  *(a2 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a2 + 64) = 0;
  outlined init with take of DomainWarmupHandling(&v18, a2 + 24);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static PommesSearch.defaultPreflightClients(dataProviderManager:networkAvailabilityProvider:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch06PommesF17PreflightHandling_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch06PommesF17PreflightHandling_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2234D0370;
  v5 = type metadata accessor for DisableSearchPreflightClient();
  v6 = swift_allocObject();
  *(v4 + 56) = v5;
  *(v4 + 64) = &protocol witness table for DisableSearchPreflightClient;
  *(v4 + 32) = v6;
  matched = type metadata accessor for UtteranceMatchPreflightClient();
  v8 = swift_allocObject();
  *(v4 + 96) = matched;
  *(v4 + 104) = &protocol witness table for UtteranceMatchPreflightClient;
  *(v4 + 72) = v8;
  v9 = type metadata accessor for ClassicFollowupPreflightClient();
  v10 = swift_allocObject();
  *(v4 + 136) = v9;
  *(v4 + 144) = &protocol witness table for ClassicFollowupPreflightClient;
  *(v4 + 112) = v10;
  v11 = type metadata accessor for SmartPlayPreflightClient();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v4 + 176) = v11;
  *(v4 + 184) = &protocol witness table for SmartPlayPreflightClient;
  *(v4 + 152) = v12;
  v13 = type metadata accessor for CallContactPreflightClient();
  v14 = swift_allocObject();
  *(v4 + 216) = v13;
  *(v4 + 224) = &protocol witness table for CallContactPreflightClient;
  *(v4 + 192) = v14;
  v15 = objc_opt_self();

  v16 = [v15 processInfo];
  v17 = NSProcessInfo.isRunningUnitTests.getter();

  if (v17)
  {
    v18 = &type metadata for EmptyReferenceResolver;
    v19 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v18 = type metadata accessor for ReferenceResolutionClient();
    *&v35 = ReferenceResolutionClient.__allocating_init()();
    v19 = MEMORY[0x277D5FDD8];
  }

  v36 = v18;
  v37 = v19;
  v20 = type metadata accessor for PlayThisLibraryItemPreflightClient();
  v21 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(&v35, v21 + 16);
  *(v4 + 256) = v20;
  *(v4 + 264) = &protocol witness table for PlayThisLibraryItemPreflightClient;
  *(v4 + 232) = v21;
  v22 = type metadata accessor for WholeHomeAudioPreflightClient();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v4 + 296) = v22;
  *(v4 + 304) = &protocol witness table for WholeHomeAudioPreflightClient;
  *(v4 + 272) = v23;
  v24 = type metadata accessor for PlayRadioStationPreflightClient();
  v25 = swift_allocObject();
  *(v4 + 336) = v24;
  *(v4 + 344) = &protocol witness table for PlayRadioStationPreflightClient;
  *(v4 + 312) = v25;
  v26 = type metadata accessor for OfflineMusicPlaybackPreflightClient();
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v4 + 376) = v26;
  *(v4 + 384) = &protocol witness table for OfflineMusicPlaybackPreflightClient;
  *(v4 + 352) = v27;
  v28 = type metadata accessor for EnvironmentNamePreflightClient();
  v29 = swift_allocObject();
  *(v4 + 416) = v28;
  *(v4 + 424) = &protocol witness table for EnvironmentNamePreflightClient;
  *(v4 + 392) = v29;
  v30 = type metadata accessor for OpenAppOnTVPreflightClient();
  v31 = swift_allocObject();
  *(v4 + 456) = v30;
  *(v4 + 464) = &protocol witness table for OpenAppOnTVPreflightClient;
  *(v4 + 432) = v31;
  v32 = type metadata accessor for OpenAppVocPreflightClient();
  v33 = swift_allocObject();
  *(v4 + 496) = v32;
  *(v4 + 504) = &protocol witness table for OpenAppVocPreflightClient;
  *(v4 + 472) = v33;

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch16LocalDomainTypesOAC0fgE0_pGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch16LocalDomainTypesOAC0fgE0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, v11, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
      v5 = v11[0];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = outlined init with take of DomainWarmupHandling(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch13CacheHandling_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch13CacheHandling_pGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch13CacheHandling_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, &v13, &_sSS_21SiriInformationSearch13CacheHandling_ptMd, &_sSS_21SiriInformationSearch13CacheHandling_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of DomainWarmupHandling(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch20DomainWarmupHandling_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch20DomainWarmupHandling_pGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch20DomainWarmupHandling_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, &v13, &_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMd, &_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of DomainWarmupHandling(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C18_Nlu_External_SpanVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMd, &_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMd, &_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Siri_Nlu_External_Span();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SfTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSfGMd, &_ss18_DictionaryStorageCySSSfGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySSGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSaySSGGMd, &_ss18_DictionaryStorageCySJSaySSGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v18 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMd, &_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMd, &_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMR);
      v11 = *v5;
      v10 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v10);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v7[6] + 16 * result);
      *v15 = v11;
      v15[1] = v10;
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      result = outlined init with take of PommesSearchReason?(v5 + v22, v16 + *(*(v17 - 8) + 72) * v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMd, &_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMd, &_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
      result = outlined init with take of PerformanceUtil.Ticket(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for PommesDialogStateManager.DialogValue);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0e1_f1_g1_h10_AudioItemK0OGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeOShyAC0e1_f1_g1_h10_AudioItemK0OGGMd, &_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeOShyAC0e1_f1_g1_h10_AudioItemK0OGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMd, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOGMd, &_ss18_DictionaryStorageCySS10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMd, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch11CommonAudioV6DecadeOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch11CommonAudioV6DecadeOGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch11CommonAudioV6DecadeOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV6DecadeO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch11CommonAudioV6DecadeOSiGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch11CommonAudioV6DecadeOSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0C17InformationSearch11CommonAudioV0hJ0OSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO0C17InformationSearch11CommonAudioV0hJ0OSgGMd, &_ss18_DictionaryStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO0C17InformationSearch11CommonAudioV0hJ0OSgGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV4SortO_So07INMediaH5OrderVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcGMd, &_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMd, &_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMd, _ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMd, &_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch21DomainAffinityKVStoreCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SfTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMd, &_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 4 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOGMd, &_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOGMd, &_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v9, v5, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized PommesSearch.init(remoteSearchClient:domainSearchClients:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v6 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = v6;
  *(v3 + 64) = v7;
  v8 = [objc_opt_self() sharedPreferences];
  v9 = type metadata accessor for PommesServerFallbackPreferences();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v3 + 96) = v9;
  *(v3 + 104) = &protocol witness table for PommesServerFallbackPreferences;
  *(v3 + 72) = v10;
  *(v3 + 112) = 0;
  *(v3 + 120) = MEMORY[0x277D84FA0];
  *(v3 + 32) = a2;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = a1;
  v11 = one-time initialization token for shared;

  if (v11 != -1)
  {
    swift_once();
  }

  *(v3 + 40) = static PegasusCacheManager.shared;

  v12 = default argument 0 of DomainWarmup.init(warmupClients:)();
  type metadata accessor for DomainWarmup();
  swift_allocObject();
  *(v3 + 56) = DomainWarmup.init(warmupClients:)(v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v14 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v15 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  *(v3 + 48) = PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v13, v14, v15);
  return v3;
}

void partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:)(char *a1, char a2)
{
  v4 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for SignpostToken(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(type metadata accessor for PommesCandidateId() - 8);
  v16 = (*(v15 + 80) + v14 + 16) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  closure #1 in PommesSearch.search(pommesSearchRequest:completion:)(a1, a2 & 1, v2 + v5, v2 + v8, (v2 + v11), *(v2 + v12), *(v2 + v12 + 8), *(v2 + v13), *(v2 + v14), *(v2 + v14 + 8), v2 + v16, v2 + ((v16 + v17 + *(v18 + 80)) & ~*(v18 + 80)));
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

id outlined copy of Result<PommesResponse, Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<PommesResponse, Error>(result);
  }

  return result;
}

void outlined consume of Result<PommesResponse, Error>?(id a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<PommesResponse, Error>(a1);
  }
}

void outlined consume of PommesSearchPreflightResult(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type SearchError and conformance SearchError()
{
  result = lazy protocol witness table cache variable for type SearchError and conformance SearchError;
  if (!lazy protocol witness table cache variable for type SearchError and conformance SearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchError and conformance SearchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchError and conformance SearchError;
  if (!lazy protocol witness table cache variable for type SearchError and conformance SearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchError and conformance SearchError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalDomainTypes and conformance LocalDomainTypes()
{
  result = lazy protocol witness table cache variable for type LocalDomainTypes and conformance LocalDomainTypes;
  if (!lazy protocol witness table cache variable for type LocalDomainTypes and conformance LocalDomainTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalDomainTypes and conformance LocalDomainTypes);
  }

  return result;
}

uint64_t type metadata completion function for PommesSearchError(uint64_t a1)
{
  result = type metadata accessor for Error();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PommesSearchReason();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t type metadata completion function for PommesSearchEagerInfo(uint64_t a1)
{
  result = type metadata accessor for PommesSearchReason();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of PommesSearch.search(pommesSearchRequest:completion:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

uint64_t getEnumTagSinglePayload for SearchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalDomainTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalDomainTypes(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x98))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 152))();
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 224))() & 1;
}

{
  return (*(*v0 + 208))() & 1;
}

{
  return (*(*v0 + 104))() & 1;
}

{
  return (*(*v0 + 144))() & 1;
}

{
  return (*(*v0 + 112))() & 1;
}

{
  return (*(*v0 + 192))() & 1;
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA0))() & 1;
}

{
  return (*(*v0 + 232))() & 1;
}

{
  return (*(*v0 + 128))() & 1;
}

{
  return (*(*v0 + 128))() & 1;
}

{
  return (*(*v0 + 104))() & 1;
}

{
  return (*(*v0 + 160))() & 1;
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 232))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 224))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 128))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 208))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 136))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of PommesSearchRequest.ParseState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 120))(&v4);
  *a1 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError()
{
  result = lazy protocol witness table cache variable for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError;
  if (!lazy protocol witness table cache variable for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError);
  }

  return result;
}

void specialized PommesSearch.runGeoPersonalizationShadowLogging(result:)(char *a1, char a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v76 = (&v68 - v10);
  MEMORY[0x28223BE20](v9);
  v72 = &v68 - v11;
  v77[3] = &type metadata for FeatureFlag;
  v77[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v12 = swift_allocObject();
  v77[0] = v12;
  *(v12 + 16) = 3;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 3;
  v13 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v77);
  if (v13 & 1) == 0 || (a2)
  {
    return;
  }

  a1;
  v14 = PommesResponse.metadataDomainName.getter();
  v16 = v15;
  v69 = v8;
  if (v14 == 1936744813 && v15 == 0xE400000000000000 || (v17 = v14, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v17 == 7300455 && v16 == 0xE300000000000000)
  {

    v18 = v4;
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v4;
    if ((v61 & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_36;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v72;
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "Shadow logging for geo personalization", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    v25 = dispatch thunk of PommesResponse.experiences.getter();
    if (v25 >> 62)
    {
      v66 = v25;
      v67 = __CocoaSet.count.getter();
      v25 = v66;
      if (!v67)
      {
LABEL_42:

        v60 = a1;
LABEL_43:
        outlined consume of Result<PommesResponse, Error>(v60);
        return;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v25 & 0xC000000000000001) == 0)
    {
      break;
    }

    v26 = MEMORY[0x223DDFF80](0);
LABEL_17:
    v27 = v26;
    v68 = a1;

    v28 = dispatch thunk of Experience.associatedEntities.getter();

    v29 = MEMORY[0x277D84F90];
    v74 = *(v28 + 16);
    if (!v74)
    {
LABEL_30:

      v43 = *(v29 + 16);
      if (v43)
      {
        v77[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v44 = *(v5 + 16);
        v45 = v5 + 16;
        v46 = v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v47 = *(v45 + 56);
        v75 = v45;
        v76 = v44;
        v73 = (v45 - 8);
        v74 = v47;
        v48 = v18;
        v49 = v69;
        do
        {
          v76(v49, v46, v48);
          v50 = Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.getter();
          v52 = v51;
          v53 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
          v55 = v54;
          v56 = objc_allocWithZone(MEMORY[0x277D1B330]);
          v57 = MEMORY[0x223DDF550](v50, v52);

          v58 = MEMORY[0x223DDF550](v53, v55);

          [v56 initWithMUID:v57 name:v58];

          (*v73)(v49, v48);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v46 += v74;
          --v43;
        }

        while (v43);
      }

      v59 = [objc_allocWithZone(MEMORY[0x277D1B338]) initWithVisitCountThreshold:0 lastVisitDaysThreshold:0.0 visitCountGivenLocationThreshold:1.79769313e308 entityRelevanceThreshold:0.0 enableEntityRelevance:0.0];
      IQFMapsPersonalizationRanker.rankedEvents(for:completion:)();

      v60 = v68;
      goto LABEL_43;
    }

    v30 = 0;
    v73 = (v5 + 16);
    v75 = (v5 + 32);
    v70 = (v5 + 8);
    v71 = v18;
    while (v30 < *(v28 + 16))
    {
      a1 = ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v31 = *(v5 + 72);
      (*(v5 + 16))(v23, &a1[v28 + v31 * v30], v18);
      v32 = Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.getter();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v36 = v23;
        v37 = v5;
        v38 = *v75;
        (*v75)(v76, v36, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
          v29 = v77[0];
        }

        v41 = *(v29 + 16);
        v40 = *(v29 + 24);
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v29 = v77[0];
        }

        *(v29 + 16) = v41 + 1;
        v42 = &a1[v29 + v41 * v31];
        v18 = v71;
        v38(v42, v76, v71);
        v5 = v37;
        v23 = v72;
      }

      else
      {
        (*v70)(v23, v18);
      }

      if (v74 == ++v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);
    goto LABEL_17;
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_36:
  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.pommes);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2232BB000, v63, v64, "Skipping geo personalization shadow logging because response is not geo domain", v65, 2u);
    MEMORY[0x223DE0F80](v65, -1, -1);
  }

  outlined consume of Result<PommesResponse, Error>(a1);
}

void outlined consume of Result<[IQFMapsPersonalizationResult], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 152))();
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA8))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 120))();
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 240))();
  *a1 = result;
  return result;
}

uint64_t PommesMUXContextManager.__allocating_init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = swift_allocObject();
  PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(a1, v4, a3);
  return v6;
}

uint64_t MUXUserInfo.sharedUserId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MUXUserInfo.altDSID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MUXUserInfo.companionName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MUXUserInfo.iTunesAltDSID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MUXUserInfo.init(sharedUserId:altDSID:companionName:homeSettings:iTunesAltDSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t MUXContext.allInfo.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void MUXContext.userInfo(where:is:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = 0uLL;
  if (a3 && (v7 = *(a4 + 16)) != 0)
  {
    v10 = (a4 + 32);
    while (1)
    {
      v11 = v10[1];
      v32 = *v10;
      v33 = v11;
      v12 = v10[3];
      v14 = *v10;
      v13 = v10[1];
      v34 = v10[2];
      v35 = v12;
      v15 = *(v10 + 8);
      v36 = v15;
      v28 = v13;
      v29 = v34;
      v30 = v10[3];
      v22 = v34;
      v23 = v33;
      v20 = v32;
      v21 = v12;
      v31 = *(v10 + 8);
      v27 = v14;
      outlined init with copy of MUXUserInfo(&v32, v24);
      outlined init with copy of MUXUserInfo(&v32, v24);
      swift_getAtKeyPath();
      v37[2] = v29;
      v37[3] = v30;
      v38 = v31;
      v37[0] = v27;
      v37[1] = v28;
      outlined destroy of MUXUserInfo(v37);
      if (v25 == a2 && v26 == a3)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_11;
      }

      outlined destroy of MUXUserInfo(&v32);
      v10 = (v10 + 72);
      if (!--v7)
      {
        v15 = 0;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v6 = 0uLL;
        goto LABEL_12;
      }
    }

LABEL_11:
    v6 = v20;
    v19 = v21;
    v18 = v22;
    v17 = v23;
  }

  else
  {
    v15 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

LABEL_12:
  *a5 = v6;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v15;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      v8 = *(v7 + 48);
      v23 = *(v7 + 32);
      v24 = v8;
      v25 = *(v7 + 64);
      v9 = *(v7 + 16);
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      outlined init with copy of MUXUserInfo(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return outlined destroy of MUXUserInfo(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = outlined destroy of MUXUserInfo(&v12);
      v7 += 72;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v13, v11, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of MediaUserStateCenter?(v11, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of MediaUserStateCenter?(v11, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    outlined init with take of PommesSearchReason?(v11, v20, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

Swift::String_optional __swiftcall PommesUserProfile.fetchITunesAltDSID(iCloudAltDSID:)(Swift::String iCloudAltDSID)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t PommesMUXContextManager.cachedContext.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(uint64_t a1, int a2, uint64_t a3)
{
  v17 = a3;
  v16 = a2;
  v15 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 16) = dispatch_group_create();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v14);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v15;
  *(v3 + 24) = v9;
  *(v3 + 32) = v10;
  *(v3 + 40) = v16;
  v11 = MEMORY[0x277D84F90];
  *(v3 + 48) = v17;
  *(v3 + 56) = v11;
  return v3;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

void PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(char *a1)
{
  v115 = type metadata accessor for UserID();
  isa = v115[-1].isa;
  v3 = *(isa + 8);
  v4 = MEMORY[0x28223BE20](v115);
  v112 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v110 = &v93 - v6;
  MEMORY[0x28223BE20](v5);
  v103 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v93 - v12;
  v111 = v1;
  if (*(v1 + 40) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_34:
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v14 = __swift_project_value_buffer(v13, static Logger.pommes);
    v15 = a1;
    v100 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v102 = v11;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock[0] = v114;
      *v19 = 136380675;
      v20 = v15;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v102;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

      *(v19 + 4) = v26;
      v11 = v25;
      _os_log_impl(&dword_2232BB000, v16, v17, "MUXUserInfo: Received MUXContextMessage: %{private}s", v19, 0xCu);
      v27 = v114;
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    v28 = MUXContextMessage.userIdToHomeMember.getter();
    v30 = 0;
    v32 = v28 + 64;
    v31 = *(v28 + 64);
    v94 = v28;
    v33 = 1 << *(v28 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v31;
    v36 = (v33 + 63) >> 6;
    v113 = (isa + 32);
    v114 = (isa + 16);
    v97 = isa + 8;
    v96 = v3 + 7;
    v95 = v117;
    *&v29 = 136315394;
    v93 = v29;
    v99 = v28 + 64;
    for (i = v36; ; v36 = i)
    {
      if (!v35)
      {
        if (v36 <= (v30 + 1))
        {
          v50 = v30 + 1;
        }

        else
        {
          v50 = v36;
        }

        a1 = v50 - 1;
        while (1)
        {
          v49 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v49 >= v36)
          {
            v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
            (*(*(v88 - 8) + 56))(v11, 1, 1, v88);
            v35 = 0;
            v30 = a1;
            goto LABEL_21;
          }

          v35 = *(v32 + 8 * v49);
          ++v30;
          if (v35)
          {
            v30 = v49;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v49 = v30;
LABEL_20:
      v51 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v52 = v51 | (v49 << 6);
      v53 = v94;
      v55 = v103;
      v54 = isa;
      v56 = v115;
      (*(isa + 2))(v103, *(v94 + 48) + *(isa + 9) * v52, v115);
      v57 = *(*(v53 + 56) + 8 * v52);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      v59 = *(v58 + 48);
      v60 = *(v54 + 4);
      v11 = v102;
      v60(v102, v55, v56);
      *&v11[v59] = v57;
      (*(*(v58 - 8) + 56))(v11, 0, 1, v58);
      v61 = v57;
LABEL_21:
      v62 = v101;
      outlined init with take of PommesSearchReason?(v11, v101, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
      {
        break;
      }

      v64 = *(v62 + *(v63 + 48));
      v65 = *v113;
      v66 = v110;
      v67 = v62;
      v68 = v115;
      (*v113)(v110, v67, v115);
      dispatch_group_enter(*(v111 + 16));
      v69 = *v114;
      (*v114)(v112, v66, v68);
      v70 = v64;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      v73 = os_log_type_enabled(v71, v72);
      v109 = v65;
      v106 = v70;
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        aBlock[0] = v75;
        *v74 = v93;
        v76 = v112;
        v77 = UserID.sharedUserId.getter();
        v105 = v69;
        v79 = v78;
        v80 = *v97;
        v107 = v97 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v108 = v80;
        v80(v76, v115);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, aBlock);

        *(v74 + 4) = v81;
        *(v74 + 12) = 2080;
        v82 = [v70 description];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v86 = v83;
        v69 = v105;
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v85, aBlock);

        *(v74 + 14) = v87;
        _os_log_impl(&dword_2232BB000, v71, v72, "MUXUserInfo: Fetching sharedUserInfo for sharedUserId %s homeMember %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v75, -1, -1);
        MEMORY[0x223DE0F80](v74, -1, -1);
      }

      else
      {

        v37 = *v97;
        v107 = v97 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v108 = v37;
        v37(v112, v115);
      }

      v38 = v110;
      v105 = *(v111 + 32);
      v39 = UserID.sharedUserId.getter();
      v40 = MEMORY[0x223DDF550](v39);

      v41 = swift_allocObject();
      swift_weakInit();
      v42 = v103;
      v43 = v115;
      (v69)(v103, v38, v115);
      v44 = (*(isa + 80) + 24) & ~*(isa + 80);
      v3 = (v96 + v44) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 16) = v41;
      v109(v45 + v44, v42, v43);
      v46 = v106;
      *(v45 + v3) = v106;
      v117[2] = partial apply for closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:);
      v117[3] = v45;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v117[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSharedUserInfo?) -> ();
      v117[1] = &block_descriptor_0;
      v47 = _Block_copy(aBlock);
      v48 = v46;

      [v105 getSharedUserInfoForSharedUserID:v40 completion:v47];
      _Block_release(v47);

      v108(v38, v43);
      v11 = v102;
      v32 = v99;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.pommes);
    v115 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v115, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_2232BB000, v115, v90, "MUXDataProvider - MultiUser not supported on this device", v91, 2u);
      MEMORY[0x223DE0F80](v91, -1, -1);
    }

    v92 = v115;
  }
}

void closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UserID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v140[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](&v140[-v14]);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v23 = &v140[-v22];
  if (!a1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.pommes);
    (*(v9 + 16))(v12, a3, v8);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v154 = a2;
      v83 = v8;
      v84 = v82;
      v85 = swift_slowAlloc();
      *&v164 = v85;
      *v84 = 136315138;
      v86 = UserID.sharedUserId.getter();
      v88 = v87;
      (*(v9 + 8))(v12, v83);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v164);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_2232BB000, v80, v81, "MUXUserInfo: Could not fetch sharedUserInfo for sharedUserId %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x223DE0F80](v85, -1, -1);
      MEMORY[0x223DE0F80](v84, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    goto LABEL_24;
  }

  v153 = a4;
  v155 = v18;
  v149 = v19;
  v150 = v17;
  v147 = v21;
  v148 = v20;
  v24 = one-time initialization token for pommes;
  v25 = a1;
  if (v24 != -1)
  {
    swift_once();
  }

  v151 = v23;
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.pommes);
  v27 = v25;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v156 = v27;

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v152 = v9;
    v145 = v31;
    *&v164 = v31;
    *v30 = 136380675;
    v32 = v156;
    v154 = a2;
    v33 = v32;
    v34 = [v32 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = a3;
    v36 = v8;
    v38 = v37;

    a2 = v154;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, &v164);
    v8 = v36;
    a3 = v146;

    *(v30 + 4) = v39;
    _os_log_impl(&dword_2232BB000, v28, v29, "MUXUserInfo: SharedUserInfo: %{private}s", v30, 0xCu);
    v40 = v145;
    __swift_destroy_boxed_opaque_existential_1(v145);
    v9 = v152;
    MEMORY[0x223DE0F80](v40, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  v41 = [v156 companionDeviceInfo];
  if (!v41)
  {
    goto LABEL_20;
  }

  v42 = v41;
  v43 = [v41 productPrefix];

  if (!v43)
  {
    goto LABEL_20;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_20;
  }

  v48 = (*(*Strong + 192))(v44, v46);
  v50 = v49;

  if (!v50)
  {
LABEL_20:
    v90 = v155;
    (*(v9 + 16))(v155, a3, v8);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v91, v92))
    {

      (*(v9 + 8))(v90, v8);
      goto LABEL_24;
    }

    v93 = swift_slowAlloc();
    v94 = v8;
    v95 = swift_slowAlloc();
    *&v164 = v95;
    *v93 = 136315138;
    v96 = UserID.sharedUserId.getter();
    v97 = v9;
    v98 = v96;
    v100 = v99;
    (*(v97 + 8))(v90, v94);
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v164);

    *(v93 + 4) = v101;
    _os_log_impl(&dword_2232BB000, v91, v92, "MUXUserInfo: Could not get companion name for sharedUserId %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x223DE0F80](v95, -1, -1);
    MEMORY[0x223DE0F80](v93, -1, -1);

LABEL_22:
    goto LABEL_24;
  }

  v155 = v8;
  v51 = [v153 homeMemberSettings];
  if (!v51)
  {

    v104 = v150;
    v105 = v155;
    (*(v9 + 16))(v150, a3, v155);
    isEscapingClosureAtFileLocation = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v106))
    {
LABEL_36:

      (*(v9 + 8))(v104, v105);
      goto LABEL_24;
    }

    v107 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *&v164 = v154;
    *v107 = 136315138;
    v108 = UserID.sharedUserId.getter();
    v110 = v109;
    (*(v9 + 8))(v104, v105);
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v164);

    *(v107 + 4) = v111;
    _os_log_impl(&dword_2232BB000, isEscapingClosureAtFileLocation, v106, "MUXUserInfo: No saved SAHomeUserSettings for sharedUserId %s", v107, 0xCu);
    v112 = v154;
    __swift_destroy_boxed_opaque_existential_1(v154);
    MEMORY[0x223DE0F80](v112, -1, -1);
    MEMORY[0x223DE0F80](v107, -1, -1);
    goto LABEL_31;
  }

  isEscapingClosureAtFileLocation = v51;
  v53 = [v156 iCloudAltDSID];
  if (!v53)
  {

    v113 = v147;
    v114 = v155;
    (*(v9 + 16))(v147, a3, v155);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v115, v116))
    {

      (*(v9 + 8))(v113, v114);
LABEL_24:
      swift_beginAccess();
      v102 = swift_weakLoadStrong();
      if (v102)
      {
        v103 = *(v102 + 16);

        dispatch_group_leave(v103);
      }

      return;
    }

    v117 = swift_slowAlloc();
    v154 = v117;
    v118 = swift_slowAlloc();
    *&v164 = v118;
    *v117 = 136315138;
    v119 = UserID.sharedUserId.getter();
    v120 = v113;
    v122 = v121;
    (*(v9 + 8))(v120, v114);
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v122, &v164);

    v124 = v154;
    *(v154 + 4) = v123;
    v125 = v124;
    _os_log_impl(&dword_2232BB000, v115, v116, "MUXUserInfo: No iCloudAltDSID for sharedUserId %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x223DE0F80](v118, -1, -1);
    MEMORY[0x223DE0F80](v125, -1, -1);

LABEL_31:
    goto LABEL_22;
  }

  v153 = v48;
  v154 = a2;
  v54 = v53;
  v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = v151;
  v58 = v155;
  v145 = *(v9 + 16);
  v146 = v9 + 16;
  (v145)(v151, a3, v155);

  v59 = isEscapingClosureAtFileLocation;
  v143 = isEscapingClosureAtFileLocation;
  v60 = v59;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  v147 = v60;

  v63 = os_log_type_enabled(v61, v62);
  v152 = v9;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v144 = v50;
    v65 = v64;
    v66 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v164 = v142;
    *v65 = 141559299;
    *(v65 + 4) = 1752392040;
    *(v65 + 12) = 2081;
    v141 = v62;
    v67 = UserID.sharedUserId.getter();
    v68 = v57;
    v70 = v69;
    (*(v9 + 8))(v68, v58);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v70, &v164);

    *(v65 + 14) = v71;
    *(v65 + 22) = 2080;
    v72 = v150;
    *(v65 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v56, &v164);
    *(v65 + 32) = 2080;
    v73 = v153;
    *(v65 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v144, &v164);
    *(v65 + 42) = 2112;
    v74 = v147;
    *(v65 + 44) = v147;
    *v66 = v143;
    *(v65 + 52) = 2080;
    v75 = v74;
    *(v65 + 54) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v56, &v164);
    _os_log_impl(&dword_2232BB000, v61, v141, "Creating new MUXUserInfo with:\n  suid: %{private,mask.hash}s\n  altDSID: %s\n  companionName: %s\n  settings:%@\n iTunesAltDSID:%s", v65, 0x3Eu);
    outlined destroy of MediaUserStateCenter?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v66, -1, -1);
    v76 = v142;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v76, -1, -1);
    v77 = v65;
    v50 = v144;
    MEMORY[0x223DE0F80](v77, -1, -1);

    v78 = v74;
  }

  else
  {

    (*(v9 + 8))(v57, v58);
    v73 = v153;
    v72 = v150;
    v78 = v147;
  }

  *&v159 = UserID.sharedUserId.getter();
  *(&v159 + 1) = v126;
  *&v160 = v72;
  *(&v160 + 1) = v56;
  *&v161 = v73;
  *(&v161 + 1) = v50;
  *&v162 = v78;
  *(&v162 + 1) = v72;
  v163 = v56;
  v168 = v56;
  v166 = v161;
  v167 = v162;
  v164 = v159;
  v165 = v160;
  v105 = v154;
  swift_beginAccess();
  v127 = swift_weakLoadStrong();
  if (v127)
  {
    v128 = *(v127 + 24);

    v129 = v128;

    v9 = v148;
    v130 = v155;
    (v145)(v148, a3, v155);
    v131 = v152;
    v132 = (*(v152 + 80) + 96) & ~*(v152 + 80);
    v133 = swift_allocObject();
    *(v133 + 16) = v105;
    v134 = v164;
    *(v133 + 40) = v165;
    v135 = v167;
    *(v133 + 56) = v166;
    *(v133 + 72) = v135;
    *(v133 + 88) = v168;
    *(v133 + 24) = v134;
    (*(v131 + 32))(v133 + v132, v9, v130);
    v136 = swift_allocObject();
    v104 = partial apply for closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:);
    *(v136 + 16) = partial apply for closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:);
    *(v136 + 24) = v133;
    v158[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v158[5] = v136;
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 1107296256;
    v158[2] = thunk for @escaping @callee_guaranteed () -> ();
    v158[3] = &block_descriptor_19;
    v137 = _Block_copy(v158);

    outlined init with copy of MUXUserInfo(&v159, &v157);

    dispatch_sync(v129, v137);

    outlined destroy of MUXUserInfo(&v159);
    _Block_release(v137);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {

    outlined destroy of MUXUserInfo(&v159);
    v104 = 0;
  }

  swift_beginAccess();
  v138 = swift_weakLoadStrong();
  if (v138)
  {
    v139 = *(v138 + 16);

    dispatch_group_leave(v139);
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v104);
}

void closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = (*(*Strong + 144))(v32);
    v11 = v10;
    v12 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *v11 = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      *v11 = v12;
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[72 * v15];
    *(v16 + 2) = *a2;
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    v19 = *(a2 + 48);
    *(v16 + 12) = *(a2 + 64);
    *(v16 + 4) = v18;
    *(v16 + 5) = v19;
    *(v16 + 3) = v17;
    outlined init with copy of MUXUserInfo(a2, v31);
    v30(v32, 0);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  (*(v6 + 16))(v8, a3, v5);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31[0] = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = UserID.sharedUserId.getter();
    v27 = v26;
    (*(v6 + 8))(v8, v5);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v31);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_2232BB000, v21, v22, "MUXUserInfo for suid(%{private,mask.hash}s) added to cache", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x223DE0F80](v24, -1, -1);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSharedUserInfo?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t PommesMUXContextManager.fetch(timeout:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v5, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v5, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    (*(*v1 + 168))(v9);
    (*(v7 + 8))(v9, v6);
  }

  OS_dispatch_queue.sync<A>(execute:)();
  return v11[1];
}

Swift::String_optional __swiftcall PommesMUXContextManager.companionNameFromUserAgentString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v18);
    _os_log_impl(&dword_2232BB000, v8, v9, "Getting companion name from UAString: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223DE0F80](v11, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  v18[0] = countAndFlagsBits;
  v18[1] = object;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.components(separatedBy:)();
  (*(v4 + 8))(v6, v3);
  if (v12[2] < 3uLL)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = v12[6];
    v14 = v12[7];
  }

  v15 = v13;
  v16 = v14;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

id *PommesMUXContextManager.deinit()
{

  return v0;
}

uint64_t PommesMUXContextManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(void *a1)
{
  v3 = *(type metadata accessor for UserID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(a1, v5, v1 + v4, v6);
}

uint64_t partial apply for closure #1 in PommesMUXContextManager.fetch(timeout:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 128))();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MUXUserInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MUXUserInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void partial apply for closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)()
{
  v1 = *(type metadata accessor for UserID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 96) & ~*(v1 + 80));

  closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(v2, v0 + 24, v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDecade.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277D392E8] && v6 != *MEMORY[0x277D39348])
  {
    result = 7548978;
    if (v6 != *MEMORY[0x277D392F0])
    {
      if (v6 == *MEMORY[0x277D392F8])
      {
        return 7548979;
      }

      else if (v6 == *MEMORY[0x277D39300])
      {
        return 7548980;
      }

      else if (v6 == *MEMORY[0x277D39308])
      {
        return 7548981;
      }

      else if (v6 == *MEMORY[0x277D39310])
      {
        return 7548982;
      }

      else if (v6 == *MEMORY[0x277D39318])
      {
        return 7548983;
      }

      else if (v6 == *MEMORY[0x277D39320])
      {
        return 7548984;
      }

      else if (v6 == *MEMORY[0x277D39328])
      {
        return 7548985;
      }

      else
      {
        result = 0x7330303032;
        if (v6 != *MEMORY[0x277D39330])
        {
          if (v6 == *MEMORY[0x277D39338])
          {
            return 0x7330313032;
          }

          else if (v6 == *MEMORY[0x277D39340])
          {
            return 0x7330323032;
          }

          else
          {
            (*(v3 + 8))(v5, v2);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioRadioType.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioRadioType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277D395F8])
  {
    if (v6 == *MEMORY[0x277D395D8])
    {
      return 28001;
    }

    else if (v6 == *MEMORY[0x277D395E0])
    {
      return 28006;
    }

    else if (v6 == *MEMORY[0x277D395E8])
    {
      return 25704;
    }

    else if (v6 == *MEMORY[0x277D39600])
    {
      return 0x74696C6C65746173;
    }

    else if (v6 == *MEMORY[0x277D395F0])
    {
      return 6447460;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RequestedMediaType.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D39890])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v6 == *MEMORY[0x277D39898])
  {
    return 0x7473696C79616C70;
  }

  if (v6 == *MEMORY[0x277D39880])
  {
    return 0x74736163646F70;
  }

  if (v6 == *MEMORY[0x277D39848])
  {
    return 0x636973756DLL;
  }

  if (v6 == *MEMORY[0x277D397E0])
  {
    return 0x646956636973756DLL;
  }

  if (v6 == *MEMORY[0x277D398A0])
  {
    return 0x6F6F426F69647561;
  }

  if (v6 == *MEMORY[0x277D39850])
  {
    return 0x6F65646976;
  }

  if (v6 == *MEMORY[0x277D39878])
  {
    return 0x5573656E757469;
  }

  if (v6 == *MEMORY[0x277D397E8])
  {
    return 0x74616C69706D6F63;
  }

  if (v6 == *MEMORY[0x277D39838])
  {
    return 0x6D75626C61;
  }

  if (v6 == *MEMORY[0x277D39858])
  {
    return 0x747369747261;
  }

  if (v6 == *MEMORY[0x277D39868])
  {
    return 0x776F68537674;
  }

  if (v6 == *MEMORY[0x277D398A8])
  {
    return 0x6F68536F69646172;
  }

  if (v6 == *MEMORY[0x277D39828])
  {
    return 2003789939;
  }

  if (v6 == *MEMORY[0x277D397F8])
  {
    return 0x6174536F69646172;
  }

  if (v6 == *MEMORY[0x277D39808])
  {
    return 0x5374736163646F70;
  }

  if (v6 == *MEMORY[0x277D39888])
  {
    return 0x6E6F6974617473;
  }

  if (v6 == *MEMORY[0x277D39800])
  {
    return 0x616C50636973756DLL;
  }

  if (v6 == *MEMORY[0x277D39870])
  {
    return 0x65646F73697065;
  }

  if (v6 == *MEMORY[0x277D39860])
  {
    return 0x656C676E6973;
  }

  if (v6 == *MEMORY[0x277D39810])
  {
    return 28773;
  }

  if (v6 == *MEMORY[0x277D39818])
  {
    return 28780;
  }

  if (v6 == *MEMORY[0x277D39830])
  {
    return 1735290739;
  }

  if (v6 == *MEMORY[0x277D39840])
  {
    return 0x65726E6567;
  }

  if (v6 == *MEMORY[0x277D39820])
  {
    return 1937204590;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSort.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277D39130])
  {
    if (v6 == *MEMORY[0x277D39168])
    {
      return 0x6E776F6E6B6E75;
    }

    else if (v6 == *MEMORY[0x277D39160])
    {
      return 0x72616C75706F70;
    }

    else if (v6 == *MEMORY[0x277D39180])
    {
      return 0x616C75706F706E75;
    }

    else if (v6 == *MEMORY[0x277D39138])
    {
      return 1953719650;
    }

    else if (v6 == *MEMORY[0x277D39140])
    {
      return 0x7473726F77;
    }

    else if (v6 == *MEMORY[0x277D39148])
    {
      return 0x74736577656ELL;
    }

    else if (v6 == *MEMORY[0x277D39150])
    {
      return 0x747365646C6FLL;
    }

    else if (v6 == *MEMORY[0x277D39158])
    {
      return 0x74736574746F68;
    }

    else if (v6 == *MEMORY[0x277D39178])
    {
      return 0x6572636F6964656DLL;
    }

    else if (v6 == *MEMORY[0x277D39170])
    {
      return 0x7473657461657267;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequencyStr.getter()
{
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
  if (v0 < 0.01)
  {
    return 0;
  }

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
  return Double.description.getter();
}

uint64_t OnScreenContextType.USOEntityBuilder.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_Uri();
      swift_allocObject();
      return UsoEntityBuilder_common_Uri.init()();
    }

    else
    {
      type metadata accessor for UsoEntityBuilder_common_AppEntity();
      swift_allocObject();
      return UsoEntityBuilder_common_AppEntity.init()();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_App();
    swift_allocObject();
    return UsoEntityBuilder_common_App.init()();
  }
}

uint64_t OnScreenContextType.domainAffinityKVStore.getter(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = 0x6E65657263536E6FLL;
  }

  else
  {
    v1 = 0xD000000000000013;
  }

  type metadata accessor for DomainAffinityKVStoreManager();
  v2 = static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v1);

  return v2;
}

uint64_t OnScreenContextType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x6E65657263536E6FLL;
  }

  return 0xD000000000000011;
}

Swift::String __swiftcall OnScreenContextType.normalize(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = String.lowercased()();
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  if (v2)
  {
    if (v2 == 1)
    {
      URL.init(string:)();
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      else
      {
        v18 = URL.host.getter();
        v20 = v19;
        (*(v10 + 8))(v5, v9);
        if (v20)
        {

          countAndFlagsBits = v18;
          object = v20;
        }
      }

      v35._countAndFlagsBits = countAndFlagsBits;
      v35._object = object;
      v33 = 11885;
      v34 = 0xE200000000000000;
      v31 = 0;
      v32 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v23 = v22;

      v35._countAndFlagsBits = v21;
      v35._object = v23;
      v33 = 779581303;
      v34 = 0xE400000000000000;
      v31 = 0;
      v32 = 0xE000000000000000;
      v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v26 = v25;

      v35._countAndFlagsBits = v24;
      v35._object = v26;
      v33 = 1836016430;
      v34 = 0xE400000000000000;
      v31 = 0;
      v32 = 0xE000000000000000;
      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      object = v27;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.pommes);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v35._countAndFlagsBits = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000002234D9340, &v35._countAndFlagsBits);
        _os_log_impl(&dword_2232BB000, v14, v15, "No normalization needed for %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x223DE0F80](v17, -1, -1);
        MEMORY[0x223DE0F80](v16, -1, -1);
      }
    }
  }

  else
  {
    v35 = v6;
    v33 = 778923875;
    v34 = 0xE400000000000000;
    v31 = 0;
    v32 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v12 = v11;

    object = v12;
  }

  v28 = countAndFlagsBits;
  v29 = object;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

uint64_t OnScreenContextType.GeneratedClientEntity.clientEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OnScreenContextType.GeneratedClientEntity.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for OnScreenContextType.GeneratedClientEntity(0) + 20));

  return v1;
}

uint64_t OnScreenContextType.GeneratedClientEntity.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for OnScreenContextType.GeneratedClientEntity(0) + 24));

  return v1;
}

int *OnScreenContextType.GeneratedClientEntity.init(clientEntity:identifier:value:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for OnScreenContextType.GeneratedClientEntity(0);
  v16 = (a6 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  *(a6 + result[7]) = a7;
  return result;
}

uint64_t OnScreenContextType.generateClientEntity(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v97 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v87 - v10;
  v12 = type metadata accessor for UsoIdentifier();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v103) = a3;
  v98 = v13;
  v99 = a4;
  v100 = v15;
  v101 = v16;
  v94 = v7;
  if (a3)
  {
    if (a3 != 1)
    {
      v20 = 0x80000002234D9340;
      v107 = 0xD000000000000011;
      v108 = 0x80000002234D9340;

      UsoIdentifier.init(value:appBundleId:namespace:)();
      v106 = 1.0;
      type metadata accessor for UsoEntityBuilder_common_AppEntity();
      swift_allocObject();

      v29 = UsoEntityBuilder_common_AppEntity.init()();
      v92 = 0xD000000000000011;
      v24 = v102;
      goto LABEL_25;
    }

    v95 = v11;
    v17 = a2;
    v18 = v103;
    v107 = 0x6E65657263536E6FLL;
    v108 = 0xEB00000000495255;
  }

  else
  {
    v95 = v11;
    v17 = a2;
    v18 = v103;
    v107 = 0xD000000000000013;
    v108 = 0x80000002234D9320;
  }

  MEMORY[0x223DDF6D0](0x6E69616D6F44, 0xE600000000000000);
  v19 = v107;
  v20 = v108;

  v92 = v19;
  UsoIdentifier.init(value:appBundleId:namespace:)();
  v106 = 1.0;
  if (v18 == 1)
  {
    v21 = 0x6E65657263536E6FLL;
  }

  else
  {
    v21 = 0xD000000000000013;
  }

  type metadata accessor for DomainAffinityKVStoreManager();
  v22 = static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v21);

  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = (*(*v22 + 152))(v102, v17, partial apply for implicit closure #2 in implicit closure #1 in OnScreenContextType.generateClientEntity(context:), v23);
  a2 = v25;
  v27 = v26;

  if (!a2)
  {

    v30 = v98;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v104 = v35;
      *v34 = 136315138;
      if (v103)
      {
        v36 = 0x6E65657263536E6FLL;
      }

      else
      {
        v36 = 0xD000000000000013;
      }

      if (v103)
      {
        v37 = 0xEB00000000495255;
      }

      else
      {
        v37 = 0x80000002234D9320;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v104);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "[OnScreenContextUtils][%s] Failed to create client entity due to domain affinity translation failure", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    (*(v101 + 8))(v100, v30);
    v39 = type metadata accessor for OnScreenContextType.GeneratedClientEntity(0);
    v40 = *(*(v39 - 8) + 56);
    v41 = v99;
    return v40(v41, 1, 1, v39);
  }

  v106 = v27;
  v12 = v98;
  if (v103)
  {
    type metadata accessor for UsoEntityBuilder_common_Uri();
    swift_allocObject();
    v28 = UsoEntityBuilder_common_Uri.init()();
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_App();
    swift_allocObject();
    v28 = UsoEntityBuilder_common_App.init()();
  }

  v29 = v28;
  a4 = v99;
  v15 = v100;
  v11 = v95;
LABEL_25:
  v104 = v24;
  v105 = a2;

  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();
  v104 = v24;
  v105 = a2;
  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();

  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  v42 = MEMORY[0x223DDCA80](v29);
  if (!v42)
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v15;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v104 = v60;
      *v59 = 136315138;
      if (v103)
      {
        if (v103 == 1)
        {
          v61 = 0x6E65657263536E6FLL;
        }

        else
        {
          v61 = 0xD000000000000011;
        }

        if (v103 == 1)
        {
          v62 = 0xEB00000000495255;
        }

        else
        {
          v62 = 0x80000002234D9340;
        }
      }

      else
      {
        v62 = 0x80000002234D9320;
        v61 = 0xD000000000000013;
      }

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v104);

      *(v59 + 4) = v77;
      _os_log_impl(&dword_2232BB000, v56, v57, "[OnScreenContextUtils][%s] Failed to create client entity due to USO entity conversion failure", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x223DE0F80](v60, -1, -1);
      MEMORY[0x223DE0F80](v59, -1, -1);

      (*(v101 + 8))(v58, v12);
    }

    else
    {

      (*(v101 + 8))(v15, v12);
    }

    v39 = type metadata accessor for OnScreenContextType.GeneratedClientEntity(0);
    v40 = *(*(v39 - 8) + 56);
    v41 = a4;
    return v40(v41, 1, 1, v39);
  }

  v102 = v24;
  v43 = v42;
  v95 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();
  v44 = type metadata accessor for UsoBuilderOptions();
  (*(*(v44 - 8) + 56))(v11, 1, 1, v44);
  v91 = v43;
  v45 = static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)();
  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.pommes);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v49 = v45;
  v50 = v48;
  v93 = v49;

  if (os_log_type_enabled(v47, v50))
  {
    v89 = v20;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v104 = v52;
    *v51 = 136315394;
    v90 = a2;
    if (v103)
    {
      if (v103 == 1)
      {
        v53 = 0x6E65657263536E6FLL;
      }

      else
      {
        v53 = 0xD000000000000011;
      }

      if (v103 == 1)
      {
        v54 = 0xEB00000000495255;
      }

      else
      {
        v54 = 0x80000002234D9340;
      }
    }

    else
    {
      v54 = 0x80000002234D9320;
      v53 = 0xD000000000000013;
    }

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v104);

    *(v51 + 4) = v63;
    *(v51 + 12) = 2080;
    v64 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v104);

    *(v51 + 14) = v66;
    _os_log_impl(&dword_2232BB000, v47, v50, "[OnScreenContextUtils][%s] Created USO graph for client entity: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v52, -1, -1);
    MEMORY[0x223DE0F80](v51, -1, -1);

    v12 = v98;
    a4 = v99;
    a2 = v90;
    v20 = v89;
  }

  else
  {
  }

  v67 = v96;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v68 = v97;
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
  v69 = Message.serializedData(partial:)();
  v87 = v70;
  v88 = v69;
  (*(v94 + 8))(v67, v68);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v89 = v20;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v104 = v74;
    *v73 = 136315138;
    v90 = a2;
    if (v103)
    {
      if (v103 == 1)
      {
        v75 = 0x6E65657263536E6FLL;
      }

      else
      {
        v75 = 0xD000000000000011;
      }

      if (v103 == 1)
      {
        v76 = 0xEB00000000495255;
      }

      else
      {
        v76 = 0x80000002234D9340;
      }
    }

    else
    {
      v76 = 0x80000002234D9320;
      v75 = 0xD000000000000013;
    }

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v104);

    *(v73 + 4) = v79;
    _os_log_impl(&dword_2232BB000, v71, v72, "[OnScreenContextUtils][%s] Successfully created client entity", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x223DE0F80](v74, -1, -1);
    MEMORY[0x223DE0F80](v73, -1, -1);

    v12 = v98;
    a4 = v99;
    a2 = v90;
    v20 = v89;
  }

  else
  {
  }

  v80 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v103 = &v87;
  MEMORY[0x28223BE20](v80);
  v81 = v88;
  v82 = v87;
  *(&v87 - 4) = v88;
  *(&v87 - 3) = v82;
  *(&v87 - 2) = &v106;
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438], MEMORY[0x277D39430]);
  static Message.with(_:)();

  outlined consume of Data._Representation(v81, v82);

  (*(v101 + 8))(v100, v12);
  v83 = v106;
  v84 = type metadata accessor for OnScreenContextType.GeneratedClientEntity(0);
  v85 = (a4 + v84[5]);
  *v85 = v92;
  v85[1] = v20;
  v86 = (a4 + v84[6]);
  *v86 = v102;
  v86[1] = a2;
  *(a4 + v84[7]) = v83;
  return (*(*(v84 - 1) + 56))(a4, 0, 1, v84);
}

uint64_t OnScreenContextType.parseClientEntity(clientEntity:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v65) = a2;
  v66 = a3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Parsec_Siri_Context_ClientEntity?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    v69 = Apple_Parsec_Siri_Context_ClientEntity.usoGraph.getter();
    v70 = v19;
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
    Message.init<A>(contiguousBytes:extensions:partial:options:)();
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    v64 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    if (static UsoConversionUtils.extractFirstEntityFromGraph(graph:)())
    {
      v30 = UsoEntity.attributes.getter();
      if (*(v30 + 16))
      {
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
        if (v32)
        {
          v33 = *(*(v30 + 56) + 8 * v31);

          if ((v33 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x223DDFF80](0, v33);
          }

          else
          {
            if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_45;
            }

            v34 = *(v33 + 32);
          }

          v35 = UsoEntity.attributes.getter();
          if (*(v35 + 16))
          {
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
            if (v37)
            {
              v63 = v34;
              v30 = *(*(v35 + 56) + 8 * v36);

              if ((v30 & 0xC000000000000001) == 0)
              {
                if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_47:
                  __break(1u);
                  return result;
                }

                v59 = *(v30 + 32);

LABEL_28:

                if (one-time initialization token for pommes != -1)
                {
                  swift_once();
                }

                v38 = type metadata accessor for Logger();
                __swift_project_value_buffer(v38, static Logger.pommes);
                v39 = Logger.logObject.getter();
                v40 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v39, v40))
                {
                  v41 = swift_slowAlloc();
                  v42 = swift_slowAlloc();
                  *&v67[0] = v42;
                  *v41 = 136315138;
                  v62 = v41;
                  LODWORD(v61) = v40;
                  v60 = v42;
                  if (v65)
                  {
                    if (v65 == 1)
                    {
                      v43 = 0x6E65657263536E6FLL;
                      v44 = 0xEB00000000495255;
                    }

                    else
                    {
                      v43 = 0xD000000000000011;
                      v44 = 0x80000002234D9340;
                    }
                  }

                  else
                  {
                    v44 = 0x80000002234D9320;
                    v43 = 0xD000000000000013;
                  }

                  v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v67);

                  v46 = v62;
                  *(v62 + 1) = v45;
                  _os_log_impl(&dword_2232BB000, v39, v61, "[OnScreenContextUtils][%s] Successfully parsed client entity", v46, 0xCu);
                  v47 = v60;
                  __swift_destroy_boxed_opaque_existential_1(v60);
                  MEMORY[0x223DE0F80](v47, -1, -1);
                  MEMORY[0x223DE0F80](v46, -1, -1);
                }

                v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMd, &_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMR);
                v49 = v48[12];
                v60 = v48[16];
                v61 = v49;
                v65 = v48;
                v62 = v48[20];
                result = UsoEntity.usoIdentifiers.getter();
                if (*(result + 16))
                {
                  v50 = result;
                  v51 = type metadata accessor for UsoIdentifier();
                  v52 = v66;
                  (*(*(v51 - 8) + 16))(v66, v50 + ((*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80)), v51);

                  v53 = v60;
                  *(v52 + v61) = v63;
                  *(v53 + v52) = v59;

                  Apple_Parsec_Siri_Context_ClientEntity.score.getter();
                  v55 = v54;

                  (*(v9 + 8))(v11, v8);
                  (*(v16 + 8))(v18, v15);
                  v57 = v65;
                  v56 = v66;
                  *(v62 + v66) = v55;
                  return (*(*(v57 - 1) + 56))(v56, 0, 1, v57);
                }

                __break(1u);
                goto LABEL_47;
              }

LABEL_45:
              v59 = MEMORY[0x223DDFF80](0, v30);
              goto LABEL_28;
            }
          }
        }
      }
    }

    (*(v9 + 8))(v11, v8);
    (*(v16 + 8))(v18, v15);
    goto LABEL_4;
  }

  outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
LABEL_4:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v67[0] = v24;
    *v23 = 136315138;
    if (v65)
    {
      if (v65 == 1)
      {
        v25 = 0x6E65657263536E6FLL;
      }

      else
      {
        v25 = 0xD000000000000011;
      }

      if (v65 == 1)
      {
        v26 = 0xEB00000000495255;
      }

      else
      {
        v26 = 0x80000002234D9340;
      }
    }

    else
    {
      v26 = 0x80000002234D9320;
      v25 = 0xD000000000000013;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v67);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2232BB000, v21, v22, "[OnScreenContextUtils][%s] Failed to parse client entity", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x223DE0F80](v24, -1, -1);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMd, &_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMR);
  return (*(*(v28 - 8) + 56))(v66, 1, 1, v28);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OnScreenContextType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000495255;
  v3 = 0xD000000000000011;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6E65657263536E6FLL;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v4 == 1)
  {
    v6 = 0xEB00000000495255;
  }

  else
  {
    v6 = 0x80000002234D9340;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002234D9320;
  }

  if (*a2 == 1)
  {
    v3 = 0x6E65657263536E6FLL;
  }

  else
  {
    v2 = 0x80000002234D9340;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002234D9320;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OnScreenContextType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OnScreenContextType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OnScreenContextType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance OnScreenContextType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized OnScreenContextType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance OnScreenContextType(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000495255;
  v4 = 0x6E65657263536E6FLL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000002234D9340;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000002234D9320;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t type metadata accessor for OnScreenContextType.GeneratedClientEntity(uint64_t a1)
{
  result = type metadata singleton initialization cache for OnScreenContextType.GeneratedClientEntity;
  if (!type metadata singleton initialization cache for OnScreenContextType.GeneratedClientEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in OnScreenContextType.generateClientEntity(context:)()
{
  outlined copy of Data._Representation(*(v0 + 16), *(v0 + 24));
  Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
  return Apple_Parsec_Siri_Context_ClientEntity.score.setter();
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of Apple_Parsec_Siri_Context_ClientEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D835A0], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v2 = MEMORY[0x277D398B0];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D398B0], &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, v2, MEMORY[0x277D398C0]);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = MEMORY[0x277D5EE30];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE38]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D5EE30], &lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, v2, MEMORY[0x277D5EE40]);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for PommesCandidateId();
  v2 = MEMORY[0x277D56628];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, MEMORY[0x277D56628], MEMORY[0x277D56638]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D56628], &lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, v2, MEMORY[0x277D56640]);
}

{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v2 = MEMORY[0x277D39530];
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D39530], &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, v2, MEMORY[0x277D39540]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, CommonAudio.Decade.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, CommonAudio.MediaType.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x636973756DLL;
    }

    else
    {
      v6 = 1701736302;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x636973756DLL : 1701736302;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *&a1920s_1[8 * a1];
    while (*&a1920s_1[8 * *(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x65726E6567;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x747369747261;
          break;
        case 2:
          v8 = 0x6F65646976;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x7473696C79616C70;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6974617473;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x80000002234D9C30;
          break;
        case 6:
          v8 = 0x6F68536F69646172;
          v7 = 0xE900000000000077;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1735290739;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x5573656E755469;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x74736163646F70;
          break;
        case 0xA:
          v8 = 0x646956636973756DLL;
          v7 = 0xEA00000000006F65;
          break;
        case 0xB:
          v8 = 0x636973756DLL;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1937204590;
          break;
        case 0xD:
          v7 = 0xE600000000000000;
          v8 = 0x776F68537674;
          break;
        case 0xE:
          v8 = 0x6D75626C61;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x656E6F74676E6972;
          break;
        case 0x10:
          v7 = 0xE200000000000000;
          v8 = 28780;
          break;
        case 0x11:
          v7 = 0xE400000000000000;
          v8 = 2003789939;
          break;
        case 0x12:
          v8 = 0x6174536F69646172;
          v7 = 0xEC0000006E6F6974;
          break;
        case 0x13:
          v7 = 0xE200000000000000;
          v8 = 28773;
          break;
        case 0x14:
          v7 = 0xE600000000000000;
          v8 = 0x656C676E6973;
          break;
        case 0x15:
          v7 = 0xE700000000000000;
          v8 = 0x65646F73697065;
          break;
        case 0x16:
          v8 = 0x5374736163646F70;
          v7 = 0xEE006E6F69746174;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x73646E756F73;
          break;
        case 0x18:
          v8 = 0x74616C69706D6F63;
          v7 = 0xEB000000006E6F69;
          break;
        case 0x19:
          v8 = 0x6569766F6DLL;
          break;
        case 0x1A:
          v8 = 0x6F6F426F69647561;
          v7 = 0xE90000000000006BLL;
          break;
        case 0x1B:
          v8 = 0x616C50636973756DLL;
          v7 = 0xED00007473696C79;
          break;
        default:
          break;
      }

      v9 = 0xE500000000000000;
      v10 = 0x65726E6567;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          if (v8 == 0x747369747261)
          {
            goto LABEL_84;
          }

          goto LABEL_85;
        case 2:
          if (v8 != 0x6F65646976)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 3:
          v9 = 0xE800000000000000;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 4:
          v9 = 0xE700000000000000;
          if (v8 != 0x6E6F6974617473)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 5:
          v9 = 0x80000002234D9C30;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 6:
          v9 = 0xE900000000000077;
          if (v8 != 0x6F68536F69646172)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 7:
          v9 = 0xE400000000000000;
          if (v8 != 1735290739)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 8:
          v9 = 0xE700000000000000;
          if (v8 != 0x5573656E755469)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 9:
          v9 = 0xE700000000000000;
          if (v8 != 0x74736163646F70)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 10:
          v9 = 0xEA00000000006F65;
          if (v8 != 0x646956636973756DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 11:
          if (v8 != 0x636973756DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1937204590)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 13:
          v9 = 0xE600000000000000;
          if (v8 != 0x776F68537674)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 14:
          if (v8 != 0x6D75626C61)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 15:
          v9 = 0xE800000000000000;
          if (v8 != 0x656E6F74676E6972)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 16:
          v9 = 0xE200000000000000;
          if (v8 != 28780)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 17:
          v9 = 0xE400000000000000;
          if (v8 != 2003789939)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 18:
          v9 = 0xEC0000006E6F6974;
          if (v8 != 0x6174536F69646172)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 19:
          v9 = 0xE200000000000000;
          if (v8 != 28773)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 20:
          v9 = 0xE600000000000000;
          if (v8 != 0x656C676E6973)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 21:
          v9 = 0xE700000000000000;
          if (v8 != 0x65646F73697065)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 22:
          v9 = 0xEE006E6F69746174;
          if (v8 != 0x5374736163646F70)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 23:
          v9 = 0xE600000000000000;
          v10 = 0x73646E756F73;
          goto LABEL_83;
        case 24:
          v9 = 0xEB000000006E6F69;
          if (v8 != 0x74616C69706D6F63)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 25:
          if (v8 != 0x6569766F6DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 26:
          v9 = 0xE90000000000006BLL;
          if (v8 != 0x6F6F426F69647561)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        case 27:
          v9 = 0xED00007473696C79;
          if (v8 != 0x616C50636973756DLL)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        default:
LABEL_83:
          if (v8 != v10)
          {
            goto LABEL_85;
          }

LABEL_84:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_85:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DDFEE0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x6E65657263536E6FLL;
        v8 = 0xEB00000000495255;
        if (*(*(v2 + 48) + v4) != 1)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000002234D9340;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x80000002234D9320;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000013;
        v8 = 0x80000002234D9320;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6E65657263536E6FLL;
      }

      else
      {
        v10 = 0xD000000000000011;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000495255;
      }

      else
      {
        v11 = 0x80000002234D9340;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = 0xE900000000000072;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 1953719650;
        }

        else
        {
          v10 = 0x7473726F77;
        }

        if (v7 == 2)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (*(*(v2 + 48) + v4))
        {
          v12 = 0x616C75706F706E75;
        }

        else
        {
          v12 = 0x72616C75706F70;
        }

        if (*(*(v2 + 48) + v4))
        {
          v13 = 0xE900000000000072;
        }

        else
        {
          v13 = 0xE700000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v9 = v12;
        }

        else
        {
          v9 = v10;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      else if (*(*(v2 + 48) + v4) <= 5u)
      {
        v8 = 0xE600000000000000;
        if (v7 == 4)
        {
          v9 = 0x74736577656ELL;
        }

        else
        {
          v9 = 0x747365646C6FLL;
        }
      }

      else if (v7 == 6)
      {
        v8 = 0xE700000000000000;
        v9 = 0x74736574746F68;
      }

      else
      {
        v8 = 0xE800000000000000;
        if (v7 == 7)
        {
          v9 = 0x6572636F6964656DLL;
        }

        else
        {
          v9 = 0x7473657461657267;
        }
      }

      v14 = 0x7473657461657267;
      if (v6 == 7)
      {
        v14 = 0x6572636F6964656DLL;
      }

      v15 = 0xE800000000000000;
      if (v6 == 6)
      {
        v14 = 0x74736574746F68;
        v15 = 0xE700000000000000;
      }

      v16 = 0x74736577656ELL;
      if (v6 != 4)
      {
        v16 = 0x747365646C6FLL;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = 0xE600000000000000;
      }

      if (v6 == 2)
      {
        v17 = 1953719650;
      }

      else
      {
        v17 = 0x7473726F77;
      }

      if (v6 == 2)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      if (v6)
      {
        v19 = 0x616C75706F706E75;
      }

      else
      {
        v19 = 0x72616C75706F70;
      }

      if (!v6)
      {
        v5 = 0xE700000000000000;
      }

      if (v6 <= 1)
      {
        v17 = v19;
        v18 = v5;
      }

      v20 = v6 <= 3 ? v17 : v14;
      v21 = v6 <= 3 ? v18 : v15;
      if (v9 == v20 && v8 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        v5 = 0xE900000000000072;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t specialized OnScreenContextType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OnScreenContextType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type OnScreenContextType and conformance OnScreenContextType()
{
  result = lazy protocol witness table cache variable for type OnScreenContextType and conformance OnScreenContextType;
  if (!lazy protocol witness table cache variable for type OnScreenContextType and conformance OnScreenContextType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreenContextType and conformance OnScreenContextType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OnScreenContextType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OnScreenContextType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OnScreenContextType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch19OnScreenContextTypeOGMd, &_sSay21SiriInformationSearch19OnScreenContextTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OnScreenContextType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnScreenContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}