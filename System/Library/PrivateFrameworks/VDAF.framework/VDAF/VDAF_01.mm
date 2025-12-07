void specialized VDAFEncodable.encodedData.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0)
  {
    if (v3)
    {
      v4 = (v3 * 5) >> 64;
      v3 *= 5;
      if (v4 != v3 >> 63)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v5 + 16);
  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      v8 = (v7 * 5) >> 64;
      v7 *= 5;
      if (v8 != v7 >> 63)
      {
        goto LABEL_20;
      }
    }
  }

  v9 = __OFADD__(v3, v7);
  v10 = v3 + v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = *(v11 + 16);
    v9 = __OFADD__(v10, v12);
    v13 = v10 + v12;
    if (!v9)
    {
      v14 = *(v0 + 40);
      v15 = *(v14 + 16);
      if (!__OFADD__(v13, v15))
      {
        v23[0] = specialized Data._Representation.init(capacity:)(v13 + v15);
        v23[1] = v16;
        if (v2)
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v22 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
          v20[0] = v1;
          __swift_project_boxed_opaque_existential_1(v20, v21);

          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v20);
          if ((v6 & 1) == 0)
          {
LABEL_12:
            specialized Collection<>.encode<A>(into:)(v23, v5);
LABEL_15:
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v21 = v18;
            v19 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
            v22 = v19;
            v20[0] = v11;
            __swift_project_boxed_opaque_existential_1(v20, v18);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v20);
            v21 = v18;
            v22 = v19;
            v20[0] = v14;
            __swift_project_boxed_opaque_existential_1(v20, v18);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v20);
            return;
          }
        }

        else
        {
          specialized Collection<>.encode<A>(into:)(v23, v1);
          if ((v6 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        v21 = v17;
        v22 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
        v20[0] = v5;
        __swift_project_boxed_opaque_existential_1(v20, v17);

        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_1(v20);
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 61)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v3 *= 4;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v4 + 16);
  if ((v5 & 1) != 0 || !v6)
  {
LABEL_9:
    v7 = __OFADD__(v3, v6);
    v8 = v3 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 32);
      v10 = *(v9 + 16);
      v7 = __OFADD__(v8, v10);
      v11 = v8 + v10;
      if (!v7)
      {
        v12 = *(v0 + 40);
        v13 = *(v12 + 16);
        if (!__OFADD__(v11, v13))
        {
          v21[0] = specialized Data._Representation.init(capacity:)(v11 + v13);
          v21[1] = v14;
          if (v2)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
            v18[0] = v1;
            __swift_project_boxed_opaque_existential_1(v18, v19);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v18);
            if ((v5 & 1) == 0)
            {
LABEL_14:
              specialized Collection<>.encode<A>(into:)(v21, v4);
LABEL_17:
              v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
              v19 = v16;
              v17 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
              v20 = v17;
              v18[0] = v9;
              __swift_project_boxed_opaque_existential_1(v18, v16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v18);
              v19 = v16;
              v20 = v17;
              v18[0] = v12;
              __swift_project_boxed_opaque_existential_1(v18, v16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v18);
              return;
            }
          }

          else
          {
            specialized Collection<>.encode<A>(into:)(v21, v1);
            if ((v5 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v19 = v15;
          v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
          v18[0] = v4;
          __swift_project_boxed_opaque_existential_1(v18, v15);

          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v18);
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!(v6 >> 61))
  {
    v6 *= 4;
    goto LABEL_9;
  }

LABEL_22:
  __break(1u);
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 60)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v3 *= 8;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v4 + 16);
  if ((v5 & 1) == 0 && v6)
  {
    if (v6 >> 60)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v6 *= 8;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(v0 + 32);
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = v8 + v10;
    if (!__OFADD__(v8, v10))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_22;
  }

  v11 = v8;
LABEL_12:
  v18[0] = specialized Data._Representation.init(capacity:)(v11);
  v18[1] = v12;
  if (v2)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v17 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
    v15[0] = v1;
    __swift_project_boxed_opaque_existential_1(v15, v16);

    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v16 = v13;
    v17 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
    v15[0] = v4;
    __swift_project_boxed_opaque_existential_1(v15, v13);

    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (!v9)
    {
      return;
    }

    goto LABEL_18;
  }

  specialized Collection<>.encode<A>(into:)(v18, v1);
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_14:
  specialized Collection<>.encode<A>(into:)(v18, v4);
  if (!v9)
  {
    return;
  }

LABEL_18:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v16 = v14;
  v17 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
  v15[0] = v9;
  __swift_project_boxed_opaque_existential_1(v15, v14);

  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_1(v15);
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 60)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v3 *= 8;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v4 + 16);
  if ((v5 & 1) != 0 || !v6)
  {
LABEL_9:
    v7 = __OFADD__(v3, v6);
    v8 = v3 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 32);
      v10 = *(v9 + 16);
      v7 = __OFADD__(v8, v10);
      v11 = v8 + v10;
      if (!v7)
      {
        v12 = *(v0 + 40);
        v13 = *(v12 + 16);
        if (!__OFADD__(v11, v13))
        {
          v21[0] = specialized Data._Representation.init(capacity:)(v11 + v13);
          v21[1] = v14;
          if (v2)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
            v18[0] = v1;
            __swift_project_boxed_opaque_existential_1(v18, v19);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v18);
            if ((v5 & 1) == 0)
            {
LABEL_14:
              specialized Collection<>.encode<A>(into:)(v21, v4);
LABEL_17:
              v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
              v19 = v16;
              v17 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
              v20 = v17;
              v18[0] = v9;
              __swift_project_boxed_opaque_existential_1(v18, v16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v18);
              v19 = v16;
              v20 = v17;
              v18[0] = v12;
              __swift_project_boxed_opaque_existential_1(v18, v16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v18);
              return;
            }
          }

          else
          {
            specialized Collection<>.encode<A>(into:)(v21, v1);
            if ((v5 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v19 = v15;
          v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
          v18[0] = v4;
          __swift_project_boxed_opaque_existential_1(v18, v15);

          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v18);
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!(v6 >> 60))
  {
    v6 *= 8;
    goto LABEL_9;
  }

LABEL_22:
  __break(1u);
}

uint64_t specialized VDAFEncodable.encodedData.getter(uint64_t a1)
{
  result = specialized Prio3PublicShare.encodedLength.getter(a1);
  if (result)
  {
    if (result <= 14)
    {
      result = 0;
      v12 = 0;
      v13 = 0;
      if (!a1)
      {
        return result;
      }
    }

    else
    {
      v3 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v4 = __DataStorage.init(capacity:)();
      if (v3 > 0x7FFFFFFE)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
        v12 = result;
        v13 = v4 | 0x8000000000000000;
        if (!a1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        v12 = 0;
        v13 = v4 | 0x4000000000000000;
        if (!a1)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xC000000000000000;
    if (!a1)
    {
      return result;
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
    do
    {
      v8 = *v6++;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v11 = v7;
      v9[0] = v8;
      __swift_project_boxed_opaque_existential_1(v9, v10);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v9);
      --v5;
    }

    while (v5);
    return v12;
  }

  return result;
}

{
  v2 = specialized Collection<>.encodedLength.getter(a1);
  result = specialized Data._Representation.init(capacity:)(v2);
  v9[0] = result;
  v9[1] = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized Collection<>.encode<A>(into:)(v9, v8);
      specialized Collection<>.encode<A>(into:)(v9, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
    return v9[0];
  }

  return result;
}

char *PINE<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(float *a1, char *a2, uint64_t a3, unint64_t a4, char **a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v46, a1, a2, v15, a5, a6);

  if (v7)
  {
    return v8;
  }

  v17 = v46;
  v18 = v47;
  v19 = specialized PINEPublicShare.encodedLength.getter(v46, v47);
  v20 = MEMORY[0x277D84F90];
  v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PINEPublicShare.encode<A>(into:)(&v46, v17, v18);

  v8 = v46;
  v21 = v16[2];
  if (!v21)
  {

    return v8;
  }

  v45 = v46;
  v46 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v46;
  for (i = v16 + 9; ; i += 6)
  {
    v25 = *(i - 5);
    v26 = *(i - 32);
    v27 = *(i - 3);
    v28 = *(i - 16);
    v30 = *(i - 1);
    v29 = *i;
    v31 = *(v25 + 16);
    if ((v26 & 1) == 0)
    {
      if (v31)
      {
        v32 = (v31 * 5) >> 64;
        v31 *= 5;
        if (v32 != v31 >> 63)
        {
          break;
        }
      }
    }

    v33 = *(v27 + 16);
    if ((*(i - 2) & 1) == 0)
    {
      if (v33)
      {
        v34 = (v33 * 5) >> 64;
        v33 *= 5;
        if (v34 != v33 >> 63)
        {
          goto LABEL_23;
        }
      }
    }

    v35 = __OFADD__(v31, v33);
    v36 = v31 + v33;
    if (v35)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

    v37 = *(v30 + 16);
    v35 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v35)
    {
      goto LABEL_20;
    }

    v39 = *(v29 + 16);
    v35 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v35)
    {
      goto LABEL_21;
    }

    v41 = v40 & ~(v40 >> 63);

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0, MEMORY[0x277D84F90]);

    specialized Share.encode<A>(into:)(&v49, v25, v26);
    specialized Share.encode<A>(into:)(&v49, v27, v28);
    specialized Array.append<A>(contentsOf:)(v30);
    specialized Array.append<A>(contentsOf:)(v29);

    v42 = v49;
    v46 = v23;
    v44 = *(v23 + 2);
    v43 = *(v23 + 3);
    if (v44 >= v43 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v23 = v46;
    }

    *(v23 + 2) = v44 + 1;
    *&v23[8 * v44 + 32] = v42;
    if (!--v21)
    {

      return v45;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

{
  memcpy(__dst, v6, 0x148uLL);
  outlined copy of Data._Representation(a3, a4);
  v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v15 = __dst;
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v46, a1, a2, v14, a5, a6);

  if (v7)
  {
    return v15;
  }

  v17 = v46;
  v18 = v47;
  v19 = specialized PINEPublicShare.encodedLength.getter(v46, v47);
  v20 = MEMORY[0x277D84F90];
  v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PINEPublicShare.encode<A>(into:)(&v46, v17, v18);

  v15 = v46;
  v21 = v16[2];
  if (!v21)
  {

    return v15;
  }

  v45 = v46;
  v46 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v46;
  for (i = v16 + 9; ; i += 6)
  {
    v25 = *(i - 5);
    v26 = *(i - 32);
    v27 = *(i - 3);
    v28 = *(i - 16);
    v29 = *(v25 + 16);
    if ((v26 & 1) == 0 && v29)
    {
      if (v29 >> 61)
      {
        goto LABEL_29;
      }

      v29 *= 4;
    }

    v30 = *(v27 + 16);
    if ((*(i - 2) & 1) == 0 && v30)
    {
      if (v30 >> 61)
      {
        goto LABEL_30;
      }

      v30 *= 4;
    }

    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = *(*(i - 1) + 2);
    v31 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v31)
    {
      goto LABEL_27;
    }

    v35 = *(*i + 2);
    v31 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v31)
    {
      goto LABEL_28;
    }

    v37 = v36 & ~(v36 >> 63);

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0, MEMORY[0x277D84F90]);
    if (v26)
    {

      specialized Array.append<A>(contentsOf:)(v38);
      if (v28)
      {
        goto LABEL_19;
      }
    }

    else
    {
      specialized Collection<>.encode<A>(into:)(&v49, v25);
      if (v28)
      {
LABEL_19:

        specialized Array.append<A>(contentsOf:)(v39);
        goto LABEL_20;
      }
    }

    specialized Collection<>.encode<A>(into:)(&v49, v27);
LABEL_20:

    specialized Array.append<A>(contentsOf:)(v40);

    specialized Array.append<A>(contentsOf:)(v41);

    v42 = v49;
    v46 = v23;
    v44 = *(v23 + 2);
    v43 = *(v23 + 3);
    if (v44 >= v43 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v23 = v46;
    }

    *(v23 + 2) = v44 + 1;
    *&v23[8 * v44 + 32] = v42;
    if (!--v21)
    {

      return v45;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  v4 = (v3 * 5) >> 64;
  v5 = 5 * v3;
  if (v4 != v5 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(a2 + 16);
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(a3 + 16);
  v8 = __OFADD__(v9, v11);
  v12 = v9 + v11;
  if (!v8)
  {
    v13 = result;
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);

    specialized AggregateShare.encode<A>(into:)(&v14, v13);
    specialized Array.append<A>(contentsOf:)(a2);
    specialized Array.append<A>(contentsOf:)(a3);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v3 = *(result + 2);
  if (v3 >> 61)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, 4 * v3);
  v7 = v5 + 4 * v3;
  if (v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  v6 = __OFADD__(v7, v9);
  v10 = v7 + v9;
  if (!v6)
  {
    v11 = result;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x277D84F90]);

    specialized Collection<>.encode<A>(into:)(&v12, v11);
    specialized Array.append<A>(contentsOf:)(a2);
    specialized Array.append<A>(contentsOf:)(a3);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v3 = *(result + 2);
  if (v3 >> 60)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, 8 * v3);
  v7 = v5 + 8 * v3;
  if (v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  v6 = __OFADD__(v7, v9);
  v10 = v7 + v9;
  if (!v6)
  {
    v11 = result;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x277D84F90]);

    specialized AggregateShare.encode<A>(into:)(&v12, v11);
    specialized Array.append<A>(contentsOf:)(a2);
    specialized Array.append<A>(contentsOf:)(a3);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(uint64_t a1)
{
  if (a1)
  {
    if (*(MEMORY[0x277D84F90] + 16) <= *(a1 + 16))
    {
      v2 = *(a1 + 16);
    }

    else
    {
      v2 = *(MEMORY[0x277D84F90] + 16);
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x277D84F90]);

    specialized Array.append<A>(contentsOf:)(v3);
    return v7;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = *(MEMORY[0x277D84F90] + 16);

    return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, v5);
  }
}

{
  v2 = specialized Prio3PublicShare.encodedLength.getter(a1);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x277D84F90]);
  v4 = result;
  if (!a1)
  {
    return v4;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v7 = *i;
    v8 = *(*i + 16);
    v9 = *(v4 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = *(v4 + 3);

    if (v10 > (v11 >> 1))
    {
      if (v9 <= v10)
      {
        v15 = v9 + v8;
      }

      else
      {
        v15 = v9;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v15, 1, v4);
      v4 = result;
      v9 = *(result + 2);
      if (*(v7 + 16))
      {
LABEL_9:
        if (((*(v4 + 3) >> 1) - v9) < v8)
        {
          goto LABEL_21;
        }

        memcpy(&v4[v9 + 32], (v7 + 32), v8);

        if (v8)
        {
          v12 = *(v4 + 2);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_22;
          }

          *(v4 + 2) = v14;
        }

        goto LABEL_5;
      }
    }

    else if (v8)
    {
      goto LABEL_9;
    }

    if (v8)
    {
      goto LABEL_20;
    }

LABEL_5:
    if (!--v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

{
  v2 = specialized Collection<>.encodedLength.getter(a1);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x277D84F90]);
  v27 = result;
  v24 = *(a1 + 16);
  if (v24)
  {
    v4 = 0;
    v23 = a1 + 32;
    while (1)
    {
      v5 = (v23 + 16 * v4);
      v6 = v5[1];
      v7 = *(*v5 + 16);
      v26 = *v5;

      v25 = v6;

      if (v7)
      {
        break;
      }

LABEL_3:
      ++v4;
      specialized Collection<>.encode<A>(into:)(&v27, v25);

      if (v4 == v24)
      {
        return v27;
      }
    }

    v8 = (v26 + 41);
    while (1)
    {
      v9 = *(v8 - 9);
      v10 = *(v9 + 16);
      if (!v10)
      {
        break;
      }

      v11 = v27;
      v12 = *(v27 + 2);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_26;
      }

      v14 = *(v8 - 1);
      v15 = *v8;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v13 > *(v11 + 3) >> 1)
      {
        if (v12 <= v13)
        {
          v16 = v12 + v10;
        }

        else
        {
          v16 = v12;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v16, 1, v11);
        v11 = result;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v11 + 2);
      if ((*(v11 + 3) >> 1) - v17 < v10)
      {
        goto LABEL_27;
      }

      result = memcpy(&v11[v17 + 32], (v9 + 32), v10);
      v18 = *(v11 + 2);
      v19 = v18 + v10;
      if (__OFADD__(v18, v10))
      {
        goto LABEL_28;
      }

      *(v11 + 2) = v19;
      v20 = *(v11 + 3);
      v21 = v19 + 1;
      if (v19 >= v20 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v21;
      v11[v19 + 32] = v14;
      v22 = *(v11 + 3);
      if ((v19 + 2) > (v22 >> 1))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 2, 1, v11);
      }

      *(v11 + 2) = v19 + 2;
      v11[v21 + 32] = v15;
      v27 = v11;
      v8 += 16;
      if (!--v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void specialized VDAFEncodable.encodedBytes.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 60)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v3 *= 8;
  }

  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = __OFADD__(v3, v5);
    v3 += v5;
    if (v6)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0, MEMORY[0x277D84F90]);
  specialized Share.encode<A>(into:)(&v8, v1, v2);
  if (v4)
  {

    specialized Array.append<A>(contentsOf:)(v7);
  }
}

