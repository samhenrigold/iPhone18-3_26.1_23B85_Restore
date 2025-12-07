void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v57 = a3(0);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = v9;
  v16 = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = v16;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v48 = (v22 + 16);
    v49 = v22;
    v46 = v5;
    v47 = v10 + 16;
    v50 = v15;
    v51 = v10;
    v53 = (v10 + 32);
    v54 = (v22 + 32);
    v25 = v16 + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v55 = *(v22 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v17 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v17 + 48) + v55 * v26), v58, v12);
      (*v53)(*(v17 + 56) + v34 * v26, v56, v57);
      ++*(v17 + 16);
      v22 = v49;
      v15 = v50;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v15 + 32);
    v8 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
}

{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v12;
    v47 = v10;
    v49 = (v10 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v34 = Hasher._finalize()();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v50 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v44 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v10;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v45 = v6;
    v46 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        outlined init with take of CloudDevice(v34, v49, v50);
      }

      else
      {
        outlined init with copy of CloudDevice(v34, v49, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v35 = Hasher._finalize()();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      outlined init with take of CloudDevice(v49, *(v15 + 56) + v33 * v23, v50);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, type metadata accessor for CloudDevice, type metadata accessor for CloudDevice);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, MEMORY[0x277CC9260]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, MEMORY[0x277CC95F0]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, type metadata accessor for CloudMetaDevice, type metadata accessor for CloudMetaDevice);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for IndexPath();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
  result = (*(*(Changes - 8) + 32))(v7 + *(*(Changes - 8) + 72) * a1, a3, Changes);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v6 = a5[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a6;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = (a4[6] + 16 * result);
  *v6 = a5;
  v6[1] = a6;
  v7 = (a4[7] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = outlined init with take of CloudDevice(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11DBAssetDataCGMd, &_ss18_DictionaryStorageCySS9MomentsUI11DBAssetDataCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMR);
}

{
  specialized _NativeDictionary.copy()(type metadata accessor for CloudDevice, &_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMR, type metadata accessor for CloudDevice);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi_SdtGMd, &_ss18_DictionaryStorageCySSSi_SdtGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay9MomentsUI32MusicPlaybackCoordinatorDelegate_pGGMd, &_ss18_DictionaryStorageCySSSay9MomentsUI32MusicPlaybackCoordinatorDelegate_pGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMd, &_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMR);
}

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x277CC9260], &_ss18_DictionaryStorageCySS10Foundation3URLVGMd, &_ss18_DictionaryStorageCySS10Foundation3URLVGMR);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x277CC95F0], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI9AssetTypeOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI9AssetTypeOGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI16DBAssetModelEnumOSi6models_Si5bytesSd8durationtGMd, &_ss18_DictionaryStorageCy9MomentsUI16DBAssetModelEnumOSi6models_Si5bytesSd8durationtGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCSo7CGPointVGMd, &_ss18_DictionaryStorageCy9MomentsUI11MapLocationCSo7CGPointVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVSo7CGPointVGMd, &_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVSo7CGPointVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v17) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(*(v2 + 56) + v17);
      *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCAC0E9ViewModel_pGMd, &_ss18_DictionaryStorageCy9MomentsUI11MapLocationCAC0E9ViewModel_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v19;

        v18 = v19;
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
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMR);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x277CDD538], &_ss18_DictionaryStorageCy10Foundation4UUIDV9SwiftData20PersistentIdentifierVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9SwiftData20PersistentIdentifierVGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI19SuggestionViewModelCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI19SuggestionViewModelCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSay9MomentsUI19SuggestionViewModelCGGMd, &_ss18_DictionaryStorageCySiSay9MomentsUI19SuggestionViewModelCGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy9MomentsUI9AssetTypeOSayAC0E9ViewModelCGGMd, &_ss18_DictionaryStorageCy9MomentsUI9AssetTypeOSayAC0E9ViewModelCGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd, &_ss18_DictionaryStorageCy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSay9MomentsUI12DBAssetModelCGGMd, &_ss18_DictionaryStorageCySiSay9MomentsUI12DBAssetModelCGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVAC12MapViewModel_pGMd, &_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVAC12MapViewModel_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
        v19 = v18;
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
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x277CC9AF8], &_ss18_DictionaryStorageCy10Foundation4UUIDVAC9IndexPathVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC9IndexPathVGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySiGGMd, &_ss18_DictionaryStorageCySSSaySiGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8CKRecordCGMd, &_ss18_DictionaryStorageCySSSo8CKRecordCGMR);
}

{
  specialized _NativeDictionary.copy()(type metadata accessor for CloudMetaDevice, &_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMR, type metadata accessor for CloudMetaDevice);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x277CC9578], &_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySo10CKRecordIDCGGMd, &_ss18_DictionaryStorageCySSSaySo10CKRecordIDCGGMR);
}

{
  v1 = v0;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
  v32 = *(Changes - 8);
  MEMORY[0x28223BE20](Changes);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo14CKRecordZoneIDC8CloudKit12CKSyncEngineC19FetchChangesOptionsV0D13ConfigurationVGMd, &_ss18_DictionaryStorageCySo14CKRecordZoneIDC8CloudKit12CKSyncEngineC19FetchChangesOptionsV0D13ConfigurationVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v32;
      v22 = *(v32 + 72) * v18;
      v24 = v29;
      v23 = Changes;
      (*(v32 + 16))(v29, v19 + v22, Changes);
      v25 = v31;
      *(*(v31 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      v26 = v20;
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

        v1 = v27[0];
        v5 = v31;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGMd, &_ss18_DictionaryStorageCySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        outlined copy of Result<CKRecord, Error>(v20);
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
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEpGMd, &_ss18_DictionaryStorageCySSSe_SEpGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 48 * v17;
        outlined init with copy of Decodable & Encodable(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Decodable & Encodable(v25, (*(v4 + 56) + v22));
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
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI5AssetCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI5AssetCGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v25 = v23;
        v13 = v35;
      }

      while (v35);
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

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
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
}

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSi_9MomentsUI9AssetTypeOtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSi_9MomentsUI9AssetTypeOtGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v32 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v21, v34);
        v19 *= 16;
        v24 = *(v3 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        v27 = *(v15 + 56) + v19;
        *v27 = v25;
        *(v27 + 8) = v26;
        v3 = v32;
        v13 = v37;
      }

      while (v37);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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
}

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v38 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        v28(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS9MomentsUI18CloudSyncAssetDataCGMd, &_ss18_DictionaryStorageCySS9MomentsUI18CloudSyncAssetDataCGMR);
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        outlined init with copy of Any(*(v4 + 56) + 32 * v19, v22);
        *(*(v6 + 48) + 8 * v19) = v20;
        outlined init with take of Any(v22, (*(v6 + 56) + 32 * v19));
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - v7;
  v44 = type metadata accessor for UUID();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || v12 >= &v13[8 * v14])
    {
      memmove(v12, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }
}

{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    v13 = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v15)
    {
      memmove(v13, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        outlined init with copy of CloudDevice(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        outlined init with take of CloudDevice(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v104 = *(v9 + 2);
      if (v104 >= 2)
      {
        while (*v6)
        {
          v105 = v9;
          v9 = (v104 - 1);
          v106 = *&v105[16 * v104];
          v107 = *&v105[16 * v104 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v106), (*v6 + 8 * *&v105[16 * v104 + 16]), (*v6 + 8 * v107), v7);
          if (v5)
          {
            goto LABEL_116;
          }

          if (v107 < v106)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
          }

          if (v104 - 2 >= *(v105 + 2))
          {
            goto LABEL_132;
          }

          v108 = &v105[16 * v104];
          *v108 = v106;
          *(v108 + 1) = v107;
          specialized Array.remove(at:)(v104 - 1);
          v9 = v105;
          v104 = *(v105 + 2);
          if (v104 <= 1)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_142;
      }

LABEL_116:

      return;
    }

LABEL_138:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_108;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 < v7)
  {
    v12 = *v6;
    v114 = v8;
    v13 = *(*v6 + 8 * v8);
    v14 = *(**(*v6 + 8 * v11) + 872);

    v16 = COERCE_DOUBLE(v14(v15));
    if (v17)
    {
      v18 = -1.0;
    }

    else
    {
      v18 = v16;
    }

    v19 = COERCE_DOUBLE((*(*v13 + 872))());
    v21 = v20;

    v10 = v114;

    if (v21)
    {
      v22 = -1.0;
    }

    else
    {
      v22 = v19;
    }

    v11 = v114 + 2;
    if (v114 + 2 < v7)
    {
      v23 = v12 + 8 * v114 + 16;
      do
      {
        v24 = *(v23 - 8);
        v25 = *(**v23 + 872);

        v27 = COERCE_DOUBLE(v25(v26));
        if (v28)
        {
          v29 = -1.0;
        }

        else
        {
          v29 = v27;
        }

        v30 = COERCE_DOUBLE((*(*v24 + 872))());
        v32 = v31;

        if (v32)
        {
          if (v22 < v18 == v29 <= -1.0)
          {
            goto LABEL_22;
          }
        }

        else if (v22 < v18 == v29 <= v30)
        {
          goto LABEL_22;
        }

        ++v11;
        v23 += 8;
      }

      while (v7 != v11);
      v11 = v7;
LABEL_22:
      v10 = v114;
    }

    v6 = a3;
    if (v22 < v18)
    {
      if (v11 < v10)
      {
        goto LABEL_135;
      }

      if (v10 < v11)
      {
        v33 = 8 * v11 - 8;
        v34 = 8 * v10;
        v35 = v11;
        v36 = v10;
        do
        {
          if (v36 != --v35)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v37 = *(v38 + v34);
            *(v38 + v34) = *(v38 + v33);
            *(v38 + v33) = v37;
          }

          ++v36;
          v33 -= 8;
          v34 += 8;
        }

        while (v36 < v35);
      }
    }
  }

  v39 = v6[1];
  if (v11 >= v39)
  {
    goto LABEL_55;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_134;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_55;
  }

  v40 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  if (v40 >= v39)
  {
    v40 = v6[1];
  }

  if (v40 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v11 == v40)
  {
    goto LABEL_55;
  }

  v112 = v9;
  v109 = v5;
  v41 = *v6;
  v42 = *v6 + 8 * v11 - 8;
  v115 = v10;
  v116 = v40;
  v43 = v10 - v11;
