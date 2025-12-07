Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v5);
        v19 = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v40, v14, v6, v2, v50);

      MEMORY[0x266773120](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 9) | (8 * v29)));
      Hasher.init(_seed:)();
      v2 = v49;
      MEMORY[0x266772770](v5);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = specialized _NativeSet.extractSubset(using:count:)(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    outlined consume of [String : GeomPropDef].Iterator._Variant(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x266773120](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    outlined consume of [String : GeomPropDef].Iterator._Variant(v13);
    return v5;
  }

  result = MEMORY[0x266773120](v50, -1, -1);
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v17);
    result = Hasher._finalize()();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5();
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v17;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v15 = v9;
    a1(&v16, &v15);
    if (v3)
    {
      break;
    }

    v10 = v16;
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      v14 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v10 = v14;
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 16 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized MetalStitchingBackend.specializeGetter(for:field:offset:library:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7)
{
  v46 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MetalStitchingBackend.typeToLookupFunctionMap;
  if (*(static MetalStitchingBackend.typeToLookupFunctionMap + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = v16[1];
    v42 = *v16;
    swift_endAccess();
    v18 = lazy protocol witness table accessor for type String and conformance String();

    v19 = MEMORY[0x277D837D0];
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v45 = v20;
    v40 = v18;
    v41 = v18;
    v38 = v19;
    v39 = v18;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v23 = v22;

    v24 = *(a1 + 32);
    v44 = *(a1 + 24);
    v45 = v24;

    MEMORY[0x266771550](95, 0xE100000000000000);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v25);

    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v21, v23);

    a1 = v44;
    v26 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
    v27 = MEMORY[0x266771450](v44, v45);
    [v26 setSpecializedName_];

    v28 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
    [v26 setConstantValues_];

    v29 = MEMORY[0x266771450](v42, v17);

    [v26 setName_];

    LODWORD(v44) = a6;
    v30 = [v26 constantValues];
    if (v30)
    {
      v31 = v30;
      [v30 setConstantValue:&v44 type:33 atIndex:100];
    }

    MetalStitchingBackend.makeFunction(_:descriptor:)(a7, v26);

    if (v7)
    {
    }
  }

  else
  {
    swift_endAccess();
    v32 = *(a1 + 32);
    v44 = *(a1 + 24);
    v45 = v32;

    MEMORY[0x266771550](46, 0xE100000000000000);
    MEMORY[0x266771550](a2, a3);
    v33 = MEMORY[0x266771550](10272, 0xE200000000000000);
    v34 = (*(*a4 + 136))(v33);
    MEMORY[0x266771550](v34);

    MEMORY[0x266771550](41, 0xE100000000000000);
    v35 = v45;
    lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
    swift_allocError();
    *v36 = v44;
    *(v36 + 8) = v35;
    *(v36 + 16) = 4;
    swift_willThrow();
  }

  return a1;
}

uint64_t type metadata accessor for MetalStitchingBackend(uint64_t a1)
{
  result = type metadata singleton initialization cache for MetalStitchingBackend;
  if (!type metadata singleton initialization cache for MetalStitchingBackend)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of MetalStitchingBackend(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetalStitchingBackend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph27MetalStitchingBackendErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t getEnumTagSinglePayload for MetalStitchingBackendErrors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalStitchingBackendErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MetalStitchingBackendErrors(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_265EFCD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for OSSignpostID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_265EFCEB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for OSSignpostID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata completion function for MetalStitchingBackend(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignpostID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

void *partial apply for closure #1 in closure #3 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(void *result, void **a2)
{
  if (!*result)
  {
    v3 = result;
    result = MetalStitchingBackend.makeFunction(_:name:)(*a2, *(v2 + 24), *(v2 + 32));
    *v3 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)()
{
  result = lazy protocol witness table cache variable for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:);
  if (!lazy protocol witness table cache variable for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:) and conformance ConstantKey #1 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:));
  }

  return result;
}

uint64_t OrderedSet.SubSequence._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedSet.SubSequence._base.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderedSet.SubSequence._bounds.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OrderedSet.SubSequence._index(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OrderedSet._find(_:)(a1, a2, a3, a6, a7);
  if (result < a4 || result >= a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  if ((v10 & 1) == 0)
  {
    return v13;
  }

  return result;
}

uint64_t OrderedSet.SubSequence._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = OrderedSet._find(_:)(a1, a2, a3, a6, a7);
  if (v9 < a5)
  {
    return (v9 >= a4) & ~v10;
  }

  else
  {
    return 0;
  }
}

uint64_t OrderedSet.SubSequence._copyToContiguousArray()(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  v5 = specialized OrderedSet.SubSequence._copyToContiguousArray()(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t OrderedSet.SubSequence._copyContents(initializing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Swift::Int a5@<X4>, Swift::Int a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v13 = 0;
  v14 = a5;
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  v17 = result;
  v27 = a3;
  specialized ContiguousArray.subscript.getter(a5, a6);
  v20 = v19;
  v29 = v22;
  v30 = v21;
  v28 = v23;
  v31 = &v26;
  MEMORY[0x28223BE20](v19);
  v25[2] = a7;
  v25[3] = a8;
  v25[4] = v17;
  v25[5] = a2;
  swift_unknownObjectRetain();
  _ss10ArraySliceV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet.SubSequence._copyContents(initializing:), v25, v20, v30, v29, v28, a7, MEMORY[0x277D83B88], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v24);
  result = swift_unknownObjectRelease();
  v13 = v32;
  v14 = a5 + v32;
  if (!__OFADD__(a5, v32))
  {
    a3 = v27;
LABEL_4:
    *a9 = a3;
    a9[1] = a4;
    a9[2] = a5;
    a9[3] = a6;
    a9[4] = v14;
    a9[5] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in OrderedSet.SubSequence._copyContents(initializing:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    if (a4 >= a2)
    {
      a4 = a2;
    }

    if (a4 < 1)
    {
      goto LABEL_7;
    }

    result = UnsafeBufferPointer.baseAddress.getter();
    if (result)
    {
      result = UnsafeMutablePointer.initialize(from:count:)();
LABEL_7:
      *a6 = a4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void _ss10ArraySliceV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v15, v16, v17, v18, v19, v20, v21, v22, a9, v23, v14);
  if (v11)
  {
    (*(v12 + 32))(a11, v14, a9);
  }
}

uint64_t OrderedSet.SubSequence.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, Swift::Int a6, uint64_t a7, uint64_t a8)
{
  specialized ContiguousArray.subscript.getter(a5, a6);
  swift_unknownObjectRetain();
  ArraySlice.withContiguousStorageIfAvailable<A>(_:)();
  return swift_unknownObjectRelease();
}

__n128 protocol witness for Sequence.makeIterator() in conformance OrderedSet<A>.SubSequence@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1->n128_u64[1];
  a1->n128_u64[0] = v1->n128_u64[0];
  a1->n128_u64[1] = v2;
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u64[0] = result.n128_u64[0];
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedSet<A>.SubSequence(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedSet<A>.SubSequence(uint64_t a1)
{
  v2 = specialized OrderedSet.SubSequence._copyToContiguousArray()(*v1, v1[1], v1[2], v1[3], *(a1 + 16));

  return v2;
}

__n128 protocol witness for Sequence._copyContents(initializing:) in conformance OrderedSet<A>.SubSequence(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OrderedSet.SubSequence._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], v4[3], *(a4 + 16), *(a4 + 24), v9);
  v6 = v9[1];
  v7 = v11;
  result = v10;
  a1->n128_u64[0] = v9[0];
  a1->n128_u64[1] = v6;
  a1[1] = result;
  a1[2].n128_u64[0] = v7;
  return result;
}

uint64_t OrderedSet.SubSequence.indices.getter(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  specialized ContiguousArray.subscript.getter(a3, a4);
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  return v6;
}

Swift::Int __swiftcall OrderedSet.SubSequence.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedSet.SubSequence.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedSet.SubSequence.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedSet.SubSequence.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedSet.SubSequence.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedSet.SubSequence.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  specialized ContiguousArray.subscript.getter(v3, v4);
  v10 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v10 > 0 || v10 <= offsetBy)
    {
LABEL_9:
      v8 = _ + offsetBy;
      if (!__OFADD__(_, offsetBy))
      {
        v9 = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v10 < 0 || v10 >= offsetBy)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = 1;
LABEL_13:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Int __swiftcall OrderedSet.SubSequence.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.SubSequence.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6)
{
  specialized ContiguousArray.subscript.getter(a4, a5);
  swift_unknownObjectRetain();
  ArraySlice.subscript.getter();

  return swift_unknownObjectRelease();
}

uint64_t OrderedSet.SubSequence.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, Swift::Int a6)
{
  if (a6 < a5)
  {
    __break(1u);
  }

  else
  {
    specialized ContiguousArray.subscript.getter(a5, a6);

    return a3;
  }

  return result;
}

uint64_t OrderedSet.SubSequence.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.SubSequence._customIndexOfEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OrderedSet._find(_:)(a1, a2, a3, a6, a7);
  if (result < a4 || result >= a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  if ((v10 & 1) == 0)
  {
    return v13;
  }

  return result;
}

uint64_t OrderedSet.SubSequence._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Swift::Int a6, Swift::Int a7, uint64_t a8)
{
  specialized ContiguousArray.subscript.getter(a6, a7);
  v14[1] = a3;
  v15 = a1;
  v14[0] = a2;
  v11 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v15, v14, v11, WitnessTable);
}

void (*protocol witness for Collection.subscript.read in conformance OrderedSet<A>.SubSequence(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  specialized OrderedSet.SubSequence._slice.getter(*v3, v3[1], v3[2], v3[3]);
  swift_unknownObjectRetain();
  ArraySlice.subscript.getter();
  swift_unknownObjectRelease();
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance OrderedSet<A>.SubSequence@<X0>(uint64_t *result@<X0>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v3;
    v7 = *v3;
    v8 = v9[1];
    v11 = *result;
    v10 = result[1];
    specialized OrderedSet.SubSequence._slice.getter(v7, v8, v4, v5);
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v11;
    a3[3] = v10;
  }

  return result;
}

double protocol witness for Collection.indices.getter in conformance OrderedSet<A>.SubSequence@<D0>(_OWORD *a2@<X8>)
{
  specialized OrderedSet.SubSequence._slice.getter(*v2, v2[1], v2[2], v2[3]);
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance OrderedSet<A>.SubSequence()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance OrderedSet<A>.SubSequence@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = OrderedSet.SubSequence._index(of:)(a1, *v3, v3[1], v3[2], v3[3], *(a2 + 16), *(a2 + 24));
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance OrderedSet<A>.SubSequence@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  specialized OrderedSet.SubSequence._slice.getter(*v5, v5[1], v5[2], v5[3]);
  result = specialized ContiguousArray.index(_:offsetBy:limitedBy:)(v8, a2, v9);
  *a5 = result;
  *(a5 + 8) = v11 & 1;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance OrderedSet<A>.SubSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  specialized OrderedSet.SubSequence._slice.getter(*v3, v3[1], v3[2], v3[3]);
  v10[1] = v6;
  v11 = v4;
  v10[0] = v5;
  v7 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v11, v10, v7, WitnessTable);
}

uint64_t static OrderedSet.SubSequence.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for OrderedSet.SubSequence(0, a9, a10, a4);
  swift_getWitnessTable();
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t OrderedSet.SubSequence.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16 - v15;
  if (__OFSUB__(v16, v15))
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = v14;
  result = MEMORY[0x266772770](result, v12);
  if (a4 == a5)
  {
    return result;
  }

  if (a4 >= a5)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v23 = (v11 + 8);
  v24 = a6;
  v19 = a4;
  v22[0] = v18;
  v22[1] = a1;
  do
  {
    specialized ContiguousArray.subscript.getter(a4, a5);
    swift_unknownObjectRetain();
    v20 = v22[0];
    v21 = v24;
    ArraySlice.subscript.getter();
    swift_unknownObjectRelease();
    ++v19;
    dispatch thunk of Hashable.hash(into:)();
    result = (*v23)(v20, v21);
  }

  while (a5 != v19);
  return result;
}

Swift::Int OrderedSet.SubSequence.hashValue.getter(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  OrderedSet.SubSequence.hash(into:)(v13, v11, a2, a3, a4, a5, a6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedSet<A>.SubSequence(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  OrderedSet.SubSequence.hash(into:)(v6, v4, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

void _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  v19.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v20 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v15 >> 1, v14))
  {
    __break(1u);
  }

  else
  {
    v17(v13 + *(*(v16 - 8) + 72) * v14, (v15 >> 1) - v14, &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    if (v11)
    {
      (*(v12 + 32))(a11, v20, a9);
    }
  }
}

uint64_t specialized OrderedSet.SubSequence._copyToContiguousArray()(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5)
{
  specialized ContiguousArray.subscript.getter(a3, a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_unknownObjectRetain();

  return MEMORY[0x2821FCD68](v12, v7, v9, v11, a5);
}

uint64_t type metadata instantiation function for OrderedSet.SubSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t MetalFunctionGraphError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 1)
  {
    if (*(v0 + 32))
    {

      _StringGuts.grow(_:)(42);
      MEMORY[0x266771550](0xD000000000000024, 0x8000000265F34520);
      MEMORY[0x266771550](v1, v2);
      outlined consume of MetalFunctionGraphError.ErrorType(v1, v2, v3, v4, 1);
      v11 = 8231;
      v12 = 0xE200000000000000;
    }

    else
    {

      _StringGuts.grow(_:)(53);
      MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F34550);
      MEMORY[0x266771550](v1, v2);

      MEMORY[0x266771550](0xD000000000000011, 0x8000000265F34570);
      MEMORY[0x266771550](v3, v4);

      v11 = 2108967;
      v12 = 0xE300000000000000;
    }

LABEL_18:
    MEMORY[0x266771550](v11, v12);
    if (*(v0 + 48))
    {

      v15 = String.init<A>(describing:)();
      v17 = v16;
    }

    else
    {
      v15 = 0x3E6C696E3CLL;
      v17 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v15, v17);
    goto LABEL_22;
  }

  if (v5 == 2)
  {
    _StringGuts.grow(_:)(47);
    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F344E0);
    v13 = _typeName(_:qualified:)();
    MEMORY[0x266771550](v13);

    v11 = 0xD000000000000013;
    v12 = 0x8000000265F34500;
    goto LABEL_18;
  }

  if (v5 != 3)
  {
    if (!(v3 | v2 | v1 | v4))
    {
      return 0xD00000000000002BLL;
    }

    if (v1 == 1 && !(v3 | v2 | v4))
    {
      return 0xD000000000000020;
    }

    _StringGuts.grow(_:)(17);
    v11 = 0x206E776F6E6B6E55;
    v12 = 0xEF203A726F727265;
    goto LABEL_18;
  }

  _StringGuts.grow(_:)(40);
  MEMORY[0x266771550](0x79747265706F7250, 0xEA00000000002720);
  MEMORY[0x266771550](v1, v2);

  MEMORY[0x266771550](0xD000000000000015, 0x8000000265F344C0);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);

  MEMORY[0x266771550](v6, v7);

  MEMORY[0x266771550](2108967, 0xE300000000000000);
  if (*(v0 + 48))
  {

    v8 = String.init<A>(describing:)();
    v10 = v9;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v8, v10);

LABEL_22:

  return 0;
}

void outlined consume of MetalFunctionGraphError.ErrorType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  else
  {
    if (a5 != 1)
    {
      if (a5)
      {
        return;
      }
    }
  }
}

__n128 MetalFunctionGraphError.init(_:details:underlyingErrors:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LOBYTE(v6) = *(a1 + 32);
  result = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = result;
  *(a5 + 32) = v6;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t MetalFunctionGraphError.details.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t getEnumTagSinglePayload for MetalFunctionGraphError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalFunctionGraphError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetalFunctionGraphError.ErrorType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalFunctionGraphError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MetalFunctionGraphError.ErrorType(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t *realityKitGeometryGetterFuncs.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitGeometryGetterFuncs != -1)
  {
    swift_once();
  }

  return &realityKitGeometryGetterFuncs;
}

uint64_t *realityKitSurfaceGetterFuncs.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitSurfaceGetterFuncs != -1)
  {
    swift_once();
  }

  return &realityKitSurfaceGetterFuncs;
}

uint64_t one-time initialization function for realityKitGeometryGetterFuncs()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitGeometryGetterFuncs);
  result = swift_arrayDestroy();
  realityKitGeometryGetterFuncs = v0;
  return result;
}

uint64_t one-time initialization function for realityKitSurfaceGetterFuncs()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitSurfaceGetterFuncs);
  result = swift_arrayDestroy();
  realityKitSurfaceGetterFuncs = v0;
  return result;
}

uint64_t MetalShaderCompiler.__allocating_init(compiling:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for MetalShaderCompiler.Scope();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v3[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3[3] = 0;
  swift_weakInit();
  v3[5] = v4;
  v3[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v4);
  v3[7] = v4;
  v3[8] = v4;
  v3[9] = v4;
  v3[10] = v4;
  swift_beginAccess();
  swift_weakAssign();
  *(v2 + 24) = v3;
  return v2;
}

uint64_t MetalLiteralValueNode.createMetalInvocation(in:)()
{
  v1 = (*(*v0 + 192))(v5);
  v2 = (*(*v0 + 168))(v1);
  v3 = SGDataTypeStorage.metalLiteralValue(type:)(v2);

  outlined destroy of SGDataTypeStorage(v5);
  return v3;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalLiteralValueNode()
{
  v1 = *v0;
  v2 = (*(*v1 + 192))(v6);
  v3 = (*(*v1 + 168))(v2);
  v4 = SGDataTypeStorage.metalLiteralValue(type:)(v3);

  outlined destroy of SGDataTypeStorage(v6);
  return v4;
}

uint64_t MetalShaderCompiler.init(compiling:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MetalShaderCompiler.Scope();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v2[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[3] = 0;
  swift_weakInit();
  v2[5] = v3;
  v2[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v3);
  v2[7] = v3;
  v2[8] = v3;
  v2[9] = v3;
  v2[10] = v3;
  swift_beginAccess();
  swift_weakAssign();
  *(v1 + 24) = v2;
  return v1;
}

void *MetalShaderCompiler.Scope.__allocating_init(enclosingScope:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v1[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1[3] = 0;
  swift_weakInit();
  v1[5] = v2;
  v1[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v2);
  v1[7] = v2;
  v1[8] = v2;
  v1[9] = v2;
  v1[10] = v2;
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MetalShaderCompiler.compile()()
{
  v2 = v1;
  v3 = (*(*v0 + 112))();
  v4 = v0;
  v5 = v0[2];
  v6 = (*(*v5 + 264))(v4);
  if (v1)
  {

    goto LABEL_3;
  }

  v76 = v5;
  v9 = (*(*v3 + 288))(v6);
  v82 = MEMORY[0x277D84F90];
  v78 = v9;
  v75 = v9 >> 62;
  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v3;
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    while (1)
    {
      v12 = __OFSUB__(v10--, 1);
      if (v12)
      {
        break;
      }

      if ((v78 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x266772030](v10, v78);
        v13 = v14;
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v10 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v78 + 32 + 8 * v10);
      }

      v15 = (*(*v13 + 312))(v14);

      specialized Array.append<A>(contentsOf:)(v15);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v16 = v82;
    v17 = *(v82 + 16);
    if (v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_19:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = v11;
      v19 = (v16 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        MEMORY[0x266771550](v20, v21);

        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        *(v11 + 16) = v23 + 1;
        v24 = v11 + 16 * v23;
        *(v24 + 32) = 0x6564756C636E6923;
        *(v24 + 40) = 0xE900000000000020;
        v19 += 2;
        --v17;
      }

      while (v17);

      v11 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_26:
  specialized Array.append<A>(contentsOf:)(v18);
  if (v75)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v12 = __OFSUB__(v25--, 1);
    if (v12)
    {
      break;
    }

    if ((v78 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x266772030](v25, v78);
      v27 = v28;
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (v25 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v27 = *(v78 + 32 + 8 * v25);
    }

    v29 = (*(*v27 + 360))(v28);

    specialized Array.append<A>(contentsOf:)(v29);
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  for (i = v11; ; i = v26)
  {
    specialized Array.append<A>(contentsOf:)(i);
    v83 = v26;
    v31 = v78;
    v32 = v75 ? __CocoaSet.count.getter() : *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v76;
    v34 = MEMORY[0x277D84F90];
    if (!v32)
    {
      break;
    }

    while (1)
    {
      v12 = __OFSUB__(v32, 1);
      v35 = v32 - 1;
      if (v12)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        v59 = v83;
        goto LABEL_85;
      }

      v77 = v35;
      if ((v78 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x266772030]();
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if (v35 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }
      }

      v37 = (*(*v36 + 248))();
      v38 = *(v37 + 16);
      if (v38)
      {
        break;
      }

      v39 = v34;
LABEL_48:
      specialized Array.append<A>(contentsOf:)(v39);
      v32 = v77;
      if (!v77)
      {
        goto LABEL_83;
      }
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v34;
    v40 = v37 + 64;
    v26 = _HashTable.startBucket.getter();
    v41 = 0;
    v79 = v38;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v37 + 32))
    {
      v44 = v26 >> 6;
      if ((*(v40 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_75;
      }

      v80 = v41;
      v81 = *(v37 + 36);
      v45 = closure #1 in closure #4 in MetalShaderCompiler.compile()(*(*(v37 + 48) + 16 * v26), *(*(v37 + 48) + 16 * v26 + 8), *(*(v37 + 56) + 8 * v26));
      v47 = v46;
      v49 = *(v39 + 2);
      v48 = *(v39 + 3);
      v50 = v39;
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
        v50 = v39;
      }

      *(v50 + 2) = v49 + 1;
      v51 = &v50[16 * v49];
      *(v51 + 4) = v45;
      *(v51 + 5) = v47;
      v42 = 1 << *(v37 + 32);
      if (v26 >= v42)
      {
        goto LABEL_76;
      }

      v40 = v37 + 64;
      v52 = *(v37 + 64 + 8 * v44);
      if ((v52 & (1 << v26)) == 0)
      {
        goto LABEL_77;
      }

      v39 = v50;
      if (v81 != *(v37 + 36))
      {
        goto LABEL_78;
      }

      v53 = v52 & (-2 << (v26 & 0x3F));
      if (v53)
      {
        v42 = __clz(__rbit64(v53)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v43 = v79;
      }

      else
      {
        v54 = v44 << 6;
        v55 = v44 + 1;
        v43 = v79;
        v56 = (v37 + 72 + 8 * v44);
        while (v55 < (v42 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          v54 += 64;
          ++v55;
          if (v58)
          {
            outlined consume of [String : String].Index._Variant(v26, v81, 0);
            v42 = __clz(__rbit64(v57)) + v54;
            goto LABEL_57;
          }
        }

        outlined consume of [String : String].Index._Variant(v26, v81, 0);
      }

LABEL_57:
      v41 = v80 + 1;
      v26 = v42;
      if (v80 + 1 == v43)
      {

        v31 = v78;
        v33 = v76;
        v34 = MEMORY[0x277D84F90];
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_85:
  v60 = specialized Array.append<A>(contentsOf:)(v59);
  v61 = (*(*v33 + 192))(v60);
  specialized Array.append<A>(contentsOf:)(v61);
  v84 = v34;
  if (v75)
  {
    v62 = __CocoaSet.count.getter();
  }

  else
  {
    v62 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v62)
  {
    v63 = v31 & 0xC000000000000001;
    v64 = v31 & 0xFFFFFFFFFFFFFF8;
    v65 = v31 + 32;
    while (1)
    {
      v12 = __OFSUB__(v62--, 1);
      if (v12)
      {
        break;
      }

      if (v63)
      {
        v67 = MEMORY[0x266772030](v62, v78);
        v66 = v67;
      }

      else
      {
        if ((v62 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (v62 >= *(v64 + 16))
        {
          goto LABEL_101;
        }

        v66 = *(v65 + 8 * v62);
      }

      v68 = (*(*v66 + 336))(v67);

      specialized Array.append<A>(contentsOf:)(v68);
      if (!v62)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    v69 = v84;
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v70 = specialized Array.append<A>(contentsOf:)(v69);
  v71 = (*(*v74 + 384))(v70);
  specialized Array.append<A>(contentsOf:)(v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v2 = BidirectionalCollection<>.joined(separator:)();
  v5 = v72;

LABEL_3:
  v7 = v2;
  v8 = v5;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void *closure #1 in closure #4 in MetalShaderCompiler.compile()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0x20746375727473;
  *&v25 = 0xE700000000000000;
  MEMORY[0x266771550](a1, a2);
  v4 = MEMORY[0x266771550](686880, 0xE300000000000000);
  v31 = 0x20746375727473;
  v32 = 0xE700000000000000;
  v5 = (*(*a3 + 88))(v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v30 = MEMORY[0x277D84F90];
    v23 = v5;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v23;
    v9 = 0;
    v10 = v30;
    v11 = (v23 + 72);
    while (v9 < *(v8 + 16))
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 8);
      v14 = *v11;
      v24 = *(v11 - 5);
      v25 = *(v11 - 2);
      v26 = v12;
      v27 = v13;
      v28 = v14;
      result = closure #1 in closure #1 in closure #4 in MetalShaderCompiler.compile()(&v24, v29);
      v15 = v29[0];
      v16 = v29[1];
      v30 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v23;
        v10 = v30;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v11 += 6;
      if (v6 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_9:
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x266771550](v20, v22);

    MEMORY[0x266771550](171670794, 0xE400000000000000);
    return v31;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #4 in MetalShaderCompiler.compile()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v26 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(v4 + 16);
  if (v6)
  {
    v24 = a1[2];
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      MEMORY[0x266771550](v8, v9);
      MEMORY[0x266771550](23901, 0xE200000000000000);

      v11 = *(v27 + 16);
      v10 = *(v27 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v27 + 16) = v11 + 1;
      v12 = v27 + 16 * v11;
      *(v12 + 32) = 23387;
      *(v12 + 40) = 0xE200000000000000;
      v7 += 2;
      --v6;
    }

    while (v6);
    v2 = a2;
    v5 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in closure #1 in closure #4 in MetalShaderCompiler.compile());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(*(v5 + 24), *(v5 + 32)), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
  }

  else
  {

    v22 = v5;
    v21 = *(v5 + 24);
    v20 = *(v22 + 32);
  }

  MEMORY[0x266771550](v21, v20);

  MEMORY[0x266771550](32, 0xE100000000000000);
  MEMORY[0x266771550](v3, v26);
  MEMORY[0x266771550](v13, v15);

  result = MEMORY[0x266771550](59, 0xE100000000000000);
  *v2 = 9;
  v2[1] = 0xE100000000000000;
  return result;
}

uint64_t MetalShaderCompiler.currentScope.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t MetalShaderCompiler.pushScope()()
{
  v4 = *(*v0 + 112);
  v1 = v4();
  v2 = (*(*v1 + 408))(v1);

  (*(*v0 + 120))(v2);

  return v4();
}

Swift::Void __swiftcall MetalShaderCompiler.popScope()()
{
  v1 = *(*v0 + 112);
  v2 = v1();
  v3 = v1();
  v4 = (*(*v3 + 200))(v3);

  if (v4)
  {
    v5 = (*(*v0 + 120))(v4);
    v6 = (v1)(v5);
    v7 = (*(*v2 + 384))();
    v8 = (*(*v6 + 400))(v9);
    specialized Array.append<A>(contentsOf:)(v7);
    v8(v9, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t MetalShaderCompiler.withChildScope<A>(_:)(uint64_t (*a1)(void))
{
  (*(*v1 + 136))();
  v3 = a1();
  (*(*v1 + 144))(v3);
}

uint64_t MetalShaderCompiler.deinit()
{

  return v0;
}

uint64_t MetalShaderCompiler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double MetalShaderCompiler.Scope.nodesToResultVariableNameMap.getter()
{
  swift_beginAccess();

  return result;
}

double key path setter for MetalShaderCompiler.Scope.childScopes : MetalShaderCompiler.Scope(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;

  return result;
}

double MetalShaderCompiler.Scope.childScopes.getter()
{
  swift_beginAccess();

  return result;
}

double key path setter for MetalShaderCompiler.Scope.definedTypes : MetalShaderCompiler.Scope(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;

  return result;
}

double MetalShaderCompiler.Scope.definedTypes.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MetalShaderCompiler.Scope.global.getter()
{
  v1 = (*(*v0 + 200))();
  if (v1)
  {
    return v1;
  }

  return v0;
}

void *MetalShaderCompiler.Scope.init(enclosingScope:)(uint64_t a1)
{
  v1 = specialized MetalShaderCompiler.Scope.init(enclosingScope:)(a1);

  return v1;
}

void MetalShaderCompiler.Scope.allScopes()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265F20CD0;
  *(v1 + 32) = v0;

  v2 = 0;
  v3 = &_sSay11ShaderGraph05MetalA8CompilerC5ScopeCGMd;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x266772030](v2, v1);
      v4 = v5;
    }

    else
    {
      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v4 = *(v1 + 8 * v2 + 32);
    }

    v6 = (*(*v4 + 224))(v5);
    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v1 >> 62;
    if (v1 >> 62)
    {
      break;
    }

    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v11 + v9;
    if (__OFADD__(v11, v9))
    {
      goto LABEL_42;
    }

LABEL_9:
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      __CocoaSet.count.getter();
      goto LABEL_16;
    }

    if (v10)
    {
      goto LABEL_15;
    }

    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v12 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = v9;
      goto LABEL_17;
    }

LABEL_16:
    v14 = v9;
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v8)
    {
      v19 = v13;
      v20 = __CocoaSet.count.getter();
      v13 = v19;
      v17 = v20;
      if (v20)
      {
LABEL_19:
        if (((v16 >> 1) - v15) < v14)
        {
          goto LABEL_45;
        }

        v34 = v13;
        v18 = v13 + 8 * v15 + 32;
        if (v8)
        {
          if (v17 < 1)
          {
            goto LABEL_47;
          }

          v33 = v2;
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [MetalShaderCompiler.Scope] and conformance [A], v3, &_sSay11ShaderGraph05MetalA8CompilerC5ScopeCGMR, MEMORY[0x277D83988]);
          for (i = 0; i != v17; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(v3, &_sSay11ShaderGraph05MetalA8CompilerC5ScopeCGMR);
            v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v35, i, v7);
            v25 = v3;
            v27 = *v26;

            (v24)(v35, 0);
            *(v18 + 8 * i) = v27;
            v3 = v25;
          }

          v2 = v33;
        }

        else
        {
          type metadata accessor for MetalShaderCompiler.Scope();
          swift_arrayInitWithCopy();
        }

        v22 = v34;
        if (v14 > 0)
        {
          v28 = *(v34 + 16);
          v29 = __OFADD__(v28, v14);
          v30 = v28 + v14;
          if (v29)
          {
            goto LABEL_46;
          }

          *(v34 + 16) = v30;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_19;
      }
    }

    v21 = v13;

    v22 = v21;
    if (v14 > 0)
    {
      goto LABEL_44;
    }

LABEL_32:
    if (v1 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *(v22 + 16);
    }

    if (++v2 >= v31)
    {
      return;
    }
  }

  v32 = __CocoaSet.count.getter();
  v12 = v32 + v9;
  if (!__OFADD__(v32, v9))
  {
    goto LABEL_9;
  }

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
}

uint64_t MetalShaderCompiler.Scope.resultVariableName(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = (*(*v1 + 152))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void MetalShaderCompiler.Scope.createResultVariableName(for:)(void *a1)
{
  (*(*v1 + 176))();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v3);

  swift_beginAccess();
  v4 = v1[3];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1[3] = v6;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 24))(v7, v8);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v1[2];
    v1[2] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x746C7573657224, 0xE700000000000000, v9, isUniquelyReferenced_nonNull_native);
    v1[2] = v11;
    swift_endAccess();
  }
}

double MetalShaderCompiler.Scope.includePaths.getter()
{
  swift_beginAccess();

  return result;
}

double MetalShaderCompiler.Scope.includePaths.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

double MetalShaderCompiler.Scope.globalDeclarations.getter()
{
  swift_beginAccess();

  return result;
}

double MetalShaderCompiler.Scope.globalDeclarations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return result;
}

double MetalShaderCompiler.Scope.topGlobalDeclarations.getter()
{
  swift_beginAccess();

  return result;
}

double MetalShaderCompiler.Scope.topGlobalDeclarations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

double MetalShaderCompiler.Scope.metalSourceSegments.getter()
{
  swift_beginAccess();

  return result;
}

double MetalShaderCompiler.Scope.metalSourceSegments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

void *MetalShaderCompiler.Scope.createChildScope()()
{
  v1 = v0;
  type metadata accessor for MetalShaderCompiler.Scope();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v2[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[3] = 0;
  swift_weakInit();
  v2[5] = v3;

  v2[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v3);
  v2[7] = v3;
  v2[8] = v3;
  v2[9] = v3;
  v2[10] = v3;
  swift_beginAccess();
  swift_weakAssign();

  swift_beginAccess();

  MEMORY[0x266771770](v4);
  if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v2;
}

uint64_t MetalShaderCompiler.Scope.addStructTypeDefinition(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 48);
  *(v3 + 48) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 48) = v9;
  return swift_endAccess();
}

uint64_t MetalShaderCompiler.Scope.structTypeDefinition(named:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 248))();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {

    v11 = (*(*v3 + 200))(v10);
    if (v11)
    {
      v9 = (*(*v11 + 424))(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void *MetalShaderCompiler.Scope.deinit()
{

  swift_weakDestroy();

  return v0;
}

uint64_t MetalShaderCompiler.Scope.__deallocating_deinit()
{
  MetalShaderCompiler.Scope.deinit();

  return swift_deallocClassInstance();
}

void *specialized MetalShaderCompiler.Scope.init(enclosingScope:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v1[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1[3] = 0;
  swift_weakInit();
  v1[5] = v2;
  v1[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(v2);
  v1[7] = v2;
  v1[8] = v2;
  v1[9] = v2;
  v1[10] = v2;
  swift_beginAccess();
  swift_weakAssign();
  return v1;
}

uint64_t sub_265F013E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01434(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t sub_265F01488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_265F014D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

void sub_265F01524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_265F01568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_265F016A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_265F016F4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t sub_265F01750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

uint64_t sub_265F017A4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 344);

  return v2(v3);
}

uint64_t sub_265F01800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01854(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 368);

  return v2(v3);
}

uint64_t sub_265F018B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_265F01904(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 392);

  return v2(v3);
}

double DataType.properties.getter()
{
  swift_beginAccess();

  return result;
}

double DataType.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

Swift::Int DataType.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 120))(v2);
  return Hasher._finalize()();
}

uint64_t DataTypeProperty.init(label:type:attributes:index:visible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a6;
  *(a7 + 40) = a5;
  return result;
}

double DataType.hash(into:)(uint64_t a1)
{
  v3 = (*(*v1 + 88))();
  specialized Array<A>.hash(into:)(a1, v3);

  return result;
}

void DataType.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = (*(*v3 + 88))();
  v6 = (v15 + 72);
  v7 = *(v15 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {
      v9 = 0;
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v9 = *(v6 - 5);
    v8 = *(v6 - 4);
    v10 = *(v6 - 3);
    v11 = *(v6 - 2);
    v12 = *(v6 - 8);
    v13 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v6 += 6;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_11;
    }
  }

  v9 = a1;
LABEL_11:

LABEL_12:

  *a3 = v9;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v11;
  a3[4] = v12;
  a3[5] = v13;
}

uint64_t DataType.__allocating_init(properties:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void DataType.description.getter()
{
  v1 = (*(*v0 + 88))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = 0;
    v4 = (v1 + 56);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v21 = *(v4 - 3);
      v22 = *(v4 - 2);

      v7 = MEMORY[0x266771550](8250, 0xE200000000000000);
      v8 = (*(*v6 + 136))(v7);
      MEMORY[0x266771550](v8);

      v9 = v21;
      v10 = v22;
      if (*(v5 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v11 = BidirectionalCollection<>.joined(separator:)();
        v13 = v12;

        MEMORY[0x266771550](v11, v13);

        v9 = v21;
        v10 = v22;
      }

      v15 = *(v23 + 16);
      v14 = *(v23 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      *(v23 + 16) = v15 + 1;
      v16 = v23 + 16 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      v4 += 6;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    v20 = _typeName(_:qualified:)();
    MEMORY[0x266771550](v20);

    MEMORY[0x266771550](31550, 0xE200000000000000);
    MEMORY[0x266771550](v17, v19);

    MEMORY[0x266771550](125, 0xE100000000000000);
  }
}

uint64_t DataType.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataType(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 120))(v3);
  return Hasher._finalize()();
}

uint64_t DataTypeProperty.label.getter()
{
  v1 = *v0;

  return v1;
}

void DataTypeProperty.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DataTypeProperty.type.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DataTypeProperty.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  (*(**(v1 + 16) + 120))(a1);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  MEMORY[0x266772770](v4);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      String.hash(into:)();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(*(v1 + 32) & 1);
  return MEMORY[0x266772770](*(v1 + 40));
}