{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(*(v0 + 24) + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v3 = __OFADD__(v4, 7);
    v5 = v4 + 7;
    if (!v3)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v5 / 8) & ~((v5 + (v5 < 0 ? 7uLL : 0)) >> 63), 0, MEMORY[0x277D84F90]);
      specialized BitMasks.encode<A>(into:)();
      return;
    }
  }

  __break(1u);
}

char *specialized VDAFEncodable.encodedBytes.getter(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2)
  {
    if (v2 >> 61)
    {
      __break(1u);
      return result;
    }

    v2 *= 4;
  }

  if (*(MEMORY[0x277D84F90] + 16) <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(MEMORY[0x277D84F90] + 16);
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, MEMORY[0x277D84F90]);
  specialized Collection<>.encode<A>(into:)(&v4, v1);
  return v4;
}

{
  v1 = result;
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *(*(result + 4) + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * v2) >> 64 != (v3 * v2) >> 63)
  {
    goto LABEL_26;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v3 * v2) & ~((v3 * v2) >> 63), 0, MEMORY[0x277D84F90]);
  v4 = result;
  if (!v2)
  {
    return v4;
  }

  for (i = v1 + 32; ; i += 8)
  {
    v6 = *i;
    v7 = *(*i + 16);
    v8 = *(v4 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = *(v4 + 3);

    if (v9 > (v10 >> 1))
    {
      if (v8 <= v9)
      {
        v14 = v8 + v7;
      }

      else
      {
        v14 = v8;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v14, 1, v4);
      v4 = result;
      v8 = *(result + 2);
      if (*(v6 + 16))
      {
LABEL_12:
        if (((*(v4 + 3) >> 1) - v8) < v7)
        {
          goto LABEL_24;
        }

        memcpy(&v4[v8 + 32], (v6 + 32), v7);

        if (v7)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_25;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_8;
      }
    }

    else if (v7)
    {
      goto LABEL_12;
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_8:
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 16);
  if (__OFADD__(v4, 2))
  {
    __break(1u);
  }

  else
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v4 + 2), 0, MEMORY[0x277D84F90]);
    if (v4)
    {

      specialized Array.append<A>(contentsOf:)(v5);
      v4 = v11;
      v2 = a2 & 1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_4:
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v9;
  v4[v7 + 32] = v2;
  if (v8 < (v7 + 2))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 2, 1, v4);
  }

  *(v4 + 2) = v7 + 2;
  v4[v9 + 32] = HIBYTE(a2) & 1;
  return v4;
}

void *PINE<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v11 = v9;
  memcpy(__dst, v11, 0x148uLL);
  outlined copy of Data._Representation(a1, a2);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a6, a7, __dst[0], 0, v35);
  if (v10)
  {
  }

  else
  {
    v22 = v35[0];
    v23 = v35[1];
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(__dst, v29, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMR);
    _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSRySfGTt2B5Tm(__dst, a3, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMR, &v30);
    _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v30, v31, v32, v33, v34);
    v38[0] = v34[0];
    v38[1] = v34[1];
    v38[2] = v34[2];
    _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt6B5(v37, v36, v20, a3, v21, v22, v23, v38);

    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v21 = specialized VDAFEncodable.encodedBytes.getter(v37[0], v37[1], v37[2]);

    v28 = specialized PINEPrepareShare.encodedLength.getter(v25, v26, v27);
    v29[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0, MEMORY[0x277D84F90]);

    specialized AggregateShare.encode<A>(into:)(v29, v25);
    specialized Array.append<A>(contentsOf:)(v26);
    specialized Array.append<A>(contentsOf:)(v27);
  }

  return v21;
}

{
  v11 = v9;
  memcpy(__dst, v11, 0x148uLL);
  outlined copy of Data._Representation(a1, a2);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a6, a7, __dst[0], 0, v35);
  if (v10)
  {
  }

  else
  {
    v22 = v35[0];
    v23 = v35[1];
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(__dst, v29, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
    _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSRySfGTt2B5(__dst, a3, &v30);
    _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v30, v31, v32, v33, v34);
    v38[0] = v34[0];
    v38[1] = v34[1];
    v38[2] = v34[2];
    _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt6B5(v37, v36, v20, a3, v21, v22, v23, v38);

    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v21 = specialized VDAFEncodable.encodedBytes.getter(v37[0], v37[1], v37[2]);

    v28 = specialized PINEPrepareShare.encodedLength.getter(v25, v26, v27);
    v29[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0, MEMORY[0x277D84F90]);

    specialized Collection<>.encode<A>(into:)(v29, v25);
    specialized Array.append<A>(contentsOf:)(v26);
    specialized Array.append<A>(contentsOf:)(v27);
  }

  return v21;
}

{
  v11 = v9;
  memcpy(__dst, v11, 0x148uLL);
  outlined copy of Data._Representation(a1, a2);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a6, a7, __dst[0], 0, v35);
  if (v10)
  {
  }

  else
  {
    v22 = v35[0];
    v23 = v35[1];
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(__dst, v29, &_s4VDAF4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGMR);
    _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSRySfGTt2B5(__dst, a3, &v30);
    _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v30, v31, v32, v33, v34);
    v38[0] = v34[0];
    v38[1] = v34[1];
    v38[2] = v34[2];
    _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt6B5(v37, v36, v20, a3, v21, v22, v23, v38);

    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v21 = specialized VDAFEncodable.encodedBytes.getter(v37[0], v37[1], v37[2]);

    v28 = specialized PINEPrepareShare.encodedLength.getter(v25, v26, v27);
    v29[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0, MEMORY[0x277D84F90]);

    specialized Collection<>.encode<A>(into:)(v29, v25);
    specialized Array.append<A>(contentsOf:)(v26);
    specialized Array.append<A>(contentsOf:)(v27);
  }

  return v21;
}