LABEL_42:
  v117 = v11;
  v44 = *(v41 + 8 * v11);
  v45 = v43;
  v7 = v42;
  while (1)
  {
    v46 = *v7;
    v47 = *(*v44 + 872);

    v49 = COERCE_DOUBLE(v47(v48));
    v51 = (v50 & 1) != 0 ? -1.0 : v49;
    v52 = COERCE_DOUBLE((*(*v46 + 872))());
    v54 = v53;

    if (v54)
    {
      if (v51 <= -1.0)
      {
        goto LABEL_41;
      }
    }

    else if (v51 <= v52)
    {
      goto LABEL_41;
    }

    if (!v41)
    {
      break;
    }

    v55 = *v7;
    v44 = *(v7 + 8);
    *v7 = v44;
    *(v7 + 8) = v55;
    v7 -= 8;
    if (__CFADD__(v45++, 1))
    {
LABEL_41:
      v11 = v117 + 1;
      v42 += 8;
      --v43;
      if (v117 + 1 != v116)
      {
        goto LABEL_42;
      }

      v11 = v116;
      v5 = v109;
      v6 = a3;
      v9 = v112;
      v10 = v115;
LABEL_55:
      if (v11 < v10)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v58 = *(v9 + 2);
      v57 = *(v9 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v9);
      }

      *(v9 + 2) = v59;
      v60 = &v9[16 * v58];
      *(v60 + 4) = v10;
      *(v60 + 5) = v11;
      v118 = v11;
      v61 = *a1;
      if (!*a1)
      {
        goto LABEL_143;
      }

      if (v58)
      {
        while (1)
        {
          v62 = v59 - 1;
          if (v59 >= 4)
          {
            break;
          }

          if (v59 == 3)
          {
            v63 = *(v9 + 4);
            v64 = *(v9 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_75:
            if (v66)
            {
              goto LABEL_122;
            }

            v79 = &v9[16 * v59];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_125;
            }

            v85 = &v9[16 * v62 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_128;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_129;
            }

            if (v83 + v88 >= v65)
            {
              if (v65 < v88)
              {
                v62 = v59 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v89 = &v9[16 * v59];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_89:
          if (v84)
          {
            goto LABEL_124;
          }

          v92 = &v9[16 * v62];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_127;
          }

          if (v95 < v83)
          {
            goto LABEL_3;
          }

LABEL_96:
          v100 = v62 - 1;
          if (v62 - 1 >= v59)
          {
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
            goto LABEL_137;
          }

          if (!*v6)
          {
            goto LABEL_140;
          }

          v101 = *&v9[16 * v100 + 32];
          v102 = *&v9[16 * v62 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v101), (*v6 + 8 * *&v9[16 * v62 + 32]), (*v6 + 8 * v102), v61);
          if (v5)
          {
            goto LABEL_116;
          }

          if (v102 < v101)
          {
            goto LABEL_118;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          }

          if (v100 >= *(v9 + 2))
          {
            goto LABEL_119;
          }

          v103 = &v9[16 * v100];
          *(v103 + 4) = v101;
          *(v103 + 5) = v102;
          specialized Array.remove(at:)(v62);
          v59 = *(v9 + 2);
          if (v59 <= 1)
          {
            goto LABEL_3;
          }
        }

        v67 = &v9[16 * v59 + 32];
        v68 = *(v67 - 64);
        v69 = *(v67 - 56);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_120;
        }

        v72 = *(v67 - 48);
        v71 = *(v67 - 40);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_121;
        }

        v74 = &v9[16 * v59];
        v76 = *v74;
        v75 = *(v74 + 1);
        v73 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v73)
        {
          goto LABEL_123;
        }

        v73 = __OFADD__(v65, v77);
        v78 = v65 + v77;
        if (v73)
        {
          goto LABEL_126;
        }

        if (v78 >= v70)
        {
          v96 = &v9[16 * v62 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v73 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v73)
          {
            goto LABEL_130;
          }

          if (v65 < v99)
          {
            v62 = v59 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v7 = v6[1];
      v8 = v118;
      if (v118 >= v7)
      {
        goto LABEL_106;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v28 = __dst;
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v28 > v6)
    {
LABEL_30:
      v43 = v28;
      v29 = v28 - 8;
      v5 -= 8;
      v30 = v14;
      v45 = v29;
      do
      {
        v31 = v4;
        v32 = *(v30 - 1);
        v30 -= 8;
        v33 = *v29;
        v34 = *(*v32 + 872);

        v36 = COERCE_DOUBLE(v34(v35));
        if (v37)
        {
          v38 = -1.0;
        }

        else
        {
          v38 = v36;
        }

        v39 = COERCE_DOUBLE((*(*v33 + 872))());
        v41 = v40;

        if (v41)
        {
          if (v38 > -1.0)
          {
            goto LABEL_41;
          }
        }

        else if (v38 > v39)
        {
LABEL_41:
          v4 = v31;
          if (v5 + 8 != v43)
          {
            *v5 = *v45;
          }

          if (v14 <= v31 || (v28 = v45, v45 <= v6))
          {
            v28 = v45;
            goto LABEL_48;
          }

          goto LABEL_30;
        }

        v4 = v31;
        if (v5 + 8 != v14)
        {
          *v5 = *v30;
        }

        v5 -= 8;
        v14 = v30;
        v29 = v45;
      }

      while (v30 > v31);
      v14 = v30;
      v28 = v43;
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      v44 = v14;
      do
      {
        v16 = v15;
        v17 = v4;
        v18 = *v4;
        v19 = *(**v15 + 872);

        v21 = COERCE_DOUBLE(v19(v20));
        if (v22)
        {
          v23 = -1.0;
        }

        else
        {
          v23 = v21;
        }

        v24 = COERCE_DOUBLE((*(*v18 + 872))());
        v26 = v25;

        if (v26)
        {
          if (v23 <= -1.0)
          {
            goto LABEL_17;
          }
        }

        else if (v23 <= v24)
        {
LABEL_17:
          v27 = v17;
          v4 = v17 + 8;
          v15 = v16;
          if (v6 == v17)
          {
            goto LABEL_19;
          }

LABEL_18:
          *v6 = *v27;
          goto LABEL_19;
        }

        v27 = v16;
        v15 = v16 + 8;
        v4 = v17;
        if (v6 != v16)
        {
          goto LABEL_18;
        }

LABEL_19:
        v6 += 8;
        v14 = v44;
      }

      while (v4 < v44 && v15 < v5);
    }

    v28 = v6;
  }

LABEL_48:
  if (v28 != v4 || v28 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v28, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for CKRecordZoneID();
  lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, type metadata accessor for CKRecordZoneID, MEMORY[0x277D85378]);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for CKRecordZoneID();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4)
{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, type metadata accessor for DBAssetData, &lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, type metadata accessor for DBSuggestion, &lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        goto LABEL_42;
      }

      v8 = a2;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = a4 + 32;
      v13 = 1;
LABEL_5:
      if (!v10)
      {
        goto LABEL_8;
      }

      if (!(v10 >> 62))
      {
        if (v9 != *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

LABEL_8:
        v14 = *(a4 + 16);
        if (v11 == v14)
        {
LABEL_34:
          *a1 = a4;
          a1[1] = v11;
          goto LABEL_37;
        }

        if (v11 >= v14)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        while (1)
        {
          v10 = *(v12 + 8 * v11);

          if (v10)
          {
            if (v10 >> 62)
            {
              if (__CocoaSet.count.getter())
              {
LABEL_18:
                v9 = 0;
                ++v11;
                if ((v10 & 0xC000000000000001) == 0)
                {
                  goto LABEL_23;
                }

LABEL_29:
                v17 = MEMORY[0x21CE93180](v9, v10);
                v18 = __OFADD__(v9++, 1);
                if (v18)
                {
                  goto LABEL_31;
                }

LABEL_25:
                *v8 = v17;
                if (v13 == a3)
                {
                  goto LABEL_36;
                }

                ++v8;
                v18 = __OFADD__(v13++, 1);
                if (v18)
                {
                  goto LABEL_41;
                }

                goto LABEL_5;
              }
            }

            else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }
          }

          v15 = *(a4 + 16);
          v16 = v11 + 1 >= v15;
          if (v11 + 1 == v15)
          {
            v9 = 0;
            ++v11;
            goto LABEL_34;
          }

          ++v11;
          if (v16)
          {
            goto LABEL_38;
          }
        }
      }

      if (v9 == __CocoaSet.count.getter())
      {
        goto LABEL_8;
      }

LABEL_21:
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_29;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

LABEL_23:
      if (v9 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        v18 = __OFADD__(v9++, 1);
        if (!v18)
        {
          goto LABEL_25;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_36:
      *a1 = a4;
      a1[1] = v11;
LABEL_37:
      a1[2] = v10;
      a1[3] = v9;
    }
  }

  else
  {
LABEL_32:
    *a1 = a4;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
  }
}

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v17 = 0;
    v25 = -1 << *(v9 + 32);
    v15 = v9 + 56;
    v16 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v18 = v27 & *(v9 + 56);
    v19 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    a5 = 0;
    goto LABEL_31;
  }

  __CocoaSet.makeIterator()();
  a5(0);
  lazy protocol witness table accessor for type DBWriter and conformance DBWriter(a6, a7, a8);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v33;
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = a3;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!v19)
  {
    a5 = 0;
    goto LABEL_31;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v29 = v16;
  v30 = a5;
  a5 = 0;
  v20 = (v16 + 64) >> 6;
  v21 = 1;
  while (v9 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    v30(0);
    swift_dynamicCast();
    result = v32;
    v19 = a3;
    if (!v32)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v21 == v19)
    {
      a5 = v19;
      goto LABEL_29;
    }

    ++a2;
    a5 = v21;
    if (__OFADD__(v21++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v22 = v17;
  if (v18)
  {
LABEL_12:
    v18 &= v18 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v23 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v17 = v23;
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (v20 <= v17 + 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = v20;
  }

  v17 = v28 - 1;
LABEL_29:
  v16 = v29;
LABEL_31:
  *v11 = v9;
  v11[1] = v15;
  v11[2] = v16;
  v11[3] = v17;
  v11[4] = v18;
  return a5;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j");
  v42 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v39 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  v46 = a2;
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v39 = v13;
    v40 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v41 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = (*(a4 + 48) + 16 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = type metadata accessor for Date();
      v30 = *(v29 - 8);
      v31 = v24 + *(v30 + 72) * v23;
      v32 = v44;
      (*(v30 + 16))(&v44[*(v45 + 48)], v31, v29);
      *v32 = v27;
      v32[1] = v28;
      v33 = v32;
      v34 = v43;
      outlined init with take of URL?(v33, v43, &_sSS3key_10Foundation4DateV5valuetMd, "j");
      v35 = v34;
      v36 = v46;
      outlined init with take of URL?(v35, v46, &_sSS3key_10Foundation4DateV5valuetMd, "j");
      a3 = v41;
      if (v18 == v41)
      {

        a1 = v40;
        a4 = v25;
        goto LABEL_23;
      }

      a1 = (v36 + *(v42 + 72));
      v46 = a1;

      result = v18;
      v37 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v37)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v38 = v16 + 1;
    }

    else
    {
      v38 = v17;
    }

    v22 = v38 - 1;
    a3 = result;
    a1 = v40;
LABEL_23:
    v13 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](specialized closure #1 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

void specialized closure #1 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v16 = v0;
  specialized static DBWriter.draftSnapshot(context:)();
  if (v1)
  {
    if ((*(*v1 + 624))(v1))
    {

      v15[0] = specialized Array._copyToContiguousArray()(v2);
      specialized MutableCollection<>.sort(by:)(v15);
      v3 = v0[3];

      v4 = v15[0];
      v5 = *v3;
      v14 = v5;
      if (v15[0] < 0 || (v15[0] & 0x4000000000000000) != 0)
      {
LABEL_23:
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *(v15[0] + 16);
      }

      if (v6)
      {
        v7 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x21CE93180](v7, v4);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_17:
              __break(1u);

              return;
            }
          }

          else
          {
            if (v7 >= *(v4 + 16))
            {
              __break(1u);
              goto LABEL_23;
            }

            v8 = *(v4 + 8 * v7 + 32);

            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_17;
            }
          }

          v10 = v0[4];
          v11 = v0[5];
          v15[0] = v8;
          v5 = 0;
          closure #2 in closure #1 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(&v14, v15, v10, v11);

          ++v7;
          if (v9 == v6)
          {
            v5 = v14;
            break;
          }
        }
      }

      v12 = v0[3];

      *v12 = v5;
    }

    else
    {
    }
  }

  v13 = v0[1];

  v13();
}