Swift::Int DataTypeProperty.hashValue.getter()
{
  Hasher.init(_seed:)();
  DataTypeProperty.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataTypeProperty()
{
  Hasher.init(_seed:)();
  DataTypeProperty.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataTypeProperty(uint64_t a1)
{
  Hasher.init(_seed:)();
  DataTypeProperty.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DataTypeProperty(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static DataTypeProperty.== infix(_:_:)(v7, v8);
}

unint64_t lazy protocol witness table accessor for type DataType and conformance DataType(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type DataType and conformance DataType;
  if (!lazy protocol witness table cache variable for type DataType and conformance DataType)
  {
    type metadata accessor for DataType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataType and conformance DataType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataTypeProperty and conformance DataTypeProperty()
{
  result = lazy protocol witness table cache variable for type DataTypeProperty and conformance DataTypeProperty;
  if (!lazy protocol witness table cache variable for type DataTypeProperty and conformance DataTypeProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataTypeProperty and conformance DataTypeProperty);
  }

  return result;
}

uint64_t sub_265F02C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_265F02C9C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v10 = *v5;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 8);
      swift_unknownObjectRetain();
      v13 = XMLNode.elements(forXPath:)(0xD000000000000015, 0x8000000265F2E120, ObjectType, v12);
      v14 = v3;
      if (v3)
      {
        v3 = 0;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, logger);
        v17 = v14;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *v6 = 138412290;
          v8 = v14;
          v9 = _swift_stdlib_bridgeErrorToNSError();
          *(v6 + 4) = v9;
          *v7 = v9;
          _os_log_impl(&dword_265D7D000, v18, v19, "Error while loading nodedef library: %@. (Ignored.)", v6, 0xCu);
          outlined destroy of [Input](v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x266773120](v7, -1, -1);
          MEMORY[0x266773120](v6, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        specialized Sequence.forEach(_:)(v13, a2);

        v15 = XMLNode.elements(forXPath:)(0xD000000000000010, 0x8000000265F2E140, ObjectType, v12);
        specialized Sequence.forEach(_:)(v15, a2);
        v3 = 0;
        swift_unknownObjectRelease();
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t *NodeDefStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NodeDefStore.shared;
}

double NodeDefStore.nodeDef(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + 152 * v6);
    v9 = v8[1];
    v21[0] = *v8;
    v21[1] = v9;
    v10 = v8[5];
    v12 = v8[2];
    v11 = v8[3];
    v21[4] = v8[4];
    v21[5] = v10;
    v21[2] = v12;
    v21[3] = v11;
    v14 = v8[7];
    v13 = v8[8];
    v15 = v8[6];
    v22 = *(v8 + 18);
    v21[7] = v14;
    v21[8] = v13;
    v21[6] = v15;
    memmove(__dst, v8, 0x98uLL);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    outlined init with copy of NodeDef(v21, &v25);
    v31 = __dst[6];
    v32 = __dst[7];
    v33 = __dst[8];
    v34 = v24;
    v27 = __dst[2];
    v28 = __dst[3];
    v29 = __dst[4];
    v30 = __dst[5];
    v25 = __dst[0];
    v26 = __dst[1];
  }

  else
  {
    _s11ShaderGraph7NodeDefVSgWOi0_(&v25);
  }

  v16 = v32;
  *(a4 + 96) = v31;
  *(a4 + 112) = v16;
  *(a4 + 128) = v33;
  *(a4 + 144) = v34;
  v17 = v28;
  *(a4 + 32) = v27;
  *(a4 + 48) = v17;
  v18 = v30;
  *(a4 + 64) = v29;
  *(a4 + 80) = v18;
  result = *&v25;
  v20 = v26;
  *a4 = v25;
  *(a4 + 16) = v20;
  return result;
}

double NodeDefStore.createNode(in:nodeDefName:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  specialized NodeDefStore.createNode(in:nodeDefName:)(a2, a3, a4, &v9);
  if (!v5)
  {
    v8 = v10[0];
    *a5 = v9;
    a5[1] = v8;
    result = *(v10 + 9);
    *(a5 + 25) = *(v10 + 9);
  }

  return result;
}

ShaderGraph::NodeDefStore __swiftcall NodeDefStore.init()()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7NodeDefVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph11GeomPropDefVTt0g5Tf4g_n(v0);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11ShaderGraph7NodeDefV14ImplementationVGTt0g5Tf4g_n(v0);
  v4 = v1;
  v5 = v2;
  result.implementations._rawValue = v3;
  result.geomPropDefs._rawValue = v5;
  result.nodeDefs._rawValue = v4;
  return result;
}

double NodeDefStore.createNode(for:in:)@<D0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  specialized NodeDefStore.createNode(for:in:)(a1, a2, a4, &v9);
  if (!v5)
  {
    v8 = v10[0];
    *a5 = v9;
    a5[1] = v8;
    result = *(v10 + 9);
    *(a5 + 25) = *(v10 + 9);
  }

  return result;
}

uint64_t NodeDefStore.geomPropDef(named:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = 0uLL;
  if (*(a3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2);
    if (v7)
    {
      v8 = (*(a3 + 56) + (result << 6));
      v9 = *(v8 + 41);
      v11 = v8[1];
      v10 = v8[2];
      v20[0] = *v8;
      v20[1] = v11;
      *v21 = v10;
      *&v21[9] = v9;
      v17 = v11;
      v18 = v20[0];
      v16 = *v21;
      v12 = v9 >> 56;
      v13 = HIBYTE(v9);
      result = outlined init with copy of GeomPropDef(v20, v19);
      v15 = v16;
      v14 = v17;
      v5 = v18;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a4 = v5;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  return result;
}

void NodeDefStore.implementations(for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(*a1, a1[1]);
    if (v4)
    {
    }
  }
}

void NodeDefStore.implementation(for:target:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v50 = a2;
  v7 = type metadata accessor for NodeDef.Implementation(0);
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  if (!*(a3 + 16) || (v14 = *a1, v15 = *a1, v42 = a1[1], v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v42), (v17 & 1) == 0))
  {
    v37 = *(v49 + 56);

    v37(a4, 1, 1, v7, v11);
    return;
  }

  v18 = *(*(a3 + 56) + 8 * v16);
  v43 = *(v18 + 16);
  if (!v43)
  {
    goto LABEL_28;
  }

  v39 = v14;
  v40 = v13;
  v41 = a4;
  v47 = v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80));

  v19 = 0;
  v45 = v9;
  v46 = v7;
  v44 = v18;
  while (2)
  {
    if (v19 >= *(v18 + 16))
    {
LABEL_36:
      __break(1u);
      return;
    }

    outlined init with copy of NodeDef.Implementation(v47 + *(v49 + 72) * v19, v9, type metadata accessor for NodeDef.Implementation);
    v20 = *&v9[*(v7 + 24)];
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (*(v20 + 16))
      {
        v25 = -1 << *(v20 + 32);
        v21 = v20 + 56;
        v23 = ~v25;
        v26 = -v25;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v24 = v27 & *(v20 + 56);

        v22 = 0;
        goto LABEL_14;
      }

LABEL_34:

LABEL_32:
      v13 = v40;
      outlined init with take of NodeDef.Implementation(v9, v40, type metadata accessor for NodeDef.Implementation);
      (*(v49 + 56))(v13, 0, 1, v7);
      a4 = v41;
      goto LABEL_33;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_34;
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for MaterialXTarget();
    _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, type metadata accessor for MaterialXTarget, &protocol conformance descriptor for MaterialXTarget);
    Set.Iterator.init(_cocoa:)();
    v20 = v54;
    v21 = v55;
    v23 = v56;
    v22 = v57;
    v24 = v58;
LABEL_14:
    ++v19;
    v48 = v23;
    v28 = (v23 + 64) >> 6;
    while (v20 < 0)
    {
      v32 = __CocoaSet.Iterator.next()();
      if (!v32)
      {
        goto LABEL_26;
      }

      v51 = v32;
      type metadata accessor for MaterialXTarget();
      swift_dynamicCast();
      v31 = v52;
      if (!v52)
      {
        goto LABEL_26;
      }

LABEL_24:
      v33 = MaterialXTarget.conformsTo(_:)(v31);

      if (v33)
      {

        outlined consume of [String : GeomPropDef].Iterator._Variant(v20);
        v9 = v45;
        v7 = v46;
        goto LABEL_32;
      }
    }

    v29 = v22;
    v30 = v24;
    if (!v24)
    {
      while (1)
      {
        v22 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v22 >= v28)
        {
          goto LABEL_26;
        }

        v30 = *(v21 + 8 * v22);
        ++v29;
        if (v30)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_20:
    v24 = (v30 - 1) & v30;
    v31 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v30)))));

    if (v31)
    {
      goto LABEL_24;
    }

LABEL_26:
    outlined consume of [String : GeomPropDef].Iterator._Variant(v20);
    v9 = v45;
    outlined destroy of NodeDef.Implementation(v45, type metadata accessor for NodeDef.Implementation);
    v18 = v44;
    v7 = v46;
    if (v19 != v43)
    {
      continue;
    }

    break;
  }

  v13 = v40;
  a4 = v41;
  v14 = v39;
LABEL_28:
  (*(v49 + 56))(v13, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_265F1F670;
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  MEMORY[0x266771550](0xD000000000000024, 0x8000000265F346F0);
  MEMORY[0x266771550](v14, v42);
  MEMORY[0x266771550](0x2074656772617420, 0xE800000000000000);
  v51 = v50;
  type metadata accessor for MaterialXTarget();
  _print_unlocked<A, B>(_:_:)();
  v35 = v52;
  v36 = v53;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  print(_:separator:terminator:)();

LABEL_33:
  outlined init with take of NodeDef.Implementation?(v13, a4, &_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
}

void one-time initialization function for shared()
{
  specialized static NodeDefStore.createDefault()();
  static NodeDefStore.shared = v0;
  qword_280051428 = v1;
  qword_280051430 = v2;
}

uint64_t static NodeDefStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static NodeDefStore.shared;

  return v0;
}

ShaderGraph::NodeDefStore __swiftcall NodeDefStore.init(nodeDefs:geomPropDefs:implementations:)(Swift::OpaquePointer nodeDefs, Swift::OpaquePointer geomPropDefs, Swift::OpaquePointer implementations)
{
  rawValue = geomPropDefs._rawValue;
  v5 = *(nodeDefs._rawValue + 2);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v72 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v72;
    v8 = v5 - 1;
    for (i = 32; ; i += 152)
    {
      v10 = *(nodeDefs._rawValue + i + 112);
      v11 = *(nodeDefs._rawValue + i + 80);
      v59 = *(nodeDefs._rawValue + i + 96);
      v60 = v10;
      v12 = *(nodeDefs._rawValue + i + 112);
      v61 = *(nodeDefs._rawValue + i + 128);
      v13 = *(nodeDefs._rawValue + i + 48);
      v14 = *(nodeDefs._rawValue + i + 16);
      *v56 = *(nodeDefs._rawValue + i + 32);
      *&v56[16] = v13;
      v15 = *(nodeDefs._rawValue + i + 48);
      v16 = *(nodeDefs._rawValue + i + 80);
      v57 = *(nodeDefs._rawValue + i + 64);
      v58 = v16;
      v17 = *(nodeDefs._rawValue + i + 16);
      v54 = *(nodeDefs._rawValue + i);
      v55 = v17;
      v68 = v59;
      v69 = v12;
      v70 = *(nodeDefs._rawValue + i + 128);
      *v65 = *v56;
      *&v65[16] = v15;
      v66 = v57;
      v67 = v11;
      v62 = *(nodeDefs._rawValue + i + 144);
      v18 = v54;
      v71 = *(nodeDefs._rawValue + i + 144);
      v63 = v54;
      v64 = v14;
      outlined init with copy of NodeDef(&v54, v53);
      v72 = v7;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);

      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v7 = v72;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 168 * v20;
      *(v21 + 32) = v18;
      v22 = v64;
      *(v21 + 48) = v63;
      *(v21 + 64) = v22;
      v23 = *v65;
      v24 = *&v65[16];
      v25 = v67;
      *(v21 + 112) = v66;
      *(v21 + 128) = v25;
      *(v21 + 80) = v23;
      *(v21 + 96) = v24;
      v26 = v68;
      v27 = v69;
      v28 = v70;
      *(v21 + 192) = v71;
      *(v21 + 160) = v27;
      *(v21 + 176) = v28;
      *(v21 + 144) = v26;
      if (!v8)
      {
        break;
      }

      --v8;
    }

    rawValue = geomPropDefs._rawValue;
    v6 = MEMORY[0x277D84F90];
    if (*(v7 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
      v29 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_11;
    }
  }

  v29 = MEMORY[0x277D84F98];
LABEL_11:
  *&v63 = v29;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v30, 1, &v63);

  v31 = v63;
  v32 = rawValue[2];
  if (v32)
  {
    v50 = v63;
    v72 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = v72;
    v34 = v32 - 1;
    for (j = 4; ; j += 8)
    {
      v36 = *&rawValue[j + 2];
      v54 = *&rawValue[j];
      v55 = v36;
      *v56 = *&rawValue[j + 4];
      v37 = *v56;
      *&v56[9] = *(&rawValue[j + 5] + 1);
      v38 = v54;
      v63 = v54;
      v64 = v36;
      *v65 = v37;
      *&v65[9] = *&v56[9];
      outlined init with copy of GeomPropDef(&v54, v53);
      v72 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);

      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v33 = v72;
      }

      *(v33 + 16) = v40 + 1;
      v41 = (v33 + 80 * v40);
      v41[2] = v38;
      v42 = v63;
      v43 = v64;
      v44 = *v65;
      *(v41 + 89) = *&v65[9];
      v41[4] = v43;
      v41[5] = v44;
      v41[3] = v42;
      if (!v34)
      {
        break;
      }

      --v34;
    }

    v31 = v50;
    if (*(v33 + 16))
    {
      goto LABEL_18;
    }

LABEL_20:
    v45 = MEMORY[0x277D84F98];
    goto LABEL_21;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_20;
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v45 = static _DictionaryStorage.allocate(capacity:)();
LABEL_21:
  *&v63 = v45;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v46, 1, &v63);

  v47 = v63;
  v48 = v31;
  v49 = implementations._rawValue;
  result.implementations._rawValue = v49;
  result.geomPropDefs._rawValue = v47;
  result.nodeDefs._rawValue = v48;
  return result;
}

void NodeDefStore.implementation(for:)(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for MaterialXTarget();
  inited = swift_initStaticObject();

  NodeDefStore.implementation(for:target:)(a1, inited, a2, a3);
}

Swift::Int NodeDefStore.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NodeDefStore.loadLibrary()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = [v8 resourceURL];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = (*(v1 + 32))(v6, v3, v0);
    MEMORY[0x28223BE20](v11);
    v14[-2] = v6;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Say10Foundation3URLVGs5NeverOTg5(partial apply for closure #1 in NodeDefStore.loadLibrary(), &v14[-4], &outlined read-only object #0 of NodeDefStore.loadLibrary());
    v13 = v12;
    swift_arrayDestroy();
    specialized NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(v13);

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    lazy protocol witness table accessor for type NodeDefStore.Errors and conformance NodeDefStore.Errors();
    swift_allocError();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NodeDefStore.applyStandardLibraryFixes()()
{
  v1 = type metadata accessor for NodeDef.Implementation(0);
  v210 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v203 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v244 = (&v203 - v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v203 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v203 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v16 = (&v203 - v15);
  v213 = v0;
  v17 = *v0;
  v18 = *(v17 + 16);
  v208 = v17;
  if (!v18)
  {
LABEL_74:
    v89 = v213[2];
    v90 = v89 + 64;
    v91 = 1 << *(v89 + 32);
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    *v214 = v92 & *(v89 + 64);
    v211 = (v91 + 63) >> 6;
    v207 = "n found for nodedef ";
    swift_bridgeObjectRetain_n();
    v93 = 0;
    v205 = v89;
    v206 = 0xD000000000000014;
    while (1)
    {
      while (1)
      {
        v94 = *v214;
        if (!*v214)
        {
          while (1)
          {
            v95 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              break;
            }

            if (v95 >= v211)
            {

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
              v132 = v208;
              v133 = static _DictionaryStorage.copy(original:)();
              v134 = v132;
              v135 = v133;
              v136 = 0;
              v137 = *(v134 + 64);
              v204 = v134 + 64;
              v138 = 1 << *(v134 + 32);
              v139 = -1;
              if (v138 < 64)
              {
                v139 = ~(-1 << v138);
              }

              v140 = v139 & v137;
              v141 = (v138 + 63) >> 6;
              v206 = v133 + 64;
              v207 = v133;
              v142 = 0x280041000uLL;
              v205 = v141;
              if (v140)
              {
                do
                {
                  v143 = __clz(__rbit64(v140));
                  v209 = (v140 - 1) & v140;
LABEL_113:
                  v146 = v143 | (v136 << 6);
                  v210 = v136;
                  v147 = *(v134 + 56);
                  v148 = (*(v134 + 48) + 16 * v146);
                  v149 = v148[1];
                  v212 = *v148;
                  *v214 = v146;
                  v150 = (v147 + 152 * v146);
                  v151 = *v150;
                  v226 = v150[1];
                  v152 = v150[2];
                  v153 = v150[3];
                  v154 = v150[5];
                  v228 = v150[4];
                  v229 = v154;
                  v227[0] = v152;
                  v227[1] = v153;
                  v155 = v150[6];
                  v156 = v150[7];
                  v157 = v150[8];
                  v233 = *(v150 + 18);
                  v231 = v156;
                  v232 = v157;
                  v230 = v155;
                  v225 = v151;
                  v158 = v157;
                  v159 = *(v157 + 16);
                  v211 = v149;

                  outlined init with copy of NodeDef(&v225, v223);
                  v244 = v158;
                  if (v159)
                  {
                    v160 = 0;
                    v161 = (v158 + 4);
                    v162 = (v158 + 4);
                    while (1)
                    {
                      if (v160 >= v158[2])
                      {
                        __break(1u);
                        goto LABEL_140;
                      }

                      v164 = v162[1];
                      v163 = v162[2];
                      v165 = *v162;
                      *(v224 + 9) = *(v162 + 41);
                      v223[1] = v164;
                      v224[0] = v163;
                      v223[0] = v165;
                      outlined init with copy of NodeDef.IOSpec(v223, v221);
                      if (*(v142 + 1704) != -1)
                      {
                        swift_once();
                      }

                      v166 = static MaterialXDataType.filename;
                      v167 = MaterialXDataType.isEqual(to:)(static MaterialXDataType.filename);
                      outlined destroy of NodeDef.IOSpec(v223);
                      if (v167 & 1) != 0 && (BYTE8(v224[1]))
                      {
                        break;
                      }

                      v158 = v244;
                      ++v160;
                      v162 += 4;
                      if (v159 == v160)
                      {
                        goto LABEL_122;
                      }
                    }

                    v180 = v244[2];
                    if (v180)
                    {
                      v220 = MEMORY[0x277D84F90];
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v180, 0);
                      v181 = v220;
                      do
                      {
                        v244 = v181;
                        v182 = *v161;
                        v183 = v161[1];
                        v184 = v161[2];
                        *(v222 + 9) = *(v161 + 41);
                        v221[1] = v183;
                        v222[0] = v184;
                        v221[0] = v182;
                        v185 = *&v222[1];
                        *&v216 = *(&v184 + 1);
                        v186 = v184;
                        *&v215 = *(&v183 + 1);
                        v187 = *(&v182 + 1);
                        v188 = v183;
                        *&v214[8] = v182;
                        v189 = MaterialXDataType.isEqual(to:)(v166);
                        *&v217 = v185;
                        if (v189)
                        {

                          v190 = 0;
                        }

                        else
                        {
                          v190 = BYTE8(v222[1]);
                          outlined init with copy of NodeDef.IOSpec(v221, &v219);
                        }

                        v181 = v244;
                        v191 = v186;
                        v220 = v244;
                        v193 = v244[2];
                        v192 = v244[3];
                        if (v193 >= v192 >> 1)
                        {
                          LODWORD(v203) = v190;
                          v244 = v186;
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1);
                          LOBYTE(v190) = v203;
                          v191 = v244;
                          v181 = v220;
                        }

                        v181[2] = v193 + 1;
                        v194 = &v181[8 * v193];
                        v194[4] = *&v214[8];
                        v194[5] = v187;
                        v195 = v215;
                        v194[6] = v188;
                        v194[7] = v195;
                        v194[8] = v191;
                        v196 = v217;
                        v194[9] = v216;
                        v194[10] = v196;
                        v161 += 4;
                        *(v194 + 88) = v190;
                        --v180;
                      }

                      while (v180);
                      v244 = v181;
                    }

                    else
                    {
                      v244 = MEMORY[0x277D84F90];
                    }

                    v179 = *(&v225 + 1);
                    v178 = v225;
                    v176 = *(&v226 + 1);
                    v177 = v226;
                    v215 = v227[1];
                    v216 = v227[0];
                    *&v214[8] = v228;
                    v172 = *(&v229 + 1);
                    v171 = *(&v232 + 1);
                    v203 = v230;
                    v217 = v231;

                    outlined copy of MaterialXAvailability(v217, *(&v217 + 1));
                    outlined destroy of NodeDef(&v225);
                    v174 = v215;
                    v175 = v216;
                    v173 = *&v214[8];
                    v170 = v217;
                    v169 = v203;
                    v168 = 0;
                  }

                  else
                  {
LABEL_122:
                    v168 = v233;
                    v169 = v230;
                    v170 = v231;
                    v171 = *(&v232 + 1);
                    v172 = *(&v229 + 1);
                    v174 = v227[1];
                    v173 = v228;
                    v175 = v227[0];
                    v176 = *(&v226 + 1);
                    v177 = v226;
                    v179 = *(&v225 + 1);
                    v178 = v225;
                  }

                  v197 = v229;
                  v198 = *v214;
                  v135 = v207;
                  *(v206 + ((*v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v214[0];
                  v199 = (v135[6] + 16 * v198);
                  *v199 = v212;
                  v199[1] = v211;
                  v200 = v135[7] + 152 * v198;
                  *v200 = v178;
                  *(v200 + 8) = v179;
                  *(v200 + 16) = v177;
                  *(v200 + 24) = v176;
                  *(v200 + 32) = v175;
                  *(v200 + 48) = v174;
                  *(v200 + 64) = v173;
                  *(v200 + 80) = v197;
                  *(v200 + 88) = v172;
                  *(v200 + 96) = v169;
                  *(v200 + 112) = v170;
                  *(v200 + 128) = v244;
                  *(v200 + 136) = v171;
                  *(v200 + 144) = v168;
                  v201 = v135[2];
                  v120 = __OFADD__(v201, 1);
                  v202 = v201 + 1;
                  if (v120)
                  {
                    goto LABEL_143;
                  }

                  v135[2] = v202;
                  v134 = v208;
                  v140 = v209;
                  v136 = v210;
                  v141 = v205;
                  v142 = 0x280041000;
                }

                while (v209);
              }

              v144 = v136;
              while (1)
              {
                v136 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  break;
                }

                if (v136 >= v141)
                {

                  *v213 = v135;
                  return;
                }

                v145 = *(v204 + 8 * v136);
                ++v144;
                if (v145)
                {
                  v143 = __clz(__rbit64(v145));
                  v209 = (v145 - 1) & v145;
                  goto LABEL_113;
                }
              }

LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v94 = *(v90 + 8 * v95);
            ++v93;
            if (v94)
            {
              v93 = v95;
              goto LABEL_83;
            }
          }

LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

LABEL_83:
        *v214 = (v94 - 1) & v94;
        v96 = __clz(__rbit64(v94)) | (v93 << 6);
        v97 = (*(v89 + 48) + 16 * v96);
        v98 = *v97;
        v99 = v97[1];
        v100 = *(*(v89 + 56) + 8 * v96);

        v101._countAndFlagsBits = v206;
        v101._object = (v207 | 0x8000000000000000);
        v212 = v98;
        if (String.hasPrefix(_:)(v101))
        {
          break;
        }
      }

      v209 = v99;
      v102 = *(v100 + 16);
      if (v102)
      {
        break;
      }

      v111 = MEMORY[0x277D84F90];
LABEL_93:
      v112 = v209;

      v113 = v213;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v113[2];
      *&v225 = v115;
      v116 = specialized __RawDictionaryStorage.find<A>(_:)(v212, v112);
      v118 = *(v115 + 16);
      v119 = (v117 & 1) == 0;
      v120 = __OFADD__(v118, v119);
      v121 = v118 + v119;
      if (v120)
      {
        goto LABEL_146;
      }

      v122 = v117;
      if (*(v115 + 24) >= v121)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v130 = v90;
          v131 = v116;
          specialized _NativeDictionary.copy()();
          v116 = v131;
          v90 = v130;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v121, isUniquelyReferenced_nonNull_native);
        v116 = specialized __RawDictionaryStorage.find<A>(_:)(v212, v209);
        if ((v122 & 1) != (v123 & 1))
        {
          goto LABEL_155;
        }
      }

      v124 = v90;
      v125 = v225;
      if (v122)
      {
        *(*(v225 + 56) + 8 * v116) = v111;

        swift_bridgeObjectRelease_n();
      }

      else
      {
        *(v225 + 8 * (v116 >> 6) + 64) |= 1 << v116;
        v126 = (v125[6] + 16 * v116);
        v127 = v209;
        *v126 = v212;
        v126[1] = v127;
        *(v125[7] + 8 * v116) = v111;
        v128 = v125[2];
        v120 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v120)
        {
          goto LABEL_147;
        }

        v125[2] = v129;
      }

      v213[2] = v125;
      v89 = v205;
      v90 = v124;
    }

    v204 = v90;
    *&v225 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102, 0);
    v103 = 0;
    v104 = v225;
    v105 = v210;
    *&v214[8] = (*(v210 + 80) + 32) & ~*(v210 + 80);
    *&v217 = v100 + *&v214[8];
    *&v216 = v100;
    *&v215 = v102;
    while (v103 < *(v100 + 16))
    {
      v106 = *(v105 + 72);
      outlined init with copy of NodeDef.Implementation(v217 + v106 * v103, v3, type metadata accessor for NodeDef.Implementation);
      v107 = v218;
      closure #1 in closure #3 in NodeDefStore.applyStandardLibraryFixes()(v3, v244);
      if (v107)
      {
        outlined destroy of NodeDef.Implementation(v3, type metadata accessor for NodeDef.Implementation);

        return;
      }

      v218 = 0;
      v108 = v3;
      outlined destroy of NodeDef.Implementation(v3, type metadata accessor for NodeDef.Implementation);
      *&v225 = v104;
      v110 = *(v104 + 16);
      v109 = *(v104 + 24);
      if (v110 >= v109 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1);
        v105 = v210;
        v104 = v225;
      }

      ++v103;
      *(v104 + 16) = v110 + 1;
      outlined init with take of NodeDef.Implementation(v244, v104 + *&v214[8] + v110 * v106, type metadata accessor for NodeDef.Implementation);
      v3 = v108;
      v100 = v216;
      if (v215 == v103)
      {
        v111 = v104;
        v90 = v204;
        goto LABEL_93;
      }
    }

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
    goto LABEL_148;
  }

  *&v217 = v14;
  v19 = v17;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x8000000265F332A0);
  if ((v21 & 1) == 0)
  {
LABEL_51:
    if (*(v19 + 16))
    {
      v56 = specialized __RawDictionaryStorage.find<A>(_:)(0x56556473555F444ELL, 0xEF65727574786554);
      if (v57)
      {
        *&v203 = v3;
        v58 = (*(v19 + 56) + 152 * v56);
        v60 = *v58;
        v59 = v58[1];
        v61 = v58[3];
        v209 = v58[2];
        v62 = v58[6];
        v63 = v58[7];
        v211 = v60;
        v212 = v62;
        v64 = v58[11];
        v66 = v58[16];
        v65 = v58[17];
        v67 = *(v66 + 16);
        if (v67)
        {
          *&v221[0] = MEMORY[0x277D84F90];
          v205 = v59;

          v206 = v63;

          v207 = v64;

          v208 = v65;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
          v68 = *&v221[0];
          *&v216 = v67 - 1;
          v69 = 32;
          v204 = v61;
          *v214 = v66;
          while (1)
          {
            *&v214[8] = v69;
            v70 = (v66 + v69);
            v72 = v70[1];
            v71 = v70[2];
            v73 = *v70;
            *(v227 + 9) = *(v70 + 41);
            v226 = v72;
            v227[0] = v71;
            v225 = v73;
            v74 = *&v227[1];
            *&v215 = *(&v72 + 1);
            v217 = v71;
            v75 = v73;
            if (v73 == __PAIR128__(0xE500000000000000, 0x5370617277) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            if (v75 == __PAIR128__(0xE500000000000000, 0x5470617277) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              outlined init with copy of NodeDef.IOSpec(&v225, v223);
              v84 = one-time initialization token for vAddressMode;

              if (v84 != -1)
              {
                swift_once();
              }

              v77 = &static MaterialXDataType.vAddressMode;
              goto LABEL_60;
            }

            v79 = BYTE8(v227[1]);
            v78 = v226;
            outlined init with copy of NodeDef.IOSpec(&v225, v223);
LABEL_61:
            *&v221[0] = v68;
            v81 = *(v68 + 16);
            v80 = *(v68 + 24);
            if (v81 >= v80 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
              v68 = *&v221[0];
            }

            *(v68 + 16) = v81 + 1;
            v82 = v68 + (v81 << 6);
            *(v82 + 32) = v75;
            v83 = v215;
            *(v82 + 48) = v78;
            *(v82 + 56) = v83;
            *(v82 + 64) = v217;
            *(v82 + 80) = v74;
            *(v82 + 88) = v79;
            if (!v216)
            {

              v3 = v203;
              v85 = v207;
              v65 = v208;
              v86 = v205;
              v63 = v206;
              v61 = v204;
              goto LABEL_73;
            }

            *&v216 = v216 - 1;
            v66 = *v214;
            v69 = *&v214[8] + 64;
          }

          outlined init with copy of NodeDef.IOSpec(&v225, v223);
          v76 = one-time initialization token for uAddressMode;

          if (v76 != -1)
          {
            swift_once();
          }

          v77 = &static MaterialXDataType.uAddressMode;
LABEL_60:
          v78 = *v77;

          outlined destroy of NodeDef.IOSpec(&v225);
          v79 = 1;
          goto LABEL_61;
        }

        v86 = v59;

        v85 = v64;
        v68 = MEMORY[0x277D84F90];
        v3 = v203;
LABEL_73:
        v234[0] = v211;
        v234[1] = v86;
        v234[2] = v209;
        v234[3] = v61;
        v234[4] = 0;
        v234[5] = 0;
        v234[6] = v212;
        v234[7] = v63;
        v234[8] = 0;
        v234[9] = 0;
        v235 = 2;
        v236 = v85;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        v240 = 1;
        v241 = v68;
        v242 = v65;
        v243 = 0;
        v87 = v213;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *&v225 = *v87;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v234, 0x56556473555F444ELL, 0xEF65727574786554, v88);
        v208 = v225;
        *v87 = v225;
      }
    }

    goto LABEL_74;
  }

  v22 = *(v17 + 56) + 152 * v20;
  v23 = *(v22 + 16);
  v225 = *v22;
  v226 = v23;
  v24 = *(v22 + 80);
  v26 = *(v22 + 32);
  v25 = *(v22 + 48);
  v228 = *(v22 + 64);
  v229 = v24;
  v227[0] = v26;
  v227[1] = v25;
  v27 = *(v22 + 96);
  v28 = *(v22 + 112);
  v29 = *(v22 + 128);
  v233 = *(v22 + 144);
  v231 = v28;
  v232 = v29;
  v230 = v27;
  v30 = v213[2];
  v31 = v225;
  v32 = *(v30 + 16);
  *&v203 = v3;
  *&v215 = v8;
  *&v216 = v11;
  if (v32)
  {
    outlined init with copy of NodeDef(&v225, v223);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, *(&v31 + 1));
    if (v34)
    {
      v35 = *(*(v30 + 56) + 8 * v33);

      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of NodeDef(&v225, v223);
  }

  v35 = MEMORY[0x277D84F90];