uint64_t _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt6B5(void *a1, char **a2, uint64_t a3, char *a4, uint64_t a5, unint64_t *a6, unint64_t a7, void *a8)
{
  v10 = v9;
  v153 = a8;
  v150 = a6;
  v224 = a4;
  v146 = a2;
  v147 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v152 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v126 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v151 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v18 = &v126 - v17;
  memcpy(v159, v8, sizeof(v159));
  v148 = a3;
  v19 = *(a3 + 16);
  if (v19 != 32)
  {
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v156 = 0xD000000000000034;
    v157 = 0x8000000270C51C00;
    v38 = 32;
LABEL_15:
    v155 = v38;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v155 = v19;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    v41 = v156;
    v42 = v157;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = 1;
    return swift_willThrow();
  }

  v19 = *(a5 + 16);
  if (v19 != 16)
  {
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v156 = 0xD000000000000030;
    v157 = 0x8000000270C51C40;
    v38 = 16;
    goto LABEL_15;
  }

  v20 = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v20 <= v224)
  {
    v156 = v224;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v47 = v44;
    *(v47 + 8) = v46;
    *(v47 + 16) = 0;
    return swift_willThrow();
  }

  if (v224 > 0xFF)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v141 = a5;
  v21 = v8[17];
  v22 = v8[10];
  if (__OFSUB__(v22, v21))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = v153;
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5Tm(*v153, *(v153 + 8), v224, v22 - v21, 101777407, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
  if (v9)
  {
    return result;
  }

  v145 = 0;
  v137 = a7;
  v140 = v20;
  v218 = *(v8 + 13);
  v219 = *(v8 + 15);
  v220 = *(v8 + 17);
  v216[2] = *(v8 + 5);
  v216[3] = *(v8 + 7);
  v216[4] = *(v8 + 9);
  v217 = *(v8 + 11);
  v216[0] = *(v8 + 1);
  v216[1] = *(v8 + 3);
  v25 = *(v8 + 17);
  v222[6] = *(v8 + 16);
  v222[7] = v25;
  v222[8] = *(v8 + 18);
  v26 = *(v8 + 13);
  v222[2] = *(v8 + 12);
  v222[3] = v26;
  v27 = *(v8 + 15);
  v222[4] = *(v8 + 14);
  v222[5] = v27;
  v28 = *(v8 + 11);
  v222[0] = *(v8 + 10);
  a7 = v8[39];
  v10 = v8[40];
  v144 = v23[2];
  v29 = *(v23 + 24);
  v139 = result;
  v158 = result;
  v221 = v8[19];
  v223 = v8[38];
  v222[1] = v28;
  v8 = v222;
  v30 = specialized FullyLinearProof.proofLength.getter();
  v20 = v10 * v30;
  v142 = v10;
  if ((v10 * v30) >> 64 != (v10 * v30) >> 63)
  {
    goto LABEL_55;
  }

  v8 = v216;
  v31 = specialized FullyLinearProof.proofLength.getter();
  v138 = a7;
  if ((a7 * v31) >> 64 != (a7 * v31) >> 63)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v32 = v145;
  if (__OFADD__(v20, a7 * v31))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v8 = &v126;
  MEMORY[0x28223BE20](v31);
  v20 = v224;
  v124 = v159;
  v125 = v224;
  v34 = _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_nTm(v144, v29, v33, partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), (&v126 - 4), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
  v10 = v32;
  if (v32)
  {
  }

  v134 = v34;
  v161 = v153[4];
  if ((v217 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v143 = v37;
  v144 = v36;
  v145 = v35;
  v48 = v139;
  if (*(v139 + 16) < v217)
  {
    goto LABEL_60;
  }

  v49 = (2 * v217) | 1;
  v136 = v161;

  outlined init with copy of Seed(&v161, &v156);
  v133 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 101777407);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v50 = swift_allocObject();
  v130 = xmmword_270C44540;
  *(v50 + 16) = xmmword_270C44540;
  *(v50 + 32) = v20;
  v156 = v50;

  specialized Array.append<A>(contentsOf:)(v51);
  v52 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v136, v133, v156);
  v53 = specialized VDAFEncodable.encodedBytes.getter((v48 + 32), 0, v49);
  v136 = v53;
  v54 = off_2880A7738[0];
  v55 = type metadata accessor for XofHmacSha256Aes128(0);
  v56 = v53;
  v129 = v55;
  v57 = v52;
  v131 = v54;
  v54(v56);

  v136 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v52 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_76;
  }

  v58 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v59 = v152;
  v60 = v57;
  v61 = v152 + 16;
  v128 = *(v152 + 16);
  v128(v16, v60 + v58, v14);
  HMAC.finalize()();
  v62 = *(v59 + 8);
  v152 = v59 + 8;
  v127 = v62;
  v62(v16, v14);
  v63 = v149;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v132 = 0;
  v64 = v151[1];
  ++v151;
  v126 = v64;
  (v64)(v18, v63);
  v133 = v60;
  v65 = *(v136 + v60);
  if (v65)
  {

    a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a7 + 16) = 32;
    *(a7 + 48) = 0u;
    *(a7 + 32) = 0u;
    v136 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v66 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    v67 = v132;
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a7 + 32), a7 + 64, v136 + v65, v65 + v66);
    v20 = v67;
    if (!v67)
    {
      v136 = a7;
      v132 = v61;
      swift_endAccess();

      v8 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v224;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_61;
      }

      while (1)
      {
        v69 = v153;
        v153 = v20;

        v160 = *(v69 + 5);
        if (v8[2] <= v10)
        {
          break;
        }

        v8[v10 + 4] = v136;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        swift_allocObject();
        v20 = v10;
        v136 = specialized WraparoundJointRandomness.init(parts:)(v8, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 101777407);
        v70 = v139;
        v150 = ((2 * *(v139 + 16)) | 1);
        v71 = v160;

        outlined init with copy of Seed(&v160, &v155);
        v72 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 101777407);
        v73 = swift_allocObject();
        *(v73 + 16) = v130;
        *(v73 + 32) = v20;
        v155 = v73;

        specialized Array.append<A>(contentsOf:)(v74);
        v75 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v71, v72, v155);
        specialized VDAFEncodable.encodedBytes.getter((v70 + 32), 0, v150);
        v131();

        v76 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v75 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_78;
        }

        v77 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v128(v16, v75 + v77, v14);
        HMAC.finalize()();
        v127(v16, v14);
        v78 = v149;
        v79 = v153;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v14 = v79;
        (v126)(v18, v78);
        v80 = *(v75 + v76);
        if (!v80)
        {
          goto LABEL_79;
        }

        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = 32;
        *(v8 + 3) = 0u;
        *(v8 + 2) = 0u;
        v81 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v82 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)(v8 + 2, (v8 + 8), v80 + v81, v80 + v82);
        if (v79)
        {
          goto LABEL_80;
        }

        swift_endAccess();

        a7 = v137;
        v69 = v162;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_30:
        v18 = v134;
        v83 = v139;

        if (*(a7 + 16) <= v20)
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
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        *(a7 + 8 * v20 + 32) = v8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        v20 = swift_allocObject();
        *(v20 + 32) = 0;
        *(v20 + 40) = 3;
        *(v20 + 48) = v138;
        *(v20 + 16) = a7;
        *(v20 + 24) = 0;
        v69[82] = *&v159[104];
        v69[83] = *&v159[120];
        v69[84] = *&v159[136];
        v215 = *&v159[152];
        v69[78] = *&v159[40];
        v69[79] = *&v159[56];
        v69[80] = *&v159[72];
        v69[81] = *&v159[88];
        v69[76] = *&v159[8];
        v69[77] = *&v159[24];
        v84 = specialized PINECircuit.truncate(measurement:)(v83, specialized _copyCollectionToContiguousArray<A>(_:));
        v10 = v14;
        if (v14)
        {

          swift_unknownObjectRelease();

          swift_setDeallocating();
          swift_deallocClassInstance();
        }

        if ((v214 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        v134 = v84;
        v85 = v142;
        if (*(v83 + 16) < v214)
        {
          goto LABEL_66;
        }

        v210 = *&v159[104];
        v86 = (2 * v214) | 1;
        v211 = *&v159[120];
        v212 = *&v159[136];
        v213 = *&v159[152];
        v206 = *&v159[40];
        v207 = *&v159[56];
        v208 = *&v159[72];
        v209 = *&v159[88];
        v204 = *&v159[8];
        v205 = *&v159[24];

        v88 = specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v87, v83 + 32, 0, v86, v136, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:));

        specialized Array.append<A>(contentsOf:)(v88, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
        v89 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(4u, 101777407);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_270C44550;
        if ((v85 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v16 = v138;
        if (v85 > 0xFF)
        {
          goto LABEL_68;
        }

        *(v90 + 32) = v85;
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        if (v16 > 0xFF)
        {
          goto LABEL_70;
        }

        *(v90 + 33) = v16;
        v154[0] = v90;

        specialized Array.append<A>(contentsOf:)(v91);
        v150 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v148, v89, v154[0]);

        v192[6] = *&v159[104];
        v192[7] = *&v159[120];
        v192[8] = *&v159[136];
        v193 = *&v159[152];
        v192[2] = *&v159[40];
        v192[3] = *&v159[56];
        v192[4] = *&v159[72];
        v192[5] = *&v159[88];
        v192[0] = *&v159[8];
        v192[1] = *&v159[24];
        v200 = *&v159[256];
        v201 = *&v159[272];
        v202 = *&v159[288];
        v203 = *&v159[304];
        v196 = *&v159[192];
        v197 = *&v159[208];
        v198 = *&v159[224];
        v199 = *&v159[240];
        v194 = *&v159[160];
        v195 = *&v159[176];
        v92 = specialized FullyLinearProof.verifierLength.getter();
        v14 = v85 * v92;
        if ((v85 * v92) >> 64 != (v85 * v92) >> 63)
        {
          goto LABEL_71;
        }

        v8 = v192;
        v93 = specialized FullyLinearProof.verifierLength.getter();
        v94 = v16 * v93;
        if ((v16 * v93) >> 64 != (v16 * v93) >> 63)
        {
          goto LABEL_72;
        }

        v95 = __OFADD__(v14, v94);
        v96 = v14 + v94;
        if (v95)
        {
          goto LABEL_73;
        }

        v139 = v20;
        v154[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96 & ~(v96 >> 63), 0, MEMORY[0x277D84F90]);
        if (v85)
        {
          v137 = a7;
          do
          {
            v142 = v85;
            a7 = v162;
            v188 = *&v159[256];
            v189 = *&v159[272];
            v190 = *&v159[288];
            v191 = *&v159[304];
            v184 = *&v159[192];
            v185 = *&v159[208];
            v186 = *&v159[224];
            v187 = *&v159[240];
            v182 = *&v159[160];
            v183 = *&v159[176];
            specialized FullyLinearProof.proofLength.getter();
            v97 = specialized Collection.prefix(_:)();
            v152 = v99;
            v153 = v98;
            v151 = v100;
            v20 = v159;
            v18 = specialized Collection.dropFirst(_:)();
            v144 = v102;
            v145 = v101;
            v143 = v103;
            v179 = *&v159[168];
            v180 = *&v159[184];
            v181 = *&v159[200];
            specialized Gadget.wirePolynomialLength.getter();
            specialized Gadget.gadgetPolynomialLength.getter();
            swift_unknownObjectRetain();
            v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v150, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
            v16 = v158;
            v177[6] = *&v159[256];
            v177[7] = *&v159[272];
            v177[8] = *&v159[288];
            v178 = *&v159[304];
            v177[2] = *&v159[192];
            v177[3] = *&v159[208];
            v177[4] = *&v159[224];
            v177[5] = *&v159[240];
            v177[0] = *&v159[160];
            v177[1] = *&v159[176];
            v8 = v177;
            specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v154, v158, v97, v153, v152, v151, v14, MEMORY[0x277D84F90], v140);
            swift_unknownObjectRelease();

            v85 = v142 - 1;
          }

          while (v142 != 1);
        }

        if (!v138)
        {
LABEL_49:
          v112 = v136;
          v113 = v136[3];

          v114 = v139;
          v115 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
          v116 = v147;
          *v147 = v134;
          v116[1] = v113;
          v116[2] = v115;
          v117 = v224;
          *(v116 + 24) = v224;
          v118 = v112[2];
          if (*(v118 + 16) > v117)
          {
            v119 = *(v114 + 16);
            if (*(v119 + 16) > v117)
            {
              v120 = v154[0];
              v121 = *(v118 + 8 * v117 + 32);
              v122 = *(v119 + 8 * v117 + 32);

              swift_unknownObjectRelease();
              swift_setDeallocating();

              swift_deallocClassInstance();
              v123 = v146;
              *v146 = v120;
              v123[1] = v121;
              v123[2] = v122;
            }

LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v104 = 0;
        while (1)
        {
          v141 = v104 + 1;
          v142 = v104;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          v153 = specialized VerificationJointRandomness.next()();
          v20 = v159;
          v174 = *&v159[120];
          v175 = *&v159[136];
          v176 = *&v159[152];
          v170 = *&v159[56];
          v171 = *&v159[72];
          v172 = *&v159[88];
          v173 = *&v159[104];
          v168 = *&v159[24];
          v169 = *&v159[40];
          v164 = *&v159[16];
          v165 = *&v159[32];
          v166 = *&v159[48];
          v167 = *&v159[8];
          specialized FullyLinearProof.proofLength.getter();
          v148 = specialized Collection.prefix(_:)();
          v149 = v105;
          v151 = v107;
          v152 = v106;
          v18 = specialized Collection.dropFirst(_:)();
          v144 = v109;
          v145 = v108;
          v143 = v110;
          specialized Gadget.wirePolynomialLength.getter();
          specialized Gadget.gadgetPolynomialLength.getter();
          v111 = v148;
          swift_unknownObjectRetain();
          v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v150, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
          a7 = v158;
          v162[6] = *&v159[104];
          v162[7] = *&v159[120];
          v162[8] = *&v159[136];
          v163 = *&v159[152];
          v162[2] = *&v159[40];
          v162[3] = *&v159[56];
          v162[4] = *&v159[72];
          v162[5] = *&v159[88];
          v162[0] = *&v159[8];
          v162[1] = *&v159[24];
          v8 = v162;
          specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v154, v158, v111, v152, v151, v149, v14, v153, v140);
          swift_unknownObjectRelease();

          v104 = v142 + 1;
          v16 = v18;
          if (v141 == v138)
          {
            goto LABEL_49;
          }
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      __break(1u);
LABEL_63:
      a7 = specialized _ArrayBuffer._consumeAndCreateNew()(a7);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

LABEL_80:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt6B5(uint64_t *a1, char **a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6, unint64_t a7, char **a8)
{
  v10 = v9;
  v153 = a8;
  v150 = a6;
  v248 = a4;
  v146 = a2;
  v147 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v152 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v126 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v151 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v18 = (v126 - v17);
  memcpy(v159, v8, sizeof(v159));
  v148 = a3;
  v19 = *(a3 + 16);
  if (v19 != 32)
  {
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v156 = 0xD000000000000034;
    v157 = 0x8000000270C51C00;
    v38 = 32;
LABEL_15:
    v155 = v38;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v155 = v19;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    v41 = v156;
    v42 = v157;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = 1;
    return swift_willThrow();
  }

  v19 = *(a5 + 16);
  if (v19 != 16)
  {
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v156 = 0xD000000000000030;
    v157 = 0x8000000270C51C40;
    v38 = 16;
    goto LABEL_15;
  }

  v20 = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v20 <= v248)
  {
    v156 = v248;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v47 = v44;
    *(v47 + 8) = v46;
    *(v47 + 16) = 0;
    return swift_willThrow();
  }

  if (v248 > 0xFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v141 = a5;
  v21 = v8[17];
  v22 = v8[10];
  if (__OFSUB__(v22, v21))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v23 = v153;
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5(*v153, *(v153 + 8), v248, v22 - v21);
  if (v9)
  {
    return result;
  }

  v145 = 0;
  v137 = a7;
  v140 = v20;
  v242 = *(v8 + 13);
  v243 = *(v8 + 15);
  v244 = *(v8 + 17);
  v240[2] = *(v8 + 5);
  v240[3] = *(v8 + 7);
  v240[4] = *(v8 + 9);
  v241 = *(v8 + 11);
  v240[0] = *(v8 + 1);
  v240[1] = *(v8 + 3);
  v25 = *(v8 + 17);
  v246[6] = *(v8 + 16);
  v246[7] = v25;
  v246[8] = *(v8 + 18);
  v26 = *(v8 + 13);
  v246[2] = *(v8 + 12);
  v246[3] = v26;
  v27 = *(v8 + 15);
  v246[4] = *(v8 + 14);
  v246[5] = v27;
  v28 = *(v8 + 11);
  v246[0] = *(v8 + 10);
  a7 = v8[39];
  v10 = v8[40];
  v144 = v23[2];
  v29 = *(v23 + 24);
  v139 = result;
  v158 = result;
  v245 = *(v8 + 38);
  v247 = *(v8 + 76);
  v246[1] = v28;
  v8 = v246;
  v30 = specialized FullyLinearProof.proofLength.getter();
  v20 = v10 * v30;
  v142 = v10;
  if ((v10 * v30) >> 64 != (v10 * v30) >> 63)
  {
    goto LABEL_56;
  }

  v8 = v240;
  v31 = specialized FullyLinearProof.proofLength.getter();
  v138 = a7;
  if ((a7 * v31) >> 64 != (a7 * v31) >> 63)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v32 = v145;
  if (__OFADD__(v20, a7 * v31))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = v126;
  MEMORY[0x28223BE20](v31);
  v20 = v248;
  v34 = _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_n(v144, v29, v33, partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:));
  v10 = v32;
  if (v32)
  {
  }

  v126[1] = v34;
  v161 = v153[4];
  if ((v241 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v143 = v37;
  v144 = v36;
  v145 = v35;
  v48 = v139;
  if (*(v139 + 16) < v241)
  {
    goto LABEL_61;
  }

  v49 = (2 * v241) | 1;
  v136 = v161;

  outlined init with copy of Seed(&v161, &v156);
  v134 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 85000191);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v50 = swift_allocObject();
  v131 = xmmword_270C44540;
  *(v50 + 16) = xmmword_270C44540;
  *(v50 + 32) = v20;
  v156 = v50;

  specialized Array.append<A>(contentsOf:)(v51);
  v52 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v136, v134, v156);
  v53 = specialized VDAFEncodable.encodedBytes.getter((v48 + 32), 0, v49);
  v136 = v53;
  v54 = off_2880A7738[0];
  v55 = type metadata accessor for XofHmacSha256Aes128(0);
  v56 = v53;
  v130 = v55;
  v57 = v52;
  v132 = v54;
  v54(v56);

  v136 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v52 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_77;
  }

  v58 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v59 = v152;
  v60 = v57;
  v61 = v152 + 16;
  v129 = *(v152 + 16);
  v129(v16, v60 + v58, v14);
  HMAC.finalize()();
  v62 = *(v59 + 8);
  v152 = v59 + 8;
  v128 = v62;
  v62(v16, v14);
  v63 = v149;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v133 = 0;
  v64 = v151[1];
  ++v151;
  v127 = v64;
  (v64)(v18, v63);
  v134 = v60;
  v65 = *(v136 + v60);
  if (v65)
  {

    a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a7 + 16) = 32;
    *(a7 + 48) = 0u;
    *(a7 + 32) = 0u;
    v136 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v66 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    v67 = v133;
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a7 + 32), a7 + 64, v136 + v65, v65 + v66);
    v20 = v67;
    if (!v67)
    {
      v136 = a7;
      v133 = v61;
      swift_endAccess();

      v8 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v248;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v69 = v153;
        v153 = v20;

        v160 = v69[5];
        if (v8[2] <= v10)
        {
          break;
        }

        v8[v10 + 4] = v136;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        swift_allocObject();
        v20 = v10;
        v136 = specialized WraparoundJointRandomness.init(parts:)(v8, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
        v70 = v139;
        v150 = ((2 * *(v139 + 16)) | 1);
        v71 = v160;

        outlined init with copy of Seed(&v160, &v155);
        v72 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 85000191);
        v73 = swift_allocObject();
        *(v73 + 16) = v131;
        *(v73 + 32) = v20;
        v155 = v73;

        specialized Array.append<A>(contentsOf:)(v74);
        v75 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v71, v72, v155);
        specialized VDAFEncodable.encodedBytes.getter((v70 + 32), 0, v150);
        v132();

        v76 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v75 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_79;
        }

        v77 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v129(v16, v75 + v77, v14);
        HMAC.finalize()();
        v128(v16, v14);
        v78 = v149;
        v79 = v153;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v14 = v79;
        (v127)(v18, v78);
        v80 = *(v75 + v76);
        if (!v80)
        {
          goto LABEL_80;
        }

        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = 32;
        *(v8 + 3) = 0u;
        *(v8 + 2) = 0u;
        v81 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v82 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)(v8 + 2, (v8 + 8), v80 + v81, v80 + v82);
        if (v79)
        {
          goto LABEL_81;
        }

        swift_endAccess();

        v10 = v137;
        v83 = swift_isUniquelyReferenced_nonNull_native();
        a7 = v139;
        if ((v83 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_30:

        if (*(v10 + 16) <= v20)
        {
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
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        *(v10 + 8 * v20 + 32) = v8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        v20 = swift_allocObject();
        *(v20 + 32) = 0;
        *(v20 + 40) = 3;
        *(v20 + 48) = v138;
        *(v20 + 16) = v10;
        *(v20 + 24) = 0;
        v236 = *&v159[104];
        v237 = *&v159[120];
        v238 = *&v159[136];
        v239 = *&v159[152];
        v232 = *&v159[40];
        v233 = *&v159[56];
        v234 = *&v159[72];
        v235 = *&v159[88];
        v230 = *&v159[8];
        v231 = *&v159[24];
        specialized PINECircuit.truncate(measurement:)(a7);
        v85 = v10;
        v10 = v14;
        if (v14)
        {

          swift_unknownObjectRelease();

          swift_setDeallocating();
          swift_deallocClassInstance();
        }

        v137 = v85;
        if ((v236 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        v134 = v84;
        v86 = v139;
        a7 = v142;
        if (*(v139 + 16) < v236)
        {
          goto LABEL_67;
        }

        v226 = *&v159[104];
        v87 = (2 * v236) | 1;
        v227 = *&v159[120];
        v228 = *&v159[136];
        v229 = *&v159[152];
        v222 = *&v159[40];
        v223 = *&v159[56];
        v224 = *&v159[72];
        v225 = *&v159[88];
        v220 = *&v159[8];
        v221 = *&v159[24];

        specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v88, v86 + 32, 0, v87, v136);
        v90 = v89;

        specialized Array.append<A>(contentsOf:)(v90);
        v91 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(4u, 85000191);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_270C44550;
        if ((a7 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v93 = v138;
        if (a7 > 0xFF)
        {
          goto LABEL_69;
        }

        *(v92 + 32) = a7;
        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        if (v93 > 0xFF)
        {
          goto LABEL_71;
        }

        v18 = &v159[160];
        *(v92 + 33) = v93;
        v154[0] = v92;
        v16 = v93;

        specialized Array.append<A>(contentsOf:)(v94);
        v149 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v148, v91, v154[0]);

        v206 = *&v159[104];
        v207 = *&v159[120];
        v208 = *&v159[136];
        v209 = *&v159[152];
        v202 = *&v159[40];
        v203 = *&v159[56];
        v204 = *&v159[72];
        v205 = *&v159[88];
        v200 = *&v159[8];
        v201 = *&v159[24];
        v216 = *&v159[256];
        v217 = *&v159[272];
        v218 = *&v159[288];
        v219 = *&v159[304];
        v212 = *&v159[192];
        v213 = *&v159[208];
        v214 = *&v159[224];
        v215 = *&v159[240];
        v210 = *&v159[160];
        v211 = *&v159[176];
        v95 = specialized FullyLinearProof.verifierLength.getter();
        v14 = a7 * v95;
        if ((a7 * v95) >> 64 != (a7 * v95) >> 63)
        {
          goto LABEL_72;
        }

        v96 = specialized FullyLinearProof.verifierLength.getter();
        v97 = v16 * v96;
        if ((v16 * v96) >> 64 != (v16 * v96) >> 63)
        {
          goto LABEL_73;
        }

        v98 = __OFADD__(v14, v97);
        v99 = v14 + v97;
        if (v98)
        {
          goto LABEL_74;
        }

        v139 = v20;
        v154[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99 & ~(v99 >> 63), 0, MEMORY[0x277D84F90]);
        if (a7)
        {
          do
          {
            v142 = a7;
            v196 = *&v159[256];
            v197 = *&v159[272];
            v198 = *&v159[288];
            v199 = *&v159[304];
            v192 = *&v159[192];
            v193 = *&v159[208];
            v194 = *&v159[224];
            v195 = *&v159[240];
            v190 = *&v159[160];
            v191 = *&v159[176];
            specialized FullyLinearProof.proofLength.getter();
            v20 = v144;
            v150 = specialized Collection.prefix(_:)();
            v151 = v100;
            v152 = v102;
            v153 = v101;
            specialized Collection.dropFirst(_:)();
            v144 = v104;
            v145 = v103;
            v143 = v105;
            v187 = *&v159[168];
            v188 = *&v159[184];
            v189 = *&v159[200];
            specialized Gadget.wirePolynomialLength.getter();
            specialized Gadget.gadgetPolynomialLength.getter();
            swift_unknownObjectRetain();
            v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(1, v149);
            v16 = v158;
            v183 = *&v159[256];
            v184 = *&v159[272];
            v185 = *&v159[288];
            v186 = *&v159[304];
            v179 = *&v159[192];
            v180 = *&v159[208];
            v181 = *&v159[224];
            v182 = *&v159[240];
            v177 = *&v159[160];
            v178 = *&v159[176];
            specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v154, v158, v150, v153, v152, v151, v14, MEMORY[0x277D84F90], v140);
            swift_unknownObjectRelease();

            a7 = v142 - 1;
          }

          while (v142 != 1);
        }

        if (!v138)
        {
          v8 = v139;
LABEL_50:
          v115 = v136;
          v116 = v136[3];

          v117 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
          v118 = v147;
          *v147 = v134;
          v118[1] = v116;
          v118[2] = v117;
          v119 = v248;
          *(v118 + 24) = v248;
          v120 = v115[2];
          if (*(v120 + 16) > v119)
          {
            v121 = v8[2];
            if (*(v121 + 16) > v119)
            {
              v122 = v154[0];
              v123 = *(v120 + 8 * v119 + 32);
              v124 = *(v121 + 8 * v119 + 32);

              swift_unknownObjectRelease();
              swift_setDeallocating();

              swift_deallocClassInstance();
              v125 = v146;
              *v146 = v122;
              v125[1] = v123;
              v125[2] = v124;
            }

LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v106 = 0;
        v8 = v139;
        while (1)
        {
          v141 = v106 + 1;
          v142 = v106;
          if (__OFADD__(v106, 1))
          {
            break;
          }

          v153 = specialized VerificationJointRandomness.next()();
          v20 = v162;
          v174 = *&v159[120];
          v175 = *&v159[136];
          v176 = *&v159[152];
          v170 = *&v159[56];
          v171 = *&v159[72];
          v172 = *&v159[88];
          v173 = *&v159[104];
          v168 = *&v159[24];
          v169 = *&v159[40];
          v164 = *&v159[16];
          v165 = *&v159[32];
          v166 = *&v159[48];
          v167 = *&v159[8];
          specialized FullyLinearProof.proofLength.getter();
          v148 = specialized Collection.prefix(_:)();
          v151 = v108;
          v152 = v107;
          v150 = v109;
          v110 = specialized Collection.dropFirst(_:)();
          v144 = v112;
          v145 = v111;
          v143 = v113;
          specialized Gadget.wirePolynomialLength.getter();
          specialized Gadget.gadgetPolynomialLength.getter();
          v114 = v148;
          swift_unknownObjectRetain();
          v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(1, v149);
          a7 = v158;
          v162[6] = *&v159[104];
          v162[7] = *&v159[120];
          v162[8] = *&v159[136];
          v163 = *&v159[152];
          v162[2] = *&v159[40];
          v162[3] = *&v159[56];
          v162[4] = *&v159[72];
          v162[5] = *&v159[88];
          v18 = v153;
          v162[0] = *&v159[8];
          v162[1] = *&v159[24];
          specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v154, v158, v114, v152, v151, v150, v14, v153, v140);
          swift_unknownObjectRelease();

          v106 = v142 + 1;
          v16 = v110;
          v8 = v139;
          if (v141 == v138)
          {
            goto LABEL_50;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      __break(1u);
LABEL_64:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

LABEL_81:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *_s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt6B5(uint64_t *a1, char **a2, char **a3, char *a4, uint64_t a5, unint64_t *a6, uint64_t a7, void *a8)
{
  v10 = v9;
  v157 = a8;
  v154 = a6;
  v260 = a4;
  v150 = a2;
  v151 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v156 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = (&v130 - v15);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v155 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v18 = &v130 - v17;
  memcpy(v163, v8, sizeof(v163));
  v152 = a3;
  v19 = a3[2];
  if (v19 != 32)
  {
    v160 = 0;
    v161 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v160 = 0xD000000000000034;
    v161 = 0x8000000270C51C00;
    v39 = 32;
LABEL_15:
    v159 = v39;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v159 = v19;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v41);

    v42 = v160;
    v43 = v161;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = 1;
    return swift_willThrow();
  }

  v19 = *(a5 + 16);
  if (v19 != 16)
  {
    v160 = 0;
    v161 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v160 = 0xD000000000000030;
    v161 = 0x8000000270C51C40;
    v39 = 16;
    goto LABEL_15;
  }

  v20 = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v20 <= v260)
  {
    v160 = v260;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v48 = v45;
    *(v48 + 8) = v47;
    *(v48 + 16) = 0;
    return swift_willThrow();
  }

  if (v260 > 0xFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v145 = a5;
  v21 = v8[17];
  v22 = v8[10];
  if (__OFSUB__(v22, v21))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v23 = v157;
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5Tm(*v157, *(v157 + 8), v260, v22 - v21, 68222975, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
  if (v9)
  {
    return result;
  }

  v149 = 0;
  v141 = a7;
  v144 = v20;
  v254 = *(v8 + 13);
  v255 = *(v8 + 15);
  v256 = *(v8 + 17);
  v252[2] = *(v8 + 5);
  v252[3] = *(v8 + 7);
  v252[4] = *(v8 + 9);
  v253 = *(v8 + 11);
  v252[0] = *(v8 + 1);
  v252[1] = *(v8 + 3);
  v25 = *(v8 + 17);
  v258[6] = *(v8 + 16);
  v258[7] = v25;
  v258[8] = *(v8 + 18);
  v26 = *(v8 + 13);
  v258[2] = *(v8 + 12);
  v258[3] = v26;
  v27 = *(v8 + 15);
  v258[4] = *(v8 + 14);
  v258[5] = v27;
  v28 = *(v8 + 11);
  v258[0] = *(v8 + 10);
  v29 = v8[39];
  v10 = v8[40];
  v148 = v23[2];
  v30 = *(v23 + 24);
  v143 = result;
  v162 = result;
  v257 = v8[19];
  v259 = v8[38];
  v258[1] = v28;
  v8 = v258;
  v31 = specialized FullyLinearProof.proofLength.getter();
  v20 = v10 * v31;
  v146 = v10;
  if ((v10 * v31) >> 64 != (v10 * v31) >> 63)
  {
    goto LABEL_56;
  }

  v8 = v252;
  v32 = specialized FullyLinearProof.proofLength.getter();
  v142 = v29;
  if ((v29 * v32) >> 64 != (v29 * v32) >> 63)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v33 = v149;
  if (__OFADD__(v20, v29 * v32))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = &v130;
  MEMORY[0x28223BE20](v32);
  v20 = v260;
  v128 = v163;
  v129 = v260;
  v35 = _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_nTm(v148, v30, v34, partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), (&v130 - 4), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
  v10 = v33;
  if (v33)
  {
  }

  v138 = v35;
  v165 = v157[4];
  if ((v253 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v147 = v38;
  v148 = v37;
  v149 = v36;
  v49 = v143;
  if (*(v143 + 16) < v253)
  {
    goto LABEL_61;
  }

  v50 = (2 * v253) | 1;
  v139 = v165;

  outlined init with copy of Seed(&v165, &v160);
  v137 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 68222975);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v51 = swift_allocObject();
  v134 = xmmword_270C44540;
  *(v51 + 16) = xmmword_270C44540;
  *(v51 + 32) = v20;
  v160 = v51;

  specialized Array.append<A>(contentsOf:)(v52);
  v53 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v139, v137, v160);
  v54 = specialized VDAFEncodable.encodedBytes.getter((v49 + 32), 0, v50);
  v139 = v54;
  v55 = off_2880A7738[0];
  v56 = type metadata accessor for XofHmacSha256Aes128(0);
  v57 = v54;
  v133 = v56;
  v58 = v53;
  v135 = v55;
  v55(v57);

  v139 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v53 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_77;
  }

  v59 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v60 = v156;
  v61 = v58;
  v62 = v156 + 16;
  v132 = *(v156 + 2);
  v132(v16, v61 + v59, v14);
  HMAC.finalize()();
  v63 = *(v60 + 1);
  v156 = (v60 + 8);
  v131 = v63;
  v63(v16, v14);
  v64 = v153;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v136 = 0;
  v65 = *(v155 + 1);
  v155 = (v155 + 8);
  v130 = v65;
  v65(v18, v64);
  v137 = v61;
  v66 = *(v139 + v61);
  if (v66)
  {

    v67 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v67[2] = 32;
    *(v67 + 3) = 0u;
    *(v67 + 2) = 0u;
    v139 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v68 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    v69 = v136;
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v67 + 2, (v67 + 8), v139 + v66, v66 + v68);
    v20 = v69;
    if (!v69)
    {
      v139 = v67;
      v136 = v62;
      swift_endAccess();

      v8 = v154;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v260;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v71 = v157;
        v157 = v20;

        v164 = *(v71 + 5);
        if (v8[2] <= v10)
        {
          break;
        }

        v8[v10 + 4] = v139;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        swift_allocObject();
        v20 = v10;
        v139 = specialized WraparoundJointRandomness.init(parts:)(v8, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
        v72 = v143;
        v154 = ((2 * *(v143 + 16)) | 1);
        v73 = v164;

        outlined init with copy of Seed(&v164, &v159);
        v74 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 68222975);
        v75 = swift_allocObject();
        *(v75 + 16) = v134;
        *(v75 + 32) = v20;
        v159 = v75;

        specialized Array.append<A>(contentsOf:)(v76);
        v77 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v73, v74, v159);
        specialized VDAFEncodable.encodedBytes.getter((v72 + 32), 0, v154);
        v135();

        v78 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v77 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_79;
        }

        v79 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v132(v16, v77 + v79, v14);
        HMAC.finalize()();
        v131(v16, v14);
        v80 = v153;
        v81 = v157;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v14 = v81;
        v130(v18, v80);
        v82 = *(v77 + v78);
        if (!v82)
        {
          goto LABEL_80;
        }

        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = 32;
        *(v8 + 3) = 0u;
        *(v8 + 2) = 0u;
        v83 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v84 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)(v8 + 2, (v8 + 8), v82 + v83, v82 + v84);
        if (v81)
        {
          goto LABEL_81;
        }

        swift_endAccess();

        v71 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_30:
        v85 = v143;

        if (*(v71 + 2) <= v20)
        {
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
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        *&v71[8 * v20 + 32] = v8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        v16 = swift_allocObject();
        v16[4] = 0;
        v16[5] = 3;
        v20 = v142;
        v16[6] = v142;
        v16[2] = v71;
        v16[3] = 0;
        v248 = *&v163[104];
        v249 = *&v163[120];
        v250 = *&v163[136];
        v251 = *&v163[152];
        v244 = *&v163[40];
        v245 = *&v163[56];
        v246 = *&v163[72];
        v247 = *&v163[88];
        v242 = *&v163[8];
        v243 = *&v163[24];
        v86 = specialized PINECircuit.truncate(measurement:)(v85, specialized _copyCollectionToContiguousArray<A>(_:));
        v10 = v14;
        if (v14)
        {

          swift_unknownObjectRelease();

          swift_setDeallocating();
          swift_deallocClassInstance();
        }

        v141 = v71;
        if ((v248 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        v138 = v86;
        v18 = v143;
        v87 = v146;
        if (*(v143 + 16) < v248)
        {
          goto LABEL_67;
        }

        v238 = *&v163[104];
        v88 = (2 * v248) | 1;
        v239 = *&v163[120];
        v240 = *&v163[136];
        v241 = *&v163[152];
        v234 = *&v163[40];
        v235 = *&v163[56];
        v236 = *&v163[72];
        v237 = *&v163[88];
        v232 = *&v163[8];
        v233 = *&v163[24];

        v90 = specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v89, (v18 + 32), 0, v88, v139, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:));

        specialized Array.append<A>(contentsOf:)(v90, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
        v91 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(4u, 68222975);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_270C44550;
        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        if (v87 > 0xFF)
        {
          goto LABEL_69;
        }

        *(v92 + 32) = v87;
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        if (v20 > 0xFF)
        {
          goto LABEL_71;
        }

        *(v92 + 33) = v20;
        v158[0] = v92;

        specialized Array.append<A>(contentsOf:)(v93);
        v153 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v152, v91, v158[0]);

        v218 = *&v163[104];
        v219 = *&v163[120];
        v220 = *&v163[136];
        v221 = *&v163[152];
        v214 = *&v163[40];
        v215 = *&v163[56];
        v216 = *&v163[72];
        v217 = *&v163[88];
        v212 = *&v163[8];
        v213 = *&v163[24];
        v228 = *&v163[256];
        v229 = *&v163[272];
        v230 = *&v163[288];
        v231 = *&v163[304];
        v224 = *&v163[192];
        v225 = *&v163[208];
        v226 = *&v163[224];
        v227 = *&v163[240];
        v222 = *&v163[160];
        v223 = *&v163[176];
        v94 = specialized FullyLinearProof.verifierLength.getter();
        v95 = v87 * v94;
        if ((v87 * v94) >> 64 != (v87 * v94) >> 63)
        {
          goto LABEL_72;
        }

        v96 = specialized FullyLinearProof.verifierLength.getter();
        v97 = v20 * v96;
        if ((v20 * v96) >> 64 != (v20 * v96) >> 63)
        {
          goto LABEL_73;
        }

        v98 = __OFADD__(v95, v97);
        v99 = v95 + v97;
        if (v98)
        {
          goto LABEL_74;
        }

        v140 = v16;
        v158[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99 & ~(v99 >> 63), 0, MEMORY[0x277D84F90]);
        if (v87)
        {
          do
          {
            v146 = v87;
            v208 = *&v163[256];
            v209 = *&v163[272];
            v210 = *&v163[288];
            v211 = *&v163[304];
            v204 = *&v163[192];
            v205 = *&v163[208];
            v206 = *&v163[224];
            v207 = *&v163[240];
            v202 = *&v163[160];
            v203 = *&v163[176];
            specialized FullyLinearProof.proofLength.getter();
            v20 = v148;
            v154 = specialized Collection.prefix(_:)();
            v155 = v100;
            v156 = v102;
            v157 = v101;
            specialized Collection.dropFirst(_:)();
            v148 = v104;
            v149 = v103;
            v147 = v105;
            v199 = *&v163[168];
            v200 = *&v163[184];
            v201 = *&v163[200];
            specialized Gadget.wirePolynomialLength.getter();
            specialized Gadget.gadgetPolynomialLength.getter();
            swift_unknownObjectRetain();
            v106 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v153, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
            v16 = v162;
            v195 = *&v163[256];
            v196 = *&v163[272];
            v197 = *&v163[288];
            v198 = *&v163[304];
            v191 = *&v163[192];
            v192 = *&v163[208];
            v193 = *&v163[224];
            v194 = *&v163[240];
            v189 = *&v163[160];
            v190 = *&v163[176];
            v18 = v154;
            specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v158, v162, v154, v157, v156, v155, v106, MEMORY[0x277D84F90], v144);
            swift_unknownObjectRelease();

            v87 = v146 - 1;
          }

          while (v146 != 1);
        }

        if (!v142)
        {
          v8 = v140;
LABEL_50:
          v117 = v139;
          v118 = v139[3];

          v119 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
          v120 = v151;
          *v151 = v138;
          v120[1] = v118;
          v120[2] = v119;
          v121 = v260;
          *(v120 + 24) = v260;
          v122 = v117[2];
          if (*(v122 + 16) > v121)
          {
            v123 = v8[2];
            if (*(v123 + 16) > v121)
            {
              v124 = v158[0];
              v125 = *(v122 + 8 * v121 + 32);
              v126 = *(v123 + 8 * v121 + 32);

              swift_unknownObjectRelease();
              swift_setDeallocating();

              swift_deallocClassInstance();
              v127 = v150;
              *v150 = v124;
              v127[1] = v125;
              v127[2] = v126;
            }

LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v107 = 0;
        v8 = v140;
        v14 = v163;
        while (1)
        {
          v145 = v107;
          v143 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            break;
          }

          v108 = specialized VerificationJointRandomness.xof.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
          v156 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:);
          v155 = _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5;
          v157 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(3uLL, v108, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);

          v186 = *&v163[120];
          v187 = *&v163[136];
          v188 = *&v163[152];
          v182 = *&v163[56];
          v183 = *&v163[72];
          v184 = *&v163[88];
          v185 = *&v163[104];
          v180 = *&v163[24];
          v181 = *&v163[40];
          v176 = *&v163[16];
          v177 = *&v163[32];
          v178 = *&v163[48];
          v179 = *&v163[8];
          specialized FullyLinearProof.proofLength.getter();
          v18 = specialized Collection.prefix(_:)();
          v154 = v109;
          v152 = v110;
          v146 = v111;
          v112 = specialized Collection.dropFirst(_:)();
          v148 = v114;
          v149 = v113;
          v147 = v115;
          specialized Gadget.wirePolynomialLength.getter();
          specialized Gadget.gadgetPolynomialLength.getter();
          v14 = v163;
          swift_unknownObjectRetain();
          v116 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v153, v156, v155);
          v172 = *&v163[104];
          v173 = *&v163[120];
          v174 = *&v163[136];
          v175 = *&v163[152];
          v168 = *&v163[40];
          v169 = *&v163[56];
          v170 = *&v163[72];
          v171 = *&v163[88];
          v166 = *&v163[8];
          v167 = *&v163[24];
          v20 = v157;
          specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v158, v162, v18, v154, v152, v146, v116, v157, v144);
          swift_unknownObjectRelease();

          v107 = v145 + 1;
          v16 = v112;
          v8 = v140;
          if (v143 == v142)
          {
            goto LABEL_50;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      __break(1u);
LABEL_64:
      v71 = specialized _ArrayBuffer._consumeAndCreateNew()(v71);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

LABEL_81:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void PINE<>.encodedPrepareMessageFrom(_:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt1B5(a1, &v11);
  if (!v2)
  {
    v4 = v11;
    v5 = v12;
    v6 = *(v11 + 16);
    v7 = *(v12 + 16);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v15 = specialized Data._Representation.init(capacity:)(v6 + v7);
      v16 = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v13 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
      v14 = v10;
      v11 = v4;
      __swift_project_boxed_opaque_existential_1(&v11, v9);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v11);
      v13 = v9;
      v14 = v10;
      v11 = v5;
      __swift_project_boxed_opaque_existential_1(&v11, v9);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }
  }
}

{
  memcpy(__dst, v1, sizeof(__dst));
  _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt1B5(a1, &v11);
  if (!v2)
  {
    v4 = v11;
    v5 = v12;
    v6 = *(v11 + 16);
    v7 = *(v12 + 16);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v15 = specialized Data._Representation.init(capacity:)(v6 + v7);
      v16 = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v13 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v14 = v10;
      v11 = v4;
      __swift_project_boxed_opaque_existential_1(&v11, v9);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v11);
      v13 = v9;
      v14 = v10;
      v11 = v5;
      __swift_project_boxed_opaque_existential_1(&v11, v9);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }
  }
}

{
  memcpy(__dst, v1, sizeof(__dst));
  _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt1B5(a1, &v11);
  if (!v2)
  {
    v4 = v11;
    v5 = v12;
    v6 = *(v11 + 16);
    v7 = *(v12 + 16);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v15 = specialized Data._Representation.init(capacity:)(v6 + v7);
      v16 = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v13 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v14 = v10;
      v11 = v4;
      __swift_project_boxed_opaque_existential_1(&v11, v9);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v11);
      v13 = v9;
      v14 = v10;
      v11 = v5;
      __swift_project_boxed_opaque_existential_1(&v11, v9);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }
  }
}

