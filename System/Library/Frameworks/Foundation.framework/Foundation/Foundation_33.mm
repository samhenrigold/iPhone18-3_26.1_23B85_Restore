uint64_t Array<A>.individualElementRepresentation<A>(encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a5;
  v46 = a7;
  v44 = a2;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v34 = v13;
  v47 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v43 = v14;
  v15 = *(v14 + 56);
  v49 = v15 & 1;
  v50 = (v15 & 2) != 0;
  v51 = (v15 & 8) != 0;
  v16 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1865CB550](v17, v18, v12);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, v16);
  v42 = MEMORY[0x1865CB560](a3, a4);
  if (!v42)
  {
    return v16;
  }

  v16 = 0;
  v35 = a3 & 0xC000000000000001;
  v36 = v11;
  v40 = (v11 + 16);
  v41 = a3 & 0xFFFFFFFFFFFFFF8;
  v38 = a6 + 8;
  v39 = (v11 + 8);
  v37 = a3;
  while ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v35)
  {
    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v34 != 8)
    {
      goto LABEL_21;
    }

    v53 = result;
    v32 = v47;
    (*v40)(v47, &v53, a4);
    v25 = v32;
    swift_unknownObjectRelease();
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      (*v39)(v25, a4);

      return v16;
    }

LABEL_9:
    v27 = (*(a6 + 8))(&v48, v43, v44, v45, v46, a4, a6);
    if (v7)
    {
      goto LABEL_18;
    }

    v28 = v27;
    v29 = a6;
    (*v39)(v25, a4);
    v31 = *(v20 + 2);
    v30 = *(v20 + 3);
    if (v31 >= v30 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v20);
    }

    *(v20 + 2) = v31 + 1;
    *&v20[8 * v31 + 32] = v28;
    ++v16;
    a6 = v29;
    v11 = v36;
    a3 = v37;
    if (v26 == v42)
    {
      return v52;
    }
  }

  result = _swift_isClassOrObjCExistentialType();
  v22 = v41;
  if ((result & 1) == 0)
  {
    v22 = a3;
  }

  if (v16 < *(v22 + 16))
  {
    v23 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16;
    v24 = *(v11 + 16);
    v25 = v47;
    v24(v47, v23, a4);
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONWriter.serializePreformattedByteArray(_:_:depth:)(Swift::OpaquePointer _, Swift::OpaquePointer a2, Swift::Int depth)
{
  if (depth > 511)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 1;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0;
    *(v32 + 48) = 2;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v8 = (v3 + 16);
  v7 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_89:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v11;
  v7[v10 + 32] = 91;
  v4[2] = v7;
  v39 = *(v4 + 8);
  v38 = v4;
  if (v39 == 1)
  {
    v12 = *(v7 + 3);
    v4 = (v10 + 2);
    if ((v10 + 2) > (v12 >> 1))
    {
      goto LABEL_91;
    }

    goto LABEL_7;
  }

  while (2)
  {
    v13 = *(a2._rawValue + 2);
    if (!v13)
    {
      if (v39)
      {
LABEL_74:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      }

LABEL_79:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v36 = *(v7 + 2);
      v35 = *(v7 + 3);
      if (v36 >= v35 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
      }

      *(v7 + 2) = v36 + 1;
      v7[v36 + 32] = 93;
      *v8 = v7;
      return;
    }

    v37 = *(a2._rawValue + 2);
    v11 = 0;
    v14 = 0;
    v41 = a2._rawValue + 32;
    v40 = *(_._rawValue + 2);
    v15 = 1;
    LOBYTE(a2._rawValue) = v39;
    while (1)
    {
      v16 = *&v41[8 * v14];
      if ((v15 & 1) == 0)
      {
        break;
      }

      v12 = v39;
      if (v39)
      {
        goto LABEL_16;
      }

      a2._rawValue = 0;
LABEL_48:
      v21 = __OFADD__(v11, v16);
      v22 = v11 + v16;
      if (v21)
      {
        goto LABEL_86;
      }

      if (v22 < v11)
      {
        goto LABEL_87;
      }

      if (v40 < v22)
      {
        goto LABEL_88;
      }

      ++v14;

      v7 = v8;
      specialized Array.append<A>(contentsOf:)(v23, _._rawValue + 32, v11, (2 * v22) | 1);
      v15 = 0;
      v11 = v22;
      if (v14 == v13)
      {
        v7 = *v8;
        if (a2._rawValue)
        {
          goto LABEL_74;
        }

        goto LABEL_79;
      }
    }

    if ((a2._rawValue & 1) == 0)
    {
      v7 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
      }

      a2._rawValue = 0;
      *(v7 + 2) = v20 + 1;
      v7[v20 + 32] = 44;
      *v8 = v7;
LABEL_27:
      v13 = v37;
      v4 = v38;
      goto LABEL_48;
    }

    v7 = v8;
    specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSONWriter.serializePreformattedByteArray(_:_:depth:));
LABEL_16:
    a2._rawValue = *v4;
    if (*v4 > 4)
    {
      if (a2._rawValue > 7)
      {
        switch(a2._rawValue)
        {
          case 8uLL:
            v17 = "                ";
            v18 = 16;
            break;
          case 9uLL:
            v17 = "                  ";
            v18 = 18;
            break;
          case 0xAuLL:
            v17 = "                    ";
            v18 = 20;
            break;
          default:
            goto LABEL_53;
        }
      }

      else
      {
        switch(a2._rawValue)
        {
          case 5uLL:
            v17 = "          ";
            v18 = 10;
            break;
          case 6uLL:
            v17 = "            ";
            v18 = 12;
            break;
          case 7uLL:
            v17 = "              ";
            v18 = 14;
            break;
          default:
            goto LABEL_53;
        }
      }

      goto LABEL_46;
    }

    if (a2._rawValue > 1)
    {
      switch(a2._rawValue)
      {
        case 2uLL:
          v17 = "    ";
          v18 = 4;
          break;
        case 3uLL:
          v17 = "      ";
          v18 = 6;
          break;
        case 4uLL:
          v17 = "        ";
          v18 = 8;
          break;
        default:
          goto LABEL_53;
      }

LABEL_46:
      v7 = v8;
      specialized Array.append<A>(contentsOf:)(v17, v18);
LABEL_47:
      a2._rawValue = 1;
      goto LABEL_48;
    }

    if (!a2._rawValue)
    {
      goto LABEL_47;
    }

    if (a2._rawValue == 1)
    {
      v7 = v8;
      specialized Array.append<A>(contentsOf:)("  ", 2);
      goto LABEL_48;
    }

LABEL_53:
    if ((a2._rawValue & 0x8000000000000000) == 0)
    {
      v7 = *v8;
      v4 = *(*v8 + 16);
      while (1)
      {
        v24 = v4 + 2;
        if (__OFADD__(v4, 2))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v26 = *(v7 + 3) >> 1, v26 < v24))
        {
          if (v4 <= v24)
          {
            v27 = v4 + 2;
          }

          else
          {
            v27 = v4;
          }

          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27, 1, v7);
          v26 = *(v7 + 3) >> 1;
        }

        v28 = *(v7 + 2);
        v29 = v26 - v28;
        if (v26 == v28)
        {
          goto LABEL_95;
        }

        v30 = v29 >= 2 ? 2 : v26 - v28;
        memcpy(&v7[v28 + 32], "  ", v30);
        if (v29 < 2)
        {
          goto LABEL_95;
        }

        v31 = *(v7 + 2);
        v21 = __OFADD__(v31, v30);
        v4 = (v31 + v30);
        if (v21)
        {
          goto LABEL_85;
        }

        *(v7 + 2) = v4;
        if (!--a2._rawValue)
        {
          *v8 = v7;
          a2._rawValue = 1;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    __break(1u);
LABEL_91:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v4, 1, v7);
LABEL_7:
    *(v7 + 2) = v4;
    v7[v11 + 32] = 10;
    v4 = v38;
    v38[2] = v7;
    if (!__OFADD__(*v38, 1))
    {
      ++*v38;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_93:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
LABEL_75:
  v34 = *(v7 + 2);
  v33 = *(v7 + 3);
  if (v34 >= v33 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v7);
  }

  *(v7 + 2) = v34 + 1;
  v7[v34 + 32] = 10;
  v4[2] = v7;
  if (!__OFSUB__(*v4, 1))
  {
    --*v4;
    JSONWriter.writeIndent()();
    v7 = v4[2];
    goto LABEL_79;
  }

  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t @objc static NSTimeZone._setDefaultTimeZone(_:)(id a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    type metadata accessor for _NSSwiftTimeZone();
    if (swift_dynamicCastClass())
    {
      a1 = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      *(swift_allocObject() + 16) = a3;
      _s10Foundation14_LocaleBridgedCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged, &protocol conformance descriptor for _TimeZoneBridged);
      a1 = a3;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v4 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v4 + 30);
  partial apply for closure #1 in TimeZoneCache.setDefault(_:)(&v4[4]);
  os_unfair_lock_unlock(v4 + 30);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
  return swift_unknownObjectRelease();
}

void closure #1 in TimeZoneCache.setDefault(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a2)
  {
    v6 = type metadata accessor for _NSSwiftTimeZone();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____NSSwiftTimeZone_timeZone];
    *v8 = a2;
    *(v8 + 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMR);
    v9 = swift_allocObject();
    *(v9 + 32) = 0;
    *(v9 + 16) = xmmword_18122E880;
    *&v7[OBJC_IVAR____NSSwiftTimeZone_lock] = v9;
    v11.receiver = v7;
    v11.super_class = v6;
    swift_unknownObjectRetain();
    v10 = objc_msgSendSuper2(&v11, sel_init);

    *(a1 + 72) = v10;
  }

  else
  {

    *(a1 + 72) = 0;
  }
}

double protocol witness for static SchedulerTimeIntervalConvertible.milliseconds(_:) in conformance NSRunLoop.SchedulerTimeType.Stride@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1 / 1000.0;
  *a2 = result;
  return result;
}

uint64_t (*PropertyListDecoder.userInfo.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 16);

  return PropertyListDecoder.userInfo.modify;
}

uint64_t PropertyListDecoder.userInfo.modify(uint64_t *a1)
{
  v1 = a1[1];
  *(v1 + 16) = *a1;

  v2 = *(v1 + 24);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t (*PropertyListEncoder.userInfo.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 24);

  return PropertyListEncoder.userInfo.modify;
}

uint64_t PropertyListEncoder.userInfo.modify(uint64_t *a1)
{
  v1 = a1[1];
  *(v1 + 24) = *a1;

  v2 = *(v1 + 32);

  os_unfair_lock_unlock(v2 + 4);
}