LABEL_8:
  *v214 = v31;
  v36 = v35[2];
  if (v36)
  {
    v37 = 0;
    while (1)
    {
      if (v37 >= v35[2])
      {
        goto LABEL_144;
      }

      v38 = (*(v210 + 80) + 32) & ~*(v210 + 80);
      v39 = *(v210 + 72);
      outlined init with copy of NodeDef.Implementation(v35 + v38 + v39 * v37, v16, type metadata accessor for NodeDef.Implementation);
      if (*v16 == 0xD000000000000021 && 0x8000000265F34740 == v16[1])
      {
        break;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of NodeDef.Implementation(v16, type metadata accessor for NodeDef.Implementation);
      if (v41)
      {
        goto LABEL_20;
      }

      if (v36 == ++v37)
      {
        v42 = v35[2];
        v37 = v42;
        goto LABEL_43;
      }
    }

    outlined destroy of NodeDef.Implementation(v16, type metadata accessor for NodeDef.Implementation);
LABEL_20:
    v42 = v37 + 1;
    v43 = v35[2];
    if (v43 - 1 != v37)
    {
      v44 = v38 + v39 * v42;
      v45 = v217;
      do
      {
        if (v42 >= v43)
        {
          goto LABEL_145;
        }

        outlined init with copy of NodeDef.Implementation(v35 + v44, v45, type metadata accessor for NodeDef.Implementation);
        if (*v45 == 0xD000000000000021 && 0x8000000265F34740 == v45[1])
        {
          outlined destroy of NodeDef.Implementation(v45, type metadata accessor for NodeDef.Implementation);
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v48 = v45;
          v49 = v47;
          outlined destroy of NodeDef.Implementation(v48, type metadata accessor for NodeDef.Implementation);
          if (v49)
          {
            v45 = v217;
          }

          else
          {
            if (v42 == v37)
            {
              v45 = v217;
            }

            else
            {
              if (v37 < 0)
              {
                goto LABEL_151;
              }

              v50 = v35[2];
              if (v37 >= v50)
              {
                goto LABEL_152;
              }

              v212 = v37 * v39;
              outlined init with copy of NodeDef.Implementation(v35 + v38 + v37 * v39, v216, type metadata accessor for NodeDef.Implementation);
              if (v42 >= v50)
              {
                goto LABEL_153;
              }

              outlined init with copy of NodeDef.Implementation(v35 + v44, v215, type metadata accessor for NodeDef.Implementation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
              }

              v45 = v217;
              outlined assign with take of NodeDef.Implementation(v215, v35 + v38 + v212);
              if (v42 >= v35[2])
              {
                goto LABEL_154;
              }

              outlined assign with take of NodeDef.Implementation(v216, v35 + v44);
            }

            ++v37;
          }
        }

        ++v42;
        v43 = v35[2];
        v44 += v39;
      }

      while (v42 != v43);
      if (v42 < v37)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v37 < 0)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }
  }

  else
  {
    v42 = 0;
    v37 = 0;
  }

LABEL_43:
  if (!__OFADD__(v42, v37 - v42))
  {
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v223[0] = v35;
    if (!v51 || v37 > v35[3] >> 1)
    {
      if (v42 <= v37)
      {
        v52 = v37;
      }

      else
      {
        v52 = v42;
      }

      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v52, 1, v35);
      *&v223[0] = v35;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v37, v42, 0);
    v53 = *&v214[8];

    v54 = v213;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v221[0] = v54[2];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, *v214, v53, v55);

    outlined destroy of NodeDef(&v225);
    v54[2] = *&v221[0];
    v19 = v208;
    v3 = v203;
    goto LABEL_51;
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t closure #1 in NodeDefStore.loadLibrary()@<X0>(void *a2@<X8>)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v38 - v10;
  MEMORY[0x28223BE20](v11);
  v44 = &v38 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  URL.appendingPathComponent(_:isDirectory:)();
  v16 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_265F1F670;
  v18 = *MEMORY[0x277CBE8E8];
  *(v17 + 32) = *MEMORY[0x277CBE8E8];
  v19 = v18;
  v20 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v20)
  {
    result = (*(v7 + 8))(v15, v6);
    v28 = MEMORY[0x277D84F90];
LABEL_24:
    *a2 = v28;
    return result;
  }

  v40 = v15;
  v41 = a2;
  v48 = v7;
  v53 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v21 = v53;
  v39 = v20;
  NSEnumerator.makeIterator()();
  v46 = _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  dispatch thunk of IteratorProtocol.next()();
  if (v51)
  {
    v22 = v44;
    do
    {
      outlined init with take of Any(&v50, v52);
      outlined init with take of Any(v52, &v50);
      swift_dynamicCast();
      v53 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v44;
        v21 = v53;
      }

      *(v21 + 16) = v24 + 1;
      (*(v48 + 32))(v21 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v24, v22, v6);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v51);
  }

  (*(v45 + 8))(v5, v3);
  result = outlined destroy of [Input](&v50, &_sypSgMd, &_sypSgMR);
  v45 = *(v21 + 16);
  if (!v45)
  {
    v28 = MEMORY[0x277D84F90];
    v27 = v48;
LABEL_23:
    (*(v27 + 8))(v40, v6);

    a2 = v41;
    goto LABEL_24;
  }

  v26 = 0;
  v27 = v48;
  v44 = (v48 + 16);
  v42 = (v48 + 8);
  v46 = (v48 + 32);
  v28 = MEMORY[0x277D84F90];
  v43 = v6;
  while (v26 < *(v21 + 16))
  {
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = *(v27 + 72);
    (*(v27 + 16))(v49, v21 + v29 + v30 * v26, v6);
    if (URL.pathExtension.getter() == 2020373613 && v31 == 0xE400000000000000)
    {

LABEL_16:
      v33 = *v46;
      (*v46)(v47, v49, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v52[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
        v28 = *&v52[0];
      }

      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v28 = *&v52[0];
      }

      *(v28 + 16) = v36 + 1;
      v37 = v28 + v29 + v36 * v30;
      v6 = v43;
      result = v33(v37, v47, v43);
      v27 = v48;
      goto LABEL_10;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_16;
    }

    result = (*v42)(v49, v6);
LABEL_10:
    if (v45 == ++v26)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void specialized NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = 0;
  v38 = (v4 + 56);
  v34 = v4 + 48;
  v35 = v4 + 16;
  v32 = (v4 + 32);
  v33 = (v4 + 8);
  v27 = a1 + 32;
  v28 = a1;
  v15 = MEMORY[0x277D84F90];
  v31 = v6;
  while (1)
  {
    v23 = *(v28 + 16);
    if (v14 == v23)
    {
      (*v38)(v13, 1, 1, v3, v11);
LABEL_20:

      v25 = v26;
      specialized Sequence.forEach(_:)(v15, v26);
      specialized Sequence.forEach(_:)(v15, v25);

      return;
    }

    if (v14 >= v23)
    {
      break;
    }

    v24 = v14 + 1;
    v18 = *(v27 + 8 * v14);

    v14 = v24;
    v6 = v31;
    if (v18)
    {
      v29 = v14;
      v16 = *(v18 + 16);
      if (v16)
      {
        v17 = 0;
        v30 = v18;
        while (v17 < v16)
        {
          (*(v4 + 16))(v9, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v3);
          (*(v4 + 56))(v9, 0, 1, v3);
          outlined init with take of NodeDef.Implementation?(v9, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          if ((*(v4 + 48))(v13, 1, v3) == 1)
          {
            goto LABEL_20;
          }

          (*v32)(v6, v13, v3);
          closure #1 in NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(v6, &v37);
          if (v1)
          {
            goto LABEL_23;
          }

          (*v33)(v6, v3);
          if (v37)
          {
            v36 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
            }

            v20 = v15[2];
            v19 = v15[3];
            v21 = v36;
            if (v20 >= v19 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
              v21 = v36;
              v15 = v22;
            }

            v15[2] = v20 + 1;
            *&v15[2 * v20 + 4] = v21;
            v18 = v30;
            v6 = v31;
          }

          ++v17;
          v16 = *(v18 + 16);
          if (v17 == v16)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      (*v38)(v9, 1, 1, v3);
      outlined destroy of [Input](v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v14 = v29;
    }
  }

  __break(1u);
LABEL_23:

  (*v33)(v6, v3);

  __break(1u);
}

double NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph10XMLElement_pMd, &_s11ShaderGraph10XMLElement_pMR);
  v4 = Sequence.compactMap<A>(_:)();
  specialized Sequence.forEach(_:)(v4, v3);
  specialized Sequence.forEach(_:)(v4, v3);

  return result;
}

void closure #1 in NodeDefStore.loadLibrary<A>(materialXLibraryFileURLs:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = Data.init(contentsOf:options:)();
  if (v2)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    (*(v6 + 16))(v11, a1, v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315138;
      _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v5;
      v21 = a2;
      v23 = v22;
      (*(v6 + 8))(v11, v20);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v23, &v46);
      a2 = v21;

      *(v17 + 4) = v24;
      _os_log_impl(&dword_265D7D000, v15, v16, "Failed to load contents of %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266773120](v18, -1, -1);
      MEMORY[0x266773120](v17, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v45 = 0;
    outlined copy of Data._Representation(v12, v13);
    v27 = XMLDocument.rootElement()(v25, v26, 1);
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      outlined consume of Data._Representation(v25, v26);
      outlined consume of Data._Representation(v25, v26);
      *a2 = v29;
      a2[1] = v30;
    }

    else
    {
      v44 = a2;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);
      (*(v6 + 16))(v8, a1, v5);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *v34 = 136315138;
        _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v42 = v32;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v6 + 8))(v8, v5);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v46);

        *(v34 + 4) = v38;
        v39 = v42;
        _os_log_impl(&dword_265D7D000, v42, v33, "Failed to find root element for XML at %s", v34, 0xCu);
        v40 = v43;
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x266773120](v40, -1, -1);
        MEMORY[0x266773120](v34, -1, -1);
        outlined consume of Data._Representation(v25, v26);
        outlined consume of Data._Representation(v25, v26);
      }

      else
      {
        outlined consume of Data._Representation(v25, v26);
        outlined consume of Data._Representation(v25, v26);

        (*(v6 + 8))(v8, v5);
      }

      v41 = v44;
      *v44 = 0;
      v41[1] = 0;
    }
  }
}

void closure #1 in closure #3 in NodeDefStore.applyStandardLibraryFixes()(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = type metadata accessor for NodeDef.Implementation.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NodeDef.Implementation(0);
  outlined init with copy of NodeDef.Implementation(a1 + *(v8 + 20), v7, type metadata accessor for NodeDef.Implementation.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of NodeDef.Implementation(v7, type metadata accessor for NodeDef.Implementation.Kind);
    outlined init with copy of NodeDef.Implementation(a1, a2, type metadata accessor for NodeDef.Implementation);
    return;
  }

  v46 = v5;
  v47 = v8;
  v51 = a1;
  v52 = a2;
  v53 = v2;
  v9 = v7[9];
  v85 = v7[8];
  v86[0] = v9;
  *(v86 + 9) = *(v7 + 153);
  v10 = v7[5];
  v81 = v7[4];
  v82 = v10;
  v11 = v7[7];
  v83 = v7[6];
  v84 = v11;
  v12 = v7[1];
  v77 = *v7;
  v78 = v12;
  v13 = v7[3];
  v79 = v7[2];
  v80 = v13;
  v14 = v82;
  v15 = v83;
  v16 = v84;
  v17 = BYTE8(v84);
  specialized ShaderGraphNode.output(labeled:)(&v87, 0x6B6361626C6C6166, 0xE800000000000000, v83);
  if (!v88)
  {
    *&v65[0] = 0;
    *(&v65[0] + 1) = 0xE000000000000000;
    MEMORY[0x266771550](0x6B6361626C6C6166, 0xE800000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v67 = v14;
    v68 = v15;
    *&v69 = v16;
    BYTE8(v69) = v17;
    _print_unlocked<A, B>(_:_:)();

    goto LABEL_16;
  }

  v49 = v88;
  v48 = v89;
  v43 = v90;
  v44 = v87;
  HIDWORD(v42) = v91;
  v45 = v92;
  v18 = *(v81 + 16);
  v50 = v81;

  if (!v18)
  {
LABEL_14:

    v67 = v48;
    outlined destroy of String(&v67);
LABEL_16:
    outlined destroy of UserGraph(&v77);
    outlined init with copy of NodeDef.Implementation(v51, v52, type metadata accessor for NodeDef.Implementation);
    return;
  }

  v19 = 0;
  v20 = v50 + 32;
  v54 = " one output for node def ";
  while (1)
  {
    if (v19 >= v18)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v22 = (v20 + 48 * v19);
    if (v22[3] == -7)
    {
      v21 = __OFADD__(v19++, 1);
      if (v21)
      {
        goto LABEL_22;
      }

      goto LABEL_7;
    }

    v21 = __OFADD__(v19++, 1);
    if (v21)
    {
      goto LABEL_21;
    }

    v23 = *v22;
    if (*v22 >> 61 == 5)
    {
      break;
    }

LABEL_7:
    if (v19 >= v18)
    {
      goto LABEL_14;
    }
  }

  v24 = v22[1];
  outlined copy of NodePersonality(v23);
  v110 = v24;

  v25._object = (v54 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000011;
  v26 = String.hasPrefix(_:)(v25);

  if (!v26)
  {

    outlined consume of NodePersonality(v23);
    goto LABEL_7;
  }

  specialized ShaderGraphNode.output(labeled:)(&v93, 0x746C7561666564, 0xE700000000000000, v110);
  if (v94)
  {
    v63 = v85;
    v64[0] = v86[0];
    *(v64 + 9) = *(v86 + 9);
    v59 = v81;
    v60 = v82;
    v61 = v83;
    v62 = v84;
    v55 = v77;
    v56 = v78;
    v57 = v79;
    v58 = v80;
    v100 = v48;
    v101[0] = v95;
    v101[1] = v96;
    v102[0] = v44;
    v102[1] = v49;
    v103 = v48;
    v104 = v43;
    v105 = BYTE4(v42) & 1;
    v106 = v45;
    v107[0] = v93;
    v107[1] = v94;
    v107[2] = v95;
    v107[3] = v96;
    v107[4] = v97;
    v108 = v98 & 1;
    v109 = v99;
    outlined init with copy of UserGraph(&v77, &v67);

    outlined init with copy of String(&v100, &v67);

    outlined init with copy of String(v101, &v67);
    UserGraph.connect(_:to:)(v102, v107);

    v27 = *(v47 + 20);
    v28 = v64[0];
    v65[8] = v63;
    v66[0] = v64[0];
    *(v66 + 9) = *(v64 + 9);
    v29 = v59;
    v30 = v60;
    v65[4] = v59;
    v65[5] = v60;
    v32 = v61;
    v31 = v62;
    v65[6] = v61;
    v65[7] = v62;
    v33 = v55;
    v34 = v56;
    v65[0] = v55;
    v65[1] = v56;
    v36 = v57;
    v35 = v58;
    v65[2] = v57;
    v65[3] = v58;
    v37 = v52;
    v38 = (v52 + v27);
    v38[8] = v63;
    v38[9] = v28;
    *(v38 + 153) = *(v64 + 9);
    v38[4] = v29;
    v38[5] = v30;
    v38[6] = v32;
    v38[7] = v31;
    *v38 = v33;
    v38[1] = v34;
    v39 = v51[1];
    v54 = *v51;
    v38[2] = v36;
    v38[3] = v35;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_265F20CD0;
    type metadata accessor for MaterialXTarget();
    *(v40 + 32) = swift_initStaticObject();

    outlined init with copy of UserGraph(v65, &v67);
    v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v40);

    outlined destroy of String(&v100);
    outlined consume of NodePersonality(v23);

    outlined destroy of String(v101);
    outlined destroy of UserGraph(&v77);
    v75 = v63;
    v76[0] = v64[0];
    *(v76 + 9) = *(v64 + 9);
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v67 = v55;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    outlined destroy of UserGraph(&v67);
    *v37 = v54;
    v37[1] = v39;
    *(v37 + *(v47 + 24)) = v41;
  }

  else
  {
    outlined init with copy of NodeDef.Implementation(v51, v52, type metadata accessor for NodeDef.Implementation);
    outlined consume of NodePersonality(v23);

    v67 = v48;
    outlined destroy of String(&v67);
    outlined destroy of UserGraph(&v77);
  }
}

uint64_t NodeDefStore.load(materialXFile:)(uint64_t a1)
{
  result = Data.init(contentsOf:options:)();
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    outlined copy of Data._Representation(result, v4);
    v7 = XMLDocument.rootElement()(v5, v6, 1);
    if (v7)
    {
      v9 = v7;
      v10 = v8;
      collectNodeDefs(_:into:)(v7, v8, v1);
      collectGeomPropDefs(_:into:)(v9, v10, v1);
      collectImplementations(_:into:)(v9, v10, v1);
      swift_unknownObjectRelease();
    }

    else
    {
      _StringGuts.grow(_:)(41);

      v22[0] = 0xD000000000000027;
      v22[1] = 0x8000000265F34770;
      type metadata accessor for URL();
      _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v11);

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000265F34770, v22);
        _os_log_impl(&dword_265D7D000, v13, v14, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x266773120](v16, -1, -1);
        MEMORY[0x266773120](v15, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265F1F670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v18;
      *(inited + 48) = 0xD000000000000027;
      *(inited + 56) = 0x8000000265F34770;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of [Input](inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v20 = MEMORY[0x266771450](0, 0xE000000000000000);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 initWithDomain:v20 code:0 userInfo:isa];

      swift_willThrow();
    }

    outlined consume of Data._Representation(v5, v6);
    return outlined consume of Data._Representation(v5, v6);
  }

  return result;
}

double NodeDefStore.createNode(in:from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X1>)
{
  specialized NodeDefStore.createNode(in:from:)(a2, &v5);
  v3 = v6[0];
  *a1 = v5;
  a1[1] = v3;
  result = *(v6 + 9);
  *(a1 + 25) = *(v6 + 9);
  return result;
}

uint64_t closure #6 in NodeDefStore.createNode(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v40 = a7;
  v41 = a6;
  v48 = a5;
  v9 = *(a1 + 112);
  v45[6] = *(a1 + 96);
  v45[7] = v9;
  v46 = *(a1 + 128);
  v47 = *(a1 + 144);
  v10 = *(a1 + 48);
  v45[2] = *(a1 + 32);
  v45[3] = v10;
  v11 = *(a1 + 80);
  v45[4] = *(a1 + 64);
  v45[5] = v11;
  v12 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 48);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v42 = *(v14 - 2);
      v43 = v16;
      v44 = v15;

      v17 = closure #1 in closure #6 in NodeDefStore.createNode(for:in:)(&v42, v45, a3, a4, NodeDef.subscript.getter, "Nodedef '%s' cannot instantiate element '%s' because it does not have input '%s'", v39, v40, v41);

      if ((v17 & 1) == 0)
      {
        goto LABEL_30;
      }

      v14 += 3;
    }

    while (--v13);
  }

  v18 = *(v48 + 16);
  if (v18)
  {
    v19 = v18 - 1;
    v20 = (v48 + 48);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v42 = *(v20 - 2);
      v43 = v22;
      v44 = v21;

      v23 = closure #1 in closure #6 in NodeDefStore.createNode(for:in:)(&v42, v45, a3, a4, NodeDef.subscript.getter, "Nodedef '%s' cannot instantiate element '%s because it does not have output '%s'", v39, v40, v41);

      v25 = v19-- != 0;
      if ((v23 & 1) == 0)
      {
        break;
      }

      v20 += 3;
    }

    while (v25);
    return v23 & 1;
  }

  swift_getObjectType();
  v26 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
  if (!v27)
  {
LABEL_30:
    v23 = 0;
    return v23 & 1;
  }

  v28 = v27;
  if (v26 == 0x74756F69746C756DLL && v27 == 0xEB00000000747570)
  {
    goto LABEL_19;
  }

  v29 = v26;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_19;
  }

  if (!*(*(&v46 + 1) + 16))
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, logger);
    outlined init with copy of NodeDef(v45, &v42);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    outlined destroy of NodeDef(v45);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v45[0], *(&v45[0] + 1), &v42);
      _os_log_impl(&dword_265D7D000, v33, v34, "Could not use nodedef '%s' because it has no <output> elements.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266773120](v36, -1, -1);
      MEMORY[0x266773120](v35, -1, -1);
    }

    goto LABEL_30;
  }

  v30 = *(*(&v46 + 1) + 48);
  type metadata accessor for MaterialXDataType();
  inited = swift_initStackObject();
  inited[4] = v29;
  inited[5] = v28;
  inited[2] = MEMORY[0x277D84F90];
  inited[3] = 0;
  if (MaterialXDataType.isEqual(to:)(v30))
  {
LABEL_19:

    v23 = 1;
    return v23 & 1;
  }

  if (!*(v30 + 24))
  {

    goto LABEL_30;
  }

  v37 = one-time initialization token for string;

  if (v37 != -1)
  {
    swift_once();
  }

  v23 = MaterialXDataType.isEqual(to:)(static MaterialXDataType.string);

  return v23 & 1;
}

uint64_t closure #1 in closure #6 in NodeDefStore.createNode(for:in:)(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, void (*a5)(void *__return_ptr, uint64_t, uint64_t), char *a6, ...)
{
  v12 = *a1;
  v11 = a1[1];
  a5(v24, *a1, v11);
  if (v24[1])
  {
    v13 = v25;
    if (MaterialXDataType.isEqual(to:)(v25))
    {
      outlined destroy of [Input](v24, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
      return 1;
    }

    if (*(v13 + 24))
    {
      if (one-time initialization token for string != -1)
      {
        swift_once();
      }

      v21 = MaterialXDataType.isEqual(to:)(static MaterialXDataType.string);
      outlined destroy of [Input](v24, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
      if (v21)
      {
        return 1;
      }
    }

    else
    {
      outlined destroy of [Input](v24, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
    }

    return 0;
  }

  else
  {
    v26 = v6;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    outlined init with copy of NodeDef(a2, v23);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    outlined destroy of NodeDef(a2);

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      format = a6;
      v23[0] = swift_slowAlloc();
      v19 = v23[0];
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a2, a2[1], v23);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v23);
      *(v18 + 22) = 2080;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v23);

      *(v18 + 24) = v20;
      _os_log_impl(&dword_265D7D000, v16, v17, format, v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v19, -1, -1);
      MEMORY[0x266773120](v18, -1, -1);
    }

    return 0;
  }
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v11 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = v10 + 56 * a3;
  v15 = (v9 + 32 + 56 * a2);
  if (result != v15 || result >= v15 + 56 * v14)
  {
    result = memmove(result, v15, 56 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = *a4;
    result = a4[1];
    v21 = *(a4 + 2);
    v23 = *(a4 + 1);
    v20 = v23;
    *v10 = v19;
    *(v10 + 8) = result;
    *(v10 + 48) = a4[6];
    *(v10 + 16) = v20;
    *(v10 + 32) = v21;
    if (a3 == 1)
    {
      return result;
    }

    outlined init with copy of String(&v23, &v22);
    __break(1u);
  }

  v23 = *(a4 + 1);

  return outlined destroy of String(&v23);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double specialized NodeDefStore.createNode(in:from:)@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v2 = a1[16];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    *&v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v29;
    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      *&v29 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);

      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v4 = v29;
      }

      *(v4 + 16) = v10 + 1;
      v11 = (v4 + 24 * v10);
      v11[4] = v6;
      v11[5] = v7;
      v11[6] = v8;
      v5 += 8;
      --v3;
    }

    while (v3);
    v12 = a1;
  }

  else
  {
    v12 = a1;
  }

  v13 = v12[17];
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    *&v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v29;
    v16 = (v13 + 48);
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      *&v29 = v15;
      v20 = *(v15 + 16);
      v21 = *(v15 + 24);

      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v20 + 1;
      v22 = (v15 + 24 * v20);
      v22[4] = v17;
      v22[5] = v18;
      v22[6] = v19;
      v16 += 8;
      --v14;
    }

    while (v14);
    v12 = a1;
  }

  v23 = swift_allocObject();
  v24 = v12[1];
  *(v23 + 16) = *v12;
  *(v23 + 24) = v24;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v4, v15, v23 | 0xA000000000000000, &v29);

  v25 = v30[0];
  *a2 = v29;
  a2[1] = v25;
  result = *(v30 + 9);
  *(a2 + 25) = *(v30 + 9);
  return result;
}

void specialized NodeDefStore.createNode(for:in:)(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  v10 = *(v9 + 16);
  v11 = v10(ObjectType, v9);
  if (!v12)
  {
    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x266771550](0xD000000000000037, 0x8000000265F34B00);
    *&v209[0] = a1;
    *(&v209[0] + 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph10XMLElement_pMd, &_s11ShaderGraph10XMLElement_pMR);
    _print_unlocked<A, B>(_:_:)();
    v33 = 62;
LABEL_17:
    v34 = 0xE100000000000000;
    goto LABEL_18;
  }

  v191 = v11;
  v186 = a4;
  v197 = v12;
  v198 = ObjectType;
  v13 = *(a2 + 16);
  v195 = v9;
  v196 = a2;
  if (!v13(1701869940, 0xE400000000000000, ObjectType))
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = swift_getObjectType();
  v17 = (*(v15 + 32))(v16, v15);
  v19 = v18;
  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_9:

    if (!(v13)(1701667182, 0xE400000000000000, v198, a2) || (v25 = v24, v26 = swift_getObjectType(), v27 = (*(v25 + 32))(v26, v25), v29 = v28, swift_unknownObjectRelease(), !v29))
    {

      v29 = 0xE600000000000000;
      v27 = 0x3E656E6F6E3CLL;
    }

    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    MEMORY[0x266771550](0x20746E656D656C45, 0xE90000000000003CLL);
    v30 = v10(v198, v195);
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v30 = 0x3E656E6F6E3CLL;
      v32 = 0xE600000000000000;
    }

    MEMORY[0x266771550](v30, v32);

    MEMORY[0x266771550](0x656D616E202E2E2ELL, 0xEA0000000000223DLL);
    MEMORY[0x266771550](v27, v29);

    v33 = 0xD000000000000028;
    v34 = 0x8000000265F34B40;
LABEL_18:
    MEMORY[0x266771550](v33, v34);
    v35 = __dst;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v36 = 47;
    *(v36 + 8) = v35;
    swift_willThrow();
    return;
  }

  v21 = v195;
  v22 = *(v195 + 48);
  v23 = v22(0x7475706E692F2ELL, 0xE700000000000000, v198, v195);
  v187 = v4;
  if (v4)
  {
  }

  else
  {
    v37 = v23;
    v38 = 0;
    v39 = *(v23 + 16);
    v40 = MEMORY[0x277D84F90];
    v181 = v22;
LABEL_20:
    v41 = 16 * v38 + 32;
    v184 = v40;
    while (v39 != v38)
    {
      if (v38 >= *(v37 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      ++v38;
      v42 = v41 + 16;
      v43 = *(v37 + v41);
      swift_getObjectType();
      v44 = swift_conformsToProtocol2();
      v41 = v42;
      if (v44)
      {
        v41 = v42;
        if (v43)
        {
          v45 = v44;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v184[2] + 1, 1, v184);
          }

          v47 = v184[2];
          v46 = v184[3];
          if (v47 >= v46 >> 1)
          {
            v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v184);
          }

          v48 = v45;
          v40 = v184;
          v184[2] = v47 + 1;
          v49 = &v184[2 * v47];
          v49[4] = v43;
          v49[5] = v48;
          goto LABEL_20;
        }
      }
    }

    v50 = v40[2];
    v183 = a1;
    if (v50)
    {
      *&v199 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
      v51 = 0;
      v52 = v199;
      v53 = v40 + 5;
      v182 = v50;
      while (v51 < v40[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v188 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
        if (!v54)
        {
          goto LABEL_44;
        }

        v55 = v54;
        v192 = v52;
        v56 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
        if (!v57)
        {

LABEL_44:
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v69 = 47;
          *(v69 + 8) = 0xD000000000000020;
          *(v69 + 16) = 0x8000000265F34B70;
          swift_willThrow();

          swift_unknownObjectRelease();
          return;
        }

        v58 = v56;
        v59 = v57;
        v60 = XMLNode.subscript.getter(1836412517, 0xE400000000000000);
        if (v61)
        {
          v62 = v60;
          v63 = v61;

          *&__dst = v62;
          *(&__dst + 1) = v63;
          *&v209[0] = 44;
          *(&v209[0] + 1) = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v64 = StringProtocol.components<A>(separatedBy:)();

          type metadata accessor for MaterialXDataType();
          v65 = swift_allocObject();
          v65[4] = v188;
          v65[5] = v55;
          v65[3] = v64;
          v65[2] = MEMORY[0x277D84F90];
        }

        else
        {
          type metadata accessor for MaterialXDataType();
          v65 = swift_allocObject();
          v65[4] = v58;
          v65[5] = v59;
          v65[3] = 0;
          v65[2] = MEMORY[0x277D84F90];
        }

        swift_unknownObjectRelease();
        v52 = v192;
        *&v199 = v192;
        v67 = *(v192 + 16);
        v66 = *(v192 + 24);
        if (v67 >= v66 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
          v52 = v199;
        }

        ++v51;
        *(v52 + 16) = v67 + 1;
        v68 = (v52 + 24 * v67);
        v68[4] = v188;
        v68[5] = v55;
        v68[6] = v65;
        v53 += 2;
        a1 = v183;
        v40 = v184;
        if (v182 == v51)
        {

          v70 = v198;
          v21 = v195;
          goto LABEL_45;
        }
      }

      goto LABEL_114;
    }

    v52 = MEMORY[0x277D84F90];
    v70 = v198;
LABEL_45:
    v71 = v181(0x74757074756F2F2ELL, 0xE800000000000000, v70, v21);
    v72 = 0;
    v73 = *(v71 + 16);
    v74 = MEMORY[0x277D84F90];
    v193 = v52;
LABEL_46:
    v75 = 16 * v72 + 32;
    v189 = v74;
    while (v73 != v72)
    {
      if (v72 >= *(v71 + 16))
      {
        goto LABEL_116;
      }

      ++v72;
      v76 = v75 + 16;
      v77 = *(v71 + v75);
      swift_getObjectType();
      v78 = swift_conformsToProtocol2();
      v75 = v76;
      if (v78)
      {
        v75 = v76;
        if (v77)
        {
          v79 = v78;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v189[2] + 1, 1, v189);
          }

          v81 = v189[2];
          v80 = v189[3];
          if (v81 >= v80 >> 1)
          {
            v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v189);
          }

          v82 = v79;
          v74 = v189;
          v189[2] = v81 + 1;
          v83 = &v189[2 * v81];
          v83[4] = v77;
          v83[5] = v82;
          goto LABEL_46;
        }
      }
    }

    v187 = 0;

    v84 = v74[2];
    if (v84)
    {
      *&__dst = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
      v85 = 0;
      v86 = __dst;
      v87 = v74 + 5;
      v185 = v84;
      while (v85 < v74[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v88 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
        if (!v89)
        {
          goto LABEL_120;
        }

        v90 = v88;
        v91 = v89;
        v92 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
        if (!v93)
        {
          goto LABEL_121;
        }

        v94 = v92;
        v95 = v93;
        type metadata accessor for MaterialXDataType();
        v96 = swift_allocObject();
        v96[3] = 0;
        v96[4] = v94;
        v96[5] = v95;
        swift_unknownObjectRelease();
        v96[2] = MEMORY[0x277D84F90];
        *&__dst = v86;
        v98 = *(v86 + 16);
        v97 = *(v86 + 24);
        if (v98 >= v97 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
          v86 = __dst;
        }

        ++v85;
        *(v86 + 16) = v98 + 1;
        v99 = (v86 + 24 * v98);
        v99[4] = v90;
        v99[5] = v91;
        v99[6] = v96;
        v87 += 2;
        v74 = v189;
        if (v185 == v85)
        {

          a1 = v183;
          goto LABEL_66;
        }
      }

      goto LABEL_117;
    }

    v86 = MEMORY[0x277D84F90];
LABEL_66:
    v100 = a3;
    v101 = 1 << *(a3 + 32);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v103 = v102 & *(a3 + 64);
    v104 = (v101 + 63) >> 6;

    v105 = 0;
    v190 = MEMORY[0x277D84F90];
    v106 = v197;
    v107 = v191;
    while (v103)
    {
      v108 = v105;
LABEL_74:
      v109 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
      v110 = *(v100 + 56) + 152 * (v109 | (v108 << 6));
      v111 = *(v110 + 16);
      __dst = *v110;
      v212 = v111;
      v112 = *(v110 + 80);
      v114 = *(v110 + 32);
      v113 = *(v110 + 48);
      v215 = *(v110 + 64);
      v216 = v112;
      v213 = v114;
      v214 = v113;
      v116 = *(v110 + 112);
      v115 = *(v110 + 128);
      v117 = *(v110 + 96);
      v220 = *(v110 + 144);
      v218 = v116;
      v219 = v115;
      v217 = v117;
      if (__PAIR128__(v106, v107) == v212 || (v118 = _stringCompareWithSmolCheck(_:_:expecting:)(), v107 = v191, (v118 & 1) != 0))
      {
        outlined init with copy of NodeDef(&__dst, v209);
        v119 = v190;
        *&v199 = v190;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v190 + 16) + 1, 1);
          v106 = v197;
          v119 = v199;
        }

        v121 = *(v119 + 16);
        v120 = *(v119 + 24);
        v122 = v119;
        v107 = v191;
        if (v121 >= v120 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
          v107 = v191;
          v106 = v197;
          v122 = v199;
        }

        *(v122 + 16) = v121 + 1;
        v190 = v122;
        v123 = v122 + 152 * v121;
        v124 = v212;
        *(v123 + 32) = __dst;
        *(v123 + 48) = v124;
        v125 = v213;
        v126 = v214;
        v127 = v216;
        *(v123 + 96) = v215;
        *(v123 + 112) = v127;
        *(v123 + 64) = v125;
        *(v123 + 80) = v126;
        v128 = v217;
        v129 = v218;
        v130 = v219;
        *(v123 + 176) = v220;
        *(v123 + 144) = v129;
        *(v123 + 160) = v130;
        *(v123 + 128) = v128;
        v105 = v108;
        a1 = v183;
        v100 = a3;
      }

      else
      {
        v105 = v108;
      }
    }

    while (1)
    {
      v108 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (v108 >= v104)
      {

        v131 = v190;
        v132 = *(v190 + 16);
        if (!v132)
        {

          *&__dst = 0;
          *(&__dst + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(60);
          MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F34BD0);
          MEMORY[0x266771550](v191, v197);

          MEMORY[0x266771550](0x223D656D616E20, 0xE700000000000000);
          v161 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
          if (v162)
          {
            v163 = v162;
          }

          else
          {
            v161 = 0x3E6C696E3CLL;
            v163 = 0xE500000000000000;
          }

          MEMORY[0x266771550](v161, v163);

          v33 = 0x2E3E2E2E2E22;
          v34 = 0xE600000000000000;
          goto LABEL_18;
        }

        v133 = 0;
        v134 = MEMORY[0x277D84F90];
        v135 = 32;
        v136 = MEMORY[0x277D84F90];
        while (v133 < *(v131 + 16))
        {
          v137 = *(v131 + v135 + 16);
          v209[0] = *(v131 + v135);
          v209[1] = v137;
          v138 = *(v131 + v135 + 32);
          v139 = *(v131 + v135 + 48);
          v140 = *(v131 + v135 + 80);
          v209[4] = *(v131 + v135 + 64);
          v209[5] = v140;
          v209[2] = v138;
          v209[3] = v139;
          v141 = *(v131 + v135 + 96);
          v142 = *(v131 + v135 + 112);
          v143 = *(v131 + v135 + 128);
          v210 = *(v131 + v135 + 144);
          v209[7] = v142;
          v209[8] = v143;
          v209[6] = v141;
          memmove(&__dst, (v131 + v135), 0x98uLL);
          outlined init with copy of NodeDef(v209, &v199);
          if (closure #6 in NodeDefStore.createNode(for:in:)(&__dst, v193, v191, v197, v86, a1, v196))
          {
            v205 = v217;
            v206 = v218;
            v207 = v219;
            v208 = v220;
            v201 = v213;
            v202 = v214;
            v203 = v215;
            v204 = v216;
            v199 = __dst;
            v200 = v212;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v225 = v136;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v136 + 16) + 1, 1);
              v136 = v225;
            }

            v146 = *(v136 + 16);
            v145 = *(v136 + 24);
            if (v146 >= v145 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1);
              v136 = v225;
            }

            *(v136 + 16) = v146 + 1;
            v147 = v136 + 152 * v146;
            v148 = v200;
            *(v147 + 32) = v199;
            *(v147 + 48) = v148;
            v149 = v201;
            v150 = v202;
            v151 = v204;
            *(v147 + 96) = v203;
            *(v147 + 112) = v151;
            *(v147 + 64) = v149;
            *(v147 + 80) = v150;
            v152 = v205;
            v153 = v206;
            v154 = v207;
            *(v147 + 176) = v208;
            *(v147 + 144) = v153;
            *(v147 + 160) = v154;
            *(v147 + 128) = v152;
            a1 = v183;
            v131 = v190;
          }

          else
          {
            v205 = v217;
            v206 = v218;
            v207 = v219;
            v208 = v220;
            v201 = v213;
            v202 = v214;
            v203 = v215;
            v204 = v216;
            v199 = __dst;
            v200 = v212;
            outlined destroy of NodeDef(&v199);
          }

          ++v133;
          v135 += 152;
          if (v132 == v133)
          {

            if (!*(v136 + 16))
            {

              *&__dst = 0;
              *(&__dst + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(88);
              MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F34BA0);
              MEMORY[0x266771550](v191, v197);

              MEMORY[0x266771550](0x223D656D616E20, 0xE700000000000000);
              v164 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
              if (v165)
              {
                v166 = v165;
              }

              else
              {
                v164 = 0x3E6C696E3CLL;
                v166 = 0xE500000000000000;
              }

              MEMORY[0x266771550](v164, v166);

              MEMORY[0x266771550](0x756F203E2E2E2E22, 0xED000020666F2074);
              *&v209[0] = *(v131 + 16);
              v167 = *&v209[0];
              v168 = dispatch thunk of CustomStringConvertible.description.getter();
              v169 = v131;
              MEMORY[0x266771550](v168);

              MEMORY[0x266771550](0x616469646E616320, 0xEE005B202E736574);
              if (v167)
              {
                *&v209[0] = v134;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
                v170 = *&v209[0];
                v171 = (v169 + 40);
                do
                {
                  v173 = *(v171 - 1);
                  v172 = *v171;
                  *&v209[0] = v170;
                  v175 = *(v170 + 16);
                  v174 = *(v170 + 24);

                  if (v175 >= v174 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1);
                    v170 = *&v209[0];
                  }

                  *(v170 + 16) = v175 + 1;
                  v176 = v170 + 16 * v175;
                  *(v176 + 32) = v173;
                  *(v176 + 40) = v172;
                  v171 += 19;
                  --v167;
                }

                while (v167);
              }

              else
              {

                v170 = MEMORY[0x277D84F90];
              }

              *&v209[0] = v170;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A]();
              v178 = BidirectionalCollection<>.joined(separator:)();
              v180 = v179;

              MEMORY[0x266771550](v178, v180);

              v33 = 93;
              goto LABEL_17;
            }

            if (!*(v136 + 16))
            {
              goto LABEL_119;
            }

            v155 = *(v136 + 144);
            v223[6] = *(v136 + 128);
            v223[7] = v155;
            v223[8] = *(v136 + 160);
            v224 = *(v136 + 176);
            v156 = *(v136 + 80);
            v223[2] = *(v136 + 64);
            v223[3] = v156;
            v157 = *(v136 + 112);
            v223[4] = *(v136 + 96);
            v223[5] = v157;
            v158 = *(v136 + 48);
            v223[0] = *(v136 + 32);
            v223[1] = v158;
            outlined init with copy of NodeDef(v223, &__dst);

            v159._countAndFlagsBits = 1701667182;
            v159._object = 0xE400000000000000;
            XMLElement.getRequiredAttribute(_:)(v159);
            if (v160)
            {
              outlined destroy of NodeDef(v223);
            }

            else
            {

              specialized NodeDefStore.createNode(in:from:)(v223, &v221);
              outlined destroy of NodeDef(v223);
              v177 = v222[0];
              *v186 = v221;
              v186[1] = v177;
              *(v186 + 25) = *(v222 + 9);
            }

            return;
          }
        }

        goto LABEL_118;
      }

      v103 = *(a3 + 64 + 8 * v108);
      ++v105;
      if (v103)
      {
        goto LABEL_74;
      }
    }

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

    v205 = v217;
    v206 = v218;
    v207 = v219;
    v208 = v220;
    v201 = v213;
    v202 = v214;
    v203 = v215;
    v204 = v216;
    v199 = __dst;
    v200 = v212;
    outlined destroy of NodeDef(&v199);

    __break(1u);
  }
}

