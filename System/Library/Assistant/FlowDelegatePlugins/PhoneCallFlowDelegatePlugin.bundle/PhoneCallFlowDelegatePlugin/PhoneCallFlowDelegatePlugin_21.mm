Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        Hasher.init(_seed:)();
        if (v16)
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v36 - v10;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v40 = v11;
    v41 = v3;
    v36 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v20 = result + 56;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_12:
        v24 = *(v11 + 48);
        v43 = *(v42 + 72);
        v25 = v44;
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v24 + v43 * (v21 | (v14 << 6)), v44, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        Hasher.init(_seed:)();
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v25, v8, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v26 = v41;
        if (__swift_getEnumTagSinglePayload(v8, 1, v41) == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          v27 = v39;
          (*v38)(v39, v8, v26);
          Hasher._combine(_:)(1u);
          lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
          dispatch thunk of Hashable.hash(into:)();
          (*v37)(v27, v26);
        }

        result = Hasher._finalize()();
        v28 = -1 << *(v13 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        v11 = v40;
        if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v20 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v44, *(v13 + 48) + v31 * v43);
        ++*(v13 + 16);
        if (!v18)
        {
          goto LABEL_7;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v20 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {

          v2 = v36;
          goto LABEL_28;
        }

        v23 = *(v15 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v18 = (v23 - 1) & v23;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v13;
  }

  return result;
}

{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (!v8)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v10 + 8 * (v13 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v12) >> 6;
        while (++v14 != v17 || (v16 & 1) == 0)
        {
          v18 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v14);
          if (v19 != -1)
          {
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v10 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v8 &= v8 - 1;
      *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++*(v4 + 16);
    }

    while (v8);
LABEL_6:
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_21;
      }

      v8 = *(v2 + 56 + 8 * v11);
      ++v5;
      if (v8)
      {
        v5 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        type metadata accessor for App();
        lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = static Hasher._hash(seed:_:)();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = specialized _NativeSet._unsafeInsertNew(_:)(*(*(v3 + 48) + (v11 | (v6 << 6))), v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      ;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallOfferOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OngoingCallRCHFlowFactory.makeHandleIntentFlow(app:intent:intentResponse:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v44 = v6;
  v45 = v5;
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v11 = v10;
  v39 = v12;
  v40 = v10;
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  outlined init with copy of SignalProviding(v3, v47);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(&outlined read-only object #0 of OngoingCallRCHFlowFactory.makeHandleIntentFlow(app:intent:intentResponse:));
  v19 = v18;
  v20 = type metadata accessor for HangUpAndCallHandleIntentStrategy(0);
  OUTLINED_FUNCTION_41_1(v20);
  v21 = HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(v47, v19);
  v38 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:)(v4);
  (*(v11 + 16))(v14, v17, v9);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v22);
  v37 = RCHChildFlowFactory.init(producers:)();
  v24 = v4[3];
  v23 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v24);
  (*(v23 + 104))(v47, v24, v23);
  v25 = v48;
  v26 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v46 = v21;
  v27 = *(v26 + 24);
  v28 = lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>, &protocol conformance descriptor for CallingIntentContinueInAppStrategy<A, B>);
  v29 = v27(&v46, v20, v28, v25, v26);

  v30 = v42;
  v31 = v43;
  IntentResolutionRecord.init(app:intent:intentResponse:)();
  v32 = v29(v37, v8);

  (*(v44 + 8))(v8, v45);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v47[0] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015AnyHandleIntentC0CySo011INStartCallF0CSo0ghF8ResponseCGMd, &_s11SiriKitFlow015AnyHandleIntentC0CySo011INStartCallF0CSo0ghF8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<HandleIntentFlowResult<INStartCallIntent, INStartCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
  v34 = AnyHandleIntentFlow.init<A>(_:)();

  (*(v40 + 8))(v17, v39);
  return v34;
}

uint64_t OngoingCallRCHFlowFactory.makePreConfirmedRCHFlow(delegate:intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v47 = v6;
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v37 - v7;
  v8 = type metadata accessor for CATOption();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  v41 = v9;
  OUTLINED_FUNCTION_9_1();
  v11 = v10;
  v45 = v10;
  __chkstk_darwin(v12);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)();
  v21 = *(v18 + 44);
  v42 = *(v11 + 16);
  v42(v16, &v20[v21], v9);
  OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:)(v3);
  outlined init with copy of SignalProviding(v3, v50);
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v22 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
  swift_allocObject();
  v38 = a3;
  v24 = specialized CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(v50, a3, v22, v23);
  v39 = v24;
  v26 = v3[3];
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v26);
  v27 = *(v25 + 104);

  v27(v50, v26, v25);
  v29 = v51;
  v28 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v49 = v24;
  v30 = v41;
  v42(v43, v16, v41);
  (*(v47 + 16))(v46, v20, v48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v31);
  v32 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v33 = *(v28 + 8);
  v34 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR, &protocol conformance descriptor for CallingIntentRCHFlowStrategy<A, B>);
  v35 = v33(&v49, v32, v38, v44, v40, v34, v29, v28);

  (*(v45 + 8))(v16, v30);
  outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartCallIntent, INStartCallIntentResponse>(v20);

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v35;
}

uint64_t OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:)(uint64_t a1)
{
  outlined init with copy of SignalProviding(a1, v5);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(&outlined read-only object #0 of OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:));
  v2 = v1;
  type metadata accessor for HangUpAndCallHandleIntentStrategy(0);
  swift_allocObject();
  v3 = HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v5[0] = v3;
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>, &protocol conformance descriptor for CallingIntentContinueInAppStrategy<A, B>);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v5[0] = v3;
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>, &protocol conformance descriptor for CallingIntentContinueInAppStrategy<A, B>);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
}

uint64_t outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartCallIntent, INStartCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HangUpAndCallHandleIntentStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    (*(v3 + 8))(v6, a1);
    v9 = 1;
  }

  else
  {
    v9 = dispatch thunk of Collection.isEmpty.getter();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9 & 1;
}

uint64_t Optional<A>.emptyToNil.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (Optional<A>.isNilOrEmpty.getter(a1, a2))
  {
    v6 = *(a1 + 16);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    v8 = *(*(a1 - 8) + 16);

    return v8(a3, v3, a1);
  }
}

uint64_t static OutputGenerationManifest.yesNoCallConfirmationManifest(model:_:)@<X0>(uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v5 - 8);
  OUTLINED_FUNCTION_0_71();
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  return a2(a3);
}

uint64_t closure #1 in static OutputGenerationManifest.yesNoCallConfirmationManifest(model:_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of PhoneSnippetModel?(a2, v11);
  v6 = v12;
  if (v12)
  {
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v7 + 16))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    outlined destroy of PhoneSnippetModel?(v11);
  }

  OutputGenerationManifest.responseViewId.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t closure #1 in static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)()
{
  OUTLINED_FUNCTION_1_74();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  OutputGenerationManifest.responseViewId.setter();
  return OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
}

uint64_t static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_0_71();
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in static OutputGenerationManifest.simpleCompletionOutputManifest(responseViewId:)()
{
  OUTLINED_FUNCTION_1_74();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t outlined init with copy of PhoneSnippetModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OutputPublisherWrapper.__allocating_init(outputPublisher:outputPublisherAsync:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v4 + 16);
  outlined init with take of SPHConversation(a2, v4 + 56);
  return v4;
}

uint64_t OutputPublisherWrapper.init(outputPublisher:outputPublisherAsync:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of SPHConversation(a1, v2 + 16);
  outlined init with take of SPHConversation(a2, v2 + 56);
  return v2;
}

uint64_t OutputPublisherWrapper.publish(output:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(OutputPublisherWrapper.publish(output:), 0, 0);
}

uint64_t OutputPublisherWrapper.publish(output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16[3];
  v18 = v17[10];
  v19 = v17[11];
  __swift_project_boxed_opaque_existential_1(v17 + 7, v18);
  v20 = swift_task_alloc();
  v16[4] = v20;
  *v20 = v16;
  v20[1] = OutputPublisherWrapper.publish(output:);
  v26 = v16[2];

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v26, v18, v19, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t OutputPublisherWrapper.publish(output:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t OutputPublisherWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t OutputPublisherWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for OutputPublisherAsync.publish(output:) in conformance OutputPublisherWrapper(uint64_t a1)
{
  v6 = (*(**v1 + 112) + **(**v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t ParameterResolutionRecord<>.isUnsetRelationship.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ParameterResolutionRecord.app.getter();
  v8 = App.isFirstParty()();

  if (!v8)
  {
    return 0;
  }

  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.multicardinalIndex.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = ParameterResolutionRecord.intent.getter();
  v13 = *(a1 + 16);
  v14 = (*(*(a2 + 8) + 8))(v13);

  if (!v14)
  {
    return 0;
  }

  v15 = (v11 & 1) != 0 ? 0 : v9;
  v16 = specialized Array.subscript.getter(v15, v14);

  if (!v16)
  {
    return 0;
  }

  v17 = [v16 relationship];

  if (!v17)
  {
    return 0;
  }

  v18 = ParameterResolutionRecord.intent.getter();
  v19 = ParameterResolutionRecord.result.getter();
  v42 = v18;
  v43 = v19;
  type metadata accessor for INIntentResolutionResult();
  v20 = v18;
  v21 = v19;
  swift_getTupleTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMd, &_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMR);
  if (OUTLINED_FUNCTION_0_72(v22))
  {
  }

  else
  {
    v23 = v42;

    v42 = v20;
    v43 = v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMR);
    if (!OUTLINED_FUNCTION_0_72(v24))
    {

      v17 = v42;
      goto LABEL_17;
    }
  }

  v25 = v41;
  v26 = [v41 unsupportedReason];

  v27 = v42;
  if (v26 != &dword_0 + 1)
  {
LABEL_17:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.siriPhone);
  v29 = v17;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v32 = 136315650;
    v40 = v13;
    swift_getMetatypeMetadata();
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v42);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000000045D050, &v42);
    *(v32 + 22) = 2080;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v42);

    *(v32 + 24) = v38;
    _os_log_impl(&dword_0, v30, v31, "#ParameterResolutionRecord<%s> %s Found unsetRelationship = %s", v32, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

unint64_t type metadata accessor for INIntentResolutionResult()
{
  result = lazy cache variable for type metadata for INIntentResolutionResult;
  if (!lazy cache variable for type metadata for INIntentResolutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntentResolutionResult);
  }

  return result;
}

uint64_t Parse.usoTask.getter()
{
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v69 = v2;
  v70 = v1;
  __chkstk_darwin(v1);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v69 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  v17 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = (&v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v19 + 16);
  v71 = v0;
  v24(v23, v0, v17, v21);
  v25 = OUTLINED_FUNCTION_55();
  v27 = v26(v25);
  if (v27 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v55 = OUTLINED_FUNCTION_55();
    v56(v55);
  }

  else
  {
    if (v27 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      if (v27 == enum case for Parse.NLv4IntentOnly(_:))
      {
        v28 = OUTLINED_FUNCTION_55();
        v29(v28);
        v30 = *v23;
        static ConversionUtils.toUserParse(from:)();
        if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
        {
          outlined destroy of PhoneCallNLIntent?(v7, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static Logger.siriPhone);
          swift_unknownObjectRetain();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v34 = 136315394;
            v72 = 0;
            v73 = 0xE000000000000000;
            v74 = v35;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of Parse.usoTask.getter, 0, 0);
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v74);

            *(v34 + 4) = v36;
            *(v34 + 12) = 2080;
            v72 = v30;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
            v37 = String.init<A>(describing:)();
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v74);

            *(v34 + 14) = v39;
            _os_log_impl(&dword_0, v32, v33, "%s couldn't transform UserDialogAct %s into UserParse to get the UDAs.", v34, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_26_0(v35);
            OUTLINED_FUNCTION_26_0(v34);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return 0;
        }

        (*(v10 + 32))(v16, v7, v8);
        v45 = Parse.transform(userParse:)();
        swift_unknownObjectRelease();
        (*(v10 + 8))(v16, v8);
      }

      else
      {
        if (v27 != enum case for Parse.uso(_:))
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          __swift_project_value_buffer(v46, static Logger.siriPhone);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v49 = 136315138;
            v72 = 0;
            v73 = 0xE000000000000000;
            v74 = v50;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of Parse.usoTask.getter, 0, 0);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v74);

            *(v49 + 4) = v51;
            _os_log_impl(&dword_0, v47, v48, "%s Direct Invocation parse in Parse.usoTask", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            OUTLINED_FUNCTION_26_0(v50);
            OUTLINED_FUNCTION_26_0(v49);
          }

          v52 = OUTLINED_FUNCTION_55();
          v53(v52);
          return 0;
        }

        v40 = OUTLINED_FUNCTION_55();
        v41(v40);
        v42 = v69;
        v43 = v23;
        v44 = v70;
        (*(v69 + 32))(v4, v43, v70);
        USOParse.userParse.getter();
        v45 = Parse.transform(userParse:)();
        (*(v10 + 8))(v13, v8);
        (*(v42 + 8))(v4, v44);
      }

      return v45;
    }

    v57 = OUTLINED_FUNCTION_55();
    v58(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_5();
    (*(v59 + 8))(v23);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.siriPhone);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of Parse.usoTask.getter, 0, 0);
  v61._object = 0x800000000045D070;
  v61._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v61);
  swift_bridgeObjectRetain_n();
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v74 = v65;
    *v64 = 136315138;
    v66 = OUTLINED_FUNCTION_55();
    *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v68);
    _os_log_impl(&dword_0, v62, v63, "%s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_26_0(v65);
    OUTLINED_FUNCTION_26_0(v64);
  }

  OUTLINED_FUNCTION_55();
  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Parse.transform(userParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = v42 - v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v42 - v8;
  __chkstk_darwin(v10);
  v12 = v42 - v11;
  __chkstk_darwin(v13);
  v15 = v42 - v14;
  v48 = type metadata accessor for Parse();
  v16 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  specialized Collection.first.getter(v16);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v2, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136315138;
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v21;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v48, &outlined read-only object #0 of Parse.transform(userParse:), 0xD000000000000015, 0x800000000045D0A0);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v51);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_0, v18, v19, "%s: No user dialog act found in userParse", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    return 0;
  }

  else
  {
    v43 = v9;
    (*(v4 + 32))(v15, v2, v3);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = __swift_project_value_buffer(v23, static Logger.siriPhone);
    v25 = *(v4 + 16);
    v47 = v15;
    v25(v12, v15, v3);
    v42[1] = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = os_log_type_enabled(v26, v27);
    v45 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v46 = v4 + 16;
      v30 = v29;
      v31 = swift_slowAlloc();
      v42[0] = v6;
      *v30 = 136315394;
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v31;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v48, &outlined read-only object #0 of Parse.transform(userParse:), 0xD000000000000015, 0x800000000045D0A0);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v51);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      v25(v43, v12, v3);
      v33 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5();
      v35 = v34;
      v44 = *(v4 + 8);
      v44(v12, v3);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v51);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_0, v26, v27, "%s: Attempting to transform %s into UsoTask.", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v44 = *(v4 + 8);
      v44(v12, v3);
    }

    v37 = v47;
    if (one-time initialization token for transformer != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
    __swift_project_value_buffer(v38, static Transformer<>.transformer);
    v39 = Transformer.transform.getter();
    v39(&v49, v37);

    v44(v37, v3);
    v40 = v49;
  }

  return v40;
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(uint64_t a1, void *a2)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_68_0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  String.uppercased()();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v16 = PhoneCallNLConstants.canonicalName.getter(6);
  v17 = v5;
  v6._countAndFlagsBits = 0x2E65756C61562ELL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7 = String.uppercased()();
  String.append(_:)(v7);

  *(v4 + 32) = v16;
  *(v4 + 40) = v17;
  result = NLContextUpdate.weightedPromptResponseOptions.setter();
  if (a2)
  {

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v9).value;
    if (result - 4 < 2 || result == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_participants)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_424FF0;
      *(v11 + 32) = PhoneCallNLConstants.canonicalName.getter(3);
      *(v11 + 40) = v12;
      *(v11 + 48) = PhoneCallNLConstants.canonicalName.getter(5);
      *(v11 + 56) = v13;
      NLContextUpdate.weightedPromptResponseTargets.setter();
      NLContextUpdate.weightedPromptStrict.setter();
      _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC30makeSDAForNeedsValueForContact33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }

    else if (result == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_dateCreated)
    {
      OUTLINED_FUNCTION_68_0();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_424FD0;
      *(v14 + 32) = PhoneCallNLConstants.canonicalName.getter(7);
      *(v14 + 40) = v15;
      NLContextUpdate.weightedPromptResponseTargets.setter();
      return NLContextUpdate.weightedPromptStrict.setter();
    }
  }

  return result;
}