double protocol witness for static SchedulerTimeIntervalConvertible.seconds(_:) in conformance NSRunLoop.SchedulerTimeType.Stride@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t _PlistDecoder.userInfo.getter()
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_yp5valuetMd, &_ss17CodingUserInfoKeyV3key_yp5valuetMR);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v42 - v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - v2;
  v3 = type metadata accessor for CodingUserInfoKey();
  v55 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMd, &_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMR);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v8;
  v56 = *(v0 + 32);
  if (*(v56 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  v10 = v56 + 64;
  v11 = 1 << *(v56 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v56 + 64);
  v14 = (v11 + 63) >> 6;
  v45 = v55 + 16;
  v58 = v55 + 32;
  v15 = v9 + 64;

  v17 = 0;
  v46 = v9;
  v43 = v10;
  v44 = v14;
  v50 = v5;
  while (v13)
  {
LABEL_15:
    v20 = __clz(__rbit64(v13)) | (v17 << 6);
    v22 = v55;
    v21 = v56;
    v23 = *(v56 + 48);
    v57 = *(v55 + 72);
    v24 = v47;
    (*(v55 + 16))(v47, v23 + v57 * v20, v3);
    v25 = *(v21 + 56) + 32 * v20;
    v26 = v49;
    outlined init with copy of Any(v25, v24 + *(v49 + 48));
    v27 = v48;
    outlined init with take of (key: CodingUserInfoKey, value: Sendable)(v24, v48);
    v28 = *(v26 + 48);
    v29 = *(v54 + 48);
    v30 = *(v22 + 32);
    v31 = v53;
    v30(v53, v27, v3);
    outlined init with take of Any((v27 + v28), v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    swift_dynamicCast();
    v32 = v51;
    v33 = *(v52 + 48);
    v30(v51, v31, v3);
    outlined init with take of Any(&v31[v29], &v32[v33]);
    v34 = v50;
    v30(v50, v32, v3);
    outlined init with take of Any(&v32[v33], v59);
    v9 = v46;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v9 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v35) >> 6;
      v14 = v44;
      while (++v37 != v39 || (v38 & 1) == 0)
      {
        v40 = v37 == v39;
        if (v37 == v39)
        {
          v37 = 0;
        }

        v38 |= v40;
        v41 = *(v15 + 8 * v37);
        if (v41 != -1)
        {
          v18 = __clz(__rbit64(~v41)) + (v37 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v14 = v44;
LABEL_9:
    v13 &= v13 - 1;
    *(v15 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v30((*(v9 + 48) + v18 * v57), v34, v3);
    result = outlined init with take of Any(v59, (*(v9 + 56) + 32 * v18));
    ++*(v9 + 16);
    v10 = v43;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t NSDecimalAdd(_:_:_:_:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v120 = *MEMORY[0x1E69E9840];
  v118 = *a2;
  v119 = *(a2 + 4);
  if (!_So9NSDecimala__length_getter(&v118) && (v118 = *a2, v119 = *(a2 + 4), _So9NSDecimala__isNegative_getter(&v118)) || (v118 = *a3, v119 = *(a3 + 4), !_So9NSDecimala__length_getter(&v118)) && (v118 = *a3, v119 = *(a3 + 4), _So9NSDecimala__isNegative_getter(&v118)))
  {
LABEL_52:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    v28 = swift_allocError();
    *v29 = 0;
    swift_willThrow();
LABEL_53:
    *&v118 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v31 = qword_181234EC8[v116];
    }

    else
    {
      v31 = 0;
    }

    *&v115[4] = 0;
    *&v115[12] = 0;
    _So9NSDecimala__exponent_setter(0, v115);
    _So9NSDecimala__length_setter(0, v115);
    _So9NSDecimala__isNegative_setter(1, v115);
    _So9NSDecimala__isCompact_setter(v115);
    _So9NSDecimala__reserved_setter(v115);
    *a1 = *v115;
    *(a1 + 16) = *&v115[16];

    return v31;
  }

  v118 = *a2;
  v119 = *(a2 + 4);
  if (!_So9NSDecimala__length_getter(&v118))
  {
    v31 = 0;
    v32 = *a3;
    v33 = *(a3 + 4);
LABEL_59:
    *(a1 + 16) = v33;
    *a1 = v32;
    return v31;
  }

  v118 = *a3;
  v119 = *(a3 + 4);
  if (!_So9NSDecimala__length_getter(&v118))
  {
    v31 = 0;
    v32 = *a2;
    v33 = *(a2 + 4);
    goto LABEL_59;
  }

  v118 = *a2;
  v119 = *(a2 + 4);
  v116 = *a3;
  v117 = *(a3 + 4);
  v8 = specialized static NSDecimal._normalize(a:b:roundingMode:)(&v118, &v116);
  v111 = v118;
  v112 = v119;
  if (!_So9NSDecimala__length_getter(&v111))
  {
    v113 = v116;
    v35 = v117;
LABEL_63:
    v114 = v35;
LABEL_64:
    *a1 = v113;
    *(a1 + 16) = v114;
    return v8 & 1;
  }

  v111 = v116;
  v112 = v117;
  if (!_So9NSDecimala__length_getter(&v111))
  {
    v113 = v118;
    v35 = v119;
    goto LABEL_63;
  }

  v107 = v8;
  v111 = v118;
  v112 = v119;
  v109 = v118;
  v110 = v119;
  isNegative_getter = _So9NSDecimala__isNegative_getter(&v109);
  v109 = v116;
  v110 = v117;
  if (isNegative_getter != _So9NSDecimala__isNegative_getter(&v109))
  {
    v36 = v119;
    v37 = v118;
    NSDecimal.asVariableLengthInteger()(v118, *(&v118 + 1), v119);
    v39 = v38;
    v40 = v116;
    v41 = v117;
    NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
    v17 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v39, v42);

    switch(v17)
    {
      case 0xFFFFFFFFFFFFFFFFLL:
        NSDecimal.asVariableLengthInteger()(v40, *(&v40 + 1), v41);
        v17 = v44;
        NSDecimal.asVariableLengthInteger()(v37, *(&v37 + 1), v36);
        v46 = v45;
        v47 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12 = v47;
        *(v47 + 32) = 0;
        v48 = (v47 + 32);
        *(v47 + 16) = 8;
        *(v47 + 40) = 0;
        v21 = *(v17 + 16);
        v20 = *(v46 + 16);
        if (v20 >= v21)
        {
          v49 = *(v17 + 16);
        }

        else
        {
          v49 = *(v46 + 16);
        }

        if (v49)
        {
          if (!v21)
          {
            goto LABEL_302;
          }

          if (!v20)
          {
            goto LABEL_303;
          }

          v50 = ((*(v17 + 32) | 0x10000) - *(v46 + 32)) >> 16;
          *v48 = *(v17 + 32) - *(v46 + 32);
          if (v49 != 1)
          {
            if (v21 == 1)
            {
              goto LABEL_302;
            }

            if (v20 == 1)
            {
              goto LABEL_303;
            }

            v51 = v50 + *(v17 + 34) - *(v46 + 34) + 0xFFFF;
            v50 = HIWORD(v51);
            *(v47 + 34) = v51;
            if (v49 != 2)
            {
              if (v21 == 2)
              {
                goto LABEL_302;
              }

              if (v20 == 2)
              {
                goto LABEL_303;
              }

              v52 = v50 + *(v17 + 36) - *(v46 + 36) + 0xFFFF;
              v50 = HIWORD(v52);
              *(v47 + 36) = v52;
              if (v49 != 3)
              {
                if (v21 == 3)
                {
                  goto LABEL_302;
                }

                if (v20 == 3)
                {
                  goto LABEL_303;
                }

                v53 = v50 + *(v17 + 38) - *(v46 + 38) + 0xFFFF;
                v50 = HIWORD(v53);
                *(v47 + 38) = v53;
                if (v49 != 4)
                {
                  if (v21 == 4)
                  {
                    goto LABEL_302;
                  }

                  if (v20 == 4)
                  {
                    goto LABEL_303;
                  }

                  v54 = v50 + *(v17 + 40) - *(v46 + 40) + 0xFFFF;
                  v50 = HIWORD(v54);
                  *(v47 + 40) = v54;
                  if (v49 != 5)
                  {
                    if (v21 == 5)
                    {
                      goto LABEL_302;
                    }

                    if (v20 == 5)
                    {
                      goto LABEL_303;
                    }

                    v55 = v50 + *(v17 + 42) - *(v46 + 42) + 0xFFFF;
                    v50 = HIWORD(v55);
                    *(v47 + 42) = v55;
                    if (v49 != 6)
                    {
                      if (v21 == 6)
                      {
                        goto LABEL_302;
                      }

                      if (v20 == 6)
                      {
                        goto LABEL_303;
                      }

                      v56 = v50 + *(v17 + 44) - *(v46 + 44) + 0xFFFF;
                      v50 = HIWORD(v56);
                      *(v47 + 44) = v56;
                      if (v49 != 7)
                      {
                        if (v21 == 7)
                        {
                          goto LABEL_302;
                        }

                        if (v20 == 7)
                        {
                          goto LABEL_303;
                        }

                        v57 = v50 + *(v17 + 46) - *(v46 + 46) + 0xFFFF;
                        *(v47 + 46) = v57;
                        if (v49 != 8)
                        {
                          goto LABEL_299;
                        }

                        v50 = HIWORD(v57);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v50 = 1;
        }

        if (v20 < v21)
        {
          v84 = v17 + 32;
          while (!v50)
          {
            if (v49 >= *(v47 + 16))
            {
              goto LABEL_280;
            }

            v50 = (*(v84 + 2 * v49) + 0xFFFF) >> 16;
            v48[v49] = *(v84 + 2 * v49) - 1;
            if (v21 == ++v49)
            {
              v49 = v21;
              goto LABEL_189;
            }
          }

          do
          {
            if (v49 >= v21)
            {
              goto LABEL_276;
            }

            if (v49 >= *(v47 + 16))
            {
              goto LABEL_278;
            }

            v48[v49] = *(v84 + 2 * v49);
            ++v49;
          }

          while (v49 < v21);
        }

LABEL_189:
        if (v49 < v20)
        {
          if (v49 <= v20)
          {
            v85 = v20;
          }

          else
          {
            v85 = v49;
          }

          do
          {
            if (v85 == v49)
            {
              goto LABEL_270;
            }

            if (v49 >= *(v47 + 16))
            {
              goto LABEL_272;
            }

            v86 = v50 + (*(v46 + 32 + 2 * v49) ^ 0xFFFF);
            v50 = HIWORD(v86);
            v48[v49++] = v86;
          }

          while (v20 != v49);
        }

        if (!v50)
        {
          goto LABEL_249;
        }

        for (i = *(v47 + 16); i; *(v47 + 16) = --i)
        {
          if (*(v47 + 30 + 2 * i))
          {
            break;
          }
        }

        v88 = v12[1].u64[0];
        if (HIDWORD(v88))
        {
          goto LABEL_286;
        }

        _So9NSDecimala__length_setter(v88, &v111);
        v109 = v116;
        v89 = v117;
        break;
      case 0uLL:
        v113 = 0uLL;
        v114 = 0;
        v8 = v107;
        goto LABEL_64;
      case 1uLL:
        NSDecimal.asVariableLengthInteger()(v37, *(&v37 + 1), v36);
        v17 = v58;
        NSDecimal.asVariableLengthInteger()(v40, *(&v40 + 1), v41);
        v60 = v59;
        v61 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12 = v61;
        *(v61 + 32) = 0;
        v62 = (v61 + 32);
        *(v61 + 16) = 8;
        *(v61 + 40) = 0;
        v21 = *(v17 + 16);
        v20 = *(v60 + 16);
        if (v20 >= v21)
        {
          v63 = *(v17 + 16);
        }

        else
        {
          v63 = *(v60 + 16);
        }

        if (v63)
        {
          if (!v21)
          {
            goto LABEL_307;
          }

          if (!v20)
          {
            goto LABEL_308;
          }

          v64 = ((*(v17 + 32) | 0x10000) - *(v60 + 32)) >> 16;
          *v62 = *(v17 + 32) - *(v60 + 32);
          if (v63 != 1)
          {
            if (v21 == 1)
            {
              goto LABEL_307;
            }

            if (v20 == 1)
            {
              goto LABEL_308;
            }

            v65 = v64 + *(v17 + 34) - *(v60 + 34) + 0xFFFF;
            v64 = HIWORD(v65);
            *(v61 + 34) = v65;
            if (v63 != 2)
            {
              if (v21 == 2)
              {
                goto LABEL_307;
              }

              if (v20 == 2)
              {
                goto LABEL_308;
              }

              v66 = v64 + *(v17 + 36) - *(v60 + 36) + 0xFFFF;
              v64 = HIWORD(v66);
              *(v61 + 36) = v66;
              if (v63 != 3)
              {
                if (v21 == 3)
                {
                  goto LABEL_307;
                }

                if (v20 == 3)
                {
                  goto LABEL_308;
                }

                v67 = v64 + *(v17 + 38) - *(v60 + 38) + 0xFFFF;
                v64 = HIWORD(v67);
                *(v61 + 38) = v67;
                if (v63 != 4)
                {
                  if (v21 == 4)
                  {
                    goto LABEL_307;
                  }

                  if (v20 == 4)
                  {
                    goto LABEL_308;
                  }

                  v68 = v64 + *(v17 + 40) - *(v60 + 40) + 0xFFFF;
                  v64 = HIWORD(v68);
                  *(v61 + 40) = v68;
                  if (v63 != 5)
                  {
                    if (v21 == 5)
                    {
                      goto LABEL_307;
                    }

                    if (v20 == 5)
                    {
                      goto LABEL_308;
                    }

                    v69 = v64 + *(v17 + 42) - *(v60 + 42) + 0xFFFF;
                    v64 = HIWORD(v69);
                    *(v61 + 42) = v69;
                    if (v63 != 6)
                    {
                      if (v21 == 6)
                      {
                        goto LABEL_307;
                      }

                      if (v20 == 6)
                      {
                        goto LABEL_308;
                      }

                      v70 = v64 + *(v17 + 44) - *(v60 + 44) + 0xFFFF;
                      v64 = HIWORD(v70);
                      *(v61 + 44) = v70;
                      if (v63 != 7)
                      {
                        if (v21 == 7)
                        {
                          goto LABEL_307;
                        }

                        if (v20 == 7)
                        {
                          goto LABEL_308;
                        }

                        v71 = v64 + *(v17 + 46) - *(v60 + 46) + 0xFFFF;
                        *(v61 + 46) = v71;
                        if (v63 != 8)
                        {
                          goto LABEL_304;
                        }

                        v64 = HIWORD(v71);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v64 = 1;
        }

        if (v20 < v21)
        {
          v90 = v17 + 32;
          while (!v64)
          {
            if (v63 >= *(v61 + 16))
            {
              goto LABEL_281;
            }

            v64 = (*(v90 + 2 * v63) + 0xFFFF) >> 16;
            v62[v63] = *(v90 + 2 * v63) - 1;
            if (v21 == ++v63)
            {
              v63 = v21;
              goto LABEL_212;
            }
          }

          do
          {
            if (v63 >= v21)
            {
              goto LABEL_277;
            }

            if (v63 >= *(v61 + 16))
            {
              goto LABEL_279;
            }

            v62[v63] = *(v90 + 2 * v63);
            ++v63;
          }

          while (v63 < v21);
        }

LABEL_212:
        if (v63 < v20)
        {
          if (v63 <= v20)
          {
            v91 = v20;
          }

          else
          {
            v91 = v63;
          }

          do
          {
            if (v91 == v63)
            {
              goto LABEL_271;
            }

            if (v63 >= *(v61 + 16))
            {
              goto LABEL_273;
            }

            v92 = v64 + (*(v60 + 32 + 2 * v63) ^ 0xFFFF);
            v64 = HIWORD(v92);
            v62[v63++] = v92;
          }

          while (v20 != v63);
        }

        if (!v64)
        {
          goto LABEL_249;
        }

        for (j = *(v61 + 16); j; *(v61 + 16) = --j)
        {
          if (*(v61 + 30 + 2 * j))
          {
            break;
          }
        }

        v94 = v12[1].u64[0];
        if (HIDWORD(v94))
        {
          goto LABEL_287;
        }

        _So9NSDecimala__length_setter(v94, &v111);
        v109 = v118;
        v89 = v119;
        break;
      default:
LABEL_309:
        type metadata accessor for NSComparisonResult(0);
        *&v109 = v17;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_310;
    }

    v110 = v89;
    v95 = _So9NSDecimala__isNegative_getter(&v109);
    _So9NSDecimala__isNegative_setter(v95, &v111);
LABEL_226:
    NSDecimal.copyVariableLengthInteger(_:)(v12);
    if (v96)
    {
      v28 = v96;

      goto LABEL_53;
    }

    _So9NSDecimala__isCompact_setter(&v111);
    NSDecimal.compact()();
    v113 = v111;
    v114 = v112;
    v8 = v107;
    goto LABEL_64;
  }

  v109 = v118;
  v110 = v119;
  v10 = _So9NSDecimala__isNegative_getter(&v109);
  _So9NSDecimala__isNegative_setter(v10, &v111);
  NSDecimal.asVariableLengthInteger()(v118, *(&v118 + 1), v119);
  v12 = v11;
  NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
  v14 = v13;
  v15 = v12[1].i64[0];
  v16 = *(v13 + 16);
  if (v16 >= v15)
  {
    v17 = v12[1].u64[0];
  }

  else
  {
    v17 = *(v13 + 16);
  }

  v18 = 9;
  v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v19 + 16) = 9;
  *(v19 + 32) = 0;
  v22 = (v19 + 32);
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_297;
    }

    if (!v16)
    {
      goto LABEL_298;
    }

    v21 = v12[2].u16[0] + *(v14 + 32);
    v20 = WORD1(v21);
    *v22 = v12[2].i16[0] + *(v14 + 32);
    if (v17 != 1)
    {
      if (v15 == 1)
      {
        goto LABEL_297;
      }

      if (v16 == 1)
      {
        goto LABEL_298;
      }

      v21 = v20 + v12[2].u16[1] + *(v14 + 34);
      v20 = WORD1(v21);
      *(v19 + 34) = v21;
      if (v17 != 2)
      {
        if (v15 == 2)
        {
          goto LABEL_297;
        }

        if (v16 == 2)
        {
          goto LABEL_298;
        }

        v21 = v20 + v12[2].u16[2] + *(v14 + 36);
        v20 = WORD1(v21);
        *(v19 + 36) = v21;
        if (v17 != 3)
        {
          if (v15 == 3)
          {
            goto LABEL_297;
          }

          if (v16 == 3)
          {
            goto LABEL_298;
          }

          v21 = v20 + v12[2].u16[3] + *(v14 + 38);
          v20 = WORD1(v21);
          *(v19 + 38) = v21;
          if (v17 != 4)
          {
            if (v15 == 4)
            {
              goto LABEL_297;
            }

            if (v16 == 4)
            {
              goto LABEL_298;
            }

            v21 = v20 + v12[2].u16[4] + *(v14 + 40);
            v20 = WORD1(v21);
            *(v19 + 40) = v21;
            if (v17 != 5)
            {
              if (v15 == 5)
              {
                goto LABEL_297;
              }

              if (v16 == 5)
              {
                goto LABEL_298;
              }

              v21 = v20 + v12[2].u16[5] + *(v14 + 42);
              v20 = WORD1(v21);
              *(v19 + 42) = v21;
              if (v17 != 6)
              {
                if (v15 == 6)
                {
                  goto LABEL_297;
                }

                if (v16 == 6)
                {
                  goto LABEL_298;
                }

                v21 = v20 + v12[2].u16[6] + *(v14 + 44);
                v20 = WORD1(v21);
                *(v19 + 44) = v21;
                if (v17 != 7)
                {
                  if (v15 == 7)
                  {
                    goto LABEL_297;
                  }

                  if (v16 == 7)
                  {
                    goto LABEL_298;
                  }

                  v21 = v20 + v12[2].u16[7] + *(v14 + 46);
                  v20 = WORD1(v21);
                  *(v19 + 46) = v21;
                  if (v17 != 8)
                  {
                    if (v15 == 8)
                    {
                      goto LABEL_297;
                    }

                    if (v16 == 8)
                    {
                      goto LABEL_298;
                    }

                    v23 = *(v14 + 48);
                    v21 = v20 + v12[3].u16[0] + v23;
                    *(v19 + 48) = v20 + v12[3].i16[0] + v23;
                    if (v17 != 9)
                    {
                      goto LABEL_294;
                    }

                    LODWORD(v20) = WORD1(v21);
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v16 < v15)
    {
      if (v21 < 0x10000)
      {
        goto LABEL_69;
      }

      if (v17 > 8)
      {
        goto LABEL_283;
      }

      LODWORD(v20) = (v12[2].u16[v17] + 1) >> 16;
      v22[v17] = v12[2].i16[v17] + 1;
      if (v17 + 1 != v15)
      {
        v24 = 2 * v17 + 34;
        v25 = (v19 + v24);
        v26 = (v12->u16 + v24);
        ++v17;
        while (v20)
        {
          if (v17 >= *(v19 + 16))
          {
            goto LABEL_283;
          }

          v27 = *v26++;
          LODWORD(v20) = (v27 + 1) >> 16;
          *v25++ = v27 + 1;
          if (v15 == ++v17)
          {
            goto LABEL_48;
          }
        }

LABEL_69:
        if (v17 <= v15)
        {
          v43 = v15;
        }

        else
        {
          v43 = v17;
        }

        do
        {
          if (v43 == v17)
          {
            goto LABEL_263;
          }

          if (v17 >= *(v19 + 16))
          {
            goto LABEL_264;
          }

          *(v19 + 2 * v17 + 32) = v12[2].i16[v17];
          ++v17;
        }

        while (v17 < v15);
        if (v17 >= v16)
        {
          goto LABEL_156;
        }

        goto LABEL_150;
      }

LABEL_48:
      v17 = v15;
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_69;
    }

    LODWORD(v20) = 0;
  }

  if (v17 < v16)
  {
    if (!v20)
    {
LABEL_150:
      if (v17 <= v16)
      {
        v76 = v16;
      }

      else
      {
        v76 = v17;
      }

      do
      {
        if (v76 == v17)
        {
          goto LABEL_265;
        }

        if (v17 >= *(v19 + 16))
        {
          goto LABEL_266;
        }

        *(v19 + 2 * v17 + 32) = *(v14 + 32 + 2 * v17);
        ++v17;
      }

      while (v17 < v16);
LABEL_156:
      *&v109 = v19;
      goto LABEL_157;
    }

    if (v17 >= *(v19 + 16))
    {
      goto LABEL_282;
    }

    LODWORD(v20) = (*(v14 + 32 + 2 * v17) + 1) >> 16;
    v22[v17] = *(v14 + 32 + 2 * v17) + 1;
    if (v17 + 1 != v16)
    {
      v72 = 2 * v17 + 34;
      v73 = (v19 + v72);
      v74 = (v14 + v72);
      ++v17;
      while (v20)
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_282;
        }

        v75 = *v74++;
        LODWORD(v20) = (v75 + 1) >> 16;
        *v73++ = v75 + 1;
        if (v16 == ++v17)
        {
          goto LABEL_145;
        }
      }

      goto LABEL_150;
    }

LABEL_145:
    v17 = v16;
  }

  *&v109 = v19;
  if (!v20)
  {
LABEL_157:
    v77 = *(v19 + 16);
    v78 = v77 - v17;
    if (__OFSUB__(v77, v17))
    {
      goto LABEL_284;
    }

    v17 = &v109;
    specialized RangeReplaceableCollection<>.removeLast(_:)(v78);

    v108 = v109;
    v79 = *(v109 + 16);
    if (v79 > 8)
    {

      if (v79 == 9)
      {
        v15 = 0;
        LODWORD(v14) = 0;
        v80 = 0;
        v12 = v108;
      }

      else
      {
        v17 = 0;
        LODWORD(v14) = 0;
        v80 = 0;
        v18 = v108;
        do
        {
          if (v14)
          {
            v80 = 1;
          }

          v12 = specialized static NSDecimal._integerDivideByShort(_:_:)(v18, 0x2710u);
          v14 = v83;

          v15 = v17 + 4;
          if (__OFADD__(v17, 4))
          {
            goto LABEL_275;
          }

          v16 = v12[1].u64[0];
          v17 += 4;
          v18 = v12;
        }

        while (v16 > 9);
        if (v16 != 9)
        {
          goto LABEL_175;
        }
      }

      v18 = v12;
      do
      {
        if (v14)
        {
          v80 = 1;
        }

        v12 = specialized static NSDecimal._integerDivideByShort(_:_:)(v18, 0xAu);
        v14 = v81;

        v82 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_274;
        }

        v16 = v12[1].u64[0];
        ++v15;
        v18 = v12;
      }

      while (v16 > 8);
      v15 = v82;
LABEL_175:
      if (v80)
      {
        if (!v14 || v14 == 5)
        {
          v14 = (v14 + 1);
        }
      }

      else if (!v14)
      {
        goto LABEL_254;
      }

      if (a4 <= 1)
      {
        if (a4)
        {
          goto LABEL_254;
        }

        goto LABEL_240;
      }

      if (a4 == 2)
      {
        goto LABEL_242;
      }

      if (a4 != 3)
      {
        goto LABEL_254;
      }

      if (v14 != 5)
      {
LABEL_240:
        if (v14 <= 4)
        {
LABEL_254:

          while (1)
          {
            v109 = v111;
            v110 = v112;
            v102 = _So9NSDecimala__exponent_getter(&v109);
            if (v15 < 0xFFFFFFFF80000000)
            {
              goto LABEL_288;
            }

            if (v15 > 0x7FFFFFFF)
            {
              goto LABEL_289;
            }

            if (__OFADD__(v102, v15))
            {
              goto LABEL_290;
            }

            if (v102 + v15 > 127)
            {
              break;
            }

            v109 = v111;
            v110 = v112;
            v103 = _So9NSDecimala__exponent_getter(&v109);
            v104 = __OFADD__(v103, v15);
            v105 = (v103 + v15);
            if (v104)
            {
              __break(1u);
LABEL_292:
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v14, 1, a4);
LABEL_251:
              *(a4 + 16) = v14;
              *(a4 + 2 * v18 + 32) = 1;
              if (*(a4 + 16) >= v16)
              {
                goto LABEL_253;
              }

              v19 = specialized static NSDecimal._integerDivideByShort(_:_:)(a4, 0xAu);
            }

            else
            {
              v19 = _So9NSDecimala__exponent_setter(v105, &v111);
              v79 = v12[1].u64[0];
              if (!HIDWORD(v79))
              {
                goto LABEL_168;
              }

              __break(1u);
LABEL_263:
              __break(1u);
LABEL_264:
              __break(1u);
LABEL_265:
              __break(1u);
LABEL_266:
              __break(1u);
            }

            v16 = v19;

            v104 = __OFADD__(v15++, 1);
            if (v104)
            {
              __break(1u);
LABEL_270:
              __break(1u);
LABEL_271:
              __break(1u);
LABEL_272:
              __break(1u);
LABEL_273:
              __break(1u);
LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
LABEL_276:
              __break(1u);
LABEL_277:
              __break(1u);
LABEL_278:
              __break(1u);
LABEL_279:
              __break(1u);
LABEL_280:
              __break(1u);
LABEL_281:
              __break(1u);
LABEL_282:
              __break(1u);
LABEL_283:
              __break(1u);
LABEL_284:
              __break(1u);
LABEL_285:
              __break(1u);
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
            }
          }

          goto LABEL_52;
        }

LABEL_242:
        if (!v16)
        {
          a4 = MEMORY[0x1E69E7CC0];
          v18 = *(MEMORY[0x1E69E7CC0] + 16);
          v14 = 1;
LABEL_248:
          if (v18 != v14)
          {
            v101 = *(a4 + 24);
            v14 = v18 + 1;
            if (v18 >= v101 >> 1)
            {
              goto LABEL_292;
            }

            goto LABEL_251;
          }

LABEL_249:

          lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
          v28 = swift_allocError();
          *v100 = 0;
          swift_willThrow();

          goto LABEL_53;
        }

LABEL_243:
        v14 = v16 + 1;
        a4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(a4 + 16) = v16;
        bzero((a4 + 32), 2 * v16);
        v97 = 0;
        v98 = 1;
        do
        {
          v99 = v98 + v12[2].u16[v97];
          v98 = HIWORD(v99);
          *(a4 + 2 * v97++ + 32) = v99;
        }

        while (v16 != v97);
        v18 = v16;
        if (v99 < 0x10000)
        {
LABEL_253:

          goto LABEL_254;
        }

        goto LABEL_248;
      }

      if (v16)
      {
        if (v12[2].i16[0])
        {
          goto LABEL_254;
        }

        goto LABEL_243;
      }

      __break(1u);
LABEL_294:
      if (v15 != 9)
      {
        if (v16 != 9)
        {
          __break(1u);
          goto LABEL_297;
        }

LABEL_298:
        __break(1u);
LABEL_299:
        if (v21 != 8)
        {
          if (v20 != 8)
          {
            __break(1u);
            goto LABEL_302;
          }

LABEL_303:
          __break(1u);
LABEL_304:
          if (v21 != 8)
          {
            if (v20 != 8)
            {
              __break(1u);
              goto LABEL_307;
            }

LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

LABEL_302:
        __break(1u);
        goto LABEL_303;
      }

LABEL_297:
      __break(1u);
      goto LABEL_298;
    }

    v12 = v109;
LABEL_168:
    _So9NSDecimala__length_setter(v79, &v111);
    goto LABEL_226;
  }

  if (v17 <= 9)
  {
    if (v17 >= *(v19 + 16))
    {
      goto LABEL_285;
    }

    v22[v17] = 1;
    *&v109 = v19;
    ++v17;
    goto LABEL_157;
  }

LABEL_310:

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  swift_allocError();
  *v106 = 0;
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Foundation::Date __swiftcall Date.init(timeIntervalSinceNow:)(Swift::Double timeIntervalSinceNow)
{
  v3 = v1;
  v6 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result._time = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001 + timeIntervalSinceNow;
  *v3 = result._time;
  return result;
}

uint64_t NSURLSession.download(from:delegate:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  type metadata accessor for NSURLSession.CancelState();
  v8 = *(v0 + 120);
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMR);
  v4 = swift_initStackObject();
  *(v0 + 152) = v4;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(inited + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = inited;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd, &_s10Foundation3URLV_So13NSURLResponseCtMR);
  *v6 = v0;
  v6[1] = NSURLSession.download(from:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.download(from:delegate:));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = NSURLSession.upload(for:fromFile:delegate:);
  }

  else
  {

    v2 = NSURLSession.download(from:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t partial apply for closure #1 in NSURLSession.download(from:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.download(from:delegate:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in NSURLSession.download(from:delegate:)()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd, &_s10Foundation3URLV_So13NSURLResponseCtMR);
  *v3 = v0;
  v3[1] = closure #1 in NSURLSession.download(from:delegate:);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000018, 0x8000000181488430, partial apply for closure #1 in closure #1 in NSURLSession.download(from:delegate:), v2, v4);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(from:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in NSURLSession.download(from:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(from:delegate:), 0, 0);
}

void closure #1 in closure #1 in NSURLSession.download(from:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd, &_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23[-v13];
  ObjectType = swift_getObjectType();
  v16 = (*(a4 + 432))(ObjectType, a4);
  (*(v12 + 16))(v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v14, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.download(from:delegate:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_146;
  v19 = _Block_copy(aBlock);

  v20 = [a2 _downloadTaskWithURL_delegate_completionHandler_];
  _Block_release(v19);

  v21 = v20;
  [v21 set:1 callCompletionHandlerInline:?];
  [v21 set:1 keepDownloadTaskFile:?];

  [v21 resume];
  v22 = *(a6 + 16);
  v24 = v21;
  os_unfair_lock_lock((v22 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v22 + 16), aBlock);
  os_unfair_lock_unlock((v22 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v21 cancel];
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a2, v10);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
  }

  v7 = a3;
  v8 = a4;
  v6(v10, a3, a4);

  return swift_unknownObjectRelease();
}

__int128 *closure #1 in closure #1 in closure #1 in NSURLSession.download(for:delegate:)(__int128 *result, void *a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd, &_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!*result)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  swift_unknownObjectRetain();
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd, &_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t NSURLSession.download(resumeFrom:delegate:)()
{
  v1 = *(v0 + 104);
  swift_setDeallocating();

  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v8 = *(v0 + 112);
  type metadata accessor for NSURLSession.CancelState();
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMR);
  v4 = swift_initStackObject();
  *(v0 + 152) = v4;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(inited + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v2;
  *(v5 + 48) = inited;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd, &_s10Foundation3URLV_So13NSURLResponseCtMR);
  *v6 = v0;
  v6[1] = NSURLSession.download(resumeFrom:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.download(resumeFrom:delegate:));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = NSURLSession.upload(for:from:delegate:);
  }

  else
  {

    v2 = NSURLSession.download(resumeFrom:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t _NSSwiftURLComponents.host.getter()
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v70 = *(v1 + 112);
  v71 = v2;
  v72[0] = *(v1 + 144);
  *(v72 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v66 = *(v1 + 48);
  v67 = v3;
  v4 = *(v1 + 96);
  v68 = *(v1 + 80);
  v69 = v4;
  v5 = *(v1 + 32);
  v64 = *(v1 + 16);
  v65 = v5;
  outlined init with copy of URLComponents(&v64, v62);
  os_unfair_lock_unlock((v1 + 172));
  v62[7] = v71;
  v63[0] = v72[0];
  *(v63 + 10) = *(v72 + 10);
  v62[2] = v66;
  v62[3] = v67;
  v62[4] = v68;
  v62[5] = v69;
  v62[6] = v70;
  v62[0] = v64;
  v62[1] = v65;
  v6 = v69;
  if (v69)
  {
    v7 = *(&v68 + 1);
    v8 = v69;
  }

  else
  {
    if ((BYTE12(v64) & 1) != 0 && v64 && (*(v64 + 120) & 1) == 0)
    {
      v33 = String.subscript.getter();
      v7 = MEMORY[0x1865CAE80](v33);
      v8 = v34;
    }

    else
    {
      URLComponents._URLComponents.port.getter();
      if (v9)
      {
        v10 = URLComponents._URLComponents.percentEncodedUser.getter();
        if (!v11)
        {
          v32 = v10;
          outlined destroy of URLComponents(&v64);
          return v32;
        }
      }

      v7 = 0;
      v8 = 0xE000000000000000;
    }

    v6 = 0;
  }

  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    outlined destroy of URLComponents(&v64);
    return 0;
  }

  if (BYTE8(v72[1]))
  {
    v60 = v7;
    v61 = v8;
    MEMORY[0x1EEE9AC00](v6);
    v58[0] = &v60;
    v58[1] = MEMORY[0x1E69E7CD0];
    v59 = 4;

    v14 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v56, v7, v8);
    if (v15 == 1)
    {
      v16 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v8, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v16 = v14;
    }

    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v16;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {

    goto LABEL_28;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v60 = v7;
    v61 = v8 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v6);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v22);
    v56 = &v60;
    v57 = HIBYTE(v8) & 0xF;

    v20 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v60, v57, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v58, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v23 == 1)
    {
      goto LABEL_28;
    }

LABEL_47:
    v55 = v20;
    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v55;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v18 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    goto LABEL_23;
  }

  v45 = v6;
  v46 = _StringObject.sharedUTF8.getter();
  if (!v46)
  {
    v54 = one-time initialization token for idnaTranscoder;

    if (v54 != -1)
    {
      swift_once();
    }

    if ((byte_1ED436DC0 & 1) == 0)
    {
      if (swift_stdlib_isStackAllocationSafe())
      {
        __break(1u);
      }

      swift_slowAlloc();
      __break(1u);
      goto LABEL_56;
    }

    v20 = 0;
    goto LABEL_47;
  }

  v18 = v46;
  v12 = v47;
  v6 = v45;
LABEL_23:
  MEMORY[0x1EEE9AC00](v6);
  LOBYTE(v59) = 0;
  MEMORY[0x1EEE9AC00](v19);
  v56 = v18;
  v57 = v12;

  v20 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v18, v12, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v58, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  if (v21 != 1)
  {
    goto LABEL_47;
  }

LABEL_28:
  v60 = v7;
  v61 = v8;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v24 = String._bridgeToObjectiveCImpl()();

  v25 = [v24 _fastCharacterContents];
  v26 = v24;
  if (v25)
  {
    v60 = v7;
    v61 = v8;
    StringProtocol._ephemeralString.getter();
    v27 = String._bridgeToObjectiveCImpl()();

    v28 = [v27 length];
    v29 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v29);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v30);
    v56 = v25;
    v57 = v28;
    v31 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v25);
    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v31;
  }

  v60 = v7;
  v61 = v8;

  v35 = String.init<A>(_:)();
  v37 = v35;
  v38 = v36;
  if ((v36 & 0x1000000000000000) != 0)
  {
    v37 = static String._copying(_:)(v35, v36);
    v49 = v48;

    v38 = v49;
    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_42:
    v60 = v37;
    v61 = v38 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v35);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v50);
    v56 = &v60;
    v57 = v51;
    v53 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v60, v51, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:), v52, partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:));

    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v53;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  if ((v37 & 0x1000000000000000) != 0)
  {
    v39 = (v38 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_36:
    MEMORY[0x1EEE9AC00](v39);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v40);
    v56 = v41;
    v57 = v42;
    v44 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v41, v42, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v43, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
LABEL_37:
    swift_bridgeObjectRelease_n();

    outlined destroy of URLComponents(&v64);
    return v44;
  }

  v39 = _StringObject.sharedUTF8.getter();
  if (v39)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    v44 = 0;
    goto LABEL_37;
  }

LABEL_56:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

NSNotification __swiftcall Notification._bridgeToObjectiveC()()
{
  v1 = *v0;
  outlined init with copy of Any?((v0 + 1), v16);
  v2 = v0[5];
  v3 = v17;
  if (!v17)
  {
    v11 = 0;
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = *(v5 + 16);
  v9(v15 - v8, v7);
  result.super.isa = _swift_isClassOrObjCExistentialType();
  if ((result.super.isa & 1) == 0)
  {
    v15[1] = v15;
    v14 = MEMORY[0x1EEE9AC00](result.super.isa);
    (v9)(v15 - v8, v15 - v8, v3, v14);
    v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v5 + 8))(v15 - v8, v3);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (!v2)
    {
LABEL_7:
      v13 = [objc_allocWithZone(NSNotification) initWithName:v1 object:v11 userInfo:v2];
      swift_unknownObjectRelease();

      return v13;
    }

LABEL_6:

    v2 = _NativeDictionary.bridged()();
    goto LABEL_7;
  }

  if (v6 == 8)
  {
    v11 = *(v15 - v8);
    v12 = *(v5 + 8);
    swift_unknownObjectRetain();
    v12(v15 - v8, v3);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Notification.init(name:object:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = a1;
  result = outlined assign with take of Any?(a2, a4 + 8);
  *(a4 + 40) = a3;
  return result;
}

void *closure #1 in NSURLSession.CancelState.activate(task:)@<X0>(void *result@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  if (result[1])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (*result)
    {
      v4 = 0;
    }

    else
    {
      *result = 0;
      result[1] = a2;
      result = a2;
      v4 = 1;
    }

    *a3 = v4;
  }

  return result;
}

uint64_t objectdestroy_133Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

id protocol witness for _LocaleProtocol.bridgeToNSLocale() in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for autoupdatingCurrentNSLocale != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.autoupdatingCurrentNSLocale;

  return v0;
}

unint64_t URLComponents.path.getter()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[13];
    v3 = v1;
  }

  else
  {
    v4 = *v0;
    if (*(v0 + 14) != 1 || v4 == 0)
    {
      v2 = 0;
      v3 = 0xE000000000000000;
    }

    else
    {
      v6 = v0[14];
      if (*(v4 + 168))
      {
        v7 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v7 = String.subscript.getter();
      }

      v2 = MEMORY[0x1865CAE80](v7);
      v3 = v8;

      v1 = v6;
    }
  }

  v9 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v9 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  v17[0] = v2;
  v17[1] = v3;
  MEMORY[0x1EEE9AC00](v1);
  v16[2] = v17;
  v16[3] = MEMORY[0x1E69E7CD0];
  v16[4] = 4;

  v10 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v16, v2, v3);
  if (v11 == 1)
  {
    v12 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    v14 = v13;
  }

  else
  {
    v14 = v11;
    v12 = v10;
  }

  swift_bridgeObjectRelease_n();
  result = v12;
  if (!v14)
  {
    return 0;
  }

  return result;
}

unint64_t URLComponents._URLComponents.path.getter(uint64_t a1)
{
  v16 = *(v1 + 104);
  v2 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v3 = v16;
  }

  else if ((*(v1 + 14) & 1) != 0 && *v1)
  {
    if (*(*v1 + 168))
    {
      v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v4 = String.subscript.getter();
    }

    v3 = MEMORY[0x1865CAE80](v4);
    v2 = v5;
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    outlined init with copy of FloatingPointRoundingRule?(&v16, v15, &_sSSSgMd, &_sSSSgMR);

    return 0;
  }

  v15[0] = v3;
  v15[1] = v2;
  MEMORY[0x1EEE9AC00](a1);
  v13[2] = v15;
  v13[3] = MEMORY[0x1E69E7CD0];
  v13[4] = 4;
  outlined init with copy of FloatingPointRoundingRule?(&v16, v14, &_sSSSgMd, &_sSSSgMR);

  v7 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v13, v3, v2);
  if (v8 == 1)
  {
    v9 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, v2, MEMORY[0x1E69E7CD0], 4);
    v11 = v10;
  }

  else
  {
    v11 = v8;
    v9 = v7;
  }

  swift_bridgeObjectRelease_n();
  result = v9;
  if (!v11)
  {
    return 0;
  }

  return result;
}

double URLComponents.init(string:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(a1, a2, 1, v20);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v20) == 1)
  {
    sub_18094C438(&v11);
  }

  else
  {
    v17 = v20[6];
    v18 = v20[7];
    v19[0] = v21[0];
    *(v19 + 10) = *(v21 + 10);
    v13 = v20[2];
    v14 = v20[3];
    v15 = v20[4];
    v16 = v20[5];
    v11 = v20[0];
    v12 = v20[1];
    _NSBundleDeallocatingImmortalBundle();
  }

  v6 = v18;
  a3[6] = v17;
  a3[7] = v6;
  a3[8] = v19[0];
  *(a3 + 138) = *(v19 + 10);
  v7 = v14;
  a3[2] = v13;
  a3[3] = v7;
  v8 = v16;
  a3[4] = v15;
  a3[5] = v8;
  result = *&v11;
  v10 = v12;
  *a3 = v11;
  a3[1] = v10;
  return result;
}

double sub_18094C438(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanNull()()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v3 - v2) <= 3)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    v5 = 12;
LABEL_16:
    *(v4 + 48) = v5;
    swift_willThrow();
    return;
  }

  if (*v2 != 1819047278)
  {
    v6 = *(v0 + 1);
    v7 = *(v0 + 2);
    if ((((v6 + v7 - v3) | &v2[-v6]) & 0x8000000000000000) == 0)
    {
      if (v2 < v3 && *v2 == 110)
      {
        if (v2[1] == 117)
        {
          if (v2[2] == 108)
          {
            v8 = 3;
            if (v2[3] == 108)
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 2;
          }
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = &v2[v8];
      *(v0 + 3) = &v2[v8];
      if (&v2[v8] < v3)
      {
        v10 = *v9;
        v11 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, v6, v7);
        v13 = v12;
        v15 = v14;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v4 = 0xD000000000000016;
        *(v4 + 8) = 0x8000000181481BD0;
        *(v4 + 16) = v10;
        *(v4 + 24) = v11;
        *(v4 + 32) = v13;
        *(v4 + 40) = v15;
        v5 = 1;
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v0 + 3) = v2 + 4;
  v1 = v0;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v2 + 4));
  v0 = *(v0 + 6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
  }

  v17 = *(v0 + 2);
  v16 = *(v0 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v0);
    v18 = v17 + 1;
    v0 = v19;
  }

  *(v0 + 2) = v18;
  *&v0[8 * v17 + 32] = 2;
  *(v1 + 6) = v0;
}

