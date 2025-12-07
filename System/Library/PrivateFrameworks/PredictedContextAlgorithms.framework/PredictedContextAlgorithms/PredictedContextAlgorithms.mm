uint64_t PCNeuralNetModel.modelHasBeenTrained.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer_OpaquePointer __swiftcall DataSetFeatureMatrix.getSequenceForIndex(i:)(Swift::Int i)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v5) <= i)
  {
    Logger.init(subsystem:category:)();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1CEE74000, v34, v35, "sequence index requested was larger than number of data points", v36, 2u);
      MEMORY[0x1D3865FA0](v36, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
LABEL_76:
    v50 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_79;
  }

  v9 = *((*v8 & *v1) + 0xD8);
  v10 = (*v8 & *v1) + 216;
  v11 = (v9)();
  v12 = i + v11;
  if (__OFADD__(i, v11))
  {
    goto LABEL_50;
  }

  v63 = v10;
  v13 = v11;
  if (v12 < i)
  {
    goto LABEL_51;
  }

  v62 = v9;
  v14 = (*((*v8 & *v1) + 0x90))();
  if (i < 0)
  {
    goto LABEL_52;
  }

  v9 = v14;
  v64 = v1;
  v15 = *(v14 + 16);
  if (v15 < i || v15 < v12)
  {
    goto LABEL_53;
  }

  if (v15 != v13)
  {
    goto LABEL_54;
  }

  for (j = i; v15; j = i)
  {
    i = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (i < *(v9 + 16))
    {
      v18 = *(v9 + 8 * i + 32);
      if (!*(v18 + 16))
      {
        goto LABEL_42;
      }

      v19 = *(v18 + 32);
      if ((LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_43;
      }

      if (v19 <= -9.2234e18)
      {
        goto LABEL_44;
      }

      if (v19 >= 9.2234e18)
      {
        goto LABEL_45;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 2) = v21 + 1;
      *&v17[8 * v21 + 32] = v19;
      v22 = *(v18 + 32);
      if ((LODWORD(v22) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_46;
      }

      if (v22 <= -9.2234e18)
      {
        goto LABEL_47;
      }

      if (v22 >= 9.2234e18)
      {
        goto LABEL_48;
      }

      if ((*((*v8 & *v64) + 0x138))() == v22)
      {

        goto LABEL_76;
      }

      v23 = *(v18 + 16);
      if (!v23)
      {
        goto LABEL_49;
      }

      v24 = v17;
      v25 = v9;
      v26 = v15;
      v27 = v8;
      v28 = v23 - 1;
      if (v23 == 1)
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v29 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v29);
        v31 = v30 - 32;
        if (v30 < 32)
        {
          v31 = v30 - 29;
        }

        v29[2] = v28;
        v29[3] = 2 * (v31 >> 2);
        memcpy(v29 + 4, (v18 + 36), 4 * v28);
      }

      v8 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
      }

      v15 = v26;
      v33 = *(v12 + 16);
      v32 = *(v12 + 24);
      v9 = v25;
      if (v33 >= v32 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v12, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
      }

      v17 = v24;
      ++i;
      *(v12 + 16) = v33 + 1;
      *(v12 + 8 * v33 + 32) = v29;
      if (v15 == i)
      {
        goto LABEL_56;
      }
    }

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
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v9 + 32, i, (2 * v12) | 1);
    v38 = v37;

    v15 = *(v38 + 16);
    v9 = v38;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v60 = v12;
  v39 = v64;
  v40 = *((*v8 & *v64) + 0xA8);
  if ((v40)())
  {

    v42 = v62;
    v43 = v39;
    v44 = (v62)(v41);
    v45 = j;
    v59 = j + v44;
    if (__OFADD__(j, v44))
    {
LABEL_84:
      __break(1u);
    }

    else
    {
      v46 = v42();
      v47 = __OFADD__(v45, v46);
      v45 += v46;
      if (!v47)
      {
        v48 = (*((*v8 & *v39) + 0xF0))();
        v47 = __OFADD__(v45, v48);
        v45 += v48;
        if (!v47)
        {
          v43 = v59;
          v49 = v45 - v59;
          if (v45 >= v59)
          {
            v50 = (v40)();
            if (!v50)
            {
              __break(1u);
              goto LABEL_92;
            }

            v40 = v50;

            if ((v43 & 0x8000000000000000) == 0)
            {
              v53 = *(v40 + 16);
              if (v53 >= v43 && v53 >= v45)
              {
                if (v53 == v49)
                {
                  goto LABEL_68;
                }

                goto LABEL_90;
              }

LABEL_89:
              __break(1u);
LABEL_90:
              specialized _copyCollectionToContiguousArray<A>(_:)(v40, v40 + 32, v43, (2 * v45) | 1);
              v58 = v57;

              v53 = *(v58 + 16);
              v40 = v58;
LABEL_68:
              v55 = 0;
              v45 = 3741319169;
              while (v53 != v55)
              {
                if (v55 >= *(v40 + 16))
                {
                  __break(1u);
LABEL_81:
                  __break(1u);
LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

                v56 = *(v40 + 4 * v55 + 32);
                if ((LODWORD(v56) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                {
                  goto LABEL_81;
                }

                if (v56 <= -9.2234e18)
                {
                  goto LABEL_82;
                }

                if (v56 >= 9.2234e18)
                {
                  goto LABEL_83;
                }

                ++v55;
                if ((*((*v8 & *v64) + 0x138))() == v56)
                {

                  goto LABEL_76;
                }
              }

              goto LABEL_78;
            }

LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_78:
  v50 = v60;
LABEL_79:
  v51 = v17;
  v52 = v40;
LABEL_92:
  result._2._rawValue = v52;
  result._1._rawValue = v51;
  result._0._rawValue = v50;
  return result;
}

uint64_t DataSetFeatureMatrix.nDataPoints.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DataSetFeatureMatrix.inputSteps.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t DataSetFeatureMatrix.unknownLoiId.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId;
  swift_beginAccess();
  return *(v0 + v1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t DataSetFeatureMatrix.outputSteps.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t DataSetFeatureMatrix.inputShape.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape;
  swift_beginAccess();
  return *(v0 + v1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = result;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(a2 - result, 0);
  result = specialized Sequence._copySequenceContents(initializing:)(v13, (v5 + 4), v2, v4, a2);
  if (result != v2)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5[2];
  if (v6 < 2)
  {
    return v5;
  }

  v7 = v6 >> 1;
  v8 = v6 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_10;
    }

    v10 = v5[2];
    if (i - 4 >= v10)
    {
      break;
    }

    if (v8 - 4 >= v10)
    {
      goto LABEL_17;
    }

    v11 = v5[i];
    v12 = v5[v8];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

    v5[i] = v12;
    v5[v8] = v11;
LABEL_10:
    --v8;
    if (!--v7)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DataSetFeatureMatrix.outputShape.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape;
  swift_beginAccess();
  return *(v0 + v1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMd, &_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMR);
  v10 = *(type metadata accessor for Tensor() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tensor() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id PCNeuralNetModel.config.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t NeuralNetConfig.batchSize.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCNeuralNetModel.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t outlined destroy of OneHotEncoder<String>.Transformer?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CEE7729C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t LCGRandomNumberGenerator.__allocating_init(seed:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = xmmword_1CEF0B420;
  *(result + 32) = 0x100000000;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 40) = a1;
  }

  return result;
}

uint64_t LCGRandomNumberGenerator.init(seed:)(uint64_t result)
{
  *(v1 + 16) = xmmword_1CEF0B420;
  *(v1 + 32) = 0x100000000;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = result;
    return v1;
  }

  return result;
}

Swift::UInt64 __swiftcall LCGRandomNumberGenerator.next()()
{
  v1 = *(v0 + 40);
  if (!is_mul_ok(v1, 0x19660DuLL))
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = 1664525 * v1;
  v3 = __CFADD__(v2, 1013904223);
  v4 = v2 + 1013904223;
  if (v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 40) = v4;
  v5 = vcvtd_n_f64_u64(v4, 0x20uLL) * 1.84467441e19;
  if (v5 == INFINITY)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 1.84467441e19)
  {
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t key path getter for DataPoint.x : DataPoint@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataPoint.x : DataPoint(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t DataPoint.x.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t key path getter for DataPoint.y : DataPoint@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataPoint.y : DataPoint(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t DataPoint.y.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t DataPoint.__allocating_init(x:y:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DataPoint.init(x:y:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DataPoint.deinit()
{

  return v0;
}

uint64_t DataPoint.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t key path getter for DataSetFeatureMatrix.x : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataSetFeatureMatrix.x : DataSetFeatureMatrix(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);

  return v2(v3);
}

uint64_t DataSetFeatureMatrix.x.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for DataSetFeatureMatrix.y : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataSetFeatureMatrix.y : DataSetFeatureMatrix(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);

  return v2(v3);
}

uint64_t DataSetFeatureMatrix.y.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for DataSetFeatureMatrix.nDataPoints : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.nDataPoints.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.inputSteps : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.inputSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.outputSteps : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.outputSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.inputShape : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.inputShape.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.outputShape : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.outputShape.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.unknownLoiId : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.unknownLoiId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DataSetFeatureMatrix.init(x:inputSteps:unknownLoiId:)(void *result, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y] = 0;
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x] = result;
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps] = a2;
  v4 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result[2];
    v6 = __OFSUB__(v5, v4);
    v7 = v5 - v4;
    if (!v6)
    {
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints] = v7;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps] = 0;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape] = 0;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape] = 0;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId] = a3;
      v8.receiver = v3;
      v8.super_class = type metadata accessor for DataSetFeatureMatrix();
      return objc_msgSendSuper2(&v8, sel_init);
    }
  }

  __break(1u);
  return result;
}