uint64_t ParticipantOutputProvider.__allocating_init(sharedGlobals:app:cats:startCallCats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v64 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v63 = v58 - v7;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v60 = v9;
  v61 = v8;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v59 = v11 - v10;
  v12 = type metadata accessor for CATOption();
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  outlined init with copy of SignalProviding(a1, v84);
  outlined init with copy of SignalProviding(a1, &v81);
  v62 = "com.apple.camera";
  v14 = type metadata accessor for PhoneCallDisplayTextCATs(0);
  OUTLINED_FUNCTION_30_18(v14);
  v15 = OUTLINED_FUNCTION_31_16();
  v16 = type metadata accessor for PhoneCallCommonCATs(0);
  OUTLINED_FUNCTION_30_18(v16);
  v17 = OUTLINED_FUNCTION_31_16();
  v18 = type metadata accessor for AppInfoBuilder();
  v19 = swift_allocObject();
  v20 = type metadata accessor for StartCallCATs(0);
  OUTLINED_FUNCTION_30_18(v20);
  v69 = OUTLINED_FUNCTION_31_16();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo05INAddB17ParticipantIntentCSo0jbkL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo05INAddB17ParticipantIntentCSo0jbkL8ResponseCGMR);
  v22 = OUTLINED_FUNCTION_41_1(v21);
  v79 = v18;
  v80 = &protocol witness table for AppInfoBuilder;
  v78[0] = v19;
  v76 = &type metadata for LabelTemplatesProvider;
  v77 = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v23 = swift_allocObject();
  v75[0] = v23;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v24 = (&v22->Kind + *(v22->Kind + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v24 = 0x3D65737561705C1BLL;
  v24[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_16_24();
  v27 = v22 + *(v26 + v25 + 56);
  *v27 = v28;
  *(v27 + 1) = v28;
  *(v27 + 4) = 0;
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(&v81, v22 + *(v30 + v29 + 72));
  v31 = *(&v82 + 1);
  v32 = v83;
  __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  (*(v32 + 8))(&v72, v31, v32);
  OUTLINED_FUNCTION_16_24();
  v34 = *(v33 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v72, v22 + v34);
  OUTLINED_FUNCTION_16_24();
  v36 = *(v35 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v58[0] = v17;
  v58[1] = v15;
  *(&v22->Kind + v36) = v15;
  OUTLINED_FUNCTION_16_24();
  *(&v22->Kind + *(v38 + v37 + 32)) = v17;
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v78, v22 + *(v40 + v39 + 48));
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v75, v22 + *(v41 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_16_24();
  *(&v22->Kind + *(v42 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v69;
  outlined init with copy of SignalProviding(v22 + v34, &v72);
  OUTLINED_FUNCTION_28_0(&v72, v73);

  v43 = v59;
  dispatch thunk of DeviceState.siriLocale.getter();
  v71[0] = Locale.identifier.getter();
  v71[1] = v44;
  v70[0] = 45;
  v70[1] = 0xE100000000000000;
  v71[5] = 95;
  v71[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v60 + 8))(v43, v61);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v45 = *(&v82 + 1);
  v46 = v83;
  __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  (*(v46 + 24))(v71, v45, v46);
  outlined init with copy of SignalProviding(v22 + v34, v70);
  v47 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v47);
  v48 = v22;
  v49 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v50 = type metadata accessor for StartCallCATPatternsExecutor(0);
  OUTLINED_FUNCTION_30_18(v50);
  v51 = OUTLINED_FUNCTION_31_16();
  v79 = v48;
  v80 = &protocol witness table for StartCallCATPatternsExecutor;
  v78[0] = v51;
  v52 = type metadata accessor for AddCallParticipantCATPatternsExecutor(0);
  OUTLINED_FUNCTION_30_18(v52);
  v53 = OUTLINED_FUNCTION_31_16();
  v76 = v48;
  v77 = &protocol witness table for AddCallParticipantCATPatternsExecutor;
  v75[0] = v53;
  v54 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v54);
  v55 = ResponseFactory.init()();
  v73 = v54;
  v74 = &protocol witness table for ResponseFactory;
  *&v72 = v55;
  v56 = (*(v65 + 168))(v84, v66, v49, v67, v68, v78, v75, &v72, &v81);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v56;
}

uint64_t ParticipantOutputProvider.__allocating_init(sharedGlobals:app:templatingService:cats:startCallCats:startCallCatPatterns:addCallParticipantCatPatterns:responseGenerator:crrOutputGenerator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v17 = swift_allocObject();
  ParticipantOutputProvider.init(sharedGlobals:app:templatingService:cats:startCallCats:startCallCatPatterns:addCallParticipantCatPatterns:responseGenerator:crrOutputGenerator:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void *ParticipantOutputProvider.init(sharedGlobals:app:templatingService:cats:startCallCats:startCallCatPatterns:addCallParticipantCatPatterns:responseGenerator:crrOutputGenerator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v44 = v17;
  v45 = v16;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v43 = v19 - v18;
  v9[2] = 0x73746361746E6F63;
  v9[3] = 0xE800000000000000;
  outlined init with copy of SignalProviding(a1, (v9 + 4));
  v9[9] = a4;
  v9[10] = a5;
  v48 = a6;
  outlined init with copy of SignalProviding(a6, (v9 + 11));
  v47 = a7;
  outlined init with copy of SignalProviding(a7, (v9 + 21));
  v46 = a8;
  outlined init with copy of SignalProviding(a8, (v9 + 26));
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = *(v21 + 8);
  v23 = v9;

  v22(v54, v20, v21);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 184))(&v55, v24, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo05INAddB17ParticipantIntentCSo0hbiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo05INAddB17ParticipantIntentCSo0hbiJ8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v26);
  v27 = specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(v54, &v55);
  v9[31] = a3;
  v9[32] = v27;
  outlined init with copy of SignalProviding((v9 + 4), &v55);
  v28 = v56;
  v29 = v57;
  OUTLINED_FUNCTION_28_0(&v55, v56);
  v30 = *(v29 + 8);

  v30(v54, v28, v29);
  v31 = v9[10];
  outlined init with copy of SignalProviding((v9 + 4), v51);
  v33 = v52;
  v32 = v53;
  OUTLINED_FUNCTION_28_0(v51, v52);
  v34 = *(v32 + 8);

  v34(v50, v33, v32);
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v37 = v36;
  (*(v44 + 8))(v43, v45);

  v38 = type metadata accessor for AppInfoBuilder();
  v39 = swift_allocObject();
  *&v54[88] = v38;
  *&v54[96] = &protocol witness table for AppInfoBuilder;
  *&v54[40] = v31;
  *&v54[48] = v35;
  *&v54[56] = v37;
  *&v54[64] = v39;
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  memcpy(v23 + 33, v54, 0x68uLL);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a9, &v55, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  if (v56)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a9, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    outlined init with take of SPHConversation(&v55, v54);
  }

  else
  {
    App.appIdentifier.getter();
    type metadata accessor for CATGlobals();
    CATGlobals.__allocating_init()();
    v40 = type metadata accessor for ContactResolutionSnippetGenerator();
    OUTLINED_FUNCTION_41_1(v40);
    OUTLINED_FUNCTION_123();
    v41 = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
    *&v54[24] = v40;
    *&v54[32] = &protocol witness table for ContactResolutionSnippetGenerator;

    *v54 = v41;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a9, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (v56)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v55, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    }
  }

  outlined init with take of SPHConversation(v54, (v23 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

uint64_t ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[6] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) resolutionResultCode] == &dword_0 + 1;
  v3 = v1[24];
  v4 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v3);
  v7 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:);

  return v7(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 80) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v2 = v1[29];
  v3 = v1[30];
  OUTLINED_FUNCTION_28_0(v1 + 26, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:);
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v8, v6, v7, v2, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_0();
  v2(v1);

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_0();
  v2(v1);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t closure #1 in ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(*(a2 + 16), *(a2 + 24));
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ParticipantOutputProvider.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for ContactResolutionVerb();
  v1[11] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v7);
  v1[14] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v1[18] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = v0[18];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);
  specialized static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)(*(v2 + 16), *(v2 + 24), v1);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v1;
  OutputGenerationManifest.init(dialogPhase:_:)();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#ParticipantOutputProvider generateYesNoClarificationContactName by using SMART UI", v6, 2u);
    OUTLINED_FUNCTION_26_0(v6);
  }

  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];

  OutputGenerationManifest.responseViewId.setter();
  OUTLINED_FUNCTION_28_0((v10 + 128), *(v10 + 152));
  (*(v8 + 104))(v7, enum case for ContactResolutionVerb.phoneCallOrFacetimeAudio(_:), v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v11;
  *v11 = v12;
  v11[1] = ParticipantOutputProvider.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:);
  v13 = v0[13];
  v14 = v0[9];

  return dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(v0 + 2, v14, v13, 0xD000000000000029, 0x8000000000458B10, 0xD000000000000028, 0x8000000000458B40, 0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v10 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  outlined init with take of SPHConversation((v0 + 16), v2);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[18];
  (*(v0[16] + 8))(v0[17], v0[15]);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t closure #1 in ParticipantOutputProvider.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a2, v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = type metadata accessor for PhoneError(0);
  v1[8] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  if ([*(v0 + 48) resolutionResultCode] == &dword_0 + 1 && (objc_opt_self(), v1 = swift_dynamicCastObjCClass(), (*(v0 + 88) = v1) != 0))
  {
    v2 = *(v0 + 48);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 96) = v3;
    *v3 = v4;
    v3[1] = ParticipantOutputProvider.makeContactUnsupportedOutput(app:intent:intentResolutionResult:);

    return ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:)();
  }

  else
  {
    v6 = *(v0 + 80);
    *v6 = 1;
    OUTLINED_FUNCTION_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v7, v8, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v9);
    outlined destroy of PhoneError(v6);
    swift_willThrow();

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_23_0();
  v13 = v0;
  v0[2] = v0[13];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v1 = v0[9];
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      outlined destroy of PhoneError(v1);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.siriPhone);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v12 = v6;
        *v5 = 136315138;
        *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000000045D0C0, &v12);
        _os_log_impl(&dword_0, v3, v4, "#ParticipantOutputProvider %s Unmigrated dialog, falling back to legacy output", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v6);
        OUTLINED_FUNCTION_26_0(v6);
        OUTLINED_FUNCTION_26_0(v5);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[14] = v7;
      *v7 = v8;
      v7[1] = ParticipantOutputProvider.makeContactUnsupportedOutput(app:intent:intentResolutionResult:);

      return ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)();
    }

    outlined destroy of PhoneError(v1);
  }

  v10 = v0[6];

  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v11();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[22] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for TemplatingResult();
  v1[23] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[24] = v8;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  (*(*(v0 + 192) + 32))(*(v0 + 216));
  OUTLINED_FUNCTION_23_18((v2 + 32));
  v4 = OUTLINED_FUNCTION_2();
  v5(v4);
  OUTLINED_FUNCTION_23_18((v2 + 32));
  v6 = OUTLINED_FUNCTION_2();
  v7(v6);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  type metadata accessor for AceOutput();
  *&v9 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v9;
  v3[3] = v10;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_25_19();
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = OUTLINED_FUNCTION_123();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v13();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  (*(*(v0 + 192) + 32))(*(v0 + 216));
  OUTLINED_FUNCTION_23_18((v2 + 32));
  v4 = OUTLINED_FUNCTION_2();
  v5(v4);
  OUTLINED_FUNCTION_23_18((v2 + 32));
  v6 = OUTLINED_FUNCTION_2();
  v7(v6);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  type metadata accessor for AceOutput();
  *&v9 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v9;
  v3[3] = v10;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_25_19();
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = OUTLINED_FUNCTION_123();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v13();
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v47 = v20;
  v21 = [*(v20 + 160) unsupportedReason];
  if ((v21 - 5) >= 2)
  {
    if (v21 == &dword_0 + 2)
    {
      v44 = (**(*(v20 + 168) + 72) + class metadata base offset for AddCallParticipantCATs + 328);
      v45 = (*v44 + **v44);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v20 + 224) = v28;
      *v28 = v29;
      v28[1] = ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:);
      v30 = *(v20 + 208);

      return v45(v30);
    }

    else
    {
      v31 = *(v20 + 168);
      v32 = *(v20 + 144);
      v33 = swift_task_alloc();
      *(v20 + 240) = v33;
      v34 = *(v20 + 152);
      v33[1].i64[0] = v31;
      v33[1].i64[1] = v32;
      v33[2] = vextq_s8(v34, v34, 8uLL);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v20 + 248) = v35;
      *v35 = v36;
      v35[1] = ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:);
      OUTLINED_FUNCTION_66_0();

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v37, v38, v39, v40, v41, v42, v33, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000064, 0x800000000045D2C0, &v46);
      _os_log_impl(&dword_0, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_26_0(v26);
      OUTLINED_FUNCTION_26_0(v25);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

void closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17 = a3;
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = ParticipantOutputProvider.mapToStartCallResolutionResult(_:)(a4);
  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  specialized ContactsSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(v17, v12, v13, v14, v18);
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[8] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[9] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[10] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v6);
  v1[11] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[12] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for NLContextUpdate();
  v1[15] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v29 = v0;
  v1 = [*(v0 + 48) unsupportedReason];
  if (v1 == &dword_0 + 2)
  {
    v2 = *(v0 + 56);
    v3 = v2[24];
    v4 = v2[25];
    OUTLINED_FUNCTION_28_0(v2 + 21, v3);
    v26 = (*(v4 + 32) + **(v4 + 32));
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:);

    return v26(v3, v4);
  }

  else
  {
    v7 = v1;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      *(v0 + 16) = v7;
      *(v0 + 24) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo020INAddCallParticipantC17UnsupportedReasonVSgMd, &_sSo020INAddCallParticipantC17UnsupportedReasonVSgMR);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v9, v10, "#ParticipantOutputProvider makeContactUnsupportedOutput: the dialog for %s hasn't been migrated to Response Framework.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_26_0(v12);
      OUTLINED_FUNCTION_26_0(v11);
    }

    v16 = *(v0 + 72);
    v17 = *(v0 + 48);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v18._countAndFlagsBits = 0xD00000000000003ALL;
    v18._object = 0x800000000045D330;
    String.append(_:)(v18);
    *(v0 + 32) = [v17 unsupportedReason];
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._object = 0x800000000045D370;
    v20._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v20);
    v21 = v28;
    *v16 = v27;
    v16[1] = v21;
    v16[2] = 0xD00000000000003BLL;
    v16[3] = 0x800000000045D390;
    v16[4] = 0xD000000000000042;
    v16[5] = 0x800000000045D3D0;
    v16[6] = 185;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v22, v23, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v24);
    outlined destroy of PhoneError(v16);
    swift_willThrow();

    OUTLINED_FUNCTION_11();

    return v25();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_11();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v8, v9, v10);
  }
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[7];
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(0x73746361746E6F63, 0xE800000000000000);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  OutputGenerationManifest.nlContextUpdate.setter();
  v6 = v5[29];
  v7 = v5[30];
  OUTLINED_FUNCTION_28_0(v5 + 26, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[20] = v8;
  *v8 = v9;
  v8[1] = ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:);
  v10 = v0[19];
  v11 = v0[14];
  v12 = v0[5];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v12, v10, v11, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_0();
  v5(v4);

  OUTLINED_FUNCTION_8_1();

  return v6();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_0();
  v5(v4);

  OUTLINED_FUNCTION_11();

  return v6();
}

id ParticipantOutputProvider.mapToStartCallResolutionResult(_:)(void *a1)
{
  v2 = [a1 unsupportedReason];
  if (v2 == &dword_4)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == (&dword_0 + 3))
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  type metadata accessor for INStartCallContactResolutionResult();
  v5 = [a1 alternatives];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return @nonobjc INStartCallContactResolutionResult.__allocating_init(unsupportedWithReason:alternativeItems:)(v4);
}

id @nonobjc INStartCallContactResolutionResult.__allocating_init(unsupportedWithReason:alternativeItems:)(uint64_t a1)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason:a1 alternativeItems:isa];

  return v3;
}