uint64_t specialized closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](specialized closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

void specialized closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v1 = *(v0 + 24);
  v2 = *(**(v0 + 32) + 16);
  v3 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v7 = (*(*(v0 + 40) + 96) + **(*(v0 + 40) + 96));
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v4[1] = specialized closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
    v5 = *(v0 + 16);
    v6 = MEMORY[0x277D84F90];

    v7(v6, v3, v5);
  }
}

uint64_t specialized closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

void specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v1 = *(v0 + 32);
  v2 = *(**(v0 + 40) + 16);
  v3 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v7 = (*(*(v0 + 48) + 96) + **(*(v0 + 48) + 96));
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);

    v7(v6, v3, v5);
  }
}

uint64_t specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError()
{
  result = lazy protocol witness table cache variable for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError;
  if (!lazy protocol witness table cache variable for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError;
  if (!lazy protocol witness table cache variable for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError);
  }

  return result;
}

uint64_t dispatch thunk of static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 80) + **(v3 + 80));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 88) + **(v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 96) + **(v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(v6 + 104) + **(v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = static Exif.filterImage(imageSource:outputURL:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of static IncrementalProcessor.preferredDBManager()()
{
  v4 = (*(v0 + 112) + **(v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of static IncrementalProcessor.preferredDBManager();

  return v4();
}

uint64_t dispatch thunk of static IncrementalProcessor.preferredDBManager()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t outlined init with copy of Decodable & Encodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for CKRecordZoneID()
{
  result = lazy cache variable for type metadata for CKRecordZoneID;
  if (!lazy cache variable for type metadata for CKRecordZoneID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CKRecordZoneID);
  }

  return result;
}

uint64_t outlined init with copy of CloudDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for TaskPriority() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12, v16);
}

unint64_t lazy protocol witness table accessor for type ThrowingTaskGroup<UUID, Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator()
{
  result = lazy protocol witness table cache variable for type ThrowingTaskGroup<UUID, Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator;
  if (!lazy protocol witness table cache variable for type ThrowingTaskGroup<UUID, Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScg8IteratorVy10Foundation4UUIDVs5Error_p_GMd, &_sScg8IteratorVy10Foundation4UUIDVs5Error_p_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ThrowingTaskGroup<UUID, Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t lazy protocol witness table accessor for type DBWriter and conformance DBWriter(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DBMediaThirdPartyModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);

  return v1;
}

__n128 DBMediaThirdPartyModel.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t DBMediaThirdPartyModel.colorVariantString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_colorVariantString);

  return v1;
}

uint64_t DBMediaThirdPartyModel.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier);

  return v1;
}

void DBMediaThirdPartyModel.colorVariant.getter(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_colorVariantString);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_colorVariantString + 8);
  if (v4)
  {
    v5 = *v3;

    v6 = v5;
    v7 = v4;

    MediaThirdPartyBackgroundColorVariant.init(rawValue:)(*&v6);
  }

  else
  {
    *a1 = 4;
  }
}

MomentsUI::DBMediaThirdPartyModel::CodingKeys_optional __swiftcall DBMediaThirdPartyModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMediaThirdPartyModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t DBMediaThirdPartyModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C746974627573;
  v2 = 0x756F72676B636162;
  v3 = 0x726156726F6C6F63;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBMediaThirdPartyModel.CodingKeys()
{
  v0 = DBMediaThirdPartyModel.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == DBMediaThirdPartyModel.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBMediaThirdPartyModel.CodingKeys()
{
  Hasher.init(_seed:)();
  DBMediaThirdPartyModel.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DBMediaThirdPartyModel.CodingKeys(uint64_t a1)
{
  DBMediaThirdPartyModel.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBMediaThirdPartyModel.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  DBMediaThirdPartyModel.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBMediaThirdPartyModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMediaThirdPartyModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBMediaThirdPartyModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBMediaThirdPartyModel.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBMediaThirdPartyModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMediaThirdPartyModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBMediaThirdPartyModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBMediaThirdPartyModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBMediaThirdPartyModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI22DBMediaThirdPartyModelC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9MomentsUI22DBMediaThirdPartyModelC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBMediaThirdPartyModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v25[0]) = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue;
    *v14 = v13;
    *(v14 + 8) = v15 & 1;
    v27 = 2;
    lazy protocol witness table accessor for type Color and conformance Color();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v26;
    v17 = v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor;
    v18 = v25[1];
    *v17 = v25[0];
    *(v17 + 16) = v18;
    *(v17 + 32) = v16;
    LOBYTE(v25[0]) = 3;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = (v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_colorVariantString);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v25[0]) = 4;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier);
    *v23 = v22;
    v23[1] = v24;
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(v25);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBMediaThirdPartyModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI22DBMediaThirdPartyModelC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI22DBMediaThirdPartyModelC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
    v11 = *(v3 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
    v12[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
    v12[1] = v11;
    v13 = v10;
    v14 = 2;
    lazy protocol witness table accessor for type Color and conformance Color();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v12);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return (*(v6 + 8))(v8, v5);
}

void DBMediaThirdPartyModel.mediaThirdPartyCategory.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
  {
    *a1 = 3;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    if (v2 >= 3)
    {
      LOBYTE(v2) = 3;
    }

    *a1 = v2;
  }
}

Swift::Int DBMediaThirdPartyModel.metadataHash.getter()
{
  Hasher.init()();
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
  if ((*(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8) & 1) != 0 || (v2 = *v1, *v1 >= 3))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x21CE937C0](v2);
  }

  String.hash(into:)();
  return Hasher.finalize()();
}

uint64_t DBMediaThirdPartyModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:bundleIdentifier:colorVariantString:mediaThirdPartyCategoryRawValue:backgroundColor:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t, __n128), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void), void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned __int8 *a18)
{
  swift_allocObject();
  v23 = specialized DBMediaThirdPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:bundleIdentifier:colorVariantString:mediaThirdPartyCategoryRawValue:backgroundColor:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16 & 1, a17, a18);

  return v23;
}

uint64_t DBMediaThirdPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:bundleIdentifier:colorVariantString:mediaThirdPartyCategoryRawValue:backgroundColor:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t, __n128), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void), void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned __int8 *a18)
{
  v19 = specialized DBMediaThirdPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:bundleIdentifier:colorVariantString:mediaThirdPartyCategoryRawValue:backgroundColor:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16 & 1, a17, a18);

  return v19;
}

