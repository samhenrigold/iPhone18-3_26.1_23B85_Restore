uint64_t Attribute.AttributeType.describe(state:)(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 41) && *(a1 + 41) != 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = Interpreter.Storage.Types.subscript.getter(a2);
    MEMORY[0x26D69CDB0](v3);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v4 = Interpreter.Storage.Types.subscript.getter(HIDWORD(a2));
    MEMORY[0x26D69CDB0](v4);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    return 40;
  }

  return result;
}

void Attribute.AttributeType.hash(into:)(int a1, unint64_t a2, Swift::UInt8 a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a3);
}

Swift::Int Attribute.AttributeType.hashValue.getter(unint64_t a1, Swift::UInt8 a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Attribute.AttributeType()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Attribute.AttributeType()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Attribute.AttributeType(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t Attribute.rawType.setter(uint64_t result, __int16 a2)
{
  *(v2 + 92) = result;
  *(v2 + 100) = a2;
  *(v2 + 101) = HIBYTE(a2) & 1;
  return result;
}

uint64_t Attribute.abstraction.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Attribute._tree.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t Attribute.created.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t Attribute.treeValue(in:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(v2 + 168))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 1;
    return result;
  }

  if (*(v2 + 136))
  {
    goto LABEL_18;
  }

  v3 = *(v2 + 128);
  if (HIDWORD(v3) >= *(result + 124))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(result + 112);
  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 168 * HIDWORD(v3));
  if (v3 >= *(v5 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v2 + 160);
  v7 = v5 + 208 * v3;
  if (v6 >= *(v7 + 164))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v7 + 152);
  if (!v8)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v9 = (v8 + 40 * v6);
  v10 = *v9;
  v12 = *(v9 + 1);
  v11 = *(v9 + 2);
  v13 = v9[6];
  v14 = *(v9 + 28);
  v15 = *(v9 + 4);
  v16 = v14 == 0;
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  *a2 = v10;
  a2[1] = v12;
  a2[2] = v11;
  a2[3] = v17 | v13;
  a2[4] = v15;
}

uint64_t Attribute.dependency.setter(uint64_t result)
{
  *(v1 + 172) = result;
  *(v1 + 176) = BYTE4(result) & 1;
  return result;
}

double Attribute.value.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 196);
  v4 = *(v1 + 200);
  v5 = *(v1 + 216);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  result = *(v1 + 208);
  *(a1 + 24) = result;
  *(a1 + 32) = v5;
  return result;
}

__n128 Attribute.value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 216) = *(a1 + 32);
  return result;
}

uint64_t Attribute.peer.setter(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 276) = BYTE4(result) & 1;
  return result;
}

uint64_t Attribute.recentValueUpdate.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 288) = result;
  *(v3 + 296) = a2;
  *(v3 + 304) = a3 & 1;
  return result;
}

BOOL Attribute.changed.getter()
{
  if (*(v0 + 304))
  {
    return 0;
  }

  v2 = *(v0 + 184);
  return v2 >= *(v0 + 288) && *(v0 + 296) >= v2;
}

uint64_t Attribute.lastUpdateTime.getter()
{
  if (*(v0 + 220))
  {
    return *(v0 + 184);
  }

  if (*(v0 + 304))
  {
    return 0;
  }

  return *(v0 + 296);
}

uint64_t Attribute.indirectSource(within:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 89))
  {
    return *(v1 + 32);
  }

  if (*(v1 + 88))
  {
    goto LABEL_14;
  }

  v4 = **(a1 + 88);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a1 + 72);
  v7 = *(a1 + 84);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(*(v2 + 72), *(v2 + 80));
  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(*(v4 + 56) + 4 * v8);
  if (v10 >= v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  memcpy(__dst, (v5 + 312 * v10), sizeof(__dst));
  return Attribute.indirectSource(within:)(a1);
}

Swift::Int __swiftcall Attribute.weight(context:)(SwiftUITracingSupport::Attribute::Modality context)
{
  v2 = 232;
  if (*context)
  {
    v2 = 240;
  }

  return *(v1 + v2);
}