void _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *v2)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0xE000000000000000;
    *(v27 + 16) = 1;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v7 = v2[40];
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_93;
  }

  v10 = v2[39];
  v11 = specialized FullyLinearProof.verifierLength.getter();
  v12 = v10 * v11;
  v67 = v10;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v13;
      bzero((v14 + 32), 8 * v13);
    }

    v64 = v14;
    if (v4)
    {
      v63 = a1;
      v15 = a1 + 48;
      v16 = v4;
      do
      {
        v17 = *(v15 - 16);

        specialized Array<A>.elementwiseAdd(_:)(v17);
        if (v3)
        {

          return;
        }

        v15 += 24;
        --v16;
      }

      while (v16);
      v60 = v7;
      v61 = v64;
      v18 = *(v64 + 16);
      v65 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v19 = v65;
      v20 = (v63 + 40);
      v21 = v4;
      do
      {
        v22 = *v20;
        v24 = *(v65 + 16);
        v23 = *(v65 + 24);

        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        *(v65 + 16) = v24 + 1;
        *(v65 + 8 * v24 + 32) = v22;
        v20 += 3;
        --v21;
      }

      while (v21);
      v66 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v39 = v66;
      v40 = (v63 + 48);
      do
      {
        v41 = *v40;
        v43 = *(v66 + 16);
        v42 = *(v66 + 24);

        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        }

        *(v66 + 16) = v43 + 1;
        *(v66 + 8 * v43 + 32) = v41;
        v40 += 3;
        --v4;
      }

      while (v4);
      v28 = v61;
      v5 = 0;
      v7 = v60;
      if (v60 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v18 = *(v14 + 16);
      v39 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
      v28 = v14;
      if (v7 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v7)
    {
      v29 = v7;
      v30 = 0;
      while (1)
      {
        v31 = specialized FullyLinearProof.verifierLength.getter();
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v31)
        {
          v32 = v18 - v30 >= v31;
        }

        else
        {
          v32 = 1;
        }

        v33 = !v32;
        v34 = v18;
        if (v32)
        {
          v34 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_88;
          }
        }

        if (v34 < v30)
        {
          goto LABEL_78;
        }

        if (v18 < v30)
        {
          goto LABEL_79;
        }

        if (v18 < v34)
        {
          goto LABEL_80;
        }

        v35 = v18;
        if ((v33 & 1) == 0)
        {
          v35 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_89;
          }

          if (v18 < v35)
          {
            goto LABEL_82;
          }
        }

        if (v35 < v30)
        {
          goto LABEL_81;
        }

        v36 = (2 * v34) | 1;
        v37 = swift_unknownObjectRetain();
        v38 = specialized FullyLinearProof.decide<A>(verifier:)(v37, v28 + 32, v30, v36, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
        if (v5)
        {

LABEL_76:
          swift_unknownObjectRelease_n();
          return;
        }

        if ((v38 & 1) == 0)
        {
LABEL_75:

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v59 = 0;
          *(v59 + 8) = 0;
          *(v59 + 16) = 4;
          swift_willThrow();
          goto LABEL_76;
        }

        swift_unknownObjectRelease();
        v30 = v35;
        if (!--v29)
        {
          goto LABEL_49;
        }
      }

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
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_48:
    v35 = 0;