uint64_t ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)()
{
  OUTLINED_FUNCTION_15();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[18] = v5;
  v1[19] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[24] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for NLContextUpdate();
  v1[25] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for TemplatingResult();
  v1[28] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[29] = v11;
  v1[30] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  v0[17].i64[0] = v1;
  v1[1] = vextq_s8(v0[11], v0[11], 8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[17].i64[1] = v2;
  *v2 = v3;
  v2[1] = ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_26_17();

  return withCheckedContinuation<A>(isolation:function:_:)(v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v15 = *(v0 + 240);
  v16 = *(v0 + 232);
  v1 = *(v0 + 216);
  v17 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 144);
  v8 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v8);
  (*(v7 + 8))(v8, v7);
  v9 = v5[7];
  v10 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v9);
  (*(v10 + 8))(v9, v10);
  OUTLINED_FUNCTION_28_0((v0 + 56), *(v0 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  type metadata accessor for AceOutput();
  *&v11 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v11;
  v6[3] = v12;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v1, v3);
  (*(v16 + 8))(v15, v17);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v13();
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = OUTLINED_FUNCTION_0();
  v2(v1);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23_0();
  v21 = *(v20 + 184);
  v23 = *(v20 + 152);
  v22 = *(v20 + 160);
  v24 = swift_task_alloc();
  *(v20 + 248) = v24;
  v25 = *(v20 + 168);
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  *(v24 + 32) = v25;
  *(v24 + 48) = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 256) = v26;
  *v26 = v27;
  v26[1] = ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_26_17();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_15();
  v21 = swift_task_alloc();
  *(v20 + 288) = v21;
  v22 = vextq_s8(*(v20 + 176), *(v20 + 176), 8uLL);
  *(v21 + 16) = *(v20 + 152);
  *(v21 + 32) = v22;
  v23 = swift_task_alloc();
  *(v20 + 296) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v23 = v20;
  v23[1] = ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_26_17();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a6;
  v24 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = a2[2];
  v22 = a2[3];
  v23 = v13;
  v15 = a2[7];
  v14 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v15);
  (*(v14 + 8))(v27, v15, v14);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  DeviceState.isAuthenticatedForPhone.getter(v16, v17);
  v18 = a2[31];
  (*(v10 + 16))(v12, a1, v9);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v19, v12, v9);
  (*(*v18 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(a5, partial apply for closure #1 in closure #1 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:), v20);

  specialized ContactsSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(v24, v23, v22);

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t closure #1 in closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_123();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v11);
  v13 = (v15 - v12);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v15 - v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15[1] = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v8, v13, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = a2[32];
  v9 = a2[2];
  v10 = a2[3];
  v11 = SiriKitDisambiguationList.rawItems.getter();
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  (*(*v8 + class metadata base offset for PhoneCallNLContextProvider + 40))(v9, v10, v11, partial apply for closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:), v13);
}

uint64_t closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1)
{
  v2 = type metadata accessor for NLContextUpdate();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #3 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v28 = a2;
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  v11 = a4[3];
  v27 = a4[2];
  v12 = a4[7];
  v13 = a4[8];
  __swift_project_boxed_opaque_existential_1(a4 + 4, v12);
  (*(v13 + 8))(v32, v12, v13);
  v14 = v33;
  v15 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  HIDWORD(v26) = DeviceState.isAuthenticatedForPhone.getter(v14, v15);
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder", v20, 2u);
  }

  outlined init with copy of SignalProviding((a4 + 4), v37);
  v21 = v29;
  v35[0] = v28;
  v35[1] = v29;
  v35[2] = v27;
  v35[3] = v11;
  v35[4] = v30;
  v36 = BYTE4(v26) & 1;
  v37[5] = v16;

  v22 = v21;

  __swift_destroy_boxed_opaque_existential_1(v32);
  (*(v7 + 16))(v9, v31, v6);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v23, v9, v6);
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(_swiftEmptyArrayStorage, partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v24);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo05INAddB17ParticipantIntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo05INAddB17ParticipantIntentCGMR);
}

void *ParticipantOutputProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 33), &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo05INAddB17ParticipantIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo05INAddB17ParticipantIntentCSo0ibjK8ResponseCGMR);
  return v0;
}

uint64_t ParticipantOutputProvider.__deallocating_deinit()
{
  ParticipantOutputProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResolveContactOutputProviding.makePromptForContactOutput(app:intent:intentResolutionResult:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 176) + **(**v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveContactOutputProviding.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 184) + **(**v5 + 184));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = closure #2 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for ResolveContactOutputProviding.makeContactUnsupportedOutput(app:intent:intentResolutionResult:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 192) + **(**v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveContactOutputProviding.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 224) + **(**v5 + 224));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4, a5);
}

uint64_t specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(void *a1, void *a2)
{
  outlined init with copy of SignalProviding(a2, v2 + *(*v2 + class metadata base offset for PhoneCallNLContextProvider + 16));
  outlined init with copy of SignalProviding(a1, v2 + *(*v2 + class metadata base offset for PhoneCallNLContextProvider + 24));
  v5 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC30makeSDAForNeedsValueForContact33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5()
{
  v36 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v33);
  v32[2] = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v32[1] = v32 - v4;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v5 - 8);
  v39 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  swift_allocObject();
  v14 = UsoTaskBuilder_call_common_PhoneCall.init()();
  type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  swift_allocObject();
  v15 = UsoEntityBuilder_common_PhoneCall.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

  v35 = v15;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_426260;
  *(v16 + 32) = v14;
  v17 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  v37 = v14;

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_SystemPrompted.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_SystemPrompted.target.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40[0] = v33;
    *v21 = 136315138;
    swift_beginAccess();
    v22 = v38;
    (*(v6 + 16))(v38, v10, v39);
    v23 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K28_Nlu_External_SystemPromptedV_Tt0g5(v22);
    v25 = v10;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v40);

    *(v21 + 4) = v26;
    v10 = v25;
    _os_log_impl(&dword_0, v19, v20, "#PhoneCallNLContextProvider Returning NLUSystemPrompted for prompt for start call: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {

    v22 = v38;
  }

  v27 = v34;
  Siri_Nlu_External_SystemDialogAct.init()();
  swift_beginAccess();
  v28 = v39;
  (*(v6 + 16))(v22, v10, v39);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v29 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_424FD0;
  (*(v0 + 32))(v30 + v29, v27, v36);

  (*(v6 + 8))(v10, v28);
  return v30;
}

uint64_t lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t type metadata accessor for INStartCallContactResolutionResult()
{
  result = lazy cache variable for type metadata for INStartCallContactResolutionResult;
  if (!lazy cache variable for type metadata for INStartCallContactResolutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INStartCallContactResolutionResult);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  OUTLINED_FUNCTION_21(v0);
  v1 = OUTLINED_FUNCTION_32_12();

  return closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(v1);
}

uint64_t partial apply for closure #1 in closure #1 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_21(v0);
  v1 = OUTLINED_FUNCTION_32_12();
  return closure #1 in closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(v1);
}

uint64_t OUTLINED_FUNCTION_31_16()
{

  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t static PersonIntentNode.getFilteredAlternatives(span:)()
{
  v0 = *(TerminalElement.MatchingSpan.alternateInterpretationConfidences.getter() + 16);

  if (v0 < 2)
  {
    return 0;
  }

  v1 = TerminalElement.MatchingSpan.alternateInterpretationConfidences.getter();
  v2 = COERCE_DOUBLE(specialized Sequence<>.max()(v1));
  v4 = v3;

  if (v4)
  {
    return 0;
  }

  v6 = TerminalElement.MatchingSpan.alternateInterpretationConfidences.getter();
  v7 = specialized _NativeDictionary.filter(_:)(v6, v2 * 0.2);

  v8 = swift_retain_n();
  v10 = specialized _copyCollectionToContiguousArray<A>(_:)(v8);
  specialized MutableCollection<>.sort(by:)(&v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

uint64_t specialized Sequence<>.max()(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t static PersonIntentNode.getProcessedNameField(person:terminalNode:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v6);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV6OriginVSgMd, &_s12SiriOntology15TerminalElementV6OriginVSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV12OriginDetailOSgMd, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR);
  OUTLINED_FUNCTION_21(v14);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for TerminalElement.MatchingSpan();
  v39 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonIntentNode();
  IntentNodeTraversable.value<A>(forNode:)();
  result = v41;
  if (v42)
  {
    v40 = v41;
    IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
    v22 = type metadata accessor for TerminalIntentNode();
    if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
    {
      v23 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
      v24 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
      v25 = v5;
    }

    else
    {
      v26 = TerminalIntentNode.elements.getter();
      OUTLINED_FUNCTION_40();
      (*(v27 + 8))(v5, v22);
      specialized BidirectionalCollection.last.getter(v26, v9);

      v28 = type metadata accessor for TerminalElement();
      if (__swift_getEnumTagSinglePayload(v9, 1, v28) == 1)
      {
        v23 = &_s12SiriOntology15TerminalElementVSgMd;
        v24 = &_s12SiriOntology15TerminalElementVSgMR;
        v25 = v9;
      }

      else
      {
        TerminalElement.origin.getter();
        OUTLINED_FUNCTION_40();
        (*(v29 + 8))(v9, v28);
        v30 = type metadata accessor for TerminalElement.Origin();
        if (__swift_getEnumTagSinglePayload(v13, 1, v30) != 1)
        {
          TerminalElement.Origin.originDetail.getter();
          OUTLINED_FUNCTION_40();
          (*(v32 + 8))(v13, v30);
          v33 = type metadata accessor for TerminalElement.OriginDetail();
          if (__swift_getEnumTagSinglePayload(v17, 1, v33) != 1)
          {
            v34 = *(v33 - 8);
            if ((*(v34 + 88))(v17, v33) == enum case for TerminalElement.OriginDetail.matchingSpan(_:))
            {
              (*(v34 + 96))(v17, v33);
              v35 = v39;
              (*(v39 + 32))(v20, v17, v18);
              v36 = static PersonIntentNode.getFilteredAlternatives(span:)();
              v38 = v37;
              (*(v35 + 8))(v20, v18);
              if (v38)
              {

                return v36;
              }
            }

            else
            {
              (*(v34 + 8))(v17, v33);
            }

            return v40;
          }

LABEL_9:
          outlined destroy of SpeakableString?(v17, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMd, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR);
          return v40;
        }

        v23 = &_s12SiriOntology15TerminalElementV6OriginVSgMd;
        v24 = &_s12SiriOntology15TerminalElementV6OriginVSgMR;
        v25 = v13;
      }
    }

    outlined destroy of SpeakableString?(v25, v23, v24);
    v31 = type metadata accessor for TerminalElement.OriginDetail();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v31);
    goto LABEL_9;
  }

  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesFullName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personFullNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesFirstName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personFirstNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesMiddleName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personMiddleNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesLastName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personLastNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PersonIntentNode.getFilteredAlternativesFullName()(uint64_t (*a1)(void))
{
  type metadata accessor for PersonOntologyNode();
  v3 = a1();
  v4 = static PersonIntentNode.getProcessedNameField(person:terminalNode:)(v1, v3);

  return v4;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 16 * a3);
    v9 = a1 - a3;
LABEL_3:
    v10 = *(v7 + 16 * v6 + 8);
    v24 = v9;
    v25 = v8;
    while (1)
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      if (!*(a5 + 16))
      {
        break;
      }

      v13 = *v8;

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v10);
      v15 = 0.0;
      if (v16)
      {
        v15 = *(*(a5 + 56) + 8 * v14);
      }

      if (!*(a5 + 16))
      {
        goto LABEL_12;
      }

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }

      v19 = *(*(a5 + 56) + 8 * v17);

      if (v19 >= v15)
      {
        goto LABEL_16;
      }

LABEL_13:
      if (!v7)
      {
        __break(1u);
        return result;
      }

      v21 = *v8;
      v10 = v8[1];
      *v8 = *(v8 - 1);
      *(v8 - 1) = v10;
      *(v8 - 2) = v21;
      v8 -= 2;
      if (__CFADD__(v9++, 1))
      {
LABEL_16:
        ++v6;
        v8 = v25 + 2;
        v9 = v24 - 1;
        if (v6 != a2)
        {
          goto LABEL_3;
        }
      }
    }

    v15 = 0.0;
LABEL_12:

    if (v15 <= 0.0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = _swiftEmptyArrayStorage;
LABEL_118:
    v138 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v117 = v8 + 16;
      v116 = *(v8 + 2);
      for (i = v8; ; v8 = i)
      {
        if (v116 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_158;
        }

        v119 = &v8[16 * v116];
        v8 = *v119;
        v120 = v117;
        v121 = &v117[16 * v116];
        v122 = *(v121 + 1);
        v123 = (v118 + 16 * *v119);
        v124 = (v118 + 16 * *v121);
        v143 = (v118 + 16 * v122);

        specialized _merge<A>(low:mid:high:buffer:by:)(v123, v124, v143, v138, a5);
        if (v141)
        {
          break;
        }

        if (v122 < v8)
        {
          goto LABEL_146;
        }

        if (v116 - 2 >= *v120)
        {
          goto LABEL_147;
        }

        v117 = v120;
        *v119 = v8;
        *(v119 + 1) = v122;
        v125 = *v120 - v116;
        if (*v120 < v116)
        {
          goto LABEL_148;
        }

        v116 = *v120 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v121 + 16, v125, v121);
        *v120 = v116;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_155:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_120;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v142 = a5;
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 >= v6)
    {
      v138 = (v7 + 1);
    }

    else
    {
      v132 = v8;
      v11 = (*a3 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*a3 + 16 * v7);
      v15 = v7;
      v16 = 16 * v7;
      v18 = *v14;
      v19 = v14[1];
      v17 = v14 + 3;

      v20 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(v12, v13, a5));
      v22 = (v21 & 1) != 0 ? 0.0 : v20;
      v23 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(v18, v19, a5));
      v137 = v24;

      v25 = (v137 & 1) != 0 ? 0.0 : v23;
      v128 = v15;
      v26 = (v15 + 2);
      v8 = v10;
      while (1)
      {
        v27 = v26;
        if ((v8 + 1) >= v6)
        {
          break;
        }

        v28 = v17[2];
        v29 = *v17;
        if (*(a5 + 16))
        {
          v30 = *(v17 - 1);
          v31 = v17[1];

          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v28);
          a5 = v142;
          v33 = 0.0;
          v34 = 0.0;
          if (v35)
          {
            v34 = *(*(v142 + 56) + 8 * v32);
          }

          if (*(v142 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29), (v37 & 1) != 0))
          {
            v38 = v8;
            v33 = *(*(v142 + 56) + 8 * v36);
          }

          else
          {
            v38 = v8;
          }
        }

        else
        {
          v38 = v8;

          v34 = 0.0;
          v33 = 0.0;
        }

        v17 += 2;
        v8 = v38 + 1;
        v26 = v27 + 1;
        if (v25 < v22 == v33 >= v34)
        {
          goto LABEL_24;
        }
      }

      v8 = v6;
LABEL_24:
      v138 = v8;
      if (v25 >= v22)
      {
        v8 = v132;
      }

      else
      {
        v39 = v128;
        if (v8 < v128)
        {
          goto LABEL_152;
        }

        if (v128 >= v8)
        {
          v8 = v132;
          v9 = v128;
          goto LABEL_39;
        }

        v40 = v6 >= v27 ? v27 : v6;
        v41 = 16 * v40;
        v42 = v8;
        v8 = v132;
        do
        {
          if (v39 != --v42)
          {
            v43 = *a3;
            if (!*a3)
            {
              goto LABEL_159;
            }

            v44 = (v43 + v16);
            v45 = v43 + v41;
            v46 = *v44;
            v47 = v44[1];
            *v44 = *(v45 - 16);
            *(v45 - 16) = v46;
            *(v45 - 8) = v47;
          }

          ++v39;
          v41 -= 16;
          v16 += 16;
        }

        while (v39 < v42);
      }

      v9 = v128;
    }

LABEL_39:
    v48 = a3[1];
    if (v138 < v48)
    {
      if (__OFSUB__(v138, v9))
      {
        goto LABEL_151;
      }

      if (&v138[-v9] < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v138 < v9)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v114;
    }

    v68 = *(v8 + 2);
    v69 = v68 + 1;
    if (v68 >= *(v8 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v115;
    }

    *(v8 + 2) = v69;
    v70 = v8 + 32;
    v71 = &v8[16 * v68 + 32];
    *v71 = v9;
    *(v71 + 1) = v138;
    v136 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    if (v68)
    {
      v133 = v8 + 32;
      while (1)
      {
        v72 = v69 - 1;
        v73 = &v70[16 * v69 - 16];
        v74 = &v8[16 * v69];
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v75 = *(v8 + 4);
          v76 = *(v8 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_85:
          if (v78)
          {
            goto LABEL_137;
          }

          v90 = *v74;
          v89 = *(v74 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_140;
          }

          v94 = *(v73 + 1);
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_145;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v69 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v69 < 2)
        {
          goto LABEL_139;
        }

        v97 = *v74;
        v96 = *(v74 + 1);
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_100:
        if (v93)
        {
          goto LABEL_142;
        }

        v99 = *v73;
        v98 = *(v73 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_144;
        }

        if (v100 < v92)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v72 - 1 >= v69)
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
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v104 = *a3;
        if (!*a3)
        {
          goto LABEL_157;
        }

        v105 = v8;
        v106 = &v70[16 * v72 - 16];
        v8 = *v106;
        v107 = v72;
        v108 = &v70[16 * v72];
        v109 = *(v108 + 1);
        v110 = (v104 + 16 * *v106);
        v111 = (v104 + 16 * *v108);
        v112 = (v104 + 16 * v109);
        a5 = v142;

        specialized _merge<A>(low:mid:high:buffer:by:)(v110, v111, v112, v136, v142);
        if (v141)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v109 < v8)
        {
          goto LABEL_132;
        }

        v113 = *(v105 + 2);
        if (v107 > v113)
        {
          goto LABEL_133;
        }

        *v106 = v8;
        *(v106 + 1) = v109;
        if (v107 >= v113)
        {
          goto LABEL_134;
        }

        v69 = v113 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v108 + 16, v113 - 1 - v107, v108);
        v8 = v105;
        *(v105 + 2) = v113 - 1;
        v70 = v133;
        a5 = v142;
        if (v113 <= 2)
        {
          goto LABEL_114;
        }
      }

      v79 = &v70[16 * v69];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_135;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_136;
      }

      v86 = *(v74 + 1);
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_138;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_141;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_149;
        }

        if (v77 < v103)
        {
          v72 = v69 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v7 = v138;
    v6 = a3[1];
    if (v138 >= v6)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_153;
  }

  if (v9 + a4 >= v48)
  {
    v49 = a3[1];
  }

  else
  {
    v49 = v9 + a4;
  }

  if (v49 < v9)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v138 == v49)
  {
    goto LABEL_64;
  }

  v131 = v49;
  v50 = *a3;
  v51 = *a3 + 16 * v138;
  v129 = v9;
  v52 = v9 - v138;
  v53 = v138;