uint64_t DBMediaThirdPartyModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:subtitle:bundleIdentifier:colorVariant:mediaThirdPartyCategory:backgroundColor:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 *a14, __int128 *a15, unsigned __int8 *a16)
{
  v86 = a3;
  v81 = a8;
  v82 = a7;
  v77 = a6;
  v79 = a5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v64 - v20;
  v66 = type metadata accessor for DateInterval();
  v84 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v76 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v67 = *a13;
  v69 = *a14;
  v27 = *a15;
  v73 = a15[1];
  v70 = v27;
  v72 = *(a15 + 32);
  v71 = *a16;
  v78 = v28;
  v29 = *(v28 + 16);
  v74 = &v64 - v30;
  v31 = a1;
  v32 = a2;
  v29();
  v75 = v26;
  v80 = v23;
  (v29)(v26, a2, v23);
  v33 = v86;
  if (v86)
  {
    v68 = v86;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v68 = static ScreenSize.zero;
  }

  v35 = v84;
  v34 = v85;
  v36 = *(a4 + 16);
  v83 = v31;
  if (v36)
  {
    v65 = v32;
    *&v88[0] = MEMORY[0x277D84F90];
    v37 = v33;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v38 = *&v88[0];
    v39 = *(*&v88[0] + 16);
    v40 = 32;
    do
    {
      v41 = *(a4 + v40);
      *&v88[0] = v38;
      v42 = *(v38 + 24);
      if (v39 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v39 + 1, 1);
        v38 = *&v88[0];
      }

      *(v38 + 16) = v39 + 1;
      *(v38 + v39 + 32) = v41;
      ++v40;
      ++v39;
      --v36;
    }

    while (v36);

    v35 = v84;
    v34 = v85;
    v32 = v65;
  }

  else
  {
    v43 = v33;

    v38 = MEMORY[0x277D84F90];
  }

  v44 = v82;
  outlined init with copy of DateInterval?(v82, v21);
  v45 = *(v35 + 48);
  v46 = v66;
  v47 = v45(v21, 1, v66);
  v48 = v76;
  if (v47 == 1)
  {
    DateInterval.init()();
    v49 = v45(v21, 1, v46);
    v50 = v79;
    if (v49 != 1)
    {
      outlined destroy of UTType?(v21, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }
  }

  else
  {
    (*(v35 + 32))(v76, v21, v46);
    v50 = v79;
  }

  v51 = v32;
  v52 = v81;
  if (v81)
  {
    v53 = v81;
    v54 = specialized static DBAssetModel.baseImage2DB(_:)(v52);
  }

  else
  {
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if (v67 <= 1)
  {
    if (v67)
    {
      v55 = 0xE500000000000000;
      v56 = 0x746867696CLL;
    }

    else
    {
      v55 = 0xE700000000000000;
      v56 = 0x6E776F6E6B6E75;
    }
  }

  else if (v67 == 2)
  {
    v55 = 0xE400000000000000;
    v56 = 1802658148;
  }

  else if (v67 == 3)
  {
    v55 = 0xE800000000000000;
    v56 = 0x6B72614479726576;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  if (v77)
  {
    v57 = v77;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  if (v77)
  {
    v58 = v50;
  }

  else
  {
    v58 = 0;
  }

  if (v69 == 3)
  {
    v59 = 0;
  }

  else
  {
    v59 = v69;
  }

  v88[0] = v70;
  v88[1] = v73;
  v89 = v72;
  v87 = v71;
  v60 = (*(v34 + 448))(v74, v75, v68, v38, v58, v57, v48, v54, a9, a10, a11, a12, v56, v55, v59, v69 == 3, v88, &v87);

  outlined destroy of UTType?(v44, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v61 = *(v78 + 8);
  v62 = v80;
  v61(v51, v80);
  v61(v83, v62);
  return v60;
}

double DBMediaThirdPartyModel.__ivar_destroyer()
{

  return result;
}

uint64_t DBMediaThirdPartyModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBMediaThirdPartyModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized static DBMediaThirdPartyModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle) == *(a2 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle) && *(a1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8) == *(a2 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = (a1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    if (*(a1 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v8 = 1;
      v9 = 3;
    }

    else
    {
      v9 = *v7;
      v8 = *v7 > 2;
      if (v8)
      {
        v9 = 3;
      }
    }

    v10 = (a2 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    if (*(a2 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v11 = 1;
      v12 = 3;
    }

    else
    {
      v12 = *v10;
      v13 = *v10 > 2;
      v11 = v13;
      if (v13)
      {
        v12 = 3;
      }
    }

    v4 = v9 == v12;
    v14 = v11 ^ 1;
    if (!v4)
    {
      v14 = 0;
    }

    if (v8)
    {
      return v11;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

unint64_t specialized DBMediaThirdPartyModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMediaThirdPartyModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaThirdPartyModel.CodingKeys and conformance DBMediaThirdPartyModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBMediaThirdPartyModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBMediaThirdPartyModel;
  if (!type metadata singleton initialization cache for DBMediaThirdPartyModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized DBMediaThirdPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:bundleIdentifier:colorVariantString:mediaThirdPartyCategoryRawValue:backgroundColor:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t, __n128), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void), void *a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 *a18)
{
  v19 = v18;
  *&v137 = a8;
  v125 = a7;
  *&v138 = a6;
  v132 = a5;
  v131 = a4;
  v130 = a3;
  v126 = a2;
  v128 = a12;
  v127 = a11;
  v124 = a14;
  v122 = a13;
  LODWORD(v120) = a16;
  v119 = a15;
  v118 = a10;
  v117 = a9;
  v135 = *v19;
  v115 = type metadata accessor for Date();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v136 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v134 = &v107 - v25;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMR);
  v121 = *(v133 - 8);
  v26 = MEMORY[0x28223BE20](v133);
  v109 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v108 = &v107 - v28;
  v29 = type metadata accessor for DateInterval();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v32;
  v33 = type metadata accessor for UUID();
  v34 = MEMORY[0x28223BE20](v33);
  v129 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v107 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v107 - v39;
  v41 = *(a17 + 32);
  LODWORD(v116) = *a18;
  v42 = (v19 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
  v43 = v118;
  *v42 = v117;
  v42[1] = v43;
  v44 = v19 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue;
  *v44 = v119;
  *(v44 + 8) = v120 & 1;
  v45 = v19 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor;
  v46 = *(a17 + 16);
  *v45 = *a17;
  *(v45 + 16) = v46;
  *(v45 + 32) = v41;
  v47 = (v19 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_colorVariantString);
  v48 = v124;
  *v47 = v122;
  v47[1] = v48;
  v49 = (v19 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier);
  v50 = v128;
  *v49 = v127;
  v49[1] = v50;
  v124 = v51;
  v52 = *(v51 + 16);
  v119 = a1;
  v52(&v107 - v39, a1, v33);
  v52(v38, v126, v33);
  v127 = type metadata accessor for DBAssetModel(0);
  static DBAssetModel.subscript.getter(v135, &v140);
  LODWORD(v128) = v140;
  v117 = v30;
  v53 = *(v30 + 16);
  v53(v32, v125, v29);
  *(v19 + 16) = 0;
  v122 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v111 = v40;
  v52((v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v40, v33);
  v120 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v112 = v38;
  v135 = v33;
  v52((v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v38, v33);
  *(v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v128;
  v54 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  v55 = v130;
  *(v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v130;
  *(v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v131;
  v56 = (v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v57 = v138;
  *v56 = v132;
  v56[1] = v57;
  v58 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v118 = v29;
  v53((v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v123, v29);
  v59 = v55;
  specialized Dictionary.compactMapValues<A>(_:)(v137);
  v110 = 0;
  *(v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v60;
  v122 = MEMORY[0x277D84F90];
  *(v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v61 = v60;
  swift_beginAccess();
  v120 = v19;
  *(v19 + 16) = v116;
  v62 = v137 + 64;
  v63 = 1 << *(v137 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v137 + 64);
  v66 = (v63 + 63) >> 6;
  v132 = (v124 + 48);
  v128 = (v124 + 32);
  v131 = (v121 + 56);
  v130 = (v121 + 48);
  v116 = v61;

  v67 = 0;
  v68 = v136;
  v127 = v66;
  while (v65)
  {
    v69 = v67;
LABEL_9:
    v70 = __clz(__rbit64(v65)) | (v69 << 6);
    v71 = *(*(v137 + 56) + 8 * v70);
    v72 = *(*v71 + 192);
    *&v138 = *(*(v137 + 48) + 16 * v70 + 8);

    v72(v73);
    v74 = v135;
    if ((*v132)(v68, 1, v135) == 1)
    {
      outlined destroy of UTType?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54 = v134;
      v58 = v133;
      (*v131)(v134, 1, 1, v133);
    }

    else
    {
      v75 = *v128;
      (*v128)(v129, v136, v74);
      v58 = v133;
      v76 = *(v133 + 48);
      v66 = v127;
      v54 = v134;
      v75();
      v68 = v136;
      *(v54 + v76) = v71;
      (*v131)(v54, 0, 1, v58);
    }

    v65 &= v65 - 1;

    if ((*v130)(v54, 1, v58) == 1)
    {
      outlined destroy of UTType?(v54, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR);
      v67 = v69;
    }

    else
    {
      v77 = v108;
      outlined init with take of (UUID, DBAssetData)(v54, v108);
      outlined init with take of (UUID, DBAssetData)(v77, v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122[2] + 1, 1, v122);
      }

      v79 = v122[2];
      v78 = v122[3];
      v80 = v121;
      if (v79 >= v78 >> 1)
      {
        v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v122);
        v80 = v121;
        v122 = v82;
      }

      v81 = v122;
      v122[2] = v79 + 1;
      outlined init with take of (UUID, DBAssetData)(v109, v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79);
      v67 = v69;
    }
  }

  while (1)
  {
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);

      v105 = *(v124 + 8);
      v106 = v135;
      v105(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR + v122, v135);
      v105(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR + v120, v106);

      (*(v117 + 8))(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR + v58, v118);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_25;
    }

    if (v69 >= v66)
    {
      break;
    }

    v65 = *(v62 + 8 * v69);
    ++v67;
    if (v65)
    {
      goto LABEL_9;
    }
  }

  v83 = v120;
  if (v122[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMR);
    v84 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v84 = MEMORY[0x277D84F98];
  }

  v85 = v124;
  v139 = v84;

  v87 = v110;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v86, 1, &v139);
  if (!v87)
  {

    v88 = v139;
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    v90 = (v83 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v90 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v90[1] = v89;
    v91 = swift_allocObject();
    *(v91 + 16) = v88;
    v92 = (v83 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v92 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v92[1] = v91;
    v93 = (v83 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v93 = closure #3 in DBAssetModel.init(from:);
    v93[1] = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    swift_beginAccess();
    v138 = *v90;
    swift_beginAccess();
    v137 = *v92;
    swift_beginAccess();
    v95 = *v93;
    v96 = v93[1];
    v97 = v83 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v97 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v97 + 8) = v94;
    v98 = v137;
    *(v97 + 16) = v138;
    *(v97 + 32) = v98;
    *(v97 + 48) = v95;
    *(v97 + 56) = v96;

    v99 = v113;
    static Date.now.getter();
    v100 = *(v117 + 8);
    v101 = v118;
    v100(v125, v118);
    v102 = *(v85 + 8);
    v103 = v135;
    v102(v126, v135);
    v102(v119, v103);
    v100(v123, v101);
    v102(v112, v103);
    v102(v111, v103);
    (*(v114 + 32))(v83 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v99, v115);
    return v83;
  }

LABEL_25:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.setPrefixFont(font:forText:)(UIFont font, Swift::String forText)
{
  object = forText._object;
  countAndFlagsBits = forText._countAndFlagsBits;
  v6 = [v2 mutableString];
  v7 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);
  v8 = [v6 rangeOfString:v7 options:1];
  v10 = v9;

  if (v8)
  {
    if (v8 == NSNotFound.getter())
    {
      return;
    }

    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else if (((v8 - 1) & 0x8000000000000000) == 0)
    {
      if (v8 != 0x8000000000000000)
      {
        v11 = *MEMORY[0x277D740A8];
        v14 = v8;
        v12 = v2;
        isa = font.super.isa;
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D740A8];
  v12 = v2;
  isa = font.super.isa;
  v14 = v10;
LABEL_9:

  [v12 addAttribute:v11 value:isa range:{0, v14}];
}

id NSMutableAttributedString.setColor(color:forText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = [v4 mutableString];
  v10 = MEMORY[0x21CE91FC0](a2, a3);
  v11 = [v9 rangeOfString:v10 options:1];
  v13 = v12;

  return [v4 addAttribute:v8 value:a1 range:{v11, v13}];
}

void NSMutableAttributedString.setFontSize(_:)(double a1)
{
  v2 = v1;
  [v1 beginEditing];
  v4 = *MEMORY[0x277D740A8];
  v5 = [v2 length];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in NSMutableAttributedString.setFontSize(_:);
  *(v7 + 24) = v6;
  v10[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v10[3] = &block_descriptor_14;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v9 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    [v9 endEditing];
    v9;
  }
}

void closure #1 in NSMutableAttributedString.setFontSize(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any?(a1, v16);
  if (v17)
  {
    type metadata accessor for UIFont();
    if (swift_dynamicCast())
    {
      v10 = [v15 fontDescriptor];
      v11 = [v15 fontDescriptor];
      v12 = [v11 symbolicTraits];

      v13 = [v10 fontDescriptorWithSymbolicTraits_];
      if (v13)
      {
        v14 = [objc_opt_self() fontWithDescriptor:v13 size:a4];
        [a6 addAttribute:*MEMORY[0x277D740A8] value:v14 range:{a2, a3}];
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(v16);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return outlined destroy of Any?(v13);
}

id NSAttributedString.mutable.getter()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAB48]);

  return [v1 initWithAttributedString_];
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UIFont()
{
  result = lazy cache variable for type metadata for UIFont;
  if (!lazy cache variable for type metadata for UIFont)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFont);
  }

  return result;
}

id closure #1 in variable initialization expression of MapView.labelView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setLineBreakMode_];
  [v0 setTextAlignment_];
  [v0 setContentMode_];
  v1 = [objc_opt_self() secondaryLabelColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setTextColor_];
  return v0;
}

__int128 *MapView.Constants.accessibilityString.unsafeMutableAddressor()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  return &static MapView.Constants.accessibilityString;
}

uint64_t static MapView.Constants.accessibilityString.getter()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v0 = static MapView.Constants.accessibilityString;

  return v0;
}

void *MapView.init(viewModel:style:)(void *a1, char *a2)
{
  v33 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v5 = OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for MapPOIAnnotationView()) init];
  *&v2[OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView;
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v2[v6] = v8;
  v9 = OBJC_IVAR____TtC9MomentsUI7MapView_labelView;
  *&v2[v9] = closure #1 in variable initialization expression of MapView.labelView();
  v10 = OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView;
  *&v2[v10] = closure #1 in variable initialization expression of MapView.labelView();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v11 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v12 = static MapView.Constants.accessibilityString;
    v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v14 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v15 = a1;
    *&v2[v13] = [v14 init];
    swift_unknownObjectWeakInit();
    v16 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v33;
    v34.receiver = v2;
    v34.super_class = type metadata accessor for AssetView(0);
    v18 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v19 = *((*MEMORY[0x277D85000] & *v18) + 0xE8);
    v20 = v18;
    v19();
    AssetView.setFallBackView()();
    [v20 setIsAccessibilityElement_];
    v21 = [v20 accessibilityTraits];
    if ((v11 & ~v21) != 0)
    {
      v22 = v11;
    }

    else
    {
      v22 = 0;
    }

    [v20 setAccessibilityTraits_];
    v23 = MEMORY[0x21CE91FC0](v12, *(&v12 + 1));
    [v20 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21658CA50;
    v25 = type metadata accessor for UITraitUserInterfaceStyle();
    v26 = MEMORY[0x277D74BF0];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    v27 = v20;
    MEMORY[0x21CE92C30](v24, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v27 handleTraitChange];
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];

    [v27 setClipsToBounds_];
    v28 = v27;
    MapView.addSubViews()();
    MapView.addConstraints()();
    v29 = *&v28[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v30 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
    v31 = [objc_opt_self() systemImageNamed_];

    [v29 setImage_];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];

    return v18;
  }

  else
  {

    type metadata accessor for MapView(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for MapView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MapView;
  if (!type metadata singleton initialization cache for MapView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MapView.addSubViews()()
{
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView];
  [v0 addSubview_];
  [v1 setContentMode_];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView];
  [v1 addSubview_];
  [v2 setContentMode_];
  [v1 addSubview_];
  [v1 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView];

  [v1 addSubview_];
}

Swift::Void __swiftcall MapView.addConstraints()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView) setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x168);

  v1();
}

Swift::Void __swiftcall MapView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

uint64_t MapView.__allocating_init(intendedWidth:intendedHeight:intendedStyle:location:dateInterval:)(char *a1, uint64_t a2, char *a3, float a4, float a5)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v17 = *a1;
  v18 = type metadata accessor for ScreenSize();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = a4;
  *&v19[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = a5;
  v31.receiver = v19;
  v31.super_class = v18;
  v20 = objc_msgSendSuper2(&v31, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  *(v21 + 32) = v17;
  v22 = *(v11 + 16);
  v22(v16, a3, v10);
  v22(v14, v16, v10);
  memset(v29, 0, sizeof(v29));
  v30 = 1;
  objc_allocWithZone(type metadata accessor for MutableMapViewModel(0));

  v23 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v20, v21, a2, v14, 0, v29);

  v24 = v23;
  MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

  v25 = *(v11 + 8);
  v25(v16, v10);
  LOBYTE(v29[0]) = 1;
  v26 = (*(v28[1] + 344))(v24, v29);

  v25(a3, v10);
  return v26;
}

id MapView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t closure #1 in MapView.handleTraitLight()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitLight(), v6, v5);
}

uint64_t closure #1 in MapView.handleTraitLight()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x160);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MapView.handleTraitLight();

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitLight(), v3, v2);
}

{
  v11 = v0;
  v1 = *(v0 + 72);

  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(&v10, v2);
  v3 = *(v0 + 72);
  if (v10 - 1 >= 2)
  {
    v4 = *&v3[OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 effectWithStyle_];
    [v6 setEffect_];

    v3 = v6;
  }

  v8 = *(v0 + 8);

  return v8();
}

double MapView.handleTraitLight()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, a2, v9);

  return result;
}

uint64_t closure #1 in MapView.handleTraitDark()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitDark(), v6, v5);
}

uint64_t closure #1 in MapView.handleTraitDark()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x160);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MapView.handleTraitDark();

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitDark(), v3, v2);
}