LABEL_49:
    v44 = v67;
    if (v67 < 0)
    {
      goto LABEL_97;
    }

    v45 = v28;
    if (!v67)
    {
LABEL_71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_initStackObject();
      v55 = specialized WraparoundJointRandomness.init(parts:)(v19, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 101777407);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 3;
      inited[6] = v67;
      inited[2] = v39;
      inited[3] = 0;
      v57 = v55[3];

      v58 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_unknownObjectRelease();

      swift_setDeallocating();

      *a2 = v57;
      a2[1] = v58;
      return;
    }

    while (1)
    {
      v46 = specialized FullyLinearProof.verifierLength.getter();
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v46)
      {
        v47 = v18 - v35 >= v46;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      v49 = v18;
      if (v47)
      {
        v49 = v35 + v46;
        if (__OFADD__(v35, v46))
        {
          goto LABEL_91;
        }
      }

      if (v49 < v35)
      {
        goto LABEL_84;
      }

      if (v18 < v35)
      {
        goto LABEL_85;
      }

      if (v18 < v49)
      {
        goto LABEL_86;
      }

      v50 = v5;
      v51 = v18;
      if ((v48 & 1) == 0)
      {
        v51 = v35 + v46;
        if (__OFADD__(v35, v46))
        {
          goto LABEL_92;
        }

        if (v18 < v51)
        {
          goto LABEL_90;
        }
      }

      if (v51 < v35)
      {
        goto LABEL_87;
      }

      v52 = (2 * v49) | 1;
      v53 = swift_unknownObjectRetain();
      v54 = specialized FullyLinearProof.decide<A>(verifier:)(v53, v45 + 32, v35, v52, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
      if (v50)
      {

        swift_unknownObjectRelease_n();
        return;
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_75;
      }

      swift_unknownObjectRelease();
      v35 = v51;
      --v44;
      v5 = 0;
      if (!v44)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *v2)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0xE000000000000000;
    *(v27 + 16) = 1;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v7 = v2[40];
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_93;
  }

  v10 = v2[39];
  v11 = specialized FullyLinearProof.verifierLength.getter();
  v12 = v10 * v11;
  v67 = v10;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v13;
      bzero((v14 + 32), 4 * v13);
    }

    v64 = v14;
    if (v4)
    {
      v63 = a1;
      v15 = a1 + 48;
      v16 = v4;
      do
      {
        v17 = *(v15 - 16);

        specialized Array<A>.elementwiseAdd(_:)(v17);
        if (v3)
        {

          return;
        }

        v15 += 24;
        --v16;
      }

      while (v16);
      v60 = v7;
      v61 = v64;
      v18 = *(v64 + 16);
      v65 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v19 = v65;
      v20 = (v63 + 40);
      v21 = v4;
      do
      {
        v22 = *v20;
        v24 = *(v65 + 16);
        v23 = *(v65 + 24);

        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        *(v65 + 16) = v24 + 1;
        *(v65 + 8 * v24 + 32) = v22;
        v20 += 3;
        --v21;
      }

      while (v21);
      v66 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v39 = v66;
      v40 = (v63 + 48);
      do
      {
        v41 = *v40;
        v43 = *(v66 + 16);
        v42 = *(v66 + 24);

        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        }

        *(v66 + 16) = v43 + 1;
        *(v66 + 8 * v43 + 32) = v41;
        v40 += 3;
        --v4;
      }

      while (v4);
      v28 = v61;
      v5 = 0;
      v7 = v60;
      if (v60 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v18 = *(v14 + 16);
      v39 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
      v28 = v14;
      if (v7 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v7)
    {
      v29 = v7;
      v30 = 0;
      while (1)
      {
        v31 = specialized FullyLinearProof.verifierLength.getter();
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v31)
        {
          v32 = v18 - v30 >= v31;
        }

        else
        {
          v32 = 1;
        }

        v33 = !v32;
        v34 = v18;
        if (v32)
        {
          v34 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_88;
          }
        }

        if (v34 < v30)
        {
          goto LABEL_78;
        }

        if (v18 < v30)
        {
          goto LABEL_79;
        }

        if (v18 < v34)
        {
          goto LABEL_80;
        }

        v35 = v18;
        if ((v33 & 1) == 0)
        {
          v35 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_89;
          }

          if (v18 < v35)
          {
            goto LABEL_82;
          }
        }

        if (v35 < v30)
        {
          goto LABEL_81;
        }

        v36 = (2 * v34) | 1;
        v37 = swift_unknownObjectRetain();
        v38 = specialized FullyLinearProof.decide<A>(verifier:)(v37, v28 + 32, v30, v36);
        if (v5)
        {

LABEL_76:
          swift_unknownObjectRelease_n();
          return;
        }

        if ((v38 & 1) == 0)
        {
LABEL_75:

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v59 = 0;
          *(v59 + 8) = 0;
          *(v59 + 16) = 4;
          swift_willThrow();
          goto LABEL_76;
        }

        swift_unknownObjectRelease();
        v30 = v35;
        if (!--v29)
        {
          goto LABEL_49;
        }
      }

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
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_48:
    v35 = 0;
LABEL_49:
    v44 = v67;
    if (v67 < 0)
    {
      goto LABEL_97;
    }

    v45 = v28;
    if (!v67)
    {
LABEL_71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_initStackObject();
      v55 = specialized WraparoundJointRandomness.init(parts:)(v19, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 3;
      inited[6] = v67;
      inited[2] = v39;
      inited[3] = 0;
      v57 = v55[3];

      v58 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_unknownObjectRelease();

      swift_setDeallocating();

      *a2 = v57;
      a2[1] = v58;
      return;
    }

    while (1)
    {
      v46 = specialized FullyLinearProof.verifierLength.getter();
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v46)
      {
        v47 = v18 - v35 >= v46;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      v49 = v18;
      if (v47)
      {
        v49 = v35 + v46;
        if (__OFADD__(v35, v46))
        {
          goto LABEL_91;
        }
      }

      if (v49 < v35)
      {
        goto LABEL_84;
      }

      if (v18 < v35)
      {
        goto LABEL_85;
      }

      if (v18 < v49)
      {
        goto LABEL_86;
      }

      v50 = v5;
      v51 = v18;
      if ((v48 & 1) == 0)
      {
        v51 = v35 + v46;
        if (__OFADD__(v35, v46))
        {
          goto LABEL_92;
        }

        if (v18 < v51)
        {
          goto LABEL_90;
        }
      }

      if (v51 < v35)
      {
        goto LABEL_87;
      }

      v52 = (2 * v49) | 1;
      v53 = swift_unknownObjectRetain();
      v54 = specialized FullyLinearProof.decide<A>(verifier:)(v53, v45 + 32, v35, v52);
      if (v50)
      {

        swift_unknownObjectRelease_n();
        return;
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_75;
      }

      swift_unknownObjectRelease();
      v35 = v51;
      --v44;
      v5 = 0;
      if (!v44)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *v2)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0xE000000000000000;
    *(v27 + 16) = 1;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v7 = v2[40];
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_93;
  }

  v10 = v2[39];
  v11 = specialized FullyLinearProof.verifierLength.getter();
  v12 = v10 * v11;
  v67 = v10;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v13;
      bzero((v14 + 32), 8 * v13);
    }

    v64 = v14;
    if (v4)
    {
      v63 = a1;
      v15 = a1 + 48;
      v16 = v4;
      do
      {
        v17 = *(v15 - 16);

        specialized Array<A>.elementwiseAdd(_:)(v17);
        if (v3)
        {

          return;
        }

        v15 += 24;
        --v16;
      }

      while (v16);
      v60 = v7;
      v61 = v64;
      v18 = *(v64 + 16);
      v65 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v19 = v65;
      v20 = (v63 + 40);
      v21 = v4;
      do
      {
        v22 = *v20;
        v24 = *(v65 + 16);
        v23 = *(v65 + 24);

        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        *(v65 + 16) = v24 + 1;
        *(v65 + 8 * v24 + 32) = v22;
        v20 += 3;
        --v21;
      }

      while (v21);
      v66 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v39 = v66;
      v40 = (v63 + 48);
      do
      {
        v41 = *v40;
        v43 = *(v66 + 16);
        v42 = *(v66 + 24);

        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        }

        *(v66 + 16) = v43 + 1;
        *(v66 + 8 * v43 + 32) = v41;
        v40 += 3;
        --v4;
      }

      while (v4);
      v28 = v61;
      v5 = 0;
      v7 = v60;
      if (v60 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v18 = *(v14 + 16);
      v39 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
      v28 = v14;
      if (v7 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v7)
    {
      v29 = v7;
      v30 = 0;
      while (1)
      {
        v31 = specialized FullyLinearProof.verifierLength.getter();
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v31)
        {
          v32 = v18 - v30 >= v31;
        }

        else
        {
          v32 = 1;
        }

        v33 = !v32;
        v34 = v18;
        if (v32)
        {
          v34 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_88;
          }
        }

        if (v34 < v30)
        {
          goto LABEL_78;
        }

        if (v18 < v30)
        {
          goto LABEL_79;
        }

        if (v18 < v34)
        {
          goto LABEL_80;
        }

        v35 = v18;
        if ((v33 & 1) == 0)
        {
          v35 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_89;
          }

          if (v18 < v35)
          {
            goto LABEL_82;
          }
        }

        if (v35 < v30)
        {
          goto LABEL_81;
        }

        v36 = (2 * v34) | 1;
        v37 = swift_unknownObjectRetain();
        v38 = specialized FullyLinearProof.decide<A>(verifier:)(v37, v28 + 32, v30, v36, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
        if (v5)
        {

LABEL_76:
          swift_unknownObjectRelease_n();
          return;
        }

        if ((v38 & 1) == 0)
        {
LABEL_75:

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v59 = 0;
          *(v59 + 8) = 0;
          *(v59 + 16) = 4;
          swift_willThrow();
          goto LABEL_76;
        }

        swift_unknownObjectRelease();
        v30 = v35;
        if (!--v29)
        {
          goto LABEL_49;
        }
      }

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
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_48:
    v35 = 0;
LABEL_49:
    v44 = v67;
    if (v67 < 0)
    {
      goto LABEL_97;
    }

    v45 = v28;
    if (!v67)
    {
LABEL_71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_initStackObject();
      v55 = specialized WraparoundJointRandomness.init(parts:)(v19, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 3;
      inited[6] = v67;
      inited[2] = v39;
      inited[3] = 0;
      v57 = v55[3];

      v58 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_unknownObjectRelease();

      swift_setDeallocating();

      *a2 = v57;
      a2[1] = v58;
      return;
    }

    while (1)
    {
      v46 = specialized FullyLinearProof.verifierLength.getter();
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v46)
      {
        v47 = v18 - v35 >= v46;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      v49 = v18;
      if (v47)
      {
        v49 = v35 + v46;
        if (__OFADD__(v35, v46))
        {
          goto LABEL_91;
        }
      }

      if (v49 < v35)
      {
        goto LABEL_84;
      }

      if (v18 < v35)
      {
        goto LABEL_85;
      }

      if (v18 < v49)
      {
        goto LABEL_86;
      }

      v50 = v5;
      v51 = v18;
      if ((v48 & 1) == 0)
      {
        v51 = v35 + v46;
        if (__OFADD__(v35, v46))
        {
          goto LABEL_92;
        }

        if (v18 < v51)
        {
          goto LABEL_90;
        }
      }

      if (v51 < v35)
      {
        goto LABEL_87;
      }

      v52 = (2 * v49) | 1;
      v53 = swift_unknownObjectRetain();
      v54 = specialized FullyLinearProof.decide<A>(verifier:)(v53, v45 + 32, v35, v52, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
      if (v50)
      {

        swift_unknownObjectRelease_n();
        return;
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_75;
      }

      swift_unknownObjectRelease();
      v35 = v51;
      --v44;
      v5 = 0;
      if (!v44)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

char *PINE<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(unint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v7 = v5;
  memcpy(__dst, v7, sizeof(__dst));
  result = _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, a1, 64, __dst[13], 0, &v21);
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a4, a5, &v21);
    specialized PINE.prepareNext(state:message:)(v14, *(&v14 + 1), v15, v21, *(&v21 + 1), &v21);

    *&v20[9] = *&v23[9];
    v19[0] = v21;
    v19[1] = v22;
    *v20 = *v23;
    if (v23[24])
    {
      v16 = *(*&v19[0] + 16);
      if ((v16 * 5) >> 64 == (5 * v16) >> 63)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5 * v16, 0, MEMORY[0x277D84F90]);
        specialized AggregateShare.encode<A>(into:)(&v18, *&v19[0]);
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMR);
        return v18;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMR);
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v17 = 0xD000000000000018;
      *(v17 + 8) = 0x8000000270C519B0;
      *(v17 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v7 = v5;
  memcpy(__dst, v7, sizeof(__dst));
  result = _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, a1, 64, __dst[13], 0, &v21);
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a4, a5, &v21);
    specialized PINE.prepareNext(state:message:)(v14, *(&v14 + 1), v15, v21, *(&v21 + 1), &v21);

    *&v20[9] = *&v23[9];
    v19[0] = v21;
    v19[1] = v22;
    *v20 = *v23;
    if (v23[24])
    {
      v16 = *(*&v19[0] + 16);
      if (v16 >> 61)
      {
        __break(1u);
      }

      else
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v16, 0, MEMORY[0x277D84F90]);
        specialized Collection<>.encode<A>(into:)(&v18, *&v19[0]);
        return v18;
      }
    }

    else
    {
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v17 = 0xD000000000000018;
      *(v17 + 8) = 0x8000000270C519B0;
      *(v17 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v7 = v5;
  memcpy(__dst, v7, sizeof(__dst));
  result = _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, a1, 64, __dst[13], 0, &v21);
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a4, a5, &v21);
    specialized PINE.prepareNext(state:message:)(v14, *(&v14 + 1), v15, v21, *(&v21 + 1), &v21);

    *&v20[9] = *&v23[9];
    v19[0] = v21;
    v19[1] = v22;
    *v20 = *v23;
    if (v23[24])
    {
      v16 = *(*&v19[0] + 16);
      if (v16 >> 60)
      {
        __break(1u);
      }

      else
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v16, 0, MEMORY[0x277D84F90]);
        specialized AggregateShare.encode<A>(into:)(&v18, *&v19[0]);
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMR);
        return v18;
      }
    }

    else
    {
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMR);
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v17 = 0xD000000000000018;
      *(v17 + 8) = 0x8000000270C519B0;
      *(v17 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t specialized PINE.prepareNext(state:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if ((specialized static Seed.== infix(_:_:)(a3, a5) & 1) == 0)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v12 = "ize mismatched: ";
    v13 = 43;
LABEL_7:
    MEMORY[0x2743B25F0](v13 | 0xD000000000000010, v12 | 0x8000000000000000);

    v14 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v15 = String.init<A>(describing:)();
    goto LABEL_8;
  }

  if ((specialized static Seed.== infix(_:_:)(a2, a4) & 1) == 0)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v12 = "),\nin message: (";
    v13 = 41;
    goto LABEL_7;
  }

  if (*(a1 + 16) == *(v6 + 104))
  {
    *a6 = a1;
    *(a6 + 56) = 1;
  }

  _StringGuts.grow(_:)(49);

  v18 = 0xD000000000000033;
  v19 = 0x8000000270C51AE0;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v17);

  MEMORY[0x2743B25F0](0x203A746F670A2CLL, 0xE700000000000000);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_8:
  MEMORY[0x2743B25F0](v15);

  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v16 = v18;
  *(v16 + 8) = v19;
  *(v16 + 16) = 1;
  return swift_willThrow();
}