void protocol witness for SingleValueEncodingContainer.encodeNil() in conformance __JSONEncoder()
{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 7;
  }

  else
  {
    __break(1u);
  }
}

char *Array<A>.nonPrettyJSONRepresentation<A>(encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v56 = a2;
  v57 = *(a4 - 8);
  v58 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v55 = v17;
  v18 = *(v17 + 56);
  v59 = 0;
  v60 = v18 & 1;
  v61 = (v18 & 2) != 0;
  v62 = (v18 & 8) != 0;
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  v22 = (v21 + 1);
  if (v21 >= v20 >> 1)
  {
LABEL_34:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v22, 1, v19);
  }

  *(v19 + 2) = v22;
  v19[v21 + 32] = 91;
  v63 = v19;
  v53 = MEMORY[0x1865CB550](v58, a4);
  if (v53 < 1)
  {
    goto LABEL_12;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v54 = a5;
  v43 = v13;
  if (isClassOrObjCExistentialType)
  {
    v24 = v58;
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v24 & 0xC000000000000001) != 0)
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v44 != 8)
      {
        goto LABEL_36;
      }

      v26 = a7;
      v64 = result;
      v27 = v57;
      v52 = *(v57 + 16);
      v52(v16, &v64, a4);
      swift_unknownObjectRelease();
      v28 = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = v58;
    Array._checkSubscript(_:wasNativeTypeChecked:)();
  }

  v26 = a7;
  v28 = v57;
  v29 = v24 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v52 = *(v57 + 16);
  v52(v16, v29, a4);
LABEL_9:
  v30 = a6;
  v33 = *(a6 + 8);
  v32 = a6 + 8;
  v31 = v33;
  v33(&v59, v55, v56, v54, v26, a4, v30);
  v34 = *(v28 + 8);
  v21 = v28 + 8;
  v22 = v34;
  v34(v16, a4);
  if (v7)
  {

    return v16;
  }

  v50 = v32;
  v51 = v31;
  if (v53 == 1)
  {
LABEL_12:
    v16 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v36 = *(v16 + 2);
    v35 = *(v16 + 3);
    if (v36 >= v35 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v16);
    }

    *(v16 + 2) = v36 + 1;
    v16[v36 + 32] = 93;
    return v16;
  }

  v37 = v26;
  v47 = v58 & 0xFFFFFFFFFFFFFF8;
  v48 = v30;
  v45 = v58 & 0xC000000000000001;
  v46 = v57 + 16;
  v13 = 1;
  v49 = v37;
  a5 = v43;
  while (1)
  {
    v16 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v39 = *(v16 + 2);
    v38 = *(v16 + 3);
    if (v39 >= v38 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v16);
    }

    *(v16 + 2) = v39 + 1;
    v16[v39 + 32] = 44;
    v63 = v16;
    if (_swift_isClassOrObjCExistentialType())
    {
      if (v45)
      {
        break;
      }
    }

    v40 = _swift_isClassOrObjCExistentialType();
    v41 = v47;
    a6 = v48;
    if ((v40 & 1) == 0)
    {
      v41 = v58;
    }

    v20 = *(v41 + 16);
    a7 = v49;
    if (v13 >= v20)
    {
      __break(1u);
      goto LABEL_34;
    }

    v52(a5, (v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v13), a4);
LABEL_29:
    v51(&v59, v55, v56, v54, a7, a4, a6);
    v22(a5, a4);
    if (v53 == ++v13)
    {
      goto LABEL_12;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  a6 = v48;
  a7 = v49;
  if (v44 == 8)
  {
    v64 = result;
    v52(a5, &v64, a4);
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double URLComponents.init(url:resolvingAgainstBaseURL:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = (*(v5 + 112))(ObjectType, v5);
  }

  else
  {
    v7 = (*(v5 + 104))(ObjectType, v5);
  }

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v8, 1, v23);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v23) == 1)
  {
    sub_18094C438(&v14);
  }

  else
  {
    v20 = v23[6];
    v21 = v23[7];
    v22[0] = v24[0];
    *(v22 + 10) = *(v24 + 10);
    v16 = v23[2];
    v17 = v23[3];
    v18 = v23[4];
    v19 = v23[5];
    v14 = v23[0];
    v15 = v23[1];
    _NSBundleDeallocatingImmortalBundle();
  }

  v9 = v21;
  a3[6] = v20;
  a3[7] = v9;
  a3[8] = v22[0];
  *(a3 + 138) = *(v22 + 10);
  v10 = v17;
  a3[2] = v16;
  a3[3] = v10;
  v11 = v19;
  a3[4] = v18;
  a3[5] = v11;
  result = *&v14;
  v13 = v15;
  *a3 = v14;
  a3[1] = v13;
  return result;
}