LABEL_49:
  v135 = v51;
  v139 = v53;
  v54 = *(v50 + 16 * v53 + 8);
  v55 = v52;
  v56 = v51;
  while (1)
  {
    v58 = *(v56 - 2);
    v57 = *(v56 - 1);
    if (*(a5 + 16))
    {
      v59 = *v56;

      v60 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v54);
      a5 = v142;
      v61 = 0.0;
      if (v62)
      {
        v61 = *(*(v142 + 56) + 8 * v60);
      }

      if (*(v142 + 16))
      {
        v63 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v57);
        if (v64)
        {
          v65 = *(*(v142 + 56) + 8 * v63);

          if (v65 >= v61)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }
      }
    }

    else
    {

      v61 = 0.0;
    }

    if (v61 <= 0.0)
    {
      goto LABEL_62;
    }

LABEL_59:
    if (!v50)
    {
      break;
    }

    v66 = *v56;
    v54 = v56[1];
    *v56 = *(v56 - 1);
    *(v56 - 1) = v54;
    *(v56 - 2) = v66;
    v56 -= 2;
    if (__CFADD__(v55++, 1))
    {
LABEL_62:
      v53 = v139 + 1;
      v51 = v135 + 16;
      --v52;
      if (v139 + 1 == v131)
      {
        v138 = v131;
        v9 = v129;
        goto LABEL_64;
      }

      goto LABEL_49;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v9 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v12 = &v6[2 * v9];
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v28 = v8;
        goto LABEL_44;
      }

      v15 = v7[1];
      v16 = v6[1];
      if (*(a5 + 16))
      {
        v17 = *v6;
        v18 = *v7;

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v15);
        v20 = 0.0;
        if (v21)
        {
          v20 = *(*(a5 + 56) + 8 * v19);
        }

        if (*(a5 + 16))
        {
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
          if (v23)
          {
            v24 = *(*(a5 + 56) + 8 * v22);

            v13 = a3;
            if (v24 >= v20)
            {
              goto LABEL_13;
            }

            goto LABEL_19;
          }
        }

        v13 = a3;
      }

      else
      {

        v20 = 0.0;
      }

      if (v20 <= 0.0)
      {
LABEL_13:
        v25 = v6;
        v26 = v8 == v6;
        v6 += 2;
        if (v26)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v8 = *v25;
        goto LABEL_15;
      }

LABEL_19:
      v25 = v7;
      v26 = v8 == v7;
      v7 += 2;
      if (!v26)
      {
        goto LABEL_14;
      }

LABEL_15:
      v8 += 16;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v12 = &v6[2 * v11];
  v27 = a3;
  v47 = v8;
  v46 = v6;
LABEL_23:
  v28 = v7;
  v45 = v7 - 2;
  v29 = v27;
  while (v12 > v6 && v28 > v8)
  {
    v31 = v12 - 2;
    v32 = *(v12 - 1);
    v33 = *(v28 - 1);
    if (*(a5 + 16))
    {
      v34 = *(v28 - 2);
      v35 = *v31;

      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v32);
      v37 = 0.0;
      if (v38)
      {
        v37 = *(*(a5 + 56) + 8 * v36);
      }

      v27 = v29 - 16;
      if (*(a5 + 16))
      {
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v33);
        if (v40)
        {
          v41 = *(*(a5 + 56) + 8 * v39);

          v6 = v46;
          if (v41 < v37)
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }
      }

      v6 = v46;
    }

    else
    {
      v27 = v29 - 16;

      v37 = 0.0;
    }

    if (v37 > 0.0)
    {
LABEL_41:
      v26 = v29 == v28;
      v8 = v47;
      v7 = v45;
      if (!v26)
      {
        *v27 = *v45;
      }

      goto LABEL_23;
    }

LABEL_39:
    v26 = v12 == v29;
    v29 = v27;
    v12 -= 2;
    v8 = v47;
    if (!v26)
    {
      *v27 = *v31;
      v29 = v27;
      v12 = v31;
    }
  }

LABEL_44:
  v42 = (v12 - v6) / 16;
  if (v28 != v6 || v28 >= &v6[2 * v42])
  {
    memmove(v28, v6, 16 * v42);
  }

  return 1;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      v4 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSdG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SdTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSdIsgnndzo_Tf1nc_n163_s12SiriOntology16PersonIntentNodeV27PhoneCallFlowDelegatePluginE23getFilteredAlternatives4spanSSSgAA15TerminalElementV12MatchingSpanV_tFZSbSS3key_Sd5valuet_tXEfU_SdTf1nnc_n(v10, v6, v4, a2);

      return v4;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v7);
  specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, v6, v4);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return v4;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, double a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 56) + 8 * v12) > a2)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(result, a3, v5, a4);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_15;
    }

    v14 = *(a4 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSdG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SdTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSdIsgnndzo_Tf1nc_n163_s12SiriOntology16PersonIntentNodeV27PhoneCallFlowDelegatePluginE23getFilteredAlternatives4spanSSSgAA15TerminalElementV12MatchingSpanV_tFZSbSS3key_Sd5valuet_tXEfU_SdTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a4, a2, a3);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized Collection.emptyToNil.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

uint64_t static PersonNameComponents.phoneticComponents(for:)(void *a1)
{
  PersonNameComponents.init()();
  v4 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a1, &selRef_pronunciationGivenName);
  if (!v5 || (specialized Collection.emptyToNil.getter(v4, v5), OUTLINED_FUNCTION_50_2(), , !v2))
  {
    v1 = [a1 phoneticGivenName];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    specialized Collection.emptyToNil.getter(v2, v7);
    OUTLINED_FUNCTION_50_2();
  }

  PersonNameComponents.givenName.setter();
  v8 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a1, &selRef_pronunciationFamilyName);
  if (!v9 || (specialized Collection.emptyToNil.getter(v8, v9), OUTLINED_FUNCTION_50_2(), , !v2))
  {
    v1 = [a1 phoneticFamilyName];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    specialized Collection.emptyToNil.getter(v2, v11);
    OUTLINED_FUNCTION_50_2();
  }

  PersonNameComponents.familyName.setter();
  v12 = [a1 phoneticMiddleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_50_2();

  specialized Collection.emptyToNil.getter(v1, v2);

  return PersonNameComponents.middleName.setter();
}

uint64_t PersonNameComponents.init(name:phoneticName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  (*(v7 + 16))(v5, v9, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  PersonNameComponents.phoneticRepresentation.setter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t PhoneAppResolutionHelper.appsToDisambiguate(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  v3 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t PhoneAppResolutionHelper.appsToDisambiguate(for:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  static Signpost.begin(_:)();
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 104) = v3;
  v7 = static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)(v1, (v2 + 56));
  v8 = [v7 _className];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [objc_allocWithZone(INStartCallIntent) init];
  v13 = [v12 _className];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_24_21();

    if ((v14 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_424FD0;
      *(v18 + 32) = v9;
      *(v18 + 40) = v11;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_424FF0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  v19 = [objc_allocWithZone(INStartAudioCallIntent) init];
  v20 = [v19 _className];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v18 + 48) = v21;
  *(v18 + 56) = v23;
LABEL_9:
  *(v0 + 112) = v18;
  v24 = *(v0 + 96);
  v25 = v24[5];
  v26 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v25);
  v29 = (OUTLINED_FUNCTION_11_0() + 16);
  v30 = (*v29 + **v29);
  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  *v27 = v0;
  v27[1] = PhoneAppResolutionHelper.appsToDisambiguate(for:);

  return v30(v18, v25, v26);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  *(v6 + 128) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v32 = v0;
  v1 = v0[16];
  v30 = _swiftEmptyArrayStorage;
  v2 = specialized Array.count.getter(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_39;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_35;
    }

    App.appIdentifier.getter();
    if (v4)
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v5 = v30;
  v30 = _swiftEmptyArrayStorage;
  v6 = specialized Array.count.getter(v5);
  for (j = 0; v6 != j; ++j)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *(v5 + 16))
      {
        goto LABEL_41;
      }
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_40;
    }

    if (App.isFirstParty()())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  v28 = v30;
  v8 = OUTLINED_FUNCTION_0();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  OUTLINED_FUNCTION_4_3();
  if (PhoneCallNLIntent.hasVideoCallSemantic()())
  {
    __swift_project_boxed_opaque_existential_1((v0[12] + 56), *(v0[12] + 80));
    v10 = OUTLINED_FUNCTION_4_3();
    v11(v10);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_4_3();
    v12 = dispatch thunk of DeviceState.isMac.getter();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v12)
    {
      if (one-time initialization token for macFaceTimeBundleId != -1)
      {
        swift_once();
      }
    }

    type metadata accessor for App();
    OUTLINED_FUNCTION_0();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    OUTLINED_FUNCTION_11_0();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      v30 = 0;
      *v16 = 136315138;
      v18 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
      v31 = v19;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v18, v20, v21, v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v29);

      *(v16 + 4) = v23;
      OUTLINED_FUNCTION_12(&dword_0, v24, v25, "%s adding Phone as another app to disambiguate..");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_26_0(v16);
    }

    type metadata accessor for App();
  }

  App.__allocating_init(appIdentifier:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_42;
  }

LABEL_35:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  Signpost.OpenSignpost.end()();

  v26 = v0[1];

  return v26(v28);
}

uint64_t PhoneAppResolutionHelper.shouldForcedDisambiguateApps(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_2_0();
  if (((*(v0 + 200))() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_0();
  return (*(v1 + 120))() & 1;
}

Swift::Bool __swiftcall PhoneAppResolutionHelper.areFirstPartyAppsOnly(apps:)(Swift::OpaquePointer apps)
{
  v2 = specialized Array.count.getter(apps._rawValue);
  v3 = v2;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
LABEL_10:
      LOBYTE(v2) = v3 == v5;
      return v2;
    }

    if ((apps._rawValue & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_5_26();
      LOBYTE(v2) = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (apps._rawValue & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    v6 = App.isFirstParty()();

    v4 = v5 + 1;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return v2;
}

BOOL PhoneAppResolutionHelper.shouldQueryAppSelection(phoneCallNLIntent:)(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  if ((*(v4 + 208))() & 1) != 0 && ((*(*v1 + 200))(a1))
  {
    OUTLINED_FUNCTION_86(a1);
    v5 = !PhoneCallNLIntent.hasVideoCallSemantic()();
  }

  else
  {
    v5 = 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);

  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_24_21();

  if (os_log_type_enabled(v7, v2))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 8), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 16), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 24));
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v15);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    if (v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = 7630702;
    }

    if (v5)
    {
      v12 = 0xE000000000000000;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_0, v7, v2, "%s this request is %s eligible for smart app selection.", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v9);
    OUTLINED_FUNCTION_26_0(v8);
  }

  return v5;
}

uint64_t PhoneAppResolutionHelper.isRequestEligibleForAppResolution(phoneCallIntent:)(void *a1)
{
  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.hasApplicationNameOrId()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_73(a1);
  if (!PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.isEmergencyCall()())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_10_43();
  v4 = *(v3(v2) + 16);

  if (v4 != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.isBusinessNameCall()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.isTelephonyTargetFromSrr()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.hasAnyFaceTime()())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = OUTLINED_FUNCTION_10_43();
  result = v7(v6);
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v11 = result + 32;
    while (v10 < *(v8 + 16))
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v11, v21);
      OUTLINED_FUNCTION_86(v21);
      v12 = SiriPhoneContact.getPhoneNumber()();
      if (v12.value._object)
      {

        v13 = (v12.value._object >> 56) & 0xF;
        if ((v12.value._object & 0x2000000000000000) == 0)
        {
          v13 = v12.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {

          __swift_destroy_boxed_opaque_existential_1(v21);
          return 0;
        }
      }

      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = (*(v15 + 248))(v14, v15);
      if (v17)
      {
        v18 = v16;
        v19 = v17;

        if ((v19 & 0x2000000000000000) != 0)
        {
          v20 = HIBYTE(v19) & 0xF;
        }

        else
        {
          v20 = v18 & 0xFFFFFFFFFFFFLL;
        }

        result = __swift_destroy_boxed_opaque_existential_1(v21);
        if (v20)
        {

          return 0;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v21);
      }

      ++v10;
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    return 1;
  }

  return result;
}

uint64_t PhoneAppResolutionHelper.getAppSelectionRecommendation(startCallIntent:phoneCallNLIntent:apps:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for CommsAppResolutionFeature();
  v1[11] = v7;
  v1[12] = *(v7 - 8);
  v1[13] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  v34 = v0;
  if (specialized Array.count.getter(v0[9]) < 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[9];
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = specialized Array.count.getter(v24);

      _os_log_impl(&dword_0, v21, v22, "#PhoneAppResolutionHelper getAppSelectionRecommendation: get app counts %ld which is not expected, return noMatchFound", v25, 0xCu);
      OUTLINED_FUNCTION_26_0(v25);
    }

    else
    {
    }

    v26 = v0[5];
    v27 = enum case for AppResolverResult.noMatchFound(_:);
    type metadata accessor for AppResolverResult();
    OUTLINED_FUNCTION_40();
    (*(v28 + 104))(v26, v27);

    v29 = v0[1];

    return v29();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    OUTLINED_FUNCTION_11_0();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v31 = v5;
      v32 = 0;
      *v4 = 136315138;
      v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
      v33 = v7;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v31);

      *(v4 + 4) = v11;
      OUTLINED_FUNCTION_12(&dword_0, v12, v13, "%s getAppSelectionRecommendation: Found more than 1 app and starts to query AppMatcher");
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_26_0(v5);
      OUTLINED_FUNCTION_26_0(v4);
    }

    v14 = v0[10];
    v15 = v14[16];
    v16 = v14[17];
    __swift_project_boxed_opaque_existential_1(v14 + 13, v15);
    (*(v16 + 8))(0, v15, v16);

    PhoneAppResolutionHelper.generateAppSelectionInputFeature(startCallIntent:phoneCallNLIntent:apps:)();
    swift_beginAccess();
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = PhoneAppResolutionHelper.getAppSelectionRecommendation(startCallIntent:phoneCallNLIntent:apps:);
    v18 = v0[13];
    v19 = v0[5];

    return AppResolver.resolveApp(features:)(v19, v18);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;

  swift_endAccess();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

void PhoneAppResolutionHelper.generateAppSelectionInputFeature(startCallIntent:phoneCallNLIntent:apps:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v23[1] = v7;
  v8 = type metadata accessor for CommunicationTypeSignal.CommunicationType();
  OUTLINED_FUNCTION_9_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_16_2();
  v23[0] = v12;
  __chkstk_darwin(v13);
  v15 = v23 - v14;
  OUTLINED_FUNCTION_86(v4);
  v16 = PhoneCallNLIntent.isGroupFaceTimeCall()();
  OUTLINED_FUNCTION_0_73(v4);
  v17 = PhoneCallNLIntent.isVideoCall()();
  v18 = &enum case for CommunicationTypeSignal.CommunicationType.groupVideoCall(_:);
  if (!v17)
  {
    v18 = &enum case for CommunicationTypeSignal.CommunicationType.groupAudioCall(_:);
  }

  v19 = &enum case for CommunicationTypeSignal.CommunicationType.videoCall(_:);
  if (!v17)
  {
    v19 = &enum case for CommunicationTypeSignal.CommunicationType.audioCall(_:);
  }

  if (!v16)
  {
    v18 = v19;
  }

  (*(v10 + 104))(v15, *v18, v8);
  (*(*v0 + 232))(v4, v2);
  v20 = v4[3];
  v21 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v20);
  v22 = *(v21 + 24);
  v6;
  v22(v20, v21);

  (*(v10 + 16))(v23[0], v15, v8);
  CommsAppResolutionFeature.init(intent:nlContactCount:appFeatures:communicationType:)();
  (*(v10 + 8))(v15, v8);
  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionHelper.generateAppFeatures(phoneCallNLIntent:apps:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v51 = v2;
  v55 = type metadata accessor for CommsAppFeature();
  OUTLINED_FUNCTION_9_1();
  v52 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_2();
  v54 = v5;
  __chkstk_darwin(v6);
  v53 = v47 - v7;
  v8 = specialized Array.count.getter(v1);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v8 != v9)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }
    }

    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    v11 = App.appIdentifier.getter();
    v13 = v12;

    if (!v13)
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v17;
    }

    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_3_62(v14);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v18;
    }

    v10[2] = v15 + 1;
    v16 = &v10[2 * v15];
    v16[4] = v11;
    v16[5] = v13;
    ++v9;
  }

  v19 = v51[3];
  v20 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v19);
  v21 = *(v20 + 24);
  v22 = *(v21(v19, v20) + 16);

  if (v22)
  {
    v23 = v21(v19, v20);
    if (!*(v23 + 16))
    {
      goto LABEL_47;
    }

    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v23 + 32, v56);

    v24 = v56[4];
    v25 = OUTLINED_FUNCTION_86(v56);
    v26 = SiriPhoneContact.getVocabularyAppsBundleSet()(v25, v24);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    v26 = _swiftEmptySetSingleton;
  }

  v51 = v10[2];
  if (v51)
  {
    v27 = type metadata accessor for App();
    v28 = 0;
    v49 = v10 + 4;
    v50 = v27;
    v47[1] = v52 + 8;
    v48 = (v52 + 16);
    v47[0] = v52 + 32;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v30 = &v49[2 * v28];
      v32 = *v30;
      v31 = v30[1];
      swift_bridgeObjectRetain_n();
      App.__allocating_init(appIdentifier:)();
      v33 = App.isFirstParty()();

      v34 = v26[2];
      if (v33)
      {
        if (v34)
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          Hasher._finalize()();
          OUTLINED_FUNCTION_17_26();
          do
          {
            OUTLINED_FUNCTION_5_54();
            if (!v35)
            {
              break;
            }

            v36 = (v26[6] + 16 * v20);
            v37 = *v36 == 0x73746361746E6F43 && v36[1] == 0xE800000000000000;
          }

          while (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
        }
      }

      else if (v34)
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_17_26();
        do
        {
          OUTLINED_FUNCTION_5_54();
          if (!v38)
          {
            break;
          }

          v39 = (v26[6] + 16 * v20);
          v40 = *v39 == v32 && v39[1] == v31;
        }

        while (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
      }

      v41 = v53;
      CommsAppFeature.init(bundleID:isContactInApp:)();
      (*v48)(v54, v41, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v45;
      }

      v43 = v29[2];
      v42 = v29[3];
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v42);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v46;
      }

      v28 = (v28 + 1);
      v20 = v52;
      v44 = v55;
      (*(v52 + 8))(v53, v55);
      v29[2] = v43 + 1;
      (*(v20 + 32))(v29 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v43, v54, v44);
    }

    while (v28 != v51);
  }

  OUTLINED_FUNCTION_65();
}