{
  return sub_270B603F8(a1, a2, a3, a4, a5, a6);
}

_BYTE *PINE<>.outputShare(from:)@<X0>(uint64_t *a1@<X8>, _BYTE *a2@<X0>, _BYTE *a3@<X1>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_SWTt0g5(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

char *PINE<>.encodedAggregateShare(_:)(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if ((v2 * 5) >> 64 == (5 * v2) >> 63)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5 * v2, 0, MEMORY[0x277D84F90]);
    specialized AggregateShare.encode<A>(into:)(&v3, v1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 60)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v2, 0, MEMORY[0x277D84F90]);
    specialized AggregateShare.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

void PINE<>.unshard(_:numOfMeasurements:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, v3, sizeof(__dst));
  _s4VDAF4PINEV7unshard_17numOfMeasurements4into9parameteryqd___Siqd_0_zAA11VoidCodableVtKSkRd__SMRd_0_7ElementQyd_0_AJRt_AA14AggregateShareVyxGAJRtd__r0_lFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CSayANyARGGSrySfGTt2B5Tf4ndnn_nTm(a1, a3, &type metadata for Field40, specialized Array<A>.elementwiseAdd(_:), specialized PINECircuit.decode<A>(data:numOfMeasurements:into:));
}

{
  memcpy(__dst, v3, sizeof(__dst));
  _s4VDAF4PINEV7unshard_17numOfMeasurements4into9parameteryqd___Siqd_0_zAA11VoidCodableVtKSkRd__SMRd_0_7ElementQyd_0_AJRt_AA14AggregateShareVyxGAJRtd__r0_lFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CSayANyARGGSrySfGTt2B5Tf4ndnn_n(a1, a3);
}

uint64_t specialized Array<A>.elementwiseAdd(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_17:
    _StringGuts.grow(_:)(28);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0xD000000000000020;
    *(v13 + 8) = 0x8000000270C52260;
    *(v13 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 8)
      {
        v7 = *(v4 + i);
        v6 = *(v2 + i);
        if (!v7)
        {
          goto LABEL_7;
        }

        v8 = v7 <= 0xFFFEB00001;
        v9 = 0xFFFEB00001 - v7;
        if (!v8)
        {
          break;
        }

        if (v6 >= v9)
        {
          v6 -= v9;
        }

        else
        {
          v8 = v9 <= 0xFFFEB00001;
          v10 = 0xFFFEB00001 - v9;
          if (!v8)
          {
            goto LABEL_20;
          }

          v8 = __CFADD__(v6, v10);
          v6 += v10;
          if (v8)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

LABEL_7:
        *(v2 + i) = v6;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_17:
    _StringGuts.grow(_:)(28);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0xD000000000000020;
    *(v13 + 8) = 0x8000000270C521B0;
    *(v13 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 4)
      {
        v7 = *(v4 + i);
        v6 = *(v2 + i);
        if (!v7)
        {
          goto LABEL_7;
        }

        v8 = v7 <= 0xFFF00001;
        v9 = -1048575 - v7;
        if (!v8)
        {
          break;
        }

        if (v6 >= v9)
        {
          v6 -= v9;
        }

        else
        {
          v8 = v9 <= 0xFFF00001;
          v10 = -1048575 - v9;
          if (!v8)
          {
            goto LABEL_20;
          }

          v8 = __CFADD__(v6, v10);
          v6 += v10;
          if (v8)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

LABEL_7:
        *(v2 + i) = v6;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_17:
    _StringGuts.grow(_:)(28);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0xD000000000000020;
    *(v13 + 8) = 0x8000000270C51A10;
    *(v13 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 8)
      {
        v7 = *(v4 + i);
        v6 = *(v2 + i);
        if (!v7)
        {
          goto LABEL_7;
        }

        v8 = v7 <= 0xFFFFFFFF00000001;
        v9 = 0xFFFFFFFF00000001 - v7;
        if (!v8)
        {
          break;
        }

        if (v6 >= v9)
        {
          v6 -= v9;
        }

        else
        {
          v8 = v9 <= 0xFFFFFFFF00000001;
          v10 = 0xFFFFFFFF00000001 - v9;
          if (!v8)
          {
            goto LABEL_20;
          }

          v8 = __CFADD__(v6, v10);
          v6 += v10;
          if (v8)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

LABEL_7:
        *(v2 + i) = v6;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }
  }

  return result;
}

void *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAFGTt0g5(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (v4 == 5 * (v4 / 5))
  {
    return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyANGTt1g5(result, a2, a3, a4, 1, v4 / 5, 5, 0);
  }

  else
  {
    _StringGuts.grow(_:)(69);
    MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3034646C65);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
    swift_unknownObjectRelease();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

_BYTE *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_SWTt0g5(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    v2 = (a2 - a1) / 5;
    if (a2 - a1 != 5 * v2)
    {
      _StringGuts.grow(_:)(69);
      MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3034646C65);
      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v4);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      *(v5 + 16) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v2 = 0;
  }

  return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_SWTt1g5(a1, a2, 1, v2, 5, 0);
}

char *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if ((v4 & 3) != 0)
  {
    _StringGuts.grow(_:)(69);
    MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3233646C65);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
    swift_unknownObjectRelease();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyANGTt1g5(result, a2, a3, a4, 1, v4 >> 2, 4, 0);
  }

  return result;
}

char *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(char *a1, _BYTE *a2)
{
  if (a1)
  {
    if (((a2 - a1) & 3) != 0)
    {
      _StringGuts.grow(_:)(69);
      MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3233646C65);
      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v2);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      *(v4 + 16) = 0;
      return swift_willThrow();
    }

    v6 = (a2 - a1) >> 2;
  }

  else
  {
    v6 = 0;
  }

  return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt1g5(a1, a2, 1, v6, 4, 0);
}

void *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAFGTt0g5(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if ((v4 & 7) != 0)
  {
    _StringGuts.grow(_:)(69);
    MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3436646C65);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
    swift_unknownObjectRelease();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyANGTt1g5(result, a2, a3, a4, 1, v4 >> 3, 8, 0);
  }

  return result;
}

_BYTE *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_SWTt0g5(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    if (((a2 - a1) & 7) != 0)
    {
      _StringGuts.grow(_:)(69);
      MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3436646C65);
      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v2);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      *(v4 + 16) = 0;
      return swift_willThrow();
    }

    v6 = (a2 - a1) >> 3;
  }

  else
  {
    v6 = 0;
  }

  return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_SWTt1g5(a1, a2, 1, v6, 8, 0);
}

uint64_t specialized Collection<>.encode<A>(into:)(uint64_t result, uint64_t a2)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    do
    {
      v5 = *v3++;
      v6 = (0xCFFE47FFFEAFFFFFLL * v5 * 0xFFFEB00001uLL) >> 64;
      if (__CFADD__(-v5, v5))
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = v6;
      }

      if (v7 >= 0xFFFEB00001)
      {
        v7 = 0;
      }

      v14 = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      v16[3] = v8;
      v16[4] = v4;
      v9 = swift_allocObject();
      v16[0] = v9;
      *(v9 + 16) = xmmword_270C44560;
      *(v9 + 32) = &v14;
      *(v9 + 40) = v15;
      v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
      v11 = MEMORY[0x28223BE20](v10);
      v12 = v11[1];
      v15[0] = *v11;
      v15[1] = v12;
      Slice<>.withUnsafeBytes<A>(_:)();
      v13 = __swift_destroy_boxed_opaque_existential_1(v16);
      --v2;
    }

    while (v2);
  }

  return v13;
}

{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 41);
    do
    {
      v5 = *(v3 - 9);
      if (!*(v5 + 16))
      {
        __break(1u);
      }

      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v12 = v8;
      v13 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
      v11[0] = v5;
      __swift_project_boxed_opaque_existential_1(v11, v8);
      swift_bridgeObjectRetain_n();
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v11);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
      v12 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>, &_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR, MEMORY[0x277CC9EF0]);
      v13 = v10;
      LOBYTE(v11[0]) = v7;
      __swift_project_boxed_opaque_existential_1(v11, v9);
      Data._Representation.replaceSubrange(_:with:count:)();
      __swift_destroy_boxed_opaque_existential_1(v11);
      v12 = v9;
      v13 = v10;
      LOBYTE(v11[0]) = v6;
      __swift_project_boxed_opaque_existential_1(v11, v9);
      Data._Representation.replaceSubrange(_:with:count:)();

      v4 = __swift_destroy_boxed_opaque_existential_1(v11);
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return v4;
}

void specialized Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277CC9C28]);
    do
    {
      v5 = *v3++;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v8 = v4;
      v6[0] = v5;
      __swift_project_boxed_opaque_existential_1(v6, v7);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v6);
      --v2;
    }

    while (v2);
  }
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v7 + 32], v6 + 32, 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, size_t a3, size_t a4)
{
  result = specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, a4);
  v10 = *v4;
  v11 = *(*v4 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v10 + 3) >> 1, v15 < v12))
  {
    if (v11 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v10);
    v15 = *(v10 + 3) >> 1;
  }

  v17 = *(v10 + 2);
  v18 = v15 - v17;
  result = specialized Slice._copyContents(initializing:)(&v34, &v10[v17 + 32], v15 - v17, a1, a2, a3, a4);
  if (result < v13)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v20 = *(v10 + 2);
    v21 = __OFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v10 + 2) = v22;
  }

  if (result != v18)
  {
LABEL_13:
    *v4 = v10;
    return result;
  }

LABEL_16:
  v23 = v35;
  if (v38 == v35)
  {
    goto LABEL_13;
  }

  if (v38 >= v35 || (v24 = v34, v38 < v34))
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    v25 = v36;
    if (v36)
    {
      v26 = v37 - v36;
    }

    else
    {
      v26 = 0;
    }

    if ((v38 & 0x8000000000000000) == 0 && v38 < v26)
    {
      v13 = *(v10 + 2);
      v27 = *(v36 + v38);
      v28 = v38 + 1;
      while (1)
      {
LABEL_26:
        v29 = *(v10 + 3);
        v30 = v29 >> 1;
        if ((v29 >> 1) < v13 + 1)
        {
          v32 = v10;
          v33 = v27;
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v13 + 1, 1, v32);
          v27 = v33;
          v10 = result;
          v30 = *(result + 24) >> 1;
          v31 = v13 - v30;
          if (v13 < v30)
          {
LABEL_28:
            v19 = 0;
            while (1)
            {
              v10[v13 + 32 + v19] = v27;
              if (v23 - v28 == v19)
              {
                break;
              }

              if (v28 < v24 || v28 + v19 >= v23)
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              if (v28 < 0 || v28 + v19 >= v26)
              {
                goto LABEL_41;
              }

              v27 = *(v25 + v28 + v19++);
              if (!(v31 + v19))
              {
                v28 += v19;
                v13 = v30;
                *(v10 + 2) = v30;
                goto LABEL_26;
              }
            }

LABEL_39:
            *(v10 + 2) = v13 + v19 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v31 = v13 - v30;
          if (v13 < v30)
          {
            goto LABEL_28;
          }
        }

        *(v10 + 2) = v13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Iterator();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  v14 = *v2;
  v15 = *(*v2 + 2);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v25 = v2;
    v26 = *(v14 + 2);
    lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
    dispatch thunk of IteratorProtocol.next()();
    if (v31)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v27 = *(v14 + 3);
      v28 = v27 >> 1;
      if ((v27 >> 1) >= v26 + 1)
      {
        break;
      }

      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v26 + 1, 1, v14);
      v29 = v31;
      v28 = *(v14 + 3) >> 1;
      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v14 + 2) = v26;
      v2 = v25;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    v29 = 0;
    do
    {
LABEL_30:
      if (v26 >= v28)
      {
        break;
      }

      v14[v26++ + 32] = v30[14];
      dispatch thunk of IteratorProtocol.next()();
      v29 = v31;
    }

    while ((v31 & 1) == 0);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = *(v14 + 3) >> 1, v18 < v16))
  {
    if (v15 <= v16)
    {
      v19 = v15 + v11;
    }

    else
    {
      v19 = v15;
    }

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v19, 1, v14);
    v18 = *(v14 + 3) >> 1;
  }

  v20 = v18 - *(v14 + 2);
  v21 = Data._copyContents(initializing:)();
  result = outlined consume of Data._Representation(a1, a2);
  if (v21 < v11)
  {
    goto LABEL_24;
  }

  if (v21 < 1)
  {
    goto LABEL_21;
  }

  v22 = *(v14 + 2);
  v23 = __OFADD__(v22, v21);
  v24 = v22 + v21;
  if (!v23)
  {
    *(v14 + 2) = v24;
LABEL_21:
    if (v21 != v20)
    {
LABEL_22:
      result = (*(v6 + 8))(v9, v5);
      *v2 = v14;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v15 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v8 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v5;
  v9 = *(*v5 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_8;
  }

  v13 = *(v8 + 24) >> 1;
  if (v13 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == a3)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      v8 = a5();
      v13 = *(v8 + 24) >> 1;
      if (v6 != a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  v14 = *(v8 + 16);
  if (v13 - v14 < v7)
  {
    goto LABEL_16;
  }

  memcpy((v8 + 8 * v14 + 32), (a2 + 8 * a3), 8 * v7);
  if (v7 <= 0)
  {
LABEL_13:
    swift_unknownObjectRelease();
    *v5 = v8;
    return;
  }

  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v7);
  v17 = v15 + v7;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t specialized VerificationJointRandomness.seed.getter(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  if (v3[3])
  {
    v5 = v3[3];
  }

  else
  {
    v6 = *v3;
    v7 = v4[2];
    v8 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](a1, a2, a3, &protocol conformance descriptor for VerificationJointRandomness<A, B>);
    v5 = static JointRandomness.jointRandSeed(parts:)(v7, v6, v8);
    v4[3] = v5;
  }

  return v5;
}

uint64_t specialized VerificationJointRandomness.xof.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = specialized closure #1 in VerificationJointRandomness.xof.getter(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
LABEL_6:

    return v1;
  }

  v2 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<Prio3<SumVectorType<Field64, UnsafeRawBufferPointer>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
  v3 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44540;
  v5 = *(v0 + 48);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 <= 0xFF)
  {
    *(result + 32) = v5;
    v1 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v2, v3, result);

    swift_setDeallocating();
    *(v0 + 32) = v1;

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t specialized VerificationJointRandomness.xof.getter(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*(v4 + 32))
  {
    v5 = *(v4 + 32);
LABEL_6:

    return v5;
  }

  v6 = a4;
  v7 = specialized VerificationJointRandomness.seed.getter(a1, a2, a3);
  v8 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(2u, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44540;
  v10 = *(v4 + 48);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 <= 0xFF)
  {
    *(result + 32) = v10;
    v5 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v7, v8, result);

    swift_setDeallocating();
    *(v4 + 32) = v5;

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if (*(a1 + 16) == 32)
  {

    result = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a1, a2, a3);
    if (!*(result + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      v15 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      v16 = result;
      swift_beginAccess();
      (*(v7 + 16))(v9, v16 + v15, v6);
      HMAC.finalize()();
      (*(v7 + 8))(v9, v6);
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      (*(v11 + 8))(v14, v10);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized VerificationJointRandomness.next()()
{
  v1 = *(v0 + 40);
  result = specialized VerificationJointRandomness.xof.getter();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (v1)
    {
      v9 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v4 = v9;
      do
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5(v3, &v8);
        v5 = v8;
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v4 = v9;
        }

        *(v4 + 16) = v7 + 1;
        *(v4 + 8 * v7 + 32) = v5;
        --v1;
      }

      while (v1);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

{
  v1 = *(v0 + 40);
  result = specialized VerificationJointRandomness.xof.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (v1)
    {
      v9 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v4 = v9;
      do
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v3, &v8);
        v5 = v8;
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v4 = v9;
        }

        *(v4 + 16) = v7 + 1;
        *(v4 + 4 * v7 + 32) = v5;
        --v1;
      }

      while (v1);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = MEMORY[0x277D84F90];
    if (result)
    {
      v9 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v3 = v9;
      do
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a2, &v8);
        v5 = v8;
        v9 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v9;
        }

        *(v3 + 16) = v7 + 1;
        *(v3 + 4 * v7 + 32) = v5;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  return result;
}