void specialized NodeDefStore.createNode(in:nodeDefName:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(a3 + 56) + 152 * v8;
    v11 = *(v10 + 16);
    v23[0] = *v10;
    v23[1] = v11;
    v12 = *(v10 + 80);
    v14 = *(v10 + 32);
    v13 = *(v10 + 48);
    v23[4] = *(v10 + 64);
    v23[5] = v12;
    v23[2] = v14;
    v23[3] = v13;
    v16 = *(v10 + 112);
    v15 = *(v10 + 128);
    v17 = *(v10 + 96);
    v24 = *(v10 + 144);
    v23[7] = v16;
    v23[8] = v15;
    v23[6] = v17;
    outlined init with copy of NodeDef(v23, v20);
    specialized NodeDefStore.createNode(in:from:)(v23, &v21);
    outlined destroy of NodeDef(v23);
    v18 = v22[0];
    *a4 = v21;
    a4[1] = v18;
    *(a4 + 25) = *(v22 + 9);
  }

  else
  {
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v19 = 28;
    *(v19 + 8) = a1;
    *(v19 + 16) = a2;
    swift_willThrow();
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NodeDef.Implementation(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void specialized static NodeDefStore.createDefault()()
{
  v285 = type metadata accessor for NodeDef.Implementation.Kind(0);
  MEMORY[0x28223BE20](v285);
  v276 = (&v266 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = MEMORY[0x277D84F90];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7NodeDefVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph11GeomPropDefVTt0g5Tf4g_n(v1);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11ShaderGraph7NodeDefV14ImplementationVGTt0g5Tf4g_n(v1);
  v289 = v2;
  v290 = v3;
  v291 = v4;
  v284 = 0x8000000265F347A0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV6IOSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV6IOSpecVGMR);
  v6 = swift_allocObject();
  v275 = xmmword_265F21D90;
  *(v6 + 16) = xmmword_265F21D90;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v7 = static MaterialXDataType.float;
  *(v6 + 32) = 0x7974696361706FLL;
  *(v6 + 40) = 0xE700000000000000;
  *(v6 + 48) = v7;
  *(v6 + 56) = xmmword_265F2B0C0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0xD000000000000010;
  *(v6 + 104) = 0x8000000265F2E2F0;
  *(v6 + 112) = v7;
  *(v6 + 120) = xmmword_265F2B0D0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  v8 = swift_allocObject();
  v288 = xmmword_265F1F670;
  *(v8 + 16) = xmmword_265F1F670;
  *(v8 + 32) = 7632239;
  *(v8 + 40) = 0xE300000000000000;
  *(v8 + 48) = v7;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0;
  v530[0] = 0xD000000000000023;
  v530[1] = 0x8000000265F2E2C0;
  v530[2] = 0xD00000000000001ALL;
  v530[3] = v284;
  v530[4] = 0;
  v530[5] = 0;
  v530[6] = 0xD000000000000013;
  v530[7] = 0x8000000265F33A90;
  v530[8] = 0;
  v530[9] = 0;
  v531 = 2;
  v532 = v1;
  v533 = 0;
  v534 = 0;
  v535 = 0;
  v536 = 1;
  v537 = v6;
  v538 = v8;
  v539 = 0;
  v274 = v7;
  swift_retain_n();
  v9 = v289;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v540 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v530, 0xD000000000000023, 0x8000000265F2E2C0, isUniquelyReferenced_nonNull_native);
  v270 = v540;
  v289 = v540;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_265F24120;
  v12 = v5;
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  v13 = static MaterialXDataType.realitykit.coord;
  *(v11 + 32) = 0x64726F6F63;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = v13;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 1;
  v14 = one-time initialization token for u_wrap_mode;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static MaterialXDataType.realitykit.u_wrap_mode;
  *(v11 + 96) = 0x6D5F706172775F75;
  *(v11 + 104) = 0xEB0000000065646FLL;
  *(v11 + 112) = v15;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 1;
  v16 = one-time initialization token for v_wrap_mode;
  v277 = v15;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static MaterialXDataType.realitykit.v_wrap_mode;
  *(v11 + 160) = 0x6D5F706172775F76;
  *(v11 + 168) = 0xEB0000000065646FLL;
  *(v11 + 176) = v17;
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 1;
  v18 = one-time initialization token for borderColor;
  v271 = v17;

  if (v18 != -1)
  {
    swift_once();
  }

  v287 = 0x8000000265F33A90;
  v19 = static MaterialXDataType.realitykit.borderColor;
  *(v11 + 248) = 0u;
  strcpy((v11 + 224), "border_color");
  *(v11 + 237) = 0;
  *(v11 + 238) = -5120;
  *(v11 + 240) = v19;
  *(v11 + 264) = 0u;
  *(v11 + 280) = 1;
  v20 = one-time initialization token for magFilter;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static MaterialXDataType.realitykit.magFilter;
  *(v11 + 288) = 0x746C69665F67616DLL;
  *(v11 + 296) = 0xEA00000000007265;
  *(v11 + 304) = v21;
  *(v11 + 312) = 0u;
  *(v11 + 328) = 0u;
  *(v11 + 344) = 1;
  v22 = one-time initialization token for minFilter;
  *&v279 = v21;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static MaterialXDataType.realitykit.minFilter;
  *(v11 + 352) = 0x746C69665F6E696DLL;
  *(v11 + 360) = 0xEA00000000007265;
  *(v11 + 368) = v23;
  *(v11 + 376) = 0u;
  *(v11 + 392) = 0u;
  *(v11 + 408) = 1;
  v24 = one-time initialization token for mipFilter;
  *&v278 = v23;

  if (v24 != -1)
  {
    swift_once();
  }

  v283 = v19;
  v25 = static MaterialXDataType.realitykit.mipFilter;
  *(v11 + 416) = 0x746C69665F70696DLL;
  *(v11 + 424) = 0xEA00000000007265;
  *(v11 + 432) = v25;
  *(v11 + 440) = 0u;
  *(v11 + 456) = 0u;
  *(v11 + 472) = 1;
  v26 = one-time initialization token for max_anisotropy;
  v272 = v25;

  if (v26 != -1)
  {
    swift_once();
  }

  v282 = v13;
  v27 = static MaterialXDataType.max_anisotropy;
  strcpy((v11 + 480), "max_anisotropy");
  *(v11 + 495) = -18;
  *(v11 + 496) = v27;
  *(v11 + 504) = 0u;
  *(v11 + 520) = 0u;
  *(v11 + 536) = 1;
  v28 = one-time initialization token for lod_clamp;
  v281 = v27;

  v29 = v12;
  v30 = MEMORY[0x277D84F90];
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = static MaterialXDataType.lod_clamp;
  *(v11 + 544) = 0x6D616C635F646F6CLL;
  *(v11 + 552) = 0xE900000000000070;
  *(v11 + 560) = v31;
  *(v11 + 568) = 0u;
  *(v11 + 584) = 0u;
  *(v11 + 600) = 1;
  v32 = swift_allocObject();
  *(v32 + 16) = v288;
  v284 = type metadata accessor for MaterialXDataType();
  v33 = swift_allocObject();
  v280 = xmmword_265F23670;
  *(v33 + 24) = xmmword_265F23670;
  *(v33 + 40) = 0xE700000000000000;
  *(v33 + 16) = v30;
  *(v32 + 32) = 7632239;
  *(v32 + 40) = 0xE300000000000000;
  *(v32 + 48) = v33;
  *(v32 + 56) = 0u;
  *(v32 + 72) = 0u;
  *(v32 + 88) = 0;
  v520[0] = 0xD000000000000013;
  v520[1] = 0x8000000265F347C0;
  v520[2] = 0xD000000000000013;
  v520[3] = 0x8000000265F347C0;
  v520[5] = 0;
  v520[4] = 0;
  v520[6] = 0xD000000000000013;
  v520[7] = v287;
  v520[9] = 0;
  v520[8] = 0;
  v521 = 2;
  v522 = v30;
  v523 = 0;
  v525 = 0;
  v524 = 0;
  v526 = 2;
  v527 = v11;
  v528 = v32;
  v529 = 0;
  v273 = v31;

  v34 = v270;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v34;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v520, 0xD000000000000013, 0x8000000265F347C0, v35);
  v289 = v540;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_265F2B0E0;
  *(v36 + 32) = 0x64726F6F63;
  *(v36 + 40) = 0xE500000000000000;
  *(v36 + 48) = v282;
  *(v36 + 56) = 0u;
  *(v36 + 72) = 0u;
  *(v36 + 88) = 1;
  v37 = one-time initialization token for u_pixel_wrap_mode;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static MaterialXDataType.realitykit.u_pixel_wrap_mode;
  *(v36 + 96) = 0x6D5F706172775F75;
  *(v36 + 104) = 0xEB0000000065646FLL;
  *(v36 + 112) = v38;
  *(v36 + 120) = 0u;
  *(v36 + 136) = 0u;
  *(v36 + 152) = 1;
  v39 = one-time initialization token for v_pixel_wrap_mode;
  v269 = v38;

  v40 = v283;
  if (v39 != -1)
  {
    v265 = v283;
    swift_once();
    v40 = v265;
  }

  v41 = static MaterialXDataType.realitykit.v_pixel_wrap_mode;
  *(v36 + 248) = 0u;
  v266 = 0x6D5F706172775F76;
  *(v36 + 160) = 0x6D5F706172775F76;
  *(v36 + 168) = 0xEB0000000065646FLL;
  *(v36 + 176) = v41;
  *(v36 + 184) = 0u;
  *(v36 + 200) = 0u;
  *(v36 + 216) = 1;
  strcpy((v36 + 224), "border_color");
  *(v36 + 237) = 0;
  *(v36 + 238) = -5120;
  *(v36 + 240) = v40;
  *(v36 + 264) = 0u;
  *(v36 + 280) = 1;
  v42 = one-time initialization token for filter;

  v268 = v41;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = static MaterialXDataType.realitykit.filter;
  *(v36 + 288) = 0x7265746C6966;
  *(v36 + 296) = 0xE600000000000000;
  *(v36 + 304) = v43;
  *(v36 + 312) = 0u;
  *(v36 + 328) = 0u;
  *(v36 + 344) = 1;
  strcpy((v36 + 352), "max_anisotropy");
  *(v36 + 367) = -18;
  *(v36 + 368) = v281;
  *(v36 + 376) = 0u;
  *(v36 + 392) = 0u;
  *(v36 + 408) = 1;
  *(v36 + 416) = 0x6D616C635F646F6CLL;
  v44 = v273;
  *(v36 + 424) = 0xE900000000000070;
  *(v36 + 432) = v44;
  *(v36 + 440) = 0u;
  *(v36 + 456) = 0u;
  *(v36 + 472) = 1;
  v45 = swift_allocObject();
  *(v45 + 16) = v288;
  v46 = swift_allocObject();
  *(v46 + 24) = v280;
  *(v46 + 40) = 0xE700000000000000;
  v47 = v29;
  v48 = MEMORY[0x277D84F90];
  *(v46 + 16) = MEMORY[0x277D84F90];
  *(v45 + 32) = 7632239;
  *(v45 + 40) = 0xE300000000000000;
  *(v45 + 48) = v46;
  *(v45 + 56) = 0u;
  *(v45 + 72) = 0u;
  *(v45 + 88) = 0;
  strcpy(v503, "SamplerPixel2D");
  v503[15] = -18;
  strcpy(v504, "SamplerPixel2D");
  v504[15] = -18;
  v505 = 0;
  v506 = 0;
  v507 = 0xD000000000000013;
  v508 = v287;
  v510 = 0;
  v509 = 0;
  v511 = 2;
  v512 = v48;
  v513 = 0;
  v515 = 0;
  v514 = 0;
  v516 = 2;
  v517 = v36;
  v518 = v45;
  v519 = 0;

  v270 = v43;

  v49 = v289;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v49;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v503, 0x5072656C706D6153, 0xEE0044326C657869, v50);
  v289 = v540;
  v267 = 0x8000000265F347E0;
  v286 = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_265F26B30;
  *(v51 + 32) = 0x64726F6F63;
  *(v51 + 40) = 0xE500000000000000;
  *(v51 + 48) = v282;
  *(v51 + 56) = 0u;
  *(v51 + 72) = 0u;
  *(v51 + 88) = 1;
  *(v51 + 96) = 0x6D5F706172775F75;
  *(v51 + 104) = 0xEB0000000065646FLL;
  *(v51 + 112) = v277;
  *(v51 + 120) = 0u;
  *(v51 + 136) = 0u;
  *(v51 + 152) = 1;
  *(v51 + 160) = v266;
  *(v51 + 168) = 0xEB0000000065646FLL;
  *(v51 + 176) = v271;
  *(v51 + 184) = 0u;
  *(v51 + 200) = 0u;
  *(v51 + 216) = 1;
  v52 = one-time initialization token for w_wrap_mode;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = static MaterialXDataType.realitykit.w_wrap_mode;
  v271 = static MaterialXDataType.realitykit.w_wrap_mode;
  v277 = 0x6D5F706172775F77;
  *(v51 + 224) = 0x6D5F706172775F77;
  *(v51 + 232) = 0xEB0000000065646FLL;
  *(v51 + 240) = v53;
  *(v51 + 248) = 0u;
  *(v51 + 264) = 0u;
  *(v51 + 280) = 1;
  strcpy((v51 + 288), "border_color");
  v54 = v283;
  *(v51 + 301) = 0;
  *(v51 + 302) = -5120;
  *(v51 + 304) = v54;
  *(v51 + 312) = 0u;
  *(v51 + 328) = 0u;
  *(v51 + 344) = 1;
  *(v51 + 352) = 0x746C69665F67616DLL;
  *(v51 + 360) = 0xEA00000000007265;
  *(v51 + 368) = v279;
  *(v51 + 376) = 0u;
  *(v51 + 392) = 0u;
  *(v51 + 408) = 1;
  *(v51 + 416) = 0x746C69665F6E696DLL;
  *(v51 + 424) = 0xEA00000000007265;
  *(v51 + 432) = v278;
  *(v51 + 440) = 0u;
  *(v51 + 456) = 0u;
  *(v51 + 472) = 1;
  *(v51 + 480) = 0x746C69665F70696DLL;
  *(v51 + 488) = 0xEA00000000007265;
  *(v51 + 496) = v272;
  *(v51 + 504) = 0u;
  *(v51 + 520) = 0u;
  *(v51 + 536) = 1;
  strcpy((v51 + 544), "max_anisotropy");
  *(v51 + 559) = -18;
  v55 = v281;
  *(v51 + 560) = v281;
  *(v51 + 568) = 0u;
  *(v51 + 584) = 0u;
  *(v51 + 600) = 1;
  *(v51 + 608) = 0x6D616C635F646F6CLL;
  *(v51 + 616) = 0xE900000000000070;
  *(v51 + 624) = v273;
  *(v51 + 632) = 0u;
  *(v51 + 648) = 0u;
  *(v51 + 664) = 1;
  v56 = swift_allocObject();
  *(v56 + 16) = v288;
  v57 = swift_allocObject();
  *(v57 + 24) = v280;
  *(v57 + 40) = 0xE700000000000000;
  v58 = MEMORY[0x277D84F90];
  *(v57 + 16) = MEMORY[0x277D84F90];
  *(v56 + 32) = 7632239;
  *(v56 + 40) = 0xE300000000000000;
  *(v56 + 48) = v57;
  *(v56 + 56) = 0u;
  *(v56 + 72) = 0u;
  *(v56 + 88) = 0;
  v493[0] = 0xD000000000000013;
  v59 = v267;
  v493[1] = v267;
  v493[2] = 0xD000000000000013;
  v493[3] = v267;
  v493[5] = 0;
  v493[4] = 0;
  v493[6] = 0xD000000000000013;
  v493[7] = v287;
  v493[9] = 0;
  v493[8] = 0;
  v494 = 2;
  v495 = v58;
  v496 = 0;
  v498 = 0;
  v497 = 0;
  v499 = 2;
  v500 = v51;
  v501 = v56;
  v502 = 0;

  v60 = v55;

  v61 = v273;

  v62 = v289;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v62;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v493, 0xD000000000000013, v59, v63);
  v289 = v540;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_265F26B50;
  *(v64 + 32) = 0x64726F6F63;
  *(v64 + 40) = 0xE500000000000000;
  *(v64 + 48) = v282;
  *(v64 + 56) = 0u;
  *(v64 + 72) = 0u;
  *(v64 + 88) = 1;
  *(v64 + 96) = 0x6D5F706172775F75;
  *(v64 + 104) = 0xEB0000000065646FLL;
  v65 = v268;
  *(v64 + 112) = v269;
  *(v64 + 120) = 0u;
  *(v64 + 136) = 0u;
  *(v64 + 152) = 1;
  *(v64 + 160) = 0x6D5F706172775F76;
  *(v64 + 168) = 0xEB0000000065646FLL;
  *(v64 + 176) = v65;
  *(v64 + 184) = 0u;
  *(v64 + 200) = 0u;
  *(v64 + 216) = 1;
  v66 = one-time initialization token for w_pixel_wrap_mode;

  v67 = v61;
  if (v66 != -1)
  {
    swift_once();
    v67 = v61;
  }

  v68 = static MaterialXDataType.realitykit.w_pixel_wrap_mode;
  v282 = static MaterialXDataType.realitykit.w_pixel_wrap_mode;
  *(v64 + 224) = v277;
  *(v64 + 232) = 0xEB0000000065646FLL;
  *(v64 + 240) = v68;
  *(v64 + 248) = 0u;
  *(v64 + 264) = 0u;
  *(v64 + 280) = 1;
  strcpy((v64 + 288), "border_color");
  *(v64 + 301) = 0;
  *(v64 + 302) = -5120;
  *(v64 + 304) = v54;
  *(v64 + 312) = 0u;
  *(v64 + 328) = 0u;
  *(v64 + 344) = 1;
  *(v64 + 352) = 0x7265746C6966;
  *(v64 + 360) = 0xE600000000000000;
  *(v64 + 368) = v270;
  *(v64 + 376) = 0u;
  *(v64 + 392) = 0u;
  *(v64 + 408) = 1;
  strcpy((v64 + 416), "max_anisotropy");
  *(v64 + 431) = -18;
  *(v64 + 432) = v60;
  *(v64 + 440) = 0u;
  *(v64 + 456) = 0u;
  *(v64 + 472) = 1;
  *(v64 + 480) = 0x6D616C635F646F6CLL;
  *(v64 + 488) = 0xE900000000000070;
  *(v64 + 496) = v67;
  *(v64 + 504) = 0u;
  *(v64 + 520) = 0u;
  *(v64 + 536) = 1;
  v69 = swift_allocObject();
  *(v69 + 16) = v288;
  v70 = swift_allocObject();
  *(v70 + 24) = v280;
  *(v70 + 40) = 0xE700000000000000;
  v71 = MEMORY[0x277D84F90];
  *(v70 + 16) = MEMORY[0x277D84F90];
  *(v69 + 32) = 7632239;
  *(v69 + 40) = 0xE300000000000000;
  *(v69 + 48) = v70;
  *(v69 + 56) = 0u;
  *(v69 + 72) = 0u;
  *(v69 + 88) = 0;
  strcpy(v476, "SamplerPixel3D");
  v476[15] = -18;
  strcpy(v477, "SamplerPixel3D");
  v477[15] = -18;
  v479 = 0;
  v478 = 0;
  v480 = 0xD000000000000013;
  v481 = v287;
  v483 = 0;
  v482 = 0;
  v484 = 2;
  v485 = v71;
  v486 = 0;
  v488 = 0;
  v487 = 0;
  v489 = 2;
  v490 = v64;
  v491 = v69;
  v492 = 0;
  swift_retain_n();
  swift_retain_n();

  v72 = v289;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v72;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v476, 0x5072656C706D6153, 0xEE0044336C657869, v73);
  v74 = v540;
  v289 = v540;
  v283 = 0x8000000265F2D870;
  v75 = swift_allocObject();
  *(v75 + 16) = v288;
  v76 = MEMORY[0x277D84F90];
  if (one-time initialization token for filename != -1)
  {
    swift_once();
  }

  v77 = static MaterialXDataType.filename;
  *(v75 + 32) = 1701603686;
  *(v75 + 40) = 0xE400000000000000;
  *(v75 + 48) = v77;
  *(v75 + 56) = 0u;
  *(v75 + 72) = 0u;
  *(v75 + 88) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v288;
  v79 = swift_allocObject();
  v280 = xmmword_265F23620;
  *(v79 + 24) = xmmword_265F23620;
  *(v79 + 40) = 0xED0000666C616864;
  *(v79 + 16) = v76;
  *(v78 + 32) = 7632239;
  *(v78 + 40) = 0xE300000000000000;
  *(v78 + 48) = v79;
  *(v78 + 56) = 0u;
  *(v78 + 72) = 0u;
  *(v78 + 88) = 0;
  v466[0] = 0xD00000000000001ALL;
  v466[1] = 0x8000000265F34800;
  v466[2] = 0xD000000000000013;
  v80 = v283;
  v466[3] = v283;
  v466[5] = 0;
  v466[4] = 0;
  v466[6] = 0xD000000000000013;
  v466[7] = v287;
  v466[9] = 0;
  v466[8] = 0;
  v467 = 2;
  v468 = v76;
  v469 = 0;
  v471 = 0;
  v470 = 0;
  v472 = 2;
  v473 = v75;
  v474 = v78;
  v475 = 0;
  swift_retain_n();
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v74;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v466, 0xD00000000000001ALL, 0x8000000265F34800, v81);
  v289 = v540;
  v82 = swift_allocObject();
  *(v82 + 16) = v288;
  *(v82 + 32) = 1701603686;
  *(v82 + 40) = 0xE400000000000000;
  *(v82 + 48) = v77;
  *(v82 + 56) = 0u;
  *(v82 + 72) = 0u;
  *(v82 + 88) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v288;
  v84 = swift_allocObject();
  *(v84 + 24) = xmmword_265F23590;
  *(v84 + 40) = 0x8000000265F30380;
  v85 = MEMORY[0x277D84F90];
  *(v84 + 16) = MEMORY[0x277D84F90];
  *(v83 + 32) = 7632239;
  *(v83 + 40) = 0xE300000000000000;
  *(v83 + 48) = v84;
  *(v83 + 56) = 0u;
  *(v83 + 72) = 0u;
  *(v83 + 88) = 0;
  v456[0] = 0xD000000000000021;
  v456[1] = 0x8000000265F34820;
  v456[2] = 0xD000000000000013;
  v456[3] = v80;
  v456[5] = 0;
  v456[4] = 0;
  v456[6] = 0xD000000000000013;
  v456[7] = v287;
  v456[9] = 0;
  v456[8] = 0;
  v457 = 2;
  v458 = v85;
  v459 = 0;
  v461 = 0;
  v460 = 0;
  v462 = 2;
  v463 = v82;
  v464 = v83;
  v465 = 0;

  v86 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v456, 0xD000000000000021, 0x8000000265F34820, v86);
  v87 = v540;
  v289 = v540;
  v88 = swift_allocObject();
  *(v88 + 16) = v288;
  *(v88 + 32) = 1701603686;
  *(v88 + 40) = 0xE400000000000000;
  *(v88 + 48) = v77;
  *(v88 + 56) = 0u;
  *(v88 + 72) = 0u;
  *(v88 + 88) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v288;
  v90 = swift_allocObject();
  *(v90 + 24) = v280;
  *(v90 + 40) = 0xEE0074616F6C6664;
  *(v90 + 16) = MEMORY[0x277D84F90];
  *(v89 + 32) = 7632239;
  *(v89 + 40) = 0xE300000000000000;
  *(v89 + 48) = v90;
  *(v89 + 56) = 0u;
  *(v89 + 72) = 0u;
  *(v89 + 88) = 0;
  v446[0] = 0xD00000000000001BLL;
  v446[1] = 0x8000000265F34850;
  v446[2] = 0xD000000000000013;
  v91 = v283;
  v446[3] = v283;
  v446[5] = 0;
  v446[4] = 0;
  v446[6] = 0xD000000000000013;
  v92 = v287;
  v446[7] = v287;
  v446[9] = 0;
  v446[8] = 0;
  v447 = 2;
  v448 = MEMORY[0x277D84F90];
  v449 = 0;
  v451 = 0;
  v450 = 0;
  v452 = 2;
  v453 = v88;
  v454 = v89;
  v455 = 0;
  v282 = v77;

  v93 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v87;
  v272 = 0xD00000000000001BLL;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v446, 0xD00000000000001BLL, 0x8000000265F34850, v93);
  v289 = v540;
  v94 = swift_allocObject();
  *(v94 + 16) = v288;
  *(v94 + 32) = 1701603686;
  *(v94 + 40) = 0xE400000000000000;
  *(v94 + 48) = v77;
  *(v94 + 56) = 0u;
  *(v94 + 72) = 0u;
  *(v94 + 88) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = v288;
  v96 = swift_allocObject();
  *(v96 + 24) = xmmword_265F23630;
  *(v96 + 40) = 0x8000000265F30360;
  *(v96 + 16) = MEMORY[0x277D84F90];
  *(v95 + 32) = 7632239;
  *(v95 + 40) = 0xE300000000000000;
  *(v95 + 48) = v96;
  *(v95 + 56) = 0u;
  *(v95 + 72) = 0u;
  *(v95 + 88) = 0;
  v436[0] = 0xD000000000000022;
  v436[1] = 0x8000000265F34870;
  v436[2] = 0xD000000000000013;
  v436[3] = v91;
  v436[5] = 0;
  v436[4] = 0;
  v436[6] = 0xD000000000000013;
  v436[7] = v92;
  v436[9] = 0;
  v436[8] = 0;
  v437 = 2;
  v438 = MEMORY[0x277D84F90];
  v439 = 0;
  v441 = 0;
  v440 = 0;
  v442 = 2;
  v443 = v94;
  v444 = v95;
  v445 = 0;
  v97 = v282;

  v98 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v436, 0xD000000000000022, 0x8000000265F34870, v98);
  v99 = v540;
  v289 = v540;
  v100 = swift_allocObject();
  *(v100 + 16) = v288;
  *(v100 + 32) = 1701603686;
  *(v100 + 40) = 0xE400000000000000;
  *(v100 + 48) = v97;
  *(v100 + 56) = 0u;
  *(v100 + 72) = 0u;
  *(v100 + 88) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v288;
  v102 = swift_allocObject();
  v278 = xmmword_265F23650;
  *(v102 + 24) = xmmword_265F23650;
  *(v102 + 40) = 0xED0000666C616864;
  *(v102 + 16) = MEMORY[0x277D84F90];
  *(v101 + 32) = 7632239;
  *(v101 + 40) = 0xE300000000000000;
  *(v101 + 48) = v102;
  *(v101 + 56) = 0u;
  *(v101 + 72) = 0u;
  *(v101 + 88) = 0;
  v426[0] = 0xD00000000000001CLL;
  *&v279 = 0xD00000000000001CLL;
  v426[1] = 0x8000000265F348A0;
  v426[2] = 0xD000000000000013;
  v103 = v283;
  v426[3] = v283;
  v426[5] = 0;
  v426[4] = 0;
  v426[6] = 0xD000000000000013;
  v104 = v287;
  v426[7] = v287;
  v426[9] = 0;
  v426[8] = 0;
  v427 = 2;
  v428 = MEMORY[0x277D84F90];
  v429 = 0;
  v431 = 0;
  v430 = 0;
  v432 = 2;
  v433 = v100;
  v434 = v101;
  v435 = 0;
  v105 = v282;

  v106 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v99;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v426, 0xD00000000000001CLL, 0x8000000265F348A0, v106);
  v107 = v540;
  v289 = v540;
  v108 = swift_allocObject();
  *(v108 + 16) = v288;
  *(v108 + 32) = 1701603686;
  *(v108 + 40) = 0xE400000000000000;
  *(v108 + 48) = v105;
  *(v108 + 56) = 0u;
  *(v108 + 72) = 0u;
  *(v108 + 88) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v288;
  v110 = swift_allocObject();
  *(v110 + 24) = v278;
  *(v110 + 40) = 0xEE0074616F6C6664;
  *(v110 + 16) = MEMORY[0x277D84F90];
  *(v109 + 32) = 7632239;
  *(v109 + 40) = 0xE300000000000000;
  *(v109 + 48) = v110;
  *(v109 + 56) = 0u;
  *(v109 + 72) = 0u;
  *(v109 + 88) = 0;
  v416[0] = 0xD00000000000001DLL;
  v416[1] = 0x8000000265F348C0;
  v416[2] = 0xD000000000000013;
  v416[3] = v103;
  v416[5] = 0;
  v416[4] = 0;
  v416[6] = 0xD000000000000013;
  v416[7] = v104;
  v416[9] = 0;
  v416[8] = 0;
  v417 = 2;
  v418 = MEMORY[0x277D84F90];
  v419 = 0;
  v421 = 0;
  v420 = 0;
  v422 = 2;
  v423 = v108;
  v424 = v109;
  v425 = 0;
  v111 = v282;

  v112 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v107;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v416, 0xD00000000000001DLL, 0x8000000265F348C0, v112);
  v113 = v540;
  v289 = v540;
  v114 = swift_allocObject();
  *(v114 + 16) = v288;
  *(v114 + 32) = 1701603686;
  *(v114 + 40) = 0xE400000000000000;
  *(v114 + 48) = v111;
  *(v114 + 56) = 0u;
  *(v114 + 72) = 0u;
  *(v114 + 88) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v288;
  v116 = swift_allocObject();
  *(v116 + 24) = xmmword_265F23660;
  *(v116 + 40) = 0xEF666C6168656275;
  *(v116 + 16) = MEMORY[0x277D84F90];
  *(v115 + 32) = 7632239;
  *(v115 + 40) = 0xE300000000000000;
  *(v115 + 48) = v116;
  *(v115 + 56) = 0u;
  *(v115 + 72) = 0u;
  *(v115 + 88) = 0;
  v406[0] = 0xD00000000000001ELL;
  v406[1] = 0x8000000265F348E0;
  v406[2] = 0xD000000000000013;
  v117 = v283;
  v406[3] = v283;
  v406[5] = 0;
  v406[4] = 0;
  v406[6] = 0xD000000000000013;
  v406[7] = v287;
  v406[9] = 0;
  v406[8] = 0;
  v407 = 2;
  v408 = MEMORY[0x277D84F90];
  v409 = 0;
  v411 = 0;
  v410 = 0;
  v412 = 2;
  v413 = v114;
  v414 = v115;
  v415 = 0;
  v118 = v282;

  v119 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v113;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v406, 0xD00000000000001ELL, 0x8000000265F348E0, v119);
  *&v278 = v540;
  v289 = v540;
  v277 = 0x8000000265F34900;
  v120 = swift_allocObject();
  *(v120 + 16) = v288;
  *(v120 + 32) = 1701603686;
  *(v120 + 40) = 0xE400000000000000;
  *(v120 + 48) = v118;
  *(v120 + 56) = 0u;
  *(v120 + 72) = 0u;
  *(v120 + 88) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v288;
  v122 = swift_allocObject();
  *(v122 + 24) = xmmword_265F235D0;
  *(v122 + 40) = 0x8000000265F30320;
  *(v122 + 16) = MEMORY[0x277D84F90];
  *(v121 + 32) = 7632239;
  *(v121 + 40) = 0xE300000000000000;
  *(v121 + 48) = v122;
  *(v121 + 56) = 0u;
  *(v121 + 72) = 0u;
  *(v121 + 88) = 0;
  v396[0] = 0xD00000000000001FLL;
  v123 = v277;
  v396[1] = v277;
  v396[2] = 0xD000000000000013;
  v396[3] = v117;
  v396[5] = 0;
  v396[4] = 0;
  v396[6] = 0xD000000000000013;
  v124 = v287;
  v396[7] = v287;
  v396[9] = 0;
  v396[8] = 0;
  v397 = 2;
  v398 = MEMORY[0x277D84F90];
  v399 = 0;
  v401 = 0;
  v400 = 0;
  v402 = 2;
  v403 = v120;
  v404 = v121;
  v405 = 0;

  v125 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  v126 = MEMORY[0x277D84F90];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v396, 0xD00000000000001FLL, v123, v125);
  v127 = v540;
  v289 = v540;
  v128 = swift_allocObject();
  *(v128 + 16) = v288;
  *(v128 + 32) = 1701603686;
  *(v128 + 40) = 0xE400000000000000;
  *(v128 + 48) = v118;
  *(v128 + 56) = 0u;
  *(v128 + 72) = 0u;
  *(v128 + 88) = 0;
  v129 = swift_allocObject();
  *(v129 + 16) = v288;
  v130 = swift_allocObject();
  *(v130 + 24) = v280;
  *(v130 + 40) = 0xEC000000746E6964;
  *(v130 + 16) = v126;
  *(v129 + 32) = 7632239;
  *(v129 + 40) = 0xE300000000000000;
  *(v129 + 48) = v130;
  *(v129 + 56) = 0u;
  *(v129 + 72) = 0u;
  *(v129 + 88) = 0;
  v131 = v279;
  v386[0] = v279;
  v386[1] = 0x8000000265F34920;
  v386[2] = 0xD000000000000013;
  v386[3] = v283;
  v386[4] = 0;
  v386[5] = 0;
  v386[6] = 0xD000000000000013;
  v386[7] = v124;
  v386[9] = 0;
  v386[8] = 0;
  v387 = 2;
  v388 = v126;
  v389 = 0;
  v391 = 0;
  v390 = 0;
  v392 = 2;
  v393 = v128;
  v394 = v129;
  v395 = 0;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v127;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v386, v131, 0x8000000265F34920, v132);
  v133 = v540;
  v289 = v540;
  v134 = swift_allocObject();
  *(v134 + 16) = v288;
  if (one-time initialization token for integer != -1)
  {
    swift_once();
  }

  v135 = static MaterialXDataType.integer;
  *(v134 + 32) = 28265;
  *(v134 + 40) = 0xE200000000000000;
  *(v134 + 48) = v135;
  *(v134 + 56) = 0u;
  *(v134 + 72) = 0u;
  *(v134 + 88) = 1;
  v136 = swift_allocObject();
  *(v136 + 16) = v288;
  *(v136 + 32) = 7632239;
  *(v136 + 40) = 0xE300000000000000;
  *(v136 + 48) = v281;
  *(v136 + 56) = 0u;
  *(v136 + 72) = 0u;
  *(v136 + 88) = 0;
  v376[0] = 0xD000000000000017;
  v376[1] = 0x8000000265F34940;
  v376[2] = 0xD000000000000017;
  v271 = 0xD000000000000017;
  v376[3] = 0x8000000265F34940;
  v376[5] = 0;
  v376[4] = 0;
  v376[6] = 0xD000000000000013;
  v376[7] = v124;
  v376[9] = 0;
  v376[8] = 0;
  v377 = 2;
  v378 = MEMORY[0x277D84F90];
  v379 = 0;
  v380 = 0;
  v381 = 0;
  v382 = 2;
  v383 = v134;
  v384 = v136;
  v385 = 0;

  v137 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v133;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v376, 0xD000000000000017, 0x8000000265F34940, v137);
  v289 = v540;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV14ImplementationVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV14ImplementationVGMR);
  v139 = type metadata accessor for NodeDef.Implementation(0);
  v140 = *(v139 - 8);
  v141 = *(v140 + 72);
  v142 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v281 = *(v140 + 80);
  v282 = v141;
  v283 = v138;
  v143 = swift_allocObject();
  *(v143 + 16) = v288;
  v277 = v142;
  v144 = (v143 + v142);
  v269 = 0x8000000265F34960;
  v270 = 0x8000000265F34940;
  v145 = v276;
  *v276 = 0x73696E615F78616DLL;
  v145[1] = 0xEE0079706F72746FLL;
  swift_storeEnumTagMultiPayload();
  *&v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v146 = swift_allocObject();
  v279 = xmmword_265F20CD0;
  *(v146 + 16) = xmmword_265F20CD0;
  type metadata accessor for MaterialXTarget();
  *&v278 = swift_initStaticObject();
  *(v146 + 32) = v278;
  v147 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v146);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v148 = v269;
  *v144 = v272;
  v144[1] = v148;
  outlined init with take of NodeDef.Implementation(v145, v144 + *(v139 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  v284 = v139;
  *(v144 + *(v139 + 24)) = v147;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v143, v271, v270, v149);
  v291 = v540;
  v150 = swift_allocObject();
  *(v150 + 16) = v288;
  *(v150 + 32) = 28265;
  v151 = v274;
  *(v150 + 40) = 0xE200000000000000;
  *(v150 + 48) = v151;
  *(v150 + 56) = 0u;
  *(v150 + 72) = 0u;
  *(v150 + 88) = 0;
  v152 = swift_allocObject();
  *(v152 + 16) = v288;
  v153 = one-time initialization token for bias;

  if (v153 != -1)
  {
    swift_once();
  }

  v154 = static MaterialXDataType.bias;
  *(v152 + 32) = 7632239;
  *(v152 + 40) = 0xE300000000000000;
  *(v152 + 48) = v154;
  *(v152 + 56) = 0u;
  *(v152 + 72) = 0u;
  *(v152 + 88) = 0;
  strcpy(v359, "INTERNAL_bias");
  v359[7] = -4864;
  strcpy(v360, "INTERNAL_bias");
  v360[7] = -4864;
  v361 = 0;
  v362 = 0;
  v363 = 0xD000000000000013;
  v364 = v287;
  v366 = 0;
  v365 = 0;
  v367 = 2;
  v368 = MEMORY[0x277D84F90];
  v369 = 0;
  v370 = 0;
  v371 = 0;
  v372 = 2;
  v373 = v150;
  v374 = v152;
  v375 = 0;

  v155 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v359, 0x4C414E5245544E49, 0xED0000736169625FLL, v155);
  v289 = v540;
  v156 = v277;
  v157 = swift_allocObject();
  *(v157 + 16) = v288;
  v158 = (v157 + v156);
  v272 = 0xD000000000000012;
  *v145 = 0xD000000000000012;
  v145[1] = 0x8000000265F30950;
  swift_storeEnumTagMultiPayload();
  v159 = swift_allocObject();
  *(v159 + 16) = v279;
  *(v159 + 32) = v278;
  v160 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v159);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v158 = 0xD000000000000011;
  v158[1] = 0x8000000265F34980;
  v161 = v284;
  outlined init with take of NodeDef.Implementation(v145, v158 + *(v284 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v158 + *(v161 + 24)) = v160;
  v162 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v157, 0x4C414E5245544E49, 0xED0000736169625FLL, v162);
  v291 = v540;
  v163 = swift_allocObject();
  *(v163 + 16) = v288;
  *(v163 + 32) = 28265;
  v164 = v274;
  *(v163 + 40) = 0xE200000000000000;
  *(v163 + 48) = v164;
  *(v163 + 56) = 0u;
  *(v163 + 72) = 0u;
  *(v163 + 88) = 0;
  v165 = swift_allocObject();
  *(v165 + 16) = v288;
  v166 = one-time initialization token for level;

  if (v166 != -1)
  {
    swift_once();
  }

  v167 = static MaterialXDataType.level;
  *(v165 + 32) = 7632239;
  *(v165 + 40) = 0xE300000000000000;
  *(v165 + 48) = v167;
  *(v165 + 56) = 0u;
  *(v165 + 72) = 0u;
  *(v165 + 88) = 0;
  strcpy(v342, "INTERNAL_level");
  v342[15] = -18;
  strcpy(v343, "INTERNAL_level");
  v343[15] = -18;
  v345 = 0;
  v344 = 0;
  v346 = 0xD000000000000013;
  v347 = v287;
  v349 = 0;
  v348 = 0;
  v350 = 2;
  v351 = MEMORY[0x277D84F90];
  v352 = 0;
  v353 = 0;
  v354 = 0;
  v355 = 2;
  v356 = v163;
  v357 = v165;
  v358 = 0;

  v168 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v342, 0x4C414E5245544E49, 0xEE006C6576656C5FLL, v168);
  v289 = v540;
  v169 = v277;
  v170 = swift_allocObject();
  *(v170 + 16) = v288;
  v171 = (v170 + v169);
  *v145 = 0xD000000000000013;
  v145[1] = 0x8000000265F30910;
  swift_storeEnumTagMultiPayload();
  v172 = swift_allocObject();
  *(v172 + 16) = v279;
  *(v172 + 32) = v278;
  v173 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v172);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v171 = v272;
  v171[1] = 0x8000000265F349A0;
  v174 = v284;
  outlined init with take of NodeDef.Implementation(v145, v171 + *(v284 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v171 + *(v174 + 24)) = v173;
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v170, 0x4C414E5245544E49, 0xEE006C6576656C5FLL, v175);
  v291 = v540;
  v176 = swift_allocObject();
  *(v176 + 16) = v288;
  *(v176 + 32) = 28265;
  *(v176 + 40) = 0xE200000000000000;
  *(v176 + 48) = v274;
  *(v176 + 56) = 0u;
  *(v176 + 72) = 0u;
  *(v176 + 88) = 0;
  v177 = swift_allocObject();
  *(v177 + 16) = v288;
  v178 = one-time initialization token for min_lod_clamp;

  if (v178 != -1)
  {
    swift_once();
  }

  v179 = static MaterialXDataType.min_lod_clamp;
  *(v177 + 32) = 7632239;
  *(v177 + 40) = 0xE300000000000000;
  *(v177 + 48) = v179;
  *(v177 + 56) = 0u;
  *(v177 + 72) = 0u;
  *(v177 + 88) = 0;
  v332[0] = 0xD000000000000016;
  v332[1] = 0x8000000265F349C0;
  v332[2] = 0xD000000000000016;
  v271 = 0xD000000000000016;
  v332[3] = 0x8000000265F349C0;
  v332[5] = 0;
  v332[4] = 0;
  v332[6] = 0xD000000000000013;
  v332[7] = v287;
  v332[9] = 0;
  v332[8] = 0;
  v333 = 2;
  v334 = MEMORY[0x277D84F90];
  v335 = 0;
  v336 = 0;
  v337 = 0;
  v338 = 2;
  v339 = v176;
  v340 = v177;
  v341 = 0;

  v180 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  v289 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v332, 0xD000000000000016, 0x8000000265F349C0, v180);
  v289 = v540;
  v181 = v277;
  v182 = swift_allocObject();
  *(v182 + 16) = v288;
  v183 = (v182 + v181);
  *v145 = 0xD00000000000001BLL;
  v145[1] = 0x8000000265F30930;
  swift_storeEnumTagMultiPayload();
  v184 = swift_allocObject();
  *(v184 + 16) = v279;
  v269 = 0x8000000265F349C0;
  *(v184 + 32) = v278;
  v185 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v184);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v183 = 0xD00000000000001ALL;
  v183[1] = 0x8000000265F349E0;
  v186 = *(v284 + 20);
  v187 = v284;
  v270 = type metadata accessor for NodeDef.Implementation.Kind;
  outlined init with take of NodeDef.Implementation(v145, v182 + v181 + v186, type metadata accessor for NodeDef.Implementation.Kind);
  *(v183 + *(v187 + 24)) = v185;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v182, v271, v269, v188);
  v291 = v540;
  v189 = swift_allocObject();
  *(v189 + 16) = v275;
  *(v189 + 32) = 7235949;
  *(v189 + 40) = 0xE300000000000000;
  v190 = v274;
  *(v189 + 48) = v274;
  *(v189 + 56) = 0u;
  *(v189 + 72) = 0u;
  *(v189 + 88) = 1;
  *(v189 + 96) = 7889261;
  *(v189 + 104) = 0xE300000000000000;
  *(v189 + 112) = v190;
  *(v189 + 120) = 0u;
  *(v189 + 136) = 0u;
  *(v189 + 152) = 1;
  v191 = swift_allocObject();
  *(v191 + 16) = v288;
  *(v191 + 32) = 7632239;
  *(v191 + 40) = 0xE300000000000000;
  v192 = v272;
  *(v191 + 48) = v273;
  *(v191 + 56) = 0u;
  *(v191 + 72) = 0u;
  *(v191 + 88) = 0;
  v322[0] = v192;
  v322[1] = 0x8000000265F34A00;
  v322[2] = v192;
  v322[3] = 0x8000000265F34A00;
  v269 = 0x8000000265F34A00;
  v322[5] = 0;
  v322[4] = 0;
  v322[6] = 0xD000000000000013;
  v322[7] = v287;
  v322[9] = 0;
  v322[8] = 0;
  v323 = 2;
  v324 = MEMORY[0x277D84F90];
  v325 = 0;
  v326 = 0;
  v327 = 0;
  v328 = 2;
  v329 = v189;
  v330 = v191;
  v331 = 0;

  v193 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  v289 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v322, v192, 0x8000000265F34A00, v193);
  v289 = v540;
  v194 = swift_allocObject();
  *(v194 + 16) = v288;
  v195 = (v194 + v181);
  v196 = v276;
  *v276 = 0x6D616C635F646F6CLL;
  *(v196 + 8) = 0xE900000000000070;
  swift_storeEnumTagMultiPayload();
  v197 = swift_allocObject();
  *(v197 + 16) = v279;
  *(v197 + 32) = v278;
  v198 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v197);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v195 = v271;
  v195[1] = 0x8000000265F34A20;
  v199 = v284;
  outlined init with take of NodeDef.Implementation(v196, v194 + v181 + *(v284 + 20), v270);
  *(v195 + *(v199 + 24)) = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v194, v192, v269, v200);
  v291 = v540;
  v201 = swift_allocObject();
  *(v201 + 16) = v275;
  if (one-time initialization token for vector2 != -1)
  {
    swift_once();
  }

  v202 = static MaterialXDataType.vector2;
  *(v201 + 32) = 2019840100;
  *(v201 + 40) = 0xE400000000000000;
  *(v201 + 48) = v202;
  *(v201 + 56) = 0u;
  *(v201 + 72) = 0u;
  *(v201 + 88) = 0;
  *(v201 + 96) = 2036617316;
  *(v201 + 104) = 0xE400000000000000;
  *(v201 + 112) = v202;
  *(v201 + 120) = 0u;
  *(v201 + 136) = 0u;
  *(v201 + 152) = 0;
  v203 = swift_allocObject();
  *(v203 + 16) = v288;
  v204 = one-time initialization token for gradient2d;
  swift_retain_n();
  if (v204 != -1)
  {
    swift_once();
  }

  v205 = static MaterialXDataType.gradient2d;
  *(v203 + 32) = 7632239;
  *(v203 + 40) = 0xE300000000000000;
  *(v203 + 48) = v205;
  *(v203 + 56) = 0u;
  *(v203 + 72) = 0u;
  *(v203 + 88) = 0;
  v312[0] = 0xD000000000000013;
  v312[1] = 0x8000000265F34A40;
  v312[2] = 0xD000000000000013;
  v312[3] = 0x8000000265F34A40;
  v312[5] = 0;
  v312[4] = 0;
  v312[6] = 0xD000000000000013;
  v312[7] = v287;
  v312[9] = 0;
  v312[8] = 0;
  v313 = 2;
  v314 = MEMORY[0x277D84F90];
  v315 = 0;
  v316 = 0;
  v317 = 0;
  v318 = 2;
  v319 = v201;
  v320 = v203;
  v321 = 0;

  v206 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  v289 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v312, 0xD000000000000013, 0x8000000265F34A40, v206);
  v289 = v540;
  v207 = v277;
  v208 = swift_allocObject();
  *(v208 + 16) = v288;
  v274 = 0x8000000265F34A40;
  v209 = (v208 + v207);
  v210 = v276;
  *v276 = 0xD000000000000018;
  *(v210 + 8) = 0x8000000265F308F0;
  swift_storeEnumTagMultiPayload();
  v211 = swift_allocObject();
  *(v211 + 16) = v279;
  *(v211 + 32) = v278;
  v212 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v211);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v209 = 0xD000000000000017;
  v209[1] = 0x8000000265F34A60;
  v213 = v284;
  outlined init with take of NodeDef.Implementation(v210, v209 + *(v284 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v209 + *(v213 + 24)) = v212;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v208, 0xD000000000000013, v274, v214);
  v291 = v540;
  v215 = swift_allocObject();
  *(v215 + 16) = v275;
  if (one-time initialization token for vector3 != -1)
  {
    swift_once();
  }

  v216 = static MaterialXDataType.vector3;
  *(v215 + 32) = 2019840100;
  *(v215 + 40) = 0xE400000000000000;
  *(v215 + 48) = v216;
  *(v215 + 56) = 0u;
  *(v215 + 72) = 0u;
  *(v215 + 88) = 0;
  *(v215 + 96) = 2036617316;
  *(v215 + 104) = 0xE400000000000000;
  *(v215 + 112) = v216;
  *(v215 + 120) = 0u;
  *(v215 + 136) = 0u;
  *(v215 + 152) = 0;
  v217 = swift_allocObject();
  *(v217 + 16) = v288;
  v218 = one-time initialization token for gradient3d;
  swift_retain_n();
  if (v218 != -1)
  {
    swift_once();
  }

  v219 = static MaterialXDataType.gradient3d;
  *(v217 + 32) = 7632239;
  *(v217 + 40) = 0xE300000000000000;
  *(v217 + 48) = v219;
  *(v217 + 56) = 0u;
  *(v217 + 72) = 0u;
  *(v217 + 88) = 0;
  v302[0] = 0xD000000000000013;
  v302[1] = 0x8000000265F34A80;
  v302[2] = 0xD000000000000013;
  v302[3] = 0x8000000265F34A80;
  v302[4] = 0;
  v302[5] = 0;
  v302[6] = 0xD000000000000013;
  v302[7] = v287;
  v302[8] = 0;
  v302[9] = 0;
  v303 = 2;
  v304 = MEMORY[0x277D84F90];
  v305 = 0;
  v306 = 0;
  v307 = 0;
  v308 = 2;
  v309 = v215;
  v310 = v217;
  v311 = 0;

  v220 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  v289 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v302, 0xD000000000000013, 0x8000000265F34A80, v220);
  v289 = v540;
  v221 = v277;
  v222 = swift_allocObject();
  *(v222 + 16) = v288;
  v223 = (v222 + v221);
  v274 = 0x8000000265F34A80;
  v224 = v276;
  *v276 = 0xD000000000000018;
  v224[1] = 0x8000000265F308D0;
  swift_storeEnumTagMultiPayload();
  v225 = swift_allocObject();
  *(v225 + 16) = v279;
  *(v225 + 32) = v278;
  v226 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v225);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v223 = 0xD000000000000017;
  v223[1] = 0x8000000265F34AA0;
  v227 = v284;
  outlined init with take of NodeDef.Implementation(v224, v223 + *(v284 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v223 + *(v227 + 24)) = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v222, 0xD000000000000013, v274, v228);
  v291 = v540;
  v229 = swift_allocObject();
  *(v229 + 16) = v275;
  *(v229 + 32) = 2019840100;
  *(v229 + 40) = 0xE400000000000000;
  *(v229 + 48) = v216;
  *(v229 + 56) = 0u;
  *(v229 + 72) = 0u;
  *(v229 + 88) = 0;
  *(v229 + 96) = 2036617316;
  *(v229 + 104) = 0xE400000000000000;
  *(v229 + 112) = v216;
  *(v229 + 120) = 0u;
  *(v229 + 136) = 0u;
  *(v229 + 152) = 0;
  v230 = swift_allocObject();
  *(v230 + 16) = v288;
  v231 = one-time initialization token for gradientcube;

  if (v231 != -1)
  {
    swift_once();
  }

  v232 = static MaterialXDataType.gradientcube;
  *(v230 + 32) = 7632239;
  *(v230 + 40) = 0xE300000000000000;
  *(v230 + 48) = v232;
  *(v230 + 56) = 0u;
  *(v230 + 72) = 0u;
  *(v230 + 88) = 0;
  v292[0] = 0xD000000000000015;
  v292[1] = 0x8000000265F34AC0;
  v292[2] = 0xD000000000000015;
  v292[3] = 0x8000000265F34AC0;
  v292[4] = 0;
  v292[5] = 0;
  v292[6] = 0xD000000000000013;
  v292[7] = v287;
  v292[8] = 0;
  v292[9] = 0;
  v293 = 2;
  v294 = MEMORY[0x277D84F90];
  v295 = 0;
  v296 = 0;
  v297 = 0;
  v298 = 2;
  v299 = v229;
  v300 = v230;
  v301 = 0;

  v233 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v289;
  v289 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v292, 0xD000000000000015, 0x8000000265F34AC0, v233);
  v289 = v540;
  v234 = v277;
  v235 = swift_allocObject();
  *(v235 + 16) = v288;
  v236 = (v235 + v234);
  *v224 = 0xD00000000000001ALL;
  v224[1] = 0x8000000265F308B0;
  swift_storeEnumTagMultiPayload();
  v237 = swift_allocObject();
  *(v237 + 16) = v279;
  *(v237 + 32) = v278;
  v238 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(v237);
  *&v288 = 0x8000000265F34AC0;
  v239 = v238;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v236 = 0xD000000000000019;
  v236[1] = 0x8000000265F34AE0;
  v240 = v284;
  outlined init with take of NodeDef.Implementation(v224, v236 + *(v284 + 20), type metadata accessor for NodeDef.Implementation.Kind);
  *(v236 + *(v240 + 24)) = v239;
  v241 = swift_isUniquelyReferenced_nonNull_native();
  v540 = v291;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v235, 0xD000000000000015, v288, v241);
  v291 = v540;
  NodeDefStore.loadLibrary()();
  if (v242 || (NodeDefStore.applyStandardLibraryFixes()(), v243))
  {
  }

  else
  {
    v244 = qword_287794F68;
    v245 = off_287794F70;

    v246 = specialized __RawDictionaryStorage.find<A>(_:)(v244, v245);
    if (v247)
    {
      v248 = v246;
      v249 = swift_isUniquelyReferenced_nonNull_native();
      v250 = v291;
      v540 = v291;
      v291 = 0x8000000000000000;
      if ((v249 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v250 = v540;
      }

      specialized _NativeDictionary._delete(at:)(v248, v250);

      v291 = v250;
    }

    else
    {
    }

    v251 = qword_287794F78;
    v252 = off_287794F80;

    v253 = specialized __RawDictionaryStorage.find<A>(_:)(v251, v252);
    if (v254)
    {
      v255 = v253;
      v256 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v291;
      v540 = v291;
      v291 = 0x8000000000000000;
      if ((v256 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v257 = v540;
      }

      specialized _NativeDictionary._delete(at:)(v255, v257);

      v291 = v257;
    }

    else
    {
    }

    v258 = qword_287794F88;
    v259 = off_287794F90;

    v260 = specialized __RawDictionaryStorage.find<A>(_:)(v258, v259);
    if (v261)
    {
      v262 = v260;
      v263 = swift_isUniquelyReferenced_nonNull_native();
      v264 = v291;
      v540 = v291;
      v291 = 0x8000000000000000;
      if ((v263 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v264 = v540;
      }

      specialized _NativeDictionary._delete(at:)(v262, v264);

      v291 = v264;
    }

    else
    {
    }

    swift_arrayDestroy();
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10MTLLibrary_pMd, &_sSo10MTLLibrary_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized static NodeDefStore.inferLibraryFunctionName(forNodeDefName:)(uint64_t a1, uint64_t a2)
{
  v4._countAndFlagsBits = 6243406;
  v4._object = 0xE300000000000000;
  if (!String.hasPrefix(_:)(v4))
  {
    goto LABEL_11;
  }

  v10 = String.Iterator.next()();
  countAndFlagsBits = v10.value._countAndFlagsBits;
  if (v10.value._object)
  {
    object = v10.value._object;
    do
    {
      if (countAndFlagsBits == 95 && object == 0xE100000000000000 || (v13 = countAndFlagsBits, v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), countAndFlagsBits = v13, (v14 & 1) != 0))
      {
        MEMORY[0x266771540](countAndFlagsBits, object, v6, v7, v8, v9);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
  }

  v15 = String.count.getter();

  if (v15 >= 2)
  {
  }

  else
  {
LABEL_11:
    MEMORY[0x266771550](a1, a2);
    return 0x3A3A786C746DLL;
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type NodeDefStore.Errors and conformance NodeDefStore.Errors()
{
  result = lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors;
  if (!lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors;
  if (!lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefStore.Errors and conformance NodeDefStore.Errors);
  }

  return result;
}

uint64_t outlined assign with take of NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F0D9A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with copy of NodeDef.Implementation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NodeDef.Implementation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of NodeDef.Implementation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s11ShaderGraph15MaterialXTargetCACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double _sSS_11ShaderGraph7NodeDefVtSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t outlined init with take of NodeDef.Implementation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall OrderedSet._ensureUnique()()
{
  if (!*v0 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    return;
  }

  v1 = *v0;
  if (!*v0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v2 = v1[2];
  v3 = (v2 & 0x3F) << v2;
  v4 = __OFADD__(v3, 64);
  v5 = v3 + 64;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v5 - 1;
  v6 = v5 < 1;
  v8 = v5 + 62;
  if (!v6)
  {
    v8 = v7;
  }

  v9 = v8 >> 6;
  type metadata accessor for _HashTable.Storage(0);
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[2] = v2;
  v10[3] = v11;
  memcpy(v10 + 4, v1 + 4, 8 * v9);

  *v0 = v10;
}

Swift::Void __swiftcall OrderedSet._regenerateExistingHashTable()()
{
  if (*v1)
  {
    v2 = v0;
    OrderedSet._ensureUnique()();
    v3 = *v1;
    if (*v1)
    {
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);

      closure #1 in OrderedSet._regenerateExistingHashTable()((v3 + 16), v3 + 32, v1, v5, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  if (ContiguousArray.count.getter() <= 15 && v2 == 0)
  {

    *v0 = 0;
  }

  else
  {
    v4 = ContiguousArray.count.getter();
    v5 = specialized static _HashTable.scale(forCapacity:)(v4);
    OrderedSet._regenerateHashTable(scale:reservedScale:)(v5, v2);
  }
}

uint64_t OrderedSet._table.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t OrderedSet.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContiguousArray();

  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t OrderedSet._bucket(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  closure #1 in OrderedSet._bucket(for:)((a2 + 16), a2 + 32, a1, a4, &v10);
  v8 = v10;

  return v8;
}

void OrderedSet._removeExistingMember(at:in:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  v9 = ContiguousArray.count.getter();
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v3;
  v12 = *(a3 + 24);
  OrderedSet._minimumCapacity.getter(*v3);
  if (v10 >= v13)
  {
    if (!v11)
    {
      type metadata accessor for ContiguousArray();
      goto LABEL_10;
    }

    OrderedSet._ensureUnique()();
    v14 = *v3;
    if (*v4)
    {

      closure #1 in OrderedSet._removeExistingMember(at:in:)((v14 + 16), v14 + 32, a2, v4, a1, v8, v12);

      type metadata accessor for ContiguousArray();
LABEL_10:
      ContiguousArray.remove(at:)();
      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  type metadata accessor for ContiguousArray();
  ContiguousArray.remove(at:)();

  OrderedSet._regenerateHashTable()();
}

void OrderedSet._minimumCapacity.getter(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = *(a1 + 16);
    swift_beginAccess();
    if (((*(a1 + 24) ^ v2) & 0x3FLL) != 0)
    {
      swift_beginAccess();
      v3 = *(a1 + 16) & 0x3FLL;
      if (v3 >= 5)
      {
        v4 = vcvtd_n_f64_s64(1 << v3, 2uLL);
        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v4 > -9.22337204e18)
        {
          if (v4 < 9.22337204e18)
          {
            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_11;
      }
    }
  }
}

uint64_t OrderedSet._find(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMd, &_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMR);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a6, v12, a3, a4, v9, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v10);
  return v12[9];
}

uint64_t OrderedSet._scale.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    return *(v1 + 16) & 0x3FLL;
  }

  return result;
}

uint64_t OrderedSet._reservedScale.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    return *(v1 + 24) & 0x3FLL;
  }

  return result;
}

Swift::Void __swiftcall OrderedSet._regenerateHashTable(scale:reservedScale:)(Swift::Int scale, Swift::Int reservedScale)
{
  v4 = v2;
  v10 = v3[1];
  if (reservedScale <= scale)
  {
    v6 = scale;
  }

  else
  {
    v6 = reservedScale;
  }

  v7 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v9 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v10, v6, 0, reservedScale, v7, WitnessTable, *(v4 + 24));

  *v3 = v9;
}

Swift::Int OrderedSet._extractSubset(using:extraCapacity:)(unint64_t *a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v19)
  {
    v25 = OrderedSet.init(minimumCapacity:persistent:)(a4, 0, a7, a8);

    return v25;
  }

  if (ContiguousArray.count.getter() != a3)
  {
    result = a3 + a4;
    if (__OFADD__(a3, a4))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v35 = a8;
    result = OrderedSet.init(minimumCapacity:persistent:)(result, 0, a7, a8);
    v36 = result;
    v37 = v26;
    if (a2 < 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *a1;
    }

    v28 = 0;
    for (i = (v16 + 8); v27; result = (*i)(v18, a7))
    {
      v27 &= v27 - 1;
LABEL_21:
      ContiguousArray.subscript.getter();
      v33 = type metadata accessor for OrderedSet(0, a7, v35, v32);
      OrderedSet._appendNew(_:)(v18, v33);
    }

    v30 = v28;
    while (1)
    {
      v28 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v28 >= a2)
      {
        goto LABEL_7;
      }

      v31 = a1[v28];
      ++v30;
      if (v31)
      {
        v27 = (v31 - 1) & v31;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OrderedSet._capacity.getter(a5);
  v21 = v20;
  result = ContiguousArray.count.getter();
  if (__OFSUB__(v21, result))
  {
    goto LABEL_24;
  }

  if (v21 - result >= a4)
  {
    return a5;
  }

  v36 = a5;
  v37 = a6;

  result = ContiguousArray.count.getter();
  v24 = result + a4;
  if (!__OFADD__(result, a4))
  {
    type metadata accessor for OrderedSet(0, a7, a8, v23);
    OrderedSet.reserveCapacity(_:)(v24);
LABEL_7:

    return v36;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t OrderedSet._elements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*OrderedSet._table.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return OrderedSet._table.modify;
}

uint64_t OrderedSet._table.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }

  return result;
}

uint64_t key path setter for OrderedSet.elements : <A>OrderedSet<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for OrderedSet(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  return OrderedSet.elements.setter(v5, v4);
}

uint64_t OrderedSet.elements.setter(uint64_t a1, uint64_t a2)
{

  v11 = a1;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Array();
  v7 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable();
  result = OrderedSet.init<A>(_:)(&v11, v5, v6, v7, WitnessTable);
  *v2 = result;
  v2[1] = v10;
  return result;
}

void (*OrderedSet.elements.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v5[1] = *(v2 + 8);
  v7 = *(a2 + 16);
  v5[4] = v7;
  type metadata accessor for ContiguousArray();

  swift_getWitnessTable();
  *v6 = Array.init<A>(_:)();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = MEMORY[0x266772110](v8, v7);

  *(v2 + 8) = v9;
  return OrderedSet.elements.modify;
}

void OrderedSet.elements.modify(uint64_t **a1)
{
  v1 = *a1;
  $defer #1 <A>() in OrderedSet.elements.modify((*a1)[3], v1, v1[4], *(v1[2] + 24));

  free(v1);
}

uint64_t $defer #1 <A>() in OrderedSet.elements.modify(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v11 = *a2;
  v7 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  *a1 = OrderedSet.init<A>(_:)(&v11, a3, v7, a4, WitnessTable);
  a1[1] = v9;
}

void OrderedSet._capacity.getter(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = *(a1 + 16) & 0x3FLL;
    if (v2 >= 5)
    {
      v3 = (1 << v2) * 0.75;
      if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v3 > -9.22337204e18)
      {
        if (v3 < 9.22337204e18)
        {
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

uint64_t OrderedSet._bias.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    return *(v1 + 24) >> 6;
  }

  return result;
}

uint64_t closure #1 in OrderedSet._regenerateExistingHashTable()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _HashTable.UnsafeHandle.clear()();
  v12 = *(a3 + 8);
  v9 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  return _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(&v12, a1, a2, v9, WitnessTable, a5);
}

uint64_t closure #1 in OrderedSet._find_inlined(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (a3)
  {
    v16[0] = a1;
    v16[1] = a2;
    v11 = type metadata accessor for UnsafeBufferPointer();

    WitnessTable = swift_getWitnessTable();
    *a7 = _HashTable.UnsafeHandle._find<A>(_:in:)(a4, v16, (a3 + 16), a3 + 32, v11, WitnessTable, a6);
    *(a7 + 8) = v13 & 1;
    *(a7 + 16) = v14;
  }

  else
  {
    type metadata accessor for UnsafeBufferPointer();
    swift_getWitnessTable();
    result = Collection<>.firstIndex(of:)();
    *(a7 + 16) = 0;
  }

  return result;
}

void closure #1 in OrderedSet._bucket(for:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a6@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContiguousArray.subscript.getter();
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = 1 << *a1;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v33 = a6;
    v18 = v17 & v14;
    v19 = _HashTable.UnsafeHandle._startIterator(bucket:)(v17 & v14, a1, a2);
    v26 = a1;
    v27 = a2;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = 0;
    (*(v11 + 8))(v13, a4);
    if (v19)
    {
      while (1)
      {
        v22 = -1 << *v26;
        v23 = (v22 ^ ~v19) + (v26[1] >> 6);
        v24 = v23 >= ~v22 ? ~v22 : 0;
        if (v23 - v24 == a3)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v19 = v29;
        if (!v29)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }

    *v33 = v28;
  }
}

void closure #1 in OrderedSet._removeExistingMember(at:in:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a3, partial apply for closure #1 in closure #1 in OrderedSet._removeExistingMember(at:in:), v14, a1, a2);
  v16 = *(a4 + 8);
  if (__OFADD__(a5, 1))
  {
    __break(1u);
  }

  else if (a5 + 1 >= a5)
  {
    v15[0] = a5;
    v15[1] = a5 + 1;
    v12 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v15, &v16, a1, a2, v12, WitnessTable, a7);
    return;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in OrderedSet._removeExistingMember(at:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContiguousArray.subscript.getter();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  (*(v6 + 8))(v8, a4);
  return v9;
}

uint64_t sub_265F0F298(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

__n128 sub_265F0F2E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_265F0F2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = OrderedSet.elements.getter(a1, *(a1 + 8), *(a2 + a3 - 16));
  *a4 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OrderedSet.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v27 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v23 - v18;
  (*(v12 + 16))(v15, v27, a3, v17);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v26 = v19;
  v27 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v20 = *(v6 + 48);
  if (v20(v11, 1, v5) != 1)
  {
    v21 = *(v6 + 32);
    do
    {
      v21(v8, v11, v5);
      OrderedSet._append(_:)(v8, v25);
      (*(v6 + 8))(v8, v5);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v20(v11, 1, v5) != 1);
  }

  return (*(v24 + 8))(v26, v27);
}

void OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  type metadata accessor for ContiguousArray();
  ContiguousArray.append(_:)();
  v10 = ContiguousArray.count.getter();
  v11 = *v3;
  OrderedSet._capacity.getter(v11);
  if (v12 >= v10)
  {
    if (v11)
    {
      OrderedSet._ensureUnique()();
      v13 = *v4;
      if (*v4)
      {

        closure #1 in OrderedSet._appendNew(_:in:)((v13 + 16), v13 + 32, a2, v4, v6);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    OrderedSet._regenerateHashTable()();
  }
}

uint64_t OrderedSet.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OrderedSet._find(_:)(a1, *v3, v3[1], *(a3 + 16), *(a3 + 24));
  v9 = v8;
  if (v8)
  {
    OrderedSet._insertNew(_:at:in:)(a1, a2, v7, a3);
  }

  return v9 & 1;
}

void OrderedSet._insertNew(_:at:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a3;
  v19 = a1;
  v20 = a2;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ContiguousArray.count.getter();
  v12 = *v4;
  v13 = *(a4 + 24);
  OrderedSet._capacity.getter(*v4);
  if (v11 >= v14)
  {
    (*(v8 + 16))(v10, v19, v7);
    type metadata accessor for ContiguousArray();
    ContiguousArray.insert(_:at:)();
    OrderedSet._regenerateHashTable()();
    return;
  }

  v16 = v19;
  v15 = v20;
  if (v12)
  {
    OrderedSet._ensureUnique()();
    v17 = *v4;
    if (!*v5)
    {
      __break(1u);
      return;
    }

    closure #1 in OrderedSet._insertNew(_:at:in:)((v17 + 16), v17 + 32, v18, v15, v5, v7, v13);

    (*(v8 + 16))(v10, v16, v7);
    type metadata accessor for ContiguousArray();
  }

  else
  {
    (*(v8 + 16))(v10, v19, v7);
    type metadata accessor for ContiguousArray();
  }

  ContiguousArray.insert(_:at:)();
}

void OrderedSet._appendNew(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v7);
  type metadata accessor for ContiguousArray();
  ContiguousArray.append(_:)();
  v10 = ContiguousArray.count.getter();
  v11 = *v2;
  v12 = *(a2 + 24);
  OrderedSet._capacity.getter(v11);
  if (v13 >= v10)
  {
    if (v11)
    {
      OrderedSet._ensureUnique()();
      v14 = *v3;
      if (*v3)
      {

        closure #1 in OrderedSet._appendNew(_:)((v14 + 16), v14 + 32, a1, v3, v6, v12);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    OrderedSet._regenerateHashTable()();
  }
}

uint64_t OrderedSet._append(_:)(uint64_t a1, uint64_t a2)
{
  OrderedSet._find(_:)(a1, *v2, v2[1], *(a2 + 16), *(a2 + 24));
  v7 = v6;
  if (v6)
  {
    OrderedSet._appendNew(_:in:)(a1, v5, a2);
  }

  return v7 & 1;
}

uint64_t closure #1 in OrderedSet._appendNew(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = 1 << *a1;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v11 & result, a1, a2))
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
      }
    }

    v12 = ContiguousArray.count.getter();

    result = v12 - 1;
    if (!__OFSUB__(v12, 1))
    {
      return _HashTable.BucketIterator.currentValue.setter(result, 0);
    }
  }

  __break(1u);
  return result;
}