{
  v11 = v0;
  v1 = *(v0 + 72);

  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(&v10, v2);
  v3 = *(v0 + 72);
  if (v10 - 1 >= 2)
  {
    v4 = *&v3[OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 effectWithStyle_];
    [v6 setEffect_];

    v3 = v6;
  }

  v8 = *(v0 + 8);

  return v8();
}

Swift::Void __swiftcall MapView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);

  [v1 setHidden_];
}

Swift::Void __swiftcall MapView.showViews()()
{
  AssetView.showViews()();
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) setHidden_];
  MapView.handleBaseMapViewZoomRect()();
  if (MapView.shouldOnlyShowBaseMap.getter())
  {
    [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView) setHidden_];
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);

    [v1 setHidden_];
  }

  else
  {
    MapView.handleLabelUpdate()();
    MapView.handleLabelFontAndText()();
    (*((*MEMORY[0x277D85000] & *v0) + 0x168))();

    MapView.handleGradientUpdate()();
  }
}

Swift::Void __swiftcall MapView.handleBaseMapViewZoomRect()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v10);
  if (v10 == 7 || v10 == 0)
  {
    v5 = (*((*v2 & *v0) + 0x70))(v3);
    if (v5)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && ((*(v8 + 64))(ObjectType, v8) & 1) != 0)
      {
        v9 = [*(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) layer];
        destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
        [v9 setContentsRect_];

        goto LABEL_13;
      }
    }

    v9 = [*(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) layer];
  }

  else
  {
    v9 = [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) layer];
  }

  destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
  [v9 setContentsRect_];
LABEL_13:
}

uint64_t MapView.shouldOnlyShowBaseMap.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v3 = v2();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  (*((*v1 & *v3) + 0xD0))();
  v6 = v5;

  if (!v6)
  {
    return 1;
  }

  result = (v2)(v7);
  if (result)
  {
    v9 = result;
    v10 = (*((*v1 & *result) + 0xD0))();
    v12 = v11;

    if (v12)
    {

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      return v13 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall MapView.handleLabelUpdate()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v5);
  if (v5 > 5u)
  {
    if (v5 == 6)
    {
      [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView) setHidden_];
      [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView) setHidden_];
      return;
    }

    if (v5 != 7)
    {
LABEL_11:
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
      [v4 setNumberOfLines_];
      [v4 setHidden_];
      return;
    }

LABEL_6:
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
    v3 = 1;
    goto LABEL_7;
  }

  if (v5 - 3 >= 3)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
  [v1 setNumberOfLines_];
  v2 = v1;
  v3 = 0;
LABEL_7:

  [v2 setHidden_];
}

Swift::Void __swiftcall MapView.handleLabelFontAndText()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v3)
  {
    return;
  }

  v59 = v3;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v4;
    (*((*v2 & *v0) + 0x88))(&v61);
    if (v61 <= 2u)
    {
      if (v61 == 1)
      {
        v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v26 setAttributedText_];
        ObjectType = swift_getObjectType();
        v32 = (*(*(v5 + 8) + 8))(ObjectType);
        if (v33)
        {
          v34 = MEMORY[0x21CE91FC0](v32);
        }

        else
        {
          v34 = 0;
        }

        [v26 setText_];

        specialized static CommonTheme.Font.caption1BoldTightLeading.getter();
        v44 = v48;
LABEL_37:
        [v26 setFont_];
LABEL_44:

LABEL_45:
        return;
      }

      if (v61 == 2)
      {
        v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v12 setAttributedText_];
        v13 = swift_getObjectType();
        v14 = (*(*(v5 + 8) + 8))(v13);
        if (v15)
        {
          v16 = MEMORY[0x21CE91FC0](v14);
        }

        else
        {
          v16 = 0;
        }

        [v12 setText_];

        v45 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
        v46 = [v45 fontDescriptorWithSymbolicTraits_];

        if (v46)
        {
          v47 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];
        }

        else
        {
          v47 = 0;
        }

        [v12 setFont_];

        goto LABEL_45;
      }
    }

    else
    {
      if (v61 - 3 < 3)
      {
        v6 = MapView.formattedOneLineText.getter();
        if (v7)
        {
          specialized MapView.attributedStringWithSeparator(_:separator:)(v6, v7, 10649826, 0xA300000000000000);
          v9 = v8;

          if (v9)
          {
            v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
            v11 = v9;
            [v10 setAttributedText_];

            goto LABEL_24;
          }
        }

        v17 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v17 setAttributedText_];
        v18 = MapView.formattedOneLineText.getter();
        if (v19)
        {
          v20 = MEMORY[0x21CE91FC0](v18);
        }

        else
        {
          v20 = 0;
        }

        [v17 setText_];

        v35 = objc_opt_self();
        v36 = [v35 preferredFontForTextStyle_];
        v37 = [v36 fontDescriptor];
        v38 = [v37 fontDescriptorWithSymbolicTraits_];

        if (v38)
        {
          v39 = [v35 fontWithDescriptor:v38 size:0.0];

          [v17 setFont_];
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_48;
      }

      if (v61 == 6)
      {
        v21 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v21 setAttributedText_];
        v22 = swift_getObjectType();
        v23 = (*(*(v5 + 8) + 8))();
        if (v24)
        {
          v25 = MEMORY[0x21CE91FC0](v23);
        }

        else
        {
          v25 = 0;
        }

        [v21 setText_];

        [v21 setNumberOfLines_];
        v49 = objc_opt_self();
        v50 = *MEMORY[0x277D76968];
        v51 = [v49 preferredFontForTextStyle_];
        v52 = [v51 fontDescriptor];
        v53 = [v52 fontDescriptorWithSymbolicTraits_];

        if (!v53)
        {
          goto LABEL_49;
        }

        v54 = [v49 fontWithDescriptor:v53 size:0.0];

        [v21 setFont_];
        v55 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView);
        v56 = (*(v5 + 24))(v22, v5);
        if (v57)
        {
          v58 = MEMORY[0x21CE91FC0](v56);
        }

        else
        {
          v58 = 0;
        }

        [v55 setText_];

        [v55 setNumberOfLines_];
        v44 = [v49 preferredFontForTextStyle_];
        [v55 setFont_];
        goto LABEL_44;
      }
    }

    v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
    [v26 setAttributedText_];
    v27 = swift_getObjectType();
    v28 = (*(*(v5 + 8) + 8))(v27);
    if (v29)
    {
      v30 = MEMORY[0x21CE91FC0](v28);
    }

    else
    {
      v30 = 0;
    }

    [v26 setText_];

    v40 = objc_opt_self();
    v41 = [v40 preferredFontForTextStyle_];
    v42 = [v41 fontDescriptor];
    v43 = [v42 fontDescriptorWithSymbolicTraits_];

    if (!v43)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v44 = [v40 fontWithDescriptor:v43 size:0.0];

    goto LABEL_37;
  }

LABEL_24:
}

Swift::Void __swiftcall MapView.handleGradientUpdate()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1((&v5 + 1));
  if (BYTE1(v5) <= 2u)
  {
    if (BYTE1(v5) - 1 < 2)
    {
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView);
      [v4 setHidden_];
      v2 = [v4 _setCornerRadius_];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (BYTE1(v5) - 3 < 4)
  {
    [v0 handleTraitChange];
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView);
    [v3 setHidden_];
    v2 = [v3 _setCornerRadius_];
    goto LABEL_8;
  }

  if (BYTE1(v5) == 7)
  {
LABEL_7:
    v2 = [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView) setHidden_];
  }

LABEL_8:
  (v1)(&v5, v2);
  if (v5 - 1 > 1)
  {

    [v0 handleTraitChange];
  }

  else
  {

    MapView.updateGradient()();
  }
}

uint64_t MapView.updateData()()
{
  v1[8] = v0;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](MapView.updateData(), v3, v2);
}