unint64_t _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(unint64_t result, uint64_t a2, void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = MEMORY[0x277D84F90];
    if (result)
    {
      v13 = MEMORY[0x277D84F90];
      a3(0, result, 0);
      v5 = v13;
      do
      {
        a4(&v12, a2);
        v9 = v12;
        v13 = v5;
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          a3(v10 > 1, v11 + 1, 1);
          v5 = v13;
        }

        *(v5 + 16) = v11 + 1;
        *(v5 + 8 * v11 + 32) = v9;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  return result;
}

uint64_t _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 5 * a5;
  if ((a5 * 5) >> 64 != (5 * a5) >> 63)
  {
    __break(1u);
    goto LABEL_59;
  }

  v9 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v14 != v9)
  {
    _StringGuts.grow(_:)(24);

    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v28 = 0xD000000000000039;
    v28[1] = 0x8000000270C522D0;
    return swift_willThrow();
  }

  v41 = a7;
  v42 = a3;
  v44 = v8;
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v16 = specialized Collection.prefix(_:)();
  v12 = v17;
  v9 = v18;
  v20 = v19;
  v7 = specialized Collection.dropFirst(_:)();
  v43 = v21;
  v14 = v22;
  v10 = v23;

  v24 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAFGTt0g5(v16, v12, v9, v20);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v10 >> 1;
  v29 = (v10 >> 1) - v14;
  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_60;
  }

  v30 = v10;
  v12 = v10 >> 1;
  v31 = v7;
  if (v29 >= 0x20)
  {
    v12 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_75;
    }
  }

  if (v12 < v14)
  {
    goto LABEL_61;
  }

  if (v11 < v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 >>= 1;
  if (v29 >= 0x20)
  {
    v10 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_76;
    }

    if (v11 < v10)
    {
      goto LABEL_65;
    }
  }

  if (v10 < v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v44 = v24;
  v9 = v30 & 1;
  if (v30)
  {
    v40 = v30;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v34 = swift_dynamicCastClass();
    if (!v34)
    {
      swift_unknownObjectRelease();
      v34 = MEMORY[0x277D84F90];
    }

    v35 = *(v34 + 16);

    if (__OFSUB__(v12, v14))
    {
      goto LABEL_77;
    }

    if (v35 != v12 - v14)
    {
      goto LABEL_78;
    }

    v31 = v7;
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v12 = v43;
    if (v14)
    {
      goto LABEL_34;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v32 = v30 & 1 | (2 * v12);
    v12 = v43;
    specialized _copyCollectionToContiguousArray<A>(_:)(v31, v43, v14, v32);
    v14 = v33;
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    v36 = v11 - v10;
    if (__OFSUB__(v11, v10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v7 = v11;
    if (v36 >= 0x20)
    {
      v7 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        swift_unknownObjectRelease_n();
LABEL_47:
        specialized _copyCollectionToContiguousArray<A>(_:)(v31, v12, v10, v9 | (2 * v7));
        v9 = v37;
        goto LABEL_54;
      }
    }

    if (v7 < v10)
    {
      goto LABEL_68;
    }

    if (v11 < v7)
    {
      goto LABEL_69;
    }

    if (v7 < 0)
    {
      goto LABEL_70;
    }

    if (v36 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_80;
      }

      if (v11 < (v10 + 32))
      {
        goto LABEL_71;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_72;
    }

    if (!v9)
    {
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v38 = swift_dynamicCastClass();
    if (!v38)
    {
      swift_unknownObjectRelease();
      v38 = MEMORY[0x277D84F90];
    }

    v39 = *(v38 + 16);

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_81;
    }

    if (v39 != v7 - v10)
    {
      goto LABEL_82;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v9)
    {
      goto LABEL_55;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:
    swift_unknownObjectRelease();
LABEL_55:
    result = swift_unknownObjectRelease();
    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v42 <= 0xFF)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v31 = v7;
    swift_unknownObjectRelease_n();
    v30 = v40;
  }

  *v41 = v44;
  *(v41 + 8) = v14;
  *(v41 + 16) = v9;
  *(v41 + 24) = v42;
  return result;
}

uint64_t _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if ((a5 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_59;
  }

  v9 = 4 * a5 + a4;
  if (__OFADD__(4 * a5, a4))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v14 != v9)
  {
    _StringGuts.grow(_:)(24);

    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v27 = 0xD000000000000039;
    v27[1] = 0x8000000270C521E0;
    return swift_willThrow();
  }

  v40 = a7;
  v41 = a3;
  v43 = v8;
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v15 = specialized Collection.prefix(_:)();
  v12 = v16;
  v9 = v17;
  v19 = v18;
  v7 = specialized Collection.dropFirst(_:)();
  v42 = v20;
  v14 = v21;
  v10 = v22;

  v23 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(v15, v12, v9, v19);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v10 >> 1;
  v28 = (v10 >> 1) - v14;
  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_60;
  }

  v29 = v10;
  v12 = v10 >> 1;
  v30 = v7;
  if (v28 >= 0x20)
  {
    v12 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_75;
    }
  }

  if (v12 < v14)
  {
    goto LABEL_61;
  }

  if (v11 < v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 >>= 1;
  if (v28 >= 0x20)
  {
    v10 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_76;
    }

    if (v11 < v10)
    {
      goto LABEL_65;
    }
  }

  if (v10 < v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = v23;
  v9 = v29 & 1;
  if (v29)
  {
    v39 = v29;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      swift_unknownObjectRelease();
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);

    if (__OFSUB__(v12, v14))
    {
      goto LABEL_77;
    }

    if (v34 != v12 - v14)
    {
      goto LABEL_78;
    }

    v30 = v7;
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v12 = v42;
    if (v14)
    {
      goto LABEL_34;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v31 = v29 & 1 | (2 * v12);
    v12 = v42;
    specialized _copyCollectionToContiguousArray<A>(_:)(v30, v42, v14, v31);
    v14 = v32;
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    v35 = v11 - v10;
    if (__OFSUB__(v11, v10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v7 = v11;
    if (v35 >= 0x20)
    {
      v7 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        swift_unknownObjectRelease_n();
LABEL_47:
        specialized _copyCollectionToContiguousArray<A>(_:)(v30, v12, v10, v9 | (2 * v7));
        v9 = v36;
        goto LABEL_54;
      }
    }

    if (v7 < v10)
    {
      goto LABEL_68;
    }

    if (v11 < v7)
    {
      goto LABEL_69;
    }

    if (v7 < 0)
    {
      goto LABEL_70;
    }

    if (v35 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_80;
      }

      if (v11 < (v10 + 32))
      {
        goto LABEL_71;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_72;
    }

    if (!v9)
    {
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = MEMORY[0x277D84F90];
    }

    v38 = *(v37 + 16);

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_81;
    }

    if (v38 != v7 - v10)
    {
      goto LABEL_82;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v9)
    {
      goto LABEL_55;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:
    swift_unknownObjectRelease();
LABEL_55:
    result = swift_unknownObjectRelease();
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v41 <= 0xFF)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v30 = v7;
    swift_unknownObjectRelease_n();
    v29 = v39;
  }

  *v40 = v43;
  *(v40 + 8) = v14;
  *(v40 + 16) = v9;
  *(v40 + 24) = v41;
  return result;
}

uint64_t _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if ((a5 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_59;
  }

  v9 = 8 * a5 + a4;
  if (__OFADD__(8 * a5, a4))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v14 != v9)
  {
    _StringGuts.grow(_:)(24);

    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v27 = 0xD000000000000039;
    v27[1] = 0x8000000270C51B20;
    return swift_willThrow();
  }

  v40 = a7;
  v41 = a3;
  v43 = v8;
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v15 = specialized Collection.prefix(_:)();
  v12 = v16;
  v9 = v17;
  v19 = v18;
  v7 = specialized Collection.dropFirst(_:)();
  v42 = v20;
  v14 = v21;
  v10 = v22;

  v23 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAFGTt0g5(v15, v12, v9, v19);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v10 >> 1;
  v28 = (v10 >> 1) - v14;
  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_60;
  }

  v29 = v10;
  v12 = v10 >> 1;
  v30 = v7;
  if (v28 >= 0x20)
  {
    v12 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_75;
    }
  }

  if (v12 < v14)
  {
    goto LABEL_61;
  }

  if (v11 < v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 >>= 1;
  if (v28 >= 0x20)
  {
    v10 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_76;
    }

    if (v11 < v10)
    {
      goto LABEL_65;
    }
  }

  if (v10 < v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = v23;
  v9 = v29 & 1;
  if (v29)
  {
    v39 = v29;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      swift_unknownObjectRelease();
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);

    if (__OFSUB__(v12, v14))
    {
      goto LABEL_77;
    }

    if (v34 != v12 - v14)
    {
      goto LABEL_78;
    }

    v30 = v7;
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v12 = v42;
    if (v14)
    {
      goto LABEL_34;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v31 = v29 & 1 | (2 * v12);
    v12 = v42;
    specialized _copyCollectionToContiguousArray<A>(_:)(v30, v42, v14, v31);
    v14 = v32;
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    v35 = v11 - v10;
    if (__OFSUB__(v11, v10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v7 = v11;
    if (v35 >= 0x20)
    {
      v7 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        swift_unknownObjectRelease_n();
LABEL_47:
        specialized _copyCollectionToContiguousArray<A>(_:)(v30, v12, v10, v9 | (2 * v7));
        v9 = v36;
        goto LABEL_54;
      }
    }

    if (v7 < v10)
    {
      goto LABEL_68;
    }

    if (v11 < v7)
    {
      goto LABEL_69;
    }

    if (v7 < 0)
    {
      goto LABEL_70;
    }

    if (v35 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_80;
      }

      if (v11 < (v10 + 32))
      {
        goto LABEL_71;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_72;
    }

    if (!v9)
    {
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = MEMORY[0x277D84F90];
    }

    v38 = *(v37 + 16);

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_81;
    }

    if (v38 != v7 - v10)
    {
      goto LABEL_82;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v9)
    {
      goto LABEL_55;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:
    swift_unknownObjectRelease();
LABEL_55:
    result = swift_unknownObjectRelease();
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v41 <= 0xFF)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v30 = v7;
    swift_unknownObjectRelease_n();
    v29 = v39;
  }

  *v40 = v43;
  *(v40 + 8) = v14;
  *(v40 + 16) = v9;
  *(v40 + 24) = v41;
  return result;
}

uint64_t specialized AggregateShare.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v4 = *v3++;
      v5 = (0xCFFE47FFFEAFFFFFLL * v4 * 0xFFFEB00001uLL) >> 64;
      if (__CFADD__(-v4, v4))
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = v5;
      }

      if (v6 >= 0xFFFEB00001)
      {
        v6 = 0;
      }

      v8 = v6;
      result = specialized Array.append<A>(contentsOf:)(0, 5, &v8, &v9);
      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v4 = (0xFFFFFFFEFFFFFFFFLL * v6 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v6, v6))
      {
        if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v4;
        }

        else
        {
          v4 += 0x100000000;
        }
      }

      v7 = v4;
      result = specialized Array.append<A>(contentsOf:)(0, 8, &v7, &v8);
      --v2;
    }

    while (v2);
  }

  return result;
}

{

  return specialized Collection<>.encode<A>(into:)(a1, a2);
}

uint64_t *specialized WraparoundJointRandomness.init(parts:)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a5;
  v7 = v5;
  v8 = *v5;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  v9 = v8;
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](a2, a3, a4, &protocol conformance descriptor for WraparoundJointRandomness<A, B>);

  v12 = static JointRandomness.jointRandSeed(parts:)(v11, v9, v10);

  *(v7 + 24) = v12;

  v13 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(7u, v6);
  v14 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v12, v13, MEMORY[0x277D84F90]);

  *(v7 + 32) = v14;
  return v7;
}

void *_s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyALGTt1g5(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == -1)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_19:
    swift_willThrow();
    return v11;
  }

  v11 = a5;
  v12 = (a4 >> 1) - a3;
  v13 = __OFSUB__(a4 >> 1, a3);
  if (a6)
  {
    if (!v13)
    {
      if (v12 == a5)
      {
        if ((a4 & 1) == 0)
        {
LABEL_9:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v11 = v14;
LABEL_26:
          swift_unknownObjectRelease();
          return v11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        v21 = a1;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v6 = v21;
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x277D84F90];
        }

        v23 = *(v22 + 16);

        if (v23 == v11)
        {
          v11 = swift_dynamicCastClass();
          if (!v11)
          {
            swift_unknownObjectRelease();
            v11 = MEMORY[0x277D84F90];
          }

          goto LABEL_26;
        }

LABEL_31:
        swift_unknownObjectRelease();
        a1 = v6;
        a4 = v10;
        a3 = v9;
        a2 = v8;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a5 * 5) >> 64 != (5 * a5) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 != 5 * a5)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
    swift_unknownObjectRelease();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
LABEL_18:
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAFGTt0g5(a1, a2, a3, a4);
  if (!v7)
  {
    return v16;
  }

  return v11;
}

char *_s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1g5(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == -1)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_19:
    swift_willThrow();
    return v11;
  }

  v11 = a5;
  v12 = (a4 >> 1) - a3;
  v13 = __OFSUB__(a4 >> 1, a3);
  if (a6)
  {
    if (!v13)
    {
      if (v12 == a5)
      {
        if ((a4 & 1) == 0)
        {
LABEL_9:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v11 = v14;
LABEL_26:
          swift_unknownObjectRelease();
          return v11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        v21 = a1;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v6 = v21;
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x277D84F90];
        }

        v23 = *(v22 + 16);

        if (v23 == v11)
        {
          v11 = swift_dynamicCastClass();
          if (!v11)
          {
            swift_unknownObjectRelease();
            v11 = MEMORY[0x277D84F90];
          }

          goto LABEL_26;
        }

LABEL_31:
        swift_unknownObjectRelease();
        a1 = v6;
        a4 = v10;
        a3 = v9;
        a2 = v8;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a5 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 != 4 * a5)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
    swift_unknownObjectRelease();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
LABEL_18:
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(a1, a2, a3, a4);
  if (!v7)
  {
    return v16;
  }

  return v11;
}

void *_s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == -1)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_19:
    swift_willThrow();
    return v11;
  }

  v11 = a5;
  v12 = (a4 >> 1) - a3;
  v13 = __OFSUB__(a4 >> 1, a3);
  if (a6)
  {
    if (!v13)
    {
      if (v12 == a5)
      {
        if ((a4 & 1) == 0)
        {
LABEL_9:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v11 = v14;
LABEL_26:
          swift_unknownObjectRelease();
          return v11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        v21 = a1;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v6 = v21;
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x277D84F90];
        }

        v23 = *(v22 + 16);

        if (v23 == v11)
        {
          v11 = swift_dynamicCastClass();
          if (!v11)
          {
            swift_unknownObjectRelease();
            v11 = MEMORY[0x277D84F90];
          }

          goto LABEL_26;
        }

LABEL_31:
        swift_unknownObjectRelease();
        a1 = v6;
        a4 = v10;
        a3 = v9;
        a2 = v8;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a5 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 != 8 * a5)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
    swift_unknownObjectRelease();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
LABEL_18:
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAFGTt0g5(a1, a2, a3, a4);
  if (!v7)
  {
    return v16;
  }

  return v11;
}

void specialized Share.encode<A>(into:)(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(v3);
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v6 = *v5++;
        v7 = (0xCFFE47FFFEAFFFFFLL * v6 * 0xFFFEB00001uLL) >> 64;
        if (__CFADD__(-v6, v6))
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = v7;
        }

        if (v8 >= 0xFFFEB00001)
        {
          v8 = 0;
        }

        v9 = v8;
        specialized Array.append<A>(contentsOf:)(0, 5, &v9, &v10);
        --v4;
      }

      while (v4);
    }
  }
}

{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(v3);
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v7 = *v5++;
        v6 = (0xFFFFFFFEFFFFFFFFLL * v7 * 0xFFFFFFFF00000001) >> 64;
        if (__CFADD__(-v7, v7))
        {
          if (v6 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            ++v6;
          }

          else
          {
            v6 += 0x100000000;
          }
        }

        v8 = v6;
        specialized Array.append<A>(contentsOf:)(0, 8, &v8, &v9);
        --v4;
      }

      while (v4);
    }
  }
}

uint64_t _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSRySfGTt2B5@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  if (*result <= a2)
  {
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
    swift_willThrow();
    return outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v5, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
  }

  if (a2)
  {
    result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(result, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
    v6 = 32;
    v7 = 32;
LABEL_10:
    *a3 = v7;
    *(a3 + 8) = a2 != 0;
    *(a3 + 16) = v6;
    *(a3 + 24) = a2 != 0;
    return result;
  }

  v19 = *(result + 136);
  v18 = *(result + 72);
  v7 = *(&v18 + 1) - v19;
  if (__OFSUB__(*(&v18 + 1), v19))
  {
    goto LABEL_12;
  }

  v12 = *(result + 320);
  result = specialized FullyLinearProof.proofLength.getter();
  v13 = v12 * result;
  if ((v12 * result) >> 64 != (v12 * result) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = *(v5 + 312);
  v15 = specialized FullyLinearProof.proofLength.getter();
  result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v5, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
  v16 = v14 * v15;
  if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = __OFADD__(v13, v16);
  v6 = v13 + v16;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSRySfGTt2B5Tm@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (*result <= a2)
  {
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    swift_willThrow();
    return outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v9, a3, a4);
  }

  if (a2)
  {
    result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(result, a3, a4);
    v10 = 32;
    v11 = 32;
LABEL_10:
    *a5 = v11;
    *(a5 + 8) = a2 != 0;
    *(a5 + 16) = v10;
    *(a5 + 24) = a2 != 0;
    return result;
  }

  v23 = *(result + 136);
  v22 = *(result + 72);
  if (__OFSUB__(*(&v22 + 1), v23))
  {
    goto LABEL_12;
  }

  v16 = *(result + 320);
  result = specialized FullyLinearProof.proofLength.getter();
  v17 = v16 * result;
  if ((v16 * result) >> 64 != (v16 * result) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v9 + 312);
  v19 = specialized FullyLinearProof.proofLength.getter();
  result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v9, a3, a4);
  v20 = v18 * v19;
  if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = __OFADD__(v17, v20);
  v10 = v17 + v20;
  v11 = *(&v22 + 1) - v23;
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a4;
  if (a4 == 0xFF)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  v14 = a5;
  v15 = a3;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  if ((a4 & 1) == 0)
  {
    v17 = 5 * a3;
    if ((a3 * 5) >> 64 != (5 * a3) >> 63)
    {
      goto LABEL_72;
    }
  }

  v18 = a5;
  if ((a6 & 1) == 0)
  {
    v18 = 5 * a5;
    if ((a5 * 5) >> 64 != (5 * a5) >> 63)
    {
      goto LABEL_73;
    }
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_71;
  }

  v19 = __OFADD__(v20, 64);
  v21 = v20 + 64;
  if (v19)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v16 != v21)
  {
    v9 = a6;
    v75 = 0;
    v76 = 0xE000000000000000;
    v7 = &v75;
    _StringGuts.grow(_:)(24);

    v75 = 0xD000000000000037;
    v76 = 0x8000000270C52310;
    if ((v12 & 1) == 0)
    {
      v35 = (v15 * 5) >> 64;
      v15 *= 5;
      if (v35 != v15 >> 63)
      {
        goto LABEL_77;
      }
    }

    if ((v9 & 1) == 0)
    {
      v36 = (v14 * 5) >> 64;
      v14 *= 5;
      if (v36 != v14 >> 63)
      {
        goto LABEL_78;
      }
    }

    v37 = v15 + v14;
    if (!__OFADD__(v15, v14))
    {
      v19 = __OFADD__(v37, 64);
      v38 = v37 + 64;
      if (!v19)
      {
        v77 = v38;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v39);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v77 = v16;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v40);

        v41 = v75;
        v42 = v76;
        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v43 = v41;
        v43[1] = v42;
        return swift_willThrow();
      }

      goto LABEL_75;
    }