unint64_t closure #1 in OrderedSet._appendNew(_:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = ContiguousArray.count.getter();

  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8 - 1 - (a1[1] >> 6);
    return _HashTable.UnsafeHandle.subscript.setter((-1 << *a1) ^ ~(((v10 >> 63) & ~(-1 << *a1)) + v10), a3, a1, a2);
  }

  return result;
}

unint64_t closure #1 in OrderedSet._insertNew(_:at:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a5 + 8);
  v12 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  _HashTable.UnsafeHandle.adjustContents<A>(preparingForInsertionOfElementAtOffset:in:)(a4, &v15, a1, a2, v12, WitnessTable, a7);
  return _HashTable.UnsafeHandle.subscript.setter((-1 << *a1) ^ ~((((a4 - (a1[1] >> 6)) >> 63) & ~(-1 << *a1)) + a4 - (a1[1] >> 6)), a3, a1, a2);
}

void OrderedSet.update(_:at:)(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  ContiguousArray.subscript.getter();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v8 = *(v4 + 8);
    ContiguousArray._checkSubscript_mutating(_:)(a2);
    (*(*(v7 - 8) + 24))(v8 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * a2, a1, v7);
    destructiveProjectEnumData for NodePersonality.ShaderType();
  }

  else
  {
    __break(1u);
  }
}