uint64_t closure #3 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(const char *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77[4] = *MEMORY[0x1E69E9840];
  if (a2 >> 16)
  {
    __break(1u);
    goto LABEL_103;
  }

  result = chmod(a1, a2);
  if (!result)
  {
    return result;
  }

  v7 = MEMORY[0x1865CA7A0]();
  if (v7 <= 27)
  {
    if (v7 > 12)
    {
      if (v7 != 13)
      {
        if (v7 == 17)
        {
          v10 = 516;
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v7 != 1)
    {
      if (v7 == 2)
      {
        v10 = 4;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v10 = 513;
    goto LABEL_23;
  }

  if (v7 <= 62)
  {
    if (v7 != 28)
    {
      if (v7 == 30)
      {
        v10 = 642;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_20:
    v10 = 640;
    goto LABEL_23;
  }

  switch(v7)
  {
    case '?':
      v10 = 514;
      goto LABEL_23;
    case 'E':
      goto LABEL_20;
    case 'f':
      v8 = 0;
      v9 = 512;
      goto LABEL_87;
  }

LABEL_22:
  v10 = 512;
LABEL_23:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
LABEL_107:
    _StringGuts.grow(_:)(22);

    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v70);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v12 = @"NSPOSIXErrorDomain";
  v13 = v12;
  v71 = a3;
  v72 = v10;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v12);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_42;
        }

        goto LABEL_29;
      }

      v17 = [(__CFString *)v13 UTF8String];
      if (!v17)
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      String.init(utf8String:)(v17);
      if (v18)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    v75 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      goto LABEL_30;
    }

    [(__CFString *)v13 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_42;
  }

LABEL_29:
  LOBYTE(v73) = 0;
  v77[0] = 0;
  LOBYTE(v75) = 0;
  v76 = 0;
  if (__CFStringIsCF())
  {
LABEL_30:

    goto LABEL_42;
  }

  v15 = v13;
  String.init(_nativeStorage:)();
  if (!v16 && (v77[0] = [(__CFString *)v15 length]) != 0)
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_42:
  v20 = POSIXErrorCode.rawValue.getter();
  v21 = objc_allocWithZone(NSError);
  v22 = String._bridgeToObjectiveCImpl()();

  v8 = [v21 initWithDomain:v22 code:v20 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v8 domain];
  if (!v23)
  {
LABEL_52:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_63;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_48;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  switch(v28)
  {
    case 0:
      goto LABEL_56;
    case 0x16:
      v35 = [v27 UTF8String];
      if (!v35)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v36 = String.init(utf8String:)(v35);
      if (v37)
      {
LABEL_57:
        v29 = v36;
        v31 = v37;

        goto LABEL_62;
      }

      __break(1u);
LABEL_56:
      v75 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v37)
      {
        [v27 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v29 = v73;
        v31 = v74;
        goto LABEL_62;
      }

      goto LABEL_57;
    case 2:
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

      goto LABEL_63;
  }

LABEL_48:
  LOBYTE(v73) = 0;
  v77[0] = 0;
  LOBYTE(v75) = 0;
  v76 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_52;
  }

  v32 = v27;
  v33 = String.init(_nativeStorage:)();
  if (v34)
  {
    v29 = v33;
    v31 = v34;

    goto LABEL_63;
  }

  v77[0] = [v32 length];
  if (!v77[0])
  {

    goto LABEL_52;
  }

  v29 = String.init(_cocoaString:)();
  v31 = v38;
LABEL_62:

LABEL_63:
  v39 = v13;
  v40 = v39;
  if (!isTaggedPointer)
  {
    goto LABEL_68;
  }

  v41 = _objc_getTaggedPointerTag(v39);
  if (!v41)
  {
    goto LABEL_76;
  }

  if (v41 == 22)
  {
    v48 = [(__CFString *)v40 UTF8String];
    if (v48)
    {
      v49 = String.init(utf8String:)(v48);
      if (v50)
      {
LABEL_77:
        v42 = v49;
        v44 = v50;

        goto LABEL_82;
      }

      __break(1u);
LABEL_76:
      v75 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v50)
      {
        [(__CFString *)v40 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v42 = v73;
        v44 = v74;
        goto LABEL_82;
      }

      goto LABEL_77;
    }

    goto LABEL_105;
  }

  if (v41 != 2)
  {
LABEL_68:
    LOBYTE(v73) = 0;
    v77[0] = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v45 = v40;
      v46 = String.init(_nativeStorage:)();
      if (v47)
      {
        v42 = v46;
        v44 = v47;

        goto LABEL_82;
      }

      v77[0] = [(__CFString *)v45 length];
      if (v77[0])
      {
        v42 = String.init(_cocoaString:)();
        v44 = v51;
        goto LABEL_82;
      }
    }

    v42 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_82;
  }

  MEMORY[0x1EEE9AC00](v41);
  v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v44 = v43;

LABEL_82:
  if (v29 != v42 || v31 != v44)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_86;
    }

LABEL_103:
    __break(1u);
  }

LABEL_86:
  a3 = v71;
  v9 = v72;
LABEL_87:

  if (_foundation_swift_url_feature_enabled())
  {

    v53 = specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a3, a4);
    v55 = v54;

    LOBYTE(v73) = 3;
    type metadata accessor for _SwiftURL();
    v77[0] = 0;
    v77[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v53, v55, 0, &v73, v77);
    v56 = _SwiftURL.convertingFileReference()();
    v58 = v57;
  }

  else
  {
    v59 = (specialized BidirectionalCollection.last.getter(a3, a4) & 0x1FF) == 47;
    v60 = objc_allocWithZone(type metadata accessor for _BridgedURL());

    v61 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a3, a4, v59);
    if (!v61)
    {

      v64 = String._bridgeToObjectiveCImpl()();
LABEL_98:
      v66 = 0;
      if (v8)
      {
        goto LABEL_93;
      }

      goto LABEL_99;
    }

    v62 = v61;
    v56 = _BridgedURL.convertingFileReference()();
    v58 = v63;
  }

  v64 = String._bridgeToObjectiveCImpl()();
  if (!v56)
  {
    goto LABEL_98;
  }

  ObjectType = swift_getObjectType();
  v66 = (*(v58 + 432))(ObjectType, v58);
  swift_unknownObjectRelease();
  if (v8)
  {
LABEL_93:
    v77[0] = v8;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v8 = v8;
    v67 = _getErrorEmbeddedNSError<A>(_:)();

    if (v67)
    {
    }

    else
    {
      swift_allocError();
      *v68 = v8;
    }

    v69 = _swift_stdlib_bridgeErrorToNSError();
    goto LABEL_100;
  }

LABEL_99:
  v69 = 0;
LABEL_100:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

void _NSFileHandleRaiseOperationExceptionWhileReading(objc_class *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if (*__error() < 1 || *__error() >= *MEMORY[0x1E69E9940])
  {
    v6 = "unknown error";
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9938] + 8 * *__error());
  }

  v7 = __error();
  v8 = _NSErrorWithFilePathAndErrno(*v7, 0, v3);
  v10 = @"NSFileHandleOperationExceptionUnderlyingError";
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSFileHandleOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %s", _NSMethodExceptionProem(a1, a2), v6), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  objc_exception_throw(v9);
}

uint64_t closure #1 in _LocaleICU.decimalSeparator.getter@<X0>(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 136);
  v7 = *(a1 + 168);
  v16[6] = *(a1 + 152);
  v17[0] = v7;
  *(v17 + 12) = *(a1 + 180);
  v8 = *(a1 + 72);
  v9 = *(a1 + 104);
  v16[2] = *(a1 + 88);
  v16[3] = v9;
  v16[4] = *(a1 + 120);
  v16[5] = v6;
  v16[0] = *(a1 + 56);
  v16[1] = v8;
  if (_s10Foundation17LocalePreferencesVSgWOg(v16) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *&v17[0];
  }

  v11 = _LocaleICU.State.NumberFormattersBox.formatter(for:identifier:numberSymbols:)(1, v4, v5, v10);

  if (v11)
  {
    Symbol = unum_getSymbol();
    result = 0;
    v14 = 0;
    if (Symbol - 1 < 0x20)
    {
      result = specialized String.init(_utf16:)(v15, Symbol);
    }

    *a3 = result;
    a3[1] = v14;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

id specialized static NSNotificationCenter.Publisher.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v8 = v3;
  v9 = v5;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v8);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v13 = v12;

          goto LABEL_22;
        }

        goto LABEL_8;
      }

      result = [v8 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_53;
      }

      v17 = String.init(utf8String:)(result);
      if (v18)
      {
LABEL_17:
        v11 = v17;
        v13 = v18;

        goto LABEL_22;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v35;
      v13 = v36;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_8:
  LOBYTE(v35) = 0;
  if (__CFStringIsCF())
  {

LABEL_12:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_22;
  }

  v14 = v8;
  v15 = String.init(_nativeStorage:)();
  if (v16)
  {
    v11 = v15;
    v13 = v16;

    goto LABEL_22;
  }

  if (![v14 length])
  {

    goto LABEL_12;
  }

  v11 = String.init(_cocoaString:)();
  v13 = v19;
LABEL_22:
  v20 = _objc_isTaggedPointer(v9);
  v21 = v9;
  v22 = v21;
  if (!v20)
  {
    goto LABEL_27;
  }

  v23 = _objc_getTaggedPointerTag(v21);
  if (!v23)
  {
    goto LABEL_34;
  }

  if (v23 != 22)
  {
    if (v23 == 2)
    {
      MEMORY[0x1EEE9AC00](v23);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;

      goto LABEL_40;
    }

LABEL_27:
    if (__CFStringIsCF())
    {
      v24 = 0;

      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;
      }

      else if ([v27 length])
      {
        v24 = String.init(_cocoaString:)();
        v26 = v32;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }
    }

    goto LABEL_40;
  }

  result = [v22 UTF8String];
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v30 = String.init(utf8String:)(result);
  if (v31)
  {
LABEL_35:
    v24 = v30;
    v26 = v31;

    goto LABEL_40;
  }

  __break(1u);
LABEL_34:
  _CFIndirectTaggedPointerStringGetContents();
  v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v31)
  {
    goto LABEL_35;
  }

  [v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = v35;
  v26 = v36;
LABEL_40:
  if (v11 == v24 && v13 == v26)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    return (v6 && v4 == v6);
  }

  else
  {
    return (v6 == 0);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(int a1)
{
  v3 = MEMORY[0x1865CD020](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t partial apply for closure #1 in NSURLSession.data(for:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.data(for:delegate:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in NSURLSession.data(for:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.data(for:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.data(for:delegate:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd, &_s10Foundation4DataV_So13NSURLResponseCtMR);
  *v4 = v0;
  v4[1] = closure #1 in NSURLSession.data(for:delegate:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001814884D0, partial apply for closure #1 in closure #1 in NSURLSession.data(for:delegate:), v3, v5);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.data(for:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in URLRequest.addValue(_:forHTTPHeaderField:)(void *a1)
{
  v2 = String._bridgeToObjectiveCImpl()();
  [a1 addValue:v2 forHTTPHeaderField:String._bridgeToObjectiveCImpl()()];
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t specialized _LocaleAutoupdating.debugDescription.getter()
{
  strcpy(v18, "autoupdating ");
  HIWORD(v18[1]) = -4864;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v12 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v14[0] = v0;
    *(v14 + 8) = v12;
    LocaleCache.preferences()(v16);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
    v14[6] = v16[6];
    v15[0] = v17[0];
    *(v15 + 12) = *(v17 + 12);
    v14[2] = v16[2];
    v14[3] = v16[3];
    v14[4] = v16[4];
    v14[5] = v16[5];
    v14[0] = v16[0];
    v14[1] = v16[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v16, &v13);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v14, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      closure #2 in LocaleCache._currentAndCache.getterpartial apply((v1 + 16), v14);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v16);

      v2 = *(&v14[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v16);
    }
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v2 + 64))(ObjectType, v2);
  v10 = v9;
  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](v8, v10);

  return v18[0];
}

uint64_t Data._Representation.resetBytes(in:)(uint64_t a1, Swift::Int a2)
{
  v6 = v2;
  v8 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if (!a2)
      {
        result = outlined consume of Data._Representation(*v2, *(v2 + 8));
        *v2 = xmmword_181234410;
        return result;
      }

      if (a2 > 14)
      {
        if (a2 <= 0x7FFFFFFE)
        {
          if (a1 > 0)
          {
            goto LABEL_90;
          }

          type metadata accessor for __DataStorage();
          v2 = swift_allocObject();
          __DataStorage.init(length:)(a2);
          goto LABEL_74;
        }

        goto LABEL_42;
      }

      if (a1 <= 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          v22 = a2 << 48;
          result = outlined consume of Data._Representation(v9, v10);
          *v6 = 0;
LABEL_75:
          *(v6 + 8) = v22;
          return result;
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v2 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *&v32 = v9;
    *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v9, v10);
    *v6 = xmmword_181234410;
    if (*(v9 + 24) >= v8)
    {
      Data.LargeSlice.ensureUniqueReference()();
      v2 = *(&v32 + 1);
      __DataStorage.resetBytes(in:)(v8, a2);
      v8 = v32;
      if (*(v32 + 24) >= a2)
      {
LABEL_44:
        v22 = v2 | 0x8000000000000000;
        result = outlined consume of Data._Representation(*v6, *(v6 + 8));
        *v6 = v8;
        goto LABEL_75;
      }

      if (*(v32 + 16) <= a2)
      {
LABEL_12:
        *(v8 + 24) = a2;
        goto LABEL_44;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v4 = HIDWORD(v9);
  if (v11)
  {

    outlined consume of Data._Representation(v9, v10);
    *v2 = xmmword_181234410;
    if (a2 >= 0x7FFFFFFF)
    {
      v3 = v9;
      v2 = v9 >> 32;
      if (v9 >> 32 >= v9)
      {
        type metadata accessor for Data.RangeReference();
        v21 = swift_allocObject();
        *(v21 + 16) = v9;
        *(v21 + 24) = v2;
        *&v32 = v21;
        *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
        if (v2 >= v8)
        {

          Data.LargeSlice.ensureUniqueReference()();
          v2 = *(&v32 + 1);
          __DataStorage.resetBytes(in:)(v8, a2);
          v8 = v32;
          if (*(v32 + 24) < a2)
          {
            if (*(v32 + 16) > a2)
            {
              goto LABEL_89;
            }

            *(v32 + 24) = a2;
          }

          outlined consume of Data._Representation(v9, v10);
          goto LABEL_44;
        }

        goto LABEL_82;
      }

      goto LABEL_79;
    }

    v5 = v9 >> 32;
    if (v9 >> 32 >= v8)
    {
      v2 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_59;
      }

      v3 = v9;
      if (v5 >= v9)
      {
        v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (v13)
        {
          v14 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v15 = __OFSUB__(v9, v14);
          v16 = v9 - v14;
          if (v15)
          {
            goto LABEL_92;
          }

          v29 = v16 + v13;
        }

        else
        {
          v29 = 0;
        }

        type metadata accessor for __DataStorage();
        v27 = swift_allocObject();
        v2 = v27;
        *(v27 + 16) = 0;
        v10 = v27 + 16;
        *(v27 + 48) = 0;
        *(v27 + 56) = 0;
        *(v27 + 40) = v9;
        v3 = v5 - v9;
        if (!v3)
        {
          *(v27 + 64) = 0;
          *(v27 + 24) = 0;
          *(v27 + 32) = 0;
          *v10 = 0;
          goto LABEL_58;
        }

        if (one-time initialization token for vmOpsThreshold != -1)
        {
          goto LABEL_93;
        }

        goto LABEL_52;
      }

      goto LABEL_87;
    }

    goto LABEL_77;
  }

  *v30 = *v2;
  v30[2] = BYTE2(v9);
  v30[3] = BYTE3(v9);
  v30[4] = BYTE4(v9);
  v30[5] = BYTE5(v9);
  v30[6] = BYTE6(v9);
  v30[7] = HIBYTE(v9);
  *&v30[8] = v10;
  v30[10] = BYTE2(v10);
  v30[11] = BYTE3(v10);
  v30[12] = BYTE4(v10);
  v30[13] = BYTE5(v10);
  v12 = BYTE6(v10);
  v31 = BYTE6(v10);
  if (BYTE6(v10) >= a2)
  {
    if (BYTE6(v10) >= a1)
    {
      v17 = a2 - a1;
      if (!__OFSUB__(a2, a1))
      {
        bzero(&v30[a1], v17);
        v18 = *v30;
        v19 = *&v30[8] | ((*&v30[12] | (v31 << 16)) << 32);
        result = outlined consume of Data._Representation(v9, v10);
        *v6 = v18;
        *(v6 + 8) = v19;
        return result;
      }

      goto LABEL_81;
    }

    goto LABEL_78;
  }

  if (a2 <= 0x7FFFFFFE)
  {
    *&v32 = *v30;
    *(&v32 + 6) = *&v30[6];
    v3 = type metadata accessor for __DataStorage();
    v9 = swift_allocObject();
    v2 = v9;
    __DataStorage.init(bytes:length:)(&v32, BYTE6(v10));
    if (BYTE6(v10) >= v8)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v2 = v9;
LABEL_73:
        __DataStorage.resetBytes(in:)(v8, a2);
LABEL_74:
        v22 = v2 | 0x4000000000000000;
        result = outlined consume of Data._Representation(*v6, *(v6 + 8));
        *v6 = a2 << 32;
        goto LABEL_75;
      }

      v24 = *(v9 + 16);
      if (v24)
      {
        v25 = *(v9 + 40);
        v15 = __OFSUB__(0, v25);
        v26 = -v25;
        if (v15)
        {
          __break(1u);
          goto LABEL_95;
        }

        v10 = v26 + v24;
      }

      else
      {
        v10 = 0;
      }

      v28 = swift_allocObject();
      v2 = v28;
      *(v28 + 16) = 0;
      v3 = v28 + 16;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 40) = 0;
      if (!v12)
      {
        *(v28 + 64) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *v3 = 0;
LABEL_72:

        goto LABEL_73;
      }

      if (one-time initialization token for vmOpsThreshold == -1)
      {
LABEL_65:
        if (v12 >= static __DataStorage.vmOpsThreshold)
        {
          *(v2 + 24) = v12;
          *(v2 + 32) = v12;
          *(v2 + 64) = 1;
          LODWORD(v32) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
          result = malloc_type_malloc(v12, v32 << 32);
          if (!result)
          {
            goto LABEL_99;
          }

          *v3 = result;
        }

        else
        {
          *(v2 + 24) = v12;
          LODWORD(v32) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
          result = malloc_type_malloc(v12, v32 << 32);
          if (!result)
          {
            goto LABEL_98;
          }

          *(v2 + 16) = result;
          *(v2 + 32) = v12;
          *(v2 + 64) = 1;
        }

        specialized static __DataStorage.move(_:_:_:)(result, v10, v12);
        goto LABEL_72;
      }

LABEL_95:
      swift_once();
      goto LABEL_65;
    }

    goto LABEL_85;
  }

  *&v32 = *v30;
  *(&v32 + 6) = *&v30[6];
  type metadata accessor for __DataStorage();
  v2 = swift_allocObject();
  __DataStorage.init(bytes:length:)(&v32, BYTE6(v10));
  type metadata accessor for Data.RangeReference();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = BYTE6(v10);
  *&v32 = v23;
  *(&v32 + 1) = v2;
  if (BYTE6(v10) >= v8)
  {
    Data.LargeSlice.ensureUniqueReference()();
    v2 = *(&v32 + 1);
    __DataStorage.resetBytes(in:)(v8, a2);
    v8 = v32;
    if (*(v32 + 24) >= a2)
    {
      goto LABEL_44;
    }

    if (*(v32 + 16) > a2)
    {
      __break(1u);
LABEL_42:
      if (v8 > 0)
      {
        goto LABEL_91;
      }

      type metadata accessor for __DataStorage();
      v2 = swift_allocObject();
      __DataStorage.init(length:)(a2);
      type metadata accessor for Data.RangeReference();
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = a2;
      goto LABEL_44;
    }

    goto LABEL_12;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
LABEL_52:
    if (v3 < static __DataStorage.vmOpsThreshold)
    {
      break;
    }

    *(v2 + 24) = v3;
    *(v2 + 32) = v3;
    *(v2 + 64) = 1;
    LODWORD(v32) = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
    result = malloc_type_malloc(v3, v32 << 32);
    if (!result)
    {
      goto LABEL_97;
    }

    *v10 = result;
LABEL_57:
    specialized static __DataStorage.move(_:_:_:)(result, v29, v3);
LABEL_58:

LABEL_59:
    __DataStorage.resetBytes(in:)(v8, a2);
    if (v5 < a2)
    {
      LODWORD(v4) = a2;
      if (a2 < v9)
      {
        continue;
      }
    }

    v22 = v2 | 0x4000000000000000;
    result = outlined consume of Data._Representation(*v6, *(v6 + 8));
    *v6 = v9 | (v4 << 32);
    goto LABEL_75;
  }

  *(v2 + 24) = v3;
  LODWORD(v32) = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
  result = malloc_type_malloc(v3, v32 << 32);
  if (result)
  {
    *(v2 + 16) = result;
    *(v2 + 32) = v3;
    *(v2 + 64) = 1;
    goto LABEL_57;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

void Data.InlineSlice.resetBytes(in:)(uint64_t a1, uint64_t a2)
{
  if (v2[1] < a1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Data.InlineSlice.ensureUniqueReference()();
  __DataStorage.resetBytes(in:)(a1, a2);
  if (v2[1] >= a2)
  {
    return;
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_8;
  }

  if (*v2 > a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v2[1] = a2;
}

double _PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_sSdmMd, &_sSdmMR, &_sSdmmMd, &_sSdmmMR);
    swift_willThrow();
    return result;
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E63B0];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 80);
      v67 = lazy protocol witness table accessor for type Double and conformance Double();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E63B0], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }

  return result;
}