_DWORD *Attribute.pendingThrough(snapshot:ret:context:)(_DWORD *result, uint64_t a2)
{
  v3 = *(v2 + 12);
  if (v3)
  {
    v5 = result;
    v6 = *v2;
    v7 = v6;
    while (v6)
    {
      if (*v7 >= v5[27])
      {
        __break(1u);
LABEL_24:
        __break(1u);
        break;
      }

      v8 = *(v5 + 12);
      if (!v8)
      {
        goto LABEL_26;
      }

      v9 = (v8 + 24 * *v7);
      if ((v9[4] & 2) != 0)
      {
        v10 = *v9;
        v11 = *(a2 + 12);
        if (v11 == *(a2 + 8))
        {
          if (v11)
          {
            v12 = 2 * v11;
          }

          else
          {
            v12 = 1;
          }

          if (HIDWORD(v12))
          {
            goto LABEL_24;
          }

          v13 = *a2;
          *(a2 + 8) = v12;
          if (v13)
          {
            result = realloc(v13, 4 * v12);
            if (!result)
            {
              goto LABEL_28;
            }

            *a2 = result;
          }

          else
          {
            result = swift_slowAlloc();
            *a2 = result;
            if (!result)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          result = *a2;
          if (!*a2)
          {
            goto LABEL_27;
          }
        }

        v14 = *(a2 + 12);
        result[v14] = v10;
        v15 = __CFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          __break(1u);
          return result;
        }

        *(a2 + 12) = v16;
      }

      ++v7;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t Attribute.pendingThroughResolved(snapshot:ret:)(uint64_t a1, uint64_t *a2)
{
  result = Attribute.pendingThrough(snapshot:ret:context:)(a1, a2);
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(a2 + 3))
    {
      v7 = *a2;
      if (!*a2)
      {
        goto LABEL_11;
      }

      v8 = *(v7 + 4 * v6);
      if (v8 >= *(a1 + 84))
      {
        goto LABEL_10;
      }

      v9 = *(a1 + 72);
      if (!v9)
      {
        goto LABEL_12;
      }

      memcpy(__dst, (v9 + 312 * v8), sizeof(__dst));
      result = Attribute.indirectSource(within:)(a1);
      *(v7 + 4 * v6++) = result;
      if (v5 == v6)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in Attribute.add(displayName:type:within:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 136))
  {
    goto LABEL_27;
  }

  v10 = result;
  v11 = *(a2 + 128);
  if (HIDWORD(v11) >= *(*result + 124))
  {
    __break(1u);
  }

  else
  {
    v12 = *(*result + 112);
    if (!v12)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v5 = a4;
    v6 = a3;
    v7 = *(a2 + 32);
    v8 = (v12 + 168 * HIDWORD(v11));
    v4 = *v8;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v4;
    if (result)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  v4 = result;
  *v8 = result;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (v11 >= *(v4 + 16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v4 + 208 * v11;
  v14 = *(v13 + 164);
  if (v14 == *(v13 + 160))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v14);
  }

  v15 = *(v13 + 152);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *(v13 + 164);
  v17 = v15 + 40 * v16;
  *v17 = v7;
  *(v17 + 8) = v6;
  *(v17 + 16) = v5;
  *(v17 + 24) = 0;
  *(v17 + 28) = 1;
  *(v17 + 32) = 0x4000000100000000;
  if (v16 == -1)
  {
    goto LABEL_22;
  }

  *(v13 + 164) = v16 + 1;
  if (*(a2 + 136))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(a2 + 128);
  if (HIDWORD(v18) >= *(*v10 + 124))
  {
    goto LABEL_23;
  }

  v19 = *(*v10 + 112);
  if (v19)
  {
    if ((v18 & 0x80000000) == 0)
    {
      v20 = *(v19 + 168 * HIDWORD(v18));
      if (v18 < *(v20 + 16))
      {
        v21 = *(v20 + 208 * v18 + 164);
        if (v21)
        {
          return v21 - 1;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t Attribute.describe(state:)(__int128 *a1)
{
  v18 = *a1;
  _StringGuts.grow(_:)(32);

  if (__OFSUB__(v18, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = specialized InspectionState.wrapDescription<A>(_:)(*(v1 + 32));
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  v5 = *(v1 + 44);
  v6 = MEMORY[0x277D84D30];
  *(v4 + 56) = MEMORY[0x277D84CC0];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  v7 = String.init(format:_:)();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(v1 + 89))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x7463657269646E69;
  }

  if (*(v1 + 89))
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  MEMORY[0x26D69CDB0](v8, v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(v1 + 152))
  {
    v10 = 0x646563616C70;
  }

  else
  {
    v10 = 0;
  }

  if (*(v1 + 152))
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v11);

  MEMORY[0x26D69CDB0](2105376, 0xE300000000000000);
  v12 = Inspectable_Context.snapshot.getter();
  result = Attribute.indirectSource(within:)(v12);
  if (result >= *(v12 + 84))
  {
    goto LABEL_19;
  }

  v13 = *(v12 + 72);
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + 312 * result;
  if ((*(v14 + 101) & 1) == 0)
  {
    v15 = specialized InspectionState.wrapDescription<A>(_:)(*(v14 + 92), *(v14 + 100));
    MEMORY[0x26D69CDB0](v15);

    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    v16 = specialized InspectionState.describe<A>(_:_:)(1701147252, 0xE400000000000000, *(v1 + 128), *(v1 + 136));
    MEMORY[0x26D69CDB0](v16);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v17 = specialized InspectionState.describe<A>(_:_:)();
    MEMORY[0x26D69CDB0](v17);

    MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    return 0x2065646F6E28;
  }

LABEL_21:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Attribute.copy()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 12);
    v3 = swift_slowAlloc();
    *v0 = v3;
    memcpy(v3, v1, 8 * v2);
  }

  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v0 + 28);
    v6 = swift_slowAlloc();
    *(v0 + 16) = v6;
    memcpy(v6, v4, 8 * v5);
  }

  v7 = *(v0 + 200);
  if (v7)
  {
    v8 = *(v0 + 212);
    v9 = swift_slowAlloc();
    *(v0 + 200) = v9;

    memcpy(v9, v7, 40 * v8);
  }
}

uint64_t protocol witness for Mortal.interval.setter in conformance Attribute(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

void T_NodeAdded.model(within:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v196 = HIDWORD(a4);
  v197 = a4;
  v6 = HIDWORD(a5);
  v7 = (result + 56);
  v8 = *(result + 72);
  v253[0] = *(result + 56);
  v253[1] = v8;
  *v254 = *(result + 88);
  *&v254[9] = *(result + 97);
  v9 = (result + 72);
  v10 = (result + 84);
  v192 = (result + 88);
  v11 = (result + 104);
  v12 = (result + 56);
  v13 = (result + 72);
  v14 = (result + 84);
  v15 = (result + 104);
  while (1)
  {
    v16 = *v15;
    if (*v14 >= 2u)
    {
      v17 = *v13;
      if ((*(v17 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v253);
    }

    v13 = (v16 + 16);
    v14 = (v16 + 28);
    v15 = (v16 + 48);
    v12 = v16;
  }

  v18 = *v12;
  if (!v18)
  {
    goto LABEL_146;
  }

  v194 = a5;
  v19 = *(*(v18 + 24 * *(v17 + 8)) + 112);
  if (!v19)
  {
    goto LABEL_142;
  }

  v239 = *v19;
  v20 = *(v19 + 2);
  v21 = *(v19 + 88);
  v236 = *(v19 + 72);
  v237 = v21;
  v238[0] = *(v19 + 104);
  *(v238 + 13) = *(v19 + 117);
  v22 = *(v19 + 40);
  v233 = *(v19 + 24);
  v234 = v22;
  v235 = *(v19 + 56);
  v23 = *v20;
  if (!*(*v20 + 16))
  {
    v29 = 0;
    v25 = HIDWORD(a5);
LABEL_14:
    v30 = 0xFFFFFFFFLL;
    v27 = v25;
    v198 = v25;
    goto LABEL_15;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(HIDWORD(a5));
  v25 = v6;
  if ((v26 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_14;
  }

  v27 = v6;
  v28 = *(v23 + 56) + 24 * v24;
  v198 = *v28;
  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
LABEL_15:
  v31 = v7[1];
  v251[0] = *v7;
  v251[1] = v31;
  v252[0] = v7[2];
  *(v252 + 9) = *(v7 + 41);
  v32 = v7;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  while (1)
  {
    v36 = *v35;
    if (*v34 >= 2u)
    {
      v37 = *v33;
      if ((*(v37 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v36)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v251);
    }

    v33 = (v36 + 16);
    v34 = (v36 + 28);
    v35 = (v36 + 48);
    v32 = v36;
  }

  v38 = *v32;
  if (!v38)
  {
    goto LABEL_147;
  }

  v39 = *(*(v38 + 24 * *(v37 + 8)) + 112);
  if (!v39)
  {
    goto LABEL_143;
  }

  *v39 = v239;
  v40 = v235;
  *(v39 + 72) = v236;
  v41 = v238[0];
  *(v39 + 88) = v237;
  *(v39 + 104) = v41;
  v42 = v234;
  *(v39 + 24) = v233;
  *(v39 + 40) = v42;
  *(v39 + 16) = v20;
  *(v39 + 117) = *(v238 + 13);
  *(v39 + 56) = v40;
  v240 = v198;
  v242 = v30;
  v43 = __CFADD__(v29, 1);
  v44 = v29 + 1;
  if (v43)
  {
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v241 = v44;
  v45 = v7[1];
  v249[0] = *v7;
  v249[1] = v45;
  v250[0] = v7[2];
  *(v250 + 9) = *(v7 + 41);
  v46 = v7;
  v47 = v9;
  v48 = v10;
  v49 = v11;
  v30 = v27;
  while (1)
  {
    v50 = *v49;
    if (*v48 >= 2u)
    {
      v51 = *v47;
      if ((*(v51 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v50)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v249);
    }

    v47 = (v50 + 16);
    v48 = (v50 + 28);
    v49 = (v50 + 48);
    v46 = v50;
  }

  v52 = *v46;
  if (!v52)
  {
    goto LABEL_148;
  }

  v53 = *(*(v52 + 24 * *(v51 + 8)) + 112);
  if (!v53)
  {
    goto LABEL_144;
  }

  v54 = v53[5];
  v230 = v53[4];
  v231 = v54;
  v232[0] = v53[6];
  *(v232 + 13) = *(v53 + 109);
  v55 = v53[1];
  v226 = *v53;
  v227 = v55;
  v56 = v53[3];
  v228 = v53[2];
  v229 = v56;
  specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v227, v27, &v240);
  v58 = v7[1];
  v247[0] = *v7;
  v247[1] = v58;
  v248[0] = v7[2];
  *(v248 + 9) = *(v7 + 41);
  v59 = v7;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  while (1)
  {
    v63 = *v62;
    if (*v61 >= 2u)
    {
      v64 = *v60;
      if ((*(v64 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v247);
    }

    v60 = (v63 + 16);
    v61 = (v63 + 28);
    v62 = (v63 + 48);
    v59 = v63;
  }

  v65 = *v59;
  if (!v65)
  {
    goto LABEL_149;
  }

  v66 = *(*(v65 + 24 * *(v64 + 8)) + 112);
  if (!v66)
  {
    goto LABEL_145;
  }

  v67 = v227;
  *v66 = v226;
  v66[1] = v67;
  v68 = v229;
  v66[2] = v228;
  v66[3] = v68;
  *(v66 + 109) = *(v232 + 13);
  v69 = v232[0];
  v66[5] = v231;
  v66[6] = v69;
  v66[4] = v230;
  if (v5[48])
  {
    return;
  }

  v70 = v5[1];
  if (v70 != 2)
  {
    if (v70 != 4)
    {
      return;
    }

    v71 = v7[1];
    v222 = *v7;
    v223 = v71;
    v224[0] = v7[2];
    *(v224 + 9) = *(v7 + 41);
    v72 = v7;
    v73 = v9;
    v74 = v10;
    v75 = v11;
    while (1)
    {
      v76 = *v75;
      if (*v74 > 1u)
      {
        v77 = *v73;
        if ((*(v77 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v76)
      {
        goto LABEL_69;
      }

      v73 = (v76 + 16);
      v74 = (v76 + 28);
      v75 = (v76 + 48);
      v72 = v76;
    }

    v140 = *v72;
    if (!v140)
    {
      goto LABEL_163;
    }

    v117 = v140 + 24 * *(v77 + 8);
    v141 = *(*v117 + 112);
    if (!v141)
    {
      goto LABEL_150;
    }

    if (*(v141 + 124))
    {
      return;
    }

    if (*(v141 + 120) == v27)
    {
      T_NodeSetValue.Closure.apply(within:)(v5, v57, v27);
      v142 = v7[1];
      v216 = *v7;
      v217 = v142;
      v218[0] = v7[2];
      *(v218 + 9) = *(v7 + 41);
      while (1)
      {
        v143 = *v11;
        if (*v10 > 1u && (*(*v9 + 12) & 1) == 0)
        {
          break;
        }

        if (!v143)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v216);
        }

        v9 = (v143 + 16);
        v10 = (v143 + 28);
        v11 = (v143 + 48);
        v7 = v143;
      }

      if (!*v7)
      {
        goto LABEL_166;
      }

      v184 = *(*(*v7 + 24 * *(*v9 + 8)) + 112);
      if (v184)
      {
        *(v184 + 112) = 0;
        *(v184 + 120) = 0;
        *(v184 + 124) = 1;
        return;
      }

      goto LABEL_162;
    }

    __break(1u);
LABEL_140:
    v186 = v117;
    specialized _NativeDictionary.copy()();
    v117 = v186;
    goto LABEL_71;
  }

  v188 = v44;
  v78 = *(*(v5 + 22) + 136);
  v79 = *(v78 + 4);
  if (v196 >= *(v79 + 16))
  {
    goto LABEL_125;
  }

  v80 = *(v79 + 4 * v196 + 32);
  v10 = &v202;
  if (v80 >= *(v78 + 3))
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v190 = *(v5 + 22);
  if (!*v78)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v81 = *v78 + 120 * v80;
  v82 = *v81;
  v83 = *(v81 + 16);
  v84 = *(v81 + 48);
  v218[0] = *(v81 + 32);
  v218[1] = v84;
  v216 = v82;
  v217 = v83;
  v85 = *(v81 + 64);
  v86 = *(v81 + 80);
  v87 = *(v81 + 96);
  *(v219 + 14) = *(v81 + 110);
  v218[3] = v86;
  v219[0] = v87;
  v218[2] = v85;
  v88 = *(v81 + 80);
  v213 = *(v81 + 64);
  v214 = v88;
  v215[0] = *(v81 + 96);
  *(v215 + 14) = *(v81 + 110);
  v89 = *(v81 + 16);
  v209 = *v81;
  v210 = v89;
  v90 = *(v81 + 48);
  v211 = *(v81 + 32);
  v212 = v90;
  v91 = v78[2];
  v92 = *v78;
  v220[1] = v78[1];
  v220[2] = v91;
  v93 = v78[6];
  v95 = v78[3];
  v94 = v78[4];
  v220[5] = v78[5];
  v220[6] = v93;
  v220[3] = v95;
  v220[4] = v94;
  v220[0] = v92;
  v96 = v78[4];
  v97 = v78[6];
  v207 = v78[5];
  v208 = v97;
  v98 = v78[1];
  v202 = *v78;
  v203 = v98;
  v99 = v78[2];
  v205 = v78[3];
  v206 = v96;
  v204 = v99;
  outlined init with copy of PType(&v216, &v222);
  outlined init with copy of Interpreter.Storage.Types(v220, &v222);
  v100 = PType.basename(within:)(&v202);
  v102 = v101;
  v221[4] = v206;
  v221[5] = v207;
  v221[6] = v208;
  v221[0] = v202;
  v221[1] = v203;
  v221[2] = v204;
  v221[3] = v205;
  outlined destroy of Interpreter.Storage.Types(v221);
  v224[2] = v213;
  v224[3] = v214;
  v225[0] = v215[0];
  *(v225 + 14) = *(v215 + 14);
  v222 = v209;
  v223 = v210;
  v224[0] = v211;
  v224[1] = v212;
  outlined destroy of PType(&v222);
  if (specialized Sequence<>.starts<A>(with:)(0x616E72657478455FLL, 0xE90000000000006CLL, v100, v102) & 1) != 0 || (specialized Sequence<>.starts<A>(with:)(0x6C616E7265747845, 0xE800000000000000, v100, v102))
  {

    v197 |= 1u;
LABEL_55:
    v103 = v190;
    goto LABEL_56;
  }

  if (specialized Sequence<>.starts<A>(with:)(0x4263696D616E7944, 0xEB0000000079646FLL, v100, v102))
  {
  }

  else
  {
    v185 = specialized Sequence<>.starts<A>(with:)(0x6F42636974617453, 0xEA00000000007964, v100, v102);

    if ((v185 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v103 = v190;
  if ((v197 & 2) == 0)
  {
    v197 |= 2u;
  }

LABEL_56:
  LODWORD(v27) = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, v5);
  Hasher.init()();
  v104 = *(v103 + 136);
  v105 = v104[4];
  if (v196 >= *(v105 + 16))
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v106 = *(v105 + 4 * v196 + 32);
  if (v106 >= *(v104 + 3))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v107 = *v104;
  v20 = v188;
  if (!v107)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  MEMORY[0x26D69DBC0](*(v107 + 120 * v106 + 40));
  v108 = *(v103 + 136);
  v109 = v108[4];
  if (v194 >= *(v109 + 16))
  {
    goto LABEL_129;
  }

  v110 = *(v109 + 4 * v194 + 32);
  if (v110 >= *(v108 + 3))
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v111 = *v108;
  if (!v111)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  MEMORY[0x26D69DBC0](*(v111 + 120 * v110 + 40));
  if (v5[48])
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v112 = *v5;
  if (v112 >= *(v103 + 116))
  {
    goto LABEL_131;
  }

  v187 = v194;
  v194 = v30;
  v113 = *(v103 + 104);
  if (!v113)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v114 = *(*(v113 + 8 * v112) + 8);
  LODWORD(a2) = *(v114 + 84);
  v30 = *(v114 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v30;
  v201 = *v30;
  *v30 = 0x8000000000000000;
  v117 = specialized __RawDictionaryStorage.find<A>(_:)(v198, v188);
  v119 = v116[2];
  v120 = (v118 & 1) == 0;
  v121 = __OFADD__(v119, v120);
  v122 = v119 + v120;
  if (v121)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  LOBYTE(v9) = v118;
  if (v116[3] >= v122)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_71;
    }

    goto LABEL_140;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v122, isUniquelyReferenced_nonNull_native);
  v117 = specialized __RawDictionaryStorage.find<A>(_:)(v198, v188);
  if ((v9 & 1) != (v123 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_69:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v222);
  }

LABEL_71:
  v124 = v192;
  if ((v9 & 1) == 0)
  {
    v201[(v117 >> 6) + 8] |= 1 << v117;
    v125 = v201[6] + 16 * v117;
    *v125 = v198;
    *(v125 + 8) = v20;
    *(v201[7] + 4 * v117) = a2;
    v126 = v201[2];
    v121 = __OFADD__(v126, 1);
    v127 = v126 + 1;
    if (!v121)
    {
      v201[2] = v127;
      goto LABEL_75;
    }

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
    goto LABEL_151;
  }

  *(v201[7] + 4 * v117) = a2;
LABEL_75:
  *v30 = v201;
  v128 = *v5;
  v129 = v5[48];
  v130 = v7[1];
  v245[0] = *v7;
  v245[1] = v130;
  v246[0] = v7[2];
  v131 = v5 + 100;
  v132 = *(v5 + 29);
  v133 = 8 * v132;
  *(v246 + 9) = *(v7 + 41);
  v134 = v7;
  v135 = v192;
  v136 = v5 + 100;
  v137 = v11;
  v199 = v128;
  while (1)
  {
    v138 = *v137;
    if (v132 < *v136)
    {
      v139 = (*v135 + v133);
      if ((v139[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v138)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v132, 0, v245);
    }

    v135 = (v138 + 32);
    v136 = (v138 + 44);
    v137 = (v138 + 48);
    v134 = v138;
  }

  v144 = *v134;
  if (!v144)
  {
    goto LABEL_164;
  }

  v145 = *(*(v144 + 24 * *v139) + 32);
  v146 = v7[1];
  v243[0] = *v7;
  v243[1] = v146;
  v244[0] = v7[2];
  *(v244 + 9) = *(v7 + 41);
  v193 = v145;
  while (1)
  {
    v147 = *v11;
    if (v132 < *v131)
    {
      v148 = (*v124 + v133);
      if ((v148[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v147)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v132, 0, v243);
    }

    v124 = (v147 + 32);
    v131 = (v147 + 44);
    v11 = (v147 + 48);
    v7 = v147;
  }

  if (!*v7)
  {
    goto LABEL_165;
  }

  v189 = v27;
  v30 = *(*(*v7 + 24 * *v148) + 48);
  if (v30 < 0)
  {
    goto LABEL_133;
  }

  v149 = v129;
  v150 = v205;
  v10[9] = v204;
  v10[10] = v150;
  *&v213 = v206;
  v151 = v203;
  v10[7] = v202;
  v10[8] = v151;
  v152 = Hasher.finalize()();
  v153 = MEMORY[0x277D84F90];
  v154 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v156 = v155;
  v157 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v159 = v158;
  v160 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(v153);
  if (v149)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v199 >= *(v190 + 116))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v162 = *(v190 + 104);
  if (!v162)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v163 = *(*(v162 + 8 * v199) + 8);
  v164 = *(v163 + 84);
  if (v164 == *(v163 + 80))
  {
    v200 = v30;
    v165 = v157;
    v166 = v154;
    v167 = v152;
    v168 = v160;
    v169 = v156;
    v170 = v161;
    specialized UnsafeArray.growToCapacity(_:)(2 * v164);
    v161 = v170;
    v156 = v169;
    v153 = MEMORY[0x277D84F90];
    v160 = v168;
    v152 = v167;
    v154 = v166;
    v157 = v165;
    v30 = v200;
  }

  v171 = *(v163 + 72);
  if (!v171)
  {
    goto LABEL_158;
  }

  v172 = *(v163 + 84);
  v173 = v171 + 312 * v172;
  *v173 = v154;
  *(v173 + 8) = v156;
  *(v173 + 16) = v157;
  *(v173 + 24) = v159;
  *(v173 + 32) = a2;
  *(v173 + 36) = 0;
  *(v173 + 40) = 1;
  *(v173 + 44) = v194;
  *(v173 + 48) = v193;
  *(v173 + 56) = -1;
  *(v173 + 72) = 0;
  *(v173 + 80) = 0;
  *(v173 + 64) = v30;
  *(v173 + 88) = 0;
  *(v173 + 89) = 1;
  *(v173 + 92) = v196 | (v187 << 32);
  *(v173 + 100) = 0;
  *(v173 + 101) = 0;
  *(v173 + 104) = v152;
  *(v173 + 112) = 0;
  *(v173 + 120) = 0;
  *(v173 + 128) = 0;
  *(v173 + 136) = 1;
  *(v173 + 144) = v153;
  *(v173 + 152) = 0;
  *(v173 + 160) = 0;
  *(v173 + 168) = 1;
  *(v173 + 172) = 0;
  *(v173 + 232) = 0u;
  v173 += 232;
  *(v173 - 56) = 1;
  *(v173 - 52) = v189;
  *(v173 - 48) = -1;
  *(v173 - 40) = 0;
  *(v173 - 36) = 1;
  *(v173 - 32) = v160;
  *(v173 - 24) = v161;
  *(v173 - 16) = 0;
  *(v173 - 12) = v197;
  *(v173 - 8) = a3;
  *(v173 + 16) = 0u;
  *(v173 + 28) = 0u;
  *(v173 + 44) = 1;
  *(v173 + 48) = 0;
  *(v173 + 56) = 0;
  *(v173 + 64) = 0;
  *(v173 + 72) = 1;
  v43 = __CFADD__(v172, 1);
  v174 = v172 + 1;
  if (v43)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  *(v163 + 84) = v174;
  if (v5[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v175 = *v5;
  if (v175 >= *(v190 + 116))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v176 = *(v190 + 104);
  if (!v176)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v177 = *(*(v176 + 8 * v175) + 8);
  if (v189 >= *(v177 + 124))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v178 = *(v177 + 112);
  if (!v178)
  {
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    return;
  }

  v179 = v178 + 168 * v189;
  v180 = *(v179 + 96);
  v30 = v179 + 96;
  v5 = v180;
  v181 = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v180;
  if ((v181 & 1) == 0)
  {
LABEL_138:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *v30 = v5;
  }

  v183 = *(v5 + 2);
  v182 = *(v5 + 3);
  if (v183 >= v182 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v183 + 1, 1, v5);
    *v30 = v5;
  }

  *(v5 + 2) = v183 + 1;
  *&v5[4 * v183 + 32] = a2;
}

void T_NodeSetValue.Closure.apply(within:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a3, a1);
  if (a1[48])
  {
    goto LABEL_58;
  }

  v5 = *(a1 + 22);
  v6 = *(v5 + 116);
  v7 = *a1;
  if (v7 >= v6)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = *(v5 + 104);
  if (!v8)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = v4;
  v10 = *(*(v8 + 8 * v7) + 8);
  if (v4 >= *(v10 + 84))
  {
    goto LABEL_50;
  }

  v11 = *(v10 + 72);
  if (!v11)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v12 = v11 + 312 * v4;
  v13 = *(v12 + 224);
  if ((v13 & 4) == 0)
  {
    *(v12 + 224) = v13 | 4;
    if (a1[48])
    {
      goto LABEL_65;
    }
  }

  v14 = *a1;
  if (v14 >= v6)
  {
    goto LABEL_51;
  }

  v15 = *(*(v8 + 8 * v14) + 8);
  if (v4 >= *(v15 + 84))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(v15 + 72);
  if (!v16)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = 312 * v4;
  v18 = v16 + v17;
  v19 = *(v18 + 264);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    goto LABEL_53;
  }

  *(v18 + 264) = v21;
  v22 = *a1;
  v23 = a1[48];
  v24 = a1 + 56;
  v25 = *(a1 + 72);
  v71[0] = *(a1 + 56);
  v71[1] = v25;
  v72[0] = *(a1 + 88);
  *(v72 + 9) = *(a1 + 97);
  v26 = a1 + 88;
  v27 = a1 + 100;
  v28 = a1 + 104;
  v29 = *(a1 + 29);
  v30 = (a1 + 56);
  v31 = a1 + 104;
  while (1)
  {
    v32 = *v31;
    if (v29 < *v27)
    {
      v33 = (*v26 + 8 * v29);
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v71);
    }

    v26 = (v32 + 32);
    v27 = (v32 + 44);
    v31 = (v32 + 48);
    v30 = v32;
  }

  v38 = *v30;
  if (!*v30)
  {
    goto LABEL_70;
  }

  v43 = *v33;
  v44 = &v38[24 * v43];
  if (v23)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v22 >= *(v5 + 116))
  {
    goto LABEL_54;
  }

  v34 = *(v5 + 104);
  if (!v34)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = *(*(v34 + 8 * v22) + 8);
  if (v9 >= *(v35 + 84))
  {
    goto LABEL_55;
  }

  v36 = *(v35 + 72);
  if (!v36)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v36 + v17 + 184) = *(*v44 + 32);
  v37 = *(a1 + 72);
  v69[0] = *v24;
  v69[1] = v37;
  v70[0] = *(a1 + 88);
  v22 = (a1 + 72);
  v23 = a1 + 84;
  *(v70 + 9) = *(a1 + 97);
  v38 = a1 + 56;
  v39 = a1 + 72;
  v40 = a1 + 84;
  v41 = a1 + 104;
  while (1)
  {
    v42 = *v41;
    if (*v40 >= 2u)
    {
      v43 = *v39;
      if ((*(v43 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v42)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v69);
    }

    v39 = v42 + 16;
    v40 = v42 + 28;
    v41 = v42 + 48;
    v38 = v42;
  }

LABEL_31:
  v45 = *v38;
  if (!v45)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v46 = *(*(v45 + 24 * *(v43 + 8)) + 112);
  if (!v46)
  {
    goto LABEL_64;
  }

  if (*(v46 + 104) != 1)
  {
LABEL_48:
    v56 = v9;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v60 = 0xFFFFFFFFLL;
    v61 = 0;
    v62 = 1;
    v63 = -1;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    specialized Interpreter.Iterator.observe<A>(invalidation:)(&v56);
    return;
  }

  v47 = *(a1 + 72);
  v67[0] = *v24;
  v67[1] = v47;
  v68[0] = *(a1 + 88);
  *(v68 + 9) = *(a1 + 97);
  while (1)
  {
    v48 = *v28;
    if (*v23 >= 2u && (*(*v22 + 12) & 1) == 0)
    {
      break;
    }

    if (!v48)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v67);
    }

    v22 = (v48 + 16);
    v23 = v48 + 28;
    v28 = v48 + 48;
    v24 = v48;
  }

  if (*v24)
  {
    v49 = *(*(*v24 + 24 * *(*v22 + 8)) + 112);
    if (!v49)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    *(v49 + 104) = 0;
    if (a1[48])
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v50 = *a1;
    if (v50 < *(v5 + 116))
    {
      v51 = *(v5 + 104);
      if (!v51)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v52 = *(v51 + 8 * v50);
      v55 = *(v52 + 8);
      v53 = (v52 + 8);
      v54 = v55;
      if (v9 < *(v55 + 84))
      {
        if (*(v54 + 72))
        {
          specialized Attribute.add(displayName:type:within:)(0xD000000000000010, 0x800000026C33C330, v53);
          goto LABEL_48;
        }

        goto LABEL_69;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
}

unint64_t T_IndirectNodeAdded.model(within:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v4 = &v166;
  v161 = a2;
  *&v180 = a2;
  *(&v180 + 1) = a3;
  v5 = HIDWORD(a3);
  v6 = (result + 56);
  v7 = *(result + 72);
  v204[0] = *(result + 56);
  v204[1] = v7;
  v205[0] = *(result + 88);
  v8 = (result + 72);
  v9 = (result + 84);
  v158 = (result + 88);
  v10 = (result + 104);
  *(v205 + 9) = *(result + 97);
  v11 = (result + 56);
  v12 = (result + 72);
  v13 = (result + 84);
  v14 = (result + 104);
  while (1)
  {
    v15 = *v14;
    if (*v13 >= 2u)
    {
      v16 = *v12;
      if ((*(v16 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v204);
    }

    v12 = (v15 + 16);
    v13 = (v15 + 28);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_125;
  }

  result = v17 + 24 * *(v16 + 8);
  v160 = *(&v180 + 4);
  v18 = *(*result + 112);
  if (!v18)
  {
    goto LABEL_121;
  }

  v186 = *v18;
  v19 = *(v18 + 2);
  v20 = *(v18 + 72);
  v21 = *(v18 + 104);
  v184 = *(v18 + 88);
  v185[0] = v21;
  *(v185 + 13) = *(v18 + 117);
  v22 = *(v18 + 40);
  v180 = *(v18 + 24);
  v181 = v22;
  v182 = *(v18 + 56);
  v183 = v20;
  v23 = *v19;
  v162 = v3;
  if (!*(*v19 + 16))
  {
    v28 = 0;
    v24 = HIDWORD(a3);
LABEL_14:
    v29 = -1;
    v26 = v24;
    v163 = v24;
    goto LABEL_15;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(HIDWORD(a3));
  v24 = v5;
  if ((v25 & 1) == 0)
  {
    v28 = 0;
    goto LABEL_14;
  }

  v26 = v5;
  v27 = *(v23 + 56) + 24 * result;
  v163 = *v27;
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
LABEL_15:
  v30 = v6[1];
  v202[0] = *v6;
  v202[1] = v30;
  v203[0] = v6[2];
  *(v203 + 9) = *(v6 + 41);
  v31 = v6;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  while (1)
  {
    v35 = *v34;
    if (*v33 >= 2u)
    {
      v36 = *v32;
      if ((*(v36 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v202);
    }

    v32 = (v35 + 16);
    v33 = (v35 + 28);
    v34 = (v35 + 48);
    v31 = v35;
  }

  v37 = *v31;
  if (!v37)
  {
    goto LABEL_126;
  }

  result = v37 + 24 * *(v36 + 8);
  v38 = *(*result + 112);
  if (!v38)
  {
    goto LABEL_122;
  }

  *v38 = v186;
  v39 = v182;
  *(v38 + 72) = v183;
  v40 = v185[0];
  *(v38 + 88) = v184;
  *(v38 + 104) = v40;
  v41 = v181;
  *(v38 + 24) = v180;
  *(v38 + 40) = v41;
  *(v38 + 16) = v19;
  *(v38 + 117) = *(v185 + 13);
  *(v38 + 56) = v39;
  v187 = v163;
  v189 = v29;
  v42 = __CFADD__(v28, 1);
  v43 = v28 + 1;
  if (v42)
  {
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v188 = v43;
  v44 = v6[1];
  v200[0] = *v6;
  v200[1] = v44;
  v201[0] = v6[2];
  *(v201 + 9) = *(v6 + 41);
  v45 = v6;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v49 = v26;
  v26 = v162;
  while (1)
  {
    v50 = *v48;
    if (*v47 >= 2u)
    {
      v51 = *v46;
      if ((*(v51 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v50)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v200);
    }

    v46 = (v50 + 16);
    v47 = (v50 + 28);
    v48 = (v50 + 48);
    v45 = v50;
  }

  v52 = *v45;
  if (!v52)
  {
    goto LABEL_127;
  }

  result = v52 + 24 * *(v51 + 8);
  v53 = *(*result + 112);
  if (!v53)
  {
    goto LABEL_123;
  }

  v54 = v53[5];
  v177 = v53[4];
  v178 = v54;
  v179[0] = v53[6];
  *(v179 + 13) = *(v53 + 109);
  v55 = v53[1];
  v173 = *v53;
  v174 = v55;
  v56 = v53[3];
  v175 = v53[2];
  v176 = v56;
  result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v174, v49, &v187);
  v57 = v6[1];
  v198[0] = *v6;
  v198[1] = v57;
  v199[0] = v6[2];
  *(v199 + 9) = *(v6 + 41);
  v58 = v6;
  v59 = v8;
  v60 = v9;
  v61 = v10;
  while (1)
  {
    v62 = *v61;
    if (*v60 >= 2u)
    {
      v63 = *v59;
      if ((*(v63 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v62)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v198);
    }

    v59 = (v62 + 16);
    v60 = (v62 + 28);
    v61 = (v62 + 48);
    v58 = v62;
  }

  v64 = *v58;
  if (!v64)
  {
    goto LABEL_128;
  }

  result = v64 + 24 * *(v63 + 8);
  v65 = *(*result + 112);
  if (!v65)
  {
    goto LABEL_124;
  }

  v66 = v174;
  *v65 = v173;
  v65[1] = v66;
  v67 = v176;
  v65[2] = v175;
  v65[3] = v67;
  *(v65 + 109) = *(v179 + 13);
  v68 = v179[0];
  v65[5] = v178;
  v65[6] = v68;
  v65[4] = v177;
  if (v162[48] || v162[1] << 8 != 512)
  {
    return result;
  }

  v156 = v43;
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v160, v162);
  if (v162[48])
  {
    goto LABEL_129;
  }

  v69 = *(v162 + 22);
  v70 = *v162;
  if (v70 >= *(v69 + 116))
  {
    goto LABEL_111;
  }

  v71 = *(v69 + 104);
  if (!v71)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v72 = result;
  LODWORD(v160) = *(*(*(v71 + 8 * v70) + 8) + 84);
  v73 = v6[1];
  v196[0] = *v6;
  v196[1] = v73;
  v197[0] = v6[2];
  *(v197 + 9) = *(v6 + 41);
  v74 = v6;
  v75 = v8;
  v76 = v9;
  v77 = v10;
  v155 = v69;
  while (1)
  {
    v78 = *v77;
    if (*v76 >= 2u)
    {
      v79 = *v75;
      if ((*(v79 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v78)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v196);
    }

    v75 = (v78 + 16);
    v76 = (v78 + 28);
    v77 = (v78 + 48);
    v74 = v78;
  }

  v80 = *v74;
  if (!v80)
  {
    goto LABEL_141;
  }

  result = v80 + 24 * *(v79 + 8);
  v154 = v72;
  v81 = *(*result + 112);
  if (!v81)
  {
    goto LABEL_131;
  }

  v172 = *v81;
  v82 = *(v81 + 2);
  v83 = *(v81 + 88);
  v169 = *(v81 + 72);
  v170 = v83;
  v171[0] = *(v81 + 104);
  *(v171 + 13) = *(v81 + 117);
  v84 = *(v81 + 40);
  v166 = *(v81 + 24);
  v167 = v84;
  v168 = *(v81 + 56);
  v85 = *v82;
  if (*(*v82 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v161), (v86 & 1) != 0))
  {
    v87 = *(v85 + 56) + 24 * result;
    LODWORD(v161) = *v87;
    v153 = *(v87 + 8);
  }

  else
  {
    v153 = 0;
  }

  v88 = v6[1];
  v194[0] = *v6;
  v194[1] = v88;
  v195[0] = v6[2];
  *(v195 + 9) = *(v6 + 41);
  v89 = v6;
  v90 = v10;
  while (1)
  {
    v91 = *v90;
    if (*v9 >= 2u && (*(*v8 + 12) & 1) == 0)
    {
      break;
    }

    if (!v91)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v194);
    }

    v8 = (v91 + 16);
    v9 = (v91 + 28);
    v90 = (v91 + 48);
    v89 = v91;
  }

  v92 = *v89;
  if (!v92)
  {
    goto LABEL_142;
  }

  result = v92 + 24 * *(*v8 + 8);
  v93 = *(*result + 112);
  if (!v93)
  {
    goto LABEL_132;
  }

  *(v93 + 117) = *(v171 + 13);
  *v93 = v172;
  v94 = v167;
  *(v93 + 24) = v166;
  *(v93 + 40) = v94;
  v95 = v169;
  *(v93 + 56) = v168;
  *(v93 + 104) = v171[0];
  *(v93 + 88) = v170;
  *(v93 + 16) = v82;
  *(v93 + 72) = v95;
  if (v162[48])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v96 = *v162;
  if (v96 >= *(v155 + 116))
  {
    goto LABEL_112;
  }

  v97 = *(v155 + 104);
  if (!v97)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v98 = *(*(*(v97 + 8 * v96) + 8) + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v98;
  v165 = *v98;
  *v98 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v163, v156);
  v102 = v100[2];
  v103 = (v101 & 1) == 0;
  v104 = __OFADD__(v102, v103);
  v105 = v102 + v103;
  if (v104)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v106 = v101;
  if (v100[3] < v105)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v163, v156);
    if ((v106 & 1) == (v107 & 1))
    {
      goto LABEL_74;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v152 = result;
    specialized _NativeDictionary.copy()();
    result = v152;
  }

LABEL_74:
  if ((v106 & 1) == 0)
  {
    v165[(result >> 6) + 8] |= 1 << result;
    v108 = v165[6] + 16 * result;
    *v108 = v163;
    *(v108 + 8) = v156;
    *(v165[7] + 4 * result) = v160;
    v109 = v165[2];
    v104 = __OFADD__(v109, 1);
    v110 = v109 + 1;
    if (!v104)
    {
      v165[2] = v110;
      goto LABEL_78;
    }

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
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  *(v165[7] + 4 * result) = v160;
LABEL_78:
  *v98 = v165;
  v164 = *v162;
  v111 = v162[48];
  v112 = v6[1];
  v192[0] = *v6;
  v192[1] = v112;
  v193[0] = v6[2];
  v113 = v162 + 100;
  v114 = *(v162 + 29);
  v4 = (8 * v114);
  *(v193 + 9) = *(v6 + 41);
  v115 = v6;
  v26 = v158;
  v116 = v158;
  v117 = v162 + 100;
  v118 = v10;
  while (1)
  {
    v119 = *v118;
    if (v114 < *v117)
    {
      v120 = (v4 + *v116);
      if ((v120[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v119)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v114, 0, v192);
    }

    v116 = (v119 + 32);
    v117 = (v119 + 44);
    v118 = (v119 + 48);
    v115 = v119;
  }

  v121 = *v115;
  if (!v121)
  {
    goto LABEL_143;
  }

  result = v121 + 24 * *v120;
  v122 = *(*result + 32);
  v123 = v6[1];
  v190[0] = *v6;
  v190[1] = v123;
  v191[0] = v6[2];
  *(v191 + 9) = *(v6 + 41);
  v157 = v122;
  while (1)
  {
    v124 = *v10;
    if (v114 < *v113)
    {
      v125 = (v4 + *v26);
      if ((v125[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v124)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v114, 0, v190);
    }

    v26 = v124 + 32;
    v113 = (v124 + 44);
    v10 = (v124 + 48);
    v6 = v124;
  }

  if (!*v6)
  {
    goto LABEL_144;
  }

  v126 = v111;
  v159 = v49;
  v127 = *(*(*v6 + 24 * *v125) + 48);
  if (v127 < 0)
  {
    goto LABEL_114;
  }

  v128 = MEMORY[0x277D84F90];
  v129 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v131 = v130;
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v133 = v132;
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(v128);
  if (v126)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v135 = v155;
  if (v164 >= *(v155 + 116))
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v136 = *(v155 + 104);
  if (!v136)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v137 = v134;
  v138 = *(*(v136 + 8 * v164) + 8);
  v139 = *(v138 + 84);
  if (v139 == *(v138 + 80))
  {
    v26 = result;
    specialized UnsafeArray.growToCapacity(_:)(2 * v139);
    result = v26;
    v135 = v155;
  }

  v140 = *(v138 + 72);
  if (!v140)
  {
    goto LABEL_137;
  }

  v141 = *(v138 + 84);
  v142 = v140 + 312 * v141;
  *v142 = v129;
  *(v142 + 8) = v131;
  *(v142 + 16) = v4;
  *(v142 + 24) = v133;
  *(v142 + 32) = v160;
  *(v142 + 36) = 0;
  *(v142 + 40) = 1;
  *(v142 + 44) = v159;
  *(v142 + 48) = v157;
  *(v142 + 56) = -1;
  *(v142 + 64) = v127;
  *(v142 + 72) = v161;
  *(v142 + 80) = v153;
  *(v142 + 88) = 0;
  *(v142 + 89) = 0;
  *(v142 + 92) = 0;
  *(v142 + 100) = 0;
  *(v142 + 101) = 1;
  *(v142 + 104) = 0u;
  *(v142 + 120) = 0u;
  *(v142 + 136) = 1;
  *(v142 + 144) = v128;
  *(v142 + 152) = 0;
  *(v142 + 160) = 0;
  *(v142 + 168) = 1;
  *(v142 + 172) = 0;
  *(v142 + 176) = 1;
  *(v142 + 180) = v154;
  *(v142 + 184) = -1;
  *(v142 + 192) = 0;
  *(v142 + 232) = 0u;
  v142 += 232;
  *(v142 - 36) = 1;
  *(v142 - 32) = result;
  *(v142 - 24) = v137;
  *(v142 - 16) = 0;
  *(v142 - 8) = 0x8000000000000000;
  *(v142 + 28) = 0u;
  *(v142 + 16) = 0u;
  *(v142 + 44) = 1;
  *(v142 + 48) = 0;
  *(v142 + 56) = 0;
  *(v142 + 64) = 0;
  *(v142 + 72) = 1;
  v42 = __CFADD__(v141, 1);
  v143 = v141 + 1;
  if (v42)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  *(v138 + 84) = v143;
  if (v162[48])
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v144 = *v162;
  if (v144 >= *(v135 + 116))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v145 = *(v135 + 104);
  if (!v145)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v146 = *(*(v145 + 8 * v144) + 8);
  if (v154 >= *(v146 + 124))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v147 = *(v146 + 112);
  if (!v147)
  {
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
    return result;
  }

  v148 = v147 + 168 * v154;
  v149 = *(v148 + 96);
  v4 = (v148 + 96);
  v26 = v149;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v149;
  if ((result & 1) == 0)
  {
LABEL_119:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
    v26 = result;
    *v4 = result;
  }

  v151 = *(v26 + 16);
  v150 = *(v26 + 24);
  if (v151 >= v150 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v151 + 1, 1, v26);
    v26 = result;
    *v4 = result;
  }

  *(v26 + 16) = v151 + 1;
  *(v26 + 4 * v151 + 32) = v160;
  return result;
}

double one-time initialization function for invalid()
{
  result = NAN;
  static Edge.invalid = -1;
  qword_280481D78 = 0;
  dword_280481D80 = 0;
  return result;
}

uint64_t T_NodeAddEdge.updateState(within:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3)
{
  v5 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a3, a1);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_39;
  }

  v7 = *(a1 + 22);
  v8 = *a1;
  if (v8 >= *(v7 + 116))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = result;
  v11 = *(*(v9 + 8 * v8) + 8);
  if (*(v11 + 108) == *(v11 + 104))
  {
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  v12 = *(v11 + 96);
  if (!v12)
  {
    goto LABEL_41;
  }

  v13 = *(v11 + 108);
  v14 = v12 + 24 * v13;
  *v14 = v10;
  *(v14 + 4) = v5;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  if (v13 == -1)
  {
    goto LABEL_30;
  }

  *(v11 + 108) = v13 + 1;
  if (a1[48])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v15 = *a1;
  if (v15 >= *(v7 + 116))
  {
    goto LABEL_31;
  }

  v16 = *(v7 + 104);
  if (!v16)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v17 = *(*(v16 + 8 * v15) + 8);
  v18 = *(v17 + 108);
  if (!v18)
  {
    goto LABEL_32;
  }

  if (v5 >= *(v17 + 84))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = *(v17 + 72);
  if (!v19)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v20 = v19 + 312 * v5;
  if (*(v20 + 12) == *(v20 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  if (!*v20)
  {
    goto LABEL_45;
  }

  v21 = *(v20 + 12);
  *(*v20 + 8 * v21) = v18 - 1;
  if (v21 == -1)
  {
    goto LABEL_34;
  }

  *(v20 + 12) = v21 + 1;
  if (a1[48])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = *a1;
  if (v22 >= *(v7 + 116))
  {
    goto LABEL_35;
  }

  v23 = *(v7 + 104);
  if (!v23)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v24 = *(*(v23 + 8 * v22) + 8);
  v25 = *(v24 + 108);
  if (!v25)
  {
    goto LABEL_36;
  }

  if (v10 >= *(v24 + 84))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v26 = *(v24 + 72);
  if (v26)
  {
    v27 = v26 + 312 * v10;
    if (*(v27 + 28) == *(v27 + 24))
    {
      result = specialized UnsafeArray.growToCapacity(_:)();
    }

    v28 = *(v27 + 16);
    if (!v28)
    {
      goto LABEL_49;
    }

    v29 = *(v27 + 28);
    *(v28 + 8 * v29) = v25 - 1;
    if (v29 != -1)
    {
      *(v27 + 28) = v29 + 1;
      return result;
    }

    goto LABEL_38;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t T_NodeRemoveEdge.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = a1;
  v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, v3);
  if (v3[48])
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v9 = *(v3 + 22);
  v10 = *v3;
  if (v10 >= *(v9 + 116))
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v11 = *(v9 + 104);
  if (!v11)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v12 = *(*(v11 + 8 * v10) + 8);
  if (v4 >= *(v12 + 84))
  {
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
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    v46 = v7;
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    v79 = v6;
    v80 = v8;
    _StringGuts.grow(_:)(42);
    MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
    _print_unlocked<A, B>(_:_:)();
    v3 = v103;
    MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
    if (v79 >= *(v80 + 84))
    {
      goto LABEL_155;
    }

    v18 = v80;
    v47 = *(v80 + 72);
    if (!v47)
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
    }

    v81 = v47 + v46;
    v82 = *(v81 + 12);
    v3 = MEMORY[0x277D84F90];
    if (!v82)
    {
      goto LABEL_156;
    }

    v83 = *v81;
    v102 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
    v3 = v102;
    v84 = v83;
    v85 = v18;
    while (v83)
    {
      if (*v84 >= *(v85 + 27))
      {
        __break(1u);
        goto LABEL_147;
      }

      v87 = v85[12];
      if (!v87)
      {
        goto LABEL_154;
      }

      v88 = (v87 + 24 * *v84);
      v89 = *v88;
      v90 = v88[1];
      v91 = *(v88 + 4);
      v93 = *(v102 + 2);
      v92 = *(v102 + 3);
      if (v93 >= v92 >> 1)
      {
        v101 = v89;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
        v89 = v101;
        v85 = v18;
      }

      *(v102 + 2) = v93 + 1;
      v86 = &v102[24 * v93];
      *(v86 + 4) = v89;
      *(v86 + 5) = v90;
      *(v86 + 12) = v91;
      ++v84;
      if (!--v82)
      {
        goto LABEL_156;
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    v94 = MEMORY[0x26D69CFC0](v3, &type metadata for Edge);
    v96 = v95;

    MEMORY[0x26D69CDB0](v94, v96);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = *(v12 + 72);
  if (!v13)
  {
LABEL_149:
    __break(1u);
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v8 = 312;
  v14 = v13 + 312 * v4;
  v15 = *(v14 + 12);
  if (v15)
  {
    v7 = 312 * v4;
    v16 = *v14;
    v17 = 0x280480000uLL;
    v18 = *v14;
    while (v16)
    {
      if (v3[48])
      {
        goto LABEL_124;
      }

      v19 = *v3;
      if (v19 >= *(v9 + 116))
      {
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
        goto LABEL_113;
      }

      v20 = *(v9 + 104);
      if (!v20)
      {
        goto LABEL_126;
      }

      v21 = *v18;
      v22 = *(*(v20 + 8 * v19) + 8);
      if (*v18 >= *(v22 + 108))
      {
        goto LABEL_107;
      }

      v23 = *(v22 + 96);
      if (!v23)
      {
        goto LABEL_127;
      }

      v24 = (v23 + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v24 + 1);
      v28 = v24[4];
      if (*(v17 + 1008) != -1)
      {
        v98 = v9;
        v99 = v7;
        v100 = result;
        v97 = v16;
        swift_once();
        v17 = 0x280480000;
        v16 = v97;
        v9 = v98;
        v7 = v99;
        result = v100;
      }

      v29 = HIDWORD(static Edge.invalid);
      v6 = qword_280481D78;
      if (v25 != static Edge.invalid || v26 != HIDWORD(static Edge.invalid) || v27 != qword_280481D78 || v28 != dword_280481D80)
      {
        if (v3[48])
        {
          goto LABEL_128;
        }

        v33 = *(v9 + 116);
        v34 = *v3;
        if (v34 >= v33)
        {
          goto LABEL_108;
        }

        v8 = *(v9 + 104);
        if (!v8)
        {
          goto LABEL_129;
        }

        v35 = *(*(v8 + 8 * v34) + 8);
        if (v21 >= *(v35 + 108))
        {
          goto LABEL_109;
        }

        v36 = *(v35 + 96);
        if (!v36)
        {
          goto LABEL_130;
        }

        if (*(v36 + 24 * v21) == result)
        {
          v37 = v3 + 56;
          v38 = *(v3 + 72);
          v104[0] = *(v3 + 56);
          v104[1] = v38;
          v105[0] = *(v3 + 88);
          *(v105 + 9) = *(v3 + 97);
          v39 = v3 + 88;
          v40 = v3 + 100;
          v41 = (v3 + 104);
          v42 = *(v3 + 29);
          while (1)
          {
            v43 = *v41;
            if (v42 < *v40 && (*(*v39 + 8 * v42 + 4) & 1) == 0)
            {
              break;
            }

            if (!v43)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v3 + 29), 0, v104);
            }

            v39 = (v43 + 32);
            v40 = (v43 + 44);
            v41 = (v43 + 48);
            v37 = v43;
          }

          v44 = dword_280481D80;
          v45 = qword_280481D78;
          v46 = HIDWORD(static Edge.invalid);
          if (!*v37)
          {
            goto LABEL_152;
          }

          if (v34 >= v33)
          {
            goto LABEL_115;
          }

          v8 = *(*(v8 + 8 * v34) + 8);
          v6 = v4;
          if (v4 < *(v8 + 84))
          {
            v47 = *(v8 + 72);
            if (!v47)
            {
              goto LABEL_150;
            }

            v48 = result;
            v49 = v47 + v7;
            v50 = *(v47 + v7);
            v51 = *(v47 + v7 + 12);
            v52 = v50;
            while (v51)
            {
              if (!v50)
              {
                goto LABEL_134;
              }

              v47 = *v52;
              if (*v52 >= *(v8 + 108))
              {
                goto LABEL_110;
              }

              v53 = *(v8 + 96);
              if (!v53)
              {
                goto LABEL_135;
              }

              v54 = (v53 + 24 * v47);
              v55 = *v54;
              result = v54[1];
              --v51;
              v58 = v54[4] == dword_280481D80 && *(v54 + 1) == qword_280481D78 && result == HIDWORD(static Edge.invalid) && v55 == static Edge.invalid;
              ++v52;
              if (!v58 && v55 == v48)
              {
                *v54 = static Edge.invalid;
                v54[1] = v29;
                *(v54 + 1) = v45;
                v54[4] = v44;
                if (v47 >= *(v8 + 108))
                {
                  goto LABEL_117;
                }

                if (v4 >= *(v8 + 84))
                {
                  goto LABEL_118;
                }

                v60 = *(v49 + 12);
                if (v60)
                {
                  v61 = 0;
                  v62 = 0;
                  v63 = 8;
                  while (1)
                  {
                    v65 = *v49;
                    if (!*v49)
                    {
                      goto LABEL_136;
                    }

                    result = v65 + v63;
                    v66 = *(v65 + v63 - 8);
                    if (v66 != v47)
                    {
                      v67 = (v65 + 8 * v62);
                      if (v62 < v61 || v67 >= result)
                      {
                        *v67 = v66;
                      }

                      v64 = __OFADD__(v62++, 1);
                      if (v64)
                      {
                        goto LABEL_111;
                      }
                    }

                    ++v61;
                    v63 += 8;
                    if (v60 == v61)
                    {
                      if (v62 <= v60)
                      {
                        goto LABEL_77;
                      }

                      __break(1u);
                      break;
                    }
                  }
                }

                v62 = 0;
LABEL_77:
                v68 = v60 - v62 + 1;
                while (--v68)
                {
                  if (!*v49)
                  {
                    __break(1u);
                    break;
                  }
                }

                if (v62 < 0)
                {
                  goto LABEL_119;
                }

                if (HIDWORD(v62))
                {
                  goto LABEL_120;
                }

                *(v49 + 12) = v62;
                if (v48 < *(v8 + 84))
                {
                  v69 = *(v8 + 72);
                  if (!v69)
                  {
                    goto LABEL_151;
                  }

                  v70 = v69 + 312 * v48;
                  v71 = *(v70 + 28);
                  if (v71)
                  {
                    v72 = 0;
                    v8 = 0;
                    v73 = 8;
                    while (1)
                    {
                      v74 = *(v70 + 16);
                      if (!v74)
                      {
                        goto LABEL_137;
                      }

                      v75 = v74 + v73;
                      v76 = *(v74 + v73 - 8);
                      if (v76 != v47)
                      {
                        v77 = (v74 + 8 * v8);
                        if (v8 < v72 || v77 >= v75)
                        {
                          *v77 = v76;
                        }

                        v64 = __OFADD__(v8++, 1);
                        if (v64)
                        {
                          goto LABEL_112;
                        }
                      }

                      ++v72;
                      v73 += 8;
                      if (v71 == v72)
                      {
                        if (v8 <= v71)
                        {
                          goto LABEL_98;
                        }

                        __break(1u);
                        break;
                      }
                    }
                  }

                  v8 = 0;
LABEL_98:
                  v78 = v71 - v8 + 1;
                  while (--v78)
                  {
                    if (!*(v70 + 16))
                    {
                      __break(1u);
                      break;
                    }
                  }

                  if (v8 < 0)
                  {
                    goto LABEL_122;
                  }

                  if (HIDWORD(v8))
                  {
                    goto LABEL_123;
                  }

                  *(v70 + 28) = v8;
                  return result;
                }

                goto LABEL_121;
              }
            }

            goto LABEL_131;
          }

          goto LABEL_116;
        }
      }

      ++v18;
      if (!--v15)
      {
        return result;
      }
    }

    goto LABEL_125;
  }

  return result;
}

uint64_t T_NodeSetEdgePending.updateState(within:)(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1);
  v8 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, v6);
  if (a3)
  {
    if (!*(v6 + 48))
    {
      v18 = v6[22];
      v19 = *v6;
      if (v19 >= *(v18 + 116))
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v20 = *(v18 + 104);
      if (v20)
      {
        v21 = *(*(v20 + 8 * v19) + 8);
        if (v7 >= *(v21 + 84))
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v22 = *(v21 + 72);
        if (v22)
        {
          v23 = v22 + 312 * v7;
          v24 = *(v23 + 224);
          if ((v24 & 1) == 0)
          {
            *(v23 + 224) = v24 | 1;
          }

          v25 = v6 + 7;
          v26 = *(v6 + 9);
          v106 = *(v6 + 7);
          v107 = v26;
          v108[0] = *(v6 + 11);
          *(v108 + 9) = *(v6 + 97);
          v27 = v6 + 11;
          v28 = v6 + 25;
          v29 = v6 + 13;
          v30 = *(v6 + 29);
          while (1)
          {
            v31 = *v29;
            if (v30 < *v28 && (*(*v27 + 8 * v30 + 4) & 1) == 0)
            {
              break;
            }

            if (!v31)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v30, 0, &v106);
            }

            v27 = (v31 + 32);
            v28 = (v31 + 44);
            v29 = (v31 + 48);
            v25 = v31;
          }

          if (!*v25)
          {
            goto LABEL_153;
          }

          if (!*(v6 + 48))
          {
            if (*v6 >= *(v18 + 116))
            {
LABEL_119:
              __break(1u);
              goto LABEL_120;
            }

            if (*(v18 + 104))
            {
              v68 = Snapshot.subscript.modify(v104, v8, v7);
              v69 = *(v67 + 16);
              if ((v69 & 2) == 0)
              {
                *(v67 + 16) = v69 | 2;
              }

              return (v68)(v104, 0);
            }

            goto LABEL_151;
          }

LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        goto LABEL_148;
      }

      goto LABEL_146;
    }

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

  v11 = v6 + 7;
  v12 = *(v6 + 9);
  v106 = *(v6 + 7);
  v107 = v12;
  v108[0] = *(v6 + 11);
  *(v108 + 9) = *(v6 + 97);
  v13 = v6 + 11;
  v14 = v6 + 25;
  v15 = v6 + 13;
  result = *(v6 + 29);
  while (1)
  {
    v17 = *v15;
    if (result < *v14 && (*(*v13 + 8 * result + 4) & 1) == 0)
    {
      break;
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, &v106);
    }

    v13 = (v17 + 32);
    v14 = (v17 + 44);
    v15 = (v17 + 48);
    v11 = v17;
  }

  if (!*v11)
  {
    goto LABEL_152;
  }

  if (*(v6 + 48))
  {
    goto LABEL_145;
  }

  v32 = v6[22];
  v33 = *v6;
  if (v33 >= *(v32 + 116))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v34 = *(v32 + 104);
  if (!v34)
  {
    goto LABEL_147;
  }

  v10 = *(*(v34 + 8 * v33) + 8);
  if (v7 >= *(v10 + 84))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v35 = *(v10 + 72);
  if (!v35)
  {
    goto LABEL_149;
  }

  v102 = v7;
  v9 = 312 * v7;
  v36 = v35 + v9;
  v37 = *(v36 + 12);
  if (!v37)
  {
LABEL_127:
    v3 = v9;
    v104[0] = 0;
    v104[1] = 0xE000000000000000;
    v81 = v8;
    v82 = v10;
    _StringGuts.grow(_:)(42);
    MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
    LODWORD(v105) = v81;
    _print_unlocked<A, B>(_:_:)();
    v6 = v104;
    MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
    if (v102 >= *(v82 + 84))
    {
LABEL_158:
      __break(1u);
LABEL_159:
      v96 = MEMORY[0x26D69CFC0](v6, &type metadata for Edge);
      v98 = v97;

      MEMORY[0x26D69CDB0](v96, v98);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    a3 = v82;
    v36 = *(v82 + 72);
    if (!v36)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

    v83 = v36 + v3;
    v84 = *(v83 + 12);
    v6 = MEMORY[0x277D84F90];
    if (!v84)
    {
      goto LABEL_159;
    }

    v85 = *v83;
    v105 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
    v6 = v105;
    v86 = v85;
    v87 = a3;
    while (v85)
    {
      if (*v86 >= *(v87 + 108))
      {
        goto LABEL_141;
      }

      v89 = *(v87 + 96);
      if (!v89)
      {
        goto LABEL_157;
      }

      v90 = v89 + 24 * *v86;
      v91 = *v90;
      v92 = *(v90 + 8);
      v93 = *(v90 + 16);
      v105 = v6;
      v95 = v6[2];
      v94 = v6[3];
      if (v95 >= v94 >> 1)
      {
        v103 = v91;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
        v87 = a3;
        v91 = v103;
        v6 = v105;
      }

      v6[2] = v95 + 1;
      v88 = &v6[3 * v95];
      v88[4] = v91;
      v88[5] = v92;
      *(v88 + 12) = v93;
      ++v86;
      if (!--v84)
      {
        goto LABEL_159;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v6 = *v36;
  v38 = 0x280480000uLL;
  v39 = *v36;
  while (1)
  {
    if (!v6)
    {
      goto LABEL_130;
    }

    v3 = *v39;
    if (*v39 >= *(v10 + 108))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v36 = *(v10 + 96);
    if (!v36)
    {
      goto LABEL_131;
    }

    v40 = 24 * v3;
    v41 = (v36 + 24 * v3);
    v43 = *v41;
    v42 = v41[1];
    v44 = *(v41 + 1);
    a3 = v41[4];
    if (*(v38 + 1008) != -1)
    {
      v99 = v9;
      v100 = v10;
      v101 = v8;
      result = swift_once();
      v38 = 0x280480000;
      v9 = v99;
      v10 = v100;
      v8 = v101;
    }

    v45 = static Edge.invalid;
    v36 = HIDWORD(static Edge.invalid);
    v46 = qword_280481D78;
    v47 = dword_280481D80;
    v48 = v43 == static Edge.invalid && v42 == HIDWORD(static Edge.invalid);
    v49 = v48 && v44 == qword_280481D78;
    if (!v49 || a3 != dword_280481D80)
    {
      v51 = *(v10 + 108);
      if (v3 >= v51)
      {
        goto LABEL_112;
      }

      v52 = *(v10 + 96);
      if (!v52)
      {
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (*(v52 + 24 * v3) == v8)
      {
        break;
      }
    }

    ++v39;
    if (!--v37)
    {
      goto LABEL_127;
    }
  }

  v53 = v52 + v40;
  v54 = *(v52 + v40 + 16);
  if ((v54 & 2) != 0)
  {
    v54 &= ~2u;
    *(v53 + 16) = v54;
    v51 = *(v10 + 108);
  }

  if (v3 >= v51)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v8 != v45)
  {
    return result;
  }

  v55 = *(v53 + 4) == v36 && *(v53 + 8) == v46;
  if (!v55 || v54 != v47)
  {
    return result;
  }

  if (v102 >= *(v10 + 84))
  {
    goto LABEL_121;
  }

  v57 = *(v10 + 72);
  if (!v57)
  {
    goto LABEL_154;
  }

  v58 = (v57 + v9);
  v59 = *(v58 + 3);
  if (v59)
  {
    v60 = 0;
    v61 = 0;
    v62 = 8;
    while (1)
    {
      v64 = *v58;
      if (!*v58)
      {
        break;
      }

      v9 = v64 + v62;
      v65 = *(v64 + v62 - 8);
      if (v65 != v3)
      {
        v66 = (v64 + 8 * v61);
        if (v61 < v60 || v66 >= v9)
        {
          *v66 = v65;
        }

        v63 = __OFADD__(v61++, 1);
        if (v63)
        {
          goto LABEL_113;
        }
      }

      ++v60;
      v62 += 8;
      if (v59 == v60)
      {
        if (v61 <= v59)
        {
          goto LABEL_83;
        }

        __break(1u);
        goto LABEL_82;
      }
    }

LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

LABEL_82:
  v61 = 0;
LABEL_83:
  v70 = v59 - v61 + 1;
  while (--v70)
  {
    if (!*v58)
    {
      __break(1u);
      break;
    }
  }

  if (v61 < 0)
  {
    goto LABEL_122;
  }

  if (HIDWORD(v61))
  {
    goto LABEL_123;
  }

  *(v58 + 3) = v61;
  if (v8 >= *(v10 + 84))
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v71 = *(v10 + 72);
  if (!v71)
  {
    goto LABEL_155;
  }

  v72 = v71 + 312 * v8;
  v73 = *(v72 + 28);
  if (v73)
  {
    v74 = 0;
    v75 = 0;
    v76 = 8;
    while (1)
    {
      v77 = *(v72 + 16);
      if (!v77)
      {
        goto LABEL_143;
      }

      v9 = v77 + v76;
      v78 = *(v77 + v76 - 8);
      if (v78 != v3)
      {
        v79 = (v77 + 8 * v75);
        if (v75 < v74 || v79 >= v9)
        {
          *v79 = v78;
        }

        v63 = __OFADD__(v75++, 1);
        if (v63)
        {
          goto LABEL_114;
        }
      }

      ++v74;
      v76 += 8;
      if (v73 == v74)
      {
        if (v75 <= v73)
        {
          goto LABEL_104;
        }

        __break(1u);
        break;
      }
    }
  }

  v75 = 0;
LABEL_104:
  v80 = v73 - v75 + 1;
  while (--v80)
  {
    if (!*(v72 + 16))
    {
      __break(1u);
      break;
    }
  }

  if (v75 < 0)
  {
    goto LABEL_125;
  }

  if (HIDWORD(v75))
  {
    goto LABEL_126;
  }

  *(v72 + 28) = v75;
  return result;
}

unint64_t T_IndirectNodeSetSource.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v2 = a2;
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1);
  if (v2 != 2)
  {
    v5 = result;
    v6 = a1 + 56;
    v7 = *(a1 + 72);
    v53[0] = *(a1 + 56);
    v53[1] = v7;
    v54[0] = *(a1 + 88);
    *(v54 + 9) = *(a1 + 97);
    v8 = a1 + 88;
    v9 = a1 + 100;
    v10 = a1 + 104;
    result = *(a1 + 29);
    v11 = a1 + 56;
    v12 = a1 + 104;
    while (1)
    {
      v13 = *v12;
      if (result < *v9)
      {
        v14 = (*v8 + 8 * result);
        if ((v14[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v13)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v53);
      }

      v8 = v13 + 32;
      v9 = v13 + 44;
      v12 = v13 + 48;
      v11 = v13;
    }

    if (!*v11)
    {
      goto LABEL_45;
    }

    result = *v11 + 24 * *v14;
    v40 = v5;
    if ((*(*result + 40) & 1) == 0)
    {
      result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v2, a1);
    }

    v41 = *a1;
    v15 = a1[48];
    v16 = *(a1 + 22);
    v17 = *(a1 + 72);
    v51[0] = *v6;
    v51[1] = v17;
    v52[0] = *(a1 + 88);
    v18 = a1 + 72;
    v19 = a1 + 84;
    v20 = a1 + 56;
    v21 = a1 + 72;
    v22 = a1 + 84;
    v23 = a1 + 104;
    *(v52 + 9) = *(a1 + 97);
    while (1)
    {
      v24 = *v23;
      if (*v22 >= 2u)
      {
        v25 = *v21;
        if ((*(v25 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v24)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v51);
      }

      v21 = v24 + 16;
      v22 = v24 + 28;
      v23 = v24 + 48;
      v20 = v24;
    }

    v26 = *v20;
    if (!v26)
    {
      goto LABEL_46;
    }

    result = v26 + 24 * *(v25 + 8);
    v27 = *(*result + 112);
    if (v27)
    {
      v48 = *v27;
      v28 = *(v27 + 2);
      v46 = *(v27 + 88);
      *v47 = *(v27 + 104);
      *&v47[13] = *(v27 + 117);
      v42 = *(v27 + 24);
      v43 = *(v27 + 40);
      v44 = *(v27 + 56);
      v45 = *(v27 + 72);
      v29 = *v28;
      if (*(*v28 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v30 & 1) != 0))
      {
        v31 = *(v29 + 56) + 24 * result;
        LODWORD(v2) = *v31;
        v32 = *(v31 + 8);
      }

      else
      {
        v32 = 0;
      }

      v33 = *(v6 + 1);
      v49[0] = *v6;
      v49[1] = v33;
      v50[0] = *(v6 + 2);
      *(v50 + 9) = *(v6 + 41);
      while (1)
      {
        v34 = *v10;
        if (*v19 >= 2u && (*(*v18 + 12) & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v49);
        }

        v18 = v34 + 16;
        v19 = v34 + 28;
        v10 = v34 + 48;
        v6 = v34;
      }

      if (!*v6)
      {
        goto LABEL_47;
      }

      result = *v6 + 24 * *(*v18 + 8);
      v35 = *(*result + 112);
      if (!v35)
      {
        goto LABEL_41;
      }

      *(v35 + 117) = *&v47[13];
      *v35 = v48;
      *(v35 + 24) = v42;
      *(v35 + 40) = v43;
      *(v35 + 56) = v44;
      *(v35 + 104) = *v47;
      *(v35 + 88) = v46;
      *(v35 + 16) = v28;
      *(v35 + 72) = v45;
      if (v15)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v41 >= *(v16 + 116))
      {
        __break(1u);
      }

      else
      {
        v36 = *(v16 + 104);
        if (!v36)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          return result;
        }

        v37 = *(*(v36 + 8 * v41) + 8);
        if (v40 < *(v37 + 84))
        {
          v38 = *(v37 + 72);
          if (v38)
          {
            v39 = v38 + 312 * v40;
            *(v39 + 72) = v2;
            *(v39 + 80) = v32;
            *(v39 + 88) = 0;
            return result;
          }

          goto LABEL_44;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

unint64_t T_IndirectNodeSetDependency.structure(within:)(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  v5 = (result + 56);
  v6 = *(result + 72);
  v57[0] = *(result + 56);
  v57[1] = v6;
  v58[0] = *(result + 88);
  v7 = result + 72;
  v8 = (result + 84);
  v9 = (result + 104);
  *(v58 + 9) = *(result + 97);
  v10 = (result + 56);
  v11 = (result + 72);
  v12 = (result + 84);
  v13 = (result + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12 >= 2u)
    {
      v15 = *v11;
      if ((*(v15 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v57);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_40;
  }

  result = v16 + 24 * *(v15 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    goto LABEL_33;
  }

  v54 = *v17;
  v18 = *(v17 + 2);
  v19 = *(v17 + 72);
  v20 = *(v17 + 104);
  v52 = *(v17 + 88);
  v53[0] = v20;
  *(v53 + 13) = *(v17 + 117);
  v21 = *(v17 + 40);
  v48 = *(v17 + 24);
  v49 = v21;
  v50 = *(v17 + 56);
  v51 = v19;
  v22 = *v18;
  if (!*(*v18 + 16))
  {
    v46 = HIDWORD(a2);
LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(HIDWORD(a2));
  if ((v23 & 1) == 0)
  {
    v46 = v4;
    goto LABEL_14;
  }

  v24 = (*(v22 + 56) + 24 * result);
  v46 = *v24;
  v25 = *(v24 + 1);
LABEL_15:
  v26 = v5[1];
  v55[0] = *v5;
  v55[1] = v26;
  v56[0] = v5[2];
  *(v56 + 9) = *(v5 + 41);
  while (1)
  {
    v27 = *v9;
    if (*v8 >= 2u && (*(*v7 + 12) & 1) == 0)
    {
      break;
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v55);
    }

    v7 = v27 + 16;
    v8 = (v27 + 28);
    v9 = (v27 + 48);
    v5 = v27;
  }

  if (!*v5)
  {
    goto LABEL_41;
  }

  v28 = *(*(*v5 + 24 * *(*v7 + 8)) + 112);
  if (!v28)
  {
    goto LABEL_34;
  }

  *v28 = v54;
  v29 = v50;
  *(v28 + 72) = v51;
  v30 = v53[0];
  *(v28 + 88) = v52;
  *(v28 + 104) = v30;
  v31 = v49;
  *(v28 + 24) = v48;
  *(v28 + 40) = v31;
  *(v28 + 16) = v18;
  *(v28 + 117) = *(v53 + 13);
  *(v28 + 56) = v29;
  v32 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, v3);
  if (*(v3 + 48))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = *(v3 + 22);
  v34 = *v3;
  if (v34 >= *(v33 + 116))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = *(v33 + 104);
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v32;
  v37 = *(*(v35 + 8 * v34) + 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 84);
  v3 = specialized Strong.subscript.read();
  v41 = *v40;
  if (!*(*v40 + 16))
  {
LABEL_37:
    (v3)(v47, 0);
    __break(1u);
    goto LABEL_38;
  }

  v42 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v25);
  if (v43)
  {
    v44 = *(*(v41 + 56) + 4 * v42);
    result = (v3)(v47, 0);
    if (v44 < v39)
    {
      if (v38)
      {
        v45 = v38 + 312 * v44;
        *(v45 + 172) = v36;
        *(v45 + 176) = 0;
        return result;
      }

      goto LABEL_39;
    }

    goto LABEL_32;
  }

LABEL_38:
  result = (v3)(v47, 0);
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void T_BeginValueUpdate.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = v263;
  v4 = *(a1 + 22);
  v5 = *(v4 + 136);
  v6 = *(v4 + 168);
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  v8 = a1 + 56;
  v9 = *(a1 + 72);
  v276[0] = *(a1 + 56);
  v276[1] = v9;
  v277[0] = *(a1 + 88);
  v10 = a1 + 88;
  v11 = a1 + 100;
  v12 = a1 + 104;
  v13 = *(a1 + 29);
  v14 = 8 * v13;
  *(v277 + 9) = *(a1 + 97);
  v15 = a1 + 56;
  v210 = a1 + 88;
  v16 = a1 + 100;
  while (1)
  {
    v17 = *v12;
    if (v13 < *v16)
    {
      v18 = (*v10 + v14);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, v276);
    }

    v10 = v17 + 32;
    v16 = v17 + 44;
    v12 = v17 + 48;
    v15 = v17;
  }

  v63 = *v15;
  if (!v63)
  {
    goto LABEL_218;
  }

  v62 = *v18;
  v64 = v63 + 24 * v62;
  v57 = a1[48];
  if (a1[48])
  {
    __break(1u);
    goto LABEL_43;
  }

  v19 = *(v4 + 116);
  v20 = *a1;
  if (v20 >= v19)
  {
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v21 = *(v4 + 104);
  if (!v21)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v22 = *(*(v21 + 8 * v20) + 8);
  if (v7 >= *(v22 + 84))
  {
    goto LABEL_147;
  }

  v23 = *(v22 + 72);
  if (!v23)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v24 = v23 + 312 * v7;
  *(v24 + 288) = *(*v64 + 32);
  *(v24 + 296) = -1;
  *(v24 + 304) = 0;
  if (a1[48])
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v25 = *a1;
  if (v25 >= v19)
  {
    goto LABEL_148;
  }

  v26 = *(*(v21 + 8 * v25) + 8);
  if (v7 >= *(v26 + 84))
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  v27 = *(v26 + 72);
  if (!v27)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v3 = 312 * v7;
  v28 = *(v27 + v3 + 224);
  if ((v28 & 0x4000000000000004) == 4)
  {
    *(v27 + v3 + 224) = v28 | 0x4000000000000000;
    if (a1[48])
    {
      goto LABEL_203;
    }
  }

  v29 = *a1;
  if (v29 >= v19)
  {
    goto LABEL_150;
  }

  v30 = *(*(v21 + 8 * v29) + 8);
  if (v7 >= *(v30 + 84))
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
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
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v209 = a1 + 56;
  v31 = *(v30 + 72);
  if (!v31)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v32 = v31 + v3;
  v8 = 1;
  if ((*(v32 + 220) & 2) != 0)
  {
    if (*(v32 + 136))
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v33 = *(v32 + 128);
    if (HIDWORD(v33) >= *(v30 + 124))
    {
      goto LABEL_163;
    }

    v34 = *(v30 + 112);
    if (!v34)
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_164;
    }

    v35 = *(v34 + 168 * HIDWORD(v33));
    if (v33 >= *(v35 + 16))
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v36 = *(v35 + 208 * v33 + 120);
    if ((v36 + 1) >= 2)
    {
      v37 = *(v5 + 4);
      if (*(v37 + 16) <= v36)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v38 = *(v37 + 4 * v36 + 32);
      if (v38 >= *(v5 + 3))
      {
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      if (!*v5)
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        return;
      }

      v39 = *v5 + 120 * v38;
      v40 = *v39;
      v41 = *(v39 + 16);
      v42 = *(v39 + 48);
      *v226 = *(v39 + 32);
      *&v226[16] = v42;
      v224 = v40;
      v225 = v41;
      v43 = *(v39 + 64);
      v44 = *(v39 + 80);
      v45 = *(v39 + 96);
      *(v229 + 14) = *(v39 + 110);
      v228 = v44;
      v229[0] = v45;
      v227 = v43;
      v46 = *(v39 + 80);
      v221 = *(v39 + 64);
      v222 = v46;
      v223[0] = *(v39 + 96);
      *(v223 + 14) = *(v39 + 110);
      v47 = *(v39 + 16);
      v218 = *v39;
      v219 = v47;
      v48 = *(v39 + 48);
      *v220 = *(v39 + 32);
      *&v220[16] = v48;
      v49 = v5[2];
      v50 = *v5;
      v231 = v5[1];
      v232 = v49;
      v51 = v5[6];
      v53 = v5[3];
      v52 = v5[4];
      v235 = v5[5];
      v236 = v51;
      v233 = v53;
      v234 = v52;
      v230 = v50;
      v54 = v5[5];
      v215 = v5[4];
      v216 = v54;
      v217 = v5[6];
      v55 = v5[1];
      v211 = *v5;
      v212 = v55;
      v56 = v5[3];
      v213 = v5[2];
      v214 = v56;
      outlined init with copy of PType(&v224, v250);
      outlined init with copy of Interpreter.Storage.Types(&v230, v250);
      v8 = PType.isFirstParty(within:)(&v211);
      v240 = v215;
      v241 = v216;
      v242 = v217;
      v237 = v211;
      v238 = v212;
      *v239 = v213;
      *&v239[16] = v214;
      outlined destroy of Interpreter.Storage.Types(&v237);
      v252 = v221;
      *v253 = v222;
      *&v253[16] = v223[0];
      *&v253[30] = *(v223 + 14);
      *v250 = v218;
      *&v250[16] = v219;
      *&v250[32] = *v220;
      v251 = *&v220[16];
      outlined destroy of PType(v250);
    }
  }

  v250[0] = 1;
  LOBYTE(v224) = 1;
  LOBYTE(v218) = 0;
  v265 = v7;
  v266 = 0;
  v267 = 0;
  v268 = 1;
  v269 = 0xFFFFFFFFLL;
  v270 = 0;
  v271 = 1;
  v272 = -1;
  v273 = 0;
  v274 = 0;
  v275 = 0;
  if (a1[48])
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (*a1 >= *(v4 + 116))
  {
    goto LABEL_152;
  }

  if (!*(v4 + 104))
  {
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  specialized UnsafeArray.growToCapacity(_:)(v6);
  v57 = a1 + 56;
  v58 = a1 + 104;
  v59 = *(a1 + 72);
  v237 = *v209;
  v238 = v59;
  *v239 = *(a1 + 88);
  *&v239[9] = *(a1 + 97);
  v60 = a1 + 88;
  while (1)
  {
    v61 = *v58;
    if (v13 < *v11)
    {
      v62 = (*v60 + v14);
      if ((v62[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v61)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, &v237);
    }

    v60 = v61 + 32;
    v11 = v61 + 44;
    v58 = v61 + 48;
    v57 = v61;
  }

LABEL_43:
  v65 = *v57;
  if (!v65)
  {
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v66 = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(&v265, *(*(v65 + 24 * *v62) + 32), 0xFFFFFFFFFFFFFFFFLL, (v8 & 1));
  if (a1[48])
  {
    goto LABEL_191;
  }

  v67 = *a1;
  if (v67 >= *(v4 + 116))
  {
    goto LABEL_153;
  }

  v68 = *(v4 + 104);
  if (!v68)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v69 = *(*(v68 + 8 * v67) + 8);
  if (v7 >= *(v69 + 84))
  {
    goto LABEL_154;
  }

  v70 = *(v69 + 72);
  if (!v70)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v71 = v66;
  v72 = v70 + v3;
  if ((*(v72 + 40) & 1) == 0)
  {
    v73 = *(v72 + 36);
    v74 = *(v69 + 44);
    if (v73 >= v74)
    {
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v75 = *(v69 + 32);
    if (!v75)
    {
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if (v66 >= v74)
    {
      goto LABEL_167;
    }

    v76 = (v75 + (v73 << 7));
    v77 = (v75 + (v66 << 7));
    v78 = *v77;
    if (v76[31] == v76[30])
    {
      specialized UnsafeArray.growToCapacity(_:)();
    }

    v79 = *(v76 + 14);
    if (!v79)
    {
      goto LABEL_207;
    }

    v80 = v76[31];
    v81 = v79 + 8 * v80;
    *v81 = -22528;
    *(v81 + 4) = v78;
    if (v80 == -1)
    {
      goto LABEL_168;
    }

    v76[31] = v80 + 1;
    v82 = *v76;
    if (v77[31] == v77[30])
    {
      specialized UnsafeArray.growToCapacity(_:)();
    }

    v83 = *(v77 + 14);
    if (!v83)
    {
      goto LABEL_208;
    }

    v84 = v77[31];
    v85 = v83 + 8 * v84;
    *v85 = 26624;
    *(v85 + 4) = v82;
    if (v84 == -1)
    {
      goto LABEL_169;
    }

    v77[31] = v84 + 1;
    if (a1[48])
    {
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v68 = *(v4 + 104);
  }

  v86 = *(v4 + 116);
  v87 = *a1;
  v88 = *a1;
  if (v88 >= v86)
  {
    goto LABEL_155;
  }

  v203 = v71;
  if (!v68)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v89 = *(*(v68 + 8 * v88) + 8);
  v90 = *(a1 + 24);
  v260 = *(a1 + 8);
  v261 = v90;
  v262 = *(a1 + 5);
  v259[0] = *(a1 + 49);
  *(v259 + 3) = *(a1 + 13);
  v92 = *(a1 + 7);
  v91 = *(a1 + 8);
  v93 = *(a1 + 9);
  v94 = *(a1 + 20);
  v95 = *(a1 + 21);
  v258 = *v210;
  v96 = *(a1 + 23);
  v97 = *(a1 + 13);
  v98 = a1[112];
  *&v226[15] = *(a1 + 10);
  v99 = *(a1 + 145);
  v100 = *(a1 + 113);
  v225 = *(a1 + 129);
  *v226 = v99;
  v224 = v100;
  v101 = *(a1 + 22);
  v256 = v96;
  v257 = a1[192];
  *&v230 = v92;
  *(&v230 + 1) = v91;
  *&v231 = v93;
  *(&v231 + 1) = __PAIR64__(v95, v94);
  v232 = *v210;
  v102 = v92;
  *&v233 = v97;
  v103 = v93;
  v104 = v97;
  BYTE8(v233) = v98;
  v204 = v89;
  v206 = v88;
  if (!v95)
  {
    goto LABEL_67;
  }

  while ((v103[1] & 1) != 0)
  {
    do
    {
LABEL_67:
      if (!v104)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v230);
      }

      v102 = *v104;
      v103 = v104[2];
      v105 = *(v104 + 7);
      v104 = v104[6];
    }

    while (!v105);
  }

  if (!v102)
  {
    goto LABEL_216;
  }

  v106 = *(*(v102 + 24 * *v103) + 112);
  if (!v106)
  {
    goto LABEL_195;
  }

  if (!*(*(*(v106 + 32) + 8) + 16))
  {
    goto LABEL_156;
  }

  *&v250[8] = v260;
  *&v250[24] = v261;
  *&v253[8] = v258;
  *&v253[33] = v224;
  *v250 = v87;
  *&v250[40] = v262;
  LOBYTE(v251) = 0;
  *(&v251 + 1) = v259[0];
  DWORD1(v251) = *(v259 + 3);
  *(&v251 + 1) = v92;
  *&v252 = v91;
  *(&v252 + 1) = v93;
  *v253 = v94;
  *&v253[4] = v95;
  *&v253[24] = v97;
  v253[32] = v98;
  *&v253[49] = v225;
  *&v253[65] = *v226;
  *&v253[80] = *&v226[15];
  *&v254 = v101;
  *(&v254 + 1) = v256;
  v255 = v257;
  Interpreter.Iterator.updatingValue.getter();
  if (v108)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  if (v206 >= *(v101 + 116))
  {
    goto LABEL_157;
  }

  v109 = *(v101 + 104);
  if (!v109)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v110 = *(*(v109 + 8 * v206) + 8);
  if (v107 >= *(v110 + 44))
  {
    goto LABEL_158;
  }

  v207 = *(v101 + 116);
  v111 = *(v110 + 32);
  if (!v111)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v112 = v111 + (v107 << 7);
  v113 = *(v112 + 8);
  v114 = *(v112 + 16);
  v115 = *(v112 + 24);
  v116 = *(v112 + 25);
  v119 = v112 + 28;
  v117 = *(v112 + 28);
  v118 = *(v119 + 4);
  LOBYTE(v218) = v115;
  v120 = v116 == 0;
  v121 = 256;
  if (v120)
  {
    v121 = 0;
  }

  v122 = v121 | (v117 << 32);
  v123 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v113, v114, v122 | v115, v118);
  if (!v123)
  {
    LOBYTE(v218) = v115;
    v123 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v113, v114, v122 | v115, v118, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v123)
    {
      goto LABEL_217;
    }
  }

  if (*v123 >= *(v110 + 84))
  {
    goto LABEL_159;
  }

  v124 = *(v110 + 72);
  if (!v124)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  if (v203 >= *(v204 + 44))
  {
    goto LABEL_160;
  }

  v125 = *(v204 + 32);
  if (!v125)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  *(v125 + (v203 << 7) + 48) = (*(v124 + 312 * *v123 + 224) & 0x4000000000000000) == 0;
  if (a1[48])
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v126 = *a1;
  v127 = *a1;
  if (v127 >= v207)
  {
    goto LABEL_161;
  }

  v128 = *(*(v109 + 8 * v127) + 8);
  if (v203 >= *(v128 + 44))
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v129 = *(v128 + 32);
  if (!v129)
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (*(v129 + (v203 << 7) + 48) != 1)
  {
    return;
  }

  v205 = *(*(v109 + 8 * v127) + 8);
  v130 = *(a1 + 24);
  v247 = *(a1 + 8);
  v248 = v130;
  v249 = *(a1 + 5);
  v246[0] = *(a1 + 49);
  *(v246 + 3) = *(a1 + 13);
  v132 = *(a1 + 7);
  v131 = *(a1 + 8);
  v133 = *(a1 + 9);
  v134 = *(a1 + 20);
  v135 = *(a1 + 21);
  v245 = *v210;
  v136 = *(a1 + 13);
  v137 = a1[112];
  v138 = *(a1 + 113);
  v139 = *(a1 + 129);
  v140 = *(a1 + 145);
  *&v220[15] = *(a1 + 10);
  v219 = v139;
  *v220 = v140;
  v218 = v138;
  v141 = *(a1 + 22);
  v142 = *(a1 + 23);
  v244 = a1[192];
  v243 = v142;
  *&v211 = v132;
  *(&v211 + 1) = v131;
  v208 = v131;
  *&v212 = v133;
  *(&v212 + 1) = __PAIR64__(v135, v134);
  v213 = *v210;
  v143 = v132;
  *&v214 = v136;
  v144 = v133;
  v145 = v136;
  BYTE8(v214) = v137;
  if (!v135)
  {
    goto LABEL_95;
  }

  while ((v144[1] & 1) != 0)
  {
    do
    {
LABEL_95:
      if (!v145)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v211);
      }

      v143 = *v145;
      v144 = v145[2];
      v146 = *(v145 + 7);
      v145 = v145[6];
    }

    while (!v146);
  }

  if (!v143)
  {
    goto LABEL_229;
  }

  v147 = *(*(v143 + 24 * *v144) + 112);
  if (!v147)
  {
    goto LABEL_210;
  }

  if (!*(*(*(v147 + 32) + 8) + 16))
  {
    goto LABEL_170;
  }

  *&v250[8] = v247;
  *&v250[24] = v248;
  *&v253[8] = v245;
  *&v253[33] = v218;
  *v250 = v126;
  *&v250[40] = v249;
  LOBYTE(v251) = 0;
  *(&v251 + 1) = v246[0];
  DWORD1(v251) = *(v246 + 3);
  *(&v251 + 1) = v132;
  *&v252 = v208;
  *(&v252 + 1) = v133;
  *v253 = v134;
  *&v253[4] = v135;
  *&v253[24] = v136;
  v253[32] = v137;
  *&v253[49] = v219;
  *&v253[65] = *v220;
  *&v253[80] = *&v220[15];
  *&v254 = v141;
  *(&v254 + 1) = v243;
  v255 = v244;
  Interpreter.Iterator.updatingValue.getter();
  if (v149)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  v150 = *(v141 + 116);
  if (v127 >= v150)
  {
    goto LABEL_171;
  }

  v151 = *(v141 + 104);
  if (!v151)
  {
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v152 = *(*(v151 + 8 * v127) + 8);
  if (v148 >= *(v152 + 44))
  {
    goto LABEL_172;
  }

  v153 = *(v152 + 32);
  if (!v153)
  {
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  v154 = v141;
  v155 = v153 + (v148 << 7);
  v156 = *(v155 + 8);
  v157 = *(v155 + 16);
  v158 = *(v155 + 24);
  v159 = *(v155 + 25);
  v162 = v155 + 28;
  v160 = *(v155 + 28);
  v161 = *(v162 + 4);
  LOBYTE(v263[0]) = v158;
  v120 = v159 == 0;
  v163 = 256;
  if (v120)
  {
    v163 = 0;
  }

  v164 = v163 | (v160 << 32);
  v165 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v156, v157, v164 | v158, v161);
  if (!v165)
  {
    LOBYTE(v263[0]) = v158;
    v165 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v156, v157, v164 | v158, v161, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v165)
    {
      goto LABEL_230;
    }
  }

  if (*v165 >= *(v152 + 84))
  {
    goto LABEL_173;
  }

  v166 = *(v152 + 72);
  if (!v166)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  v167 = *(v166 + 312 * *v165 + 180);
  if (v167 >= *(v205 + 124))
  {
    goto LABEL_174;
  }

  v168 = *(v205 + 112);
  if (!v168)
  {
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v169 = v168 + 168 * v167;
  if (*(v169 + 128))
  {
    return;
  }

  if (a1[48])
  {
    goto LABEL_220;
  }

  v170 = *a1;
  if (v170 >= v150)
  {
    goto LABEL_175;
  }

  v171 = *(v169 + 124);
  v172 = *(*(v151 + 8 * v170) + 8);
  if (v171 >= *(v172 + 44))
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v173 = *(v172 + 32);
  if (!v173)
  {
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v175 = v209;
  v174 = a1 + 104;
  v176 = *(v209 + 1);
  v263[0] = *v209;
  v263[1] = v176;
  v264[0] = *(v209 + 2);
  *(v264 + 9) = *(v209 + 41);
  v178 = a1 + 84;
  v177 = a1 + 72;
  while (1)
  {
    v179 = *v174;
    if (*v178)
    {
      if ((*(*v177 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v179)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v263);
    }

    v177 = v179 + 16;
    v178 = v179 + 28;
    v174 = v179 + 48;
    v175 = v179;
  }

  if (!*v175)
  {
    goto LABEL_232;
  }

  v180 = *(*(*v175 + 24 * **v177) + 112);
  if (!v180)
  {
    goto LABEL_222;
  }

  if (!*(*(*(v180 + 32) + 8) + 16))
  {
    goto LABEL_177;
  }

  if (a1[48])
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v181 = *a1;
  if (v181 >= *(v154 + 116))
  {
    goto LABEL_178;
  }

  v182 = *(v154 + 104);
  if (!v182)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v183 = *(*(v182 + 8 * v181) + 8);
  v184 = *(a1 + 11);
  *&v253[80] = *(a1 + 10);
  v254 = v184;
  v255 = a1[192];
  v185 = *(a1 + 7);
  *&v253[16] = *(a1 + 6);
  *&v253[32] = v185;
  v186 = *(a1 + 9);
  *&v253[48] = *(a1 + 8);
  *&v253[64] = v186;
  v187 = *(a1 + 3);
  *&v250[32] = *(a1 + 2);
  v251 = v187;
  v188 = *(a1 + 5);
  v252 = *(a1 + 4);
  *v253 = v188;
  v189 = *(a1 + 1);
  *v250 = *a1;
  *&v250[16] = v189;
  Interpreter.Iterator.updatingValue.getter();
  if (v191)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  if (v190 >= *(v183 + 44))
  {
    goto LABEL_179;
  }

  v192 = *(v183 + 32);
  if (!v192)
  {
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v193 = (v173 + (v171 << 7));
  v194 = (v192 + (v190 << 7));
  v195 = *v194;
  if (v193[31] == v193[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v196 = *(v193 + 14);
  if (!v196)
  {
    goto LABEL_227;
  }

  v197 = v193[31];
  v198 = v196 + 8 * v197;
  *v198 = -24572;
  *(v198 + 4) = v195;
  if (v197 == -1)
  {
    goto LABEL_180;
  }

  v193[31] = v197 + 1;
  v199 = *v193;
  if (v194[31] == v194[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v200 = *(v194 + 14);
  if (!v200)
  {
    goto LABEL_228;
  }

  v201 = v194[31];
  v202 = v200 + 8 * v201;
  *v202 = 24580;
  *(v202 + 4) = v199;
  if (v201 == -1)
  {
    goto LABEL_181;
  }

  v194[31] = v201 + 1;
}

double Event.AttributeValue.init(ref:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *&result = 0xFFFFFFFFLL;
  *(a2 + 20) = 0xFFFFFFFFLL;
  *(a2 + 28) = 0;
  *(a2 + 32) = 1;
  *(a2 + 36) = -1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t T_EndValueUpdate.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = &v124;
  LODWORD(v4) = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  v5 = *(a1 + 5);
  v142 = *(a1 + 4);
  v143 = v5;
  v144 = *(a1 + 6);
  v6 = *(a1 + 1);
  v138 = *a1;
  v139 = v6;
  v7 = *(a1 + 3);
  v140 = *(a1 + 2);
  v141 = v7;
  v8 = *(a1 + 28);
  v9 = *(a1 + 29);
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v12 = *(a1 + 21);
  v149 = *(a1 + 152);
  v148 = v11;
  v147 = v10;
  v13 = *(a1 + 23);
  v153 = a1[192];
  v14 = *(a1 + 22);
  v145 = v8;
  v146 = v9;
  v150 = v12;
  v151 = v14;
  v152 = v13;
  Interpreter.Iterator.updatingValue.getter();
  if (v16)
  {
    goto LABEL_95;
  }

  if (v4 != HIDWORD(v15))
  {
LABEL_96:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26C328DC0;
    *&v158[0] = 0;
    *(&v158[0] + 1) = 0xE000000000000000;
    v112 = *(a1 + 11);
    v3[10] = *(a1 + 10);
    v3[11] = v112;
    v137 = a1[192];
    v113 = *(a1 + 7);
    v130 = *(a1 + 6);
    v131 = v113;
    v114 = *(a1 + 9);
    v3[8] = *(a1 + 8);
    v3[9] = v114;
    v115 = *(a1 + 3);
    v126 = *(a1 + 2);
    v127 = v115;
    v116 = *(a1 + 5);
    v128 = *(a1 + 4);
    v129 = v116;
    v117 = *(a1 + 1);
    v124 = *a1;
    v125 = v117;
    Interpreter.Iterator.updatingValue.getter();
    if ((v118 & 1) == 0)
    {
LABEL_120:
      LODWORD(v156[0]) = HIDWORD(v15);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
      LODWORD(v124) = v4;
      _print_unlocked<A, B>(_:_:)();
      v119 = *(&v158[0] + 1);
      v120 = *&v158[0];
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 32) = __PAIR128__(v119, v120);

      print(_:separator:terminator:)();

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v17 = a1 + 56;
  v18 = *(a1 + 72);
  v158[0] = *(a1 + 56);
  v158[1] = v18;
  v159[0] = *(a1 + 88);
  *(v159 + 9) = *(a1 + 97);
  v19 = a1 + 88;
  v20 = a1 + 100;
  v4 = a1 + 104;
  v21 = a1 + 56;
  v22 = a1 + 104;
  while (1)
  {
    v23 = *v22;
    if (v9 < *v20)
    {
      v24 = (*v19 + 8 * v9);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v158);
    }

    v19 = v23 + 32;
    v20 = v23 + 44;
    v22 = v23 + 48;
    v21 = v23;
  }

  if (!*v21)
  {
    goto LABEL_119;
  }

  v15 = (*v21 + 24 * *v24);
  v9 = *(*v15 + 32);
  v25 = *(a1 + 72);
  v156[0] = *v17;
  v156[1] = v25;
  v157[0] = *(a1 + 88);
  v26 = a1 + 72;
  v27 = a1 + 84;
  *(v157 + 9) = *(a1 + 97);
  v28 = a1 + 56;
  v29 = a1 + 72;
  v30 = a1 + 84;
  v31 = a1 + 104;
  while (1)
  {
    v32 = *v31;
    if (*v30)
    {
      v33 = *v29;
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v156);
    }

    v29 = v32 + 16;
    v30 = v32 + 28;
    v31 = v32 + 48;
    v28 = v32;
  }

  v34 = *v28;
  if (!v34)
  {
    goto LABEL_115;
  }

  v15 = (v34 + 24 * *v33);
  v35 = *(*v15 + 112);
  if (!v35)
  {
    goto LABEL_98;
  }

  if (!*(*(*(v35 + 32) + 8) + 16))
  {
    goto LABEL_81;
  }

  v123 = v9;
  v36 = *(a1 + 7);
  v37 = *(a1 + 9);
  v38 = *(a1 + 10);
  v132 = *(a1 + 8);
  v133 = v37;
  v134 = v38;
  v39 = *(a1 + 3);
  v40 = *(a1 + 5);
  v41 = *(a1 + 6);
  v128 = *(a1 + 4);
  v129 = v40;
  v9 = *a1;
  v3 = a1[48];
  v130 = v41;
  v131 = v36;
  v42 = *(a1 + 1);
  v124 = *a1;
  v125 = v42;
  v126 = *(a1 + 2);
  v127 = v39;
  v43 = *(a1 + 22);
  v44 = *(a1 + 23);
  v137 = a1[192];
  v135 = v43;
  v136 = v44;
  v122 = v43;
  Interpreter.Iterator.updatingValue.getter();
  if (v45)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v3)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v9 >= *(v14 + 116))
  {
    goto LABEL_82;
  }

  v46 = *(v14 + 104);
  if (!v46)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v47 = *(*(v46 + 8 * v9) + 8);
  if (v15 >= *(v47 + 44))
  {
    goto LABEL_83;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v49 = v48 + (v15 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v3 = *(v49 + 24);
  v52 = *(v49 + 25);
  v54 = v49 + 28;
  v53 = *(v49 + 28);
  v9 = *(v54 + 4);
  LOBYTE(v154[0]) = v3;
  v55 = v52 == 0;
  v56 = 256;
  if (v55)
  {
    v56 = 0;
  }

  v57 = v56 | (v53 << 32);
  v121 = v50;
  v15 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v57 | v3, v9);
  if (!v15)
  {
    LOBYTE(v154[0]) = v3;
    v15 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v121, v51, v57 | v3, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v15)
    {
      goto LABEL_117;
    }
  }

  if (*v15 >= *(v47 + 84))
  {
    goto LABEL_84;
  }

  v58 = *(v47 + 72);
  if (!v58)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v59 = v58 + 312 * *v15;
  if (*(v59 + 304))
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v123 < *(v59 + 288))
  {
    goto LABEL_85;
  }

  *(v59 + 296) = v123;
  v60 = *a1;
  v61 = a1[48];
  v62 = *(a1 + 72);
  v154[0] = *v17;
  v154[1] = v62;
  v155[0] = *(a1 + 88);
  *(v155 + 9) = *(a1 + 97);
  while (1)
  {
    v63 = *v4;
    if (*v27)
    {
      if ((*(*v26 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v154);
    }

    v26 = v63 + 16;
    v27 = v63 + 28;
    v4 = v63 + 48;
    v17 = v63;
  }

  if (!*v17)
  {
    goto LABEL_116;
  }

  v15 = (*v17 + 24 * **v26);
  v64 = *(*v15 + 112);
  if (!v64)
  {
    goto LABEL_105;
  }

  v65 = *(*(v64 + 32) + 8);
  v66 = *(v65 + 16);
  if (!v66)
  {
    goto LABEL_92;
  }

  if (v61)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (*(v122 + 116) <= v60)
  {
    goto LABEL_86;
  }

  v67 = *(v122 + 104);
  if (!v67)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v68 = *(v65 + 32 + 48 * (v66 - 1));
  v69 = *(*(v67 + 8 * v60) + 8);
  v70 = *(v69 + 44);
  if (v68 >= v70)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v71 = *(v69 + 32);
  if (!v71)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v72 = v71 + (v68 << 7);
  v75 = *(v72 + 8);
  v74 = v72 + 8;
  v73 = v75;
  if (!*(v74 + 24))
  {
    goto LABEL_80;
  }

  if (*(v74 + 16))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (!v73)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (*v73 != &type metadata for Event.AttributeValue)
  {
    v76 = (v65 + 48 * v66 - 64);
    while (v66-- > 1)
    {
      v68 = *v76;
      if (v68 >= v70)
      {
        goto LABEL_79;
      }

      v78 = v71 + (v68 << 7);
      v81 = *(v78 + 8);
      v80 = v78 + 8;
      v79 = v81;
      if (!*(v80 + 24))
      {
        goto LABEL_80;
      }

      if (*(v80 + 16))
      {
        goto LABEL_94;
      }

      if (!v79)
      {
        goto LABEL_93;
      }

      v76 -= 12;
      if (*v79 == &type metadata for Event.AttributeValue)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_92;
  }

LABEL_59:
  if (a1[48])
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v82 = *(v122 + 116);
  v83 = *a1;
  if (v83 >= v82)
  {
    goto LABEL_87;
  }

  v4 = *(v122 + 104);
  if (!v4)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v84 = *(*&v4[8 * v83] + 8);
  if (v68 >= *(v84 + 44))
  {
    goto LABEL_88;
  }

  v85 = *(v84 + 32);
  if (!v85)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v86 = v85 + (v68 << 7);
  v87 = *(v86 + 8);
  v88 = *(v86 + 16);
  v3 = *(v86 + 24);
  v89 = *(v86 + 25);
  v91 = v86 + 28;
  v90 = *(v86 + 28);
  v9 = *(v91 + 4);
  v55 = v89 == 0;
  v92 = 256;
  if (v55)
  {
    v92 = 0;
  }

  v93 = v92 | (v90 << 32);
  v15 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v87, v88, v93 | v3, v9);
  if (!v15)
  {
    v15 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v87, v88, v93 | v3, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v15)
    {
      goto LABEL_118;
    }
  }

  if (a1[48])
  {
    goto LABEL_112;
  }

  v94 = *a1;
  if (v94 >= v82)
  {
    goto LABEL_89;
  }

  v95 = *(*&v4[8 * v94] + 8);
  if (*v15 >= *(v95 + 84))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v96 = *(v95 + 72);
  if (!v96)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (v68 >= *(v95 + 44))
  {
    goto LABEL_91;
  }

  v97 = *(v95 + 32);
  if (!v97)
  {
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
    goto LABEL_120;
  }

  v98 = v96 + 312 * *v15;
  v99 = *(v98 + 192);
  v100 = *(v98 + 196);
  v101 = v97 + (v68 << 7);
  v102 = *(v101 + 8);
  v103 = *(v101 + 16);
  v104 = *(v101 + 24);
  v105 = *(v101 + 25);
  v108 = v101 + 28;
  v107 = *(v101 + 28);
  v106 = *(v108 + 4);
  v55 = v105 == 0;
  v109 = 256;
  if (v55)
  {
    v109 = 0;
  }

  v110 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v102, v103, v109 | (v107 << 32) | v104, v106);
  LODWORD(v110[3].Kind) = v99;
  BYTE4(v110[3].Kind) = v100;
  return Interpreter.Iterator.endInflight(_:)(&type metadata for Event.AttributeValue);
}

uint64_t (*Event.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

uint64_t T_BeginNodeUpdate.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *(a1 + 22);
  v4 = *(v3 + 136);
  v5 = *(v3 + 168);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_43;
  }

  v7 = *(v3 + 116);
  v8 = *a1;
  if (v8 >= v7)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = *(v3 + 104);
  if (!v9)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = result;
  v11 = *(*(v9 + 8 * v8) + 8);
  if (result >= *(v11 + 84))
  {
    goto LABEL_33;
  }

  v12 = *(v11 + 72);
  if (!v12)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v13 = v12 + 312 * result;
  v14 = *(v13 + 256);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    goto LABEL_34;
  }

  *(v13 + 256) = v16;
  if (a1[48])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = *a1;
  if (v17 >= v7)
  {
    goto LABEL_35;
  }

  v18 = *(*(v9 + 8 * v17) + 8);
  if (result >= *(v18 + 84))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = *(v18 + 72);
  if (!v19)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v20 = v19 + 312 * result;
  if ((*(v20 + 220) & 2) == 0)
  {
    goto LABEL_22;
  }

  if (*(v20 + 136))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v21 = *(v20 + 128);
  if (HIDWORD(v21) >= *(v18 + 124))
  {
    goto LABEL_38;
  }

  v22 = *(v18 + 112);
  if (!v22)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

  v23 = *(v22 + 168 * HIDWORD(v21));
  if (v21 >= *(v23 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = *(v23 + 208 * v21 + 120);
  if (v24 == -1)
  {
    goto LABEL_22;
  }

  v25 = *(v4 + 4);
  if (*(v25 + 16) <= v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = *(v25 + 4 * v24 + 32);
  if (v26 >= *(v4 + 3))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!*v4)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v27 = *v4 + 120 * v26;
  v28 = *v27;
  v29 = *(v27 + 16);
  v30 = *(v27 + 48);
  v67[2] = *(v27 + 32);
  v67[3] = v30;
  v67[0] = v28;
  v67[1] = v29;
  v31 = *(v27 + 64);
  v32 = *(v27 + 80);
  v33 = *(v27 + 96);
  *(v68 + 14) = *(v27 + 110);
  v67[5] = v32;
  v68[0] = v33;
  v67[4] = v31;
  v34 = *(v27 + 80);
  v64 = *(v27 + 64);
  v65 = v34;
  v66[0] = *(v27 + 96);
  *(v66 + 14) = *(v27 + 110);
  v35 = *(v27 + 16);
  v60 = *v27;
  v61 = v35;
  v36 = *(v27 + 48);
  v62 = *(v27 + 32);
  v63 = v36;
  v37 = v4[2];
  v38 = *v4;
  v69[1] = v4[1];
  v69[2] = v37;
  v39 = v4[6];
  v41 = v4[3];
  v40 = v4[4];
  v69[5] = v4[5];
  v69[6] = v39;
  v69[3] = v41;
  v69[4] = v40;
  v69[0] = v38;
  v42 = v4[5];
  v57 = v4[4];
  v58 = v42;
  v59 = v4[6];
  v43 = v4[1];
  v53 = *v4;
  v54 = v43;
  v44 = v4[3];
  v55 = v4[2];
  v56 = v44;
  outlined init with copy of PType(v67, &v71);
  outlined init with copy of Interpreter.Storage.Types(v69, &v71);
  PType.isFirstParty(within:)(&v53);
  v70[4] = v57;
  v70[5] = v58;
  v70[6] = v59;
  v70[0] = v53;
  v70[1] = v54;
  v70[2] = v55;
  v70[3] = v56;
  outlined destroy of Interpreter.Storage.Types(v70);
  v74 = v64;
  v75 = v65;
  v76[0] = v66[0];
  *(v76 + 14) = *(v66 + 14);
  v71 = v60;
  v72 = v61;
  *v73 = v62;
  *&v73[16] = v63;
  result = outlined destroy of PType(&v71);
  if (!a1[48])
  {
LABEL_22:
    if (*a1 < *(v3 + 116))
    {
      if (*(v3 + 104))
      {
        specialized UnsafeArray.growToCapacity(_:)(v5);
        v45 = a1 + 56;
        v46 = *(a1 + 72);
        v71 = *(a1 + 56);
        v72 = v46;
        *v73 = *(a1 + 88);
        *&v73[9] = *(a1 + 97);
        v47 = a1 + 88;
        v48 = a1 + 100;
        v49 = a1 + 104;
        result = *(a1 + 29);
        while (1)
        {
          v50 = *v49;
          if (result < *v48)
          {
            v51 = (*v47 + 8 * result);
            if ((v51[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v50)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, &v71);
          }

          v47 = v50 + 32;
          v48 = v50 + 44;
          v49 = v50 + 48;
          v45 = v50;
        }

        v52 = *v45;
        if (v52)
        {
          return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v10, *(*(v52 + 24 * *v51) + 32), 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        goto LABEL_51;
      }

      goto LABEL_48;
    }

    goto LABEL_37;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t T_ReuseEvent.update(within:)(unsigned __int8 *a1, uint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(a2);
  if (v3 != 1)
  {
    goto LABEL_52;
  }

  if (a1[48])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_55;
  }

  v5 = *(v4 + 104);
  if (!v5)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v6 = *(*(v5 + 8 * v3) + 8);
  if (*(v6 + 172) == *(v6 + 168))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v7 = *(v6 + 160);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = *(v6 + 172);
  v3 = v7 + 24 * v8;
  *v3 = xmmword_26C32F2B0;
  *(v3 + 16) = 14;
  LODWORD(v3) = v8 + 1;
  if (v8 == -1)
  {
    goto LABEL_45;
  }

  *(v6 + 172) = v3;
  v9 = a1 + 56;
  v10 = *(a1 + 72);
  v59[0] = *(a1 + 56);
  v59[1] = v10;
  *v60 = *(a1 + 88);
  *&v60[9] = *(a1 + 97);
  v11 = a1 + 72;
  v12 = a1 + 84;
  v13 = a1 + 104;
  while (1)
  {
    v14 = *v13;
    if (*v12)
    {
      v15 = *v11;
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v59);
    }

    v11 = v14 + 16;
    v12 = v14 + 28;
    v13 = v14 + 48;
    v9 = v14;
  }

  v16 = *v9;
  if (!v16)
  {
    goto LABEL_68;
  }

  v17 = *(*(v16 + 24 * *v15) + 112);
  if (!v17)
  {
    goto LABEL_58;
  }

  v3 = *(*(*(v17 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_46;
  }

  if (a1[48])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
    goto LABEL_47;
  }

  v18 = *(v4 + 104);
  if (!v18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v19 = *(*(v18 + 8 * v3) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v21)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  LODWORD(v3) = v20;
  if (v20 >= *(v19 + 44))
  {
    goto LABEL_48;
  }

  v22 = *(v19 + 32);
  if (!v22)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v22 + (v20 << 7) + 49) = 1;
  v23 = *a1;
  v24 = a1[48];
  v25 = *(a1 + 8);
  v26 = *(a1 + 9);
  v27 = *(a1 + 20);
  v28 = *(a1 + 21);
  v29 = *(a1 + 13);
  v30 = a1[112];
  v31 = *(a1 + 22);
  v53[0] = *(a1 + 7);
  v53[1] = v25;
  v53[2] = v26;
  v54 = v27;
  v55 = v28;
  v56 = *(a1 + 88);
  v32 = v53[0];
  v57 = v29;
  v33 = v26;
  v34 = v29;
  v58 = v30;
  if (!v28)
  {
    goto LABEL_26;
  }

  while ((v33[1] & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v53);
      }

      v32 = *v34;
      v33 = v34[2];
      v35 = *(v34 + 7);
      v34 = v34[6];
    }

    while (!v35);
  }

  if (!v32)
  {
    goto LABEL_69;
  }

  v36 = *(*(v32 + 24 * *v33) + 112);
  if (!v36)
  {
    goto LABEL_63;
  }

  v3 = *(*(*(v36 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_49;
  }

  if (v24)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  LODWORD(v3) = v23;
  if (v23 >= *(v31 + 116))
  {
    goto LABEL_50;
  }

  v37 = *(v31 + 104);
  if (!v37)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v38 = *(*(v37 + 8 * v23) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v40)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  LODWORD(v3) = v39;
  if (v39 >= *(v38 + 44))
  {
    goto LABEL_51;
  }

  v41 = *(v38 + 32);
  if (!v41)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v42 = v41 + (v39 << 7);
  v43 = *(v42 + 8);
  v44 = *(v42 + 16);
  v45 = *(v42 + 24);
  v46 = *(v42 + 25);
  v49 = v42 + 28;
  v48 = *(v42 + 28);
  v47 = *(v49 + 4);
  v50 = v46 == 0;
  v51 = 256;
  if (v50)
  {
    v51 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v43, v44, v51 | (v48 << 32) | v45, v47);
  if (!result)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t T_ReuseInternal.update(within:)(unsigned __int8 *a1, unint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(HIDWORD(a2));
  if (v3 != 1)
  {
    goto LABEL_52;
  }

  if (a1[48])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_55;
  }

  v5 = *(v4 + 104);
  if (!v5)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v6 = *(*(v5 + 8 * v3) + 8);
  if (*(v6 + 172) == *(v6 + 168))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v7 = *(v6 + 160);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = *(v6 + 172);
  v3 = v7 + 24 * v8;
  *v3 = xmmword_26C32F2C0;
  *(v3 + 16) = 14;
  LODWORD(v3) = v8 + 1;
  if (v8 == -1)
  {
    goto LABEL_45;
  }

  *(v6 + 172) = v3;
  v9 = a1 + 56;
  v10 = *(a1 + 72);
  v59[0] = *(a1 + 56);
  v59[1] = v10;
  *v60 = *(a1 + 88);
  *&v60[9] = *(a1 + 97);
  v11 = a1 + 72;
  v12 = a1 + 84;
  v13 = a1 + 104;
  while (1)
  {
    v14 = *v13;
    if (*v12)
    {
      v15 = *v11;
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v59);
    }

    v11 = v14 + 16;
    v12 = v14 + 28;
    v13 = v14 + 48;
    v9 = v14;
  }

  v16 = *v9;
  if (!v16)
  {
    goto LABEL_68;
  }

  v17 = *(*(v16 + 24 * *v15) + 112);
  if (!v17)
  {
    goto LABEL_58;
  }

  v3 = *(*(*(v17 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_46;
  }

  if (a1[48])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
    goto LABEL_47;
  }

  v18 = *(v4 + 104);
  if (!v18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v19 = *(*(v18 + 8 * v3) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v21)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  LODWORD(v3) = v20;
  if (v20 >= *(v19 + 44))
  {
    goto LABEL_48;
  }

  v22 = *(v19 + 32);
  if (!v22)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v22 + (v20 << 7) + 49) = 1;
  v23 = *a1;
  v24 = a1[48];
  v25 = *(a1 + 8);
  v26 = *(a1 + 9);
  v27 = *(a1 + 20);
  v28 = *(a1 + 21);
  v29 = *(a1 + 13);
  v30 = a1[112];
  v31 = *(a1 + 22);
  v53[0] = *(a1 + 7);
  v53[1] = v25;
  v53[2] = v26;
  v54 = v27;
  v55 = v28;
  v56 = *(a1 + 88);
  v32 = v53[0];
  v57 = v29;
  v33 = v26;
  v34 = v29;
  v58 = v30;
  if (!v28)
  {
    goto LABEL_26;
  }

  while ((v33[1] & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v53);
      }

      v32 = *v34;
      v33 = v34[2];
      v35 = *(v34 + 7);
      v34 = v34[6];
    }

    while (!v35);
  }

  if (!v32)
  {
    goto LABEL_69;
  }

  v36 = *(*(v32 + 24 * *v33) + 112);
  if (!v36)
  {
    goto LABEL_63;
  }

  v3 = *(*(*(v36 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_49;
  }

  if (v24)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  LODWORD(v3) = v23;
  if (v23 >= *(v31 + 116))
  {
    goto LABEL_50;
  }

  v37 = *(v31 + 104);
  if (!v37)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v38 = *(*(v37 + 8 * v23) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v40)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  LODWORD(v3) = v39;
  if (v39 >= *(v38 + 44))
  {
    goto LABEL_51;
  }

  v41 = *(v38 + 32);
  if (!v41)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v42 = v41 + (v39 << 7);
  v43 = *(v42 + 8);
  v44 = *(v42 + 16);
  v45 = *(v42 + 24);
  v46 = *(v42 + 25);
  v49 = v42 + 28;
  v48 = *(v42 + 28);
  v47 = *(v49 + 4);
  v50 = v46 == 0;
  v51 = 256;
  if (v50)
  {
    v51 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v43, v44, v51 | (v48 << 32) | v45, v47);
  if (!result)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t T_ReuseFailedTypeComparison.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  v5 = (v4 - 3) < 3 || v4 == 1;
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = a1 + 56;
  v7 = *(a1 + 72);
  v54[0] = *(a1 + 56);
  v54[1] = v7;
  *v55 = *(a1 + 88);
  *&v55[9] = *(a1 + 97);
  v8 = a1 + 72;
  v9 = a1 + 84;
  v10 = a1 + 104;
  while (1)
  {
    v11 = *v10;
    if (*v9)
    {
      v12 = *v8;
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v54);
    }

    v8 = v11 + 16;
    v9 = v11 + 28;
    v10 = v11 + 48;
    v6 = v11;
  }

  v13 = *v6;
  if (!v13)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v4 = *(*(v13 + 24 * *v12) + 112);
  if (!v4)
  {
    goto LABEL_47;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v4) = a1[48];
  if (a1[48])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_42;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_43;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v21 = a1[48];
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v28 = *(a1 + 22);
  v48[0] = *(a1 + 7);
  v48[1] = v22;
  v48[2] = v23;
  v49 = v24;
  v50 = v25;
  v51 = *(a1 + 88);
  v29 = v48[0];
  v52 = v26;
  v30 = v23;
  v31 = v26;
  v53 = v27;
  if (!v25)
  {
    goto LABEL_23;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_23:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v48);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_60;
  }

  v4 = *(*(v29 + 24 * *v30) + 112);
  if (!v4)
  {
    goto LABEL_52;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_44;
  }

  if (v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_45;
  }

  v33 = *(v28 + 104);
  if (!v33)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = *(*(v33 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  LODWORD(v4) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_46;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    if (v4 != 12)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_59;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v45 = v38 + 28;
  v44 = *(v38 + 28);
  v43 = *(v45 + 4);
  v5 = v42 == 0;
  v46 = 256;
  if (v5)
  {
    v46 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v46 | (v44 << 32) | v41, v43);
  if (!result)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t T_ReuseCacheItemEvent.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  v5 = (v4 - 6) < 4 || v4 == 1;
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = a1 + 56;
  v7 = *(a1 + 72);
  v54[0] = *(a1 + 56);
  v54[1] = v7;
  *v55 = *(a1 + 88);
  *&v55[9] = *(a1 + 97);
  v8 = a1 + 72;
  v9 = a1 + 84;
  v10 = a1 + 104;
  while (1)
  {
    v11 = *v10;
    if (*v9)
    {
      v12 = *v8;
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v54);
    }

    v8 = v11 + 16;
    v9 = v11 + 28;
    v10 = v11 + 48;
    v6 = v11;
  }

  v13 = *v6;
  if (!v13)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v4 = *(*(v13 + 24 * *v12) + 112);
  if (!v4)
  {
    goto LABEL_47;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v4) = a1[48];
  if (a1[48])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_42;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_43;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v21 = a1[48];
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v28 = *(a1 + 22);
  v48[0] = *(a1 + 7);
  v48[1] = v22;
  v48[2] = v23;
  v49 = v24;
  v50 = v25;
  v51 = *(a1 + 88);
  v29 = v48[0];
  v52 = v26;
  v30 = v23;
  v31 = v26;
  v53 = v27;
  if (!v25)
  {
    goto LABEL_23;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_23:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v48);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_60;
  }

  v4 = *(*(v29 + 24 * *v30) + 112);
  if (!v4)
  {
    goto LABEL_52;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_44;
  }

  if (v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_45;
  }

  v33 = *(v28 + 104);
  if (!v33)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = *(*(v33 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  LODWORD(v4) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_46;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    if (v4 != 12)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_59;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v45 = v38 + 28;
  v44 = *(v38 + 28);
  v43 = *(v45 + 4);
  v5 = v42 == 0;
  v46 = 256;
  if (v5)
  {
    v46 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v46 | (v44 << 32) | v41, v43);
  if (!result)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t T_ReuseCacheItemWithID.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v5) = specialized ReuseEventCategory.init(rawValue:)(a4);
  v6 = v5 == 1 || v5 == 10;
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = a1 + 56;
  v8 = *(a1 + 72);
  v57[0] = *(a1 + 56);
  v57[1] = v8;
  *v58 = *(a1 + 88);
  *&v58[9] = *(a1 + 97);
  v9 = a1 + 72;
  v10 = a1 + 84;
  v11 = a1 + 104;
  while (1)
  {
    v12 = *v11;
    if (*v10)
    {
      v13 = *v9;
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v57);
    }

    v9 = v12 + 16;
    v10 = v12 + 28;
    v11 = v12 + 48;
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_60;
  }

  v15 = *(*(v14 + 24 * *v13) + 112);
  if (!v15)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v5 = *(*(*(v15 + 32) + 8) + 16);
  if (!v5)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    if (v5 != 12)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (a1[48])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v16 = *(a1 + 22);
  v5 = *a1;
  if (v5 >= *(v16 + 116))
  {
    goto LABEL_42;
  }

  v17 = *(v16 + 104);
  if (!v17)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v18 = *(*(v17 + 8 * v5) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v5) = v19;
  if (v19 >= *(v18 + 44))
  {
    goto LABEL_43;
  }

  v21 = *(v18 + 32);
  if (!v21)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v21 + (v19 << 7) + 49) = 1;
  v22 = *a1;
  v23 = a1[48];
  v24 = *(a1 + 8);
  v25 = *(a1 + 9);
  v26 = *(a1 + 20);
  v27 = *(a1 + 21);
  v28 = *(a1 + 13);
  v29 = a1[112];
  v30 = *(a1 + 22);
  v51[0] = *(a1 + 7);
  v51[1] = v24;
  v51[2] = v25;
  v52 = v26;
  v53 = v27;
  v54 = *(a1 + 88);
  v31 = v51[0];
  v55 = v28;
  v32 = v25;
  v33 = v28;
  v56 = v29;
  if (!v27)
  {
    goto LABEL_23;
  }

  while ((v32[1] & 1) != 0)
  {
    do
    {
LABEL_23:
      if (!v33)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v51);
      }

      v31 = *v33;
      v32 = v33[2];
      v34 = *(v33 + 7);
      v33 = v33[6];
    }

    while (!v34);
  }

  if (!v31)
  {
    goto LABEL_61;
  }

  v35 = *(*(v31 + 24 * *v32) + 112);
  if (!v35)
  {
    goto LABEL_54;
  }

  v5 = *(*(*(v35 + 32) + 8) + 16);
  if (!v5)
  {
    goto LABEL_44;
  }

  if (v23)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  LODWORD(v5) = v22;
  if (v22 >= *(v30 + 116))
  {
    goto LABEL_45;
  }

  v36 = *(v30 + 104);
  if (!v36)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = *(*(v36 + 8 * v22) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v39)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  LODWORD(v5) = v38;
  if (v38 >= *(v37 + 44))
  {
    goto LABEL_46;
  }

  v40 = *(v37 + 32);
  if (!v40)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v41 = v40 + (v38 << 7);
  v42 = *(v41 + 8);
  v43 = *(v41 + 16);
  v44 = *(v41 + 24);
  v45 = *(v41 + 25);
  v48 = v41 + 28;
  v47 = *(v41 + 28);
  v46 = *(v48 + 4);
  v6 = v45 == 0;
  v49 = 256;
  if (v6)
  {
    v49 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v42, v43, v49 | (v47 << 32) | v44, v46);
  if (!result)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t T_ReuseIncrementalChildReuseAttempt.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  if (v4 != 11)
  {
    goto LABEL_43;
  }

  v5 = a1 + 56;
  v6 = *(a1 + 72);
  v56[0] = *(a1 + 56);
  v56[1] = v6;
  *v57 = *(a1 + 88);
  *&v57[9] = *(a1 + 97);
  v7 = a1 + 72;
  v8 = a1 + 84;
  v9 = a1 + 104;
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v56);
    }

    v7 = v10 + 16;
    v8 = v10 + 28;
    v9 = v10 + 48;
    v5 = v10;
  }

  v12 = *v5;
  if (!v12)
  {
    goto LABEL_56;
  }

  v13 = *(*(v12 + 24 * *v11) + 112);
  if (!v13)
  {
    goto LABEL_46;
  }

  v4 = *(*(*(v13 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    if (v4 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a1[48])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_38;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_39;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v21 = a1[48];
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v28 = *(a1 + 22);
  v50[0] = *(a1 + 7);
  v50[1] = v22;
  v50[2] = v23;
  v51 = v24;
  v52 = v25;
  v53 = *(a1 + 88);
  v29 = v50[0];
  v54 = v26;
  v30 = v23;
  v31 = v26;
  v55 = v27;
  if (!v25)
  {
    goto LABEL_19;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v50);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_57;
  }

  v33 = *(*(v29 + 24 * *v30) + 112);
  if (!v33)
  {
    goto LABEL_51;
  }

  v4 = *(*(*(v33 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_40;
  }

  if (v21)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_41;
  }

  v34 = *(v28 + 104);
  if (!v34)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = *(*(v34 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v37)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LODWORD(v4) = v36;
  if (v36 >= *(v35 + 44))
  {
    goto LABEL_42;
  }

  v38 = *(v35 + 32);
  if (!v38)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v39 = v38 + (v36 << 7);
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  v43 = *(v39 + 25);
  v46 = v39 + 28;
  v45 = *(v39 + 28);
  v44 = *(v46 + 4);
  v47 = v43 == 0;
  v48 = 256;
  if (v47)
  {
    v48 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v40, v41, v48 | (v45 << 32) | v42, v44);
  if (!result)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t T_ReuseBody.update(within:)(unsigned __int8 *a1, uint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(a2);
  if (v3 != 1)
  {
    goto LABEL_43;
  }

  v4 = a1 + 56;
  v5 = *(a1 + 72);
  v55[0] = *(a1 + 56);
  v55[1] = v5;
  *v56 = *(a1 + 88);
  *&v56[9] = *(a1 + 97);
  v6 = a1 + 72;
  v7 = a1 + 84;
  v8 = a1 + 104;
  while (1)
  {
    v9 = *v8;
    if (*v7)
    {
      v10 = *v6;
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v55);
    }

    v6 = v9 + 16;
    v7 = v9 + 28;
    v8 = v9 + 48;
    v4 = v9;
  }

  v11 = *v4;
  if (!v11)
  {
    goto LABEL_56;
  }

  v12 = *(*(v11 + 24 * *v10) + 112);
  if (!v12)
  {
    goto LABEL_46;
  }

  v3 = *(*(*(v12 + 32) + 8) + 16);
  if (!v3)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a1[48])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v13 + 116))
  {
    goto LABEL_38;
  }

  v14 = *(v13 + 104);
  if (!v14)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = *(*(v14 + 8 * v3) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v17)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v3) = v16;
  if (v16 >= *(v15 + 44))
  {
    goto LABEL_39;
  }

  v18 = *(v15 + 32);
  if (!v18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v18 + (v16 << 7) + 49) = 1;
  v19 = *a1;
  v20 = a1[48];
  v21 = *(a1 + 8);
  v22 = *(a1 + 9);
  v23 = *(a1 + 20);
  v24 = *(a1 + 21);
  v25 = *(a1 + 13);
  v26 = a1[112];
  v27 = *(a1 + 22);
  v49[0] = *(a1 + 7);
  v49[1] = v21;
  v49[2] = v22;
  v50 = v23;
  v51 = v24;
  v52 = *(a1 + 88);
  v28 = v49[0];
  v53 = v25;
  v29 = v22;
  v30 = v25;
  v54 = v26;
  if (!v24)
  {
    goto LABEL_19;
  }

  while ((v29[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v30)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v49);
      }

      v28 = *v30;
      v29 = v30[2];
      v31 = *(v30 + 7);
      v30 = v30[6];
    }

    while (!v31);
  }

  if (!v28)
  {
    goto LABEL_57;
  }

  v32 = *(*(v28 + 24 * *v29) + 112);
  if (!v32)
  {
    goto LABEL_51;
  }

  v3 = *(*(*(v32 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_40;
  }

  if (v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v3) = v19;
  if (v19 >= *(v27 + 116))
  {
    goto LABEL_41;
  }

  v33 = *(v27 + 104);
  if (!v33)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v34 = *(*(v33 + 8 * v19) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LODWORD(v3) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_42;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v45 = v38 + 28;
  v44 = *(v38 + 28);
  v43 = *(v45 + 4);
  v46 = v42 == 0;
  v47 = 256;
  if (v46)
  {
    v47 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v47 | (v44 << 32) | v41, v43);
  if (!result)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t T_ReuseIncompatibleLists.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  if (v4 != 1)
  {
    goto LABEL_43;
  }

  v5 = a1 + 56;
  v6 = *(a1 + 72);
  v56[0] = *(a1 + 56);
  v56[1] = v6;
  *v57 = *(a1 + 88);
  *&v57[9] = *(a1 + 97);
  v7 = a1 + 72;
  v8 = a1 + 84;
  v9 = a1 + 104;
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v56);
    }

    v7 = v10 + 16;
    v8 = v10 + 28;
    v9 = v10 + 48;
    v5 = v10;
  }

  v12 = *v5;
  if (!v12)
  {
    goto LABEL_56;
  }

  v13 = *(*(v12 + 24 * *v11) + 112);
  if (!v13)
  {
    goto LABEL_46;
  }

  v4 = *(*(*(v13 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    if (v4 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a1[48])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_38;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_39;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v21 = a1[48];
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v28 = *(a1 + 22);
  v50[0] = *(a1 + 7);
  v50[1] = v22;
  v50[2] = v23;
  v51 = v24;
  v52 = v25;
  v53 = *(a1 + 88);
  v29 = v50[0];
  v54 = v26;
  v30 = v23;
  v31 = v26;
  v55 = v27;
  if (!v25)
  {
    goto LABEL_19;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v50);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_57;
  }

  v33 = *(*(v29 + 24 * *v30) + 112);
  if (!v33)
  {
    goto LABEL_51;
  }

  v4 = *(*(*(v33 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_40;
  }

  if (v21)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_41;
  }

  v34 = *(v28 + 104);
  if (!v34)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = *(*(v34 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v37)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LODWORD(v4) = v36;
  if (v36 >= *(v35 + 44))
  {
    goto LABEL_42;
  }

  v38 = *(v35 + 32);
  if (!v38)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v39 = v38 + (v36 << 7);
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  v43 = *(v39 + 25);
  v46 = v39 + 28;
  v45 = *(v39 + 28);
  v44 = *(v46 + 4);
  v47 = v43 == 0;
  v48 = 256;
  if (v47)
  {
    v48 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v40, v41, v48 | (v45 << 32) | v42, v44);
  if (!result)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t T_ReuseNeverMadeReusable.update(within:)(unsigned __int8 *a1, unint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(HIDWORD(a2));
  if (v3 != 1)
  {
    goto LABEL_65;
  }

  v72 = *a1;
  v4 = a1[48];
  v5 = a1 + 56;
  v6 = *(a1 + 8);
  v7 = a1 + 72;
  v8 = *(a1 + 9);
  v9 = a1 + 84;
  v10 = *(a1 + 21);
  v11 = *(a1 + 20);
  v13 = a1 + 104;
  v12 = *(a1 + 13);
  v14 = a1[112];
  v73 = *(a1 + 22);
  v82[0] = *(a1 + 7);
  v82[1] = v6;
  v82[2] = v8;
  v83 = v11;
  v84 = v10;
  v85 = *(a1 + 88);
  v15 = v82[0];
  v86 = v12;
  v16 = v8;
  v17 = v12;
  v87 = v14;
  if (!v10)
  {
    goto LABEL_4;
  }

  while ((v16[1] & 1) != 0)
  {
    do
    {
LABEL_4:
      if (!v17)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v82);
      }

      v15 = *v17;
      v16 = v17[2];
      v18 = *(v17 + 7);
      v17 = v17[6];
    }

    while (!v18);
  }

  if (!v15)
  {
    goto LABEL_83;
  }

  v19 = *(*(v15 + 24 * *v16) + 112);
  if (!v19)
  {
    goto LABEL_68;
  }

  v3 = *(*(*(v19 + 32) + 8) + 16);
  if (!v3)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v4)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  LODWORD(v3) = v72;
  if (v72 >= *(v73 + 116))
  {
    goto LABEL_57;
  }

  v20 = *(v73 + 104);
  if (!v20)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v21 = *(*(v20 + 8 * v72) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v23)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  LODWORD(v3) = v22;
  if (v22 >= *(v21 + 44))
  {
    goto LABEL_58;
  }

  v24 = *(v21 + 32);
  if (!v24)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v25 = v24 + (v22 << 7);
  v26 = *(v25 + 8);
  v27 = *(v25 + 16);
  v28 = *(v25 + 24);
  v29 = *(v25 + 25);
  v32 = v25 + 28;
  v31 = *(v25 + 28);
  v30 = *(v32 + 4);
  v33 = v29 == 0;
  v34 = 256;
  if (v33)
  {
    v34 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v26, v27, v34 | (v31 << 32) | v28, v30);
  if (result)
  {
    v36 = *(a1 + 72);
    v80[0] = *v5;
    v80[1] = v36;
    v81[0] = *(a1 + 88);
    *(v81 + 9) = *(a1 + 97);
    while (1)
    {
      v37 = *v13;
      if (*v9)
      {
        if ((*(*v7 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v37)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v80);
      }

      v7 = v37 + 16;
      v9 = v37 + 28;
      v13 = v37 + 48;
      v5 = v37;
    }

    if (!*v5)
    {
      goto LABEL_84;
    }

    v38 = *(*(*v5 + 24 * **v7) + 112);
    if (!v38)
    {
      goto LABEL_73;
    }

    v3 = *(*(*(v38 + 32) + 8) + 16);
    if (v3)
    {
      if (a1[48])
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v3 = *a1;
      if (v3 < *(v73 + 116))
      {
        v39 = *(v73 + 104);
        if (!v39)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v40 = *(*(v39 + 8 * v3) + 8);
        Interpreter.Iterator.updatingValue.getter();
        if (v42)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        LODWORD(v3) = v41;
        if (v41 < *(v40 + 44))
        {
          v43 = *(v40 + 32);
          if (!v43)
          {
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          *(v43 + (v41 << 7) + 49) = 1;
          v44 = *a1;
          v45 = a1[48];
          v46 = *(a1 + 8);
          v47 = *(a1 + 9);
          v48 = *(a1 + 20);
          v49 = *(a1 + 21);
          v50 = *(a1 + 13);
          v51 = a1[112];
          v52 = *(a1 + 22);
          v74[0] = *(a1 + 7);
          v74[1] = v46;
          v74[2] = v47;
          v75 = v48;
          v76 = v49;
          v77 = *(a1 + 88);
          v78 = v50;
          v53 = v47;
          v54 = v74[0];
          v55 = v50;
          v79 = v51;
          if (!v49)
          {
            goto LABEL_38;
          }

          while ((v53[1] & 1) != 0)
          {
            do
            {
LABEL_38:
              if (!v55)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v74);
              }

              v54 = *v55;
              v53 = v55[2];
              v56 = *(v55 + 7);
              v55 = v55[6];
            }

            while (!v56);
          }

          if (!v54)
          {
            goto LABEL_85;
          }

          v57 = *(*(v54 + 24 * *v53) + 112);
          if (!v57)
          {
            goto LABEL_78;
          }

          v3 = *(*(*(v57 + 32) + 8) + 16);
          if (v3)
          {
            if (v45)
            {
LABEL_79:
              __break(1u);
              goto LABEL_80;
            }

            LODWORD(v3) = v44;
            if (v44 < *(v52 + 116))
            {
              v58 = *(v52 + 104);
              if (!v58)
              {
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

              v59 = *(*(v58 + 8 * v44) + 8);
              Interpreter.Iterator.updatingValue.getter();
              if (v61)
              {
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
                goto LABEL_86;
              }

              LODWORD(v3) = v60;
              if (v60 < *(v59 + 44))
              {
                v62 = *(v59 + 32);
                if (v62)
                {
                  v63 = v62 + (v60 << 7);
                  v64 = *(v63 + 8);
                  v65 = *(v63 + 16);
                  v66 = *(v63 + 24);
                  v67 = *(v63 + 25);
                  v70 = v63 + 28;
                  v69 = *(v63 + 28);
                  v68 = *(v70 + 4);
                  v33 = v67 == 0;
                  v71 = 256;
                  if (v33)
                  {
                    v71 = 0;
                  }

                  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v64, v65, v71 | (v69 << 32) | v66, v68);
                  if (result)
                  {
                    return result;
                  }

LABEL_86:
                  result = _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return result;
                }

                goto LABEL_82;
              }

              goto LABEL_64;
            }

LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            if (v3 == 12)
            {
              __break(1u);
            }

            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  return result;
}

uint64_t T_ReuseViewInputsDifferent.update(within:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(HIDWORD(a2));
  if (v4 != 1)
  {
    goto LABEL_43;
  }

  v5 = a1 + 56;
  v6 = *(a1 + 72);
  v56[0] = *(a1 + 56);
  v56[1] = v6;
  *v57 = *(a1 + 88);
  *&v57[9] = *(a1 + 97);
  v7 = a1 + 72;
  v8 = a1 + 84;
  v9 = a1 + 104;
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v56);
    }

    v7 = v10 + 16;
    v8 = v10 + 28;
    v9 = v10 + 48;
    v5 = v10;
  }

  v12 = *v5;
  if (!v12)
  {
    goto LABEL_56;
  }

  v13 = *(*(v12 + 24 * *v11) + 112);
  if (!v13)
  {
    goto LABEL_46;
  }

  v4 = *(*(*(v13 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    if (v4 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a1[48])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_38;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_39;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v21 = a1[48];
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v28 = *(a1 + 22);
  v50[0] = *(a1 + 7);
  v50[1] = v22;
  v50[2] = v23;
  v51 = v24;
  v52 = v25;
  v53 = *(a1 + 88);
  v29 = v50[0];
  v54 = v26;
  v30 = v23;
  v31 = v26;
  v55 = v27;
  if (!v25)
  {
    goto LABEL_19;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v50);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_57;
  }

  v33 = *(*(v29 + 24 * *v30) + 112);
  if (!v33)
  {
    goto LABEL_51;
  }

  v4 = *(*(*(v33 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_40;
  }

  if (v21)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_41;
  }

  v34 = *(v28 + 104);
  if (!v34)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = *(*(v34 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v37)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LODWORD(v4) = v36;
  if (v36 >= *(v35 + 44))
  {
    goto LABEL_42;
  }

  v38 = *(v35 + 32);
  if (!v38)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v39 = v38 + (v36 << 7);
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  v43 = *(v39 + 25);
  v46 = v39 + 28;
  v45 = *(v39 + 28);
  v44 = *(v46 + 4);
  v47 = v43 == 0;
  v48 = 256;
  if (v47)
  {
    v48 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v40, v41, v48 | (v45 << 32) | v42, v44);
  if (!result)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t (*Event.update.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify();
  return UnsafeTree.storage.modify;
}

void T_NodeSetValueExtendedV0.model(within:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 116);
  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 160) = v4;
  *(a1 + 164) = a2 != 0;
  v5 = HIDWORD(a2);
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 168) = a2 == 0;
  *(a1 + 172) = v6;
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v36[0] = *(a1 + 56);
  v36[1] = v8;
  v37[0] = *(a1 + 88);
  *(v37 + 9) = *(a1 + 97);
  v9 = (a1 + 88);
  v10 = (a1 + 100);
  v11 = (a1 + 104);
  v12 = (a1 + 56);
  v13 = (a1 + 104);
  while (1)
  {
    v14 = *v13;
    if (v3 < *v10)
    {
      v15 = (*v9 + 8 * v3);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v36);
    }

    v9 = (v14 + 32);
    v10 = (v14 + 44);
    v13 = (v14 + 48);
    v12 = v14;
  }

  if (!*v12)
  {
    goto LABEL_39;
  }

  v16 = *(*(*v12 + 24 * *v15) + 32);
  if ((_s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1) & 0x100000000) != 0)
  {
    v18 = *(a1 + 72);
    v34[0] = *v7;
    v34[1] = v18;
    v35[0] = *(a1 + 88);
    v19 = (a1 + 72);
    v20 = (a1 + 84);
    *(v35 + 9) = *(v7 + 41);
    v21 = v7;
    v22 = v19;
    v23 = v20;
    v24 = v11;
    while (1)
    {
      v25 = *v24;
      if (*v23 >= 2u)
      {
        v26 = *v22;
        if ((*(v26 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v34);
      }

      v22 = (v25 + 16);
      v23 = (v25 + 28);
      v24 = (v25 + 48);
      v21 = v25;
    }

    v27 = *v21;
    if (!v27)
    {
      goto LABEL_40;
    }

    v28 = *(*(v27 + 24 * *(v26 + 8)) + 112);
    if (v28)
    {
      if (*(v28 + 124) == 1)
      {
        v29 = v7[1];
        v32[0] = *v7;
        v32[1] = v29;
        v33[0] = v7[2];
        *(v33 + 9) = *(v7 + 41);
        while (1)
        {
          v30 = *v11;
          if (*v20 >= 2u && (*(*v19 + 12) & 1) == 0)
          {
            break;
          }

          if (!v30)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v32);
          }

          v19 = (v30 + 16);
          v20 = (v30 + 28);
          v11 = (v30 + 48);
          v7 = v30;
        }

        if (!*v7)
        {
          goto LABEL_41;
        }

        v31 = *(*(*v7 + 24 * *(*v19 + 8)) + 112);
        if (v31)
        {
          *(v31 + 112) = v16;
          *(v31 + 120) = v5;
          *(v31 + 124) = 0;
          return;
        }

        goto LABEL_38;
      }

      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  T_NodeSetValue.Closure.apply(within:)(a1, v17, v5);
}

void T_NodeSetValue.updateState(within:)(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v34[0] = *(a1 + 56);
  v34[1] = v5;
  v35[0] = *(a1 + 88);
  *(v35 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
  v9 = *(a1 + 116);
  v10 = v4;
  v11 = v8;
  while (1)
  {
    v12 = *v11;
    if (v9 < *v7)
    {
      v13 = (*v6 + 8 * v9);
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v34);
    }

    v6 = (v12 + 32);
    v7 = (v12 + 44);
    v11 = (v12 + 48);
    v10 = v12;
  }

  if (!*v10)
  {
    goto LABEL_33;
  }

  v14 = *(*(*v10 + 24 * *v13) + 32);
  if ((_s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1) & 0x100000000) != 0)
  {
    v16 = v4[1];
    v32[0] = *v4;
    v32[1] = v16;
    v33[0] = v4[2];
    v17 = (a1 + 72);
    v18 = (a1 + 84);
    *(v33 + 9) = *(v4 + 41);
    v19 = v4;
    v20 = v17;
    v21 = v18;
    v22 = v8;
    while (1)
    {
      v23 = *v22;
      if (*v21 >= 2u)
      {
        v24 = *v20;
        if ((*(v24 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v23)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v32);
      }

      v20 = (v23 + 16);
      v21 = (v23 + 28);
      v22 = (v23 + 48);
      v19 = v23;
    }

    v25 = *v19;
    if (!v25)
    {
      goto LABEL_34;
    }

    v26 = *(*(v25 + 24 * *(v24 + 8)) + 112);
    if (v26)
    {
      if (*(v26 + 124) == 1)
      {
        v27 = v4[1];
        v30[0] = *v4;
        v30[1] = v27;
        v31[0] = v4[2];
        *(v31 + 9) = *(v4 + 41);
        while (1)
        {
          v28 = *v8;
          if (*v18 >= 2u && (*(*v17 + 12) & 1) == 0)
          {
            break;
          }

          if (!v28)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v30);
          }

          v17 = (v28 + 16);
          v18 = (v28 + 28);
          v8 = (v28 + 48);
          v4 = v28;
        }

        if (!*v4)
        {
          goto LABEL_35;
        }

        v29 = *(*(*v4 + 24 * *(*v17 + 8)) + 112);
        if (v29)
        {
          *(v29 + 112) = v14;
          *(v29 + 120) = a2;
          *(v29 + 124) = 0;
          return;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  T_NodeSetValue.Closure.apply(within:)(a1, v15, a2);
}