uint64_t OrderedSet.updateOrAppend(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (OrderedSet._append(_:)(a1, a2))
  {
    v8 = *(*(*(a2 + 16) - 8) + 56);
    v9 = a3;
    v10 = 1;
  }

  else
  {
    v11 = v7;
    v12 = *(a2 + 16);
    ContiguousArray.subscript.getter();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v13 = *(v3 + 8);
    ContiguousArray._checkSubscript_mutating(_:)(v11);
    v15 = *(v12 - 8);
    (*(v15 + 24))(v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11, a1, v12);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    v8 = *(v15 + 56);
    v9 = a3;
    v10 = 0;
  }

  return v8(v9, v10, 1);
}

uint64_t OrderedSet.updateOrInsert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = v4[1];
  v10 = v4 + 1;
  v12 = *(a4 + 16);
  v13 = OrderedSet._find(_:)(a2, v9, v11, v12, *(a4 + 24));
  if (v15)
  {
    OrderedSet._insertNew(_:at:in:)(a2, a3, v14, a4);
    v16 = *(v12 - 8);
    v17 = 1;
  }

  else
  {
    a3 = v13;
    ContiguousArray.subscript.getter();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v18 = *v10;
    ContiguousArray._checkSubscript_mutating(_:)(a3);
    v16 = *(v12 - 8);
    (*(v16 + 24))(v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * a3, a2, v12);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    v17 = 0;
  }

  (*(v16 + 56))(a1, v17, 1, v12);
  return a3;
}

uint8_t *static ShaderGraphService.createLibrary(from:device:)(NSObject *a1, void *a2)
{
  v4 = type metadata accessor for SGREMaterialCompilationOptions();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v5[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v5[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = [&v9 init];
  v7 = specialized static ShaderGraphService.createLibrary(from:device:options:)(a1, a2, v6);

  return v7;
}

id @objc static ShaderGraphService.createMaterialFromArchive(data:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a3;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = a5(v7, v9);
  outlined consume of Data?(v7, v9);

  return v10;
}

void *specialized static ShaderGraphService.archiveMaterial(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OSSignposter();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.init(subsystem:category:)();
  if (a1)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v7 = *(a1 + OBJC_IVAR___SGREMaterial_graph);
    v8 = *(a1 + OBJC_IVAR___SGREMaterial_config);
    v24[1] = 1;
    v24[2] = v7;
    v24[3] = v8;
    lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
    v9 = v7;
    v10 = v8;
    v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v1)
    {
      v12 = v11;
      (*(v4 + 8))(v6, v3);

      return v12;
    }

    (*(v4 + 8))(v6, v3);

    v12 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v12 = swift_allocError();
    *v13 = xmmword_265F2B270;
    *(v13 + 16) = 1;
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = v12;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_265D7D000, v16, v17, "%@", v18, 0xCu);
    outlined destroy of [Input](v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v19, -1, -1);
    MEMORY[0x266773120](v18, -1, -1);
  }

  type metadata accessor for SGError();
  v22 = v12;
  SGError.__allocating_init(_:)(v12);
  swift_willThrow();

  return v12;
}

_DWORD *specialized static ShaderGraphService.createMaterial(from:config:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v84 - v7);
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v3 = swift_allocError();
    v22 = xmmword_265F21A90;
LABEL_9:
    *v21 = v22;
    *(v21 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v3 = swift_allocError();
    v22 = xmmword_265F21A80;
    goto LABEL_9;
  }

  objc_allocWithZone(type metadata accessor for SGREMaterialSource(0));
  v9 = a1;
  v10 = SGREMaterialSource.init(graph:configuration:)(v9, a2);
  if (!v2)
  {
    v11 = v10;
    v12 = *&v10[OBJC_IVAR___SGREMaterialSource_config];
    v13 = one-time initialization token for empty;
    v14 = *&v10[OBJC_IVAR___SGREMaterialSource_graph];
    v15 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v16 = static SGREMaterialFunctionConstantValues.empty;
    v17 = type metadata accessor for SHA512Digest();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    objc_allocWithZone(type metadata accessor for SGREMaterial(0));
    SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v14, v15, v16, v8);
    v8 = v18;
    v19 = *(v18 + OBJC_IVAR___SGREMaterial_graph);
    v94 = 0;
    v20 = v19;
    specialized SGDataTypeGraph.init(_:idSequence:constants:)(v20, &v94, MEMORY[0x277D84F90], &v96);
    mapInternalGraphToUserGraph(_:)(&v96, v101);
    v106 = v97;
    outlined destroy of String(&v106);
    v105 = v98;
    outlined destroy of [Input](&v105, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v104 = v99;
    outlined destroy of [Input](&v104, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v103 = v100;
    outlined destroy of [Input](&v103, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v33 = static NodeDefStore.shared;
    v32 = qword_280051428;
    v34 = qword_280051430;
    v35 = (*((*MEMORY[0x277D85000] & **(v8 + OBJC_IVAR___SGREMaterial_config)) + 0x60))();
    v94 = v32;
    swift_bridgeObjectRetain_n();

    specialized Sequence.forEach(_:)(v35, v32, &v94);

    v36 = *(v8 + OBJC_IVAR___SGREMaterial_textureAssignments);
    v37 = *(v8 + OBJC_IVAR___SGREMaterial_customUniformsType);
    v89 = v94;
    v88 = *&v37[OBJC_IVAR___SGPropertyDescription_type];
    v38 = v33;
    v40 = *&v37[OBJC_IVAR___SGPropertyDescription_name];
    v39 = *&v37[OBJC_IVAR___SGPropertyDescription_name + 8];
    v107 = v38;

    v90 = v34;

    v91 = v36;

    v41 = v37;
    specialized static MetalDataType.create(_:name:)(v88, v40, v39);
    v43 = v42;

    outlined init with copy of UserGraph(v101, &v94);

    v44 = SHA512Digest.description.getter();
    v46 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v44, v45);
    v87 = v47;
    v88 = v43;
    v49 = v48;
    v51 = v50;

    v52 = MEMORY[0x2667714E0](v46, v49, v87, v51);
    v54 = v53;

    v94 = v52;
    v95 = v54;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v55 = v95;
    v87 = v94;
    v84 = OBJC_IVAR___SGREMaterial_edgeDigest;
    v56 = SHA512Digest.description.getter();
    v58 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v56, v57);
    v85 = v60;
    v86 = v59;
    v62 = v61;

    v86 = MEMORY[0x2667714E0](v58, v86, v85, v62);
    v64 = v63;

    v94 = v87;
    v95 = v55;

    MEMORY[0x266771550](v86, v64);

    specialized Dictionary<>.init(_:)(v91);
    specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v101);
    outlined destroy of RESurfaceShaderMaterial(&v102);
    if (one-time initialization token for debugMode != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v65 = static DebugConfig.debugMode;

    v66 = specialized Set.contains(_:)(2, v65);

    if (v66)
    {
      v67 = v8;
      v91 = specialized static ShaderGraphService.archiveMaterial(_:)(v8);
      v107 = v68;

      v69 = *&v9[OBJC_IVAR___SGGraph_name + 8];
      v92 = *&v9[OBJC_IVAR___SGGraph_name];
      v93 = v69;

      MEMORY[0x266771550](95, 0xE100000000000000);
      v70 = SHA512Digest.description.getter();
      v72 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v70, v71);
      v74 = v73;
      v76 = v75;
      v78 = v77;

      v79 = MEMORY[0x2667714E0](v72, v74, v76, v78);
      v81 = v80;

      MEMORY[0x266771550](v79, v81);

      MEMORY[0x266771550](0x657669686372615FLL, 0xE800000000000000);
      v82 = v91;
      v83 = v107;
      specialized static FileLogger.saveDebugFile(_:name:extension:)(v91, v107, v92, v93, 0x7473696C70, 0xE500000000000000);
      outlined destroy of UserGraph(v101);

      outlined consume of Data._Representation(v82, v83);
    }

    else
    {
      outlined destroy of UserGraph(v101);
    }

    return v8;
  }

LABEL_10:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, logger);
  v24 = v3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 138412290;
    v28 = v3;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 1) = v29;
    *v27 = v29;
    _os_log_impl(&dword_265D7D000, v25, v26, "%@", v8, 0xCu);
    outlined destroy of [Input](v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v27, -1, -1);
    MEMORY[0x266773120](v8, -1, -1);
  }

  type metadata accessor for SGError();
  v30 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  return v8;
}

void specialized static ShaderGraphService.createMaterial(from:)(void *a1)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v2 = swift_allocError();
    *v3 = xmmword_265F21A90;
    *(v3 + 16) = 1;
    swift_willThrow();
LABEL_7:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_265D7D000, v6, v7, "%@", v8, 0xCu);
      outlined destroy of [Input](v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v9, -1, -1);
      MEMORY[0x266773120](v8, -1, -1);
    }

    type metadata accessor for SGError();
    v12 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();

    return;
  }

  if (one-time initialization token for default != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  specialized static ShaderGraphService.createMaterial(from:config:)(a1, static SGMaterialConfiguration.default);
  v2 = v1;
  if (v1)
  {
    goto LABEL_7;
  }
}

void *specialized static ShaderGraphService.createMaterialFromArchive(data:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  if (v5 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v2 = swift_allocError();
    *v8 = xmmword_265F21AB0;
    *(v8 + 16) = 1;
    swift_willThrow();
LABEL_7:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v18 = v2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_265D7D000, v19, v20, "%@", v21, 0xCu);
      outlined destroy of [Input](v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v22, -1, -1);
      MEMORY[0x266773120](v21, -1, -1);
    }

    type metadata accessor for SGError();
    v25 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();

    return v2;
  }

  v9 = specialized static ShaderGraphService.sourceFromArchive(data:)(a1, v5);
  if (v1)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = *&v9[OBJC_IVAR___SGREMaterialSource_config];
  v12 = one-time initialization token for empty;
  v13 = *&v9[OBJC_IVAR___SGREMaterialSource_graph];
  v14 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = static SGREMaterialFunctionConstantValues.empty;
  v16 = type metadata accessor for SHA512Digest();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  objc_allocWithZone(type metadata accessor for SGREMaterial(0));
  SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v13, v14, v15, v7);
  v2 = v27;

  return v2;
}

void *specialized static SGGraph.create(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v3 = swift_allocError();
    *v4 = xmmword_265F21AB0;
    *(v4 + 16) = 1;
    swift_willThrow();
    type metadata accessor for SGError();
    v5 = v3;
    SGError.__allocating_init(_:)(v3);
    swift_willThrow();
  }

  else
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for SGGraph();
      lazy protocol witness table accessor for type SGGraph and conformance SGGraph();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      return v7;
    }

    else
    {

      v3 = v8;
    }
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type SGGraph and conformance SGGraph()
{
  result = lazy protocol witness table cache variable for type SGGraph and conformance SGGraph;
  if (!lazy protocol witness table cache variable for type SGGraph and conformance SGGraph)
  {
    type metadata accessor for SGGraph();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGraph and conformance SGGraph);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

double DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v3, v4);

  return result;
}

uint64_t Character.isStringDelimiter.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 34 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = a1 == 39 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = String.init<A>(describing:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t String.camelCaseToCapitalized.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v19 = a1;
  v20 = a2;
  v18[6] = 0x295D5A2D415B28;
  v18[7] = 0xE700000000000000;
  v18[4] = 3220512;
  v18[5] = 0xE300000000000000;
  v18[2] = a1;
  v18[3] = a2;
  v18[0] = a1;
  v18[1] = a2;
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of Locale?(v10);
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v12;
  static CharacterSet.whitespacesAndNewlines.getter();
  v13 = StringProtocol.trimmingCharacters(in:)();
  v15 = v14;
  (*(v5 + 8))(v7, v4);

  v19 = v13;
  v20 = v15;
  v16 = StringProtocol.capitalized.getter();

  return v16;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserGraphCompiler.CompileContext.setSource(_:for:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 192);
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 192) = v7;
  return result;
}

{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 184);
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 184) = v7;
  return result;
}

Swift::Void __swiftcall UserGraphCompiler.CompileContext.setSource(_:for:)(ShaderGraph::ShaderGraphNode::ID _, ShaderGraph::FunctionNodeID a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 176);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2.value, _.value, isUniquelyReferenced_nonNull_native);
  *(v2 + 176) = v6;
}

double UserGraphCompiler.CompileContext.compiledNode(for:in:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t *a3@<X0>)
{
  v5 = *(v3 + 184);
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v8 & 1) != 0))
  {
    (*(*a1 + 272))(*(*(v5 + 56) + 8 * v7));
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

{
  v5 = *(v3 + 192);
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v8 & 1) != 0))
  {
    (*(*a1 + 272))(*(*(v5 + 56) + 8 * v7));
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t UserGraphCompiler.__allocating_init()()
{
  v0 = swift_allocObject();
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v8);
  v1 = v8[11];
  *(v0 + 176) = v8[10];
  *(v0 + 192) = v1;
  *(v0 + 208) = v9;
  v2 = v8[7];
  *(v0 + 112) = v8[6];
  *(v0 + 128) = v2;
  v3 = v8[9];
  *(v0 + 144) = v8[8];
  *(v0 + 160) = v3;
  v4 = v8[3];
  *(v0 + 48) = v8[2];
  *(v0 + 64) = v4;
  v5 = v8[5];
  *(v0 + 80) = v8[4];
  *(v0 + 96) = v5;
  v6 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v6;
  return v0;
}

uint64_t UserGraphCompiler.CompileContext.compiledNodeID(for:)(uint64_t *a1)
{
  v2 = *(v1 + 192);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(v1 + 184);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

__n128 UserGraphCompiler.context.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  v26 = *(v1 + 176);
  v27 = v3;
  v28 = *(v1 + 208);
  v4 = *(v1 + 128);
  v22 = *(v1 + 112);
  v23 = v4;
  v5 = *(v1 + 160);
  v24 = *(v1 + 144);
  v25 = v5;
  v6 = *(v1 + 64);
  v18 = *(v1 + 48);
  v19 = v6;
  v7 = *(v1 + 96);
  v20 = *(v1 + 80);
  v21 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 16);
  v17 = v8;
  outlined init with copy of [Input](&v16, &v15, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  v9 = v27;
  *(a1 + 160) = v26;
  *(a1 + 176) = v9;
  *(a1 + 192) = v28;
  v10 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v10;
  v11 = v25;
  *(a1 + 128) = v24;
  *(a1 + 144) = v11;
  v12 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v12;
  v13 = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v13;
  result = v17;
  *a1 = v16;
  *(a1 + 16) = result;
  return result;
}

uint64_t UserGraphCompiler.context.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = *(v1 + 192);
  v5 = *(v1 + 144);
  v18[9] = *(v1 + 160);
  v18[10] = v3;
  v18[11] = v4;
  v7 = *(v1 + 112);
  v6 = *(v1 + 128);
  v19 = *(v1 + 208);
  v18[7] = v6;
  v18[8] = v5;
  v8 = *(v1 + 64);
  v18[2] = *(v1 + 48);
  v18[3] = v8;
  v9 = *(v1 + 80);
  v18[5] = *(v1 + 96);
  v18[6] = v7;
  v18[4] = v9;
  v10 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v10;
  v11 = *(a1 + 176);
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = v11;
  *(v1 + 208) = *(a1 + 192);
  v12 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v12;
  v13 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v13;
  v14 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v14;
  v15 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v15;
  v16 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v16;
  return outlined destroy of [Input](v18, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
}

uint64_t UserGraphCompiler.init()()
{
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v8);
  v1 = v8[11];
  *(v0 + 176) = v8[10];
  *(v0 + 192) = v1;
  *(v0 + 208) = v9;
  v2 = v8[7];
  *(v0 + 112) = v8[6];
  *(v0 + 128) = v2;
  v3 = v8[9];
  *(v0 + 144) = v8[8];
  *(v0 + 160) = v3;
  v4 = v8[3];
  *(v0 + 48) = v8[2];
  *(v0 + 64) = v4;
  v5 = v8[5];
  *(v0 + 80) = v8[4];
  *(v0 + 96) = v5;
  v6 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v6;
  return v0;
}

char *UserGraphCompiler.compile(sourceProgram:into:)(__int128 *a1, char *a2)
{
  v4 = v2;
  v6 = a1[9];
  v73 = a1[8];
  v74[0] = v6;
  *(v74 + 9) = *(a1 + 153);
  v7 = a1[5];
  v69 = a1[4];
  v70 = v7;
  v8 = a1[6];
  v72 = a1[7];
  v71 = v8;
  v9 = a1[1];
  v65 = *a1;
  v66 = v9;
  v10 = a1[2];
  v68 = a1[3];
  v67 = v10;
  outlined init with copy of UserGraph(a1, &v53);
  UserGraph.flatten()();
  v93 = v73;
  v94[0] = v74[0];
  *(v94 + 9) = *(v74 + 9);
  v89 = v69;
  v90 = v70;
  v92 = v72;
  v91 = v71;
  v85 = v65;
  v86 = v66;
  v88 = v68;
  v87 = v67;
  v11 = MEMORY[0x277D84F90];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AC08FunctioneF0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined init with copy of UserGraph(&v85, &v41);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph5InputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v11);
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph6OutputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v11);
  v61 = v93;
  *v62 = v94[0];
  *&v62[9] = *(v94 + 9);
  v57 = v89;
  v58 = v90;
  v59 = v91;
  v60 = v92;
  v53 = v85;
  v54 = v86;
  v55 = v87;
  v56 = v88;
  *&v63 = v12;
  *(&v63 + 1) = v13;
  v64 = v14;
  specialized UserGraphCompiler.emitFunctionNodes(context:into:)(&v53, a2);
  if (v3)
  {
    v49 = v73;
    *v50 = v74[0];
    *&v50[9] = *(v74 + 9);
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v41 = v65;
    v42 = v66;
    v43 = v67;
    v44 = v68;
    outlined destroy of UserGraph(&v41);
    *&v50[16] = *&v62[16];
    v51 = v63;
    v52 = v64;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    *v50 = *v62;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v41 = v53;
    v42 = v54;
    outlined destroy of UserGraphCompiler.CompileContext(&v41);
  }

  else
  {
    v16 = v15;
    v83[8] = v61;
    v84[0] = *v62;
    *(v84 + 9) = *&v62[9];
    v83[4] = v57;
    v83[5] = v58;
    v83[7] = v60;
    v83[6] = v59;
    v83[0] = v53;
    v83[1] = v54;
    v83[3] = v56;
    v83[2] = v55;

    outlined init with copy of UserGraph(v83, &v41);
    v17 = UserGraph.sinkNodes()();
    specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v83, v17, v75);
    outlined destroy of UserGraph(v83);

    specialized Sequence.forEach(_:)(v75, &v53, v16);

    v18 = v75[1];
    v19 = v75[2];
    v80 = v75[0];
    outlined destroy of [Input](&v80, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v79 = v18;
    outlined destroy of [Input](&v79, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    v78 = v19;
    outlined destroy of [Input](&v78, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    v77 = v75[3];
    outlined destroy of [Input](&v77, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v76 = v75[4];
    outlined destroy of [Input](&v76, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    specialized UserGraphCompiler.applyConstExpr(context:into:)(&v53, v16);
    v21 = v20;

    a2 = specialized UserGraphCompiler.removePassthroughNodes(context:into:)(&v53, v21);

    v24[10] = *&v62[16];
    v24[11] = v63;
    v24[6] = v59;
    v24[7] = v60;
    v24[8] = v61;
    v24[9] = *v62;
    v24[2] = v55;
    v24[3] = v56;
    v24[4] = v57;
    v24[5] = v58;
    v24[0] = v53;
    v24[1] = v54;
    v36 = *&v62[16];
    v37 = v63;
    v32 = v59;
    v33 = v60;
    v34 = v61;
    v35 = *v62;
    v28 = v55;
    v29 = v56;
    v30 = v57;
    v31 = v58;
    v25 = v64;
    v38 = v64;
    v26 = v53;
    v27 = v54;
    destructiveProjectEnumData for NodePersonality.ShaderType();
    v81[10] = v36;
    v81[11] = v37;
    v82 = v38;
    v81[6] = v32;
    v81[7] = v33;
    v81[9] = v35;
    v81[8] = v34;
    v81[2] = v28;
    v81[3] = v29;
    v81[5] = v31;
    v81[4] = v30;
    v81[1] = v27;
    v81[0] = v26;
    v23 = *(*v4 + 96);

    outlined init with copy of UserGraphCompiler.CompileContext(v24, &v41);
    v23(v81);

    v39[8] = v73;
    v40[0] = v74[0];
    *(v40 + 9) = *(v74 + 9);
    v39[4] = v69;
    v39[5] = v70;
    v39[6] = v71;
    v39[7] = v72;
    v39[0] = v65;
    v39[1] = v66;
    v39[2] = v67;
    v39[3] = v68;
    outlined destroy of UserGraph(v39);
    *&v50[16] = *&v62[16];
    v51 = v63;
    v52 = v64;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    *v50 = *v62;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v41 = v53;
    v42 = v54;
    outlined destroy of UserGraphCompiler.CompileContext(&v41);
  }

  return a2;
}

__n128 UserGraphCompiler.CompileContext.init(sourceProgram:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AC08FunctioneF0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph5InputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v4);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph6OutputV_AC14FunctionNodeIDVTt0g5Tf4g_n(v4);
  *v17 = a1[9];
  *&v17[9] = *(a1 + 153);
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *(a1 + 3);
  *(a2 + 128) = a1[8];
  *(a2 + 144) = *v17;
  *(a2 + 160) = *&v17[16];
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *a2 = v9;
  *(a2 + 16) = v10;
  result = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  return result;
}

uint64_t closure #1 in UserGraphCompiler.emitFunctionNodes(context:into:)(__int128 *a1, char **a2, __int128 *a3)
{
  v6 = a1[1];
  v27 = *a1;
  v28[0] = v6;
  *(v28 + 9) = *(a1 + 25);
  v7 = v27;
  v8 = *a2;

  v9 = NodePersonality.emitFunctionNodes(node:context:into:)(&v27, a3, v8, v27);
  if (v3)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v29 = *(&v27 + 1);
    v30 = *&v28[0];
    v11 = v3;
    outlined copy of NodePersonality(v7);
    outlined init with copy of [Input](&v29, &v24, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v30, &v24, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    outlined consume of NodePersonality(v7);
    outlined destroy of [Input](&v29, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315650;
      v24 = v3;
      v16 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000265F34CA0, &v26);
      *(v14 + 22) = 2080;
      v24 = 1701080942;
      v25 = 0xE400000000000000;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v20);

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v26);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_265D7D000, v12, v13, "Got error:\n    %s\nIn '%s'\n    Node: '%s'", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v15, -1, -1);
      MEMORY[0x266773120](v14, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v23 = v9;

    *a2 = v23;
  }
}