char *DataSetFeatureMatrix.init(x:y:inputSteps:outputSteps:unknownLoiId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y] = 0;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId] = a5;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x] = a1;
  result = swift_beginAccess();
  *&v5[v15] = a2;
  v17 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, v17);
  v20 = v18 - v17;
  if (v19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v19 = __OFSUB__(v20, a4);
  v21 = v20 - a4;
  if (v19)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = v12;
  v22 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints] = v21;
  if (v21 > 0)
  {

LABEL_10:
    *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps] = a3;
    *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps] = a4;
    v27 = *(a1 + 16);
    if (!v27)
    {
      v28 = 0;
      v29 = 0;
LABEL_27:

      if (!__OFADD__(v28, 1))
      {
        *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape] = v28 + 1;
        if (!__OFADD__(v29, 1))
        {
          *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape] = v29 + 1;
          v34 = type metadata accessor for DataSetFeatureMatrix();
          v37.receiver = v5;
          v37.super_class = v34;
          return objc_msgSendSuper2(&v37, sel_init);
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v27 > *(a2 + 16))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v28 = 0;
    v29 = 0;
    v30 = (a2 + 32);
    v31 = a1 + 32;
    while (1)
    {
      v32 = *v30;
      if ((*v30 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v32 <= -9.2234e18)
      {
        goto LABEL_31;
      }

      if (v32 >= 9.2234e18)
      {
        goto LABEL_32;
      }

      if (v29 <= v32)
      {
        v29 = v32;
      }

      if (!*(*v31 + 16))
      {
        goto LABEL_33;
      }

      v33 = *(*v31 + 32);
      if ((LODWORD(v33) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_34;
      }

      if (v33 <= -9.2234e18)
      {
        goto LABEL_35;
      }

      if (v33 >= 9.2234e18)
      {
        goto LABEL_36;
      }

      if (v28 <= v33)
      {
        v28 = v33;
      }

      v31 += 8;
      ++v30;
      if (!--v27)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
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

  Logger.init(subsystem:category:)();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v23, v24))
  {
LABEL_9:

    (*(v36 + 8))(v14, v11);
    result = swift_beginAccess();
    *&v5[v22] = 0;
    goto LABEL_10;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (!__OFADD__(a3, a4))
  {
    *(result + 4) = a3 + a4;
    v25 = v24;
    v26 = result;
    _os_log_impl(&dword_1CEE74000, v23, v25, "dataset has fewer than %ld data points", result, 0xCu);
    MEMORY[0x1D3865FA0](v26, -1, -1);
    goto LABEL_9;
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t PCNeuralNetworkTrainingResultCode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000019;
  v5 = 0x6168537475706E69;
  v6 = 0xEA00000000006570;
  if (a1 != 4)
  {
    v5 = 0xD000000000000013;
    v6 = 0x80000001CEF0C160;
  }

  if (a1 == 3)
  {
    v7 = 0x80000001CEF0C130;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0xE600000000000000;
  if (a1 == 1)
  {
    v9 = 0x6769666E6F63;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (a1 != 1)
  {
    v8 = 0x80000001CEF0C110;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C65646F6DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001CEF0C130;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_38;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006570;
      if (v10 != 0x6168537475706E69)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0x80000001CEF0C160;
      if (v10 != 0xD000000000000013)
      {
LABEL_38:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6769666E6F63)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0x80000001CEF0C110;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6C65646F6DLL)
    {
      goto LABEL_38;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PCNeuralNetworkTrainingResultCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PCNeuralNetworkTrainingResultCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v2);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance PCNeuralNetworkTrainingResultCode@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t key path getter for NeuralNetConfig.batchSize : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.batchSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.outSteps : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.outSteps.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.outSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.hiddenLayerSize : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.hiddenLayerSize.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.hiddenLayerSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.epochs : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.epochs.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.epochs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.trainOnGpu : NeuralNetConfig@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

uint64_t NeuralNetConfig.trainOnGpu.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.trainOnGpu.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.unknownLoiID : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.unknownLoiID.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.unknownLoiID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id NeuralNetConfig.__allocating_init(hiddenLayers:outSteps:epochs:batchSize:trainOnGpu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID] = -1;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps] = a2;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize] = a1;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs] = a3;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize] = a4;
  v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NeuralNetConfig.init(hiddenLayers:outSteps:epochs:batchSize:trainOnGpu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID] = -1;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps] = a2;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize] = a1;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs] = a3;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize] = a4;
  v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu] = a5;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for NeuralNetConfig();
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NeuralNetConfig.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NeuralNetConfig.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NeuralNetConfig.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7A69536863746162;
  v3 = 0x7368636F7065;
  v4 = 0x476E4F6E69617274;
  if (v1 != 4)
  {
    v4 = 0x4C6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737065745374756FLL;
  if (v1 != 1)
  {
    v5 = 0x614C6E6564646968;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NeuralNetConfig.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NeuralNetConfig.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NeuralNetConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NeuralNetConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NeuralNetConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v9);
  v17[15] = 0;
  v11 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x98))(v11);
    v17[14] = 1;
    v12 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v10 & *v3) + 0xB0))(v12);
    v17[13] = 2;
    v13 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v10 & *v3) + 0xC8))(v13);
    v17[12] = 3;
    v14 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v10 & *v3) + 0xE0))(v14);
    v17[11] = 4;
    v15 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v10 & *v3) + 0xF8))(v15);
    v17[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

char *NeuralNetConfig.init(from:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID;
  *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID) = -1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for NeuralNetConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 0;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize) = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps) = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 2;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize) = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 3;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs) = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 4;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v13 = 5;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    *&v7[v1] = v9;
    v10 = type metadata accessor for NeuralNetConfig();
    v12.receiver = v1;
    v12.super_class = v10;
    v7 = objc_msgSendSuper2(&v12, sel_init);
    (*(v4 + 8))(v6, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NeuralNetConfig@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 296))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of PCNeuralNetModel.model@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for TensorShape();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Reshape();
  MEMORY[0x1EEE9AC00](v29);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Dense();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ReLU();
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v22 = type metadata accessor for Conv1D();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ParameterInitializer();
  v14 = type metadata accessor for ComputeDevice();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 1, 1, v14);
  static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v10, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  static ParameterInitializer.zeros.getter();
  Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)();
  ReLU.init()();
  Flatten.init()();
  v15(v10, 1, 1, v14);
  static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v10, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  static ParameterInitializer.zeros.getter();
  Dense.init(unitCount:weightInitializer:biasInitializer:)();
  MEMORY[0x1D3865040](&outlined read-only object #0 of closure #1 in variable initialization expression of PCNeuralNetModel.model);
  v16 = v24;
  Reshape.init(_:)();
  v17 = v26;
  v19 = v22;
  v18 = v23;
  static SequentialBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)();
  outlined destroy of Reshape(v16);
  (*(v28 + 8))(v5, v17);
  (*(v25 + 8))(v7, v18);
  return (*(v11 + 8))(v13, v19);
}

uint64_t key path setter for PCNeuralNetModel.model : PCNeuralNetModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x98))(v6);
}

uint64_t PCNeuralNetModel.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path getter for PCNeuralNetModel.config : PCNeuralNetModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

void PCNeuralNetModel.config.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for PCNeuralNetModel.encoderAsTransformer : PCNeuralNetModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of OneHotEncoder<String>.Transformer?(a1, &v8 - v5, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xC8))(v6);
}

uint64_t key path setter for PCNeuralNetModel.labelEncoderAsTransformer : PCNeuralNetModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of OneHotEncoder<String>.Transformer?(a1, &v8 - v5, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE0))(v6);
}

uint64_t PCNeuralNetModel.encoderAsTransformer.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of OneHotEncoder<String>.Transformer?(v4 + v8, a4, a2, a3);
}

uint64_t PCNeuralNetModel.encoderAsTransformer.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of OneHotEncoder<String>.Transformer?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t key path getter for PCNeuralNetModel.inputShape : PCNeuralNetModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t PCNeuralNetModel.inputShape.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCNeuralNetModel.inputShape.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for PCNeuralNetModel.modelHasBeenTrained : PCNeuralNetModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result & 1;
  return result;
}

uint64_t PCNeuralNetModel.modelHasBeenTrained.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for PCNeuralNetModel.shouldInterruptTraining : PCNeuralNetModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t PCNeuralNetModel.shouldInterruptTraining.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCNeuralNetModel.shouldInterruptTraining.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for PCNeuralNetModel.lock : PCNeuralNetModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

id PCNeuralNetModel.lock.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PCNeuralNetModel.lock.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PCNeuralNetModel.init(config:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR, MEMORY[0x1E69B37E8]);
  Sequential.init(layers:)();
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_encoderAsTransformer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_labelEncoderAsTransformer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape] = 0;
  v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained] = 0;
  v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining] = 0;
  v7 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PCNeuralNetModel(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PCNeuralNetModel.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PCNeuralNetModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PCNeuralNetModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PCNeuralNetModel.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C65646F6DLL;
  v5 = 0x80000001CEF0C130;
  v6 = 0xD000000000000019;
  v7 = 0xEA00000000006570;
  v8 = 0x6168537475706E69;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001CEF0C160;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6769666E6F63;
  if (v2 != 1)
  {
    v10 = 0xD000000000000014;
    v9 = 0x80000001CEF0C110;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PCNeuralNetModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C65646F6DLL;
  v3 = 0xD000000000000019;
  v4 = 0x6168537475706E69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PCNeuralNetModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized PCNeuralNetModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PCNeuralNetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PCNeuralNetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PCNeuralNetModel.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v5 = type metadata accessor for Logger();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v12;
  v13 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR, MEMORY[0x1E69B37E8]);
  v14 = a2;
  Sequential.init(layers:)();
  v15 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_encoderAsTransformer;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_labelEncoderAsTransformer;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  v38 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  *&v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape] = 0;
  v39 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained] = 0;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining] = 0;
  v19 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  *&v2[v19] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  swift_getObjectType();
  v20 = type metadata accessor for PCNeuralNetModel(0);
  lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type PCNeuralNetModel and conformance PCNeuralNetModel, 255, type metadata accessor for PCNeuralNetModel, &protocol conformance descriptor for PCNeuralNetModel);
  v46 = v14;
  v21 = dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v22 = v49;
  v23 = MEMORY[0x1E69E7D40];
  v24 = v37;
  (*((*MEMORY[0x1E69E7D40] & *v49) + 0x90))(v21);
  swift_beginAccess();
  (*(v45 + 40))(&v3[v13], v24, v44);
  v25 = swift_endAccess();
  v26 = v40;
  (*((*v23 & *v22) + 0xC0))(v25);
  swift_beginAccess();
  outlined assign with take of OneHotEncoder<String>.Transformer?(v26, &v3[v15], &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  v27 = swift_endAccess();
  v28 = v41;
  (*((*v23 & *v22) + 0xD8))(v27);
  swift_beginAccess();
  outlined assign with take of OneHotEncoder<String>.Transformer?(v28, &v3[v17], &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v29 = swift_endAccess();
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config] = (*((*v23 & *v22) + 0xA8))(v29);
  v30 = (*((*v23 & *v22) + 0xF0))();
  v31 = v38;
  v32 = swift_beginAccess();
  *&v3[v31] = v30;
  LOBYTE(v30) = (*((*v23 & *v22) + 0x108))(v32);

  v33 = v39;
  swift_beginAccess();
  v3[v33] = v30 & 1;
  v48.receiver = v3;
  v48.super_class = v20;
  v34 = objc_msgSendSuper2(&v48, sel_init);
  outlined consume of Data._Representation(v47, v46);
  return v34;
}

void PCNeuralNetModel.interruptTraining()(uint64_t a1, const char *a2)
{
  v5 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x138);
  v13 = v12(v8);
  [v13 lock];

  (*((*v11 & *v5) + 0x128))(a1);
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CEE74000, v14, v15, a2, v16, 2u);
    MEMORY[0x1D3865FA0](v16, -1, -1);
  }

  v17 = (*(v7 + 8))(v10, v6);
  v18 = v12(v17);
  [v18 unlock];
}

uint64_t PCNeuralNetModel.getEncodedModel()()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for PCNeuralNetModel(0);
  lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type PCNeuralNetModel and conformance PCNeuralNetModel, 255, type metadata accessor for PCNeuralNetModel, &protocol conformance descriptor for PCNeuralNetModel);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t PCNeuralNetModel.encodeWithLabelEncoder(array:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PCNeuralNetModel.encodeWithLabelEncoder(array:), 0, 0);
}