uint64_t BPlistScanner.scanReal(rawTypeMarker:index:objectRangeEndIndex:)(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2 + 1;
  if ((result & 0xF) != 3)
  {
    if ((result & 0xF) != 2)
    {
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v11 = 0;
      v11[1] = 0;
      return swift_willThrow();
    }

    if (a3 - v4 >= 4)
    {
      v5 = v3[2];
      v6 = v3[4];
      if (v6 >= v5)
      {
        if ((v5 - *v3) >= 0)
        {
          if ((v6 - v5) >= 0)
          {
            if ((*v3 + v3[1] - v6) >= 0)
            {
              v7 = (a2[1] << 24) | (a2[2] << 16);
              v8 = 4;
              v9 = 3;
LABEL_18:
              v14 = v7 | (a2[v9] << 8) | a2[v8];
              v15 = swift_allocObject();
              *(v15 + 16) = v14;
              *(v15 + 24) = v8;
              return v15 | 0x7000000000000000;
            }

            goto LABEL_25;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v10 = xmmword_181247330;
    return swift_willThrow();
  }

  if (a3 - v4 < 8)
  {
    goto LABEL_10;
  }

  v12 = v3[2];
  v13 = v3[4];
  if (v13 < v12)
  {
    goto LABEL_20;
  }

  if ((v12 - *v3) < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v13 - v12) < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*v3 + v3[1] - v13) >= 0)
  {
    v7 = (a2[1] << 56) | (a2[2] << 48) | (a2[3] << 40) | (a2[4] << 32) | (a2[5] << 24) | (a2[6] << 16);
    v8 = 8;
    v9 = 7;
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t BPlistMap.Value.realValue<A, B>(in:as:for:_:)@<X0>(void *a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t (*a8)(uint64_t, void, uint64_t)@<X8>, uint64_t a9)
{
  v161 = a8;
  v162 = a7;
  v166 = a2;
  v167 = a3;
  v160 = a1;
  v158 = a9;
  v163 = a5;
  v157 = type metadata accessor for Optional();
  v159 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v12 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v146 - v14;
  v165 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v156 = v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v146 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v146 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v154 = v146 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = v146 - v27;
  v169 = a6;
  v28 = a4;
  v168 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v168);
  v30 = v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v146 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v146 - v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v146 - v41;
  v51 = MEMORY[0x1EEE9AC00](v43);
  v53 = v146 - v52;
  if (v28 >> 60 != 7)
  {
    if (v28 >> 60 == 8)
    {
      v54 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (*((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != 1 || (v54 & 0x8000000000000000) == 0)
      {
        v171 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        return dispatch thunk of FloatingPoint.init<A>(_:)();
      }

      v151 = v50;
      v152 = v49;
      v171 = 0;
      v172 = 0xE000000000000000;
      v55 = v48;
      _StringGuts.grow(_:)(52);
      v150 = "ex";
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      v170 = v54;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v56);

      v149 = "Parsed property list number <";
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v159 = v171;
      v157 = v172;
      v164 = type metadata accessor for DecodingError();
      v160 = swift_allocError();
      v153 = v57;
      v156 = v55;
      v58 = v55 + 16;
      v59 = *(v55 + 2);
      v60 = v168;
      v59(v53, v167, v168);
      v147 = v59;
      v148 = v58;
      v59(v42, v53, v60);
      v61 = v165;
      v62 = v169;
      v146[0] = *(v165 + 48);
      v146[1] = v165 + 48;
      if ((v146[0])(v42, 1, v169) == 1)
      {
        v63 = *(v156 + 1);
        v63(v42, v60);
        _CodingPathNode.path.getter(v166);
      }

      else
      {
        v97 = v155;
        (*(v61 + 32))(v155, v42, v62);
        v98 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v100 = v158;
        *(inited + 56) = v62;
        *(inited + 64) = v100;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v61 + 16))(boxed_opaque_existential_0, v97, v62);
        v171 = v98;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v61 + 8))(v97, v62);
        v63 = *(v156 + 1);
      }

      v63(v53, v60);
      v102 = v153;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v103 = *MEMORY[0x1E69E6B00];
      v104 = v164;
      v105 = *(*(v164 - 8) + 104);
      v106 = *(v164 - 8) + 104;
      v105(v102, *MEMORY[0x1E69E6B00], v164);
      v107 = v160;
      swift_willThrow();

      v108 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if ((*((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 1) != 0 || (v108 & 0x8000000000000000) == 0)
      {
        v171 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        return dispatch thunk of FloatingPoint.init<A>(_:)();
      }

      v160 = v106;
      v161 = v105;
      LODWORD(v162) = v103;
      v163 = v63;
      v171 = 0;
      v172 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, v150 | 0x8000000000000000);
      v170 = v108;
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v109);

      MEMORY[0x1865CB0E0](0xD000000000000012, v149 | 0x8000000000000000);
      MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v110 = v171;
      v159 = v172;
      swift_allocError();
      v157 = v111;
      v112 = v152;
      v113 = v168;
      v114 = v147;
      v147(v152, v167, v168);
      v115 = v151;
      v114(v151, v112, v113);
      v116 = v169;
      if ((v146[0])(v115, 1, v169) == 1)
      {
        v117 = v163;
        v163(v115, v113);
        _CodingPathNode.path.getter(v166);
        v117(v112, v113);
      }

      else
      {
        v167 = v110;
        v128 = v165;
        v129 = v154;
        (*(v165 + 32))(v154, v115, v116);
        v130 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v131 = swift_initStackObject();
        *(v131 + 16) = xmmword_181218E20;
        v132 = v158;
        *(v131 + 56) = v116;
        *(v131 + 64) = v132;
        v133 = __swift_allocate_boxed_opaque_existential_0((v131 + 32));
        (*(v128 + 16))(v133, v129, v116);
        v171 = v130;
        v104 = v164;
        specialized Array.append<A>(contentsOf:)(v131);
        (*(v128 + 8))(v129, v116);
        v163(v112, v113);
      }

      v134 = v157;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v161(v134, v162, v104);
    }

    else
    {
      v164 = v28;
      v70 = *(v48 + 2);
      v71 = v168;
      v72 = v48;
      v70(v33, v167, v168, v51);
      (v70)(v30, v33, v71);
      v73 = v165;
      v74 = v169;
      if ((*(v165 + 48))(v30, 1, v169) == 1)
      {
        v75 = *(v72 + 1);
        v75(v30, v71);
        _CodingPathNode.path.getter(v166);
        v75(v33, v71);
      }

      else
      {
        v77 = v156;
        (*(v73 + 32))(v156, v30, v74);
        v78 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v79 = swift_initStackObject();
        *(v79 + 16) = xmmword_181218E20;
        v80 = v158;
        *(v79 + 56) = v74;
        *(v79 + 64) = v80;
        v81 = __swift_allocate_boxed_opaque_existential_0((v79 + 32));
        (*(v73 + 16))(v81, v77, v74);
        v171 = v78;
        specialized Array.append<A>(contentsOf:)(v79);
        (*(v73 + 8))(v77, v74);
        (*(v72 + 1))(v33, v71);
      }

      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5Tm(v160, v164, BPlistMap.Value.debugDataTypeDescription.getter, v82);
    }

    return swift_willThrow();
  }

  v64 = v159;
  v156 = v20;
  v65 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v66 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  if (v66 == 8)
  {
    v67 = v163;
    v68 = v157;
    if ((~v65 & 0x7FF0000000000000) == 0 && (v65 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return dispatch thunk of static FloatingPoint.nan.getter();
    }

    v154 = v44;
    v155 = v46;
    v83 = v48;
    v171 = v65;
    lazy protocol witness table accessor for type Double and conformance Double();
    dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
    v84 = *(v67 - 1);
    if ((*(v84 + 48))(v12, 1, v67) != 1)
    {
      return (*(v84 + 32))(v161, v12, v67);
    }

    (*(v64 + 8))(v12, v68);
    v171 = 0;
    v172 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814848F0);
    Double.write<A>(to:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    v85 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v85);

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v161 = v172;
    v162 = v171;
    v163 = type metadata accessor for DecodingError();
    v164 = swift_allocError();
    v160 = v86;
    v87 = v83;
    v88 = v83[2];
    v89 = v154;
    v90 = v168;
    (v88)(v154, v167, v168);
    v91 = v155;
    (v88)(v155, v89, v90);
    v92 = v165;
    v93 = v169;
    if ((*(v165 + 48))(v91, 1, v169) != 1)
    {
      (*(v92 + 32))(v156, v91, v93);
      v135 = _CodingPathNode.path.getter(v166);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v136 = swift_initStackObject();
      *(v136 + 16) = xmmword_181218E20;
      v137 = v158;
      *(v136 + 56) = v93;
      *(v136 + 64) = v137;
      v138 = __swift_allocate_boxed_opaque_existential_0((v136 + 32));
      v139 = v156;
      (*(v92 + 16))(v138, v156, v93);
      v171 = v135;
      specialized Array.append<A>(contentsOf:)(v136);
      (*(v92 + 8))(v139, v93);
      v87[1](v89, v90);
      goto LABEL_40;
    }

    v94 = v87[1];
    v94(v91, v90);
    _CodingPathNode.path.getter(v166);
    v95 = v89;
    v96 = v90;
LABEL_33:
    v94(v95, v96);
LABEL_40:
    v144 = v160;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v163 - 1) + 104))(v144, *MEMORY[0x1E69E6B00]);
    return swift_willThrow();
  }

  v76 = v163;
  if (v66 == 4)
  {
    if (!HIDWORD(v65))
    {
      if ((~v65 & 0x7F800000) == 0 && (v65 & 0x7FFFFF) != 0)
      {
        return dispatch thunk of static FloatingPoint.nan.getter();
      }

      v155 = v47;
      v156 = v48;
      v153 = v45;
      LODWORD(v171) = v65;
      lazy protocol witness table accessor for type Float and conformance Float();
      dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
      v118 = *(v76 - 1);
      if ((*(v118 + 48))(v15, 1, v76) != 1)
      {
        return (*(v118 + 32))(v161, v15, v76);
      }

      (*(v64 + 8))(v15, v157);
      v171 = 0;
      v172 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814848F0);
      Float.write<A>(to:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      v119 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v119);

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v161 = v172;
      v162 = v171;
      v163 = type metadata accessor for DecodingError();
      v164 = swift_allocError();
      v160 = v120;
      v121 = v156;
      v122 = *(v156 + 2);
      v123 = v153;
      v124 = v168;
      v122(v153, v167, v168);
      v125 = v155;
      v122(v155, v123, v124);
      v126 = v165;
      v127 = v169;
      if ((*(v165 + 48))(v125, 1, v169) != 1)
      {
        (*(v126 + 32))(v23, v125, v127);
        v140 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v141 = swift_initStackObject();
        *(v141 + 16) = xmmword_181218E20;
        v142 = v158;
        *(v141 + 56) = v127;
        *(v141 + 64) = v142;
        v143 = __swift_allocate_boxed_opaque_existential_0((v141 + 32));
        (*(v126 + 16))(v143, v23, v127);
        v171 = v140;
        specialized Array.append<A>(contentsOf:)(v141);
        (*(v126 + 8))(v23, v127);
        (*(v121 + 1))(v153, v124);
        goto LABEL_40;
      }

      v94 = *(v121 + 1);
      v94(v125, v124);
      _CodingPathNode.path.getter(v166);
      v95 = v153;
      v96 = v124;
      goto LABEL_33;
    }

    __break(1u);
  }

  v171 = 0;
  v172 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v171 = 0xD000000000000023;
  v172 = 0x80000001814848C0;
  v170 = v66;
  v145 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v145);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

NSNumber __swiftcall Int._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger_];
}

uint64_t __PlistEncoderBPlist.encode<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 240))(v9);
  if (result)
  {
    (*(v8 + 16))(v11, a1, a2);
    v13 = v3[5];

    v14 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v11, v13, 0, 0, 0, 0xFFu, a2, a3);
    if (v4)
    {

      return (*(v8 + 8))(v11, a2);
    }

    else
    {
      if (v14)
      {
      }

      else
      {
        v15 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v17 = v16;
        v19 = v18;

        type metadata accessor for _BPlistEncodingFormat.Reference();
        v20 = swift_allocObject();
        *(v20 + 16) = v15;
        *(v20 + 24) = v17;
        *(v20 + 32) = v19;
        *(v20 + 40) = 96;
        *(v20 + 48) = -1;
      }

      (*(v8 + 8))(v11, a2);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::Bool a1)
{
  if ((*(*v1 + 240))())
  {
    swift_retain_n();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized OrderedSet._regenerateHashTable()(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (*v1)
  {
    v3 = *(*v1 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = *(v4 + 16);
  if (v3 || v5 >= 0x10)
  {
    v7 = MEMORY[0x1865CA1B0](v5);
    if (v3 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    v6 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(v4, v8, 0, v3, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        _BPlistEncodingFormat.Reference.hash(into:)(v17);
        result = Hasher._finalize()();
        v8 = 1 << *a3;
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if (v9)
        {
          break;
        }

        v11 = v10 & result;
        v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v14 = v13;
        v16 = v15;

        v17[0] = a3;
        v17[1] = a4;
        v17[2] = v11;
        v18 = v12;
        v19 = v14;
        v20 = v16;
        v21 = 0;
        while (v18)
        {
          _HashTable.BucketIterator.advance()();
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  _BPlistEncodingFormat.Reference.hash(into:)(v21);
  result = Hasher._finalize()();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 & result;
    v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v23 = a4;
    *(&v23 + 1) = a5;
    *&v24 = v12;
    *(&v24 + 1) = v13;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v26 = 0;
    v16 = _HashTable.BucketIterator.currentValue.getter();
    if ((v17 & 1) == 0)
    {
      do
      {

        v19 = specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(v18, a1);

        if (v19)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v21[0] = v23;
        v21[1] = v24;
        v21[2] = v25;
        v22 = v26;
        v16 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v20 & 1) == 0);
    }

    return v16;
  }

  return result;
}

id static Locale.canonicalLanguageIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695D790];

  return static Locale.canonicalLanguageIdentifier(from:)(a1, a2, v2, partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:), closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:));
}

uint64_t URLRequest.httpBody.setter(uint64_t a1, unint64_t a2)
{
  specialized URLRequest.httpMethod.setter(a1, a2, closure #1 in URLRequest.httpBody.setter);

  return outlined consume of Data?(a1, a2);
}

void closure #1 in URLRequest.httpBody.setter(void *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 >> 60 != 15)
  {
    v4 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v6 = a1;
      if (v4 != 2)
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_11;
      }

      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
    }

    else
    {
      if (!v4)
      {
        v10 = a2;
        v11 = a3;
        v12 = BYTE2(a3);
        v13 = BYTE3(a3);
        v14 = BYTE4(a3);
        v15 = BYTE5(a3);
        v5 = a1;
        v3 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v10 length:BYTE6(a3)];
        a1 = v5;
        goto LABEL_12;
      }

      v6 = a1;
      v7 = a2;
      v8 = a2 >> 32;
      if (v8 < v7)
      {
        __break(1u);
      }
    }

    v9 = __DataStorage.bridgedReference(_:)(v7, v8);
LABEL_11:
    v3 = v9;
    a1 = v6;
    goto LABEL_12;
  }

  v3 = 0;
LABEL_12:
  [a1 setHTTPBody_];
}

void *protocol witness for Collection.formIndex(after:) in conformance Data(void *result)
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

uint64_t _PlistKeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_5:
    (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);
    v21 = 0;
    goto LABEL_6;
  }

  v19 = *(a3 + 56);
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(v13, v19 + *(v20 + 72) * v16, AssociatedTypeWitness);
  v21 = 1;
  (*(v20 + 56))(v13, 0, 1, AssociatedTypeWitness);
LABEL_6:
  (*(v11 + 8))(v13, v10);
  return v21;
}

uint64_t _PlistKeyedDecodingContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a4;
  v62 = a2;
  swift_getAssociatedTypeWitness();
  v60 = a6;
  v61 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v46 - v18;
  v50 = AssociatedConformanceWitness;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v59 = v19;
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v47 = &v46 - v25;
  v54 = a1;
  v56 = a5;
  v57 = a7;
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
  v29 = a3;
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_6:
    (*(v58 + 56))(v23, 1, 1, v59);
    (*(v21 + 8))(v23, v20);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v54, v55, v56, v57, v41, &_sypSgmMd, &_sypSgmMR, &_sypSgmmMd, &_sypSgmmMR);
    swift_willThrow();
    return v23 & 1;
  }

  v33 = v51;
  v32 = v52;
  v34 = *(v29 + 56) + *(v51 + 72) * v28;
  v35 = v48;
  (*(v51 + 16))(v48, v34, v52);
  v36 = v49;
  (*(v33 + 32))(v49, v35, v32);
  v37 = v50;
  v38 = *(v50 + 80);
  swift_unknownObjectRetain();
  v39 = swift_checkMetadataState();
  v40 = v53;
  v38(v36, v39, v37);
  (*(v33 + 8))(v36, v32);
  swift_unknownObjectRelease();
  if (!v40)
  {
    v44 = v58;
    v43 = v59;
    (*(v58 + 56))(v23, 0, 1, v59);
    v45 = v47;
    (*(v44 + 32))(v47, v23, v43);
    LOBYTE(v23) = (*(v61 + 40))(v45);
    (*(v44 + 8))(v45, v43);
  }

  return v23 & 1;
}