{
  v66 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 64)) + 0x70))();
  *(v0 + 96) = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  *(v0 + 104) = v4;
  if (!v4)
  {

LABEL_10:

    goto LABEL_11;
  }

  v5 = v4;
  *(v0 + 112) = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
  *(v0 + 120) = swift_getObjectType();
  v6 = (*(v5 + 48))();
  *(v0 + 128) = v6;
  if (v6)
  {
    v7 = *(v0 + 64);
    (*((*v1 & *v7) + 0x88))();
    *(v0 + 202) = *(v0 + 201);
    v8 = [v7 traitCollection];
    v9 = [v8 userInterfaceStyle];

    v10 = (*((*v1 & *v7) + 0xD8))();
    v11 = *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
    *(v0 + 136) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = MapView.updateData();
    v14 = (v0 + 202);
    v15 = v9;
    v16 = v10;
    v17 = v11;
LABEL_5:

    return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(v14, v15, v16, v17, 0x6144657461647075, 0xEC00000029286174);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 104);
  [*(v0 + 112) setImage_];
  if ((*(v21 + 64))(v20, v21))
  {
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    v24 = *(v0 + 64);

    [*(v24 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView) setHidden_];
    MapView.handleMultiPinMap(_:)(v22, v23);
    v25 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
    result = swift_beginAccess();
    v26 = *(v24 + v25);
    if (v26 >> 62)
    {
      result = __CocoaSet.count.getter();
      v27 = result;
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_17:
        if (v27 >= 1)
        {

          for (i = 0; i != v27; ++i)
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x21CE93180](i, v26);
            }

            else
            {
              v29 = *(v26 + 8 * i + 32);
            }

            v30 = v29;
            [v29 setHidden_];
          }

          v39 = *(v0 + 96);

          goto LABEL_11;
        }

        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }
    }

    goto LABEL_11;
  }

  v31 = *(v0 + 64);
  v32 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  result = swift_beginAccess();
  v33 = *(v31 + v32);
  if (v33 >> 62)
  {
    result = __CocoaSet.count.getter();
    v34 = result;
    v35 = &unk_27821E000;
    if (!result)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = &unk_27821E000;
    if (!v34)
    {
      goto LABEL_33;
    }
  }

  if (v34 < 1)
  {
    goto LABEL_43;
  }

  for (j = 0; j != v34; ++j)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x21CE93180](j, v33);
    }

    else
    {
      v37 = *(v33 + 8 * j + 32);
    }

    v38 = v37;
    [v37 v35[450]];
  }

LABEL_33:
  v40 = *(v0 + 120);
  v41 = *(v0 + 104);
  v42 = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);
  *(v0 + 160) = v42;
  [v42 v35[450]];
  v43 = (*(v41 + 40))(v40, v41);
  *(v0 + 168) = v43;
  if (v43)
  {
    v44 = *(v0 + 96);
    v45 = *(v0 + 64);
    v46 = (*((*v1 & *v45) + 0x88))();
    v47 = (*((*v1 & *v45) + 0xD8))(v46);
    v48 = *(v44 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
    *(v0 + 176) = v48;
    v49 = v48;
    v50 = swift_task_alloc();
    *(v0 + 184) = v50;
    *v50 = v0;
    v50[1] = MapView.updateData();
    v14 = (v0 + 200);
    v15 = 1;
    v16 = v47;
    v17 = v48;
    goto LABEL_5;
  }

  v51 = *(v0 + 120);
  v52 = *(v0 + 104);
  (*((*v1 & **(v0 + 160)) + 0xB8))(0);
  (*(v52 + 56))(v64, v51, v52);
  if ((v65 & 1) == 0)
  {
    v53 = *(v0 + 160);
    v54 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v64[0] green:v64[1] blue:v64[2] alpha:v64[3]];
    v55 = *(v53 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    v56 = v54;
    v57 = [v55 layer];
    v58 = [v56 CGColor];
    [v57 setBackgroundColor_];

    v59 = [*(v53 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
    v60 = [v56 CGColor];
    [v59 setBackgroundColor_];
  }

  v61 = *(v0 + 160);
  v62 = *(v0 + 96);
  v63 = (*(*(v0 + 104) + 32))(*(v0 + 120));
  (*(*v63 + 240))(v64);

  (*((*v1 & *v61) + 0xD0))(LOBYTE(v64[0]) != 3);

LABEL_11:
  v19 = *(v0 + 8);

  return v19();
}

{
  v51 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  [*(v0 + 112) setImage_];

  if ((*(v3 + 64))(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 64);

    [*(v6 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView) setHidden_];
    MapView.handleMultiPinMap(_:)(v4, v5);
    v7 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
    result = swift_beginAccess();
    v9 = *(v6 + v7);
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
      v10 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 >= 1)
        {

          for (i = 0; i != v10; ++i)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x21CE93180](i, v9);
            }

            else
            {
              v12 = *(v9 + 8 * i + 32);
            }

            v13 = v12;
            [v12 setHidden_];
          }

          v22 = *(v0 + 96);

          goto LABEL_29;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }
    }

    v22 = *(v0 + 96);
LABEL_29:

    v48 = *(v0 + 8);

    return v48();
  }

  v14 = *(v0 + 64);
  v15 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  result = swift_beginAccess();
  v16 = *(v14 + v15);
  if (v16 >> 62)
  {
    result = __CocoaSet.count.getter();
    v17 = result;
    v18 = &unk_27821E000;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = &unk_27821E000;
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  if (v17 < 1)
  {
    goto LABEL_35;
  }

  for (j = 0; j != v17; ++j)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x21CE93180](j, v16);
    }

    else
    {
      v20 = *(v16 + 8 * j + 32);
    }

    v21 = v20;
    [v20 v18[450]];
  }

LABEL_20:
  v23 = *(v0 + 120);
  v24 = *(v0 + 104);
  v25 = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);
  *(v0 + 160) = v25;
  [v25 v18[450]];
  v26 = (*(v24 + 40))(v23, v24);
  *(v0 + 168) = v26;
  if (!v26)
  {

    v35 = *(v0 + 120);
    v36 = *(v0 + 104);
    v37 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & **(v0 + 160)) + 0xB8))(0);
    (*(v36 + 56))(v49, v35, v36);
    if ((v50 & 1) == 0)
    {
      v38 = *(v0 + 160);
      v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v49[0] green:v49[1] blue:v49[2] alpha:v49[3]];
      v40 = *(v38 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
      v41 = v39;
      v42 = [v40 layer];
      v43 = [v41 CGColor];
      [v42 setBackgroundColor_];

      v44 = [*(v38 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
      v45 = [v41 CGColor];
      [v44 setBackgroundColor_];
    }

    v46 = *(v0 + 160);
    v22 = *(v0 + 96);
    v47 = (*(*(v0 + 104) + 32))(*(v0 + 120));
    (*(*v47 + 240))(v49);

    (*((*v37 & *v46) + 0xD0))(LOBYTE(v49[0]) != 3);
    goto LABEL_29;
  }

  v27 = *(v0 + 96);
  v28 = *(v0 + 64);
  v29 = MEMORY[0x277D85000];
  v30 = (*((*MEMORY[0x277D85000] & *v28) + 0x88))();
  v31 = (*((*v29 & *v28) + 0xD8))(v30);
  v32 = *(v27 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  *(v0 + 176) = v32;
  v33 = v32;
  v34 = swift_task_alloc();
  *(v0 + 184) = v34;
  *v34 = v0;
  v34[1] = MapView.updateData();

  return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 200), 1, v31, v32, 0x6144657461647075, 0xEC00000029286174);
}

{
  v19 = v0;

  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & **(v0 + 160)) + 0xB8))(*(v0 + 192));
  (*(v2 + 56))(v17, v1, v2);
  if ((v18 & 1) == 0)
  {
    v4 = *(v0 + 160);
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v17[0] green:v17[1] blue:v17[2] alpha:v17[3]];
    v6 = *(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    v7 = v5;
    v8 = [v6 layer];
    v9 = [v7 CGColor];
    [v8 setBackgroundColor_];

    v10 = [*(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
    v11 = [v7 CGColor];
    [v10 setBackgroundColor_];
  }

  v12 = *(v0 + 160);
  v13 = *(v0 + 96);
  v14 = (*(*(v0 + 104) + 32))(*(v0 + 120));
  (*(*v14 + 240))(v17);

  (*((*v3 & *v12) + 0xD0))(LOBYTE(v17[0]) != 3);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t MapView.updateData()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 152) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](MapView.updateData(), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 192) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](MapView.updateData(), v6, v5);
}

void MapView.handleMultiPinMap(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 64))(ObjectType, a2))
  {
    v6 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
    v7 = v6((&v11 + 1));
    if (BYTE1(v11) > 7u || ((1 << SBYTE1(v11)) & 0x83) == 0)
    {
      (v6)(&v11, v7);
      v9 = (*(a2 + 16))(ObjectType, a2);
      v10 = static MapsUtilities.canFitIn(viewStyle:mapViewModels:)(&v11, v9);

      if (v10 == 2 || (v10 & 1) == 0)
      {
        MapView.renderSingleConsolidatedPin(_:)(a1, a2);
      }

      else
      {
        MapView.renderMultiplePins(_:)(a1, a2);
      }
    }

    else
    {

      MapView.renderSingleConsolidatedPin(_:)(a1, a2);
    }
  }
}

Swift::Void __swiftcall MapView.setMultiPinAnnotations(isHidden:)(Swift::Bool isHidden)
{
  v3 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CE93180](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setHidden_];
    }
  }
}

uint64_t MapView.updateAndShowViews()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = MapView.updateAndShowViews();

  return v5();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MapView.updateAndShowViews(), v1, v0);
}

{
  v1 = *(v0 + 16);

  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v2);
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall MapView.updateDynamicConstraints()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v3)
  {
    return;
  }

  v118 = v3;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && ((*((*v2 & *v118) + 0x1D8))() & 1) != 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);
    isa = [v4 constraints];
    if (!isa)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v4 removeConstraints_];

    v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView);
    v7 = [v6 constraints];
    if (!v7)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v6 removeConstraints_];

    v8 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
    v9 = [v6 constraints];
    if (!v9)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v8 removeConstraints_];

    v116 = *((*v2 & *v1) + 0x88);
    v116((&v119 + 2));
    v117 = v6;
    if (BYTE2(v119) - 3 < 2)
    {
      v17 = [v4 widthAnchor];
      v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
      v18 = [v11 heightAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 multiplier:0.2];

      [v19 setActive_];
      v14 = [v4 heightAnchor];
      v15 = [v11 heightAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.2];
    }

    else
    {
      if (!BYTE2(v119))
      {
        v20 = [v4 widthAnchor];
        v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
        v21 = [v11 heightAnchor];
        v22 = [v20 constraintEqualToAnchor:v21 multiplier:0.6];

        [v22 setActive_];
        v23 = [v4 heightAnchor];
        v24 = [v11 heightAnchor];
        v25 = [v23 constraintEqualToAnchor:v24 multiplier:0.6];

        [v25 setActive_];
        v26 = &selRef_centerYAnchor;
        goto LABEL_21;
      }

      if (BYTE2(v119) == 6)
      {
        v10 = [v4 widthAnchor];
        v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
        v12 = [v11 heightAnchor];
        v13 = [v10 constraintEqualToAnchor:v12 multiplier:0.25];

        [v13 setActive_];
        v14 = [v4 heightAnchor];
        v15 = [v11 heightAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.25];
      }

      else
      {
        v27 = [v4 widthAnchor];
        v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
        v28 = [v11 heightAnchor];
        v29 = [v27 constraintEqualToAnchor:v28 multiplier:0.4];

        [v29 setActive_];
        v14 = [v4 heightAnchor];
        v15 = [v11 heightAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.4];
      }
    }

    v30 = v16;

    [v30 setActive_];
    v26 = &selRef_bottomAnchor;