uint64_t PCNeuralNetModel.encodeWithLabelEncoder(array:)()
{
  v88 = v0;
  v1 = *(v0 + 120);
  v85 = *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD8);
  v85();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  *(v0 + 128) = v2;
  v3 = *(v2 - 8);
  *(v0 + 136) = v3;
  v84 = *(v3 + 48);
  v4 = v84(v1, 1, v2);
  isUniquelyReferenced_nonNull_native = outlined destroy of OneHotEncoder<String>.Transformer?(v1, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  if (v4 == 1)
  {
    Logger.init(subsystem:category:)();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 88);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CEE74000, v6, v7, "error: no label encoder exits", v12, 2u);
      MEMORY[0x1D3865FA0](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    v13 = 0;
LABEL_53:

    v76 = *(v0 + 8);

    return v76(v13);
  }

  v14 = *(v0 + 40);
  v82 = v0;
  v80 = *(v14 + 16);
  if (!v80)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_46:
    *(v0 + 144) = v16;
    v64 = *(v0 + 96);
    (v85)(isUniquelyReferenced_nonNull_native);
    v23 = v84(v64, 1, v2);
    if (v23 == 1)
    {
      goto LABEL_58;
    }

    v66 = specialized _arrayForceCast<A, B>(_:)(v65);
    *(v0 + 152) = v66;

    v67 = *(v66 + 16);
    *(v0 + 160) = v67;
    v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0, MEMORY[0x1E69E7CC0]);
    v13 = v68;
    if (v67)
    {
      *(v0 + 168) = v68;
      *(v0 + 176) = 0;
      v69 = *(v0 + 152);
      v70 = *(v69 + 40);
      *(v0 + 184) = v70;
      *(v0 + 16) = *(v69 + 32);
      *(v0 + 24) = v70;

      static Task<>.checkCancellation()();
      v74 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR, MEMORY[0x1E6966300]);
      v75 = swift_task_alloc();
      *(v0 + 192) = v75;
      *v75 = v0;
      v75[1] = PCNeuralNetModel.encodeWithLabelEncoder(array:);
      v27 = *(v0 + 128);
      v23 = v0 + 32;
      v24 = v0 + 16;
      v25 = 0;
      v26 = 0;
      v28 = v74;

      return MEMORY[0x1EEDBFAF8](v23, v24, v25, v26, v27, v28);
    }

    v71 = *(v0 + 128);
    v72 = *(v0 + 136);
    v73 = *(v0 + 96);

    (*(v72 + 8))(v73, v71);

    goto LABEL_53;
  }

  v15 = 0;
  v79 = v14 + 32;
  v83 = (v3 + 8);
  v78 = (*(v0 + 64) + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v81 = v2;
  while (1)
  {
    v86 = v16;
    v19 = *(v0 + 112);
    v20 = (v79 + 16 * v15);
    v21 = *v20;
    v17 = v20[1];

    (v85)(v22);
    v23 = v84(v19, 1, v2);
    if (v23 == 1)
    {
      break;
    }

    v29 = *(v0 + 112);
    v30 = OrdinalEncoder.Transformer.categories.getter();
    v31 = *v83;
    (*v83)(v29, v2);
    if (*(v30 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      v32 = Hasher._finalize()();
      v33 = -1 << *(v30 + 32);
      v34 = v32 & ~v33;
      if ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        v36 = *(v30 + 48);
        while (1)
        {
          v37 = (v36 + 16 * v34);
          v38 = v37[1];
          if (v38)
          {
            v39 = *v37 == v21 && v38 == v17;
            if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v34 = (v34 + 1) & v35;
          if (((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v16 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 16) + 1, 1, v86);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        v2 = v81;
        v0 = v82;
        v41 = *(v16 + 16);
        v40 = *(v16 + 24);
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v16);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        goto LABEL_8;
      }

LABEL_24:

      v2 = v81;
      v0 = v82;
    }

    v43 = *(v0 + 104);

    (v85)(v44);
    v23 = v84(v43, 1, v2);
    if (v23 == 1)
    {
      goto LABEL_57;
    }

    v45 = *(v0 + 104);
    v46 = OrdinalEncoder.Transformer.categories.getter();
    v31(v45, v2);
    if (*(v46 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(1u), String.hash(into:)(), v47 = Hasher._finalize()(), v48 = -1 << *(v46 + 32), v49 = v47 & ~v48, ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
    {
      v50 = ~v48;
      v51 = *(v46 + 48);
      while (1)
      {
        v52 = (v51 + 16 * v49);
        v53 = v52[1];
        if (v53)
        {
          v54 = *v52 == 0x6E696C6576617274 && v53 == 0xE900000000000067;
          if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v49 = (v49 + 1) & v50;
        if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
LABEL_37:

      Logger.init(subsystem:category:)();

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 80);
      v59 = *(v0 + 56);
      if (v57)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v87[0] = v61;
        *v60 = 136315138;
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v17, v87);

        *(v60 + 4) = v62;
        _os_log_impl(&dword_1CEE74000, v55, v56, "error: invalid loiId %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x1D3865FA0](v61, -1, -1);
        MEMORY[0x1D3865FA0](v60, -1, -1);
      }

      else
      {
      }

      (*v78)(v58, v59);
      v2 = v81;
      v0 = v82;
    }

    v16 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 16) + 1, 1, v86);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    v41 = *(v16 + 16);
    v63 = *(v16 + 24);
    v42 = v41 + 1;
    v21 = 0x6E696C6576617274;
    if (v41 >= v63 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v41 + 1, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    v17 = 0xE900000000000067;
LABEL_8:
    ++v15;
    *(v16 + 16) = v42;
    v18 = v16 + 16 * v41;
    *(v18 + 32) = v21;
    *(v18 + 40) = v17;
    if (v15 == v80)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return MEMORY[0x1EEDBFAF8](v23, v24, v25, v26, v27, v28);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = PCNeuralNetModel.encodeWithLabelEncoder(array:);
  }

  else
  {
    v2 = PCNeuralNetModel.encodeWithLabelEncoder(array:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 168);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, *(v0 + 168));
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 176) + 1;
  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = v1;

  if (v6 == v5)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 96);

    (*(v8 + 8))(v9, v7);

LABEL_13:

    v30 = *(v0 + 8);

    return v30(v2);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 176) + 1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v11;
  v12 = *(v0 + 152) + 16 * v11;
  v13 = *(v12 + 40);
  *(v0 + 184) = v13;
  *(v0 + 16) = *(v12 + 32);
  *(v0 + 24) = v13;

  static Task<>.checkCancellation()();
  if (v10)
  {

    (*(*(v0 + 136) + 8))(*(v0 + 96), *(v0 + 128));
    Logger.init(subsystem:category:)();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);
    if (v16)
    {
      v33 = *(v0 + 56);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315138;

      v23 = MEMORY[0x1D3865420](v22, MEMORY[0x1E69E6158]);
      v32 = v17;
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v34);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1CEE74000, v14, v15, "error encoding array %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D3865FA0](v21, -1, -1);
      MEMORY[0x1D3865FA0](v20, -1, -1);

      (*(v18 + 8))(v32, v33);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v2 = 0;
    goto LABEL_13;
  }

  v27 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR, MEMORY[0x1E6966300]);
  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = PCNeuralNetModel.encodeWithLabelEncoder(array:);
  v29 = *(v0 + 128);

  return MEMORY[0x1EEDBFAF8](v0 + 32, v0 + 16, 0, 0, v29, v27);
}

{
  v20 = v0;

  v1 = v0[25];
  (*(v0[17] + 8))(v0[12], v0[16]);
  Logger.init(subsystem:category:)();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v18 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;

    v11 = MEMORY[0x1D3865420](v10, MEMORY[0x1E69E6158]);
    v17 = v1;
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v19);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1CEE74000, v2, v3, "error encoding array %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3865FA0](v9, -1, -1);
    MEMORY[0x1D3865FA0](v8, -1, -1);

    (*(v5 + 8))(v18, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:);

  return PCNeuralNetModel.encodeWithLabelEncoder(array:)(v5);
}

uint64_t PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderVySSGMd, &_s18CreateMLComponents14OrdinalEncoderVySSGMR);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PCNeuralNetModel.fitLabelEncoder(array:), 0, 0);
}

uint64_t PCNeuralNetModel.fitLabelEncoder(array:)()
{
  v1 = v0[10];
  OrdinalEncoder.init()();
  v2 = specialized _arrayForceCast<A, B>(_:)(v1);
  v0[22] = v2;
  v0[7] = v2;
  v3 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String> and conformance OrdinalEncoder<A>, &_s18CreateMLComponents14OrdinalEncoderVySSGMd, &_s18CreateMLComponents14OrdinalEncoderVySSGMR, MEMORY[0x1E6966318]);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  v6 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &_sSaySSSgGMd, &_sSaySSSgGMR, MEMORY[0x1E69E6328]);
  *v4 = v0;
  v4[1] = PCNeuralNetModel.fitLabelEncoder(array:);
  v7 = v0[18];
  v8 = v0[19];

  return MEMORY[0x1EEDBFB88](v7, v0 + 7, 0, 0, v5, v6, v8, v3);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  else
  {
    v2 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v40 = v0;
  v1 = specialized _arrayForceCast<A, B>(_:)(v0[10]);
  v0[25] = v1;
  v2 = *(v1 + 16);
  v0[26] = v2;
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v4 = v3;
  if (!v2)
  {
    v24 = v0[20];
    v23 = v0[21];
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[16];
    v28 = v0[17];
    v29 = v0[15];
    v30 = v0[11];

    (*(v28 + 16))(v29, v26, v27);
    (*(v28 + 56))(v29, 0, 1, v27);
    (*((*MEMORY[0x1E69E7D40] & *v30) + 0xE0))(v29);
    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
LABEL_11:

    v34 = v0[1];

    return v34(v4);
  }

  v0[27] = v3;
  v0[28] = 0;
  v6 = v0[24];
  v5 = v0[25];
  v7 = *(v5 + 40);
  v0[29] = v7;
  v0[5] = *(v5 + 32);
  v0[6] = v7;

  static Task<>.checkCancellation()();
  if (v6)
  {

    (*(v0[17] + 8))(v0[18], v0[16]);
    Logger.init(subsystem:category:)();
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    if (v11)
    {
      v38 = v0[12];
      v18 = swift_slowAlloc();
      v37 = v14;
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v36 = v15;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1CEE74000, v9, v10, "error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1D3865FA0](v19, -1, -1);
      MEMORY[0x1D3865FA0](v18, -1, -1);

      (*(v16 + 8))(v36, v38);
      (*(v13 + 8))(v12, v37);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v4 = 0;
    goto LABEL_11;
  }

  v31 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR, MEMORY[0x1E6966300]);
  v32 = swift_task_alloc();
  v0[30] = v32;
  *v32 = v0;
  v32[1] = PCNeuralNetModel.fitLabelEncoder(array:);
  v33 = v0[16];

  return MEMORY[0x1EEDBFAF8](v0 + 9, v0 + 5, 0, 0, v33, v31);
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  else
  {
    v2 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v42 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 216);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, *(v0 + 216));
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 224) + 1;
  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = v1;

  if (v6 == v5)
  {
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v0 + 88);

    (*(v12 + 16))(v13, v10, v11);
    (*(v12 + 56))(v13, 0, 1, v11);
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0xE0))(v13);
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
LABEL_13:

    v36 = *(v0 + 8);

    return v36(v2);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224) + 1;
  *(v0 + 216) = v2;
  *(v0 + 224) = v16;
  v17 = *(v0 + 200) + 16 * v16;
  v18 = *(v17 + 40);
  *(v0 + 232) = v18;
  *(v0 + 40) = *(v17 + 32);
  *(v0 + 48) = v18;

  static Task<>.checkCancellation()();
  if (v15)
  {

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    Logger.init(subsystem:category:)();
    v19 = v15;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = *(v0 + 152);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v40 = *(v0 + 96);
    if (v22)
    {
      v39 = *(v0 + 152);
      v28 = swift_slowAlloc();
      v38 = v26;
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v41);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1CEE74000, v20, v21, "error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1D3865FA0](v29, -1, -1);
      MEMORY[0x1D3865FA0](v28, -1, -1);

      (*(v27 + 8))(v38, v40);
      (*(v24 + 8))(v23, v39);
    }

    else
    {

      (*(v27 + 8))(v26, v40);
      (*(v24 + 8))(v23, v25);
    }

    v2 = 0;
    goto LABEL_13;
  }

  v33 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR, MEMORY[0x1E6966300]);
  v34 = swift_task_alloc();
  *(v0 + 240) = v34;
  *v34 = v0;
  v34[1] = PCNeuralNetModel.fitLabelEncoder(array:);
  v35 = *(v0 + 128);

  return MEMORY[0x1EEDBFAF8](v0 + 72, v0 + 40, 0, 0, v35, v33);
}

{
  v25 = v0;

  v1 = v0[31];
  (*(v0[17] + 8))(v0[18], v0[16]);
  Logger.init(subsystem:category:)();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v22 = v0[19];
    v23 = v0[21];
    v6 = v0[13];
    v20 = v0[12];
    v21 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1CEE74000, v3, v4, "error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3865FA0](v8, -1, -1);
    MEMORY[0x1D3865FA0](v7, -1, -1);

    (*(v6 + 8))(v21, v20);
    (*(v5 + 8))(v23, v22);
  }

  else
  {
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v18 = v0[1];

  return v18(0);
}

{
  v25 = v0;
  v1 = v0[24];
  Logger.init(subsystem:category:)();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v22 = v0[19];
    v23 = v0[21];
    v6 = v0[13];
    v20 = v0[12];
    v21 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1CEE74000, v3, v4, "error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3865FA0](v8, -1, -1);
    MEMORY[0x1D3865FA0](v7, -1, -1);

    (*(v6 + 8))(v21, v20);
    (*(v5 + 8))(v23, v22);
  }

  else
  {
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:);

  return PCNeuralNetModel.fitLabelEncoder(array:)(v5);
}

uint64_t @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6.super.isa);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