uint64_t protocol witness for SingleValueEncodingContainer.encodeNil() in conformance __PlistEncoderBPlist()
{
  result = (*(**v0 + 240))();
  if (result)
  {
    swift_retain_n();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t *a5@<X8>, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss30KeyedDecodingContainerProtocol_pMd, &_ss30KeyedDecodingContainerProtocol_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v15 = "ner -- no value found for key ";
    v16 = 0xD00000000000003DLL;
  }

  else
  {
    v28 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd, &_ss24UnkeyedDecodingContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      _StringGuts.grow(_:)(39);

      v26 = 0xD00000000000001DLL;
      v27 = 0x8000000181482300;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v20);

      MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
      v21 = dispatch thunk of CodingKey.stringValue.getter();
      MEMORY[0x1865CB0E0](v21);

      v18 = 3025186;
      v19 = 0xE300000000000000;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v15 = "d null value instead";
    v16 = 0xD00000000000003FLL;
  }

  MEMORY[0x1865CB0E0](v16, v15 | 0x8000000000000000);
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  MEMORY[0x1865CB0E0](v17);

  v18 = 34;
  v19 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x1865CB0E0](v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd, &_ss9CodingKey_p_s13DecodingErrorO7ContextVtMR);
  a5[3] = a3;
  a5[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  _CodingPathNode.path.getter(a2);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v23 = *MEMORY[0x1E69E6AF0];
  v24 = type metadata accessor for DecodingError();
  return (*(*(v24 - 8) + 104))(a5, v23, v24);
}

uint64_t specialized _BPlistEncodingFormat.number<A>(from:)(double a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v7 = *(v3 + 40);
  *(v3 + 40) = 48;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);

  v8 = specialized Set._Variant.insert(_:)(&v12, v3);
  v9 = v12;
  if (v8)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;

    *(v2 + 32) = v10;
  }

  return v9;
}

void Data._Representation.subscript.setter(char a1, uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v6, v7);
      v21 = v6;
      LOWORD(v22) = v7;
      BYTE2(v22) = BYTE2(v7);
      BYTE3(v22) = BYTE3(v7);
      BYTE4(v22) = BYTE4(v7);
      BYTE5(v22) = BYTE5(v7);
      BYTE6(v22) = BYTE6(v7);
      if (a2 < BYTE6(v7))
      {
        *(&v21 + a2) = a1;
        v9 = v21;
        v10 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
LABEL_16:
        *v3 = v9;
        v3[1] = v10;
        return;
      }

      __break(1u);
      goto LABEL_18;
    }

    outlined consume of Data._Representation(v6, v7);
    v21 = v6;
    v22 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    if (a2 >= v6 >> 32 || v6 > a2)
    {
      goto LABEL_19;
    }

    Data.InlineSlice.ensureUniqueReference()();
    v16 = v22;
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v17 = *(v22 + 16);
    if (v17)
    {
      v18 = *(v22 + 40);
      v14 = __OFSUB__(a2, v18);
      v19 = a2 - v18;
      if (!v14)
      {
        *(v17 + v19) = a1;
        v9 = v21;
        v10 = v16 | 0x4000000000000000;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v8 != 2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  outlined consume of Data._Representation(v6, v7);
  v21 = v6;
  v22 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_181234410;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  if (*(v6 + 16) > a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v6 + 24) <= a2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Data.LargeSlice.ensureUniqueReference()();
  v11 = v22;
  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v12 = *(v22 + 16);
  if (v12)
  {
    v13 = *(v22 + 40);
    v14 = __OFSUB__(a2, v13);
    v15 = a2 - v13;
    if (!v14)
    {
      *(v12 + v15) = a1;
      v9 = v21;
      v10 = v11 | 0x8000000000000000;
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
  }

LABEL_25:
  __break(1u);
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  isTaggedPointer = _objc_isTaggedPointer(a1.super.isa);
  v3 = a1.super.isa;
  v4 = v3;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag == 22)
  {
    v12 = [(objc_class *)v4 UTF8String];
    if (!v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    v14 = String.init(utf8String:)(v12);
    if (v15)
    {
LABEL_14:
      v6 = v14;
      v8 = v15;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v15)
    {
      [(objc_class *)v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v6 = v18;
      v8 = v19;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_6:
    if (__CFStringIsCF())
    {
      v6 = 0;

      v8 = 0xE000000000000000;
      goto LABEL_20;
    }

    v9 = v4;
    v10 = String.init(_nativeStorage:)();
    if (v11)
    {
      v6 = v10;
      v8 = v11;

      goto LABEL_20;
    }

    if (![(objc_class *)v9 length])
    {

      v6 = 0;
      v8 = 0xE000000000000000;
      goto LABEL_20;
    }

    v6 = String.init(_cocoaString:)();
    v8 = v16;
LABEL_19:

    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v8 = v7;

LABEL_20:
  v12 = v6;
  v13 = v8;
LABEL_22:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Data(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Data and conformance Data();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Data()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t __PlistEncoderBPlist.wrap<A>(_:for:_:)(char *a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  v92 = a5;
  v102 = a2;
  v103 = a3;
  v113 = a1;
  v96 = a4;
  v98 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  i = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - v12;
  v100 = v5;
  v93 = *(*(v5 + 16) + 16);
  v14 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v16 = v15;
  v18 = v17;
  v97 = type metadata accessor for _BPlistEncodingFormat.Reference();
  v19 = swift_allocObject();
  *(v19 + 24) = v16;
  v99 = (v19 + 24);
  *(v19 + 16) = v14;
  v20 = v7;
  *(v19 + 32) = v18;
  *(v19 + 40) = 96;
  *(v19 + 48) = -1;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  v101 = v19;
  v21 = v98;
  v22 = v96;
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v94 = v5 + 16;
  specialized ContiguousArray._endMutation()();
  v23 = *(v8 + 16);
  v23(v13, v103, v20);
  v23(i, v13, v20);
  if ((*(v21 + 48))(i, 1, v22) != 1)
  {
    goto LABEL_5;
  }

  v24 = *(v8 + 8);
  v24(v13, v20);
  v24(i, v20);
  v21 = v102;

  v20 = v101;
  v8 = v113;
  for (i = *(v113 + 2); i; i = *(v8 + 16))
  {
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SE_p5valuet_Tt1g5(i, 0);
    v113 = specialized Sequence._copyContents(initializing:)(&v110, (v25 + 4), i, v8);
    v13 = *(&v110 + 1);
    v26 = v110;
    v22 = *&v111[0];

    outlined consume of Set<AnyKeyPath>.Iterator._Variant(v26);
    if (v113 == i)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_5:
    v27 = *(v21 + 32);
    v28 = v91;
    v27(v91, i, v22);
    v29 = swift_allocObject();
    v30 = v92;
    v29[5] = v22;
    v29[6] = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29 + 2);
    v27(boxed_opaque_existential_0, v28, v22);
    (*(v8 + 8))(v13, v20);
    v32 = v102;
    v29[7] = v102;
    if (v32 >> 62)
    {
      v20 = v101;
      v8 = v113;
      if (v32 >> 62 != 1)
      {
        v35 = 1;
        goto LABEL_10;
      }

      v33 = ((v32 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v33 = (v32 + 64);
      v20 = v101;
      v8 = v113;
    }

    v34 = *v33;

    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_10:
    v29[8] = v35;
    v21 = v29;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *&v110 = v25;
  v36 = v95;
  specialized MutableCollection<>.sort(by:)(&v110);
  v22 = v36;
  if (!v36)
  {
    v37 = 0;
    v38 = *(v110 + 16);
    v96 = v110;
    v95 = (v110 + 32);
    v102 = v21;
    v98 = v38;
    if (!v38)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v37 >= v96[2])
      {
        goto LABEL_68;
      }

      outlined init with copy of (key: String, value: Encodable)(v95 + 56 * v37, &v106);
      v39 = v37 + 1;
      while (2)
      {
        v110 = v106;
        v111[0] = v107;
        v111[1] = v108;
        v112 = v109;
        v40 = *(&v106 + 1);
        if (!*(&v106 + 1))
        {

          v86 = v94;
          if (v93 >= *(*v94 + 16))
          {

            return 0;
          }

          else
          {
            v87 = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
            if (!v87)
            {
              v87 = specialized ContiguousArray.remove(at:)(*(*v86 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
            }

            v88 = v87;

            return v88;
          }
        }

        v103 = v39;
        v113 = 0;
        v41 = v110;
        outlined init with take of Equatable(v111, &v106);
        if ((v40 & 0x2000000000000000) != 0)
        {
          v42 = HIBYTE(v40) & 0xF;
        }

        else
        {
          v42 = v41 & 0xFFFFFFFFFFFFLL;
        }

        v43 = (v41 >> 59) & 1;
        if ((v40 & 0x1000000000000000) == 0)
        {
          LOBYTE(v43) = 1;
        }

        v44 = 4 << v43;
        v22 = (v40 & 0xFFFFFFFFFFFFFFLL);
        v45 = 15;
        do
        {
          while (1)
          {
            if (4 * v42 == v45 >> 14)
            {

              v52 = MEMORY[0x1865CB280](v41, v40);
              v53 = 1;
              goto LABEL_45;
            }

            v46 = v45 & 0xC;
            v47 = v45;
            if (v46 == v44)
            {
              v51 = v45;
              v47 = _StringGuts._slowEnsureMatchingEncoding(_:)(v45, v41, v40);
              v45 = v51;
            }

            v48 = v47 >> 16;
            if (v47 >> 16 >= v42)
            {
              goto LABEL_65;
            }

            if ((v40 & 0x1000000000000000) != 0)
            {
              break;
            }

            if ((v40 & 0x2000000000000000) != 0)
            {
              v104 = v41;
              *&v105 = v40 & 0xFFFFFFFFFFFFFFLL;
              v49 = &v104;
            }

            else
            {
              v49 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
              if ((v41 & 0x1000000000000000) == 0)
              {
                v92 = v45;
                v49 = _StringObject.sharedUTF8.getter();
                v45 = v92;
              }
            }

            v50 = *(v49 + v48);
            if (v46 == v44)
            {
              goto LABEL_41;
            }

LABEL_36:
            if ((v40 & 0x1000000000000000) != 0)
            {
              goto LABEL_37;
            }

LABEL_25:
            v45 = (v45 & 0xFFFFFFFFFFFF0000) + 65540;
            if (v50 < 0)
            {
              goto LABEL_44;
            }
          }

          v92 = v45;
          v50 = String.UTF8View._foreignSubscript(position:)();
          v45 = v92;
          if (v46 != v44)
          {
            goto LABEL_36;
          }

LABEL_41:
          v45 = _StringGuts._slowEnsureMatchingEncoding(_:)(v45, v41, v40);
          if ((v40 & 0x1000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_37:
          if (v42 <= v45 >> 16)
          {
            goto LABEL_66;
          }

          v45 = String.UTF8View._foreignIndex(after:)();
        }

        while ((v50 & 0x80) == 0);
LABEL_44:
        v54 = String._bridgeToObjectiveCImpl()();

        v52 = [v54 hash];
        swift_unknownObjectRelease();
        v53 = 0;
LABEL_45:
        v55 = v100;
        v56 = *(v100 + 88);
        v58 = *(v56 + 16);
        v57 = *(v56 + 24);
        v59 = *(v56 + 32);
        *(v56 + 16) = v41;
        *(v56 + 24) = v40;
        *(v56 + 32) = v52;
        v60 = *(v56 + 40);
        *(v56 + 40) = v53;

        outlined consume of _BPlistEncodingFormat.Reference.Backing(v58, v57, v59, v60);
        v61 = *(v55 + 88);

        LOBYTE(v57) = specialized Set._Variant.insert(_:)(&v104, v61);

        v62 = v104;
        v64 = v101;
        v63 = v102;
        if (v57)
        {
          v65 = swift_allocObject();
          *(v65 + 24) = 0;
          *(v65 + 32) = 0;
          *(v65 + 16) = 2;
          *(v65 + 40) = -112;
          *(v65 + 48) = -1;
          *(v55 + 88) = v65;
        }

        v66 = *(&v107 + 1);
        v67 = v108;
        v68 = __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
        v69 = v113;
        v70 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v68, v63, v41, v40, 0, 0, v66, v67);
        v22 = v69;
        if (v69)
        {

          __swift_destroy_boxed_opaque_existential_1(&v106);
          v90 = v94;
          if (v93 < *(*v94 + 16))
          {
            if (!specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew()))
            {
              specialized ContiguousArray.remove(at:)(*(*v90 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
            }
          }

          swift_willThrow();
        }

        v71 = v70;

        if (!v71)
        {
          v72 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v74 = v73;
          v76 = v75;
          v71 = swift_allocObject();
          *(v71 + 16) = v72;
          *(v71 + 24) = v74;
          *(v71 + 32) = v76;
          *(v71 + 40) = 96;
          *(v71 + 48) = -1;
        }

        v77 = *(v64 + 40);
        if ((v77 & 0xF0) != 0x60)
        {
          goto LABEL_69;
        }

        v79 = *(v64 + 24);
        v78 = *(v64 + 32);
        v104 = *(v64 + 16);
        v80 = v104;
        *&v105 = v79;
        *(&v105 + 1) = v78;
        *(v64 + 16) = 2;
        v81 = v99;
        *v99 = 0;
        v81[1] = 0;
        *(v64 + 40) = -112;

        outlined consume of _BPlistEncodingFormat.Reference.Backing(v80, v79, v78, v77);
        specialized OrderedDictionary.subscript.setter(v71, v62);
        v82 = *(v64 + 16);
        v83 = *(v64 + 24);
        v84 = *(v64 + 32);
        *(v64 + 16) = v104;
        *(v64 + 24) = v105;
        v85 = *(v64 + 40);
        *(v64 + 40) = 96;
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v82, v83, v84, v85);
        __swift_destroy_boxed_opaque_existential_1(&v106);
        v38 = v98;
        v37 = v103;
        if (v103 == v98)
        {
LABEL_14:
          v109 = 0;
          v107 = 0u;
          v108 = 0u;
          v39 = v38;
          v106 = 0u;
          continue;
        }

        break;
      }
    }
  }

LABEL_70:

  __break(1u);
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1865CA1B0](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1865CA1C0](v10, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

void _BPlistEncodingFormat.Writer.appendTrue()(_BYTE *result)
{
  v2 = result;
  v3 = *(v1 + 32);
  if (v3 == 0x2000)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v4 + 0x2000;
    }

    else
    {
      v5 = 0;
    }

    Data._Representation.append(contentsOf:)(v4, v5);
    v3 = 0;
  }

  *(*(v1 + 16) + v3) = v2;
  v6 = __OFADD__(v3, 1);
  v7 = v3 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v7;
  }
}

id static Locale.canonicalLanguageIdentifier(from:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *MEMORY[0x1E695E4A8];
  v8 = String._bridgeToObjectiveCImpl()();
  v9 = a3(v7, v8);
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = v25;
    }

LABEL_21:

    return v24;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v14;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v16 = v12;
    v17 = String.init(_nativeStorage:)();
    if (v18)
    {
      v19 = v17;

      return v19;
    }

    if (![v16 length])
    {

      return 0;
    }

    v24 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v12 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v20)
    {
      v21 = result;

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(double a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v31 = specialized _BPlistEncodingFormat.number<A>(from:)(a1);
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  v8 = v7;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v6, v7))
  {

    v9 = MEMORY[0x1865CB280](v6, v8);
    v10 = 1;
  }

  else
  {
    v11 = String._bridgeToObjectiveCImpl()();

    v9 = [v11 hash];
    swift_unknownObjectRelease();
    v10 = 0;
  }

  v12 = *(v4 + 88);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = *(v12 + 32);
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v9;
  v16 = *(v12 + 40);
  *(v12 + 40) = v10;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v13, v14, v15, v16);

  v17 = specialized Set._Variant.insert(_:)(&v29, v12);

  v18 = v29;
  if (v17)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 2;
    *(v19 + 40) = -112;
    *(v19 + 48) = -1;

    *(v4 + 88) = v19;
  }

  v21 = *(v5 + 40);
  if ((v21 & 0xF0) == 0x60)
  {
    v23 = *(v5 + 24);
    v22 = *(v5 + 32);
    v29 = *(v5 + 16);
    v24 = v29;
    *&v30 = v23;
    *(&v30 + 1) = v22;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = 2;
    *(v5 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v24, v23, v22, v21);
    specialized OrderedDictionary.subscript.setter(v31, v18);
    v25 = *(v5 + 16);
    v26 = *(v5 + 24);
    v27 = *(v5 + 32);
    *(v5 + 16) = v29;
    *(v5 + 24) = v30;
    v28 = *(v5 + 40);
    *(v5 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v25, v26, v27, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 432))(ObjectType, v11);
  if (a2)
  {
    type metadata accessor for NSURLResourceKey(0);

    a2 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v18[4] = partial apply for closure #1 in NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:);
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool);
  v18[3] = &block_descriptor_1;
  v15 = _Block_copy(v18);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(a4);

  v16 = __NSFileManagerEnumeratorAtURL(v6, v13, a2, a3, v15);
  _Block_release(v15);

  return v16;
}

uint64_t sub_18095552C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t __NSFileManagerEnumeratorAtURL(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ____NSFileManagerEnumeratorAtURL_block_invoke;
  v6[3] = &unk_1E69F36B0;
  v6[4] = a5;
  return [a1 enumeratorAtURL:a2 includingPropertiesForKeys:a3 options:a4 errorHandler:v6];
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a2, v7);

  v5 = a3;
  LOBYTE(v4) = v4(v7, v5);

  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t closure #1 in NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4)
{
  if (a3)
  {
    v9 = *a1;

    v7 = a3(&v9, a2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(a3, a4);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void protocol witness for Collection.startIndex.getter in conformance Data(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1] >> 62;
  if (v3 > 1)
  {
    v5 = 0;
    if (v3 == 2)
    {
      v5 = *(v2 + 16);
    }

    *a1 = v5;
  }

  else
  {
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4;
  }
}

void protocol witness for Collection.endIndex.getter in conformance Data(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      *a1 = *(v2 + 24);
    }

    else
    {
      *a1 = 0;
    }
  }

  else
  {
    v5 = BYTE6(v3);
    v6 = v2 >> 32;
    if (!v4)
    {
      v6 = v5;
    }

    *a1 = v6;
  }
}

id @objc NSString._pathByInsertingResolveFlags(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = a1;
  a4(a3);

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

Swift::String __swiftcall NSString._urlStringByInsertingQueryResolveFlags(_:)(Swift::UInt32 a1)
{
  v91 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v1;
  v5 = v4;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v9 = v8;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v13 = [v5 UTF8String];
      if (!v13)
      {
        __break(1u);
        goto LABEL_65;
      }

      v15 = String.init(utf8String:)(v13);
      if (v16)
      {
LABEL_15:
        v7 = v15;
        v9 = v16;

        goto LABEL_20;
      }

      __break(1u);
    }

    LOWORD(v74[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = *(&v76 + 1);
      v7 = v76;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v76) = 0;
  v85[0]._countAndFlagsBits = 0;
  LOBYTE(v74[0]) = 0;
  LOBYTE(v51) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v7 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_20;
  }

  v10 = v5;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v7 = v11;
    v9 = v12;

    goto LABEL_20;
  }

  v85[0]._countAndFlagsBits = [v10 length];
  if (!v85[0]._countAndFlagsBits)
  {

    goto LABEL_10;
  }

  v7 = String.init(_cocoaString:)();
  v9 = v17;
LABEL_20:

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v9, 1, v74);
  v82 = v74[6];
  v83 = v74[7];
  v84[0] = v75[0];
  *(v84 + 10) = *(v75 + 10);
  v78 = v74[2];
  v79 = v74[3];
  v80 = v74[4];
  v81 = v74[5];
  v76 = v74[0];
  v77 = v74[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v76) != 1)
  {
    v46 = v7;
    v18 = v76;
    v49 = *(&v76 + 9);
    v50 = BYTE13(v76);
    v48 = HIBYTE(v76);
    v70 = v79;
    v71 = v80;
    v72 = v81;
    v73 = v82;
    v68 = v77;
    v69 = v78;
    v47 = *&v84[0];
    v66 = *(v84 + 8);
    v67 = WORD4(v84[1]);
    if (!v83 && (BYTE14(v76) & 1) != 0 && v76)
    {
      if (*(v76 + 168))
      {
        v19 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v19 = String.subscript.getter();
      }

      MEMORY[0x1865CAE80](v19);
    }

    v20 = String._removingPathResolveFlags()();

    if ((v20._object & 0x1000000000000000) != 0)
    {
      v85[0] = v20;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v32 = String._bridgeToObjectiveCImpl()();

      v33 = [v32 _fastCharacterContents];
      v34 = v32;
      v44 = v33;
      if (v33)
      {
        v85[0] = v20;
        StringProtocol._ephemeralString.getter();
        v35 = String._bridgeToObjectiveCImpl()();

        v36 = [v35 length];
        swift_unknownObjectRelease();
        v23 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v44, v36, 0x10u, 1);
      }

      else
      {
        v23 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v20._countAndFlagsBits, v20._object, 0x10u, 1);
      }
    }

    else
    {
      if ((v20._object & 0x2000000000000000) == 0)
      {
        if ((v20._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v21 = ((v20._object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v22 = v20._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v21, v22, 0x10u, 1))
        {
LABEL_63:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

LABEL_36:

        if (!v47)
        {
          if (v48 != 1 || !v18 || (*(v18 + 192) & 1) != 0)
          {
            goto LABEL_38;
          }

          v31 = String.subscript.getter();
          MEMORY[0x1865CAE80](v31);
        }

LABEL_38:
        v24 = String._insertingQueryResolveFlags(_:)(a1);

        if (v24.value._object)
        {
          if ((v24.value._object & 0x1000000000000000) != 0)
          {
            v85[0] = v24.value;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v37 = String._bridgeToObjectiveCImpl()();

            v38 = [v37 _fastCharacterContents];
            v39 = v37;
            v45 = v38;
            if (v38)
            {
              v85[0] = v24.value;
              StringProtocol._ephemeralString.getter();
              v40 = String._bridgeToObjectiveCImpl()();

              v41 = [v40 length];
              swift_unknownObjectRelease();
              v42 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v45, v41, 0x40u, 1);
            }

            else
            {
              v42 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v24.value._countAndFlagsBits, v24.value._object, 0x40u, 1);
            }

            v7 = v46;
            if ((v42 & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if ((v24.value._object & 0x2000000000000000) != 0)
            {
              v26 = (v24.value._object >> 56) & 0xF;
              v85[0]._countAndFlagsBits = v24.value._countAndFlagsBits;
              v85[0]._object = (v24.value._object & 0xFFFFFFFFFFFFFFLL);
              v25 = v85;
            }

            else if ((v24.value._countAndFlagsBits & 0x1000000000000000) != 0)
            {
              v25 = ((v24.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
              v26 = v24.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = _StringObject.sharedUTF8.getter();
            }

            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v25, v26, 0x40u, 1))
            {
              goto LABEL_63;
            }
          }
        }

        v85[0]._countAndFlagsBits = v18;
        LOBYTE(v85[0]._object) = 0;
        *(&v85[0]._object + 1) = v49;
        BYTE5(v85[0]._object) = v50;
        HIWORD(v85[0]._object) = 0;
        v85[3] = v70;
        v85[4] = v71;
        v85[5] = v72;
        v85[1] = v68;
        v85[2] = v69;
        v86 = v73;
        v87 = v20;
        v88 = v24;
        v89 = v66;
        v90 = v67;
        v27 = URLComponents._URLComponents.computedString.getter();
        if (v28)
        {
          v29 = v27;
          v30 = v28;

          v7 = v29;
          v9 = v30;
        }

        v51 = v18;
        v52 = 0;
        v53 = v49;
        v54 = v50;
        v55 = 0;
        v58 = v70;
        v59 = v71;
        v60 = v72;
        v56 = v68;
        v57 = v69;
        v61 = v73;
        v62 = v20;
        v63 = v24;
        v64 = v66;
        v65 = v67;
        outlined destroy of URLComponents(&v51);
        goto LABEL_52;
      }

      v85[0]._countAndFlagsBits = v20._countAndFlagsBits;
      v85[0]._object = (v20._object & 0xFFFFFFFFFFFFFFLL);
      v23 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v85, (v20._object >> 56) & 0xF, 0x10u, 1);
    }

    v7 = v46;
    if ((v23 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_36;
  }

LABEL_52:
  v13 = v7;
  v14 = v9;
LABEL_65:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall String._removingPathResolveFlags()()
{
  v2 = v1;
  v3 = v0;
  if ((specialized Collection.first.getter(v0, v1) & 0x1FF) != 0x2F || (prefixLength = 0, *&v4 = String._pathResolveFlags(prefixLength:)(&prefixLength), (v4 & 0x100000000) != 0))
  {

    goto LABEL_11;
  }

  v5 = prefixLength;
  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = MEMORY[0x1865CB180](15, prefixLength, v3, v2);
    goto LABEL_9;
  }

  if (prefixLength < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < prefixLength)
  {
    goto LABEL_14;
  }

  v7 = (prefixLength << 16) | 4;
LABEL_9:
  v8 = specialized Collection.suffix(from:)(v7, v3, v2);
  v3 = MEMORY[0x1865CAE80](v8);
  v2 = v9;

LABEL_11:
  v4 = v3;
  v5 = v2;
LABEL_15:
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall String._insertingQueryResolveFlags(_:)(Swift::UInt32 a1)
{
  v3 = v2;
  v4 = v1;
  v120 = 0;
  LODWORD(v119) = a1;
  if ((v2 & 0x1000000000000000) != 0)
  {
    v165 = v1;
    v166 = v2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v10 _fastCharacterContents];
    v12 = v10;
    if (v11)
    {
      v165 = v4;
      v166 = v3;
      StringProtocol._ephemeralString.getter();
      v13 = String._bridgeToObjectiveCImpl()();

      v14 = [v13 length];
      swift_unknownObjectRelease();
      v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 0x40u, 0);
    }

    else
    {
      v7 = specialized Sequence.allSatisfy(_:)(v4, v3, 64);
    }

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_13:
    v15 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v15 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v165 = v4;
      v166 = v3;
      MEMORY[0x1EEE9AC00](v7);
      v115 = &v165;
      LOWORD(v116) = 64;

      v16 = v120;
      v17 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, &v114, v4, v3);
      v120 = v16;
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v4, v3, 0x40u, 0);
      }

      v20 = v18;

      v9 = v20;
      v8 = v19;
    }

    else
    {

      v8 = 0;
      v9 = 0xE000000000000000;
    }

    goto LABEL_21;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v2) & 0xF;
    v165 = v4;
    v166 = v2 & 0xFFFFFFFFFFFFFFLL;
    v5 = &v165;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v5 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x40u, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:

  v8 = v4;
  v9 = v3;