LABEL_21:
    v31 = [v4 centerXAnchor];
    v32 = [v11 centerXAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    [v33 &selRef:1 setPrefetchDataSource:?];
    v34 = [v4 *v26];
    v35 = [v11 centerYAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    [v36 &selRef:1 setPrefetchDataSource:?];
    v116((&v119 + 1));
    v115 = v1;
    if (BYTE1(v119) > 5u)
    {
      if (BYTE1(v119) == 6)
      {
        v95 = [v6 superview];
        if (v95)
        {
          v96 = v95;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v97 = [v6 bottomAnchor];
          v98 = [v96 bottomAnchor];
          v99 = [v97 constraintEqualToAnchor_];

          if (v99)
          {
            [v99 setConstant_];
            [v99 setActive_];
          }
        }

        v100 = [v6 superview];
        if (v100)
        {
          v101 = v100;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v102 = [v6 centerXAnchor];
          v103 = [v101 centerXAnchor];
          v104 = [v102 constraintEqualToAnchor_];

          [v104 setConstant_];
          [v104 setActive_];
        }

        v105 = [v6 superview];
        if (v105)
        {
          v106 = v105;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v107 = [v6 leadingAnchor];
          v108 = [v106 leadingAnchor];
          v109 = [v107 constraintGreaterThanOrEqualToAnchor_];

          [v109 setConstant_];
          [v109 setActive_];
        }

        v110 = [v6 superview];
        if (v110)
        {
          v111 = v110;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v112 = [v6 trailingAnchor];
          v113 = [v111 trailingAnchor];
          v114 = [v112 constraintLessThanOrEqualToAnchor_];

          [v114 setConstant_];
          if (v114)
          {
            [v114 setActive_];

            v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
            goto LABEL_44;
          }
        }

        v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        goto LABEL_44;
      }
    }

    else
    {
      if (BYTE1(v119) - 3 < 3)
      {
        v37 = [v6 superview];
        v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (v37)
        {
          v39 = v37;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v40 = [v6 bottomAnchor];
          v41 = [v39 bottomAnchor];
          v42 = [v40 constraintEqualToAnchor_];

          if (v42)
          {
            [v42 setConstant_];
            [v42 &selRef:1 setPrefetchDataSource:?];
          }
        }

        v43 = [v6 superview];
        if (v43)
        {
          v44 = v43;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v45 = [v6 leadingAnchor];
          v46 = [v44 leadingAnchor];
          v47 = [v45 constraintEqualToAnchor_];

          [v47 setConstant_];
          [v47 &selRef:1 setPrefetchDataSource:?];
        }

        v48 = [v6 superview];
        v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (!v48)
        {
          goto LABEL_45;
        }

        v50 = v48;
        [v117 setTranslatesAutoresizingMaskIntoConstraints_];
        v51 = [v117 trailingAnchor];
        v52 = [v50 trailingAnchor];
        v53 = [v51 constraintEqualToAnchor_];

        [v53 setConstant_];
        goto LABEL_42;
      }

      if (BYTE1(v119) - 1 < 2)
      {
        v54 = [v6 topAnchor];
        v55 = [v11 centerYAnchor];
        v56 = [v54 constraintEqualToAnchor_];

        v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        [v56 &selRef:1 setPrefetchDataSource:?];

        v57 = [v6 superview];
        if (v57)
        {
          v58 = v57;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v59 = [v6 bottomAnchor];
          v60 = [v58 bottomAnchor];
          v61 = [v59 constraintEqualToAnchor_];

          if (v61)
          {
            [v61 setConstant_];
            [v61 &selRef:1 setPrefetchDataSource:?];
          }
        }

        v62 = [v6 superview];
        if (v62)
        {
          v63 = v62;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v64 = [v6 leadingAnchor];
          v65 = [v63 leadingAnchor];
          v66 = [v64 constraintEqualToAnchor_];

          [v66 setConstant_];
          [v66 &selRef:1 setPrefetchDataSource:?];
        }

        v67 = [v6 superview];
        v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (!v67)
        {
          goto LABEL_45;
        }

        v50 = v67;
        [v117 setTranslatesAutoresizingMaskIntoConstraints_];
        v68 = [v117 trailingAnchor];
        v69 = [v50 trailingAnchor];
        v53 = [v68 constraintEqualToAnchor_];

        [v53 setConstant_];
LABEL_42:
        [v53 &selRef:1 setPrefetchDataSource:?];

LABEL_45:
        v70 = [v8 leadingAnchor];
        v71 = [v117 leadingAnchor];
        v72 = [v70 constraintEqualToAnchor:v71 constant:8.0];

        [v72 v38[8]];
        v73 = [v8 trailingAnchor];
        v74 = [v117 trailingAnchor];
        v75 = [v73 constraintEqualToAnchor:v74 constant:-8.0];

        [v75 v38[8]];
        v76 = [v8 topAnchor];
        v77 = [v117 topAnchor];
        v78 = [v76 constraintEqualToAnchor:v77 constant:8.0];

        [v78 v38[8]];
        v116(&v119);
        v79 = v119;
        v80 = [v8 v49[15]];
        if (v79 == 6)
        {
          v81 = *(v115 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView);
          v82 = [v81 topAnchor];
          v83 = [v80 &selRef:v82 setZPosition:0.0 + 6];

          [v83 v38[8]];
          v84 = [v81 leadingAnchor];
          v85 = [v8 leadingAnchor];
          v86 = [v84 constraintEqualToAnchor_];

          [v86 v38[8]];
          v87 = [v81 trailingAnchor];
          v88 = [v8 trailingAnchor];
          v89 = [v87 constraintEqualToAnchor_];

          [v89 v38[8]];
          v90 = [v81 v49[15]];
          v91 = [v117 v49[15]];
          v92 = [v90 &selRef:v91 setZPosition:-8.0 + 6];

          [v92 v38[8]];
        }

        else
        {
          v93 = [v117 v49[15]];
          v94 = [v80 &selRef:v93 setZPosition:-8.0 + 6];

          [v94 v38[8]];
        }

        return;
      }
    }

    v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
LABEL_44:
    v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    goto LABEL_45;
  }
}

id MapView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MapView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView);
}

id MapView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance MapView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 344))(a1, &v6);
  *a3 = result;
  return result;
}

void protocol witness for AssetViewBase.configureFallback() in conformance MapView()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

Swift::Void __swiftcall MapView.updateGradient()()
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v41 = v6;
    *v5 = 136315138;
    [v2 frame];
    v7 = CGRect.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v41);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21607C000, v3, v4, "[MapView] updateGradient with frame: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
  [v10 setStartPoint_];
  destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
  [v10 setEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2165965F0;
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  v16 = [v15 CGColor];

  type metadata accessor for CGColorRef(0);
  v18 = v17;
  *(v13 + 56) = v17;
  *(v13 + 32) = v16;
  v19 = [v14 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v20 CGColor];
  *(v13 + 88) = v18;
  *(v13 + 64) = v21;
  v22 = [v14 whiteColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = [v23 CGColor];
  *(v13 + 120) = v18;
  *(v13 + 96) = v24;
  v25 = [v14 whiteColor];
  v26 = [v25 colorWithAlphaComponent_];

  v27 = [v26 CGColor];
  *(v13 + 152) = v18;
  *(v13 + 128) = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_216590220;
  *(v29 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setLocations_];

  v31 = v10;
  [v2 frame];
  Width = CGRectGetWidth(v43);
  [v2 frame];
  [v31 setFrame_];
  v33 = *&v2[OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView];
  v34 = [v33 layer];
  [v34 setMask_];

  v35 = [v33 layer];
  [v35 setMasksToBounds_];

  v36 = objc_opt_self();
  v37 = [objc_opt_self() mainScreen];
  [v37 scale];
  v39 = v38;

  v40 = [v36 _effectWithBlurRadius_scale_];
  [v33 setEffect_];
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void *MapView.formattedOneLineText.getter(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x70))();
  if (result)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && (v9 = v8, v10 = (*(*(v8 + 8) + 8))(ObjectType), v11))
    {
      v12 = v10;
      v13 = (*(v9 + 24))(ObjectType, v9);
      if (v14)
      {
        v15 = v14;
        v16 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          v18 = v12;
          v17 = v13;

          MEMORY[0x21CE92100](a1, a2);

          MEMORY[0x21CE92100](v17, v15);

          return v18;
        }
      }

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void MapView.renderMultiplePins(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  if (!v6)
  {
    if (one-time initialization token for views != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_57;
  }

  v7 = v6;
  [v2 frame];
  Height = CGRectGetHeight(v107);
  [v2 frame];
  Width = CGRectGetWidth(v108);
  v10 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
  (v10)(v104);
  static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(v104, v7, Width, Height);
  v12 = v11;

  if (v12)
  {
    MapView.removeAllpins()();
    v13 = *(v12 + 16);
    v14 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
    swift_beginAccess();
    v15 = *&v3[v14];
    if (v15 >> 62)
    {
      goto LABEL_84;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v13 - v16;
    if (__OFSUB__(v13, v16))
    {
      goto LABEL_86;
    }

LABEL_5:
    v97 = v14;
    v98 = v12;
    v95 = v10;
    if (v17 >= 1)
    {
      v18 = *&v3[OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView];
      v19 = type metadata accessor for MultiPinMapPOIAnnotationView();
      v12 = &unk_27821E000;
      do
      {
        v20 = [objc_allocWithZone(v19) init];
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x21CE92260]();
        if (*((*&v3[v14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v97;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v13 = v21;
        [v18 addSubview_];
        [v13 setTranslatesAutoresizingMaskIntoConstraints_];

        --v17;
      }

      while (v17);
    }

    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI11MapLocationC_AC0E9ViewModel_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v10 = v98;
    v14 = v98[2];
    if (v14)
    {
      v23 = 0;
      v24 = v98 + 4;
      while (1)
      {
        if (v23 >= v10[2])
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        *oslog = *&v24[2 * v23];
        v26 = v24[2 * v23];
        v27 = swift_getObjectType();
        v12 = &oslog[1][4];
        isa = oslog[1][4].isa;
        v29 = v26;
        v30 = isa(v27, oslog[1]);
        v10 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v104[0] = v22;
        v13 = v22;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v34 = v22[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_79;
        }

        v12 = v33;
        if (v22[3] < v37)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v13 = v104;
        v41 = v32;
        specialized _NativeDictionary.copy()();
        v32 = v41;
        v22 = *&v104[0];
        if (v12)
        {
LABEL_12:
          v25 = v22[7];
          v13 = *(v25 + 16 * v32);
          *(v25 + 16 * v32) = *oslog;

          goto LABEL_13;
        }

LABEL_21:
        v22[(v32 >> 6) + 8] |= 1 << v32;
        *(v22[6] + 8 * v32) = v30;
        *(v22[7] + 16 * v32) = *oslog;

        v39 = v22[2];
        v36 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v36)
        {
          goto LABEL_80;
        }

        v22[2] = v40;
LABEL_13:
        ++v23;
        v10 = v98;
        if (v14 == v23)
        {
          goto LABEL_25;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
      v13 = *&v104[0];
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v12 & 1) != (v38 & 1))
      {
        type metadata accessor for MapLocation(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

LABEL_20:
      v22 = *&v104[0];
      if (v12)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_25:
    (v95)(v104);
    v42 = static MapsUtilities.normalizedPositionsWithin(viewStyle:mapViewModels:)(v104, v10);

    if (v42)
    {
      v43 = *&v3[v97];
      if (v43 >> 62)
      {
LABEL_89:
        v44 = __CocoaSet.count.getter();
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v44 == v42[2])
      {
        v12 = 0;
        v45 = 0;
        v10 = v42 + 8;
        v46 = 1 << *(v42 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & v42[8];
        v14 = (v46 + 63) >> 6;
        while (1)
        {
          while (1)
          {
            do
            {
              v13 = v12;
              if (!v48)
              {
                while (1)
                {
                  v66 = v45 + 1;
                  if (__OFADD__(v45, 1))
                  {
                    break;
                  }

                  if (v66 >= v14)
                  {

                    return;
                  }

                  v48 = v10[v66];
                  ++v45;
                  if (v48)
                  {
                    v45 = v66;
                    ++v12;
                    if (__OFADD__(v13, 1))
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_34;
                  }
                }

LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                v90 = __CocoaSet.count.getter();
                v17 = v13 - v90;
                if (!__OFSUB__(v13, v90))
                {
                  goto LABEL_5;
                }

LABEL_86:
                __break(1u);
LABEL_87:
                swift_once();
LABEL_57:
                v79 = type metadata accessor for Logger();
                __swift_project_value_buffer(v79, static CommonLogger.views);
                osloga = Logger.logObject.getter();
                v80 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(osloga, v80))
                {
                  v81 = swift_slowAlloc();
                  *v81 = 0;
                  v82 = "[renderMultiplePins] ineligible map type";
                  goto LABEL_63;
                }

                goto LABEL_64;
              }

              ++v12;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_82;
              }

LABEL_34:
              v49 = (v42[7] + 16 * (__clz(__rbit64(v48)) | (v45 << 6)));
              v51 = *v49;
              v50 = v49[1];
              v52 = *&v3[v97];
              if (v52 >> 62)
              {
                v53 = __CocoaSet.count.getter();
                if ((v53 & 0x8000000000000000) != 0)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v48 &= v48 - 1;
            }

            while (v13 >= v53);
            if ((v52 & 0xC000000000000001) == 0)
            {
              break;
            }

            v55 = MEMORY[0x21CE93180](v13, v52);

            if (v22[2])
            {
              goto LABEL_40;
            }

LABEL_55:
          }

          if (v13 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_89;
          }

          v54 = *(v52 + 8 * v13 + 32);

          v55 = v54;
          if (!v22[2])
          {
            goto LABEL_55;
          }

LABEL_40:
          v99 = v55;

          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
          if (v58)
          {
            v93 = v12;
            v59 = v22[7] + 16 * v57;
            v60 = *(v59 + 8);
            v61 = *v59;

            v62 = v61;
            v91 = specialized MultiPinMapPOIAnnotationView.Style.init(from:)(v62, v60);
            v63 = swift_getObjectType();
            v96 = v62;
            v64 = (*(v60 + 16))(v63, v60);
            v65 = v64;
            v92 = v42;
            if (v64)
            {
              v94 = *(v64 + 16);
            }

            else
            {
              v94 = 0;
            }

            (*(v60 + 56))(v104, v63, v60);
            v102[0] = v104[0];
            v102[1] = v104[1];
            v103 = v105;
            v67 = (*(v60 + 40))(v63, v60);
            MultiPinMapPOIAnnotationView.update(style:count:countColor:poiIcon:)(v91, v94, v65 == 0, v102, v67);

            v68 = v99;
            [v68 setHidden_];
            [v68 setTranslatesAutoresizingMaskIntoConstraints_];
            v69 = [v68 widthAnchor];
            v70 = [v69 constraintEqualToConstant_];

            [v70 setActive_];
            [v68 setTranslatesAutoresizingMaskIntoConstraints_];
            v71 = [v68 heightAnchor];
            v72 = [v71 constraintEqualToConstant_];

            [v72 setActive_];
            v73 = [v68 centerXAnchor];
            v74 = [v3 leadingAnchor];
            v75 = [v73 constraintEqualToAnchor:v74 constant:Width * v51];

            [v75 setActive_];
            v76 = [v68 centerYAnchor];

            v77 = [v3 topAnchor];
            v78 = [v76 constraintEqualToAnchor:v77 constant:Height * v50];

            [v78 setActive_];

            v42 = v92;
            v12 = v93;
          }

          else
          {
          }
        }
      }

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static CommonLogger.views);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v85, v86))
      {
        goto LABEL_76;
      }

      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "[renderMultiplePins] mismatched normalized positions";
    }

    else
    {

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static CommonLogger.views);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v85, v86))
      {
        goto LABEL_76;
      }

      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "[renderMultiplePins] could not compute normalized positions";
    }

    _os_log_impl(&dword_21607C000, v85, v86, v88, v87, 2u);
    MEMORY[0x21CE94770](v87, -1, -1);
LABEL_76:

    return;
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  __swift_project_value_buffer(v83, static CommonLogger.views);
  osloga = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "[renderMultiplePins] no consolidatedViewModels";
LABEL_63:
    _os_log_impl(&dword_21607C000, osloga, v80, v82, v81, 2u);
    MEMORY[0x21CE94770](v81, -1, -1);
  }

LABEL_64:
}

void MapView.renderSingleConsolidatedPin(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = v6(ObjectType, a2);
  if (!v7)
  {
    if (one-time initialization token for views == -1)
    {
LABEL_14:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static CommonLogger.views);
      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21607C000, oslog, v23, "[renderSingleConsolidatedPin] ineligible count", v24, 2u);
        MEMORY[0x21CE94770](v24, -1, -1);
      }

      return;
    }