Swift::String_optional __swiftcall PCNeuralNetModel.decodeLabel(index:)(Swift::Int index)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))(v7);
  if ((*(v3 + 48))(v9, 1, v2))
  {
    v10 = outlined destroy of OneHotEncoder<String>.Transformer?(v9, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
    __break(1u);
    goto LABEL_5;
  }

  (*(v3 + 16))(v5, v9, v2);
  outlined destroy of OneHotEncoder<String>.Transformer?(v9, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  OrdinalEncoder.Transformer.category(at:)();
  v10 = (*(v3 + 8))(v5, v2);
  v11 = v14;
  if (!v14)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v10 = v13;
LABEL_6:
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

void PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v415 = a3;
  *&v416 = a2;
  v385 = type metadata accessor for FloatingPointRoundingRule();
  v414 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v384 = &v339 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10ScalarTypeOSgMd, &_s14NeuralNetworks10ScalarTypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v392 = &v339 - v6;
  v343 = type metadata accessor for TensorShape();
  v340 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v413 = &v339 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = type metadata accessor for Tensor();
  v393 = *(v387 - 8);
  v8 = MEMORY[0x1EEE9AC00](v387);
  v345 = &v339 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v346 = &v339 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v348 = &v339 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v356 = &v339 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v383 = &v339 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v382 = &v339 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v421 = &v339 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v406 = &v339 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v391 = &v339 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v420 = &v339 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v394 = &v339 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v409 = &v339 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v408 = &v339 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v423 = &v339 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v410 = &v339 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v412 = &v339 - v38;
  v39 = type metadata accessor for ComputeDevice();
  v425 = *(v39 - 8);
  v426 = v39;
  v40 = MEMORY[0x1EEE9AC00](v39);
  *&v407 = &v339 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  *&v411 = &v339 - v42;
  v424 = type metadata accessor for LearningPhase();
  v422 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v419 = (&v339 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks18RegularizationKindOSgMd, &_s14NeuralNetworks18RegularizationKindOSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v418 = &v339 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks20GradientClippingModeOSgMd, &_s14NeuralNetworks20GradientClippingModeOSgMR);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v417 = &v339 - v47;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);
  MEMORY[0x1EEE9AC00](v355);
  v367 = &v339 - v48;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v373 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v372 = &v339 - v49;
  v50 = type metadata accessor for Logger();
  v51 = *(v50 - 8);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v341 = &v339 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v342 = &v339 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v347 = &v339 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v354 = &v339 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v361 = &v339 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v344 = &v339 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v427 = (&v339 - v65);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v339 - v66;
  v369 = "modelHasBeenTrained";
  v370 = "com.apple.CoreRoutine";
  Logger.init(subsystem:category:)();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1CEE74000, v68, v69, "generating dataset...", v70, 2u);
    MEMORY[0x1D3865FA0](v70, -1, -1);
  }

  v368 = *(v51 + 8);
  v368(v67, v50);
  v71 = v402;
  v72 = MEMORY[0x1E69E7D40];
  v73 = *((*MEMORY[0x1E69E7D40] & *v402) + 0xA8);
  v74 = (*MEMORY[0x1E69E7D40] & *v402) + 168;

  v75 = a1;
  v76 = v416;

  v78 = (v73)(v77);
  v79 = (*((*v72 & *v78) + 0x98))();

  v395 = v73;
  v400 = v74;
  v80 = v73();
  v81 = (*((*v72 & *v80) + 0xF8))();

  v82 = objc_allocWithZone(type metadata accessor for DataSetFeatureMatrix());
  v83 = v75;
  v84 = v415;
  v429 = DataSetFeatureMatrix.init(x:y:inputSteps:outputSteps:unknownLoiId:)(v83, v76, v415, v79, v81);
  v85 = *((*v72 & *v429) + 0x108);
  v86 = v429;
  v87 = v85();

  v88 = (*((*v72 & *v71) + 0xF8))(v87);
  MEMORY[0x1EEE9AC00](v88);
  *(&v339 - 4) = v71;
  *(&v339 - 3) = v84;
  *(&v339 - 2) = &v429;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR, MEMORY[0x1E69B37E8]);
  v89 = v372;
  v90 = v72;
  Sequential.init(layers:)();
  (*((*v72 & *v71) + 0x98))(v89);
  v91 = v427;
  Logger.init(subsystem:category:)();
  v92 = v71;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.info.getter();

  v95 = os_log_type_enabled(v93, v94);
  v365 = v50;
  v362 = v51 + 8;
  if (v95)
  {
    v96 = swift_slowAlloc();
    *&v416 = swift_slowAlloc();
    v428[0] = v416;
    *v96 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CEF0B430;
    v98 = v395;
    v99 = v395();
    v100 = (*((*MEMORY[0x1E69E7D40] & *v99) + 0x80))();

    *(v97 + 32) = v100;
    v101 = v98();
    v102 = (*((*MEMORY[0x1E69E7D40] & *v101) + 0x98))();

    *(v97 + 40) = v102;
    swift_beginAccess();
    v103 = *((*MEMORY[0x1E69E7D40] & *v429) + 0x120);
    v104 = v429;
    v105 = v103();

    *(v97 + 48) = v105;
    v106 = MEMORY[0x1D3865420](v97, MEMORY[0x1E69E6530]);
    v108 = v107;

    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v428);

    *(v96 + 4) = v109;
    _os_log_impl(&dword_1CEE74000, v93, v94, "Model output shape: %s", v96, 0xCu);
    v110 = v416;
    __swift_destroy_boxed_opaque_existential_1Tm(v416);
    v90 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D3865FA0](v110, -1, -1);
    MEMORY[0x1D3865FA0](v96, -1, -1);

    v111 = v427;
    v112 = v365;
  }

  else
  {

    v111 = v91;
    v112 = v50;
  }

  v113 = (v368)(v111, v112);
  v114 = (*v90 & *v92) + 144;
  v115 = v372;
  v359 = *((*v90 & *v92) + 0x90);
  v358 = v114;
  v359(v113);
  v116 = type metadata accessor for GradientClippingMode();
  v117 = v92;
  (*(*(v116 - 8) + 56))(v417, 1, 1, v116);
  v118 = type metadata accessor for RegularizationKind();
  (*(*(v118 - 8) + 56))(v418, 1, 1, v118);
  v371 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR, MEMORY[0x1E69B37E8]);
  v119 = v374;
  Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)();
  v120 = *(v373 + 8);
  v373 += 8;
  v357 = v120;
  v120(v115, v119);
  v121 = v422;
  v122 = v90;
  v123 = v419;
  v124 = v424;
  (*(v422 + 104))(v419, *MEMORY[0x1E69B3810], v424);
  v125 = *((*v122 & *v117) + 0xA0);
  v126 = (*v122 & *v117) + 160;
  v127 = v125(v428);
  Layer.prepare(for:)();
  (*(v121 + 8))(v123, v124);
  v128 = (v127)(v428, 0);
  v129 = v395;
  v130 = (v395)(v128);
  LOBYTE(v127) = (*((*v122 & *v130) + 0xE0))();

  v364 = v125;
  v363 = v126;
  if (v127)
  {
    v131 = v412;
    static ComputeDevice.gpu.getter();
    v133 = v425;
    v132 = v426;
    v134 = *(v425 + 48);
    if (v134(v131, 1, v426) == 1)
    {
      v135 = v411;
      static ComputeDevice.cpu.getter();
      if (v134(v131, 1, v132) != 1)
      {
        outlined destroy of OneHotEncoder<String>.Transformer?(v131, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
      }
    }

    else
    {
      v135 = v411;
      (*(v133 + 32))(v411, v131, v132);
    }

    v139 = v364(v428);
    Layer.place(on:)();
    (*(v133 + 8))(v135, v132);
    v138 = v139(v428, 0);
  }

  else
  {
    v136 = v407;
    static ComputeDevice.cpu.getter();
    v137 = v125(v428);
    Layer.place(on:)();
    v133 = v425;
    (*(v425 + 8))(v136, v426);
    v138 = v137(v428, 0);
  }

  v140 = (v129)(v138);
  v141 = (*((*MEMORY[0x1E69E7D40] & *v140) + 0xC8))();

  v353 = v141;
  if (v141 < 1)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v412 = (v393 + 16);
  v425 = v393 + 8;
  v381 = *MEMORY[0x1E69E7020];
  v380 = v414 + 104;
  v379 = (v414 + 8);
  v378 = (v393 + 32);
  v142 = 1;
  *&v143 = 134218240;
  v349 = v143;
  v411 = xmmword_1CEF0B450;
  v407 = xmmword_1CEF0B460;
  v352 = xmmword_1CEF0B440;
  v351 = vdupq_n_s64(2uLL);
  v350 = vdupq_n_s64(4uLL);
  v414 = v117;
  v144 = MEMORY[0x1E69E7D40];
  v422 = v133 + 56;
  while (1)
  {
    v366 = v142;
    v145 = v429;
    v146 = *((*v144 & *v429) + 0xC0);
    v147 = v429;
    v148 = v146();
    v401 = v147;

    if ((v148 & 0x8000000000000000) != 0)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (!v148)
    {
      v149 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v149 = swift_allocObject();
    v150 = _swift_stdlib_malloc_size(v149);
    v151 = v150 - 32;
    if (v150 < 32)
    {
      v151 = v150 - 25;
    }

    *(v149 + 16) = v148;
    *(v149 + 24) = 2 * (v151 >> 3);
    v152 = (v149 + 32);
    if (v148 < 4)
    {
      for (i = 0; i != v148; ++i)
      {
LABEL_25:
        *v152++ = i;
      }

      goto LABEL_26;
    }

    i = v148 & 0x7FFFFFFFFFFFFFFCLL;
    v152 += v148 & 0x7FFFFFFFFFFFFFFCLL;
    v154 = (v149 + 48);
    v155 = v148 & 0x7FFFFFFFFFFFFFFCLL;
    v156 = v352;
    v157 = v351;
    v158 = v350;
    do
    {
      v154[-1] = v156;
      *v154 = vaddq_s64(v156, v157);
      v156 = vaddq_s64(v156, v158);
      v154 += 2;
      v155 -= 4;
    }

    while (v155);
    if (v148 != i)
    {
      goto LABEL_25;
    }

LABEL_26:
    v159 = *(v149 + 16);
    v160 = v159 - 2;
    if (v159 >= 2)
    {
      break;
    }

LABEL_49:
    v424 = v145;
    if (v159)
    {
      v174 = 0;
      v360 = 0;
      v390 = v149 + 32;
      v175 = (*v144 & *v401) + 352;
      v389 = *((*v144 & *v401) + 0x160);
      v388 = v175;
      v176 = 0.0;
      v177 = MEMORY[0x1E69E7CC0];
      v427 = MEMORY[0x1E69E7CC0];
      v386 = v149;
      while (1)
      {
        if (v174 >= *(v149 + 16))
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v405 = v174;
        v178 = *(v390 + 8 * v174);
        v179 = v401;
        v180 = v389(v178);
        v182 = v181;
        v184 = v183;
        v419 = v179;

        v185 = *(v180 + 16);
        v404 = v177;
        v403 = v184;
        v418 = v182;
        if (v185)
        {
          break;
        }

        if (*(v182 + 2) || *(v184 + 2))
        {
          v188 = MEMORY[0x1E69E7CC0];
LABEL_68:
          v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v195 = swift_allocObject();
          *(v195 + 16) = v411;
          *(v195 + 32) = v185;
          if (!*(v180 + 16))
          {
            goto LABEL_135;
          }

          v196 = v195;
          v197 = *(v180 + 32);

          v198 = *(v197 + 16);

          *(v196 + 40) = v198;
          MEMORY[0x1D3865040](v196);
          v428[0] = v188;
          v199 = *v422;
          v200 = v410;
          (*v422)(v410, 1, 1, v426);
          v201 = v199;
          v417 = v199;
          v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          v203 = MEMORY[0x1E69E6340];
          v204 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &_sSaySfGMd, &_sSaySfGMR, MEMORY[0x1E69E6340]);
          v398 = v202;
          v397 = v204;
          Tensor.init<A>(shape:scalars:on:)();
          v399 = v194;
          v205 = swift_allocObject();
          *(v205 + 16) = v407;
          v206 = v418;
          *(v205 + 32) = *(v418 + 2);
          MEMORY[0x1D3865040]();
          v428[0] = v206;
          v201(v200, 1, 1, v426);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
          lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, v203);
          v207 = v408;
          Tensor.init<A>(shape:scalars:on:)();
          v208 = v393;
          v418 = *(v393 + 16);
          v209 = v394;
          v187 = v387;
          (v418)(v394, v207, v387);
          v210 = *((*MEMORY[0x1E69E7D40] & *v419) + 0x108);
          v211 = v419;
          v210();
          v396 = v211;

          (v417)(v200, 1, 1, v426);
          v212 = v409;
          Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMd, &_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMR);
          v213 = *(v208 + 72);
          v214 = v418;
          v215 = (*(v208 + 80) + 32) & ~*(v208 + 80);
          v216 = swift_allocObject();
          *(v216 + 16) = v411;
          v415 = v215;
          v217 = v216 + v215;
          (v214)(v217, v212, v187);
          *&v416 = v213;
          (v214)(v217 + v213, v423, v187);
          v218 = type metadata accessor for ScalarType();
          v219 = *(v218 - 8);
          v377 = *(v219 + 56);
          v376 = v219 + 56;
          v377(v392, 1, 1, v218);
          v220 = v391;
          Tensor.init(concatenating:alongAxis:scalarType:)();
          v221 = Tensor.rank.getter();
          if (v221 < 0)
          {
            goto LABEL_136;
          }

          v375 = v218;
          specialized Sequence.reversed()(0, v221);
          Tensor.transposed(permutation:)();

          v222 = *v425;
          (*v425)(v220, v187);
          v419 = v222;
          Tensor.expandingShape(at:)();
          v222(v209, v187);
          v223 = swift_allocObject();
          *(v223 + 16) = v407;
          v224 = v403;
          *(v223 + 32) = *(v403 + 2);
          MEMORY[0x1D3865040]();
          v428[0] = v224;
          v225 = v410;
          v226 = v426;
          v227 = v417;
          (v417)(v410, 1, 1, v426);
          Tensor.init<A>(shape:scalars:on:)();
          v228 = v384;
          v229 = v385;
          (*v380)(v384, v381, v385);
          Tensor.cast(to:roundingRule:)();
          (*v379)(v228, v229);
          v230 = *((*MEMORY[0x1E69E7D40] & *v396) + 0x120);
          v231 = v396;
          v230();
          v232 = v418;
          v403 = v231;

          (v227)(v225, 1, 1, v226);
          Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
          Tensor.expandingShape(at:)();
          v419(v209, v187);
          v233 = v382;
          (v232)(v382, v420, v187);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v234 = v383;
            v235 = v378;
            v236 = v404;
            v237 = v427;
          }

          else
          {
            v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v427[2] + 1, 1, v427);
            v234 = v383;
            v235 = v378;
            v236 = v404;
          }

          v239 = v237[2];
          v238 = v237[3];
          if (v239 >= v238 >> 1)
          {
            v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v238 > 1), v239 + 1, 1, v237);
          }

          v237[2] = v239 + 1;
          v427 = v237;
          v240 = v237 + v415 + v239 * v416;
          v241 = *v235;
          (*v235)(v240, v233, v187);
          (v232)(v234, v421, v187);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v236[2] + 1, 1, v236);
          }

          v243 = v236[2];
          v242 = v236[3];
          if (v243 >= v242 >> 1)
          {
            v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v242 > 1), v243 + 1, 1, v236);
          }

          v236[2] = v243 + 1;
          v244 = v241(v236 + v415 + v243 * v416, v234, v187);
          v245 = v427[2];
          v246 = v236;
          v247 = v414;
          v248 = v395;
          v249 = (v395)(v244);
          v250 = MEMORY[0x1E69E7D40];
          v251 = (*((*MEMORY[0x1E69E7D40] & *v249) + 0x80))();

          if (v245 == v251 && (v253 = v246[2], v254 = v248(), v255 = (*((*v250 & *v254) + 0x80))(), v254, v253 == v255))
          {
            v256 = v392;
            v257 = v375;
            v258 = v377;
            v377(v392, 1, 1, v375);
            v259 = v394;
            Tensor.init(concatenating:alongAxis:scalarType:)();
            v258(v256, 1, 1, v257);

            v260 = v391;
            v261 = Tensor.init(concatenating:alongAxis:scalarType:)();
            v262 = v372;
            v263 = (v359)(v261);
            MEMORY[0x1EEE9AC00](v263);
            *(&v339 - 2) = v259;
            *(&v339 - 1) = v260;
            v264 = v260;
            v265 = v356;
            v266 = v374;
            valueWithGradient<A>(at:of:)();
            v357(v262, v266);
            v267 = v364(v428);
            Adam.update(_:with:)();

            v267(v428, 0);
            (*((*MEMORY[0x1E69E7D40] & *v247) + 0x110))(1);
            Tensor.scalar<A>(as:)();
            v176 = v176 + *v428;
            v268 = v419;
            v419(v265, v187);

            v268(v264, v187);
            v252 = (v268)(v394, v187);
            v269 = MEMORY[0x1E69E7CC0];
            v427 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v269 = v246;
          }

          v270 = v414;
          v271 = *((*MEMORY[0x1E69E7D40] & *v414) + 0x138);
          v272 = (v271)(v252);
          [v272 lock];

          LOBYTE(v272) = (*((*MEMORY[0x1E69E7D40] & *v270) + 0x120))();
          v273 = v271();
          [v273 unlock];

          if (v272)
          {
LABEL_102:

            PCNeuralNetModel.clearTrainingInterrupt()();
            v289 = v344;
            Logger.init(subsystem:category:)();
            v290 = Logger.logObject.getter();
            v291 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v290, v291))
            {
              v292 = swift_slowAlloc();
              *v292 = 134217984;
              *(v292 + 4) = v366;
              _os_log_impl(&dword_1CEE74000, v290, v291, "training interrupted at epoch %ld", v292, 0xCu);
              MEMORY[0x1D3865FA0](v292, -1, -1);
            }

            v368(v289, v365);
            v293 = v419;
            v419(v421, v187);
            v293(v406, v187);
            v293(v420, v187);
            v293(v409, v187);
            v293(v408, v187);
            v293(v423, v187);
            outlined destroy of OneHotEncoder<String>.Transformer?(v367, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);

            return;
          }

          v274 = v419;
          v419(v421, v187);
          v274(v406, v187);
          v274(v420, v187);
          v274(v409, v187);
          v274(v408, v187);
          v274(v423, v187);
          v177 = v269;
        }

        else
        {

          if (__OFADD__(v360++, 1))
          {
            goto LABEL_140;
          }
        }

        v149 = v386;
        v174 = v405 + 1;
        if (v405 + 1 == v159)
        {

          v288 = v360 > 0;
          goto LABEL_91;
        }
      }

      v186 = 0;
      v187 = v180 + 32;
      v188 = MEMORY[0x1E69E7CC0];
      while (v186 < *(v180 + 16))
      {
        v189 = *(*(v187 + 8 * v186) + 16);
        if (v189)
        {
          v190 = 0;
          while (1)
          {
            v191 = *(v187 + 8 * v186);
            if (v190 >= *(v191 + 16))
            {
              break;
            }

            v192 = *(v191 + 4 * v190 + 32);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v188 + 2) + 1, 1, v188);
            }

            v149 = *(v188 + 2);
            v193 = *(v188 + 3);
            if (v149 >= v193 >> 1)
            {
              v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v193 > 1), v149 + 1, 1, v188);
            }

            ++v190;
            *(v188 + 2) = v149 + 1;
            *&v188[4 * v149 + 32] = v192;
            if (v189 == v190)
            {
              goto LABEL_54;
            }
          }

          __break(1u);
          goto LABEL_102;
        }