uint64_t closure #1 in UserGraphCompiler.emitEdges(context:into:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v5 = a1[1];
  v47 = *a1;
  v48 = v5;
  v49 = a1[2];
  v50 = *(a1 + 6);
  v6 = *(a1 + 72);
  v41 = *(a1 + 56);
  v42 = v6;
  v43 = *(a1 + 88);
  v44 = *(a1 + 13);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  v51[2] = a2[2];
  v51[3] = v9;
  v51[0] = v7;
  v51[1] = v8;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v51[6] = a2[6];
  v51[7] = v12;
  v51[4] = v10;
  v51[5] = v11;
  v13 = a2[8];
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];
  v52 = *(a2 + 24);
  v51[10] = v15;
  v51[11] = v16;
  v51[8] = v13;
  v51[9] = v14;
  outlined init with copy of UserGraphCompiler.CompileContext(v51, &v33);
  UserGraphCompiler.CompileContext.compiledNode(for:in:)(a3, &v37, &v47);
  outlined destroy of UserGraphCompiler.CompileContext(v51);
  if (v38)
  {
    outlined init with take of MetalFunctionNode(&v37, &v39);
    v17 = a2[11];
    v45[10] = a2[10];
    v45[11] = v17;
    v46 = *(a2 + 24);
    v18 = a2[7];
    v45[6] = a2[6];
    v45[7] = v18;
    v19 = a2[9];
    v45[8] = a2[8];
    v45[9] = v19;
    v20 = a2[3];
    v45[2] = a2[2];
    v45[3] = v20;
    v21 = a2[5];
    v45[4] = a2[4];
    v45[5] = v21;
    v22 = a2[1];
    v45[0] = *a2;
    v45[1] = v22;
    outlined init with copy of UserGraphCompiler.CompileContext(v45, &v33);
    UserGraphCompiler.CompileContext.compiledNode(for:in:)(a3, &v31, &v41);
    outlined destroy of UserGraphCompiler.CompileContext(v45);
    if (v32)
    {
      outlined init with take of MetalFunctionNode(&v31, &v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265F1F670;
      outlined init with copy of MetalFunctionNode(&v39, inited + 32);
      __swift_mutable_project_boxed_opaque_existential_1(&v37, v38);
      MetalFunctionNode.setInputs(_:)();
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
      v24 = &v37;
    }

    else
    {
      outlined destroy of [Input](&v31, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
      *&v37 = 0;
      *(&v37 + 1) = 0xE000000000000000;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      _print_unlocked<A, B>(_:_:)();
      v29 = v37;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v30 = 33;
      *(v30 + 8) = v29;
      swift_willThrow();
      v24 = &v39;
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    outlined destroy of [Input](&v37, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
    v39 = 0;
    v40 = 0xE000000000000000;
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    _print_unlocked<A, B>(_:_:)();
    v25 = v39;
    v26 = v40;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v27 = 34;
    *(v27 + 8) = v25;
    *(v27 + 16) = v26;
    return swift_willThrow();
  }
}

void applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  swift_beginAccess();
  v7 = *(a2 + 16);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = *(v8 + 8);
  v11 = *(v10 + 24);

  v12 = v11(v9, v10);
  v13 = specialized Set.contains(_:)(v12, v7);

  if (!v13)
  {
    outlined init with copy of MetalFunctionNode(a1, v38);
    v15 = v39;
    v14 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v16 = (*(*(v14 + 8) + 24))(v15);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v36, v16);
    swift_endAccess();
    v17 = v39;
    v18 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v18 + 24))(1, v17, v18);
    v20 = v39;
    v19 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v21 = (*(*(v19 + 8) + 48))(v20);
    v22 = *(v21 + 16);
    v23 = a2;
    if (v22)
    {
      v36[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v24 = 0;
      v25 = v36[0];
      v26 = *(*v41 + 272);
      do
      {
        if (v24 >= *(v21 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        v26(v37, *(v21 + 8 * v24 + 32));
        if (v4)
        {

          goto LABEL_19;
        }

        v36[0] = v25;
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v25 = v36[0];
        }

        ++v24;
        *(v25 + 16) = v28 + 1;
        outlined init with take of MetalFunctionNode(v37, v25 + 40 * v28 + 32);
      }

      while (v22 != v24);

      v23 = a2;
      v29 = *(v25 + 16);
      if (v29)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
      v29 = *(MEMORY[0x277D84F90] + 16);
      if (v29)
      {
LABEL_14:
        v30 = 0;
        v31 = v25 + 32;
        while (1)
        {
          if (v30 >= *(v25 + 16))
          {
            goto LABEL_26;
          }

          outlined init with copy of MetalFunctionNode(v31, v37);
          outlined init with copy of MetalFunctionNode(v37, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
          if (!swift_dynamicCast())
          {
            break;
          }

          outlined init with take of MetalFunctionNode(v33, v36);
          applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(v36, v23, v41);
          if (v4)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v36);
            goto LABEL_22;
          }

          ++v30;
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          v31 += 40;
          if (v29 == v30)
          {
            goto LABEL_19;
          }
        }

        v34 = 0;
        memset(v33, 0, sizeof(v33));
        outlined destroy of [Input](v33, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v32 = 47;
        *(v32 + 8) = 0xD00000000000005CLL;
        *(v32 + 16) = 0x8000000265F34C40;
        swift_willThrow();
LABEL_22:
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        goto LABEL_23;
      }
    }

LABEL_19:

LABEL_23:
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }
}

uint64_t closure #2 in applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MetalFunctionNode(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of MetalFunctionNode(v7, v10);
    applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(v10, a2, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    outlined destroy of [Input](v7, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v6 = 47;
    *(v6 + 8) = 0xD00000000000005CLL;
    *(v6 + 16) = 0x8000000265F34C40;
    return swift_willThrow();
  }
}

void *closure #4 in UserGraphCompiler.removePassthroughNodes(context:into:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 48))(v7, v8);
  if (!result[2])
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = result[4];

  result = (*(*a2 + 272))(v38, v10);
  if (v3)
  {
    return result;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  if (*(a3 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v15)
    {
      outlined init with copy of MetalFunctionNode(*(a3 + 56) + 40 * v14, v34);
      outlined init with take of MetalFunctionNode(v34, v35);
      v16 = v36;
      v17 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v18 = (*(v17 + 48))(v16, v17);
      v19 = a1[3];
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v21 = (*(v20 + 24))(v19, v20);
      v22 = *(v18 + 16);
      if (!v22)
      {
LABEL_9:

LABEL_12:
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      v23 = 0;
      while (*(v18 + 8 * v23 + 32) != v21)
      {
        if (v22 == ++v23)
        {
          goto LABEL_9;
        }
      }

      v24 = v36;
      v25 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v26 = (*(v25 + 64))(v34, v24, v25);
      specialized Array.remove(at:)(v23);
      v26(v34, 0);
      v27 = v39;
      v28 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v29 = (*(v28 + 24))(v27, v28);
      v30 = v36;
      v31 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      result = (*(v31 + 64))(v34, v30, v31);
      if (*(*v32 + 16) >= v23)
      {
        v33 = result;
        specialized Array.replaceSubrange<A>(_:with:)(v23, v23, v29);
        (v33)(v34, 0);
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t closure #5 in UserGraphCompiler.removePassthroughNodes(context:into:)(uint64_t a1)
{
  outlined init with copy of MetalFunctionNode(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  type metadata accessor for MetalPassthroughNode();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1 ^ 1u;
}

uint64_t UserGraphCompiler.deinit()
{
  v1 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v1;
  v9 = *(v0 + 208);
  v2 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v2;
  v3 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v3;
  v4 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v4;
  v5 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v5;
  v6 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v6;
  outlined destroy of [Input](v8, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  return v0;
}

uint64_t UserGraphCompiler.__deallocating_deinit()
{
  v1 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v1;
  v9 = *(v0 + 208);
  v2 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v2;
  v3 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v3;
  v4 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v4;
  v5 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v5;
  v6 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v6;
  outlined destroy of [Input](v8, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  return swift_deallocClassInstance();
}

uint64_t UserGraphCompiler.CompileContext.compiledNodeID(for:)(uint64_t a1)
{
  v2 = *(v1 + 176);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 24)), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = MEMORY[0x266772750](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
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
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*a1);
  (*(*a1[1] + 120))(v5);
  String.hash(into:)();
  if (*(a1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = a1[4];
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
  }

  MEMORY[0x266772770](a1[6]);
  v3 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v6);
}

void specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  v2 = a1[1];
  v3 = a1[2];
  MEMORY[0x266772770](*a1);
  MEMORY[0x266772770](v2);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = v4;
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      MEMORY[0x266772770](1);
      SGDataTypeGraph.hash(into:)(v10);
    }

    else
    {
      v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v14 = v7;
      v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v11 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v12 = v8;
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v6);
      SGDataTypeStorage.hash(into:)(v10);
    }
  }

  else
  {
    v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = v5;
    v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    MEMORY[0x266772770](0);
    BuiltInDefinition.hash(into:)(v10);
  }

  String.hash(into:)();

  v9 = Hasher._finalize()();

  specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(float32x4_t *a1)
{
  Hasher.init(_seed:)();
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4].i8[0];
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  SGDataTypeStorage.hash(into:)(v6);
  (*(*a1[4].i64[1] + 120))(v6);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266771F40](v9, a1);
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
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(**(*(v6 + 48) + 8 * v5) + 128);

      v10 = v9(a1);

      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v17 = *a1;
    v18 = ~v3;
    do
    {
      v8 = *(v2 + 48) + 56 * v4;
      if (*v8 == v7)
      {
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        v21 = *(v8 + 40);
        v19 = *(v8 + 32);
        v20 = *(v8 + 48);
        v11 = a1[1];
        v12 = *(**(v8 + 8) + 128);

        if (v12(v11))
        {
          if (v9 == a1[2] && v10 == a1[3])
          {

            v7 = v17;
            v6 = v18;
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v7 = v17;
            v6 = v18;
            if ((v14 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v15 = *(a1 + 40);
          if (v21)
          {
            if (!*(a1 + 40))
            {
              goto LABEL_4;
            }
          }

          else
          {
            if (v19 != a1[4])
            {
              v15 = 1;
            }

            if (v15)
            {
              goto LABEL_4;
            }
          }

          if (v20 == a1[6])
          {
            return v4;
          }
        }

        else
        {

          v7 = v17;
          v6 = v18;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      if (*(v13 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (a3)
      {
        goto LABEL_3;
      }

      v14 = *v13 == a1 && *(v13 + 8) == a2;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_3:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return;
  }

  v6 = ~v4;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v287 = a1[3];
  v293 = v9;
  v295 = v9 >> 62;
  v296 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  v282 = a1[4];
  v299 = v6;
  v300 = v2 + 64;
  v297 = v8;
  v298 = *a1;
  while (1)
  {
    v11 = (*(v2 + 48) + 40 * v5);
    if (*v11 != v7 || v11[1] != v8)
    {
      goto LABEL_4;
    }

    v13 = v11[2];
    v303 = v11[3];
    v304 = v11[4];
    if (!(v13 >> 62))
    {
      break;
    }

    if (v13 >> 62 == 1)
    {
      if (v302 != 0x4000000000000000 || *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *(v296 + 16))
      {
        goto LABEL_4;
      }

      v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v285 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v16 = *(v296 + 40);
      v15 = *(v296 + 48);
      v288 = *(v296 + 56);
      v290 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *(v296 + 24) || *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *(v296 + 32))
      {
        v18 = v11[2];
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v18;
        v8 = v297;
        v7 = v298;
        v6 = v299;
        v3 = v300;
        v2 = v301;
        if ((v19 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v20 = *(v14 + 16);
      if (v20 != *(v16 + 16))
      {
        goto LABEL_4;
      }

      if (v20)
      {
        v21 = v14 == v16;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v194 = (v14 + 56);
        v195 = (v16 + 56);
        while (v20)
        {
          v196 = *(v194 - 1);
          v197 = *v194;
          v198 = *(v195 - 1);
          v199 = *v195;
          if (*(v194 - 3) != *(v195 - 3) || *(v194 - 2) != *(v195 - 2))
          {
            v201 = v13;
            v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v13 = v201;
            v8 = v297;
            v7 = v298;
            v6 = v299;
            v3 = v300;
            v2 = v301;
            if ((v202 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (v196 != v198 || ((v197 ^ v199) & 1) != 0)
          {
            goto LABEL_4;
          }

          v194 += 32;
          v195 += 32;
          if (!--v20)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_342;
      }

LABEL_25:
      v22 = *(v290 + 16);
      if (v22 != *(v15 + 16))
      {
        goto LABEL_4;
      }

      if (v22 && v290 != v15)
      {
        v23 = (v290 + 48);
        v24 = (v15 + 48);
        do
        {
          v25 = *v23;
          v26 = *v24;
          if (*(v23 - 2) != *(v24 - 2) || *(v23 - 1) != *(v24 - 1))
          {
            v28 = v13;
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v13 = v28;
            v8 = v297;
            v7 = v298;
            v6 = v299;
            v3 = v300;
            v2 = v301;
            if ((v29 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (v25 != v26)
          {
            goto LABEL_4;
          }

          v23 += 3;
          v24 += 3;
        }

        while (--v22);
      }

      v30 = *(v285 + 16);
      if (v30 != *(v288 + 16))
      {
        goto LABEL_4;
      }

      if (!v30)
      {
        goto LABEL_280;
      }

      v31 = v304;

      if (v285 == v288)
      {
        goto LABEL_253;
      }

      if (!*(v285 + 16))
      {
        goto LABEL_343;
      }

      v32 = 0;
      v33 = v285 + 32;
      v34 = 1;
      v275 = v30;
      while (2)
      {
        v35 = v34;
        v36 = (v33 + 88 * v32);
        v37 = v36[1];
        v320 = *v36;
        v321 = v37;
        v39 = v36[3];
        v38 = v36[4];
        v40 = v36[2];
        v325 = *(v36 + 10);
        v323 = v39;
        v324 = v38;
        v322 = v40;
        if (v32 >= *(v288 + 16))
        {
          goto LABEL_344;
        }

        v41 = *(&v320 + 1);
        v42 = *(&v321 + 1);
        v43 = v321;
        v44 = v322;
        v45 = v288 + 32 + 88 * v32;
        v46 = *(v45 + 16);
        v326 = *v45;
        v327 = v46;
        v48 = *(v45 + 48);
        v47 = *(v45 + 64);
        v49 = *(v45 + 32);
        v331 = *(v45 + 80);
        v329 = v48;
        v330 = v47;
        v328 = v49;
        v50 = v326;
        v51 = v327;
        v279 = v35;
        if (v322)
        {
          if (!v328)
          {
            goto LABEL_293;
          }

          v276 = *(&v321 + 1);
          v277 = v322;
          v283 = v320;
          v281 = v328;
          if (v320 != v326)
          {
            v216 = v328;
            v273 = *(&v327 + 1);
            outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v50, *(&v50 + 1), v51, v273, v216);
            v217 = v283;
LABEL_309:
            v220 = v41;
            v229 = v43;
            v235 = v42;
            goto LABEL_315;
          }

          if (*(&v320 + 1) != *(&v326 + 1))
          {
            v218 = v320;
            v219 = v328;
            v274 = *(&v327 + 1);
            outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v218, *(&v50 + 1), v51, v274, v219);
            v217 = v218;
            goto LABEL_309;
          }

          v278 = v321;
          v280 = *(&v320 + 1);
          v291 = v327;
          if (v321 >> 62)
          {
            if (v321 >> 62 == 1)
            {
              v272 = *(&v327 + 1);
              if (v327 >> 62 != 1)
              {
                outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                v230 = v283;
                v231 = v283;
                v232 = v41;
                v233 = v51;
                v234 = v272;
                goto LABEL_308;
              }

              if (*((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
              {
                goto LABEL_302;
              }

              v52 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v266 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v53 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
              v55 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v54 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v270 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
              if ((*((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) || *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x20)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v56 = *(v52 + 16), v56 != *(v55 + 16)))
              {
                outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                v221 = v283;
                v222 = v283;
                v41 = v280;
LABEL_304:
                v223 = v41;
                v224 = v51;
                v225 = v272;
LABEL_312:
                outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v222, v223, v224, v225, v281);
                v217 = v221;
                v220 = v41;
LABEL_313:
                v229 = v43;
                v42 = v276;
                goto LABEL_314;
              }

              v268 = v53;
              if (v56 && v52 != v55)
              {
                v57 = (v52 + 56);
                v58 = (v55 + 56);
                while (1)
                {
                  v59 = *(v57 - 1);
                  v60 = *v57;
                  v61 = *(v58 - 1);
                  v62 = *v58;
                  v63 = *(v57 - 3) == *(v58 - 3) && *(v57 - 2) == *(v58 - 2);
                  if (!v63 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v59 != v61)
                  {
                    break;
                  }

                  v43 = v278;
                  if (v60 != v62)
                  {
                    outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    v204 = v283;
                    v205 = v283;
                    v41 = v280;
                    v206 = v280;
                    v51 = v291;
                    goto LABEL_298;
                  }

                  v57 += 32;
                  v58 += 32;
                  --v56;
                  v51 = v291;
                  if (!v56)
                  {
                    goto LABEL_65;
                  }
                }

LABEL_292:
                outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                v207 = v283;
                v208 = v283;
                v41 = v280;
                v209 = v280;
                v51 = v291;
LABEL_295:
                outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v208, v209, v51, v272, v281);
                v214 = v207;
                v215 = v41;
                v43 = v278;
                goto LABEL_299;
              }

LABEL_65:
              v64 = *(v266 + 16);
              if (v64 != *(v54 + 16))
              {
                outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                v204 = v283;
                v205 = v283;
                v41 = v280;
                goto LABEL_291;
              }

              v41 = v280;
              if (v64 && v266 != v54)
              {
                v65 = (v266 + 48);
                v66 = (v54 + 48);
                do
                {
                  v67 = *v65;
                  v68 = *v66;
                  v69 = *(v65 - 2) == *(v66 - 2) && *(v65 - 1) == *(v66 - 1);
                  if (!v69 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v67 != v68)
                  {
                    goto LABEL_290;
                  }

                  v65 += 3;
                  v66 += 3;
                }

                while (--v64);
              }

              v70 = v270;
              v71 = *(v268 + 16);
              if (v71 != *(v270 + 16))
              {
                goto LABEL_290;
              }

              v31 = v304;
              if (v71 && v268 != v270)
              {
                v256 = *(v268 + 16);
                outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v280, v51, v272, v281);
                v42 = v276;
                v44 = v277;
                outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v280, v43, v276, v277);
                if (!*(v268 + 16))
                {
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
                  __break(1u);
                  __break(1u);
                  return;
                }

                v72 = 0;
                v73 = 1;
                while (2)
                {
                  v74 = v73;
                  v75 = v268 + 32 + 88 * v72;
                  v76 = *(v75 + 16);
                  v310 = *v75;
                  v311 = v76;
                  v78 = *(v75 + 48);
                  v77 = *(v75 + 64);
                  v79 = *(v75 + 80);
                  v312 = *(v75 + 32);
                  v315 = v79;
                  v313 = v78;
                  v314 = v77;
                  if (v72 >= *(v70 + 16))
                  {
                    goto LABEL_346;
                  }

                  v80 = v311;
                  v81 = v270 + 32 + 88 * v72;
                  v82 = *(v81 + 16);
                  v316 = *v81;
                  v317 = v82;
                  v84 = *(v81 + 48);
                  v83 = *(v81 + 64);
                  v85 = *(v81 + 32);
                  v319 = *(v81 + 80);
                  *&v318[16] = v84;
                  *&v318[32] = v83;
                  *v318 = v85;
                  v86 = v316;
                  v259 = v312;
                  v260 = v74;
                  if (!v312)
                  {
                    if (*v318)
                    {
LABEL_317:
                      v305[0] = v310;
                      v305[1] = v311;
                      v306 = v312;
                      v307 = v316;
                      v308 = v317;
                      v309 = *v318;
                      v264 = v310;
                      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v316, *(&v316 + 1), v317, *(&v317 + 1), v85);
                      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v264, *(&v264 + 1), v80, *(&v80 + 1), v259);
                      outlined destroy of [Input](v305, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMR);
                      goto LABEL_334;
                    }

                    outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    goto LABEL_153;
                  }

                  if (!*v318)
                  {
                    goto LABEL_317;
                  }

                  v262 = v310;
                  v258 = v317;
                  v261 = *v318;
                  if (v310 != v316)
                  {
                    v236 = *(&v310 + 1);
                    v237 = v310;
                    v241 = v317;
                    v242 = *v318;
                    v243 = *(&v317 + 1);
                    outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    v245 = *(&v86 + 1);
                    v244 = v86;
                    v246 = v241;
                    v247 = v243;
                    v248 = v242;
LABEL_329:
                    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v244, v245, v246, v247, v248);
                    goto LABEL_330;
                  }

                  v257 = *(&v317 + 1);
                  v87 = v311;
                  if (*(&v310 + 1) != *(&v316 + 1))
                  {
                    v236 = *(&v310 + 1);
                    v237 = v310;
                    v249 = v317;
                    outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    v238 = v237;
                    v239 = *(&v86 + 1);
                    v240 = v249;
                    goto LABEL_327;
                  }

                  if (v311 >> 62)
                  {
                    if (v311 >> 62 == 1)
                    {
                      if (v317 >> 62 != 1)
                      {
                        goto LABEL_323;
                      }

                      if (*((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
                      {
                        outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        v236 = *(&v262 + 1);
                        v245 = *(&v262 + 1);
                        v237 = v262;
                        v244 = v262;
                        v246 = v258;
                        v247 = v257;
                        v248 = v261;
                        goto LABEL_329;
                      }

                      v88 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                      v252 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                      v254 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v90 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                      v89 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v250 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                      if ((*((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) || *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x20)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        goto LABEL_310;
                      }

                      v91 = *(v88 + 16);
                      if (v91 != *(v90 + 16))
                      {
                        goto LABEL_310;
                      }

                      if (v91 && v88 != v90)
                      {
                        v92 = (v88 + 56);
                        v93 = (v90 + 56);
                        while (1)
                        {
                          v94 = *(v92 - 1);
                          v95 = *v92;
                          v96 = *(v93 - 1);
                          v97 = *v93;
                          v98 = *(v92 - 3) == *(v93 - 3) && *(v92 - 2) == *(v93 - 2);
                          if (!v98 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v94 != v96 || v95 != v97)
                          {
                            break;
                          }

                          v92 += 32;
                          v93 += 32;
                          if (!--v91)
                          {
                            goto LABEL_105;
                          }
                        }

LABEL_310:
                        outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        v236 = *(&v262 + 1);
                        v237 = v262;
                        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v258, v257, v261);
                        v43 = v278;
LABEL_330:
                        v87 = v80;
LABEL_331:
                        v106 = v259;
                        v107 = *(&v80 + 1);
                        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v237, v236, v87, *(&v80 + 1), v259);
LABEL_332:

                        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v87, v107, v106);
LABEL_333:
                        outlined destroy of [Input](&v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        outlined destroy of [Input](&v310, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        v42 = v276;
                        v44 = v277;
                        v41 = v280;
                        goto LABEL_334;
                      }

LABEL_105:
                      v99 = *(v254 + 16);
                      if (v99 != *(v89 + 16))
                      {
                        goto LABEL_310;
                      }

                      v43 = v278;
                      v87 = v80;
                      if (v99 && v254 != v89)
                      {
                        v100 = (v254 + 48);
                        v101 = (v89 + 48);
                        while (1)
                        {
                          v102 = *v100;
                          v103 = *v101;
                          v104 = *(v100 - 2) == *(v101 - 2) && *(v100 - 1) == *(v101 - 1);
                          if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v102 != v103)
                          {
                            break;
                          }

                          v100 += 3;
                          v101 += 3;
                          if (!--v99)
                          {
                            goto LABEL_116;
                          }
                        }

                        outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        v236 = *(&v262 + 1);
                        v237 = v262;
                        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v258, v257, v261);
                        goto LABEL_331;
                      }

LABEL_116:
                      outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                      outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                      v105 = v257;
                      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v258, v257, v261);
                      v106 = v259;
                      v107 = *(&v80 + 1);
                      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v80, *(&v80 + 1), v259);
                      v31 = v304;
                      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(v252, v250) & 1) == 0)
                      {
                        goto LABEL_332;
                      }
                    }

                    else
                    {
                      v113 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v114 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
                      v332[2] = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                      v332[3] = v114;
                      v333 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
                      v115 = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v332[0] = *((v311 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v332[1] = v115;
                      if (v317 >> 62 != 2)
                      {
LABEL_323:
                        v236 = *(&v310 + 1);
                        v237 = v310;
                        v118 = v317;
                        outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                        outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_326:
                        v238 = v237;
                        v239 = v236;
                        v240 = v118;
                        goto LABEL_327;
                      }

                      v116 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v117 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
                      v334[2] = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                      v334[3] = v117;
                      v118 = v317;
                      v335 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
                      v119 = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v334[0] = *((v317 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v334[1] = v119;
                      if (v113 != v116)
                      {
                        goto LABEL_325;
                      }

                      outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                      outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                      v120 = v118;
                      v105 = v257;
                      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v120, v257, v261);
                      v106 = v259;
                      v107 = *(&v80 + 1);
                      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v80, *(&v80 + 1), v259);
                      if ((specialized static SGDataTypeStorage.== infix(_:_:)(v332, v334) & 1) == 0)
                      {
                        goto LABEL_332;
                      }
                    }

LABEL_149:
                    if (v107 == v105 && v106 == v261)
                    {

                      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v87, v107, v106);
                    }

                    else
                    {
                      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v87, v107, v106);
                      if ((v121 & 1) == 0)
                      {
                        goto LABEL_333;
                      }
                    }

LABEL_153:
                    v122 = *(&v313 + 1);
                    v123 = *(&v314 + 1);
                    v124 = v315;
                    v125 = *&v318[24];
                    v126 = *&v318[40];
                    v127 = v319;
                    if ((specialized Sequence<>.elementsEqual<A>(_:)(*&v318[16], v313) & 1) == 0 || (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(v122, v125) & 1) == 0 || (specialized Sequence<>.elementsEqual<A>(_:)(v126, v123) & 1) == 0)
                    {
                      goto LABEL_333;
                    }

                    v128 = _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(v124, v127);
                    outlined destroy of [Input](&v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    outlined destroy of [Input](&v310, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    v41 = v280;
                    if ((v128 & 1) == 0)
                    {
                      v42 = v276;
                      v44 = v277;
                      goto LABEL_334;
                    }

                    v42 = v276;
                    v44 = v277;
                    v129 = v272;
                    if (v260 == v256)
                    {
                      goto LABEL_211;
                    }

                    v73 = v260 + 1;
                    v70 = v270;
                    v72 = v260;
                    if (v260 >= *(v268 + 16))
                    {
                      goto LABEL_345;
                    }

                    continue;
                  }

                  break;
                }

                if (v317 >> 62)
                {
                  v118 = v317;
LABEL_325:
                  outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                  outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                  v236 = *(&v262 + 1);
                  v237 = v262;
                  goto LABEL_326;
                }

                v108 = *(v311 + 32);
                v109 = *(v311 + 56);
                v251 = *(v311 + 48);
                v110 = *(v317 + 32);
                v253 = *(v317 + 40);
                v255 = *(v311 + 40);
                v112 = *(v317 + 48);
                v111 = *(v317 + 56);
                if ((*(v311 + 16) != *(v317 + 16) || *(v311 + 24) != *(v317 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(v108, v110) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(v255, v253) & 1) == 0)
                {
LABEL_320:
                  outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                  outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                  v236 = *(&v262 + 1);
                  v239 = *(&v262 + 1);
                  v237 = v262;
                  v238 = v262;
                  v240 = v258;
LABEL_327:
                  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v238, v239, v240, v257, v261);
                  goto LABEL_331;
                }

                switch(v109)
                {
                  case 1:
                    if (v111 != 1)
                    {
                      goto LABEL_320;
                    }

                    break;
                  case 2:
                    if (v111 != 2)
                    {
                      goto LABEL_320;
                    }

                    break;
                  case 3:
                    if (v111 != 3)
                    {
                      goto LABEL_320;
                    }

                    break;
                  default:
                    if ((v111 - 1) < 3)
                    {
                      goto LABEL_320;
                    }

                    if (v109)
                    {
                      if (!v111 || (v251 != v112 || v109 != v111) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        goto LABEL_310;
                      }

                      outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                      outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                      v31 = v304;
                      v43 = v278;
                      v87 = v80;
                      goto LABEL_148;
                    }

                    if (v111)
                    {
                      goto LABEL_320;
                    }

                    break;
                }

                outlined init with copy of [Input](&v310, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                outlined init with copy of [Input](&v316, v305, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_148:
                v105 = v257;
                outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v258, v257, v261);
                v106 = v259;
                v107 = *(&v80 + 1);
                outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v262, *(&v262 + 1), v87, *(&v80 + 1), v259);
                goto LABEL_149;
              }

              goto LABEL_210;
            }

            v129 = *(&v327 + 1);
            v149 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v150 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
            v336[2] = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            v336[3] = v150;
            v337 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
            v151 = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v336[0] = *((v321 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v336[1] = v151;
            if (v327 >> 62 != 2)
            {
              outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              v230 = v283;
              v231 = v283;
              v232 = v41;
              v233 = v51;
              v234 = v129;
LABEL_308:
              outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v231, v232, v233, v234, v281);
              v217 = v230;
              goto LABEL_309;
            }

            v152 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v153 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
            v338[2] = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            v338[3] = v153;
            v339 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
            v154 = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v338[0] = *((v327 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v338[1] = v154;
            if (v149 != v152)
            {
              outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              v221 = v283;
              v222 = v283;
              v223 = v41;
              v224 = v51;
              v225 = v129;
              goto LABEL_312;
            }

            outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v51, v129, v281);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v43, v42, v44);
            if ((specialized static SGDataTypeStorage.== infix(_:_:)(v336, v338) & 1) == 0)
            {
              goto LABEL_334;
            }
          }

          else
          {
            if (v327 >> 62)
            {
              v226 = v320;
              v227 = v328;
              v228 = *(&v327 + 1);
              outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v226, v41, v51, v228, v227);
              v217 = v226;
              v220 = v41;
              v229 = v43;
LABEL_314:
              v235 = v42;
              v44 = v277;
LABEL_315:
              outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v217, v220, v229, v235, v44);
LABEL_334:

              outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v43, v42, v44);
LABEL_335:
              outlined destroy of [Input](&v326, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              v211 = &v320;
              v212 = &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd;
              v213 = &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR;
LABEL_336:
              outlined destroy of [Input](v211, v212, v213);
LABEL_256:

              v3 = v300;
              v2 = v301;
              v7 = v298;
              v6 = v299;
              v8 = v297;
              goto LABEL_4;
            }

            v130 = *(v321 + 32);
            v271 = *(v321 + 40);
            v272 = *(&v327 + 1);
            v131 = *(v321 + 48);
            v269 = *(v321 + 56);
            v133 = *(v327 + 32);
            v132 = *(v327 + 40);
            v134 = *(v327 + 56);
            v265 = *(v327 + 48);
            if ((*(v321 + 16) != *(v327 + 16) || *(v321 + 24) != *(v327 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v135 = *(v130 + 16), v135 != *(v133 + 16)))
            {
LABEL_301:
              outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              v41 = v280;
              outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v280, v51, v272, v281);
              v217 = v283;
              v220 = v280;
              v43 = v278;
              goto LABEL_313;
            }

            v263 = v131;
            v267 = v134;
            if (v135 && v130 != v133)
            {
              v136 = (v130 + 56);
              v137 = (v133 + 56);
              do
              {
                v138 = *(v136 - 1);
                v139 = *v136;
                v140 = *(v137 - 1);
                v141 = *v137;
                v142 = *(v136 - 3) == *(v137 - 3) && *(v136 - 2) == *(v137 - 2);
                if (!v142 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v138 != v140)
                {
                  goto LABEL_292;
                }

                v51 = v291;
                if (v139 != v141)
                {
                  outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                  outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                  v207 = v283;
                  v208 = v283;
                  v41 = v280;
                  v209 = v280;
                  goto LABEL_295;
                }

                v136 += 32;
                v137 += 32;
              }

              while (--v135);
            }

            v143 = *(v271 + 16);
            if (v143 != *(v132 + 16))
            {
              goto LABEL_301;
            }

            v43 = v278;
            if (v143 && v271 != v132)
            {
              v144 = (v271 + 48);
              v145 = (v132 + 48);
              while (1)
              {
                v146 = *v144;
                v147 = *v145;
                v148 = *(v144 - 2) == *(v145 - 2) && *(v144 - 1) == *(v145 - 1);
                v41 = v280;
                if (!v148 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (v146 != v147)
                {
                  break;
                }

                v144 += 3;
                v145 += 3;
                if (!--v143)
                {
                  goto LABEL_189;
                }
              }

LABEL_290:
              outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
              v204 = v283;
              v205 = v283;
LABEL_291:
              v206 = v41;
LABEL_298:
              outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v205, v206, v51, v272, v281);
              v214 = v204;
              v215 = v41;
LABEL_299:
              v42 = v276;
              v44 = v277;
              outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v214, v215, v43, v276, v277);
              goto LABEL_334;
            }

LABEL_189:
            if (v269 == 1)
            {
              v31 = v304;
              v41 = v280;
              if (v267 != 1)
              {
                goto LABEL_302;
              }
            }

            else
            {
              v31 = v304;
              v41 = v280;
              if (v269 == 2)
              {
                if (v267 != 2)
                {
                  goto LABEL_302;
                }
              }

              else if (v269 == 3)
              {
                if (v267 != 3)
                {
                  goto LABEL_302;
                }
              }

              else
              {
                if ((v267 - 1) < 3)
                {
                  goto LABEL_302;
                }

                if (v269)
                {
                  if (!v267 || (v263 != v265 || v269 != v267) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
LABEL_302:
                    outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
                    v221 = v283;
                    v222 = v283;
                    goto LABEL_304;
                  }
                }

                else if (v267)
                {
                  goto LABEL_302;
                }
              }
            }

LABEL_210:
            outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
            v129 = v272;
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v51, v272, v281);
            v42 = v276;
            v44 = v277;
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v43, v276, v277);
          }

LABEL_211:
          if (v42 == v129 && v44 == v281)
          {

            outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v43, v42, v44);
          }

          else
          {
            v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v283, v41, v43, v42, v44);
            if ((v155 & 1) == 0)
            {
              goto LABEL_335;
            }
          }
        }

        else
        {
          if (v328)
          {
LABEL_293:
            v316 = v320;
            v317 = v321;
            *v318 = v322;
            *&v318[8] = v326;
            *&v318[24] = v327;
            *&v318[40] = v328;
            v210 = v320;
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v326, *(&v326 + 1), v327, *(&v327 + 1), v49);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v210, v41, v43, v42, v44);
            v211 = &v316;
            v212 = &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMd;
            v213 = &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSg_AKtMR;
            goto LABEL_336;
          }

          outlined init with copy of [Input](&v320, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
          outlined init with copy of [Input](&v326, &v316, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        }

        v156 = *(&v323 + 1);
        v157 = *(&v324 + 1);
        v158 = v325;
        v159 = *(&v329 + 1);
        v160 = *(&v330 + 1);
        v161 = v331;
        if ((specialized Sequence<>.elementsEqual<A>(_:)(v329, v323) & 1) == 0 || (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(v156, v159) & 1) == 0 || (specialized Sequence<>.elementsEqual<A>(_:)(v160, v157) & 1) == 0)
        {
          goto LABEL_335;
        }

        v162 = _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(v158, v161);
        outlined destroy of [Input](&v326, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined destroy of [Input](&v320, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
        if ((v162 & 1) == 0)
        {
          goto LABEL_256;
        }

        if (v279 == v275)
        {
          goto LABEL_253;
        }

        v34 = v279 + 1;
        v32 = v279;
        v33 = v285 + 32;
        if (v279 >= *(v285 + 16))
        {
          goto LABEL_343;
        }

        continue;
      }
    }

    v179 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v180 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v340[2] = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v340[3] = v180;
    v341 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
    v181 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v340[0] = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v340[1] = v181;
    if (v302 == 0x8000000000000000)
    {
      v182 = *(v296 + 16);
      v183 = *(v296 + 80);
      v342[2] = *(v296 + 64);
      v342[3] = v183;
      v343 = *(v296 + 96);
      v184 = *(v296 + 48);
      v342[0] = *(v296 + 32);
      v342[1] = v184;
      if (v179 == v182)
      {

        v31 = v304;

        if (specialized static SGDataTypeStorage.== infix(_:_:)(v340, v342))
        {
          goto LABEL_253;
        }

        goto LABEL_256;
      }
    }

LABEL_4:
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return;
    }
  }

  if (v295)
  {
    goto LABEL_4;
  }

  v163 = *(v13 + 32);
  v294 = *(v13 + 40);
  v286 = *(v13 + 48);
  v164 = v293[4];
  v165 = v293[5];
  v284 = v293[6];
  v289 = *(v13 + 56);
  v292 = v293[7];
  if (*(v13 + 16) != v293[2] || *(v13 + 24) != v293[3])
  {
    v167 = v11[2];
    v168 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = v167;
    v8 = v297;
    v7 = v298;
    v6 = v299;
    v3 = v300;
    v2 = v301;
    if ((v168 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v169 = *(v163 + 16);
  if (v169 != *(v164 + 16))
  {
    goto LABEL_4;
  }

  if (v169)
  {
    v170 = v163 == v164;
  }

  else
  {
    v170 = 1;
  }

  if (!v170)
  {
    v185 = (v163 + 56);
    v186 = (v164 + 56);
    while (v169)
    {
      v187 = *(v185 - 1);
      v188 = *v185;
      v189 = *(v186 - 1);
      v190 = *v186;
      if (*(v185 - 3) != *(v186 - 3) || *(v185 - 2) != *(v186 - 2))
      {
        v192 = v13;
        v193 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v192;
        v8 = v297;
        v7 = v298;
        v6 = v299;
        v3 = v300;
        v2 = v301;
        if ((v193 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v187 != v189 || ((v188 ^ v190) & 1) != 0)
      {
        goto LABEL_4;
      }

      v185 += 32;
      v186 += 32;
      if (!--v169)
      {
        goto LABEL_234;
      }
    }

    __break(1u);
LABEL_342:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_345;
  }

LABEL_234:
  v171 = *(v294 + 16);
  if (v171 != *(v165 + 16))
  {
    goto LABEL_4;
  }

  if (v171 && v294 != v165)
  {
    v172 = (v294 + 48);
    v173 = (v165 + 48);
    do
    {
      v174 = *v172;
      v175 = *v173;
      if (*(v172 - 2) != *(v173 - 2) || *(v172 - 1) != *(v173 - 1))
      {
        v177 = v13;
        v178 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v177;
        v8 = v297;
        v7 = v298;
        v6 = v299;
        v3 = v300;
        v2 = v301;
        if ((v178 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v174 != v175)
      {
        goto LABEL_4;
      }

      v172 += 3;
      v173 += 3;
    }

    while (--v171);
  }

  switch(v289)
  {
    case 3:
      if (v292 == 3)
      {
        goto LABEL_280;
      }

      goto LABEL_4;
    case 2:
      if (v292 == 2)
      {
        goto LABEL_280;
      }

      goto LABEL_4;
    case 1:
      if (v292 == 1)
      {
        goto LABEL_280;
      }

      goto LABEL_4;
  }

  if ((v292 - 1) < 3)
  {
    goto LABEL_4;
  }

  if (!v289)
  {
    if (!v292)
    {
      goto LABEL_280;
    }

    goto LABEL_4;
  }

  if (!v292)
  {
    goto LABEL_4;
  }

  if (v286 != v284 || v289 != v292)
  {
    v203 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v297;
    v7 = v298;
    v6 = v299;
    v3 = v300;
    v2 = v301;
    if ((v203 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_280:
  v31 = v304;

LABEL_253:
  if (v303 != v287 || v31 != v282)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v300;
    v2 = v301;
    v7 = v298;
    v6 = v299;
    v8 = v297;
    if (v10)
    {
      return;
    }

    goto LABEL_4;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(float32x4_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = a1[3];
    v19[2] = a1[2];
    v19[3] = v9;
    v20 = a1[4].i8[0];
    v10 = a1[1];
    v19[0] = *a1;
    v19[1] = v10;
    do
    {
      v11 = *(v6 + 48) + 80 * v5;
      v21[0] = *v11;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      v22 = *(v11 + 64);
      v21[2] = v13;
      v21[3] = v12;
      v21[1] = v14;
      v15 = *(v11 + 72);
      outlined init with copy of SGDataTypeStorage(v21, &v18);

      if (specialized static SGDataTypeStorage.== infix(_:_:)(v21, v19))
      {
        v16 = (*(*v15 + 128))(a1[4].i64[1]);
        outlined destroy of SGDataTypeStorage(v21);

        if (v16)
        {
          return v5;
        }
      }

      else
      {
        outlined destroy of SGDataTypeStorage(v21);
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1397716596;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x534F6E6F69736976;
          }

          else
          {
            v8 = 0x4B7974696C616572;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xEA00000000007469;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x534F63616DLL;
        }

        else
        {
          v8 = 0x534F6863746177;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else
      {
        v9 = 0xE300000000000000;
        v8 = 5459817;
      }

      v10 = 0x534F6E6F69736976;
      if (v6 != 4)
      {
        v10 = 0x4B7974696C616572;
      }

      v11 = 0xEA00000000007469;
      if (v6 == 4)
      {
        v11 = 0xE800000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1397716596;
        v11 = 0xE400000000000000;
      }

      v12 = 0x534F6863746177;
      if (v6 == 1)
      {
        v12 = 0x534F63616DLL;
      }

      v13 = 0xE500000000000000;
      if (v6 != 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!v6)
      {
        v12 = 5459817;
        v13 = 0xE300000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
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

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized UserGraphCompiler.CompileContext.setOutput(_:for:)(void *a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v3 = *(a2 + 40);
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    v6 = *(a2 + 64);
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    v18[0] = *(a2 + 32);
    v18[1] = v3;
    v18[2] = v4;
    v18[3] = v5;
    v18[4] = v6;
    v19 = v7;
    v20 = v8;
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = *(v10 + 24);

    v12 = v11(v9, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 192);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v18, isUniquelyReferenced_nonNull_native);

    *(v2 + 192) = v17;
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v15);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    MEMORY[0x266771550](41, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v16 = 40;
    *(v16 + 8) = 0xD000000000000027;
    *(v16 + 16) = 0x8000000265F34CD0;
    return swift_willThrow();
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

void specialized Sequence.forEach(_:)(void *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[2];
  v38 = a1[1];
  v39 = v6;
  v8 = a1[4];
  v36 = a1[3];
  v37 = v7;
  v35 = v8;
  v9 = *(a1 + 1);
  v31 = *a1;
  v32 = v9;
  v33 = v8;
  outlined init with copy of [Input](&v39, &v24, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v38, &v24, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v37, &v24, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v36, &v24, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v35, &v24, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  while (1)
  {
    UserGraph.DepthFirstEdgeIterator.next()(v34);
    v28 = v34[4];
    v29 = v34[5];
    v30 = v34[6];
    v24 = v34[0];
    v25 = v34[1];
    v26 = v34[2];
    v27 = v34[3];
    if (!*(&v34[0] + 1))
    {
      break;
    }

    v21 = v28;
    v22 = v29;
    v23 = v30;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    closure #1 in UserGraphCompiler.emitEdges(context:into:)(&v17, a2, a3);
    if (v3)
    {
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v10 = v17;
      v11 = v18;
      v12 = v19;
      v13 = v20;
      outlined destroy of Edge(&v10);
      break;
    }

    v14 = v21;
    v15 = v22;
    v16 = v23;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    outlined destroy of Edge(&v10);
  }
}

void specialized UserGraphCompiler.emitFunctionNodes(context:into:)(__int128 *a1, char *a2)
{
  v21 = a2;
  v3 = v2;
  v5 = *(a1 + 8);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    while (v7 < v6)
    {
      v9 = v5 + 32 + 48 * v7;
      v10 = *(v9 + 24);
      if (v10 == -7)
      {
        v8 = __OFADD__(v7++, 1);
        if (v8)
        {
          goto LABEL_13;
        }

        if (v7 >= v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = __OFADD__(v7++, 1);
        if (v8)
        {
          goto LABEL_14;
        }

        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *v9;
        v14 = *(v9 + 40);
        v15 = *(v9 + 32);
        *&v16 = v13;
        *(&v16 + 1) = v11;
        v17 = v12;
        v18 = v10;
        v19 = v15;
        v20 = v14;
        outlined copy of NodePersonality(v13);

        closure #1 in UserGraphCompiler.emitFunctionNodes(context:into:)(&v16, &v21, a1);
        outlined consume of NodePersonality(v13);
        if (v3)
        {

          return;
        }

        if (v7 >= v6)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void specialized UserGraphCompiler.applyConstExpr(context:into:)(uint64_t a1, uint64_t a2)
{
  v119 = swift_allocObject();
  *(v119 + 16) = MEMORY[0x277D84FA0];
  v3 = *(*a2 + 120);
  v145 = a2;
  v4 = v3();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with copy of MetalFunctionNode(v6, &v136);
      outlined init with take of MetalFunctionNode(&v136, &v142);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
      if (swift_dynamicCast())
      {
        if (*(&v140 + 1))
        {
          outlined init with take of MetalFunctionNode(&v139, &v142);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
          }

          v9 = v7[2];
          v8 = v7[3];
          if (v9 >= v8 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
          }

          v7[2] = v9 + 1;
          outlined init with take of MetalFunctionNode(&v142, &v7[5 * v9 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v141 = 0;
        v139 = 0u;
        v140 = 0u;
      }

      outlined destroy of [Input](&v139, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
LABEL_5:
      v6 += 40;
      if (!--v5)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_15:
  v10 = v7[2];
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v13 = (v7 + 4);
    v14 = (v119 + 16);
    while (v12 < v7[2])
    {
      outlined init with copy of MetalFunctionNode(v13, &v136);
      v15 = v137;
      v16 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      if ((*(v16 + 16))(v15, v16))
      {
        outlined init with take of MetalFunctionNode(&v136, &v142);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v139 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
          v11 = v139;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v11 = v139;
        }

        *(v11 + 16) = v19 + 1;
        outlined init with take of MetalFunctionNode(&v142, v11 + 40 * v19 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v136);
      }

      ++v12;
      v13 += 40;
      if (v10 == v12)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
  }

  else
  {
    v14 = (v119 + 16);
LABEL_27:

    v115 = *(v11 + 16);
    if (!v115)
    {

LABEL_95:

LABEL_105:

      return;
    }

    v118 = v11 + 32;
    swift_beginAccess();
    v20 = 0;
    v21 = v145;
    v22 = v119;
    v23 = v120;
    v117 = v11;
    while (v20 < *(v11 + 16))
    {
      v116 = v20;
      outlined init with copy of MetalFunctionNode(v118 + 40 * v20, &v142);
      v24 = *v14;
      v25 = v143;
      v26 = v144;
      __swift_project_boxed_opaque_existential_1(&v142, v143);
      v27 = (*(*(v26 + 8) + 24))(v25);
      if (*(v24 + 16) && (v28 = v27, Hasher.init(_seed:)(), MEMORY[0x266772770](v28), v29 = Hasher._finalize()(), v30 = -1 << *(v24 + 32), v31 = v29 & ~v30, ((*(v24 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (*(*(v24 + 48) + 8 * v31) != v28)
        {
          v31 = (v31 + 1) & v32;
          if (((*(v24 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
LABEL_35:
        outlined init with copy of MetalFunctionNode(&v142, &v139);
        v33 = *(&v140 + 1);
        v34 = v141;
        __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
        v35 = (*(*(v34 + 8) + 24))(v33);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v135, v35);
        swift_endAccess();
        v36 = *(&v140 + 1);
        v37 = v141;
        __swift_mutable_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
        (*(v37 + 24))(1, v36, v37);
        v38 = *(&v140 + 1);
        v39 = v141;
        __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
        v40 = (*(*(v39 + 8) + 48))(v38);
        v41 = *(v40 + 16);
        if (v41)
        {
          v135[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
          v42 = 0;
          v43 = v135[0];
          v44 = *(*v21 + 272);
          while (v42 < *(v40 + 16))
          {
            v44(&v136, *(v40 + 8 * v42 + 32));
            if (v23)
            {

LABEL_104:
              __swift_destroy_boxed_opaque_existential_1Tm(&v139);
              __swift_destroy_boxed_opaque_existential_1Tm(&v142);
              goto LABEL_105;
            }

            v135[0] = v43;
            v46 = *(v43 + 16);
            v45 = *(v43 + 24);
            v47 = v43;
            if (v46 >= v45 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
              v47 = v135[0];
            }

            ++v42;
            *(v47 + 16) = v46 + 1;
            outlined init with take of MetalFunctionNode(&v136, v47 + 40 * v46 + 32);
            v43 = v47;
            if (v41 == v42)
            {

              v21 = v145;
              v14 = (v119 + 16);
              v22 = v119;
              goto LABEL_44;
            }
          }

          goto LABEL_109;
        }

        v43 = MEMORY[0x277D84F90];
LABEL_44:
        v112 = *(v43 + 16);
        if (v112)
        {
          v48 = 0;
          v49 = v43 + 32;
          v114 = v43;
          v109 = v43 + 32;
          while (v48 < *(v43 + 16))
          {
            v113 = v48;
            outlined init with copy of MetalFunctionNode(v49 + 40 * v48, v135);
            outlined init with copy of MetalFunctionNode(v135, &v136);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
            if (!swift_dynamicCast())
            {

              v131 = 0;
              v129 = 0u;
              v130 = 0u;
              outlined destroy of [Input](&v129, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v105 = 47;
              *(v105 + 8) = 0xD00000000000005CLL;
              *(v105 + 16) = 0x8000000265F34C40;
              swift_willThrow();
              v104 = v135;
LABEL_103:
              __swift_destroy_boxed_opaque_existential_1Tm(v104);
              goto LABEL_104;
            }

            outlined init with take of MetalFunctionNode(&v129, v132);
            v50 = *v14;
            v51 = v133;
            v52 = v134;
            __swift_project_boxed_opaque_existential_1(v132, v133);
            v53 = (*(*(v52 + 8) + 24))(v51);
            if (*(v50 + 16) && (v54 = v53, Hasher.init(_seed:)(), MEMORY[0x266772770](v54), v55 = Hasher._finalize()(), v56 = -1 << *(v50 + 32), v57 = v55 & ~v56, ((*(v50 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0))
            {
              v58 = ~v56;
              while (*(*(v50 + 48) + 8 * v57) != v54)
              {
                v57 = (v57 + 1) & v58;
                if (((*(v50 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                {
                  goto LABEL_53;
                }
              }

              v102 = v135;
            }

            else
            {
LABEL_53:
              outlined init with copy of MetalFunctionNode(v132, &v129);
              v59 = *(&v130 + 1);
              v60 = v131;
              __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
              v61 = (*(*(v60 + 8) + 24))(v59);
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(v128, v61);
              swift_endAccess();
              v62 = *(&v130 + 1);
              v63 = v131;
              __swift_mutable_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
              (*(v63 + 24))(1, v62, v63);
              v64 = *(&v130 + 1);
              v65 = v131;
              __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
              v66 = (*(*(v65 + 8) + 48))(v64);
              v67 = *(v66 + 16);
              if (v67)
              {
                v128[0] = MEMORY[0x277D84F90];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
                v68 = 0;
                v69 = v128[0];
                v70 = *(*v21 + 272);
                while (v68 < *(v66 + 16))
                {
                  v70(&v136, *(v66 + 8 * v68 + 32));
                  if (v23)
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(v135);

LABEL_102:
                    __swift_destroy_boxed_opaque_existential_1Tm(&v129);
                    v104 = v132;
                    goto LABEL_103;
                  }

                  v128[0] = v69;
                  v72 = *(v69 + 16);
                  v71 = *(v69 + 24);
                  v73 = v69;
                  if (v72 >= v71 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
                    v73 = v128[0];
                  }

                  ++v68;
                  *(v73 + 16) = v72 + 1;
                  outlined init with take of MetalFunctionNode(&v136, v73 + 40 * v72 + 32);
                  v69 = v73;
                  if (v67 == v68)
                  {

                    v21 = v145;
                    v14 = (v119 + 16);
                    v22 = v119;
                    goto LABEL_62;
                  }
                }

                goto LABEL_110;
              }

              v69 = MEMORY[0x277D84F90];
LABEL_62:
              v43 = v114;
              v108 = *(v69 + 16);
              if (v108)
              {
                v74 = 0;
                v110 = v69 + 32;
                v107 = v69;
                while (v74 < *(v69 + 16))
                {
                  outlined init with copy of MetalFunctionNode(v110 + 40 * v74, v128);
                  outlined init with copy of MetalFunctionNode(v128, &v136);
                  if (!swift_dynamicCast())
                  {

                    v124 = 0;
                    memset(v123, 0, sizeof(v123));
                    outlined destroy of [Input](v123, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v106 = 47;
                    *(v106 + 8) = 0xD00000000000005CLL;
                    *(v106 + 16) = 0x8000000265F34C40;
                    swift_willThrow();
                    __swift_destroy_boxed_opaque_existential_1Tm(v128);
                    v103 = v135;
LABEL_101:
                    __swift_destroy_boxed_opaque_existential_1Tm(v103);
                    goto LABEL_102;
                  }

                  v111 = v74;
                  outlined init with take of MetalFunctionNode(v123, v125);
                  v75 = *v14;
                  v76 = v126;
                  v77 = v127;
                  __swift_project_boxed_opaque_existential_1(v125, v126);
                  v78 = (*(*(v77 + 8) + 24))(v76);
                  if (*(v75 + 16) && (v79 = v78, Hasher.init(_seed:)(), MEMORY[0x266772770](v79), v80 = Hasher._finalize()(), v81 = -1 << *(v75 + 32), v82 = v80 & ~v81, ((*(v75 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0))
                  {
                    v83 = ~v81;
                    while (*(*(v75 + 48) + 8 * v82) != v79)
                    {
                      v82 = (v82 + 1) & v83;
                      if (((*(v75 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                      {
                        goto LABEL_71;
                      }
                    }

                    __swift_destroy_boxed_opaque_existential_1Tm(v128);
                  }

                  else
                  {
LABEL_71:
                    outlined init with copy of MetalFunctionNode(v125, &v136);
                    v84 = v137;
                    v85 = v138;
                    __swift_project_boxed_opaque_existential_1(&v136, v137);
                    v86 = (*(*(v85 + 8) + 24))(v84);
                    swift_beginAccess();
                    specialized Set._Variant.insert(_:)(&v122, v86);
                    swift_endAccess();
                    v87 = v137;
                    v88 = v138;
                    __swift_mutable_project_boxed_opaque_existential_1(&v136, v137);
                    (*(v88 + 24))(1, v87, v88);
                    v89 = v137;
                    v90 = v138;
                    __swift_project_boxed_opaque_existential_1(&v136, v137);
                    v91 = (*(*(v90 + 8) + 48))(v89);
                    v92 = v91;
                    v93 = *(v91 + 16);
                    if (v93)
                    {
                      v121 = *(v91 + 16);
                      v122 = MEMORY[0x277D84F90];
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
                      v94 = 0;
                      v95 = v122;
                      v96 = *(*v21 + 272);
                      while (v94 < *(v92 + 16))
                      {
                        v96(v123, *(v92 + 8 * v94 + 32));
                        if (v23)
                        {

                          __swift_destroy_boxed_opaque_existential_1Tm(v128);
                          __swift_destroy_boxed_opaque_existential_1Tm(v135);

LABEL_100:
                          __swift_destroy_boxed_opaque_existential_1Tm(&v136);
                          v103 = v125;
                          goto LABEL_101;
                        }

                        v122 = v95;
                        v98 = *(v95 + 16);
                        v97 = *(v95 + 24);
                        if (v98 >= v97 >> 1)
                        {
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
                          v95 = v122;
                        }

                        ++v94;
                        *(v95 + 16) = v98 + 1;
                        outlined init with take of MetalFunctionNode(v123, v95 + 40 * v98 + 32);
                        if (v121 == v94)
                        {

                          v21 = v145;
                          v14 = (v119 + 16);
                          v22 = v119;
                          goto LABEL_80;
                        }
                      }

                      goto LABEL_111;
                    }

                    v95 = MEMORY[0x277D84F90];
LABEL_80:
                    v99 = *(v95 + 16);
                    v43 = v114;
                    if (v99)
                    {
                      v100 = 0;
                      v101 = v95 + 32;
                      while (v100 < *(v95 + 16))
                      {
                        outlined init with copy of MetalFunctionNode(v101, v123);
                        closure #2 in applyConstExpr #1 (_:) in UserGraphCompiler.applyConstExpr(context:into:)(v123, v22, v21);
                        if (v23)
                        {

                          __swift_destroy_boxed_opaque_existential_1Tm(v123);
                          __swift_destroy_boxed_opaque_existential_1Tm(v128);
                          __swift_destroy_boxed_opaque_existential_1Tm(v135);
                          goto LABEL_100;
                        }

                        ++v100;
                        __swift_destroy_boxed_opaque_existential_1Tm(v123);
                        v101 += 40;
                        if (v99 == v100)
                        {
                          goto LABEL_85;
                        }
                      }

                      goto LABEL_112;
                    }

LABEL_85:
                    __swift_destroy_boxed_opaque_existential_1Tm(v128);

                    __swift_destroy_boxed_opaque_existential_1Tm(&v136);
                    v69 = v107;
                  }

                  v74 = v111 + 1;
                  __swift_destroy_boxed_opaque_existential_1Tm(v125);
                  if (v111 + 1 == v108)
                  {
                    goto LABEL_88;
                  }
                }

                goto LABEL_115;
              }

LABEL_88:
              __swift_destroy_boxed_opaque_existential_1Tm(v135);

              v102 = &v129;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v102);
            __swift_destroy_boxed_opaque_existential_1Tm(v132);
            v48 = v113 + 1;
            v49 = v109;
            if (v113 + 1 == v112)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_114;
        }

LABEL_91:

        __swift_destroy_boxed_opaque_existential_1Tm(&v139);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v142);
      v20 = v116 + 1;
      v11 = v117;
      if (v116 + 1 == v115)
      {

        goto LABEL_95;
      }
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
}

uint64_t specialized UserGraphCompiler.removePassthroughNodes(context:into:)(uint64_t a1, uint64_t a2)
{
  v46 = *(*a2 + 120);
  v2 = v46(a1);
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = v2 + 32;
    while (v6 < *(v3 + 16))
    {
      outlined init with copy of MetalFunctionNode(v7, v54);
      outlined init with copy of MetalFunctionNode(v54, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalPassthroughNode();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      else
      {
        outlined init with take of MetalFunctionNode(v54, &v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
          v5 = v59;
        }

        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        v11 = v5;
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v11 = v59;
        }

        *(v11 + 16) = v10 + 1;
        outlined init with take of MetalFunctionNode(&v56, v11 + 40 * v10 + 32);
        v5 = v11;
      }

      ++v6;
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_12:

  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = 0;
    v15 = v59;
    v48 = v5;
    v49 = v5 + 32;
    v50 = v12;
    while (v14 < *(v5 + 16))
    {
      v51 = v14;
      v52 = v15;
      outlined init with copy of MetalFunctionNode(v49 + 40 * v14, &v56);
      v16 = v57;
      v17 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, v57);
      v18 = (*(v17 + 48))(v16, v17);
      v19 = *(v18 + 16);
      if (v19)
      {
        v55 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v20 = v55;
        v21 = 32;
        do
        {
          *&v54[0] = *(v18 + v21);
          outlined init with copy of MetalFunctionNode(&v56, v54 + 8);
          v55 = v20;
          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
            v20 = v55;
          }

          *(v20 + 16) = v23 + 1;
          v24 = (v20 + 48 * v23);
          v25 = v54[0];
          v26 = v54[2];
          v24[3] = v54[1];
          v24[4] = v26;
          v24[2] = v25;
          v21 += 8;
          --v19;
        }

        while (v19);

        v13 = MEMORY[0x277D84F90];
        v5 = v48;
      }

      else
      {

        v20 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
      v15 = v52;
      v59 = v52;
      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v15 = v59;
      }

      v14 = v51 + 1;
      *(v15 + 16) = v28 + 1;
      *(v15 + 8 * v28 + 32) = v20;
      if (v51 + 1 == v50)
      {
        goto LABEL_25;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_25:

  *&v54[0] = MEMORY[0x277D84F98];

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v29, 1, v54);
  if (v45)
  {
LABEL_49:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v53 = *&v54[0];
  v31 = v46(v30);
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = MEMORY[0x277D84F90];
    v36 = v31 + 32;
    while (v34 < *(v32 + 16))
    {
      outlined init with copy of MetalFunctionNode(v36, v54);
      outlined init with copy of MetalFunctionNode(v54, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalPassthroughNode();
      if (swift_dynamicCast())
      {

        outlined init with take of MetalFunctionNode(v54, &v56);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v35;
        if ((v37 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1);
          v35 = v59;
        }

        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v35 = v59;
        }

        *(v35 + 16) = v39 + 1;
        outlined init with take of MetalFunctionNode(&v56, v35 + 40 * v39 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      ++v34;
      v36 += 40;
      if (v33 == v34)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_47;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_38:

  v40 = *(v35 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = v35 + 32;
    v43 = a2;
    while (v41 < *(v35 + 16))
    {
      outlined init with copy of MetalFunctionNode(v42, v54);
      closure #4 in UserGraphCompiler.removePassthroughNodes(context:into:)(v54, a2, v53);
      ++v41;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      v42 += 40;
      if (v40 == v41)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_48;
  }

  v43 = a2;
LABEL_44:

  (*(*v43 + 288))(closure #5 in UserGraphCompiler.removePassthroughNodes(context:into:), 0);

  return v43;
}

__n128 sub_265F194C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 88))(v9);
  v3 = v9[11];
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v3;
  *(a2 + 192) = v10;
  v4 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v4;
  v5 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v5;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_265F19568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v2;
  v3 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v12 = *(a1 + 192);
  v5 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v8 = *(**a2 + 96);
  outlined init with copy of [Input](v11, v10, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  return v8(v11);
}

uint64_t dispatch thunk of FunctionGraphInsertable.emitFunctionNodes(node:context:into:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(a5 + 8);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 3);
  v11 = v5;
  return v6(&v8, a2, a3, a4);
}

uint64_t dispatch thunk of UserGraphCompiler.context.setter(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = *(*v1 + 96);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v5;
  v6 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v6;
  v7 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v7;
  v8 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v8;
  v9 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v9;
  v12 = v2;
  return v3(v11);
}

uint64_t dispatch thunk of UserGraphCompiler.compile(sourceProgram:into:)(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v3 = a1[5];
  v4 = a1[8];
  v5 = *(a1 + 120);
  v6 = a1[16];
  v7 = *(a1 + 168);
  v8 = *(*v1 + 120);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = v2;
  v13 = v3;
  v14 = *(a1 + 3);
  v15 = v4;
  v16 = *(a1 + 9);
  v17 = *(a1 + 11);
  v18 = *(a1 + 13);
  v19 = v5;
  v20 = v6;
  v21 = *(a1 + 17);
  v22 = *(a1 + 19);
  v23 = v7;
  return v8(&v10);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserGraphCompiler.CompileContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t storeEnumTagSinglePayload for UserGraphCompiler.CompileContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265F19944()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeData(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v9[4] = a2[4];
  v10 = a2[5].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static NodeData.== infix(_:_:)(v7, v9) & 1;
}

Swift::String __swiftcall NodeData.operationalDescription(replacements:)(Swift::OpaquePointer replacements)
{
  v2 = *v1;
  v3 = *(v1 + 80);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = 0xE800000000000000;
      v2 = 0x6870617267627573;
    }

    else
    {
      v6 = *(v1 + 16);
      v5 = *(v1 + 24);
      v7 = v3 & 0x3F;
      v30 = v6;
      v31 = v5;
      v8 = *(v1 + 48);
      v32 = *(v1 + 32);
      v33 = v8;
      v34 = *(v1 + 64);
      v35 = v7;
      if (v7 == 6)
      {
        if (*(replacements._rawValue + 2))
        {
          v9 = *(v1 + 48);
          v26 = *(v1 + 32);
          v27 = v9;
          v28 = *(v1 + 64);
          v10 = *(v1 + 16);
          v24 = *v1;
          v25 = v10;
          v11 = v1;
          v29 = *(v1 + 80) & 0x3F;
          outlined init with copy of (type: SGDataType, storage: SGDataTypeStorage)(&v24, v23);
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
          if (v14)
          {
            v15 = (*(replacements._rawValue + 7) + 16 * v13);
            v6 = *v15;
            v5 = v15[1];

            outlined destroy of NodeData(v11);
          }
        }

        else
        {
          v18 = *(v1 + 48);
          v26 = *(v1 + 32);
          v27 = v18;
          v28 = *(v1 + 64);
          v19 = *(v1 + 16);
          v24 = *v1;
          v25 = v19;
          v29 = *(v1 + 80) & 0x3F;
          outlined init with copy of (type: SGDataType, storage: SGDataTypeStorage)(&v24, v23);
        }

        *&v24 = 24419;
        *(&v24 + 1) = 0xE200000000000000;
        v20 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v20);

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v6, v5);
      }

      else
      {
        *&v24 = 24419;
        *(&v24 + 1) = 0xE200000000000000;
        v16 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v16);

        MEMORY[0x266771550](95, 0xE100000000000000);
        v17 = SGDataTypeStorage.valueString.getter();
        MEMORY[0x266771550](v17);
      }

      v4 = *(&v24 + 1);
      v2 = v24;
    }
  }

  else
  {
  }

  v21 = v2;
  result._object = v4;
  result._countAndFlagsBits = v21;
  return result;
}

ShaderGraph::NodeData::CodingKeys_optional __swiftcall NodeData.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeData.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t NodeData.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656D614E65736163;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1701869940;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeData.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656D614E65736163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656D614E65736163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeData.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance NodeData.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeData.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NodeData.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NodeData.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NodeData.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656D614E65736163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NodeData.CodingKeys()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E65736163;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance NodeData.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized NodeData.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double NodeData.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized NodeData.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

void NodeData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v3;
  v10 = *(v3 + 80);
  if (v10 >> 6)
  {
    if (v10 >> 6 == 1)
    {
      LOBYTE(v18) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v18 = v9;
        v23 = 1;
        type metadata accessor for SGGraph();
        _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph, &protocol conformance descriptor for SGGraph);
LABEL_11:
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *(v3 + 1);
      v16 = *(v3 + 2);
      v17 = v11;
      v12 = *(v3 + 3);
      v14 = *(v3 + 4);
      v15 = v12;
      LOBYTE(v18) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v18 = v9;
        v23 = 2;
        type metadata accessor for SGDataType(0);
        _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, type metadata accessor for SGDataType, &protocol conformance descriptor for SGDataType);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v18 = v17;
        v19 = v16;
        v20 = v15;
        v21 = v14;
        v22 = v10 & 0x3F;
        v23 = 1;
        lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
        goto LABEL_11;
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v18) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
LABEL_7:
      (*(v6 + 8))(v8, v5);
      return;
    }
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for SGError();
  v13 = v2;
  SGError.__allocating_init(_:)(v2);
  swift_willThrow();
}

double protocol witness for Decodable.init(from:) in conformance NodeData@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized NodeData.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t specialized static NodeData.== infix(_:_:)(uint64_t *a1, float32x4_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = *(a1 + 80);
  if (!(v6 >> 6))
  {
    if (a2[5].u8[0] > 0x3Fu)
    {
      goto LABEL_23;
    }

    v20 = *(a1 + 5);
    v9 = a2[2].i64[0];
    v8 = a2[2].i64[1];
    v11 = a2[1].i64[0];
    v10 = a2[1].i64[1];
    if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(v3, v11) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(v2, v10) & 1) == 0)
    {
      goto LABEL_23;
    }

    switch(v20)
    {
      case 3:
        if (v8 != 3)
        {
          goto LABEL_23;
        }

        break;
      case 2:
        if (v8 != 2)
        {
          goto LABEL_23;
        }

        break;
      case 1:
        if (v8 != 1)
        {
          goto LABEL_23;
        }

        break;
      default:
        if ((v8 - 1) < 3)
        {
          goto LABEL_23;
        }

        if (v20)
        {
          if (!v8 || (v4 != v9 || v20 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (v8)
        {
          goto LABEL_23;
        }

        break;
    }

    v7 = 1;
    return v7 & 1;
  }

  if (v6 >> 6 != 1)
  {
    v12 = a2[5].i8[0];
    if ((v12 & 0xC0) == 0x80 && *a1 == a2->i64[0])
    {
      v13 = *(a1 + 7);
      v14 = a1[9];
      v15 = a2[1];
      v16 = a2[2];
      v17 = a2[3];
      v18 = a2[4];
      v21.i64[0] = a1[2];
      v21.i64[1] = v2;
      v22 = v4;
      v23 = v5;
      v24 = v13;
      v25 = v14;
      v26 = v6 & 0x3F;
      v27[0] = v15;
      v27[1] = v16;
      v27[2] = v17;
      v27[3] = v18;
      v28 = v12 & 0x3F;
      v7 = specialized static SGDataTypeStorage.== infix(_:_:)(&v21, v27);
      return v7 & 1;
    }

LABEL_23:
    v7 = 0;
    return v7 & 1;
  }

  if ((a2[5].i8[0] & 0xC0) != 0x40)
  {
    goto LABEL_23;
  }

  type metadata accessor for NSObject();
  v7 = static NSObject.== infix(_:_:)();
  return v7 & 1;
}

uint64_t outlined init with copy of (type: SGDataType, storage: SGDataTypeStorage)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized NodeData.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeData.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized NodeData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph8NodeDataO10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v49 = 0;
  v10 = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v11;
  v14 = v12 == 0x6E49746C697562 && v11 == 0xE700000000000000;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v24 = v12 == 0x6870617267 && v13 == 0xE500000000000000;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      type metadata accessor for SGGraph();
      LOBYTE(v38) = 1;
      _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph, &protocol conformance descriptor for SGGraph);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v25 = *(v7 + 8);
      v22 = v7 + 8;
      v25(v9, v6);
      v21 = v44;
      v23 = 64;
      goto LABEL_19;
    }

    if (v12 == 0x746E6174736E6F63 && v13 == 0xE800000000000000)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        v3 = swift_allocError();
        *v31 = 2;
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        *(v31 + 32) = 0x8000000000000000;
        *(v31 + 40) = 0u;
        *(v31 + 56) = 0u;
        *(v31 + 72) = 0;
        goto LABEL_21;
      }
    }

    v43 = 1;
    lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v39 = v45;
    v38 = v44;
    type metadata accessor for SGDataType(0);
    v36 = 2;
    _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, type metadata accessor for SGDataType, &protocol conformance descriptor for SGDataType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    v21 = v37;
    v10 = *(&v38 + 1);
    v22 = v38;
    v33 = v40;
    v35 = v39;
    v12 = *(&v41 + 1);
    v9 = v41;
    v23 = v42 & 0x1F | 0x80;
    goto LABEL_19;
  }

  LOBYTE(v44) = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v16;
  if (one-time initialization token for shared != -1)
  {
    v32 = v15;
    swift_once();
    v15 = v32;
  }

  v19 = v15;
  specialized OrderedDictionary.subscript.getter(v15, v12, *(static BuiltInDefinitionStore.shared + 40), *(static BuiltInDefinitionStore.shared + 48), *(static BuiltInDefinitionStore.shared + 56), &v50);
  if (!v51)
  {
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    v3 = swift_allocError();
    *v28 = 1;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = 0x8000000000000000;
    v28[5] = 0;
    v28[6] = 0;
    v28[7] = 0;
    v28[8] = v19;
    v28[9] = v12;
LABEL_21:
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
LABEL_8:
    type metadata accessor for SGError();
    v17 = v3;
    SGError.__allocating_init(_:)(v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v55 = v51;
  v35 = v54;
  v20 = v52;
  v34 = v53;
  v21 = v50;
  (*(v7 + 8))(v9, v6);
  v22 = v20;
  v10 = v34;

  v23 = 0;
LABEL_19:
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v26 = v55;
  *a2 = v21;
  *(a2 + 8) = v26;
  *(a2 + 16) = v22;
  *(a2 + 24) = v10;
  v27 = v33;
  *(a2 + 32) = v35;
  *(a2 + 48) = v27;
  *(a2 + 64) = v9;
  *(a2 + 72) = v12;
  *(a2 + 80) = v23;
  return result;
}

unint64_t lazy protocol witness table accessor for type NodeData.CodingKeys and conformance NodeData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData.CodingKeys and conformance NodeData.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy81_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for NodeData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 6 && *(a1 + 81))
  {
    return (*a1 + 6);
  }

  v3 = ((*(a1 + 80) >> 3) & 4 | (*(a1 + 80) >> 6)) ^ 7;
  if (v3 >= 5)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for NodeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 5)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 6;
    if (a3 >= 6)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 6)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 32 * (((-a2 & 4) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t _sSo10SGDataTypeVABSE11ShaderGraphWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OrderedSet<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6[6] = a3;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t OrderedSet<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a2;
  v7 = type metadata accessor for DecodingError.Context();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v4)
  {
    goto LABEL_8;
  }

  v26 = v10;
  v27 = v8;
  v28 = v7;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v12 = type metadata accessor for ContiguousArray();
  v35 = v29;
  swift_getWitnessTable();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  v13 = v31[0];
  v32 = v31[0];
  v14 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  WitnessTable = swift_getWitnessTable();
  v16 = static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(v31, &v32, 0, 1, v14, v12, WitnessTable, a4);
  v17 = v31[0];
  if (v31[0] != *(v13 + 16))
  {

    __swift_project_boxed_opaque_existential_1(v33, v34);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    MEMORY[0x266771550](0xD00000000000003ALL, 0x8000000265F34D00);
    v32 = v17;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x266771550](41, 0xE100000000000000);
    v19 = v26;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v23 = v27;
    v22 = v28;
    (*(v27 + 16))(v20, v19, v28);
    (*(*(v11 - 8) + 104))(v21, *MEMORY[0x277D84168], v11);
    swift_willThrow();

    (*(v23 + 8))(v19, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v11;
  }

  if (ContiguousArray.count.getter() < 16)
  {
    v18 = 0;
  }

  else
  {

    v18 = v16;
  }

  v11 = OrderedSet.init(_uniqueElements:_:)(v13, v18);

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance <> OrderedSet<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = OrderedSet<>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x2821FBF50](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

{
  v2 = MEMORY[0x2821FBF58](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t Substring.subscript.getter()
{
  return MEMORY[0x2821FCB80]();
}

{
  return MEMORY[0x2821FCB90]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA40]();
}

{
  return MEMORY[0x2821FDA50]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB80]();
}

{
  return MEMORY[0x2821FDB90]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA0]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}