LABEL_45:
    swift_once();
    goto LABEL_14;
  }

  v8 = *(v7 + 16);

  MapView.removeAllpins()();
  v9 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (__CocoaSet.count.getter() <= 0)
  {
LABEL_4:
    MapView.createMultiPinImageView()();
  }

LABEL_5:
  v11 = *(v2 + v9);
  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x21CE93180](0, v11);

LABEL_10:
      v13 = v6(ObjectType, a2);
      v14 = 0.0;
      if (v13)
      {
        if (*(v13 + 16))
        {
          v15 = *(v13 + 40);
          v16 = *(v13 + 32);

          v17 = swift_getObjectType();
          (*(v15 + 56))(v55, v17, v15);

          v14 = *v55;
          v18 = *&v55[1];
          v19 = *&v55[2];
          v20 = *&v55[3];
          v21 = v56;
LABEL_21:
          v25 = MEMORY[0x277D85000];
          (*((*MEMORY[0x277D85000] & *v12) + 0x80))(1);
          if ((v21 & 1) == 0)
          {
            v26 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel;
            [*(v12 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel) setHidden_];
            v27 = *(v12 + v26);
            v55[0] = v8;
            v28 = dispatch thunk of CustomStringConvertible.description.getter();
            v29 = MEMORY[0x21CE91FC0](v28);

            [v27 setText_];

            v30 = *(v12 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView);
            v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v14 green:v18 blue:v19 alpha:v20];
            [v30 setBackgroundColor_];

            [*(v12 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView) setImage_];
          }

          v32 = v12;
          (*((*v25 & *v3) + 0x88))(v55, [v32 setHidden_]);
          if (LOBYTE(v55[0]) != 7 && LOBYTE(v55[0]))
          {
            v38 = [v32 bottomAnchor];

            v39 = [v3 centerYAnchor];
            v40 = [v38 constraintEqualToAnchor_];

            [v40 setActive_];
          }

          else
          {

            v33 = [v32 superview];
            if (v33)
            {
              v34 = v33;
              [v32 setTranslatesAutoresizingMaskIntoConstraints_];
              v35 = [v32 centerYAnchor];
              v36 = [v34 centerYAnchor];
              v37 = [v35 constraintEqualToAnchor_];

              [v37 setConstant_];
              if (v37)
              {
                [v37 setActive_];
              }
            }
          }

          v41 = [v32 superview];
          if (v41)
          {
            v42 = v41;
            [v32 setTranslatesAutoresizingMaskIntoConstraints_];
            v43 = [v32 centerXAnchor];
            v44 = [v42 centerXAnchor];
            v45 = [v43 constraintEqualToAnchor_];

            [v45 setConstant_];
            if (v45)
            {
              [v45 setActive_];
            }
          }

          [v32 setTranslatesAutoresizingMaskIntoConstraints_];
          v46 = [v32 widthAnchor];
          v47 = [v46 constraintEqualToConstant_];

          [v47 setActive_];
          [v32 setTranslatesAutoresizingMaskIntoConstraints_];
          v48 = [v32 heightAnchor];
          v49 = [v48 constraintEqualToConstant_];

          [v49 setActive_];
          return;
        }
      }

      v21 = 1;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      goto LABEL_21;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static CommonLogger.views);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_21607C000, v51, v52, "[renderSingleConsolidatedPin] no re-usable views", v53, 2u);
    MEMORY[0x21CE94770](v53, -1, -1);
  }
}

Swift::Void __swiftcall MapView.removeAllpins()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v0 + v1) = MEMORY[0x277D84F90];

    return;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
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
        v5 = MEMORY[0x21CE93180](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      [v5 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void MapView.createMultiPinImageView()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for MultiPinMapPOIAnnotationView()) init];
  v3 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v4 = v2;
  MEMORY[0x21CE92260]();
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
  v6 = v4;
  [v5 addSubview_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
}

void specialized MapView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for MapPOIAnnotationView()) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v3) = v5;
  v6 = OBJC_IVAR____TtC9MomentsUI7MapView_labelView;
  *(v0 + v6) = closure #1 in variable initialization expression of MapView.labelView();
  v7 = OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView;
  *(v0 + v7) = closure #1 in variable initialization expression of MapView.labelView();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in MapView.handleTraitLight()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MapView.handleTraitLight()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MapView.handleTraitDark()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MapView.handleTraitDark()(a1, v4, v5, v6);
}

void specialized MapView.attributedStringWithSeparator(_:separator:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = String.subscript.getter();
    specialized Collection<>.firstIndex(of:)(v7, v8, a1, a2);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v29 = String.distance(from:to:)();
      v28 = String.distance(from:to:)();
      v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v12 = MEMORY[0x21CE91FC0](a1, a2);
      v13 = [v11 initWithString_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658CA50;
      v15 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v16 = objc_opt_self();
      v17 = *MEMORY[0x277D76968];
      v27 = v15;
      v18 = [v16 preferredFontForTextStyle_];
      v19 = [v18 fontDescriptor];
      v20 = [v19 fontDescriptorWithSymbolicTraits_];

      if (v20)
      {
        v21 = [v16 fontWithDescriptor:v20 size:0.0];

        v22 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
        *(inited + 64) = v22;
        *(inited + 40) = v21;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v13 addAttributes:isa range:{0, v29}];

        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_21658CA50;
        *(v24 + 32) = v27;
        v25 = [v16 preferredFontForTextStyle_];
        *(v24 + 64) = v22;
        *(v24 + 40) = v25;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v24);
        swift_setDeallocating();
        outlined destroy of (NSAttributedStringKey, Any)(v24 + 32);
        v26 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v13 addAttributes:v26 range:{v29, v28}];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t dispatch thunk of MapView.updateData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterImage(imageSource:outputURL:);

  return v5();
}

void CloudSyncAssetData.assetClass.setter(_BYTE *a1)
{
  if (*a1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 98;
  }

  v3 = MEMORY[0x21CE91FC0](v2, 0xE100000000000000);

  [v1 setProtectionClass_];
}

void CloudSyncAssetData.ckAsset.setter(void *a1)
{
  [v1 setCkAssetData_];
}

void CloudSyncAssetData.assetClass.getter(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 protectionClass];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    v21 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudSyncAssetData.assetClass.getter, v20);

    v22 = v21 == 1;
  }

  else
  {
    v23 = [v2 filePath];
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = a1;

      (*(v12 + 56))(v10, 1, 1, v11);
      (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
      a1 = v30;
      URL.init(filePath:directoryHint:relativeTo:)();
      v25 = URL.pathExtension.getter();
      v27 = v26;
      (*(v12 + 8))(v14, v11);

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      v22 = v28 != 0;
    }

    else
    {
      v22 = 0;
    }
  }

  *a1 = v22;
}