LABEL_54:
        if (++v186 == v185)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_108;
    }

    v360 = 0;
    v288 = 0;
    v176 = 0.0;
LABEL_91:

    Logger.init(subsystem:category:)();
    v149 = v414;
    v276 = Logger.logObject.getter();
    v277 = static os_log_type_t.info.getter();

    v278 = os_log_type_enabled(v276, v277);
    v159 = v365;
    if (v278)
    {
      v279 = swift_slowAlloc();
      *v279 = v349;
      *(v279 + 4) = v366;
      *(v279 + 12) = 2048;
      v280 = v395();
      v281 = (*((*MEMORY[0x1E69E7D40] & *v280) + 0x80))();

      *(v279 + 14) = v176 * v281;
      _os_log_impl(&dword_1CEE74000, v276, v277, "Epoch: %ld, Loss: %f", v279, 0x16u);
      MEMORY[0x1D3865FA0](v279, -1, -1);
    }

    v368(v361, v159);
    if (v288)
    {
      Logger.init(subsystem:category:)();
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        *v284 = v349;
        *(v284 + 4) = v360;
        *(v284 + 12) = 2048;
        v285 = *((*MEMORY[0x1E69E7D40] & *v401) + 0xC0);
        v286 = v401;
        v287 = v285();

        *(v284 + 14) = v287;
        _os_log_impl(&dword_1CEE74000, v282, v283, "datapoints skipped due to unknown visit history information: %ld, total datapoints: %ld", v284, 0x16u);
        MEMORY[0x1D3865FA0](v284, -1, -1);
      }

      v368(v354, v159);
    }

    if (v366 == v353)
    {
      goto LABEL_109;
    }

    v142 = v366 + 1;
    v144 = MEMORY[0x1E69E7D40];
    if (__OFADD__(v366, 1))
    {
      goto LABEL_139;
    }
  }

  v161 = 0;
  LODWORD(v162) = 1;
  while (1)
  {
    v162 = (1664525 * v162 + 1013904223);
    v164 = vcvtd_n_f64_u64(v162, 0x20uLL) * 1.84467441e19;
    if (v164 == INFINITY)
    {
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
      goto LABEL_127;
    }

    if (v164 <= -1.0)
    {
      goto LABEL_120;
    }

    if (v164 >= 1.84467441e19)
    {
      goto LABEL_121;
    }

    v165 = v164 * v159;
    v166 = (v164 * v159) >> 64;
    if (v159 > v165)
    {
      v167 = -v159 % v159;
      if (v167 > v165)
      {
        break;
      }
    }

LABEL_39:
    v169 = v161 + v166;
    if (__OFADD__(v161, v166))
    {
      goto LABEL_122;
    }

    if (v161 != v169)
    {
      v170 = *(v149 + 16);
      if (v161 >= v170)
      {
        goto LABEL_123;
      }

      if (v169 >= v170)
      {
        goto LABEL_124;
      }

      v171 = *(v149 + 32 + 8 * v161);
      v172 = *(v149 + 32 + 8 * v169);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v149);
      }

      v173 = *(v149 + 16);
      if (v161 >= v173)
      {
        goto LABEL_125;
      }

      *(v149 + 32 + 8 * v161) = v172;
      if (v169 >= v173)
      {
        goto LABEL_126;
      }

      *(v149 + 32 + 8 * v169) = v171;
    }

    --v159;
    if (v161++ == v160)
    {
      v159 = *(v149 + 16);
      goto LABEL_49;
    }
  }

  while (1)
  {
    v162 = (1664525 * v162 + 1013904223);
    v168 = vcvtd_n_f64_u64(v162, 0x20uLL) * 1.84467441e19;
    if (v168 == INFINITY)
    {
      break;
    }

    if (v168 <= -1.0)
    {
      goto LABEL_106;
    }

    if (v168 >= 1.84467441e19)
    {
      goto LABEL_107;
    }

    if (v167 <= v168 * v159)
    {
      v166 = (v168 * v159) >> 64;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v144 = MEMORY[0x1E69E7D40];
  v294 = (*((*MEMORY[0x1E69E7D40] & *v149) + 0x108))();
  v295 = v413;
  if ((v294 & 1) == 0)
  {
    outlined destroy of OneHotEncoder<String>.Transformer?(v367, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);

    return;
  }

  v296 = v372;
  (v359)();
  v297 = v374;
  v298 = Layer.parameters(recursively:)();
  v357(v296, v297);
  v300 = *(v298 + 16);
  if (v300)
  {
    v301 = 0;
    v302 = (*(v393 + 80) + 32) & ~*(v393 + 80);
    v415 = v298;
    v303 = v298 + v302;
    v421 = *(v393 + 72);
    v423 = *(v393 + 16);
    v417 = (v340 + 8);
    *&v299 = 136315394;
    v416 = v299;
    v422 = v425 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v304 = v346;
    v418 = v149;
    while (1)
    {
      v426 = v300;
      v427 = v301;
      v305 = v348;
      v306 = v387;
      v307 = v423;
      (v423)(v348, v303, v387);
      Logger.init(subsystem:category:)();
      v307(v304, v305, v306);
      v308 = v345;
      v307(v345, v305, v306);
      v309 = Logger.logObject.getter();
      v310 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v309, v310))
      {
        v311 = swift_slowAlloc();
        v420 = swift_slowAlloc();
        v428[0] = v420;
        *v311 = v416;
        LODWORD(v419) = v310;
        Tensor.shape.getter();
        lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, 255, MEMORY[0x1E69B3800], MEMORY[0x1E69B3808]);
        v312 = v295;
        v313 = v343;
        v314 = dispatch thunk of CustomStringConvertible.description.getter();
        v316 = v315;
        (*v417)(v312, v313);
        v317 = *v425;
        (*v425)(v304, v306);
        v318 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v314, v316, v428);

        *(v311 + 4) = v318;
        *(v311 + 12) = 2048;
        v319 = Tensor.scalarCount.getter();
        v317(v308, v306);
        *(v311 + 14) = v319;
        _os_log_impl(&dword_1CEE74000, v309, v419, "layer shape: %s,  parameters: %ld", v311, 0x16u);
        v320 = v420;
        __swift_destroy_boxed_opaque_existential_1Tm(v420);
        MEMORY[0x1D3865FA0](v320, -1, -1);
        v321 = v311;
        v149 = v418;
        MEMORY[0x1D3865FA0](v321, -1, -1);
      }

      else
      {
        v317 = *v425;
        (*v425)(v308, v306);

        v317(v304, v306);
      }

      v159 = v365;
      v368(v347, v365);
      v322 = v348;
      v323 = Tensor.scalarCount.getter();
      v317(v322, v306);
      v301 = (v427 + v323);
      if (__OFADD__(v427, v323))
      {
        goto LABEL_141;
      }

      v303 += v421;
      v300 = v426 - 1;
      v295 = v413;
      v304 = v346;
      v144 = MEMORY[0x1E69E7D40];
      if (v426 == 1)
      {

        goto LABEL_128;
      }
    }
  }

LABEL_127:

  v301 = 0;
LABEL_128:
  Logger.init(subsystem:category:)();
  v324 = v149;
  v325 = Logger.logObject.getter();
  v326 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v325, v326))
  {
    v327 = swift_slowAlloc();
    *v327 = v349;
    v328 = v395();
    v329 = v301;
    v330 = (*((*v144 & *v328) + 0x98))();

    *(v327 + 4) = v330;
    *(v327 + 12) = 2048;
    v331 = *((*v144 & *v401) + 0x120);
    v332 = v401;
    v333 = v331();
    v301 = v329;
    v334 = v333;

    *(v327 + 14) = v334;
    _os_log_impl(&dword_1CEE74000, v325, v326, "output steps: %ld,  output lois: %ld", v327, 0x16u);
    MEMORY[0x1D3865FA0](v327, -1, -1);
  }

  else
  {

    v325 = v324;
  }

  v335 = v341;

  v368(v342, v159);
  Logger.init(subsystem:category:)();
  v336 = Logger.logObject.getter();
  v337 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v336, v337))
  {
    v338 = swift_slowAlloc();
    *v338 = 134217984;
    *(v338 + 4) = v301;
    _os_log_impl(&dword_1CEE74000, v336, v337, "model size: %ld parameters", v338, 0xCu);
    MEMORY[0x1D3865FA0](v338, -1, -1);
  }

  v368(v335, v159);
  outlined destroy of OneHotEncoder<String>.Transformer?(v367, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);
}