unint64_t PhoneAppResolutionHelper.getSiriRememberVersionApps(apps:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_5_26();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v4 = App.appIdentifier.getter();
      if (v5)
      {
        break;
      }

LABEL_22:
      if (v2 == ++v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    if (v4 == 0xD000000000000015 && v5 == 0x8000000000452BD0)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

LABEL_21:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_22;
      }
    }

    type metadata accessor for App();
    App.__allocating_init(appIdentifier:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall PhoneAppResolutionHelper.mapInCallServiceToMobile(appId:)(Swift::String appId)
{
  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_36(v2._countAndFlagsBits);
    OUTLINED_FUNCTION_24_21();

    if ((v1._countAndFlagsBits & 1) == 0)
    {
    }
  }

  OUTLINED_FUNCTION_0();
  v4 = String.lowercased()();

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall PhoneAppResolutionHelper.mapMobileToInCallService(appId:)(Swift::String appId)
{
  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_36(v2._countAndFlagsBits);
    OUTLINED_FUNCTION_24_21();

    if ((v1._countAndFlagsBits & 1) == 0)
    {
    }
  }

  v4 = OUTLINED_FUNCTION_0();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t PhoneAppResolutionHelper.isSameAppId(app:appId:)()
{
  countAndFlagsBits = App.appIdentifier.getter();
  if (v1)
  {
    v2 = String.lowercased()();
    countAndFlagsBits = v2._countAndFlagsBits;
    object = v2._object;
  }

  else
  {
    object = 0;
  }

  v4 = String.lowercased()();
  if (object)
  {
    if (countAndFlagsBits == v4._countAndFlagsBits && object == v4._object)
    {
      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *PhoneAppResolutionHelper.rankBasedOnAppUsageTime(apps:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v3)
    {
      OUTLINED_FUNCTION_2_0();
      v14 = (*(v13 + 80))(v4, 7);

      v17 = specialized Array._copyToContiguousArray()();
      specialized MutableCollection<>.sort(by:)(&v17, v16, v14);

      return v17;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v5 = App.appIdentifier.getter();
    v7 = v6;

    if (!v7)
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v11;
    }

    v9 = v4[2];
    v8 = v4[3];
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_3_62(v8);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v12;
    }

    v4[2] = v9 + 1;
    v10 = &v4[2 * v9];
    v10[4] = v5;
    v10[5] = v7;
    ++v3;
  }

  __break(1u);
LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

double PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(uint64_t a1)
{
  v3 = App.appIdentifier.getter();
  v5 = 0.0;
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v1[10];
    v9 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v8);
    (*(v9 + 256))(v25, v8, v9);
    v10 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v11 = OUTLINED_FUNCTION_11_0();
    v13 = v12(v11, v10);
    if (v14)
    {
      if (v13 == v6 && v14 == v7)
      {

        __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_16:

        return INFINITY;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1(v25);
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    if (*(a1 + 16) && (v17 = OUTLINED_FUNCTION_5_26(), specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v19 & 1) != 0))
    {
      v20 = OUTLINED_FUNCTION_5_26();
      v22 = specialized Dictionary.subscript.getter(v20, v21, a1);

      if (v22)
      {
        [v22 doubleValue];
        v5 = v23;
      }
    }

    else
    {
    }
  }

  return v5;
}

char *PhoneAppResolutionHelper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver;
  type metadata accessor for AppResolver();
  OUTLINED_FUNCTION_40();
  (*(v2 + 8))(&v0[v1]);

  return v0;
}

uint64_t PhoneAppResolutionHelper.__deallocating_deinit()
{
  PhoneAppResolutionHelper.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
    *a1 = v7;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + 32;
  v11[1] = v9;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, a2, a3);
  specialized ContiguousArray._endMutation()();
  if (v3)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v7);
  if (result >= v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5(v7 / 2);
  v12[0] = v11;
  v12[1] = (v7 / 2);

  result = specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v12, v13, a1, v9, a2, a3);
  if (!v3)
  {
    if (v7 < -1)
    {
      goto LABEL_13;
    }

LABEL_9:
    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

LABEL_11:

    return swift_bridgeObjectRelease_n();
  }

  if (v7 >= -1)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_5:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v7, 1, a1, a2, a3);
    }

    else
    {
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = a1 - a3;
    while (2)
    {
      v11 = v10;
      v18 = v9;
      do
      {

        v12 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
        v13 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

        if (v13 >= v12)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v15 = *v9;
        *v9 = v9[1];
        v9[1] = v15;
        --v9;
      }

      while (!__CFADD__(v11++, 1));
      ++v7;
      v9 = v18 + 1;
      --v10;
      if (v7 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v105 = _swiftEmptyArrayStorage;
  v9 = a3[1];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (v9 >= 1)
  {
    v104 = a5;
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    v91 = a4;
    v100 = a6;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v14 = v10;
        v15 = v10 + 1;
        v97 = v9;
        v16 = 8 * v10;
        v17 = *a3 + 8 * v10 + 16;

        v18 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
        v19 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

        v93 = v14;
        v20 = v14 + 2;
        while (1)
        {
          v21 = v20;
          if (v15 + 1 >= v9)
          {
            break;
          }

          ++v15;

          v22 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
          v23 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
          v9 = v97;

          v17 += 8;
          v20 = v21 + 1;
          if (v19 < v18 == v23 >= v22)
          {
            goto LABEL_9;
          }
        }

        v15 = v9;
LABEL_9:
        if (v19 >= v18)
        {
          a4 = v91;
          v13 = v15;
          v12 = v93;
        }

        else
        {
          v13 = v15;
          v12 = v93;
          if (v13 < v93)
          {
            goto LABEL_113;
          }

          if (v93 >= v13)
          {
            a4 = v91;
          }

          else
          {
            if (v9 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v9;
            }

            v25 = 8 * v24 - 8;
            v26 = v13;
            v27 = v93;
            do
            {
              if (v27 != --v26)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_118;
                }

                v29 = *(v28 + v16);
                *(v28 + v16) = *(v28 + v25);
                *(v28 + v25) = v29;
              }

              ++v27;
              v25 -= 8;
              v16 += 8;
            }

            while (v27 < v26);
            a4 = v91;
          }
        }
      }

      v30 = a3[1];
      if (v13 < v30)
      {
        if (__OFSUB__(v13, v12))
        {
          goto LABEL_112;
        }

        if (v13 - v12 < a4)
        {
          v31 = v12 + a4;
          if (__OFADD__(v12, a4))
          {
            goto LABEL_114;
          }

          if (v31 >= v30)
          {
            v31 = a3[1];
          }

          if (v31 < v12)
          {
LABEL_115:
            __break(1u);
LABEL_116:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_117:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_118:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_119:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_120:
            swift_bridgeObjectRelease_n();

            __break(1u);
            return result;
          }

          if (v13 != v31)
          {
            v102 = v11;
            v32 = *a3;
            v33 = *a3 + 8 * v13 - 8;
            v95 = v31;
            v34 = v12 - v13;
            do
            {
              v98 = v13;
              v35 = v34;
              v36 = v33;
              do
              {

                v37 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
                v38 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

                if (v38 >= v37)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_116;
                }

                v39 = *v36;
                *v36 = v36[1];
                v36[1] = v39;
                --v36;
              }

              while (!__CFADD__(v35++, 1));
              ++v13;
              v33 += 8;
              --v34;
            }

            while (v98 + 1 != v95);
            v13 = v95;
            v11 = v102;
          }
        }
      }

      if (v13 < v12)
      {
        goto LABEL_111;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v87;
      }

      v41 = *(v11 + 2);
      v42 = v41 + 1;
      if (v41 >= *(v11 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v88;
      }

      *(v11 + 2) = v42;
      v43 = v11 + 32;
      v44 = &v11[16 * v41 + 32];
      *v44 = v12;
      v44[1] = v13;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (v41)
      {
        v94 = v11 + 32;
        v103 = v11;
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v11[16 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = *(v11 + 4);
            v49 = *(v11 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_60:
            if (v51)
            {
              goto LABEL_101;
            }

            v63 = *v47;
            v62 = *(v47 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_104;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_107;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_109;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v42 < 2)
          {
            goto LABEL_103;
          }

          v70 = *v47;
          v69 = *(v47 + 1);
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_75:
          if (v66)
          {
            goto LABEL_106;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_108;
          }

          if (v73 < v65)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
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
            goto LABEL_115;
          }

          v77 = *a3;
          if (!*a3)
          {
            goto LABEL_117;
          }

          v78 = &v43[2 * v45 - 2];
          v79 = *v78;
          v80 = v45;
          v81 = &v43[2 * v45];
          v82 = *(v81 + 1);
          v83 = (v77 + 8 * *v78);
          v84 = (v77 + 8 * *v81);
          v85 = (v77 + 8 * v82);

          specialized _merge<A>(low:mid:high:buffer:by:)(v83, v84, v85, v96, v104, v100);
          if (v101)
          {
            goto LABEL_94;
          }

          if (v82 < v79)
          {
            goto LABEL_96;
          }

          v101 = 0;
          v86 = *(v103 + 2);
          if (v80 > v86)
          {
            goto LABEL_97;
          }

          *v78 = v79;
          v78[1] = v82;
          if (v80 >= v86)
          {
            goto LABEL_98;
          }

          v42 = v86 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v81 + 16, v86 - 1 - v80, v81);
          v11 = v103;
          *(v103 + 2) = v86 - 1;
          a6 = v100;
          v43 = v94;
          if (v86 <= 2)
          {
            goto LABEL_89;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_99;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_100;
        }

        v59 = *(v47 + 1);
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_102;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_105;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_110;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v10 = v13;
      v9 = a3[1];
      a4 = v91;
      if (v13 >= v9)
      {
        v105 = v11;
        a5 = v104;
        break;
      }
    }
  }

  v89 = *a1;
  if (!*a1)
  {
    goto LABEL_120;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v105, v89, a3, a5, a6);
LABEL_94:

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  for (*a1 = v8; ; v8 = *a1)
  {
    v9 = *(v8 + 2);
    if (v9 < 2)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();

      return 1;
    }

    v10 = *a3;
    if (!*a3)
    {
      break;
    }

    v11 = *&v8[16 * v9];
    v12 = *&v8[16 * v9 + 24];
    v13 = (v10 + 8 * v11);
    v14 = (v10 + 8 * *&v8[16 * v9 + 16]);
    v15 = (v10 + 8 * v12);

    specialized _merge<A>(low:mid:high:buffer:by:)(v13, v14, v15, a2, a4, a5);
    if (v6)
    {
      goto LABEL_11;
    }

    if (v12 < v11)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v9 - 2 >= *(v8 + 2))
    {
      goto LABEL_13;
    }

    v16 = &v8[16 * v9];
    *v16 = v11;
    *(v16 + 1) = v12;
    *a1 = v8;
    specialized Array.remove(at:)(v9 - 1);
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v11 = (a3 - a2) / 8;
  if (v9 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v12 = &v6[8 * v9];
    while (1)
    {
      if (v6 >= v12 || v7 >= a3)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v14 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
      v15 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

      if (v15 >= v14)
      {
        break;
      }

      v16 = v7;
      v17 = v8 == v7;
      v7 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
    }

    v16 = v6;
    v17 = v8 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v16;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
  v12 = &v6[8 * v11];
  v18 = a3;
  v30 = v8;
  v31 = v6;
LABEL_15:
  v19 = v7 - 8;
  v20 = v18 - 8;
  while (v12 > v6 && v7 > v8)
  {
    v22 = v20;
    v23 = v19;

    v24 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
    v25 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

    v18 = v22;
    v26 = v22 + 8;
    if (v25 < v24)
    {
      v17 = v26 == v7;
      v7 = v23;
      v8 = v30;
      v6 = v31;
      if (!v17)
      {
        *v18 = *v23;
        v7 = v23;
      }

      goto LABEL_15;
    }

    if (v12 != v26)
    {
      *v22 = *(v12 - 1);
    }

    v20 = v22 - 8;
    v12 -= 8;
    v8 = v30;
    v6 = v31;
    v19 = v23;
  }

LABEL_28:
  v27 = (v12 - v6) / 8;
  if (v7 != v6 || v7 >= &v6[8 * v27])
  {
    memmove(v7, v6, 8 * v27);
  }

  return 1;
}

uint64_t specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52[3] = a8;
  v52[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v52);
  OUTLINED_FUNCTION_40();
  (*(v15 + 32))();
  v16 = (a7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
  *v16 = type metadata accessor for PhoneAppResolutionHelper(0);
  v16[1] = &outlined read-only object #0 of specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:);
  v16[2] = 0;
  v16[3] = 0;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, a7 + 56);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v52, a7 + 16);
  v17 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver;
  v18 = type metadata accessor for AppResolver();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a7 + v17, a6, v18);
  *(a7 + 144) = a5;
  if (a3)
  {

    v20 = a3;
  }

  else
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, __src);
    v21 = objc_opt_self();

    v22 = [v21 clientWithIdentifier:112];
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    type metadata accessor for DiagnosticLogPermission();
    v24 = swift_allocObject();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v20 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(__src, v23, v24);
  }

  *(a7 + 96) = v20;
  outlined init with copy of PhoneAppResolutionLogging?(a4, &v49);
  if (v50)
  {

    (*(v19 + 8))(a6, v18);
    outlined destroy of PhoneAppResolutionLogging?(a4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v52);
    outlined init with take of SPHConversation(&v49, __src);
    v25 = __src;
  }

  else
  {
    v39 = a6;
    v40 = a4;

    outlined destroy of PhoneAppResolutionLogging?(&v49);
    v41 = a1;
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, v46);
    v26 = [objc_opt_self() sharedAnalytics];
    v38 = [v26 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v27 = static EligibleAppFinder.instance;
    v44 = type metadata accessor for EligibleAppFinder();
    v45 = &protocol witness table for EligibleAppFinder;
    *&v43 = v27;
    v50 = &type metadata for PhoneAppResolutionLogger;
    v51 = &protocol witness table for PhoneAppResolutionLogger;
    v28 = swift_allocObject();
    *&v49 = v28;
    v30 = v47;
    v29 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v31 = *(v29 + 112);

    if (v31(v30, v29))
    {
      v32 = CurrentRequest.executionRequestId.getter();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *&__src[0] = v32;
    *(&__src[0] + 1) = v34;
    *&__src[1] = v38;
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v46, &__src[1] + 8);
    v35 = v47;
    v36 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v36 + 216))(&__src[4], v35, v36);
    outlined init with take of SPHConversation(&v43, &__src[6] + 8);
    memcpy((v28 + 16), __src, 0x90uLL);

    (*(v19 + 8))(v39, v18);
    outlined destroy of PhoneAppResolutionLogging?(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v25 = &v49;
  }

  outlined init with take of SPHConversation(v25, a7 + 104);
  return a7;
}