LABEL_21:
  v165 = 0;
  v166 = 0;
  v167 = 0;
  *v168 = *v146;
  *&v168[3] = *&v146[3];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0;
  v174 = 1;
  *&v175[3] = *&v145[3];
  *v175 = *v145;
  v177 = 0;
  v176 = 0;
  *&v178 = v8;
  *(&v178 + 1) = v9;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v21 = v8;
  v22 = v9;
  v23 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
  if (!v23)
  {
    v147 = 0;
    v148 = 0;
    v149 = 0;
    *v150 = *v146;
    *&v150[3] = *&v146[3];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    v156 = 1;
    *&v157[3] = *&v145[3];
    *v157 = *v145;
    v158 = 0;
    v159 = 0;
    v160 = v21;
    v161 = v22;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    outlined destroy of URLComponents(&v147);

    goto LABEL_207;
  }

  v24 = v23;
  v117 = v22;
  v118 = v21;
  v25 = MEMORY[0x1E69E7CC0];
  v144 = MEMORY[0x1E69E7CC0];
  v124 = *(v23 + 16);
  if (v124)
  {
    LODWORD(v122) = 0;
    v26 = 0;
    v123 = (v23 + 32);
    v121 = &v147 + 1;
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:

LABEL_217:

        goto LABEL_218;
      }

      v29 = &v123[32 * v26];
      v30 = *v29;
      v31 = v29[1];
      v33 = v29[2];
      v32 = v29[3];
      if ((specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, *v29, v31) & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v45 = *(v27 + 2);
        v44 = *(v27 + 3);
        if (v45 >= v44 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v27);
        }

        *(v27 + 2) = v45 + 1;
        v28 = &v27[32 * v45];
        *(v28 + 4) = v30;
        *(v28 + 5) = v31;
        *(v28 + 6) = v33;
        *(v28 + 7) = v32;
        v144 = v27;
        goto LABEL_25;
      }

      if (!v32)
      {
        goto LABEL_25;
      }

      v34 = HIBYTE(v32) & 0xF;
      v35 = v33 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v36 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (!v36)
      {

        goto LABEL_25;
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        v40 = specialized _parseInteger<A, B>(ascii:radix:)(v33, v32, 10);

        if ((v40 & 0x100000000) != 0)
        {
          goto LABEL_25;
        }

LABEL_95:
        LODWORD(v122) = v40 | v122;
        goto LABEL_25;
      }

      if ((v32 & 0x2000000000000000) != 0)
      {
        v147 = v33;
        v148 = v32 & 0xFFFFFFFFFFFFFFLL;
        if (v33 == 43)
        {
          if (!v34)
          {
            goto LABEL_213;
          }

          v39 = v34 - 1;
          if (v34 != 1)
          {
            LODWORD(v40) = 0;
            v52 = v121;
            while (1)
            {
              v53 = *v52 - 48;
              if (v53 > 9)
              {
                break;
              }

              v54 = 10 * v40;
              if ((v54 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v54 + v53;
              if (__CFADD__(v54, v53))
              {
                break;
              }

              ++v52;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v33 == 45)
        {
          if (!v34)
          {
            goto LABEL_215;
          }

          v39 = v34 - 1;
          if (v34 != 1)
          {
            LODWORD(v40) = 0;
            v46 = v121;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v40;
              if ((v48 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v48 - v47;
              if (v48 < v47)
              {
                break;
              }

              ++v46;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v34)
        {
          LODWORD(v40) = 0;
          v57 = &v147;
          while (1)
          {
            v58 = *v57 - 48;
            if (v58 > 9)
            {
              break;
            }

            v59 = 10 * v40;
            if ((v59 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v40) = v59 + v58;
            if (__CFADD__(v59, v58))
            {
              break;
            }

            v57 = (v57 + 1);
            if (!--v34)
            {
              goto LABEL_92;
            }
          }
        }
      }

      else
      {
        if ((v33 & 0x1000000000000000) != 0)
        {
          v37 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v37 = _StringObject.sharedUTF8.getter();
          v35 = v61;
        }

        v38 = *v37;
        if (v38 == 43)
        {
          if (v35 < 1)
          {
            goto LABEL_214;
          }

          v39 = v35 - 1;
          if (v35 != 1)
          {
            LODWORD(v40) = 0;
            if (!v37)
            {
              goto LABEL_92;
            }

            v49 = v37 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v40;
              if ((v51 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v51 + v50;
              if (__CFADD__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v38 == 45)
        {
          if (v35 < 1)
          {
            goto LABEL_212;
          }

          v39 = v35 - 1;
          if (v35 != 1)
          {
            LODWORD(v40) = 0;
            if (!v37)
            {
              goto LABEL_92;
            }

            v41 = v37 + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v40;
              if ((v43 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v43 - v42;
              if (v43 < v42)
              {
                break;
              }

              ++v41;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v35)
        {
          LODWORD(v40) = 0;
          if (!v37)
          {
LABEL_92:
            LOBYTE(v39) = 0;
            goto LABEL_94;
          }

          while (1)
          {
            v55 = *v37 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v40;
            if ((v56 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v40) = v56 + v55;
            if (__CFADD__(v56, v55))
            {
              break;
            }

            ++v37;
            if (!--v35)
            {
              goto LABEL_92;
            }
          }
        }
      }

      LODWORD(v40) = 0;
      LOBYTE(v39) = 1;
LABEL_94:
      LOBYTE(v125) = v39;
      v60 = v39;

      if ((v60 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_25:
      if (++v26 == v124)
      {

        v62 = v122 | v119;
        v25 = MEMORY[0x1E69E7CC0];
        if (!(v122 | v119))
        {
          v63 = *(v27 + 2);
          if (v63)
          {
            goto LABEL_102;
          }

LABEL_206:
          v147 = 0;
          v148 = 0;
          v149 = 0;
          *v150 = *v146;
          *&v150[3] = *&v146[3];
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v155 = 0;
          v156 = 1;
          *&v157[3] = *&v145[3];
          *v157 = *v145;
          v158 = 0;
          v159 = 0;
          v160 = v118;
          v161 = v117;
          v162 = 0;
          v163 = 0;
          v164 = 0;
          outlined destroy of URLComponents(&v147);

          v4 = 0;
          v3 = 0;
LABEL_207:
          v111 = v4;
          v112 = v3;
          goto LABEL_219;
        }

LABEL_205:
        LODWORD(v147) = v62;
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, 0x65766C6F7365722ELL, 0xE800000000000000, v109, v110);

        v27 = v144;
        v63 = *(v144 + 2);
        if (!v63)
        {
          goto LABEL_206;
        }

        goto LABEL_102;
      }
    }
  }

  v62 = v119;
  if (v119)
  {
    goto LABEL_205;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v63 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v63)
  {
    goto LABEL_206;
  }

LABEL_102:
  v143 = v25;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
  v64 = 0;
  v65 = v143;
  v123 = v27 + 32;
  v124 = v27;
  while (2)
  {
    if (v64 >= *(v27 + 2))
    {
      goto LABEL_211;
    }

    v66 = v63;
    v67 = &v123[32 * v64];
    v68 = *v67;
    v69 = v67[1];
    v71 = v67[2];
    v70 = v67[3];
    if ((v69 & 0x1000000000000000) != 0)
    {
      v147 = *v67;
      v148 = v69;
      v121 = lazy protocol witness table accessor for type String and conformance String();

      StringProtocol._ephemeralString.getter();
      v122 = String._bridgeToObjectiveCImpl()();

      v91 = [v122 _fastCharacterContents];
      v92 = v122;
      if (v91)
      {
        v147 = v68;
        v148 = v69;
        v122 = v91;
        StringProtocol._ephemeralString.getter();
        v119 = String._bridgeToObjectiveCImpl()();

        v121 = [v119 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v122, v121, 0x80u, 1))
        {
          goto LABEL_181;
        }
      }

      else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v68, v69, 0x80u, 1))
      {
        goto LABEL_181;
      }

      goto LABEL_217;
    }

    if ((v69 & 0x2000000000000000) == 0)
    {
      if ((v68 & 0x1000000000000000) != 0)
      {
        v72 = ((v69 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v73 = v68 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = _StringObject.sharedUTF8.getter();
        if (!v72)
        {
          goto LABEL_179;
        }
      }

      if (v73)
      {
        v74 = 0;
        while (1)
        {
          if (*v72 < 0)
          {
            goto LABEL_216;
          }

          v75 = *v72;
          if ((v75 - 39) < 9)
          {
            goto LABEL_114;
          }

          if (*v72 <= 0x24u)
          {
            break;
          }

          if (v75 != 37)
          {
            if (v75 == 38)
            {
              goto LABEL_216;
            }

LABEL_130:
            v80 = v75 - 58;
            if ((v75 - 58) <= 0xFFFFFFF5)
            {
              if (v80 > 6)
              {
LABEL_134:
                if (v75 != 95 && (v75 - 65) >= 0x1A && v75 != 126 && (v75 - 97) >= 0x1A)
                {
                  goto LABEL_216;
                }
              }

              else if (((1 << v80) & 0x63) == 0)
              {
                if (v75 == 61)
                {
                  goto LABEL_216;
                }

                goto LABEL_134;
              }
            }

LABEL_114:
            v76 = v74-- < 1;
            if (v76)
            {
              v74 = 0;
            }

            else if ((v75 - 58) <= 0xFFFFFFF5)
            {
              v77 = v75 - 65;
              v76 = v77 > 0x25;
              v78 = (1 << v77) & 0x3F0000003FLL;
              v79 = v76 || v78 == 0;
              if (v79)
              {
                goto LABEL_216;
              }
            }

            goto LABEL_111;
          }

          if (v74)
          {
            goto LABEL_216;
          }

          v74 = 2;
LABEL_111:
          ++v72;
          if (!--v73)
          {
            v90 = v74 == 0;
            goto LABEL_172;
          }
        }

        if (v75 != 33 && v75 != 36)
        {
          goto LABEL_130;
        }

        goto LABEL_114;
      }

LABEL_179:
      v89 = 1;
      goto LABEL_180;
    }

    v81 = HIBYTE(v69) & 0xF;
    v147 = v68;
    v148 = v69 & 0xFFFFFFFFFFFFFFLL;
    if (!v81)
    {
      goto LABEL_179;
    }

    v82 = 0;
    v83 = &v147;
    do
    {
      if (*v83 < 0)
      {
LABEL_169:
        v89 = 0;
        goto LABEL_180;
      }

      v84 = *v83;
      if ((v84 - 39) < 9)
      {
        goto LABEL_145;
      }

      if (*v83 > 0x24u)
      {
        if (v84 == 37)
        {
          if (v82)
          {
            goto LABEL_169;
          }

          v82 = 2;
          goto LABEL_142;
        }

        if (v84 == 38)
        {
          goto LABEL_169;
        }
      }

      else if (v84 == 33 || v84 == 36)
      {
        goto LABEL_145;
      }

      v88 = v84 - 58;
      if ((v84 - 58) > 0xFFFFFFF5)
      {
        goto LABEL_145;
      }

      if (v88 <= 6)
      {
        if (((1 << v88) & 0x63) != 0)
        {
          goto LABEL_145;
        }

        if (v84 == 61)
        {
          goto LABEL_169;
        }
      }

      if (v84 != 95 && (v84 - 65) >= 0x1A && v84 != 126 && (v84 - 97) >= 0x1A)
      {
        goto LABEL_169;
      }

LABEL_145:
      v76 = v82-- < 1;
      if (v76)
      {
        v82 = 0;
      }

      else if ((v84 - 58) <= 0xFFFFFFF5)
      {
        v85 = v84 - 65;
        v76 = v85 > 0x25;
        v86 = (1 << v85) & 0x3F0000003FLL;
        if (v76 || v86 == 0)
        {
          goto LABEL_169;
        }
      }

LABEL_142:
      ++v83;
      --v81;
    }

    while (v81);
    v90 = v82 == 0;
LABEL_172:
    v89 = v90;
LABEL_180:

    if (!v89)
    {
      goto LABEL_217;
    }

LABEL_181:
    v147 = v68;
    v148 = v69;
    if (!v70)
    {

      goto LABEL_190;
    }

    if ((v70 & 0x1000000000000000) == 0)
    {
      if ((v70 & 0x2000000000000000) != 0)
      {
        v94 = HIBYTE(v70) & 0xF;
        v125 = v71;
        v126 = v70 & 0xFFFFFFFFFFFFFFLL;
        v93 = &v125;
      }

      else if ((v71 & 0x1000000000000000) != 0)
      {
        v93 = ((v70 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v94 = v71 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v93 = _StringObject.sharedUTF8.getter();
      }

      v95 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v93, v94, 0x40u, 1);

      if (!v95)
      {
        goto LABEL_202;
      }

LABEL_189:
      v125 = 61;
      v126 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v71, v70);
      MEMORY[0x1865CB0E0](v125, v126);

      v68 = v147;
      v69 = v148;
LABEL_190:
      v143 = v65;
      v97 = *(v65 + 16);
      v96 = *(v65 + 24);
      if (v97 >= v96 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
        v65 = v143;
      }

      ++v64;
      *(v65 + 16) = v97 + 1;
      v98 = v65 + 16 * v97;
      *(v98 + 32) = v68;
      *(v98 + 40) = v69;
      v63 = v66;
      v79 = v64 == v66;
      v27 = v124;
      if (v79)
      {
        v182 = v178;
        v147 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v105 = BidirectionalCollection<>.joined(separator:)();
        v107 = v106;

        outlined destroy of String?(&v182);
        v147 = 0;
        v148 = 0;
        v149 = 0;
        *v150 = *v146;
        *&v150[3] = *&v146[3];
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
        v156 = 1;
        *&v157[3] = *&v145[3];
        *v157 = *v145;
        v158 = 0;
        v159 = 0;
        v160 = v105;
        v161 = v107;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v4 = URLComponents._URLComponents.query.getter();
        v3 = v108;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *v128 = *v146;
        *&v128[3] = *&v146[3];
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0;
        v134 = 1;
        *&v135[3] = *&v145[3];
        *v135 = *v145;
        v136 = 0;
        v137 = 0;
        v138 = v105;
        v139 = v107;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        outlined destroy of URLComponents(&v125);
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  v125 = v71;
  v126 = v70;
  v99 = lazy protocol witness table accessor for type String and conformance String();

  v122 = v99;
  StringProtocol._ephemeralString.getter();
  v100 = String._bridgeToObjectiveCImpl()();

  v101 = [v100 _fastCharacterContents];
  v102 = v100;
  if (v101)
  {
    v125 = v71;
    v126 = v70;
    v121 = v101;
    StringProtocol._ephemeralString.getter();
    v103 = String._bridgeToObjectiveCImpl()();

    v104 = [v103 length];
    swift_unknownObjectRelease();
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v121, v104, 0x40u, 1))
    {
      goto LABEL_189;
    }
  }

  else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v71, v70, 0x40u, 1))
  {
    goto LABEL_189;
  }

LABEL_202:

  swift_bridgeObjectRelease_n();
LABEL_218:
  v116 = 0;
  v115 = 1152;
  v111 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_219:
  result.value._object = v112;
  result.value._countAndFlagsBits = v111;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t URLComponents._URLComponents.query.getter()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = v1;
  }

  else
  {
    if (*(v0 + 15) & 1) == 0 || !*v0 || (*(*v0 + 192))
    {
      return 0;
    }

    v9 = *(v0 + 128);
    v10 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v10);
    v3 = v11;

    v1 = v9;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v13[0] = v2;
    v13[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v12[2] = v13;
    v12[3] = MEMORY[0x1E69E7CD0];
    v12[4] = 4;

    v5 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v12, v2, v3);
    if (v6 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v5;
    }

    swift_bridgeObjectRelease_n();

    return v7;
  }

  else
  {

    return 0;
  }
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = String.UTF8View._foreignIndex(after:)();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = v3;
  a3[1] = a1;
  a3[2] = a2;
  v4 = v3;
}

double static Optional._castForKVO(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-v8];
  outlined init with copy of Any(a1, v15);
  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    *(a3 + 24) = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(v12 + 32))(boxed_opaque_existential_0, v9, a2);
  }

  else
  {
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t _KeyValueCodingAndObserving.willChangeValue<A>(for:)(void *a1, uint64_t a2, SEL *a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v11 - v6, v5);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  swift_dynamicCast();
  v8 = v11[1];
  _bridgeKeyPathToString(_:)(a1);
  v9 = String._bridgeToObjectiveCImpl()();

  [v8 *a3];

  swift_unknownObjectRelease();
}

unint64_t _SwiftURL.lastPathComponent.getter()
{
  v1 = _SwiftURL.absolutePath(percentEncoded:)(1);
  Path = String._lastPathComponent.getter(v1._countAndFlagsBits, v1._object);
  v4 = v3;

  v5 = _SwiftURL.isFileURL.getter();
  if ((v5 & 1) == 0)
  {
    v40 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v40 = Path & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = *(v0 + 40);
      v51 = Path;
      v52 = v4;
      MEMORY[0x1EEE9AC00](v5);
      v48 = &v51;
      v49 = MEMORY[0x1E69E7CD0];
      v50 = v41;

      v42 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v47, Path, v4);
      if (v43 == 1)
      {
        v44 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Path, v4, MEMORY[0x1E69E7CD0], v41);
        v46 = v45;
      }

      else
      {
        v46 = v43;
        v44 = v42;
      }

      swift_bridgeObjectRelease_n();
      result = v44;
      if (!v46)
      {
        return 0;
      }

      return result;
    }

    return 0;
  }

  v6 = String._droppingTrailingSlashes.getter(Path, v4);
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd, &_ss11_SetStorageCys5UInt8VGMR);
  v9 = static _SetStorage.allocate(capacity:)();
  v10 = v9 + 56;
  v11 = *(v9 + 40);
  v12 = byte_1EEED30F8;
  result = MEMORY[0x1865CD020](v11, byte_1EEED30F8, 1);
  v14 = -1 << *(v9 + 32);
  v15 = result & ~v14;
  v16 = v15 >> 6;
  v17 = *(v9 + 56 + 8 * (v15 >> 6));
  v18 = 1 << v15;
  v19 = *(v9 + 48);
  if (((1 << v15) & v17) != 0)
  {
    v20 = ~v14;
    while (*(v19 + v15) != v12)
    {
      v15 = (v15 + 1) & v20;
      v16 = v15 >> 6;
      v17 = *(v10 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(v10 + 8 * v16) = v18 | v17;
    *(v19 + v15) = v12;
    v21 = *(v9 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_33;
    }

    *(v9 + 16) = v23;
  }

  v24 = byte_1EEED30F9;
  result = MEMORY[0x1865CD020](v11, byte_1EEED30F9, 1);
  v25 = -1 << *(v9 + 32);
  v26 = result & ~v25;
  v27 = v26 >> 6;
  v28 = *(v10 + 8 * (v26 >> 6));
  v29 = 1 << v26;
  v30 = *(v9 + 48);
  if (((1 << v26) & v28) == 0)
  {
LABEL_12:
    *(v10 + 8 * v27) = v29 | v28;
    *(v30 + v26) = v24;
    v32 = *(v9 + 16);
    v22 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v22)
    {
      *(v9 + 16) = v33;
      goto LABEL_14;
    }

LABEL_33:
    __break(1u);
    return result;
  }

  v31 = ~v25;
  while (*(v30 + v26) != v24)
  {
    v26 = (v26 + 1) & v31;
    v27 = v26 >> 6;
    v28 = *(v10 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    if (((1 << v26) & v28) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  v34 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v34 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    return 0;
  }

  v51 = v6;
  v52 = v8;
  MEMORY[0x1EEE9AC00](result);
  v48 = &v51;
  v49 = v9;
  v50 = 4;

  v35 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v47, v6, v8);
  if (v36 == 1)
  {
    v37 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v6, v8, v9, 4);
    v39 = v38;
  }

  else
  {
    v39 = v36;
    v37 = v35;
  }

  result = v37;
  if (!v39)
  {
    return 0;
  }

  return result;
}

unint64_t specialized BidirectionalCollection<>.lastIndex(of:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v8 = result;
  v9 = a2 >> 14;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v12 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a3 >> 14;
  v18 = a5 & 0xFFFFFFFFFFFFFFLL;
  v16 = v12;
  v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if (v7 >> 14 == v9)
    {
      return 0;
    }

    if ((v7 & 0xC) == v11)
    {
      break;
    }

    if (v7 < 0x4000)
    {
      goto LABEL_30;
    }

LABEL_12:
    if ((a5 & 0x1000000000000000) != 0)
    {
      if (v16 < v7 >> 16)
      {
        goto LABEL_32;
      }

      v7 = String.UTF8View._foreignIndex(before:)();
    }

    else
    {
      v7 = (v7 & 0xFFFFFFFFFFFF0000) - 65532;
    }

    result = v7;
    if ((v7 & 0xC) == v11)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
    }

    if (result >> 14 < v9 || result >> 14 >= v13)
    {
      goto LABEL_31;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v19[0] = a4;
        v19[1] = v18;
        result = *(v19 + v14);
      }

      else
      {
        v15 = v17;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        result = *(v15 + v14);
      }
    }

    if (result == v8)
    {
      return v7;
    }
  }

  result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
  v7 = result;
  if (result >= 0x4000)
  {
    goto LABEL_12;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t URLResourceValues.localizedName.getter(void **a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t *_SwiftURL.absoluteSwiftURL.getter()
{
  v1 = *v0;
  v137 = v0[3];
  if (!v137)
  {

    return v0;
  }

  v131 = v0;
  v132 = v1;
  v130 = v0[4];
  v2 = v0[2];

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v2, 0, &v154);
  v3 = *(&v154 + 1);
  v4 = v155;
  v5 = v157;
  v6 = v158;
  v153 = v163;
  v135 = v162;
  v136 = v161;
  v133 = *(&v155 + 1);
  v134 = v154;
  if (*(&v154 + 1))
  {
    v7 = *(&v156 + 1);
    v8 = v158;
    v9 = *(&v157 + 1);
    v127 = v156;
    v128 = v155;
    v126 = *(&v158 + 1);
    v129 = String.removingDotSegments.getter(v159, v160);
    v11 = v10;

    v168 = v134;
    v169 = v3;
    v170 = v4;
    v171 = v127;
    v172 = v7;
    v173 = v5;
    v174 = v9;
    v175 = v8;
    v176 = v126;
    v177 = v129;
    v178 = v11;
    v179 = v136;
    v180 = v135;
    v181 = v163;
    v130 = _SwiftURL.URLStringBuilder.string.getter();
    v13 = v12;
    swift_unknownObjectRelease();
    v138 = v134;
    v139 = v3;
    v140 = v128;
    v141 = v133;
    v142 = v127;
    v143 = v7;
    v144 = v5;
    v145 = v9;
    v146 = v8;
    v147 = v126;
    v148 = v129;
    v149 = v11;
    v150 = v136;
    v151 = v135;
LABEL_15:
    v152 = v163;
    outlined destroy of _SwiftURL.URLStringBuilder(&v138);
    goto LABEL_16;
  }

  v123 = v159;
  v124 = v160;
  v125 = *(&v157 + 1);
  v15 = v157;
  v16 = *(&v158 + 1);
  v17 = v155;
  v129 = *(&v156 + 1);
  v18 = v156;
  ObjectType = swift_getObjectType();
  v20 = (*(v130 + 136))(ObjectType, v130);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v134;
  }

  v23 = v2[72];
  v122 = v21;
  v134 = v22;
  if ((v23 & 1) == 0 || (v2[96] & 1) == 0 || v2[120] != 1 || v2[144] != 1)
  {
    v168 = v22;
    v169 = v21;
    *&v170 = v4;
    *(&v170 + 1) = v133;
    v171 = v18;
    v172 = v129;
    v173 = v15;
    v174 = v125;
    v175 = v6;
    v176 = v16;
    v177 = v123;
    v178 = v124;
    v179 = v136;
    v180 = v135;
    v181 = v163;
    v130 = _SwiftURL.URLStringBuilder.string.getter();
    v13 = v26;
    swift_unknownObjectRelease();
    v138 = v134;
    v139 = v122;
    v140 = v17;
    v141 = v133;
    v142 = v18;
    v143 = v129;
    v144 = v15;
    v145 = v125;
    v146 = v6;
    v147 = v16;
    v148 = v123;
    v149 = v124;
    v150 = v136;
    v151 = v135;
    goto LABEL_15;
  }

  v121 = ObjectType;
  v168 = v137;
  v169 = v130;
  URL._swiftURL.getter();
  v127 = v18;
  v128 = v4;
  if (v24)
  {
    v25 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
  }

  v34 = (*(v130 + 168))(1, v121);
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    v167 = v155;
    outlined destroy of TermOfAddress?(&v167, &_sSSSgMd, &_sSSSgMR);
    v133 = v37;
    v128 = v36;
  }

  v38 = (*(v130 + 184))(1, v121);
  v40 = v25;
  if (v39)
  {
    v41 = v38;
    v42 = v39;
    v166 = v156;
    outlined destroy of TermOfAddress?(&v166, &_sSSSgMd, &_sSSSgMR);
    v129 = v42;
    v127 = v41;
  }

  v164 = v157;
  v165 = v158;
  v43 = v6;
  if (v40 && (*(v40 + 120) & 1) == 0)
  {

    v50 = String.subscript.getter();
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = v50;
    v43 = v6;
    v48 = v136;
    v15 = MEMORY[0x1865CAE80](v57, v52, v54, v56);
    v125 = v58;

    outlined destroy of TermOfAddress?(&v164, &_sSSSgMd, &_sSSSgMR);
  }

  else
  {
    v44 = (*(v130 + 200))(1, v121);
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      outlined destroy of TermOfAddress?(&v164, &_sSSSgMd, &_sSSSgMR);
      v15 = v46;
      v125 = v47;
    }

    v48 = v136;
    if (!v40)
    {
      v49 = v133;
      goto LABEL_35;
    }
  }

  v49 = v133;
  if ((*(v40 + 144) & 1) == 0)
  {

    v61 = String.subscript.getter();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v68 = v63;
    v49 = v133;
    v43 = MEMORY[0x1865CAE80](v61, v68, v65, v67);
    v126 = v69;

    goto LABEL_39;
  }

LABEL_35:
  v59 = (*(v130 + 208))(v121);
  if (v60)
  {
    v126 = v16;
    goto LABEL_40;
  }

  v168 = v59;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v126 = v70;
LABEL_39:
  outlined destroy of TermOfAddress?(&v165, &_sSSSgMd, &_sSSSgMR);
LABEL_40:
  v71 = HIBYTE(v124) & 0xF;
  if ((v124 & 0x2000000000000000) == 0)
  {
    v71 = v123 & 0xFFFFFFFFFFFFLL;
  }

  v132 = v15;
  v119[4] = v40;
  v120 = v43;
  if (!v71)
  {
    v75 = v48;
    v72 = v43;
    v76 = v162;
    v77 = (*(v130 + 248))(1, v121, v130);
    v79 = v78;

    if (v76)
    {
      v80 = v135;
    }

    else
    {
      v93 = (*(v130 + 264))(1, v121, v130);
      if (v94)
      {
        v75 = v93;
      }

      v136 = v75;
      v80 = v135;
      if (v94)
      {
        v80 = v94;
      }
    }

    v74 = v129;
    v95 = v133;
    goto LABEL_66;
  }

  if ((specialized Collection.first.getter(v123, v124) & 0x1FF) == 0x2F)
  {
    v72 = v43;

    v73 = v124;
    v74 = v129;
LABEL_53:
    v92 = v123;
LABEL_65:
    v77 = String.removingDotSegments.getter(v92, v73);
    v110 = v109;

    v79 = v110;

    v80 = v135;
    v95 = v49;
LABEL_66:
    v111 = v77;
    v135 = v80;
    v133 = v95;
    v129 = v74;
    v112 = v134;
    v113 = v122;
    v168 = v134;
    v169 = v122;
    v114 = v128;
    *&v170 = v128;
    *(&v170 + 1) = v95;
    v171 = v127;
    v172 = v74;
    v173 = v132;
    v174 = v125;
    v175 = v72;
    v115 = v126;
    v176 = v126;
    v177 = v111;
    v178 = v79;
    v179 = v136;
    v180 = v80;
    v116 = v127;
    v181 = v153;
    v117 = v79;
    v130 = _SwiftURL.URLStringBuilder.string.getter();
    v13 = v118;
    swift_unknownObjectRelease();

    v138 = v112;
    v139 = v113;
    v140 = v114;
    v141 = v133;
    v142 = v116;
    v143 = v129;
    v144 = v132;
    v145 = v125;
    v146 = v120;
    v147 = v115;
    v148 = v111;
    v149 = v117;
    v150 = v136;
    v151 = v135;
    v152 = v153;
    outlined destroy of _SwiftURL.URLStringBuilder(&v138);
LABEL_16:
    v27 = v131;
    v28 = v131[5];
    v14 = swift_allocObject();
    type metadata accessor for _SwiftURL.ResourceInfo();
    v29 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMR);
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 16) = 0;
    *(v29 + 16) = v30;
    *(v14 + 56) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMR);
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 16) = 0;
    *(v14 + 64) = v31;
    v32 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v130, v13, 1);

    if (v32)
    {
      *(v14 + 16) = v32;
      if ((v32[48] & 1) == 0)
      {

        String.subscript.getter();
      }

      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = v28;
      *(v14 + 48) = 0;
    }

    else
    {

      swift_deallocPartialClassInstance();

      return v27;
    }

    return v14;
  }

  v81 = (*(v130 + 152))(v121, v130);
  v82 = *(v130 + 248);
  if (v81)
  {
    v83 = v82(1, v121, v130);
    v85 = v84;

    v86 = HIBYTE(v85) & 0xF;
    v87 = (v85 & 0x2000000000000000) == 0;
    v49 = v133;
    if (v87)
    {
      v86 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (!v86)
    {
      v168 = 47;
      v169 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v123, v124);
      v92 = v168;
      v73 = v169;
      v74 = v129;
      v72 = v43;
      goto LABEL_65;
    }
  }

  v88 = v82(1, v121, v130);
  v90 = v89;
  v91 = specialized Collection.first.getter(v123, v124);
  if ((v91 & 0x1FF) == 0x2F)
  {

    v73 = v124;
    v74 = v129;
    v72 = v43;
    goto LABEL_53;
  }

  LOBYTE(v168) = 47;
  MEMORY[0x1EEE9AC00](v91);
  v119[2] = &v168;
  specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v119, v88, v90);
  if (v96)
  {

    v97 = v124;

    v73 = v97;
    v49 = v133;
    v92 = v123;
LABEL_63:
    v72 = v120;
    v74 = v129;
    goto LABEL_65;
  }

  String.index(after:)();
  v98 = String.subscript.getter();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v138 = 0;
  v139 = 0xE000000000000000;
  v105 = v124;
  v106 = String.count.getter();
  v130 = v102;
  v107 = Substring.distance(from:to:)();
  v108 = __OFADD__(v106, v107);
  result = (v106 + v107);
  if (!v108)
  {
    MEMORY[0x1865CAED0](result);
    v168 = v98;
    v169 = v100;
    *&v170 = v130;
    *(&v170 + 1) = v104;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    v168 = v123;
    v169 = v105;

    String.append<A>(contentsOf:)();

    v92 = v138;
    v73 = v139;
    v49 = v133;
    goto LABEL_63;
  }

  __break(1u);
  return result;
}