void closure #1 in PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(void *a1@<X0>, char *a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v63 = a4;
  v5 = type metadata accessor for TensorShape();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Reshape();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Dense();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ReLU();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Conv1D();
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA8);
  v20 = a1;
  v21 = (v19)(v15);
  v64 = (*((*v18 & *v21) + 0xB0))();

  type metadata accessor for ParameterInitializer();
  v22 = type metadata accessor for ComputeDevice();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v49 = v23 + 56;
  v50 = v24;
  v24(v13, 1, 1, v22);
  static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v13, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  static ParameterInitializer.zeros.getter();
  v52 = v17;
  Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)();
  v65 = v10;
  ReLU.init()();
  v25 = Flatten.init()();
  v64 = v20;
  v26 = MEMORY[0x1E69E7D40];
  v51 = v19;
  v27 = (v19)(v25);
  v28 = (*((*v26 & *v27) + 0x98))();

  v29 = v26;
  v30 = *((*v26 & **v66) + 0x120);
  v31 = *v66;
  v32 = v30();

  if ((v28 * v32) >> 64 == (v28 * v32) >> 63)
  {
    v50(v13, 1, 1, v22);
    static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
    outlined destroy of OneHotEncoder<String>.Transformer?(v13, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
    static ParameterInitializer.zeros.getter();
    v33 = v56;
    Dense.init(unitCount:weightInitializer:biasInitializer:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1CEF0B430;
    v35 = v51;
    v36 = v51();
    v37 = (*((*v26 & *v36) + 0x80))();

    *(v34 + 32) = v37;
    v38 = v35();
    v39 = (*((*v26 & *v38) + 0x98))();

    *(v34 + 40) = v39;
    v40 = *((*v29 & **v66) + 0x120);
    v41 = *v66;
    v42 = v40();

    *(v34 + 48) = v42;
    MEMORY[0x1D3865040](v34);
    v43 = v62;
    Reshape.init(_:)();
    v44 = v61;
    v45 = v52;
    v46 = v65;
    v47 = v54;
    v48 = v57;
    static SequentialBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)();
    outlined destroy of Reshape(v43);
    (*(v59 + 8))(v33, v44);
    (*(v55 + 8))(v46, v48);
    (*(v53 + 8))(v45, v47);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13LossReductionOSgMd, &_s14NeuralNetworks13LossReductionOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for Tensor();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR, MEMORY[0x1E69B37E8]);
  Layer.callAsFunction(_:)();
  v10 = *MEMORY[0x1E69B3820];
  v11 = type metadata accessor for LossReduction();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v5, &_s14NeuralNetworks13LossReductionOSgMd, &_s14NeuralNetworks13LossReductionOSgMR);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in PCNeuralNetModel.predictFromTensor(xPredict:xPredictMatrix:timesteps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a1;
  v40 = a3;
  v4 = type metadata accessor for TensorShape();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tensor.scalarCount.getter();
  Tensor.shape.getter();
  v8 = TensorShape.subscript.getter();
  v9 = *(v5 + 8);
  result = v9(v7, v4);
  if (!__OFSUB__(v8, 1))
  {
    if (v8 - 1 < 0)
    {
      goto LABEL_52;
    }

    v11 = 0;
    v41 = v8 - 1;
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      Tensor.shape.getter();
      v12 = TensorShape.subscript.getter();
      result = v9(v7, v4);
      if (__OFSUB__(v12, 1))
      {
        break;
      }

      if (v12 - 1 < 0)
      {
        goto LABEL_50;
      }

      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      v43 = v12 - 1;
LABEL_7:
      v47 = v13;
      Tensor.shape.getter();
      v15 = TensorShape.subscript.getter();
      result = v9(v7, v4);
      if (__OFSUB__(v15, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

      if (v15 - 1 < 0)
      {
        goto LABEL_47;
      }

      v44 = v14;
      v16 = 0;
      v48 = MEMORY[0x1E69E7CC0];
      v46 = v15 - 1;
      while (1)
      {
        Tensor.shape.getter();
        v17 = TensorShape.subscript.getter();
        result = v9(v7, v4);
        v18 = v11 * v17;
        if ((v11 * v17) >> 64 != (v11 * v17) >> 63)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          *v40 = v42;
          return result;
        }

        Tensor.shape.getter();
        v19 = TensorShape.subscript.getter();
        result = v9(v7, v4);
        v20 = a2;
        v21 = v18 * v19;
        if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
        {
          goto LABEL_40;
        }

        v22 = v20;
        Tensor.shape.getter();
        v23 = TensorShape.subscript.getter();
        result = v9(v7, v4);
        v24 = v47 * v23;
        if ((v47 * v23) >> 64 != (v47 * v23) >> 63)
        {
          goto LABEL_41;
        }

        v25 = __OFADD__(v21, v24);
        v26 = v21 + v24;
        if (v25)
        {
          goto LABEL_42;
        }

        v25 = __OFADD__(v26, v16);
        v27 = v26 + v16;
        if (v25)
        {
          goto LABEL_43;
        }

        v28 = *(v45 + 4 * v27);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
          v48 = result;
        }

        v30 = *(v48 + 2);
        v29 = *(v48 + 3);
        if (v30 >= v29 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v48);
          v48 = result;
        }

        v31 = v46;
        v32 = v48;
        *(v48 + 2) = v30 + 1;
        *&v32[4 * v30 + 32] = v28;
        if (v31 == v16)
        {
          break;
        }

        v25 = __OFADD__(v16++, 1);
        a2 = v22;
        if (v25)
        {
          goto LABEL_44;
        }
      }

      v14 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
        v14 = result;
      }

      v34 = v14[2];
      v33 = v14[3];
      v35 = v47;
      if (v34 >= v33 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v14, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
        v35 = v47;
        v14 = result;
      }

      v14[2] = v34 + 1;
      v14[v34 + 4] = v48;
      if (v35 != v43)
      {
        v25 = __OFADD__(v35, 1);
        v13 = v35 + 1;
        a2 = v22;
        if (v25)
        {
          goto LABEL_48;
        }

        goto LABEL_7;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42, &_ss23_ContiguousArrayStorageCySaySaySfGGGMd, &_ss23_ContiguousArrayStorageCySaySaySfGGGMR, &_sSaySaySfGGMd, &_sSaySaySfGGMR);
        v42 = result;
      }

      v37 = v42[2];
      v36 = v42[3];
      if (v37 >= v36 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v42, &_ss23_ContiguousArrayStorageCySaySaySfGGGMd, &_ss23_ContiguousArrayStorageCySaySaySfGGGMR, &_sSaySaySfGGMd, &_sSaySaySfGGMR);
        v42 = result;
      }

      v38 = v42;
      v42[2] = v37 + 1;
      v38[v37 + 4] = v14;
      if (v11 == v41)
      {
        goto LABEL_45;
      }

      v25 = __OFADD__(v11++, 1);
      a2 = v22;
      if (v25)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t PCNeuralNetModel.predictFromDataset(featureMatrix:)(void *a1)
{
  v195 = a1;
  v147 = type metadata accessor for Logger();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v148 = v144 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  *&v187 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v166 = v144 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10ScalarTypeOSgMd, &_s14NeuralNetworks10ScalarTypeOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v169 = v144 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = v144 - v7;
  v177 = type metadata accessor for TensorShape();
  v183 = *(v177 - 8);
  v8 = MEMORY[0x1EEE9AC00](v177);
  v152 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v151 = v144 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = v144 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v193 = v144 - v14;
  v192 = type metadata accessor for Tensor();
  v171 = *(v192 - 8);
  v15 = MEMORY[0x1EEE9AC00](v192);
  v164 = v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v163 = v144 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v162 = v144 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v161 = v144 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v160 = v144 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v159 = v144 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v167 = v144 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v188 = v144 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v191 = v144 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v190 = v144 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v189 = v144 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v197 = v144 - v37;
  v196 = type metadata accessor for ComputeDevice();
  v194 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v39 = v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for LearningPhase();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 104))(v43, *MEMORY[0x1E69B3818], v40);
  v175 = v1;
  v44 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v45 = v44(&v198);
  v46 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR, MEMORY[0x1E69B37E8]);
  Layer.prepare(for:)();
  (*(v41 + 8))(v43, v40);
  v47 = v194;
  v48 = v45(&v198, 0);
  v49 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v175) + 0x1B8))(v48);
  v50 = v44(&v198);
  v158 = v46;
  Layer.place(on:)();
  (*(v47 + 1))(v39, v196);
  v51 = v50(&v198, 0);
  v52 = *((*v49 & *v195) + 0xC0);
  v53 = (*v49 & *v195) + 192;
  result = (v52)(v51);
  if (result < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    v55 = result;
    v145 = v52;
    v144[1] = v53;
    v56 = &v183;
    if (result)
    {
      v153 = 0;
      v57 = 0;
      v58 = (*v49 & *v195);
      v186 = (v47 + 56);
      v185 = v171 + 16;
      v176 = (v171 + 8);
      v58 += 44;
      v173 = *v58;
      v172 = v58;
      v150 = (v183 + 16);
      v155 = (v187 + 8);
      v154 = (v171 + 32);
      v59 = MEMORY[0x1E69E7CC0];
      v187 = xmmword_1CEF0B450;
      v157 = xmmword_1CEF0B460;
      v149 = xmmword_1CEF0B430;
      v156 = result;
      v184 = (v183 + 8);
      while (1)
      {
        v60 = v173(v57);
        v62 = v61;

        result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSaySfG_Tt1g5(v60, MEMORY[0x1E69E7CC0]);
        if ((result & 1) != 0 && !*(v62 + 16))
        {

          if (__OFADD__(v153, 1))
          {
            goto LABEL_48;
          }

          ++v153;
        }

        else
        {
          v183 = v57;
          v182 = v59;
          v63 = *(v60 + 16);
          if (v63)
          {
            v64 = 0;
            v65 = v60 + 32;
            v66 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              if (v64 >= *(v60 + 16))
              {
                __break(1u);
                goto LABEL_45;
              }

              v67 = *(*(v65 + 8 * v64) + 16);
              if (v67)
              {
                break;
              }

LABEL_8:
              if (++v64 == v63)
              {
                goto LABEL_20;
              }
            }

            v68 = 0;
            while (1)
            {
              v56 = *(v65 + 8 * v64);
              if (v68 >= v56[2])
              {
                break;
              }

              v69 = *(v56 + v68 + 8);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 16) + 1, 1, v66);
                v66 = result;
              }

              v71 = *(v66 + 16);
              v70 = *(v66 + 24);
              if (v71 >= v70 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v66);
                v66 = result;
              }

              ++v68;
              *(v66 + 16) = v71 + 1;
              *(v66 + 4 * v71 + 32) = v69;
              if (v67 == v68)
              {
                goto LABEL_8;
              }
            }

            __break(1u);
            break;
          }

          v66 = MEMORY[0x1E69E7CC0];