uint64_t type metadata accessor for PhoneAppResolutionHelper(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneAppResolutionHelper;
  if (!type metadata singleton initialization cache for PhoneAppResolutionHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PhoneAppResolutionHelper(uint64_t a1)
{
  result = type metadata accessor for AppResolver();
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

uint64_t outlined init with copy of PhoneAppResolutionLogging?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhoneAppResolutionLogging?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhoneAppResolutionLogger.init(sharedGlobals:messageStream:eligibleAppsFinder:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_123();
  if (v9(v8))
  {
    v10 = CurrentRequest.executionRequestId.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v17[0] = v10;
  v17[1] = v12;
  v17[2] = a2;
  outlined init with copy of SignalProviding(a1, &v17[3]);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = OUTLINED_FUNCTION_11_0();
  v15(v14, v13);
  outlined init with take of SPHConversation(a3, &v17[13]);
  memcpy(a4, v17, 0x90uLL);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ExperimentationAnalyticsManaging.cacheTrialExperimentIdentifiers(for:namespaces:) in conformance ExperimentationAnalyticsManager(uint64_t a1, uint64_t a2)
{
  v7 = (&async function pointer to dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:) + async function pointer to dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(a1, a2);
}

uint64_t protocol witness for ExperimentationAnalyticsManaging.emitTriggerFromCache(for:requestID:) in conformance ExperimentationAnalyticsManager(uint64_t a1, uint64_t a2)
{
  v7 = (&async function pointer to dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:) + async function pointer to dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(a1, a2);
}

NSUUID __swiftcall PhoneAppResolutionLogger.CodePathId.uuid()()
{
  v1 = "92AEB74E-8E18-4755-94E3-9885E5DD68B0";
  if (v0)
  {
    v1 = "4E65C8B8-AF70-4013-A282-D6BA8D882D28";
  }

  v2 = v1 - 32;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUUID, NSUUID_ptr);
  v3._object = (v2 | 0x8000000000000000);
  v3._countAndFlagsBits = 0xD000000000000024;
  result.super.isa = NSUUID.__allocating_init(uuidString:)(v3);
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

NSUUID_optional __swiftcall NSUUID.__allocating_init(uuidString:)(Swift::String uuidString)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithUUIDString:v2];

  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneAppResolutionLogger::CodePathId_optional __swiftcall PhoneAppResolutionLogger.CodePathId.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneAppResolutionLogger.CodePathId.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppResolutionLogger_CodePathId_testing;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppResolutionLogger_CodePathId_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::PhoneAppResolutionLogger::CodePathId_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneAppResolutionLogger.CodePathId@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneAppResolutionLogger::CodePathId_optional *a2@<X8>)
{
  result.value = PhoneAppResolutionLogger.CodePathId.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneAppResolutionLogger.CodePathId@<X0>(void *a1@<X8>)
{
  result = PhoneAppResolutionLogger.CodePathId.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t ButtonConfigurationModel.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhoneAppResolutionLogger.emitTriggeredLog(codePathId:)(char a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v4 = specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(a1 & 1, v3, v1);

  return v4;
}

uint64_t PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(char a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(a1 & 1, v6, v2, v4, v5);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 48) = a4;
  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:), 0, 0);
}

unint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 72) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUUID, NSUUID_ptr);

  v1._countAndFlagsBits = OUTLINED_FUNCTION_20_0();
  v2 = NSUUID.__allocating_init(uuidString:)(v1);
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 64);
    v5 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v6 = "92AEB74E-8E18-4755-94E3-9885E5DD68B0";
    if (v3)
    {
      v6 = "4E65C8B8-AF70-4013-A282-D6BA8D882D28";
    }

    v7._object = ((v6 - 32) | 0x8000000000000000);
    v7._countAndFlagsBits = 0xD000000000000024;
    result = NSUUID.__allocating_init(uuidString:)(v7);
    *(v0 + 88) = result;
    if (result)
    {
      v18 = (*(v5 + 8) + **(v5 + 8));
      v9 = swift_task_alloc();
      *(v0 + 96) = v9;
      *v9 = v0;
      v9[1] = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
      v10 = OUTLINED_FUNCTION_14_37();

      return v18(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v13))
    {
      v14 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v14);
      OUTLINED_FUNCTION_14_1(&dword_0, v15, v16, "#PhoneAppResolutionLogger emitTriggeredLog: Couldn't convert ID to a UUID, skipping triggered log");
      OUTLINED_FUNCTION_12_3();
    }

    OUTLINED_FUNCTION_11();

    return v17();
  }

  return result;
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 64);
  if (*(v0 + 136))
  {
    v2 = "4E65C8B8-AF70-4013-A282-D6BA8D882D28";
  }

  else
  {
    v2 = "92AEB74E-8E18-4755-94E3-9885E5DD68B0";
  }

  v3 = v2 - 32;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5._object = (v3 | 0x8000000000000000);
  v5._countAndFlagsBits = 0xD000000000000024;
  result = NSUUID.__allocating_init(uuidString:)(v5);
  *(v0 + 112) = result;
  if (result)
  {
    v7 = *(v4 + 16);
    v8 = *(v0 + 80);
    v11 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
    v10 = OUTLINED_FUNCTION_14_37();

    return v11(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v3 + 104) = v0;

  if (v0)
  {
    v6 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  else
  {

    v6 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {
    v6 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  else
  {
    v7 = *(v3 + 80);

    v6 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  v16 = v0;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_42();
    v7 = OUTLINED_FUNCTION_36();
    v15 = v7;
    OUTLINED_FUNCTION_25_20(4.8149e-34);
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_59_2(&dword_0, v11, v12, "#PhoneAppResolutionLogger emitTriggeredLog: got %s while trying to emit triggered log; gave up without sending");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_11();

  return v13();
}

{
  v16 = v0;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_42();
    v7 = OUTLINED_FUNCTION_36();
    v15 = v7;
    OUTLINED_FUNCTION_25_20(4.8149e-34);
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_59_2(&dword_0, v11, v12, "#PhoneAppResolutionLogger emitTriggeredLog: got %s while trying to emit triggered log; gave up without sending");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_11();

  return v13();
}

void PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &__src[-v4];
  static TaskPriority.utility.getter();
  v6 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  outlined init with copy of PhoneAppResolutionLogger(v1, __src);
  OUTLINED_FUNCTION_19_26();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = a1;
  memcpy((v7 + 40), __src, 0x90uLL);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v5 + 24) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:), 0, 0);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)()
{
  v89 = v0;
  v1 = *(v0 + 16);
  v2 = PhoneAppResolutionLogger.EvaluationResult.toSelfSchema()(*(v0 + 88));
  if (!*(v1 + 8))
  {
    goto LABEL_4;
  }

  v3 = v2;
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_20_0();
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(*(v0 + 24), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_4:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v8))
    {
      v9 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v9);
      OUTLINED_FUNCTION_14_1(&dword_0, v10, v11, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Skipping SELF message emission due to missing requestID");
      OUTLINED_FUNCTION_12_3();
    }

    goto LABEL_9;
  }

  (*(*(v0 + 40) + 32))(*(v0 + 80), *(v0 + 24), *(v0 + 32));
  v14 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 derivedIdentifierForComponentName:27 fromSourceIdentifier:isa];

  if (v16)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
      if (v19)
      {
        v20 = v19;
        v21 = [objc_allocWithZone(INFERENCESchemaINFERENCEABModelResultTriggered) init];
        if (v21)
        {
          v22 = v21;
          v23 = PhoneAppResolutionLogger.linkMessage(inferenceID:requestID:)(*(v0 + 72), *(v0 + 80));
          if (v23)
          {
            v85 = v23;
            v25 = *(v0 + 64);
            v24 = *(v0 + 72);
            v27 = *(v0 + 32);
            v26 = *(v0 + 40);
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
            v83 = *(v26 + 16);
            v83(v25, v24, v27);
            v28 = SISchemaUUID.__allocating_init(nsuuid:)(v25);
            [v20 setInferenceId:v28];

            [v22 setTriggerReason:v3];
            [v22 setProjectIntent:5];
            v86 = v22;
            [v18 setAbModelResultTriggered:v22];
            v87 = v20;
            [v18 setEventMetadata:v20];
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
            }

            v30 = *(v0 + 72);
            v29 = *(v0 + 80);
            v32 = *(v0 + 48);
            v31 = *(v0 + 56);
            v33 = *(v0 + 32);
            v34 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);
            v83(v31, v30, v33);
            v83(v32, v29, v33);
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.debug.getter();
            v37 = os_log_type_enabled(v35, v36);
            v84 = *(v0 + 48);
            v38 = *(v0 + 32);
            v39 = *(v0 + 40);
            if (v37)
            {
              v40 = OUTLINED_FUNCTION_36();
              v82 = swift_slowAlloc();
              v88 = v82;
              *v40 = 136315650;
              v41 = INFERENCESchemaINFERENCEAppResolutionType.description.getter();
              v81 = v36;
              v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v88);

              *(v40 + 4) = v43;
              log = v35;
              *(v40 + 12) = 2080;
              lazy protocol witness table accessor for type UUID and conformance UUID();
              v44 = dispatch thunk of CustomStringConvertible.description.getter();
              v46 = v45;
              v47 = *(v39 + 8);
              v48 = OUTLINED_FUNCTION_1_12();
              v47(v48);
              v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v88);

              *(v40 + 14) = v49;
              *(v40 + 22) = 2080;
              v50 = dispatch thunk of CustomStringConvertible.description.getter();
              v52 = v51;
              (v47)(v84, v38);
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v88);
              OUTLINED_FUNCTION_11_0();

              *(v40 + 24) = v50;
              _os_log_impl(&dword_0, log, v81, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Emitting message with reason %s, UUID %s and linking to %s", v40, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26_0(v82);
              OUTLINED_FUNCTION_26_0(v40);
            }

            else
            {

              v47 = *(v39 + 8);
              (v47)(v84, v38);
              v75 = OUTLINED_FUNCTION_1_12();
              v47(v75);
            }

            v76 = *(v0 + 72);
            v77 = *(v0 + 32);
            v78 = *(*(v0 + 16) + 16);
            [v78 emitMessage:{v18, log}];
            [v78 emitMessage:v85];

            (v47)(v76, v77);
            v79 = OUTLINED_FUNCTION_1_12();
            v47(v79);
            goto LABEL_9;
          }

          v18 = v20;
        }

        else
        {
          v22 = v20;
        }

        v18 = v22;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v65 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v65, static Logger.siriPhone);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    v68 = os_log_type_enabled(v66, v67);
    v70 = *(v0 + 72);
    v69 = *(v0 + 80);
    v71 = *(v0 + 32);
    v72 = *(v0 + 40);
    if (v68)
    {
      v73 = OUTLINED_FUNCTION_65_0();
      *v73 = 0;
      _os_log_impl(&dword_0, v66, v67, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Unable to build top-level SELF messages", v73, 2u);
      OUTLINED_FUNCTION_26_0(v73);
    }

    v74 = *(v72 + 8);
    v74(v70, v71);
    v74(v69, v71);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v53 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v53, static Logger.siriPhone);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 80);
    v58 = *(v0 + 32);
    v59 = *(v0 + 40);
    if (v56)
    {
      v60 = OUTLINED_FUNCTION_42();
      v61 = OUTLINED_FUNCTION_36();
      v88 = v61;
      *v60 = 136315138;
      v62 = OUTLINED_FUNCTION_20_0();
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);
      _os_log_impl(&dword_0, v54, v55, "#PhoneAppResolutionLogger:emitAndLinkExecutionResultMessage Failed to create inferenceId with requestId: %s. Not logging to SELF", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_26_0(v61);
      OUTLINED_FUNCTION_26_0(v60);
    }

    (*(v59 + 8))(v57, v58);
  }

LABEL_9:

  OUTLINED_FUNCTION_11();

  return v12();
}

void *PhoneAppResolutionLogger.linkMessage(inferenceID:requestID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
      if (v12)
      {
        v13 = v12;
        [v12 setComponent:27];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
        v14 = *(v5 + 16);
        v14(v7, a1, v4);
        v15 = SISchemaUUID.__allocating_init(nsuuid:)(v7);
        [v13 setUuid:v15];

        [v11 setComponent:1];
        v14(v7, a2, v4);
        v16 = SISchemaUUID.__allocating_init(nsuuid:)(v7);
        [v11 setUuid:v16];

        [v9 setSource:v13];
        [v9 setTarget:v11];

        return v9;
      }
    }

    else
    {
      v11 = v9;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "#PhoneAppResolutionLogger linkMessage: Failed to create RequestLink SELF message templates. Skipping Emission.", v20, 2u);
  }

  return 0;
}

void PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &__src[-v5];
  static TaskPriority.utility.getter();
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  outlined init with copy of PhoneAppResolutionLogger(v2, __src);
  OUTLINED_FUNCTION_19_26();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  memcpy(v8 + 4, __src, 0x90uLL);
  v8[22] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for AppResolverResult();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:), 0, 0);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[6];
  v4 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v5 = OUTLINED_FUNCTION_11_0();
  v7 = v6(v5, v4);
  (*(*v7 + 88))(v7);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[17], &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v10))
    {
      v11 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v11);
      OUTLINED_FUNCTION_14_1(&dword_0, v12, v13, "#PhoneAppResolutionLogger emitAndLinkABEvaluationMessage: skipping emitting AB Evaluation message because no forced disambiguation prediction is in state");
      OUTLINED_FUNCTION_12_3();
    }

LABEL_15:
    OUTLINED_FUNCTION_13_38();

    OUTLINED_FUNCTION_11();

    return v32();
  }

  v14 = v0[6];
  v15 = *(v0[19] + 32);
  v15(v0[21], v0[17], v0[18]);
  if (!*(v14 + 8))
  {
LABEL_10:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v20))
    {
      v21 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v21);
      OUTLINED_FUNCTION_14_1(&dword_0, v22, v23, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Skipping SELF message emission due to missing requestID");
      OUTLINED_FUNCTION_12_3();
    }

    v24 = v0[21];
    v25 = v0[18];
    v26 = v0[19];
    v27 = v0[16];

    v28 = __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    v29 = OUTLINED_FUNCTION_123();
    v30(v29);
    v31 = OUTLINED_FUNCTION_11_0();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v25);
    (*(*v28 + 96))(v27);

    (*(v26 + 8))(v24, v25);
    goto LABEL_15;
  }

  v17 = v0[8];
  v16 = v0[9];
  OUTLINED_FUNCTION_20_0();
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    goto LABEL_10;
  }

  (*(v0[10] + 32))(v0[15], v0[8], v0[9]);
  v34 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v36 = [v34 derivedIdentifierForComponentName:27 fromSourceIdentifier:isa];

  if (!v36)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v67 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v67, static Logger.siriPhone);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[21];
    v73 = v0[18];
    v72 = v0[19];
    v105 = v0[15];
    v75 = v0[9];
    v74 = v0[10];
    if (v70)
    {
      v101 = v0[18];
      v76 = OUTLINED_FUNCTION_42();
      v107 = OUTLINED_FUNCTION_36();
      *v76 = 136315138;
      v77 = OUTLINED_FUNCTION_20_0();
      *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v79);
      _os_log_impl(&dword_0, v68, v69, "#PhoneAppResolutionLogger:emitAndLinkABEvaluationMessage Failed to create inferenceId with requestId: %s. Not logging to SELF", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v107);
      OUTLINED_FUNCTION_26_0(v107);
      OUTLINED_FUNCTION_26_0(v76);

      (*(v74 + 8))(v105, v75);
      (*(v72 + 8))(v71, v101);
    }

    else
    {

      (*(v74 + 8))(v105, v75);
      (*(v72 + 8))(v71, v73);
    }

    goto LABEL_15;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
  v0[22] = v37;
  if (!v37)
  {
LABEL_34:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v80 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v80, static Logger.siriPhone);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v82))
    {
      v83 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v83);
      OUTLINED_FUNCTION_14_1(&dword_0, v84, v85, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Unable to build top-level SELF messages");
      OUTLINED_FUNCTION_12_3();
    }

    v86 = v0[18];
    v87 = v0[19];
    v88 = v0[16];
    v102 = v0[15];
    v106 = v0[21];
    v99 = v0[14];
    v89 = v0[9];
    v90 = v0[10];

    v91 = v3[6];
    v92 = v3[7];
    v93 = __swift_project_boxed_opaque_existential_1(v3 + 3, v91);
    (*(v92 + 208))(v91, v92);
    v94 = OUTLINED_FUNCTION_11_0();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v86);
    (*(*v93 + 96))(v88);

    v95 = *(v90 + 8);
    v95(v99, v89);
    v95(v102, v89);
    (*(v87 + 8))(v106, v86);
    goto LABEL_15;
  }

  v38 = v37;
  v39 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
  v0[23] = v39;
  if (!v39)
  {
LABEL_33:

    goto LABEL_34;
  }

  v40 = v39;
  v41 = [objc_allocWithZone(INFERENCESchemaINFERENCEABModelEvaluated) init];
  v0[24] = v41;
  if (!v41)
  {
LABEL_32:

    v38 = v40;
    goto LABEL_33;
  }

  v42 = v41;
  v43 = PhoneAppResolutionLogger.linkMessage(inferenceID:requestID:)(v0[14], v0[15]);
  v0[25] = v43;
  if (!v43)
  {

    v38 = v40;
    v40 = v42;
    goto LABEL_32;
  }

  v97 = v0[20];
  v98 = v0[21];
  v44 = v0[19];
  v96 = v0[18];
  v46 = v0[13];
  v45 = v0[14];
  v48 = v0[9];
  v47 = v0[10];
  v100 = v0[6];
  v103 = v0[7];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
  v49 = *(v47 + 16);
  v0[26] = v49;
  v0[27] = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v46, v45, v48);
  v50 = SISchemaUUID.__allocating_init(nsuuid:)(v46);
  [v40 setInferenceId:v50];

  (*(v44 + 16))(v97, v98, v96);
  type metadata accessor for ModelDecisionEvaluator(0);
  v51 = swift_allocObject();
  v0[28] = v51;
  v15(v51 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v97, v96);
  *(v51 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp) = v103;
  v52 = v100[16];
  v53 = v100[17];
  __swift_project_boxed_opaque_existential_1(v100 + 13, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v54 = swift_allocObject();
  v0[29] = v54;
  *(v54 + 16) = xmmword_424FF0;
  v55 = objc_allocWithZone(INStartCallIntent);

  v56 = [v55 init];
  v57 = [v56 _className];

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  *(v54 + 32) = v58;
  *(v54 + 40) = v60;
  v61 = [objc_allocWithZone(INStartAudioCallIntent) init];
  v62 = [v61 _className];

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  *(v54 + 48) = v63;
  *(v54 + 56) = v65;
  v104 = (*(v53 + 16) + **(v53 + 16));
  v66 = swift_task_alloc();
  v0[30] = v66;
  *v66 = v0;
  v66[1] = closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:);

  return v104(v54, v52, v53);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *(v4 + 248) = v3;

  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:), 0, 0);
}