LABEL_74:
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
    __break(1u);
    goto LABEL_80;
  }

  LODWORD(v71) = a6;
  v73 = v8;
  v68 = a7;
  v9 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  if ((v12 & 1) == 0)
  {
    v10 = 5 * v15;
    if ((v15 * 5) >> 64 != (5 * v15) >> 63)
    {
      goto LABEL_76;
    }
  }

  v22 = specialized Collection.prefix(_:)();
  v24 = v23;
  v26 = v25;
  v72 = v27;
  v10 = specialized Collection.dropFirst(_:)();
  v69 = v29;
  v70 = v28;
  v31 = v30;

  v32 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyALGTt1g5(v22, v24, v26, v72, v15, v12 & 1);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v9 = v31;
  v7 = v69;
  v11 = v70;
  v66 = v33;
  v67 = v32;
  if ((v71 & 1) == 0)
  {
    v12 = 5 * v14;
    if ((v14 * 5) >> 64 != (5 * v14) >> 63)
    {
      goto LABEL_79;
    }
  }

  v44 = specialized Collection.prefix(_:)();
  v72 = v46;
  v74 = v45;
  v48 = v47;
  v11 = specialized Collection.dropFirst(_:)();
  v9 = v49;
  v7 = v50;
  v12 = v51;
  swift_unknownObjectRetain();
  v52 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyALGTt1g5(v44, v74, v72, v48, v14, v71 & 1);
  v73 = v9;
  v10 = v12 >> 1;
  v54 = (v12 >> 1) - v7;
  if (__OFSUB__(v12 >> 1, v7))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v55 = v7;
  v56 = v12;
  v7 = v12 >> 1;
  v12 = v11;
  if (v54 >= 0x20)
  {
    v7 = v55 + 32;
    if (__OFADD__(v55, 32))
    {
      goto LABEL_93;
    }
  }

  if (v7 < v55)
  {
    goto LABEL_81;
  }

  if (v10 < v55)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v10 < v7)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v7 < 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v14 = v10;
  if (v54 >= 0x20)
  {
    v14 = v55 + 32;
    if (__OFADD__(v55, 32))
    {
      goto LABEL_94;
    }

    if (v10 < v14)
    {
      goto LABEL_85;
    }
  }

  if (v14 < v55)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  LOBYTE(v72) = v53;
  v71 = v52;
  v9 = v56 & 1;
  if (v56)
  {
    LOBYTE(v70) = v56;
    v11 = v55;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v59 = swift_dynamicCastClass();
    if (!v59)
    {
      swift_unknownObjectRelease();
      v59 = MEMORY[0x277D84F90];
    }

    v60 = *(v59 + 16);

    if (__OFSUB__(v7, v55))
    {
      goto LABEL_95;
    }

    if (v60 != v7 - v55)
    {
      goto LABEL_96;
    }

    v58 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v58)
    {
      goto LABEL_48;
    }

    v58 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v12, v73, v55, v56 & 1 | (2 * v7));
    v58 = v57;
LABEL_47:
    swift_unknownObjectRelease();
LABEL_48:
    v61 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v7 = v10;
    if (v61 >= 0x20)
    {
      v7 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        swift_unknownObjectRelease_n();
LABEL_61:
        specialized _copyCollectionToContiguousArray<A>(_:)(v12, v73, v14, v9 | (2 * v7));
        v63 = v62;
        goto LABEL_68;
      }
    }

    if (v7 < v14)
    {
      goto LABEL_88;
    }

    if (v10 < v7)
    {
      goto LABEL_89;
    }

    if (v7 < 0)
    {
      goto LABEL_90;
    }

    if (v61 >= 0x20)
    {
      if (__OFADD__(v14, 32))
      {
        goto LABEL_98;
      }

      if (v10 < v14 + 32)
      {
        goto LABEL_91;
      }

      v10 = v14 + 32;
    }

    if (v10 >= v14)
    {
      break;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_unknownObjectRelease_n();
    v55 = v11;
    v56 = v70;
  }

  if (!v9)
  {
    swift_unknownObjectRetain();
    goto LABEL_61;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = MEMORY[0x277D84F90];
  }

  v65 = *(v64 + 16);

  if (__OFSUB__(v7, v14))
  {
    goto LABEL_99;
  }

  if (v65 != v7 - v14)
  {
    goto LABEL_100;
  }

  v63 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v63)
  {
    goto LABEL_69;
  }

  v63 = MEMORY[0x277D84F90];
LABEL_68:
  swift_unknownObjectRelease();
LABEL_69:
  result = swift_unknownObjectRelease();
  *v68 = v67;
  *(v68 + 8) = v66 & 1;
  *(v68 + 16) = v71;
  *(v68 + 24) = v72 & 1;
  *(v68 + 32) = v58;
  *(v68 + 40) = v63;
  return result;
}

uint64_t _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a4;
  if (a4 == 0xFF)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    return swift_willThrow();
  }

  v13 = a6;
  v14 = a5;
  v15 = a3;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  if ((a4 & 1) == 0)
  {
    if ((a3 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v17 = 4 * a3;
  }

  v18 = a5;
  if ((a6 & 1) == 0)
  {
    if ((a5 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v18 = 4 * a5;
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_75;
  }

  v19 = __OFADD__(v20, 64);
  v21 = v20 + 64;
  if (v19)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v16 != v21)
  {
    v9 = 0xE000000000000000;
    v72 = 0;
    v73 = 0xE000000000000000;
    v7 = &v72;
    _StringGuts.grow(_:)(24);

    v72 = 0xD000000000000037;
    v73 = 0x8000000270C52220;
    if ((v11 & 1) == 0)
    {
      if ((v15 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v15 *= 4;
    }

    if ((v13 & 1) == 0)
    {
      if ((v14 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v14 *= 4;
    }

    v34 = v15 + v14;
    if (!__OFADD__(v15, v14))
    {
      v19 = __OFADD__(v34, 64);
      v35 = v34 + 64;
      if (!v19)
      {
        v74 = v35;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v36);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v74 = v16;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v37);

        v38 = v72;
        v39 = v73;
        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v40 = v38;
        v40[1] = v39;
        return swift_willThrow();
      }

      goto LABEL_79;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v70 = v8;
  v65 = a7;
  v9 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v10 = v15;
  if ((v11 & 1) == 0 && (v15 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_80;
  }

  LODWORD(v68) = v13;
  v22 = specialized Collection.prefix(_:)();
  v24 = v23;
  v26 = v25;
  v69 = v27;
  v10 = specialized Collection.dropFirst(_:)();
  v66 = v29;
  v67 = v28;
  v13 = v30;

  v31 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1g5(v22, v24, v26, v69, v15, v11 & 1);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v14;
  v7 = v66;
  v9 = v13;
  if ((v68 & 1) == 0 && (v14 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_83;
  }

  v63 = v32;
  v64 = v31;
  v41 = specialized Collection.prefix(_:)();
  v69 = v43;
  v71 = v42;
  v45 = v44;
  v13 = specialized Collection.dropFirst(_:)();
  v9 = v46;
  v7 = v47;
  v11 = v48;
  swift_unknownObjectRetain();
  v49 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1g5(v41, v71, v69, v45, v14, v68 & 1);
  v70 = v9;
  v10 = v11 >> 1;
  v51 = (v11 >> 1) - v7;
  if (__OFSUB__(v11 >> 1, v7))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v52 = v7;
  v53 = v11;
  v7 = v11 >> 1;
  v11 = v13;
  if (v51 >= 0x20)
  {
    v7 = v52 + 32;
    if (__OFADD__(v52, 32))
    {
      goto LABEL_97;
    }
  }

  if (v7 < v52)
  {
    goto LABEL_85;
  }

  if (v10 < v52)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v10 < v7)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v7 < 0)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v14 = v10;
  if (v51 >= 0x20)
  {
    v14 = v52 + 32;
    if (__OFADD__(v52, 32))
    {
      goto LABEL_98;
    }

    if (v10 < v14)
    {
      goto LABEL_89;
    }
  }

  if (v14 < v52)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  LOBYTE(v69) = v50;
  v68 = v49;
  v9 = v53 & 1;
  if (v53)
  {
    v67 = v53;
    v13 = v52;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v56 = swift_dynamicCastClass();
    if (!v56)
    {
      swift_unknownObjectRelease();
      v56 = MEMORY[0x277D84F90];
    }

    v57 = *(v56 + 16);

    if (__OFSUB__(v7, v52))
    {
      goto LABEL_99;
    }

    if (v57 != v7 - v52)
    {
      goto LABEL_100;
    }

    v55 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v55)
    {
      goto LABEL_52;
    }

    v55 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v70, v52, v53 & 1 | (2 * v7));
    v55 = v54;
LABEL_51:
    swift_unknownObjectRelease();
LABEL_52:
    v58 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v7 = v10;
    if (v58 >= 0x20)
    {
      v7 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        swift_unknownObjectRelease_n();
LABEL_65:
        specialized _copyCollectionToContiguousArray<A>(_:)(v11, v70, v14, v9 | (2 * v7));
        v60 = v59;
        goto LABEL_72;
      }
    }

    if (v7 < v14)
    {
      goto LABEL_92;
    }

    if (v10 < v7)
    {
      goto LABEL_93;
    }

    if (v7 < 0)
    {
      goto LABEL_94;
    }

    if (v58 >= 0x20)
    {
      if (__OFADD__(v14, 32))
      {
        goto LABEL_102;
      }

      if (v10 < v14 + 32)
      {
        goto LABEL_95;
      }

      v10 = v14 + 32;
    }

    if (v10 >= v14)
    {
      break;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_unknownObjectRelease_n();
    v52 = v13;
    v53 = v67;
  }

  if (!v9)
  {
    swift_unknownObjectRetain();
    goto LABEL_65;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {
    swift_unknownObjectRelease();
    v61 = MEMORY[0x277D84F90];
  }

  v62 = *(v61 + 16);

  if (__OFSUB__(v7, v14))
  {
    goto LABEL_103;
  }

  if (v62 != v7 - v14)
  {
    goto LABEL_104;
  }

  v60 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v60)
  {
    goto LABEL_73;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_72:
  swift_unknownObjectRelease();
LABEL_73:
  result = swift_unknownObjectRelease();
  *v65 = v64;
  *(v65 + 8) = v63 & 1;
  *(v65 + 16) = v68;
  *(v65 + 24) = v69 & 1;
  *(v65 + 32) = v55;
  *(v65 + 40) = v60;
  return result;
}

uint64_t _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a4;
  if (a4 == 0xFF)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    return swift_willThrow();
  }

  v13 = a6;
  v14 = a5;
  v15 = a3;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  if ((a4 & 1) == 0)
  {
    if ((a3 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v17 = 8 * a3;
  }

  v18 = a5;
  if ((a6 & 1) == 0)
  {
    if ((a5 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v18 = 8 * a5;
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_75;
  }

  v19 = __OFADD__(v20, 64);
  v21 = v20 + 64;
  if (v19)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v16 != v21)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    v7 = &v72;
    _StringGuts.grow(_:)(24);

    v72 = 0xD000000000000037;
    v73 = 0x8000000270C51E80;
    if ((v11 & 1) == 0)
    {
      if ((v15 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v15 *= 8;
    }

    if ((v13 & 1) == 0)
    {
      if ((v14 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v14 *= 8;
    }

    v34 = v15 + v14;
    if (!__OFADD__(v15, v14))
    {
      v19 = __OFADD__(v34, 64);
      v35 = v34 + 64;
      if (!v19)
      {
        v74 = v35;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v36);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v74 = v16;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v37);

        v38 = v72;
        v39 = v73;
        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v40 = v38;
        v40[1] = v39;
        return swift_willThrow();
      }

      goto LABEL_79;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v70 = v8;
  v65 = a7;
  v9 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v10 = v15;
  if ((v11 & 1) == 0 && (v15 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_80;
  }

  LODWORD(v68) = v13;
  v22 = specialized Collection.prefix(_:)();
  v24 = v23;
  v26 = v25;
  v69 = v27;
  v10 = specialized Collection.dropFirst(_:)();
  v66 = v29;
  v67 = v28;
  v13 = v30;

  v31 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v22, v24, v26, v69, v15, v11 & 1);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v14;
  v7 = v66;
  v9 = v13;
  if ((v68 & 1) == 0 && (v14 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_83;
  }

  v63 = v32;
  v64 = v31;
  v41 = specialized Collection.prefix(_:)();
  v69 = v43;
  v71 = v42;
  v45 = v44;
  v13 = specialized Collection.dropFirst(_:)();
  v9 = v46;
  v7 = v47;
  v11 = v48;
  swift_unknownObjectRetain();
  v49 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v41, v71, v69, v45, v14, v68 & 1);
  v70 = v9;
  v10 = v11 >> 1;
  v51 = (v11 >> 1) - v7;
  if (__OFSUB__(v11 >> 1, v7))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v52 = v7;
  v53 = v11;
  v7 = v11 >> 1;
  v11 = v13;
  if (v51 >= 0x20)
  {
    v7 = v52 + 32;
    if (__OFADD__(v52, 32))
    {
      goto LABEL_97;
    }
  }

  if (v7 < v52)
  {
    goto LABEL_85;
  }

  if (v10 < v52)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v10 < v7)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v7 < 0)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v14 = v10;
  if (v51 >= 0x20)
  {
    v14 = v52 + 32;
    if (__OFADD__(v52, 32))
    {
      goto LABEL_98;
    }

    if (v10 < v14)
    {
      goto LABEL_89;
    }
  }

  if (v14 < v52)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  LOBYTE(v69) = v50;
  v68 = v49;
  v9 = v53 & 1;
  if (v53)
  {
    v67 = v53;
    v13 = v52;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v56 = swift_dynamicCastClass();
    if (!v56)
    {
      swift_unknownObjectRelease();
      v56 = MEMORY[0x277D84F90];
    }

    v57 = *(v56 + 16);

    if (__OFSUB__(v7, v52))
    {
      goto LABEL_99;
    }

    if (v57 != v7 - v52)
    {
      goto LABEL_100;
    }

    v55 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v55)
    {
      goto LABEL_52;
    }

    v55 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v70, v52, v53 & 1 | (2 * v7));
    v55 = v54;
LABEL_51:
    swift_unknownObjectRelease();
LABEL_52:
    v58 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v7 = v10;
    if (v58 >= 0x20)
    {
      v7 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        swift_unknownObjectRelease_n();
LABEL_65:
        specialized _copyCollectionToContiguousArray<A>(_:)(v11, v70, v14, v9 | (2 * v7));
        v60 = v59;
        goto LABEL_72;
      }
    }

    if (v7 < v14)
    {
      goto LABEL_92;
    }

    if (v10 < v7)
    {
      goto LABEL_93;
    }

    if (v7 < 0)
    {
      goto LABEL_94;
    }

    if (v58 >= 0x20)
    {
      if (__OFADD__(v14, 32))
      {
        goto LABEL_102;
      }

      if (v10 < v14 + 32)
      {
        goto LABEL_95;
      }

      v10 = v14 + 32;
    }

    if (v10 >= v14)
    {
      break;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_unknownObjectRelease_n();
    v52 = v13;
    v53 = v67;
  }

  if (!v9)
  {
    swift_unknownObjectRetain();
    goto LABEL_65;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {
    swift_unknownObjectRelease();
    v61 = MEMORY[0x277D84F90];
  }

  v62 = *(v61 + 16);

  if (__OFSUB__(v7, v14))
  {
    goto LABEL_103;
  }

  if (v62 != v7 - v14)
  {
    goto LABEL_104;
  }

  v60 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v60)
  {
    goto LABEL_73;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_72:
  swift_unknownObjectRelease();
LABEL_73:
  result = swift_unknownObjectRelease();
  *v65 = v64;
  *(v65 + 8) = v63 & 1;
  *(v65 + 16) = v68;
  *(v65 + 24) = v69 & 1;
  *(v65 + 32) = v55;
  *(v65 + 40) = v60;
  return result;
}