LABEL_20:
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          result = swift_allocObject();
          *(result + 16) = v187;
          *(result + 32) = v63;
          if (!*(v60 + 16))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v73 = result;
          v74 = *(v60 + 32);

          v75 = *(v74 + 16);

          *(v73 + 40) = v75;
          MEMORY[0x1D3865040](v73);
          v198 = v66;
          v76 = *v186;
          v77 = v168;
          v78 = v196;
          (*v186)(v168, 1, 1, v196);
          v194 = v76;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          v79 = MEMORY[0x1E69E6340];
          lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &_sSaySfGMd, &_sSaySfGMR, MEMORY[0x1E69E6340]);
          Tensor.init<A>(shape:scalars:on:)();
          v170 = v72;
          v80 = swift_allocObject();
          *(v80 + 16) = v157;
          *(v80 + 32) = *(v62 + 16);
          MEMORY[0x1D3865040]();
          v198 = v62;
          v76(v77, 1, 1, v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
          lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, v79);
          v81 = v189;
          Tensor.init<A>(shape:scalars:on:)();
          v82 = v171;
          v83 = *(v171 + 16);
          v84 = v192;
          v85 = v83(v191, v81, v192);
          v86 = v175;
          (*((*MEMORY[0x1E69E7D40] & *v175) + 0xF0))(v85);
          v194(v77, 1, 1, v196);
          v87 = v190;
          Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMd, &_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMR);
          v88 = *(v82 + 72);
          v89 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v90 = swift_allocObject();
          *(v90 + 16) = v187;
          v91 = v90 + v89;
          v83((v90 + v89), v87, v84);
          v181 = v83;
          v83((v91 + v88), v197, v84);
          v92 = type metadata accessor for ScalarType();
          (*(*(v92 - 8) + 56))(v169, 1, 1, v92);
          v93 = v167;
          Tensor.init(concatenating:alongAxis:scalarType:)();
          result = Tensor.rank.getter();
          if (result < 0)
          {
            goto LABEL_46;
          }

          v179 = v89;
          v180 = v88;
          specialized Sequence.reversed()(0, result);
          v94 = v191;
          Tensor.transposed(permutation:)();

          v95 = *v176;
          (*v176)(v93, v84);
          Tensor.expandingShape(at:)();
          v194 = v95;
          v95(v94, v84);
          v96 = v193;
          Tensor.shape.getter();
          v97 = TensorShape.subscript.getter();
          v178 = *v184;
          v98 = v178(v96, v177);
          v99 = MEMORY[0x1E69E7D40];
          v100 = *((*MEMORY[0x1E69E7D40] & *v86) + 0xA8);
          v101 = v100(v98);
          v102 = v86;
          v103 = (*((*v99 & *v101) + 0x80))();

          if (v97 == v103)
          {
            v104 = v166;
            (*((*MEMORY[0x1E69E7D40] & *v102) + 0x90))();
            v105 = v188;
            v106 = v174;
            Layer.callAsFunction(_:)();
            (*v155)(v104, v106);
            v107 = v159;
            softmax(_:alongAxis:)();
            v108 = v94;
            v109 = v192;
            v110 = v194;
            (v194)(v108, v192);
            v181(v160, v107, v109);
            v59 = v182;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57 = v183;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
            }

            v55 = v156;
            v113 = v59[2];
            v112 = v59[3];
            v114 = v113 + 1;
            if (v113 >= v112 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v59);
            }

            (v110)(v159, v109);
            v115 = v160;
          }

          else
          {
            v116 = v188;
            v117 = Tensor.shape.getter();
            v118 = v100(v117);
            (*((*MEMORY[0x1E69E7D40] & *v118) + 0x80))();

            v119 = v177;
            (*v150)(v165, v96, v177);
            TensorShape.subscript.setter();
            v178(v96, v119);
            v120 = v116;
            v121 = Tensor.broadcasted(to:)();
            v122 = v166;
            (*((*MEMORY[0x1E69E7D40] & *v102) + 0x90))(v121);
            v123 = v174;
            Layer.callAsFunction(_:)();
            (*v155)(v122, v123);
            softmax(_:alongAxis:)();
            v124 = v94;
            v109 = v192;
            (v194)(v124, v192);
            v125 = swift_allocObject();
            *(v125 + 16) = v149;
            v126 = v120;
            Tensor.shape.getter();
            v127 = TensorShape.subscript.getter();
            v128 = v96;
            v129 = v178;
            v178(v128, v119);
            *(v125 + 32) = v127;
            v130 = v151;
            Tensor.shape.getter();
            v131 = TensorShape.subscript.getter();
            v129(v130, v119);
            *(v125 + 40) = v131;
            v132 = v152;
            Tensor.shape.getter();
            v133 = TensorShape.subscript.getter();
            v129(v132, v119);
            *(v125 + 48) = v133;
            v134 = v163;
            Tensor.slice(lowerBounds:upperBounds:)();

            v181(v164, v134, v109);
            v59 = v182;
            v105 = v126;
            v135 = v119;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
            }

            v57 = v183;
            v113 = v59[2];
            v136 = v59[3];
            v114 = v113 + 1;
            if (v113 >= v136 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v113 + 1, 1, v59);
            }

            v137 = v194;
            (v194)(v163, v109);
            (v137)(v162, v109);
            (v137)(v161, v109);
            v129(v165, v135);
            v110 = v137;
            v115 = v164;
            v55 = v156;
          }

          (v110)(v105, v109);
          (v110)(v190, v109);
          (v110)(v189, v109);
          (v110)(v197, v109);
          v59[2] = v114;
          (*v154)(v59 + v179 + v113 * v180, v115, v109);
        }

        if (++v57 == v55)
        {
          goto LABEL_40;
        }
      }
    }

    *(v56 - 32) = 0;
    v59 = MEMORY[0x1E69E7CC0];
LABEL_40:
    Logger.init(subsystem:category:)();
    v138 = v195;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 134218240;
      *(v141 + 4) = v153;
      *(v141 + 12) = 2048;
      *(v141 + 14) = v145();

      _os_log_impl(&dword_1CEE74000, v139, v140, "datapoints skipped due to unknown visit history information: %ld, total datapoints: %ld", v141, 0x16u);
      MEMORY[0x1D3865FA0](v141, -1, -1);
    }

    else
    {

      v139 = v138;
    }

    v142 = v147;
    v143 = v146;

    (*(v143 + 8))(v148, v142);
    return v59;
  }

  return result;
}

uint64_t PCNeuralNetModel.getBNNSComputeDevice()@<X0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for Logger();
  v2 = *(v24 - 8);
  v3 = MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ComputeDevice();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComputeDevice.bnnsCPU.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of OneHotEncoder<String>.Transformer?(v10, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
    Logger.init(subsystem:category:)();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CEE74000, v15, v16, "BNNS unavailable, falling back to CPU backend", v17, 2u);
      MEMORY[0x1D3865FA0](v17, -1, -1);
    }

    (*(v2 + 8))(v5, v24);
    return static ComputeDevice.cpu.getter();
  }

  else
  {
    v23 = a1;
    v19 = *(v12 + 32);
    v19(v14, v10, v11);
    Logger.init(subsystem:category:)();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CEE74000, v20, v21, "Using BNNS backend", v22, 2u);
      MEMORY[0x1D3865FA0](v22, -1, -1);
    }

    (*(v2 + 8))(v7, v24);
    return (v19)(v23, v14, v11);
  }
}

id PCNeuralNetModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataSetFeatureMatrix.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t PCNeuralNetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();
  v14 = v37;
  v15 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x90))(v15);
  v45 = 0;
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F0]);
  v38 = v13;
  v16 = v36;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    (*(v7 + 8))(v9, v6);
    v17 = *(v11 + 8);
    v18 = v38;
  }

  else
  {
    v36 = v11;
    v20 = (*(v7 + 8))(v9, v6);
    v21 = MEMORY[0x1E69E7D40];
    v22 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0xA8))(v20);
    v39 = v22;
    v44 = 1;
    type metadata accessor for NeuralNetConfig();
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type NeuralNetConfig and conformance NeuralNetConfig, v23, type metadata accessor for NeuralNetConfig, &protocol conformance descriptor for NeuralNetConfig);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v24 = v35;
    (*((*v21 & *v14) + 0xC0))();
    v43 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OneHotEncoder<String>.Transformer and conformance OneHotEncoder<A>.Transformer, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR, MEMORY[0x1E69662F0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = outlined destroy of OneHotEncoder<String>.Transformer?(v24, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
    v26 = *((*v21 & *v37) + 0xD8);
    v27 = v34;
    v26(v25);
    v42 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR, MEMORY[0x1E6966308]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = outlined destroy of OneHotEncoder<String>.Transformer?(v27, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
    v29 = v37;
    v30 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v37) + 0xF0))(v28);
    v41 = 4;
    v31 = KeyedEncodingContainer.encode(_:forKey:)();
    v32 = v36;
    (*((*v30 & *v29) + 0x108))(v31);
    v40 = 5;
    v33 = v38;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v32 + 8);
    v18 = v33;
  }

  return v17(v18, v10);
}

char *PCNeuralNetModel.init(from:)(void *a1)
{
  v2 = v1;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v40 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v54 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v40 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v40 - v8;
  v10 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR, MEMORY[0x1E69B37E8]);
  v52 = v10;
  Sequential.init(layers:)();
  v11 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_encoderAsTransformer;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
  v13 = *(*(v12 - 8) + 56);
  v53 = v11;
  v13(&v2[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_labelEncoderAsTransformer;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v16 = *(*(v15 - 8) + 56);
  v51 = v14;
  v16(&v2[v14], 1, 1, v15);
  v17 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  *&v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape] = 0;
  v18 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained] = 0;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining] = 0;
  v19 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  v20 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v48 = v19;
  *&v2[v19] = v20;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();
  v46 = v9;
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v22 = v49;
    v26 = v54;
    v27 = v52;
    v28 = v53;
    v29 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    (*(v26 + 8))(&v2[v27], v22);
    outlined destroy of OneHotEncoder<String>.Transformer?(&v2[v28], &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
    outlined destroy of OneHotEncoder<String>.Transformer?(&v2[v29], &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);

    type metadata accessor for PCNeuralNetModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v15;
    v41 = v17;
    v40 = v18;
    v23 = v43;
    LOBYTE(v57) = 0;
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F8]);
    v24 = v44;
    v25 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v52;
    swift_beginAccess();
    (*(v54 + 40))(&v2[v31], v24, v25);
    swift_endAccess();
    type metadata accessor for NeuralNetConfig();
    v56 = 1;
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type NeuralNetConfig and conformance NeuralNetConfig, v32, type metadata accessor for NeuralNetConfig, &protocol conformance descriptor for NeuralNetConfig);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config] = v57;
    LOBYTE(v57) = 2;
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OneHotEncoder<String>.Transformer and conformance OneHotEncoder<A>.Transformer, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR, MEMORY[0x1E69662F8]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v53;
    swift_beginAccess();
    outlined assign with take of OneHotEncoder<String>.Transformer?(v23, &v2[v33], &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
    swift_endAccess();
    LOBYTE(v57) = 3;
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR, MEMORY[0x1E6966310]);
    v34 = v42;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v51;
    swift_beginAccess();
    outlined assign with take of OneHotEncoder<String>.Transformer?(v34, &v2[v35], &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
    swift_endAccess();
    LOBYTE(v57) = 4;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v41;
    swift_beginAccess();
    *&v2[v37] = v36;
    v56 = 5;
    LOBYTE(v36) = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v40;
    swift_beginAccess();
    v2[v38] = v36 & 1;
    v39 = type metadata accessor for PCNeuralNetModel(0);
    v55.receiver = v2;
    v55.super_class = v39;
    v2 = objc_msgSendSuper2(&v55, sel_init);
    (*(v45 + 8))(v46, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PCNeuralNetModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 456))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of OneHotEncoder<String>.Transformer?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of OneHotEncoder<String>.Transformer?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of OneHotEncoder<String>.Transformer?(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of OneHotEncoder<String>.Transformer?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
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

uint64_t outlined assign with take of OneHotEncoder<String>.Transformer?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for PCNeuralNetModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PCNeuralNetModel;
  if (!type metadata singleton initialization cache for PCNeuralNetModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZSaySfG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t specialized NeuralNetConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737065745374756FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C6E6564646968 && a2 == 0xEF657A6953726579 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7368636F7065 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x476E4F6E69617274 && a2 == 0xEA00000000007570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C6E776F6E6B6E75 && a2 == 0xEC0000004449696FLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t specialized PCNeuralNetModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PCNeuralNetModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *specialized PCNeuralNetModel.predictFromTensor(xPredict:xPredictMatrix:timesteps:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Tensor();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v2) + 0x108))(v11) & 1) == 0)
  {
    Logger.init(subsystem:category:)();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CEE74000, v37, v38, "model has not been trained, skipping prediction", v39, 2u);
      MEMORY[0x1D3865FA0](v39, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *((*v14 & *v2) + 0xA8);

  v17 = v15(v16);
  v18 = (*((*v14 & *v17) + 0xF8))();

  v19 = objc_allocWithZone(type metadata accessor for DataSetFeatureMatrix());
  v20 = DataSetFeatureMatrix.init(x:inputSteps:unknownLoiId:)(a1, a2, v18);
  v21 = PCNeuralNetModel.predictFromDataset(featureMatrix:)(v20);
  v22 = v21[2];
  if (!v22)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v40[0] = v20;
  v40[1] = v21;
  v42 = *(v44 + 16);
  v23 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v24 = (v44 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  v44 += 16;
  v41 = *(v44 + 56);
  for (i = v42(v8, v23, v43); ; i = v42(v8, v23, v28))
  {
    MEMORY[0x1EEE9AC00](i);
    v40[-2] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySaySfGGGMd, &_sSaySaySaySfGGGMR);
    result = Tensor.withUnsafeBytes<A>(_:)();
    v29 = v45;
    v30 = *(v45 + 16);
    v31 = v25[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v32 <= v25[3] >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v33 = v31 + v30;
      }

      else
      {
        v33 = v31;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v33, 1, v25, &_ss23_ContiguousArrayStorageCySaySaySfGGGMd, &_ss23_ContiguousArrayStorageCySaySaySfGGGMR, &_sSaySaySfGGMd, &_sSaySaySfGGMR);
      v25 = result;
      if (*(v29 + 16))
      {
LABEL_16:
        if ((v25[3] >> 1) - v25[2] < v30)
        {
          goto LABEL_29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySfGGMd, &_sSaySaySfGGMR);
        swift_arrayInitWithCopy();

        if (v30)
        {
          v34 = v25[2];
          v35 = __OFADD__(v34, v30);
          v36 = v34 + v30;
          if (v35)
          {
            goto LABEL_30;
          }

          v25[2] = v36;
        }

        goto LABEL_5;
      }
    }

    if (v30)
    {
      goto LABEL_28;
    }

LABEL_5:
    v28 = v43;
    (*v24)(v8, v43);
    v23 += v41;
    if (!--v22)
    {

      return v25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F8]);
    lazy protocol witness table accessor for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F0]);
    v4 = MEMORY[0x1E69B3850];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Dense and conformance Dense, 255, MEMORY[0x1E69B3850], MEMORY[0x1E69B3860]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Dense and conformance Dense, 255, v4, MEMORY[0x1E69B3858]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGMd, &_s14NeuralNetworks10SequentialVyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGMR);
    lazy protocol witness table accessor for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F8]);
    lazy protocol witness table accessor for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F0]);
    lazy protocol witness table accessor for type Flatten and conformance Flatten();
    lazy protocol witness table accessor for type Flatten and conformance Flatten();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyAA6Conv1DVAA4ReLUVGMd, &_s14NeuralNetworks10SequentialVyAA6Conv1DVAA4ReLUVGMR);
    v4 = MEMORY[0x1E69B3870];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Conv1D and conformance Conv1D, 255, MEMORY[0x1E69B3870], MEMORY[0x1E69B3880]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Conv1D and conformance Conv1D, 255, v4, MEMORY[0x1E69B3878]);
    v5 = MEMORY[0x1E69B3830];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type ReLU and conformance ReLU, 255, MEMORY[0x1E69B3830], MEMORY[0x1E69B3840]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type ReLU and conformance ReLU, 255, v5, MEMORY[0x1E69B3838]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Flatten and conformance Flatten()
{
  result = lazy protocol witness table cache variable for type Flatten and conformance Flatten;
  if (!lazy protocol witness table cache variable for type Flatten and conformance Flatten)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Flatten and conformance Flatten);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Flatten and conformance Flatten;
  if (!lazy protocol witness table cache variable for type Flatten and conformance Flatten)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Flatten and conformance Flatten);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F8]);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>, MEMORY[0x1E69B37F0]);
    v4 = MEMORY[0x1E69B38B0];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Reshape and conformance Reshape, 255, MEMORY[0x1E69B38B0], MEMORY[0x1E69B38C0]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Reshape and conformance Reshape, 255, v4, MEMORY[0x1E69B38B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode()
{
  result = lazy protocol witness table cache variable for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode;
  if (!lazy protocol witness table cache variable for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode);
  }

  return result;
}