{
  v151 = v0;
  v1 = *(v0 + 248);
  v150[0] = _swiftEmptyArrayStorage;
  v2 = specialized Array.count.getter(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_65;
      }
    }

    if (__OFADD__(i, 1))
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
LABEL_70:
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_42:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.siriPhone);
      OUTLINED_FUNCTION_11_0();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 192);
      v136 = *(v0 + 184);
      v132 = *(v0 + 176);
      v146 = *(v0 + 168);
      v29 = *(v0 + 144);
      v30 = *(v0 + 152);
      v31 = *(v0 + 120);
      v140 = *(v0 + 200);
      v144 = *(v0 + 112);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      if (v27)
      {
        v126 = *(v0 + 192);
        v129 = *(v0 + 144);
        v34 = swift_slowAlloc();
        v124 = v31;
        v35 = swift_slowAlloc();
        v150[0] = v35;
        *v34 = 136315394;
        v36 = App.appIdentifier.getter();
        if (v37)
        {
          v38 = v37;
        }

        else
        {
          v36 = 7104878;
          v38 = 0xE300000000000000;
        }

        v122 = v33;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v150);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        v40 = Array.description.getter();
        v42 = v41;

        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v150);

        *(v34 + 14) = v43;
        OUTLINED_FUNCTION_26_18(&dword_0, v44, v45, "#PhoneAppResolutionLogger:emitAndLinkABEvaluationMessage can't find chosen app:%s from candidate list:%s. Not logging to SELF");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v35);
        OUTLINED_FUNCTION_26_0(v34);

        v46 = *(v32 + 8);
        v46(v144, v122);
        v46(v124, v122);
        (*(v30 + 8))(v146, v129);
      }

      else
      {

        v47 = *(v32 + 8);
        v47(v144, v33);
        v47(v31, v33);
        (*(v30 + 8))(v146, v29);
      }

      goto LABEL_61;
    }

    App.appIdentifier.getter();
    if (v4)
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v5 = v150[0];
  v6 = specialized Array.count.getter(v150[0]);
  v7 = 0;
  v8 = v150[0] & 0xC000000000000001;
  v9 = _swiftEmptyArrayStorage;
  while (v6 != v7)
  {
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_67;
      }
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_66;
    }

    v11 = App.appIdentifier.getter();
    v13 = v12;

    ++v7;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v16;
      }

      v14 = v9[2];
      if (v14 >= v9[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v17;
      }

      v9[2] = v14 + 1;
      v15 = &v9[2 * v14];
      v15[4] = v11;
      v15[5] = v13;
      v7 = v10;
    }
  }

  v150[0] = v9;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:));
  v18 = App.appIdentifier.getter();
  if (!v19 || (*(v0 + 16) = v18, *(v0 + 24) = v19, *(swift_task_alloc() + 16) = v0 + 16, v20 = specialized Sequence.contains(where:)(), , , !v20))
  {

    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_70;
    }

    goto LABEL_42;
  }

  v21 = ModelDecisionEvaluator.getPredictedApp()();
  if (!v21.value._object)
  {
LABEL_30:

    v23 = 0;
    v150[0] = _swiftEmptyArrayStorage;
    while (v6 != v23)
    {
      if (v8)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v5 + 16))
        {
          goto LABEL_69;
        }
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_68;
      }

      if (App.isFirstParty()())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v23;
    }

    v48 = *(v0 + 192);
    v49 = *(v0 + 48);
    v50 = specialized Array.count.getter(v150[0]);

    [v48 setIsDecisionCorrect:ModelDecisionEvaluator.isDecisionCorrect()()];
    [v48 setIsModelDisambiguation:ModelDecisionEvaluator.isDisambiguation()()];
    [v48 setIsModelConfirmation:ModelDecisionEvaluator.isConfirmation()()];
    v51 = v49[11];
    v52 = v49[12];
    __swift_project_boxed_opaque_existential_1(v49 + 8, v51);
    v53 = (*(v52 + 8))(v5, v51, v52);

    [v48 setUserPersona:v53];
    [v48 setProjectIntent:5];
    v54 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
    }

    else if (v54 >= 0xFFFFFFFF80000000)
    {
      if (v54 <= 0x7FFFFFFF)
      {
        v55 = *(v0 + 184);
        v56 = *(v0 + 192);
        v57 = *(v0 + 176);
        [v56 setNumCandidateApps:?];
        [v57 setAbModelEvaluated:v56];
        [v57 setEventMetadata:v55];
        if (one-time initialization token for siriPhone == -1)
        {
LABEL_52:
          v58 = *(v0 + 208);
          v59 = *(v0 + 120);
          v60 = *(v0 + 88);
          v61 = *(v0 + 72);
          v62 = type metadata accessor for Logger();
          __swift_project_value_buffer(v62, static Logger.siriPhone);
          v63 = OUTLINED_FUNCTION_20_0();
          v58(v63);
          (v58)(v60, v59, v61);

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v137 = v65;
            v147 = *(v0 + 88);
            v66 = *(v0 + 72);
            v67 = *(v0 + 80);
            v68 = OUTLINED_FUNCTION_36();
            v141 = swift_slowAlloc();
            v150[0] = v141;
            *v68 = 136315650;

            v69 = ModelDecisionEvaluator.description.getter();
            v71 = v70;

            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v150);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            lazy protocol witness table accessor for type UUID and conformance UUID();
            OUTLINED_FUNCTION_123();
            v73 = dispatch thunk of CustomStringConvertible.description.getter();
            v75 = v74;
            v76 = *(v67 + 8);
            v77 = OUTLINED_FUNCTION_1_12();
            v76(v77);
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v150);

            *(v68 + 14) = v78;
            *(v68 + 22) = 2080;
            v79 = v147;
            OUTLINED_FUNCTION_123();
            v80 = dispatch thunk of CustomStringConvertible.description.getter();
            v82 = v81;
            v148 = v76;
            (v76)(v79, v66);
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v150);

            *(v68 + 24) = v83;
            _os_log_impl(&dword_0, v64, v137, "#PhoneAppResolutionLogger emitAndLinkABEvaluationMessage: Emitting message with result %s), UUID %s and linking to %s", v68, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_26_0(v141);
            OUTLINED_FUNCTION_26_0(v68);
          }

          else
          {
            v85 = *(v0 + 88);
            v84 = *(v0 + 96);
            v86 = *(v0 + 72);
            v87 = *(v0 + 80);

            v88 = *(v87 + 8);
            (v88)(v85, v86);
            v148 = v88;
            (v88)(v84, v86);
          }

          v89 = *(v0 + 200);
          v90 = *(v0 + 176);
          v133 = *(v0 + 184);
          v134 = *(v0 + 192);
          v91 = *(v0 + 144);
          v92 = *(v0 + 152);
          v93 = *(v0 + 128);
          v138 = *(v0 + 120);
          v142 = *(v0 + 168);
          v130 = *(v0 + 112);
          v127 = *(v0 + 72);
          v94 = *(v0 + 48);
          v95 = v94[2];
          [v95 emitMessage:v90];
          [v95 emitMessage:v89];
          v96 = v94[7];
          __swift_project_boxed_opaque_existential_1(v94 + 3, v94[6]);
          v97 = OUTLINED_FUNCTION_11_0();
          v99 = v98(v97, v96);
          __swift_storeEnumTagSinglePayload(v93, 1, 1, v91);
          (*(*v99 + 96))(v93);

          (v148)(v130, v127);
          (v148)(v138, v127);
          (*(v92 + 8))(v142, v91);
          goto LABEL_61;
        }

LABEL_74:
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        goto LABEL_52;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_73;
  }

  *(v0 + 32) = v21;
  *(swift_task_alloc() + 16) = v0 + 32;
  v22 = specialized Sequence.contains(where:)();

  if (v22)
  {

    goto LABEL_30;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v100 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v100, static Logger.siriPhone);

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.debug.getter();

  v103 = os_log_type_enabled(v101, v102);
  v139 = *(v0 + 200);
  v143 = *(v0 + 192);
  v135 = *(v0 + 184);
  v104 = *(v0 + 168);
  v106 = *(v0 + 144);
  v105 = *(v0 + 152);
  v107 = *(v0 + 120);
  v108 = *(v0 + 80);
  v145 = *(v0 + 112);
  v149 = *(v0 + 72);
  if (v103)
  {
    v123 = *(v0 + 176);
    v128 = *(v0 + 168);
    v109 = swift_slowAlloc();
    v125 = v106;
    v110 = swift_slowAlloc();
    v150[0] = v110;
    *v109 = 136315394;
    v131 = v107;
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21.value._countAndFlagsBits, v21.value._object, v150);

    *(v109 + 4) = v111;
    *(v109 + 12) = 2080;
    v112 = Array.description.getter();
    v114 = v113;

    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, v150);

    *(v109 + 14) = v115;
    OUTLINED_FUNCTION_26_18(&dword_0, v116, v117, "#PhoneAppResolutionLogger:emitAndLinkABEvaluationMessage can't find predicted app:%s from candidate list:%s. Not logging to SELF");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v110);
    OUTLINED_FUNCTION_26_0(v109);

    v118 = *(v108 + 8);
    v118(v145, v149);
    v118(v131, v149);
    (*(v105 + 8))(v128, v125);
  }

  else
  {

    v119 = *(v108 + 8);
    v119(v145, v149);
    v119(v107, v149);
    (*(v105 + 8))(v104, v106);
  }

LABEL_61:
  OUTLINED_FUNCTION_13_38();

  OUTLINED_FUNCTION_11();

  return v120();
}

uint64_t specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(char a1, void *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v24[3] = type metadata accessor for ExperimentationAnalyticsManager();
  v24[4] = &protocol witness table for ExperimentationAnalyticsManager;
  v24[0] = a2;
  v9 = a3[1];
  if (v9)
  {
    v10 = *a3;
    v11 = a2;

    static TaskPriority.utility.getter();
    v12 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
    outlined init with copy of SignalProviding(v24, v23);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
    outlined init with take of SPHConversation(v23, v13 + 48);
    *(v13 + 88) = a1 & 1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v15 = v14;
  }

  else
  {
    v16 = one-time initialization token for siriPhone;
    v17 = a2;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#PhoneAppResolutionLogger emitTriggeredLog: no request ID in context, skipping triggered log", v21, 2u);
    }

    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v15;
}

uint64_t specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v26[3] = a4;
  v26[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v14 = a3[1];
  if (v14)
  {
    v15 = *a3;

    static TaskPriority.utility.getter();
    v16 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v16);
    outlined init with copy of SignalProviding(v26, v25);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    outlined init with take of SPHConversation(v25, v17 + 48);
    *(v17 + 88) = a1 & 1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v19 = v18;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#PhoneAppResolutionLogger emitTriggeredLog: no request ID in context, skipping triggered log", v23, 2u);
    }

    v19 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v19;
}

uint64_t partial apply for closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)()
{
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)(v5, v6, v7, v1, v8);
}

uint64_t partial apply for closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)()
{
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 176);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)(v5, v6, v7, v8, v1);
}

unint64_t lazy protocol witness table accessor for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult()
{
  result = lazy protocol witness table cache variable for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult;
  if (!lazy protocol witness table cache variable for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId()
{
  result = lazy protocol witness table cache variable for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId;
  if (!lazy protocol witness table cache variable for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PhoneAppResolutionLogger.CodePathId] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneAppResolutionLogger.CodePathId] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneAppResolutionLogger.CodePathId] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A19AppResolutionLoggerV10CodePathIdOGMd, &_sSay27PhoneCallFlowDelegatePlugin0A19AppResolutionLoggerV10CodePathIdOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneAppResolutionLogger.CodePathId] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneAppResolutionLogger(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PhoneAppResolutionLogger(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneAppResolutionLogger.EvaluationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for PhoneAppResolutionLogger.CodePathId(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t partial apply for closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = closure #1 in ActionableCallControlFlow.execute();
  v7 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(v7, v8, v9, v1, v2, v10, v3);
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)partial apply()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();
  v7 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(v7, v8, v9, v1, v2, v10, v3);
}

void OUTLINED_FUNCTION_26_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

void PhoneAppResolutionOnDeviceFlowStrategy.__allocating_init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v41 = v8;
  v42 = v9;
  v39 = v10;
  v40 = v11;
  v38 = v12;
  swift_allocObject();
  v13 = v7[3];
  v37 = v7[4];
  __swift_mutable_project_boxed_opaque_existential_1(v7, v13);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v16 = OUTLINED_FUNCTION_122_1(v15);
  v17(v16);
  v18 = v5[3];
  v36 = v5[4];
  v19 = OUTLINED_FUNCTION_53_1();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v26 = v3[3];
  v27 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v26);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_4();
  v30 = OUTLINED_FUNCTION_29_5(v29);
  v31(v30);
  OUTLINED_FUNCTION_118_2();
  specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)(v38, v39, v40, v41, v42, v0, v24, v1, v32, v33, v34, v35, v26, v18, v13, v27, v36, v37);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)()
{
  OUTLINED_FUNCTION_66();
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v41 = v9;
  v38 = v10;
  v39 = v11;
  v37 = v12;
  v13 = *(v7 + 24);
  v36 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v13);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v16 = OUTLINED_FUNCTION_122_1(v15);
  v17(v16);
  v18 = v6[3];
  v35 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v18);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = *(v4 + 24);
  v25 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v24);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4();
  v28 = OUTLINED_FUNCTION_29_5(v27);
  v29(v28);
  OUTLINED_FUNCTION_118_2();
  specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)(v37, v38, v39, v40, v41, v0, v22, v1, v31, v32, v33, v34, v24, v18, v13, v25, v35, v36);
  v30 = OUTLINED_FUNCTION_5();
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.resolveApp(input:)()
{
  *(v1 + 248) = v0;
  v2 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 248);
  v3 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  v4 = OUTLINED_FUNCTION_40_0();
  v6 = v5(v4, v3);
  *(v0 + 256) = v6;
  (*(*v6 + 216))();
  if (*(v0 + 48))
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0 + 64, v0 + 144, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v0 + 16);
    if (*(v0 + 168))
    {
      v7 = *(v0 + 248);
      outlined init with take of SPHConversation((v0 + 144), v0 + 104);
      outlined init with copy of SignalProviding(v0 + 104, v0 + 184);
      swift_beginAccess();
      outlined assign with take of PhoneCallNLIntent?(v0 + 184, v7 + 456);
      swift_endAccess();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 264) = v8;
      *v8 = v9;
      v8[1] = PhoneAppResolutionOnDeviceFlowStrategy.resolveApp(input:);

      return PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:)();
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 144, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = *(v0 + 248);
  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);

  v13 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  OUTLINED_FUNCTION_158();
  if (OUTLINED_FUNCTION_157())
  {
    v14 = *(v0 + 248);
    OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_14_2();
    *v11 = 136315138;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v14[53], v14[54], v14[55], v14[56]);
    OUTLINED_FUNCTION_127(v16, v17, v18, v19, v20, v21, v22, v23, v15, 0, 0xE000000000000000);
    OUTLINED_FUNCTION_125();
    *(v11 + 4) = v1;
    OUTLINED_FUNCTION_112_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

  type metadata accessor for AppResolutionAction();
  static AppResolutionAction.noAppFound()();
  OUTLINED_FUNCTION_40_0();

  v29 = OUTLINED_FUNCTION_3_20();

  return v30(v29);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 272))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  else
  {
    PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)((v0 + 104));
    OUTLINED_FUNCTION_40_0();

    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  v1 = OUTLINED_FUNCTION_3_20();

  return v2(v1);
}