void type metadata completion function for PCNeuralNetModel(uint64_t a1)
{
  type metadata accessor for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OneHotEncoder<String>.Transformer?(319, &lazy cache variable for type metadata for OneHotEncoder<String>.Transformer?, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OneHotEncoder<String>.Transformer?(319, &lazy cache variable for type metadata for OrdinalEncoder<String>.Transformer?, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of PCNeuralNetModel.__allocating_init(from:)()
{
  return (*(v0 + 344))();
}

{
  return (*(v0 + 456))();
}

uint64_t dispatch thunk of PCNeuralNetModel.encodeWithLabelEncoder(array:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PCNeuralNetModel.encodeWithLabelEncoder(array:);

  return v7(a1);
}

uint64_t dispatch thunk of PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PCNeuralNetModel.fitLabelEncoder(array:);

  return v7(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void type metadata accessor for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
    type metadata accessor for Reshape();
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR, MEMORY[0x1E69B37E8]);
    v1 = type metadata accessor for Sequential();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>);
    }
  }
}

void type metadata accessor for OneHotEncoder<String>.Transformer?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PCNeuralNetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PCNeuralNetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t outlined init with copy of OneHotEncoder<String>.Transformer?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:)(v2, v3, v4);
}

uint64_t objectdestroy_56Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined destroy of Reshape(uint64_t a1)
{
  v2 = type metadata accessor for Reshape();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1CEE8D4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PCPInteractionRecordReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        switch(v13)
        {
          case 0:
            v15 = 0;
            while (1)
            {
              LOBYTE(v22) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              if ((v22 & 0x80000000) == 0)
              {
                break;
              }

              if (v15++ > 8)
              {
                goto LABEL_55;
              }
            }

            [a2 hasError];
            goto LABEL_55;
          case 1:
            [a1 clearOneofValuesForInteractionCommand];
            *(a1 + 64) |= 1u;
            *(a1 + 24) = 1;
            v14 = objc_alloc_init(PCPLifecycleEvent);
            objc_storeStrong((a1 + 40), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPLifecycleEventReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            goto LABEL_54;
          case 2:
            [a1 clearOneofValuesForInteractionCommand];
            *(a1 + 64) |= 1u;
            *(a1 + 24) = 2;
            v14 = objc_alloc_init(PCPApplyState);
            objc_storeStrong((a1 + 8), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPApplyStateReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            goto LABEL_54;
        }
      }

      else if (v13 > 4)
      {
        if (v13 == 5)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 5;
          v14 = objc_alloc_init(PCPPredictRequest);
          objc_storeStrong((a1 + 48), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictRequestReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }

        if (v13 == 6)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 6;
          v14 = objc_alloc_init(PCPComputeInterruptRequest);
          objc_storeStrong((a1 + 32), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPComputeInterruptRequestReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 3)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 3;
          v14 = objc_alloc_init(PCPRetrieveState);
          objc_storeStrong((a1 + 56), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPRetrieveStateReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }

        if (v13 == 4)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 4;
          v14 = objc_alloc_init(PCPComputeRequest);
          objc_storeStrong((a1 + 16), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPComputeRequestReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPMapsViewedPlaceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 16), v15);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPApplyStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PCPAlgorithmState);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PCPAlgorithmStateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPMotionActivityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v33 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v35 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v35 & 0x7F) << v21;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v30 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v36 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v36 & 0x7F) << v14;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v30 = 20;
        }

        *(a1 + v30) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(PCPPredictedContextLocation);
          [a1 addPredictedContextLocations:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictedContextLocationReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PCPPredictedContextTransition);
          [a1 addPredictedContextTransitions:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictedContextTransitionReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(PCPPredictedContextWorkout);
            [a1 addPredictedContextWorkouts:v14];
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PCPPredictedContextWorkoutReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            goto LABEL_43;
          case 4:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_47;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_47:
            *(a1 + 40) = v21;
            goto LABEL_48;
          case 5:
            v14 = objc_alloc_init(PCPPredictedContextAnalytics);
            objc_storeStrong((a1 + 8), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PCPPredictedContextAnalyticsReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

LABEL_43:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPLocationOfInterestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 52) |= 1u;
            v34 = 0;
            v24 = [a2 position] + 8;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v29 = v34;
            v30 = 8;
            goto LABEL_56;
          case 5:
            *(a1 + 52) |= 2u;
            v34 = 0;
            v26 = [a2 position] + 8;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v29 = v34;
            v30 = 16;
LABEL_56:
            *(a1 + v30) = v29;
            goto LABEL_57;
          case 6:
            v21 = objc_alloc_init(PCPMapItem);
            objc_storeStrong((a1 + 40), v21);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PCPMapItemReadFrom(v21, a2))
            {
LABEL_59:

              return 0;
            }

            goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = PBReaderReadData();
            v23 = *(a1 + 32);
            *(a1 + 32) = v22;

            goto LABEL_57;
          case 2:
            v21 = objc_alloc_init(PCPLocation);
            objc_storeStrong((a1 + 24), v21);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v21, a2))
            {
              goto LABEL_59;
            }

LABEL_44:
            PBReaderRecallMark();

            goto LABEL_57;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v34 & 0x7F) << v14;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_51;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_51:
            *(a1 + 48) = v20;
            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextTransportReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CEEA1A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a26 = &a30;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a26);

  _Unwind_Resume(a1);
}

void std::vector<double>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(result, a2 - v2);
  }
}

void sub_1CEEA2438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1CEEA2588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  a13 = &a10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEA2664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<double>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E83B7E08, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEA292C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<double>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t *std::vector<std::vector<double>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t *std::vector<double>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1CEEA2D30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<Hdbscan>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 200);
    if (v3)
    {
      *(v2 + 208) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 176);
    if (v4)
    {
      *(v2 + 184) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 152);
    if (v5)
    {
      *(v2 + 160) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 128);
    if (v6)
    {
      *(v2 + 136) = v6;
      operator delete(v6);
    }

    v10 = (v2 + 104);
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v10 = (v2 + 80);
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v7 = *(v2 + 48);
    if (v7)
    {
      *(v2 + 56) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 24);
    if (v8)
    {
      *(v2 + 32) = v8;
      operator delete(v8);
    }

    v9 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v9;
      operator delete(v9);
    }

    JUMPOUT(0x1D3865860);
  }

  return result;
}

uint64_t PCPHealthKitWorkoutReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterPhenotypeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v56[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v56[0] & 0x7F) << v5;
      if ((v56[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_45;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_45;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 88;
LABEL_45:
        v31 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_87;
      case 4u:
        v28 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 72), v28);
        v56[0] = 0;
        v56[1] = 0;
        if (PBReaderPlaceMark() && PCPLocationReadFrom(v28, a2))
        {
          PBReaderRecallMark();

LABEL_87:
          v54 = [a2 position];
          if (v54 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 5u:
        *(a1 + 104) |= 1u;
        v56[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 8;
        goto LABEL_86;
      case 6u:
        *(a1 + 104) |= 2u;
        v56[0] = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 16;
        goto LABEL_86;
      case 7u:
        *(a1 + 104) |= 8u;
        v56[0] = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 32;
        goto LABEL_86;
      case 8u:
        *(a1 + 104) |= 0x20u;
        v56[0] = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 48;
        goto LABEL_86;
      case 9u:
        *(a1 + 104) |= 0x40u;
        v56[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 56;
        goto LABEL_86;
      case 0xAu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 104) |= 0x80u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v56[0] & 0x7F) << v21;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_69:
        *(a1 + 96) = v27;
        goto LABEL_87;
      case 0xBu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 104) |= 0x100u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v56[0] & 0x7F) << v36;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v42) = 0;
            goto LABEL_71;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_71:
        *(a1 + 100) = v42;
        goto LABEL_87;
      case 0xCu:
        *(a1 + 104) |= 0x10u;
        v56[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 40;
        goto LABEL_86;
      case 0xDu:
        *(a1 + 104) |= 4u;
        v56[0] = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 24;
LABEL_86:
        *(a1 + v47) = v46;
        goto LABEL_87;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_87;
    }
  }
}

uint64_t PCPWorkoutClusterReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28[0] & 0x7F) << v5;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = PBReaderReadString();
            v18 = 56;
            goto LABEL_33;
          case 2:
            *(a1 + 64) |= 2u;
            v28[0] = 0;
            v20 = [a2 position] + 8;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v28[0];
            v24 = 16;
            goto LABEL_49;
          case 3:
            *(a1 + 64) |= 1u;
            v28[0] = 0;
            v15 = [a2 position] + 8;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v28[0];
            v24 = 8;
LABEL_49:
            *(a1 + v24) = v23;
            goto LABEL_50;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(PCPClusterPhenotype);
          objc_storeStrong((a1 + 24), v14);
          v28[0] = 0;
          v28[1] = 0;
          if (!PBReaderPlaceMark() || !PCPClusterPhenotypeReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          v17 = PBReaderReadString();
          v18 = 32;
LABEL_33:
          v19 = *(a1 + v18);
          *(a1 + v18) = v17;

          goto LABEL_50;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addEmbeddingIdentifiersWithPhenotype:v14];
          }

          goto LABEL_41;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addEmbeddingIdentifiers:v14];
          }

LABEL_41:

          goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterEmbeddingReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(PCPClusterEmbeddingLocation);
          objc_storeStrong((a1 + 24), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !PCPClusterEmbeddingLocationReadFrom(v14, a2))
          {
LABEL_37:

            return 0;
          }

LABEL_33:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(PCPClusterEmbeddingTime);
          objc_storeStrong((a1 + 32), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !PCPClusterEmbeddingTimeReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v14 = *(a1 + 16);
          *(a1 + 16) = v15;
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PCPClusterEmbeddingActivity);
          objc_storeStrong((a1 + 8), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !PCPClusterEmbeddingActivityReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterEmbeddingActivityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 16;
LABEL_30:
        v19 = *(a1 + v17);
        *(a1 + v17) = v16;

        goto LABEL_33;
      }

      if (v13 != 2)
      {
        goto LABEL_26;
      }

      *(a1 + 40) |= 1u;
      v22 = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v22;
LABEL_33:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v16 = PBReaderReadData();
      v17 = 24;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_33;
      }

      v16 = PBReaderReadString();
      v17 = 32;
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}