void *PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(void *a1)
{
  v2 = v1;
  PhoneAppResolutionOnDeviceFlowStrategy.tryAppQueryFromCallNotifications(phoneCallNLIntent:sharedGlobals:)(a1, (v1 + 25));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_86(a1);
    OUTLINED_FUNCTION_142_0();
    if (PhoneCallNLIntent.isAnswerCall()() || (OUTLINED_FUNCTION_86(a1), OUTLINED_FUNCTION_142_0(), PhoneCallNLIntent.isHangUpCall()()) || (OUTLINED_FUNCTION_86(a1), OUTLINED_FUNCTION_142_0(), PhoneCallNLIntent.isIncomingCallSearch()()))
    {
      v6 = OUTLINED_FUNCTION_121_1();
      PhoneAppResolutionOnDeviceFlowStrategy.makeAppQueryForIncomingCall(phoneCallNLIntent:sharedGlobals:)(v6, v7);
    }

    else
    {
      v57 = OUTLINED_FUNCTION_121_1();
      PhoneAppResolutionOnDeviceFlowStrategy.makeAppQuery(phoneCallNLIntent:sharedGlobals:)(v57, v58);
    }

    v5 = v8;
  }

  OUTLINED_FUNCTION_86(a1);
  v59 = a1;
  if (PhoneCallNLIntent.isFaceTimeCall()())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = OUTLINED_FUNCTION_3_13();
    v10(v9);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  v11 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  v12 = OUTLINED_FUNCTION_61();
  v13(v12, v11);
  OUTLINED_FUNCTION_143_0();
  v14();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  if (v65)
  {
    v70[0] = v66;
    v70[1] = v67;
    v69 = v65;
    v71 = v68;
    v15 = OUTLINED_FUNCTION_146_0();
    if (specialized Set._isDisjoint<A>(with:)(v15, v16))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        OUTLINED_FUNCTION_86_1();
        v61[0] = OUTLINED_FUNCTION_55_4();
        *v11 = 136315394;
        v20 = OUTLINED_FUNCTION_109_1();
        v62[0] = 0;
        v62[1] = v21;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v20, v22, v23, v24);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v62[1], v61);
        OUTLINED_FUNCTION_40_0();

        *(v11 + 4) = v62;
        OUTLINED_FUNCTION_99_0();
        v25 = Array.description.getter();
        v2 = v26;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v61);
        OUTLINED_FUNCTION_40_0();

        *(v11 + 14) = v62;
        _os_log_impl(&dword_0, v18, v19, "%s App found but doesn't support requested intents: %s", v11, 0x16u);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_14_0();
      }

      type metadata accessor for AppResolutionAction();
      static AppResolutionAction.appNotSupported(app:)();
      OUTLINED_FUNCTION_125_1();

      *v62 = *(v70 + 8);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_sSSSgMd, &_sSSSgMR);
      v61[0] = v71;
      v27 = v61;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
      v72 = *(v70 + 8);
      v73[0] = v71;

      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v72, v62, &_sSSSgMd, &_sSSSgMR);
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v73, v62, &_sShySSGMd, &_sShySSGMR);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v72, &_sSSSgMd, &_sSSSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_sShySSGMd, &_sShySSGMR);
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_86_1();
        v60 = OUTLINED_FUNCTION_16_13();
        v61[0] = v60;
        *v40 = 136315394;
        v41 = OUTLINED_FUNCTION_109_1();
        v62[0] = 0;
        v62[1] = v42;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v41, v43, v44, v45);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62[0], v62[1], v61);
        OUTLINED_FUNCTION_34_0();

        *(v40 + 4) = &_sSSSgMd;
        *(v40 + 12) = 2080;

        _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v72, v62, &_sSSSgMd, &_sSSSgMR);
        _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v73, v62, &_sShySSGMd, &_sShySSGMR);
        v46 = AnnotatedApp.description.getter();
        v48 = v47;

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v72, &_sSSSgMd, &_sSSSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_sShySSGMd, &_sShySSGMR);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v61);

        *(v40 + 14) = v49;
        OUTLINED_FUNCTION_155(&dword_0, v50, v51, "%s Selecting and caching app: %s with current NL intent");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v60);
        OUTLINED_FUNCTION_36_16();
      }

      v52 = v2[29];
      __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
      v53 = OUTLINED_FUNCTION_61();
      v54(v53, v52);
      v2 = v63;
      v55 = v64;
      OUTLINED_FUNCTION_28_0(v62, v63);
      outlined init with copy of SignalProviding(v59, v61);
      (*(v55 + 8))(&v69, v61, v2, v55);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v62);
      type metadata accessor for AppResolutionAction();
      static AppResolutionAction.select(app:)();
      OUTLINED_FUNCTION_125_1();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v72, &_sSSSgMd, &_sSSSgMR);
      v27 = v73;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_sShySSGMd, &_sShySSGMR);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v29 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_162();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v62[0] = OUTLINED_FUNCTION_83();
      *v5 = 136315138;
      v30 = OUTLINED_FUNCTION_109_1();
      v69 = 0;
      *&v70[0] = v31;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v30, v32, v33, v34);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, *&v70[0], v62);
      OUTLINED_FUNCTION_40_0();

      *(v5 + 4) = &v69;
      OUTLINED_FUNCTION_26(&dword_0, v35, v36, "%s No matching app");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppResolutionAction();
    return static AppResolutionAction.noAppFound()();
  }

  return v2;
}

void PhoneAppResolutionOnDeviceFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v168 = v3;
  v4 = type metadata accessor for AppResolutionResult();
  OUTLINED_FUNCTION_7();
  v164 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = (v8 - v7);
  v166 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v169 = v10;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v165 = v12 - v13;
  __chkstk_darwin(v14);
  v167 = v162 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_12_5();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v162 - v22;
  __chkstk_darwin(v24);
  v170 = v162 - v25;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.siriPhone);

  v28 = v27;
  v29 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_131_1();
  v30 = os_log_type_enabled(v29, v1);
  v163 = v9;
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_42();
    v162[1] = v27;
    v32 = v31;
    v162[0] = OUTLINED_FUNCTION_36();
    *&v172 = v162[0];
    *v32 = 136315138;
    v33 = v23;
    v34 = v20;
    v36 = v2[45];
    v35 = v2[46];
    OUTLINED_FUNCTION_114();
    *&v174[0] = 0;
    *(&v174[0] + 1) = v37;

    v38 = v36;
    v20 = v34;
    v23 = v33;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v38, v35, 0xD000000000000021, v28 | 0x8000000000000000);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v174[0], *(&v174[0] + 1), &v172);
    OUTLINED_FUNCTION_40_0();

    *(v32 + 4) = v174;
    _os_log_impl(&dword_0, v29, v1, "%s", v32, 0xCu);
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_26_0(v32);
  }

  outlined init with copy of SignalProviding((v2 + 25), v174);
  type metadata accessor for YesNoConfirmationParser();
  v39 = swift_allocObject();
  *(v39 + 16) = 5;
  outlined init with take of SPHConversation(v174, v39 + 24);
  v40 = v170;
  v41 = v168;
  YesNoConfirmationParser.parseConfirmationResponse(input:)(v170);

  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v40, v23, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v42 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v42);
  v44 = v169;
  if (EnumTagSinglePayload != 1)
  {
    v66 = OUTLINED_FUNCTION_103_0();
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v66, v67, v68, v69);
    v70 = *(v42 - 8);
    v71 = (*(v70 + 88))(v20, v42);
    if (v71 == enum case for ConfirmationResponse.confirmed(_:))
    {
      v72 = v2[3];
      if (v72)
      {

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v73, v74))
        {
          OUTLINED_FUNCTION_86_1();
          *&v172 = OUTLINED_FUNCTION_55_4();
          *v4 = 136315394;
          v75 = OUTLINED_FUNCTION_20_27();
          OUTLINED_FUNCTION_92_2(v75, v76, v77, v78, v79);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_34_0();

          *(v4 + 4) = v41;
          OUTLINED_FUNCTION_99_0();
          *&v174[0] = v72;
          v80 = type metadata accessor for App();
          OUTLINED_FUNCTION_1_75();
          _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v81, 255, v82, &protocol conformance descriptor for App);
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v172);
          OUTLINED_FUNCTION_34_0();

          *(v4 + 14) = v80;
          _os_log_impl(&dword_0, v73, v74, "%s parseConfirmationResponse: yes -> select app: %s", v4, 0x16u);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_36_16();
          OUTLINED_FUNCTION_14_0();
        }

        PhoneAppResolutionOnDeviceFlowStrategy.selectAppConfirmation(by:)();
        OUTLINED_FUNCTION_40_0();
      }

      else
      {

        v124 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_131_1();
        if (OUTLINED_FUNCTION_156())
        {
          OUTLINED_FUNCTION_42();
          v125 = OUTLINED_FUNCTION_14_2();
          *&v172 = v125;
          *v4 = 136315138;
          v126 = OUTLINED_FUNCTION_20_27();
          OUTLINED_FUNCTION_92_2(v126, v127, v128, v129, v130);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_107_1();
          *(v4 + 4) = v2;
          OUTLINED_FUNCTION_91_4(&dword_0, v131, v132, "%s parseConfirmationResponse: yes -> found no app to confirm");
          __swift_destroy_boxed_opaque_existential_1(v125);
          OUTLINED_FUNCTION_26_0(v125);
          OUTLINED_FUNCTION_14_0();
        }

        type metadata accessor for AppConfirmationResponse();
        static AppConfirmationResponse.select()();
      }
    }

    else
    {
      if (v71 != enum case for ConfirmationResponse.rejected(_:))
      {
        (*(v70 + 8))(v20, v42);
        goto LABEL_6;
      }

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = OUTLINED_FUNCTION_86_1();
        *&v172 = OUTLINED_FUNCTION_16_13();
        v97 = OUTLINED_FUNCTION_18_20(4.8151e-34);
        OUTLINED_FUNCTION_92_2(v97, v98, v99, v100, v101);
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_34_0();

        *(v96 + 4) = v41;
        *(v96 + 12) = 2080;
        type metadata accessor for App();
        OUTLINED_FUNCTION_34_0();

        v102 = Array.description.getter();
        v104 = v103;

        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v172);

        *(v96 + 14) = v105;
        _os_log_impl(&dword_0, v94, v95, "%s parseConfirmationResponse: no -> disambiguate app list '%s'", v96, 0x16u);
        OUTLINED_FUNCTION_97_1();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_35();
      }

      type metadata accessor for AppConfirmationResponse();

      static AppConfirmationResponse.disambiguate(apps:)();
      OUTLINED_FUNCTION_40_0();
    }

    OUTLINED_FUNCTION_144_0();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v133, v134, v135);
    OUTLINED_FUNCTION_144_0();
    goto LABEL_51;
  }

LABEL_6:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v45 = v167;
  Input.parse.getter();
  v46 = v166;
  v47 = (*(v44 + 88))(v45, v166);
  if (v47 != enum case for Parse.NLv3IntentOnly(_:) && v47 != enum case for Parse.NLv4IntentOnly(_:) && v47 != enum case for Parse.uso(_:))
  {

    v85 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_163();
    if (OUTLINED_FUNCTION_161())
    {
      OUTLINED_FUNCTION_42();
      v87 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_138_1(v87);
      v88 = OUTLINED_FUNCTION_18_20(4.8149e-34);
      OUTLINED_FUNCTION_92_2(v88, v89, v90, v91, v92);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_63_1();
      *(v1 + 4) = v44;
      v44 = v169;
      OUTLINED_FUNCTION_33_14(&dword_0, v93, v41, "%s parseConfirmationResponse: unsupported parse");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    (*(v44 + 8))(v167, v46);
LABEL_43:

    v106 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_163();
    if (OUTLINED_FUNCTION_161())
    {
      OUTLINED_FUNCTION_42();
      v115 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_138_1(v115);
      v116 = OUTLINED_FUNCTION_18_20(4.8149e-34);
      OUTLINED_FUNCTION_92_2(v116, v117, v118, v119, v120);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_107_1();
      *(v1 + 4) = v2;
      v114 = "%s parseConfirmationResponse: unable to confirm. Ignoring..";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v1 = *(v44 + 8);
  (v1)(v45, v46);
  v50 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  v51 = OUTLINED_FUNCTION_40_0();
  v52(v51, v50);
  v41 = v165;
  Input.parse.getter();
  OUTLINED_FUNCTION_41_0();
  v53 = OUTLINED_FUNCTION_121_1();
  v54(v53);

  (v1)(v41, v46);
  if (v173)
  {
    outlined init with take of SPHConversation(&v172, v174);
    OUTLINED_FUNCTION_1_3();
    if (!PhoneCallNLIntent.hasApplicationNameOrId()())
    {
      __swift_destroy_boxed_opaque_existential_1(v174);
      goto LABEL_43;
    }

    v55 = OUTLINED_FUNCTION_1_3();
    v57 = PhoneCallNLIntent.applicationId.getter(v55, v56);
    if (!v58)
    {
      v59 = OUTLINED_FUNCTION_1_3();
      v57 = PhoneCallNLIntent.appName.getter(v59, v60);
    }

    v61 = v57;
    v62 = v58;
    if (v2[3])
    {

      v63 = App.appIdentifier.getter();
      if (v64)
      {
        if (v62)
        {
          if (v63 == v61 && v64 == v62)
          {
          }

          else
          {
            v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v61 & 1) == 0)
            {

LABEL_58:
              PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(v174);
              v136 = v163;
              AppResolutionAction.result.getter();

              v137 = v164;
              if ((*(v164 + 88))(v136, v4) != enum case for AppResolutionResult.selected(_:))
              {
                (*(v137 + 8))(v136, v4);

                v155 = Logger.logObject.getter();
                static os_log_type_t.debug.getter();
                OUTLINED_FUNCTION_163();
                if (OUTLINED_FUNCTION_161())
                {
                  OUTLINED_FUNCTION_42();
                  v171 = OUTLINED_FUNCTION_83();
                  *&v172 = 0;
                  v156 = OUTLINED_FUNCTION_18_20(4.8149e-34);
                  *(&v172 + 1) = v157;
                  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v156, v158, v159, v160);
                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, *(&v172 + 1), &v171);
                  OUTLINED_FUNCTION_107_1();
                  *(v61 + 4) = v2;
                  OUTLINED_FUNCTION_33_14(&dword_0, v161, v136, "%s parseConfirmationResponse: User changed to an invalid app, re-run Flow to present error dialog");
                  OUTLINED_FUNCTION_3_7();
                  OUTLINED_FUNCTION_35();
                }

                type metadata accessor for AppConfirmationResponse();
                static AppConfirmationResponse.ignore()();
                goto LABEL_68;
              }

              (*(v137 + 96))(v136, v4);
              v138 = *v136;

              v139 = Logger.logObject.getter();
              static os_log_type_t.debug.getter();

              if (OUTLINED_FUNCTION_31_13())
              {
                OUTLINED_FUNCTION_86_1();
                v171 = OUTLINED_FUNCTION_55_4();
                *&v172 = 0;
                *v4 = 136315394;
                v140 = OUTLINED_FUNCTION_20_27();
                *(&v172 + 1) = v141;
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v140, v142, v143, v144);
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, *(&v172 + 1), &v171);
                OUTLINED_FUNCTION_107_1();
                *(v4 + 4) = v2;
                OUTLINED_FUNCTION_99_0();
                *&v172 = v138;
                v145 = type metadata accessor for App();
                OUTLINED_FUNCTION_1_75();
                _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v146, 255, v147, &protocol conformance descriptor for App);
                v148 = dispatch thunk of CustomStringConvertible.description.getter();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v171);
                OUTLINED_FUNCTION_107_1();
                *(v4 + 14) = v145;
                OUTLINED_FUNCTION_9_38();
                _os_log_impl(v150, v151, v152, v153, v154, 0x16u);
                OUTLINED_FUNCTION_97_1();
                OUTLINED_FUNCTION_5_7();
                OUTLINED_FUNCTION_14_0();
              }

              type metadata accessor for AppConfirmationResponse();
              OUTLINED_FUNCTION_40_0();
              static AppConfirmationResponse.select(app:)();
LABEL_67:
              OUTLINED_FUNCTION_40_0();

LABEL_68:
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v170, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
              __swift_destroy_boxed_opaque_existential_1(v174);
              goto LABEL_52;
            }
          }

LABEL_66:
          PhoneAppResolutionOnDeviceFlowStrategy.selectAppConfirmation(by:)();
          goto LABEL_67;
        }
      }

      else
      {
        if (!v62)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_58;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v172, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

  v106 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_163();
  if (OUTLINED_FUNCTION_161())
  {
    OUTLINED_FUNCTION_42();
    v107 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_138_1(v107);
    v108 = OUTLINED_FUNCTION_18_20(4.8149e-34);
    OUTLINED_FUNCTION_92_2(v108, v109, v110, v111, v112);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_107_1();
    *(v1 + 4) = v2;
    v114 = "%s parseConfirmationResponse: could not transform input to NLIntent, ignoring input";
LABEL_45:
    OUTLINED_FUNCTION_33_14(&dword_0, v113, v41, v114);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_46:

  type metadata accessor for AppConfirmationResponse();
  static AppConfirmationResponse.ignore()();
  v121 = &_s11SiriKitFlow20ConfirmationResponseOSgMd;
  v122 = &_s11SiriKitFlow20ConfirmationResponseOSgMR;
  v123 = v170;
LABEL_51:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v123, v121, v122);
LABEL_52:
  OUTLINED_FUNCTION_65();
}