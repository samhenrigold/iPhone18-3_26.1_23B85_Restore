void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(float **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = 16 * v7;
        v12 = *a3 + 16 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 40);
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v10 < v13) ^ (*v14 >= *(v14 - 4));
          v14 += 4;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 16 * v6 - 16;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v22 = v21 + v11;
                v23 = v21 + v18;
                v24 = *v22;
                v25 = *(v22 + 8);
                v26 = v11 != v18 || v22 >= v23 + 16;
                if (v26)
                {
                  *v22 = *v23;
                }

                *v23 = v24;
                *(v23 + 8) = v25;
              }

              ++v20;
              v18 -= 16;
              v11 += 16;
            }

            while (v20 < v19);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v27 = *a3;
            v28 = *a3 + 16 * v9;
            v29 = v7 - v9;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                v32 = *(v31 + 8);
                if (v32 >= *(v31 - 8))
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_117;
                }

                v33 = *v31;
                *v31 = *(v31 - 16);
                *(v31 - 8) = v32;
                *(v31 - 16) = v33;
                v31 -= 16;
                v26 = __CFADD__(v30++, 1);
              }

              while (!v26);
              ++v9;
              v28 += 16;
              --v29;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
        v8 = v78;
      }

      v35 = v8[2];
      v34 = v8[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v8);
        v8 = v79;
      }

      v8[2] = v36;
      v37 = v8 + 4;
      v38 = &v8[2 * v35 + 4];
      *v38 = v7;
      v38[1] = v9;
      v83 = *result;
      if (!*result)
      {
        goto LABEL_120;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v8[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v8[4];
            v43 = v8[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_62:
            if (v45)
            {
              goto LABEL_102;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_105;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_110;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v36 < 2)
          {
            goto LABEL_104;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_77:
          if (v60)
          {
            goto LABEL_107;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (v67 < v59)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v39 - 1 >= v36)
          {
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
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v71 = &v37[2 * v39 - 2];
          v72 = *v71;
          v73 = &v37[2 * v39];
          v74 = v73[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v71), (*a3 + 16 * *v73), (*a3 + 16 * v74), v83);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v74 < v72)
          {
            goto LABEL_97;
          }

          v75 = v8;
          v76 = v8[2];
          if (v39 > v76)
          {
            goto LABEL_98;
          }

          *v71 = v72;
          v71[1] = v74;
          if (v39 >= v76)
          {
            goto LABEL_99;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v73 + 2, 16 * (v76 - 1 - v39));
          v75[2] = v76 - 1;
          v77 = v76 > 2;
          v8 = v75;
          v5 = 0;
          if (!v77)
          {
            goto LABEL_91;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_100;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_101;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_103;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_106;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_111;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_121;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v85, *result, a3);
LABEL_95:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, float *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v15 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 4;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[4 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t specialized Array._checkIndex(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x25F8A01B0](v4);
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError()
{
  result = lazy protocol witness table cache variable for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError;
  if (!lazy protocol witness table cache variable for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError;
  if (!lazy protocol witness table cache variable for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartChunkingInput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartChunkingInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for SmartChunkingPreprocessing(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartChunkingPreprocessing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartChunkingPreprocessing.SmartChunkingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s10OmniSearch0B10ResultItemOWOcTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_9_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_16_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_30_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v17 + 4) = v16;
  *(v17 + 12) = 2080;

  return SearchResultItem.type.getter(&a16);
}

void OUTLINED_FUNCTION_37_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return OSSignpostIntervalState.init(id:isOpen:)();
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return Error.localizedDescription.getter();
}

uint64_t OUTLINED_FUNCTION_40_8()
{
}

uint64_t String.oms_BOOLeanValue.getter(uint64_t a1, uint64_t a2)
{
  v2 = String.lowercased()();
  v3 = v2._countAndFlagsBits == 7562617 && v2._object == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v2._countAndFlagsBits == 28526 && v2._object == 0xE200000000000000)
  {

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v6 & 1) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logging.answerSynthesis);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v8, v9, "PQA Verification model returns something else %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x25F8A1050](v11, -1, -1);
      MEMORY[0x25F8A1050](v10, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t static UniversalEmbeddingModelClient.shared()()
{
  v0 = [objc_opt_self() service];
  type metadata accessor for UniversalEmbeddingModelClient();
  swift_allocObject();
  return UniversalEmbeddingModelClient.init(madService:)(v0);
}

void *UniversalEmbeddingModelClient.madService.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *UniversalEmbeddingModelClient.tokenizer.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UniversalEmbeddingModelClient.init(madService:)(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSUTokenizer, 0x277D014C8);
  v4 = objc_opt_self();
  v5 = a1;
  v6 = @nonobjc CSUTokenizer.__allocating_init(for:)([v4 csuTokenizerRevision]);

  *(v2 + 24) = v6;
  return v2;
}

id @nonobjc CSUTokenizer.__allocating_init(for:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() TokenizerForRevision:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t UniversalEmbeddingModelClient.embed(items:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](UniversalEmbeddingModelClient.embed(items:));
}

uint64_t UniversalEmbeddingModelClient.embed(items:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  v0[8] = v1;
  [v1 setExtendedContextLength_];
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Logging.answerSynthesis);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = [v3 version];

    _os_log_impl(&dword_25D85C000, v4, v5, "MADTextEmbeddingRequest version = %lu", v6, 0xCu);
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v4 = v3;
  }

  v7 = v0[7];

  v8 = *(v7 + 16);
  v0[10] = v8;
  if (v8)
  {
    v9 = v0[6];
    v10 = *(v9 + 16);
    if (v10)
    {
      v30 = v3;
      v31 = MEMORY[0x277D84F90];
      v11 = v8;
      specialized ContiguousArray.reserveCapacity(_:)();
      v12 = (v9 + 48);
      do
      {
        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v16 = objc_allocWithZone(MEMORY[0x277D268A0]);
        outlined copy of SmartChunkingInput(v13, v14, v15);
        v17 = [v16 init];
        if (v15)
        {
          outlined bridged method (mbgnn) of @objc MADTextInput.addTokenIDs(_:)(v13, v17);
          outlined consume of SmartChunkingInput(v13, v14, 1);
        }

        else
        {
          v18 = MEMORY[0x25F89F4C0](v13, v14);
          [v17 addText_];
          outlined consume of SmartChunkingInput(v13, v14, 0);
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += 24;
        --v10;
      }

      while (v10);
      v3 = v30;
      v19 = v31;
    }

    else
    {
      v26 = v8;
      v19 = MEMORY[0x277D84F90];
    }

    v0[11] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    v0[12] = v27;
    *(v27 + 16) = xmmword_25DBC8190;
    *(v27 + 32) = v3;
    v28 = v3;
    v29 = swift_task_alloc();
    v0[13] = v29;
    *v29 = v0;
    v29[1] = UniversalEmbeddingModelClient.embed(items:);

    return MADService.perform(_:textInputs:)();
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25D85C000, v20, v21, "Couldn't fetch embedding due to error: madService is nil", v22, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v23 = OUTLINED_FUNCTION_3_13();

    return v24(v23);
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v0;

  if (v0)
  {
    v5 = UniversalEmbeddingModelClient.embed(items:);
  }

  else
  {

    v5 = UniversalEmbeddingModelClient.embed(items:);
  }

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  v3 = *(v0 + 112);
  if (!*(v1 + 16))
  {

    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315138;
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v8 + 4) = v9;
    _os_log_impl(&dword_25D85C000, v3, v4, "Couldn't fetch embedding due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 80);
  }

  v12 = OUTLINED_FUNCTION_3_13();

  return v13(v12);
}

uint64_t MADService.perform(_:textInputs:)()
{
  OUTLINED_FUNCTION_48();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = swift_getObjectType();

  return MEMORY[0x2822009F8](MADService.perform(_:textInputs:));
}

{
  if (specialized Array.count.getter())
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    v4 = *(v0 + 24);
    *(v3 + 16) = v2;
    *(v3 + 24) = v4;
    *(v3 + 40) = v1;
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySfGGMd, &_sSaySaySfGGMR);
    *v5 = v0;
    v5[1] = MADService.perform(_:textInputs:);

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x800000025DBF0900, partial apply for closure #1 in MADService.perform(_:textInputs:), v3, v6);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logging.answerSynthesis);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25D85C000, v8, v9, "No requests to perform", v10, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_47();
  *v5 = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v6 = MADService.perform(_:textInputs:);
  }

  else
  {

    v6 = MADService.perform(_:textInputs:);
  }

  return MEMORY[0x2822009F8](v6);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t UniversalEmbeddingModelClient.__deallocating_deinit()
{
  UniversalEmbeddingModelClient.deinit();

  return swift_deallocClassInstance();
}

Swift::Int MADService.EmbeddingError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MADService.EmbeddingError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MADService.EmbeddingError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

float static MADService.convertFromUInt16BitPatternToFloat32(UInt16BitPattern:)(__int16 a1)
{
  _H0 = a1;
  __asm { FCVT            S0, H0 }

  return result;
}

void closure #1 in MADService.perform(_:textInputs:)(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySaySfGGs5Error_pGMd, &_sScCySaySaySfGGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  if (a3 >> 62)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for MADTextInput, 0x277D268A0);
  v13 = Array._bridgeToObjectiveC()().super.isa;
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v14, v11, v7);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = partial apply for closure #1 in closure #1 in MADService.perform(_:textInputs:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v19 performRequests:isa textInputs:v13 completionHandler:v17];
  _Block_release(v17);
}

void closure #1 in closure #1 in MADService.perform(_:textInputs:)(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySaySfGGs5Error_pGMd, &_sScCySaySaySfGGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!specialized Array.count.getter())
  {
    lazy protocol witness table accessor for type MADService.EmbeddingError and conformance MADService.EmbeddingError();
    swift_allocError();
    *v12 = 0;
    goto LABEL_3;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((a4 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F89FFD0](0, a4);
  }

  else
  {
    v8 = *(a4 + 32);
  }

  v9 = v8;
  v10 = [v8 error];
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySaySfGGs5Error_pGMd, &_sScCySaySaySfGGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

LABEL_9:
    return;
  }

  v13 = outlined bridged method (pb) of @objc MADTextEmbeddingRequest.embeddingResults.getter(v9);
  if (!v13)
  {
    lazy protocol witness table accessor for type MADService.EmbeddingError and conformance MADService.EmbeddingError();
    swift_allocError();
    *v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySaySfGGs5Error_pGMd, &_sScCySaySaySfGGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_9;
  }

  v14 = v13;
  v15 = specialized Array.count.getter();
  v43 = v9;
  if (!v15)
  {
    goto LABEL_33;
  }

  if (v15 >= 1)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v44 = v14 & 0xC000000000000001;
    v46 = v14;
    v47 = a5;
    v45 = v15;
    do
    {
      if (v44)
      {
        v18 = MEMORY[0x25F89FFD0](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      if (one-time initialization token for answerSynthesis != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logging.answerSynthesis);
      v21 = v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        v25 = [v21 embedding];
        v26 = [v25 type];

        *(v24 + 4) = v26;
        _os_log_impl(&dword_25D85C000, v22, v23, "Embedding type = %ld", v24, 0xCu);
        MEMORY[0x25F8A1050](v24, -1, -1);
      }

      else
      {

        v22 = v21;
      }

      v27 = v21;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        v31 = [v27 embedding];
        v32 = [v31 count];

        *(v30 + 4) = v32;
        _os_log_impl(&dword_25D85C000, v28, v29, "Embedding count = %ld", v30, 0xCu);
        MEMORY[0x25F8A1050](v30, -1, -1);
      }

      else
      {

        v28 = v27;
      }

      v33 = [v27 embedding];
      v34 = [v33 data];

      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = specialized Data.withUnsafeBytes<A>(_:)(v35, v37, v47);
      outlined consume of Data._Representation(v35, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v40;
      }

      v39 = *(v17 + 16);
      if (v39 >= *(v17 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v41;
      }

      ++v16;

      *(v17 + 16) = v39 + 1;
      *(v17 + 8 * v39 + 32) = v38;
      v14 = v46;
    }

    while (v45 != v16);
LABEL_33:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySaySfGGs5Error_pGMd, &_sScCySaySaySfGGs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    return;
  }

  __break(1u);
}

char *closure #1 in closure #1 in closure #1 in MADService.perform(_:textInputs:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    result = closure #1 in closure #1 in closure #1 in closure #1 in MADService.perform(_:textInputs:)(result, (a2 - result) / 2, &v5);
    v4 = v5;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *a3 = v4;
  return result;
}

char *closure #1 in closure #1 in closure #1 in closure #1 in MADService.perform(_:textInputs:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  if (!a2)
  {
LABEL_7:
    *a3 = v4;
    return result;
  }

  v5 = a2;
  v6 = result;
  v15 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = v15;
    v7 = *(v15 + 16);
    do
    {
      _H8 = *v6;
      v16 = v4;
      v9 = *(v4 + 24);
      if (v7 >= v9 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1);
        v4 = v16;
      }

      __asm { FCVT            S0, H8 }

      *(v4 + 16) = v7 + 1;
      *(v4 + 4 * v7 + 32) = _S0;
      v6 += 2;
      ++v7;
      --v5;
    }

    while (v5);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v5 = v6;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(result + 24);
      result = *(result + 16);
      v5 = v4;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v5);
      break;
    case 3uLL:
      result = 0;
      v3 = 0;
      goto LABEL_5;
    default:
      v3 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v3);
      break;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  result = closure #1 in closure #1 in closure #1 in MADService.perform(_:textInputs:)(&v5, &v5 + BYTE6(a2), &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

char *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v6 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = MEMORY[0x25F899010]();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = closure #1 in closure #1 in closure #1 in MADService.perform(_:textInputs:)(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc MADTextInput.addTokenIDs(_:)(uint64_t a1, void *a2)
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 addTokenIDs_];
}

unint64_t lazy protocol witness table accessor for type MADService.EmbeddingError and conformance MADService.EmbeddingError()
{
  result = lazy protocol witness table cache variable for type MADService.EmbeddingError and conformance MADService.EmbeddingError;
  if (!lazy protocol witness table cache variable for type MADService.EmbeddingError and conformance MADService.EmbeddingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MADService.EmbeddingError and conformance MADService.EmbeddingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MADService.EmbeddingError and conformance MADService.EmbeddingError;
  if (!lazy protocol witness table cache variable for type MADService.EmbeddingError and conformance MADService.EmbeddingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MADService.EmbeddingError and conformance MADService.EmbeddingError);
  }

  return result;
}

uint64_t dispatch thunk of UniversalEmbeddingModelClient.embed(items:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of UniversalEmbeddingModelClient.embed(items:);

  return v6(a1);
}

uint64_t dispatch thunk of UniversalEmbeddingModelClient.embed(items:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_47();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for MADService.EmbeddingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void partial apply for closure #1 in closure #1 in MADService.perform(_:textInputs:)(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySaySfGGs5Error_pGMd, &_sScCySaySaySfGGs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in MADService.perform(_:textInputs:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined bridged method (pb) of @objc MADTextEmbeddingRequest.embeddingResults.getter(void *a1)
{
  v1 = [a1 embeddingResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MemoryCreationQUResult.init()()
{
  OUTLINED_FUNCTION_113();
  v31 = type metadata accessor for LocalizedStringResource.BundleDescription();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v30 = v5 - v4;
  OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for Locale();
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  DisplayRepresentation.init(title:subtitle:image:)();
  v23 = type metadata accessor for MemoryCreationQUResult(0);
  v27 = v23[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiGMd, &_s10AppIntents14EntityPropertyCySiGMR);
  OUTLINED_FUNCTION_16_12();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v26 = *(v2 + 104);
  v26(v30, v24, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(v0 + v27) = EntityProperty<>.init(title:)();
  v28 = v23[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v30, v24, v31);
  OUTLINED_FUNCTION_12_9();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(v0 + v28) = EntityProperty<>.init(title:)();
  v29 = v23[7];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v30, v24, v31);
  OUTLINED_FUNCTION_12_9();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(v0 + v29) = EntityProperty<>.init(title:)();
  return EntityProperty.wrappedValue.setter();
}

uint64_t type metadata accessor for MemoryCreationQUResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for MemoryCreationQUResult;
  if (!type metadata singleton initialization cache for MemoryCreationQUResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MemoryCreationQUResult.version.setter(uint64_t a1)
{
  type metadata accessor for MemoryCreationQUResult(0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t one-time initialization function for typeDisplayRepresentation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static MemoryCreationQUResult.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static MemoryCreationQUResult.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static HotelReservationEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static HotelReservationEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static RestaurantReservationEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static RestaurantReservationEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static TicketedTransportationEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static TicketedTransportationEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static VehicleReservationEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static VehicleReservationEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static ShippingOrderEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static ShippingOrderEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static MediaEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static MediaEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SourceDocument.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SourceDocument.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchAnswerEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchAnswerEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchAppEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchAppEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static HydratedEntityType.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static HydratedEntityType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchGlobalEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchGlobalEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  __swift_project_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  __swift_project_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchSpotlightEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchSpotlightEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v0, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  __swift_project_value_buffer(v0, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchNLGEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchNLGEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchPropertyRequest.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchPropertyRequest.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static HydrationContext.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static HydrationContext.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static HydrationEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static HydrationEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchPropertyResponse.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchPropertyResponse.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchToolClientType.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchToolClientType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static StructuredQueryEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static StructuredQueryEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static LocationQueryEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static LocationQueryEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static PersonQueryEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static PersonQueryEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static TemporalReference.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static TemporalReference.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static ContactHandleType.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static ContactHandleType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static AppEntityStatus.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static AppEntityStatus.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchCATContext.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchCATContext.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchCATEntity.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchCATEntity.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static EntityMatch.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static EntityMatch.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchContext.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchContext.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t MemoryCreationQUResult.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static MemoryCreationQUResult.typeDisplayRepresentation);
}

uint64_t static MemoryCreationQUResult.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static MemoryCreationQUResult.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static MemoryCreationQUResult.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static MemoryCreationQUResult.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MemoryCreationQUResult.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static MemoryCreationQUResult.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static MemoryCreationQUResult.typeDisplayRepresentation : MemoryCreationQUResult.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = MemoryCreationQUResult.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static MemoryCreationQUResult.typeDisplayRepresentation : MemoryCreationQUResult.Type(uint64_t a1)
{
  v2 = MemoryCreationQUResult.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t MemoryCreationQUResult.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_113();
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t MemoryCreationQUResult.displayRepresentation.setter(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t MemoryCreationQUResult.version.getter()
{
  type metadata accessor for MemoryCreationQUResult(0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*MemoryCreationQUResult.version.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_9_12(v1);
  OUTLINED_FUNCTION_17_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t MemoryCreationQUResult.$version.getter()
{
  type metadata accessor for MemoryCreationQUResult(0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t MemoryCreationQUResult.encodedMemoryCreationQUParse.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for MemoryCreationQUResult(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t MemoryCreationQUResult.encodedMemoryCreationQUParse.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_11_9();
  outlined init with copy of IntentFile?(a1, v1);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentFile?(a1);
}

uint64_t outlined init with copy of IntentFile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IntentFile?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*MemoryCreationQUResult.encodedMemoryCreationQUParse.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_9_12(v1);
  OUTLINED_FUNCTION_11_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t MemoryCreationQUResult.$encodedMemoryCreationQUParse.getter()
{
  type metadata accessor for MemoryCreationQUResult(0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for MemoryCreationQUResult(v0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t key path setter for MemoryCreationQUResult.encodedMemoryCreationQUParse : MemoryCreationQUResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  outlined init with copy of IntentFile?(a1, &v12 - v9);
  return a5(v10);
}

uint64_t MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_10_9();
  outlined init with copy of IntentFile?(a1, v1);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentFile?(a1);
}

uint64_t (*MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_9_12(v1);
  OUTLINED_FUNCTION_10_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

void MemoryCreationQUResult.version.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t MemoryCreationQUResult.$encodedMemoryCreationQUPerformanceMetrics.getter()
{
  type metadata accessor for MemoryCreationQUResult(0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t MemoryCreationQUResult.init(parse:performanceMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v87 = a1;
  v85 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  v76 = v5;
  MEMORY[0x28223BE20](v6);
  v77 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v75 = &v72 - v10;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_14();
  v79 = v12;
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  v72 = v13;
  MEMORY[0x28223BE20](v14);
  v78 = &v72 - v15;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  OUTLINED_FUNCTION_14();
  v88 = v16;
  v89 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v83 = v19 - v18;
  OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for Locale();
  v21 = OUTLINED_FUNCTION_114(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v22 = type metadata accessor for String.LocalizationValue();
  v23 = OUTLINED_FUNCTION_114(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v24);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v26);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v28 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v30 = type metadata accessor for MemoryCreationQUResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36();
  v34 = v33 - v32;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v28);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  DisplayRepresentation.init(title:subtitle:image:)();
  v84 = v30[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiGMd, &_s10AppIntents14EntityPropertyCySiGMR);
  OUTLINED_FUNCTION_16_12();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42 = *MEMORY[0x277CC9110];
  v43 = v88;
  v81 = *(v89 + 104);
  v89 += 104;
  v44 = v83;
  v81(v83, v42, v88);
  OUTLINED_FUNCTION_2_14();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v82 = EntityProperty<>.init(title:)();
  *(v84 + v34) = v82;
  v84 = v30[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  v74 = "mber of the response";
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45 = v81;
  v81(v44, v42, v43);
  OUTLINED_FUNCTION_2_14();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v73 = EntityProperty<>.init(title:)();
  *(v84 + v34) = v73;
  v84 = v30;
  v46 = v30[7];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45(v44, v42, v88);
  OUTLINED_FUNCTION_2_14();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(v34 + v46) = EntityProperty<>.init(title:)();
  v90[0] = 3;
  EntityProperty.wrappedValue.setter();
  dispatch thunk of MemoryCreationQUParse.encode()();
  v89 = v34;
  v47 = type metadata accessor for UTType();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v51 = OUTLINED_FUNCTION_53_3();
  outlined copy of Data._Representation(v51, v52);
  v53 = v78;
  OUTLINED_FUNCTION_53_3();
  IntentFile.init(data:filename:type:)();
  v54 = *(v79 + 16);
  v55 = v77;
  v56 = v53;
  v57 = v80;
  v54(v77, v56, v80);
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
  outlined init with copy of IntentFile?(v55, v76);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentFile?(v55);
  v59 = dispatch thunk of MemoryCreationQUPerformanceMetrics.encode()();
  v61 = v60;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v47);
  outlined copy of Data._Representation(v59, v61);
  v65 = v72;
  IntentFile.init(data:filename:type:)();
  v66 = v77;
  v67 = v80;
  v54(v77, v65, v80);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
  outlined init with copy of IntentFile?(v66, v76);
  EntityProperty.wrappedValue.setter();

  outlined consume of Data._Representation(v59, v61);
  v68 = OUTLINED_FUNCTION_53_3();
  outlined consume of Data._Representation(v68, v69);
  outlined destroy of IntentFile?(v66);
  v70 = *(v79 + 8);
  v70(v72, v67);
  v70(v78, v67);
  v71 = v85;
  outlined init with take of MemoryCreationQUResult(v89, v85);
  return __swift_storeEnumTagSinglePayload(v71, 0, 1, v84);
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance MemoryCreationQUResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult(&lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult, type metadata accessor for MemoryCreationQUResult, &protocol conformance descriptor for MemoryCreationQUResult);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance MemoryCreationQUResult(uint64_t a1)
{
  lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult(&lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult, type metadata accessor for MemoryCreationQUResult, &protocol conformance descriptor for MemoryCreationQUResult);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance MemoryCreationQUResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult(&lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult, type metadata accessor for MemoryCreationQUResult, &protocol conformance descriptor for MemoryCreationQUResult);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance MemoryCreationQUResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance MemoryCreationQUResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult(&lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult, type metadata accessor for MemoryCreationQUResult, &protocol conformance descriptor for MemoryCreationQUResult);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t outlined destroy of MemoryCreationQUResult(uint64_t a1)
{
  v2 = type metadata accessor for MemoryCreationQUResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of MemoryCreationQUResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemoryCreationQUResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void type metadata completion function for MemoryCreationQUResult(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EntityProperty<Int>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityProperty<IntentFile?>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for EntityProperty<Int>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<Int>)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void type metadata accessor for EntityProperty<IntentFile?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<IntentFile?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<IntentFile?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IntentFile? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult(&lazy protocol witness table cache variable for type IntentFile and conformance IntentFile, MEMORY[0x277CB9C50], MEMORY[0x277CB9C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IntentFile and conformance IntentFile, MEMORY[0x277CB9C50], MEMORY[0x277CB9C60]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type IntentFile and conformance IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    lazy protocol witness table accessor for type SearchPropertyResponse and conformance SearchPropertyResponse(&lazy protocol witness table cache variable for type IntentFile and conformance IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentFile? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for MemoryCreationQUResult(0);
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return type metadata accessor for MemoryCreationQUResult(0);
}

uint64_t static SearchToolMCGrounding.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static SearchToolMCGrounding.isDiscoverable = a1;
  return result;
}

uint64_t key path getter for static SearchToolMCGrounding.isDiscoverable : SearchToolMCGrounding.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SearchToolMCGrounding.isDiscoverable;
  return result;
}

uint64_t key path setter for static SearchToolMCGrounding.isDiscoverable : SearchToolMCGrounding.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SearchToolMCGrounding.isDiscoverable = v1;
  return result;
}

uint64_t one-time initialization function for title()
{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static SearchToolMCGrounding.title);
  __swift_project_value_buffer(v0, static SearchToolMCGrounding.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static SearchToolMCQU.title);
  __swift_project_value_buffer(v0, static SearchToolMCQU.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenFlightReservationEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenFlightReservationEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenGenericEventEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenGenericEventEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenHotelReservationEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenHotelReservationEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenIDCardBusinessEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenIDCardBusinessEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenIDCardPersonalEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenIDCardPersonalEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenMediaEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenMediaEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenRestaurantReservationEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenRestaurantReservationEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenSearchSpotlightEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenSearchSpotlightEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenTicketedShowEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenTicketedShowEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenTicketedTransportationEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenTicketedTransportationEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static OpenVehicleReservationEntityIntent.title);
  __swift_project_value_buffer(v0, static OpenVehicleReservationEntityIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static SearchTool.title);
  __swift_project_value_buffer(v0, static SearchTool.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static SearchToolControl.title);
  __swift_project_value_buffer(v0, static SearchToolControl.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t static SearchToolMCGrounding.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  __swift_project_value_buffer(v2, static SearchToolMCGrounding.title);
  OUTLINED_FUNCTION_51();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t one-time initialization function for description()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v7, static SearchToolMCGrounding.description);
  __swift_project_value_buffer(v7, static SearchToolMCGrounding.description);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  *(swift_allocObject() + 16) = xmmword_25DBC8180;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v7, static SearchToolMCQU.description);
  __swift_project_value_buffer(v7, static SearchToolMCQU.description);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  *(swift_allocObject() + 16) = xmmword_25DBC8180;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenFlightReservationEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenFlightReservationEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenGenericEventEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenGenericEventEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenHotelReservationEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenHotelReservationEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenIDCardBusinessEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenIDCardBusinessEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenIDCardPersonalEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenIDCardPersonalEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenMediaEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenMediaEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenRestaurantReservationEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenRestaurantReservationEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenSearchSpotlightEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenSearchSpotlightEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenTicketedShowEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenTicketedShowEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenTicketedTransportationEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenTicketedTransportationEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  __swift_allocate_value_buffer(v0, static OpenVehicleReservationEntityIntent.description);
  v1 = __swift_project_value_buffer(v0, static OpenVehicleReservationEntityIntent.description);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v7, static SearchTool.description);
  __swift_project_value_buffer(v7, static SearchTool.description);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  *(swift_allocObject() + 16) = xmmword_25DBC8180;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v7, static SearchToolControl.description);
  __swift_project_value_buffer(v7, static SearchToolControl.description);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  *(swift_allocObject() + 16) = xmmword_25DBC8180;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

uint64_t SearchToolMCGrounding.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_16(&one-time initialization token for description);
  }

  v0 = type metadata accessor for IntentDescription();

  return __swift_project_value_buffer(v0, static SearchToolMCGrounding.description);
}

uint64_t static SearchToolMCGrounding.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_16(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchToolMCGrounding.description);
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchToolMCGrounding.description.setter(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_16(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchToolMCGrounding.description);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchToolMCGrounding.description.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_16(&one-time initialization token for description);
  }

  v1 = type metadata accessor for IntentDescription();
  __swift_project_value_buffer(v1, static SearchToolMCGrounding.description);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchToolMCGrounding.description : SearchToolMCGrounding.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchToolMCGrounding.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchToolMCGrounding.description : SearchToolMCGrounding.Type(uint64_t a1)
{
  v2 = SearchToolMCGrounding.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t key path getter for SearchToolMCGrounding.rawQueries : SearchToolMCGrounding@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolMCGrounding.rawQueries.getter();
  *a1 = result;
  return result;
}

uint64_t (*SearchToolMCGrounding.rawQueries.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t key path getter for SearchToolMCGrounding.quParses : SearchToolMCGrounding@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolMCGrounding.quParses.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchToolMCGrounding.rawQueries : SearchToolMCGrounding(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = *a1;

  a5(v6);
}

uint64_t (*SearchToolMCGrounding.quParses.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchToolMCGrounding.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v38 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd, &_sSS10AppIntentsE18IntentInputOptionsVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v36 = v12;
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySaySSGGMd, &_s10AppIntents15IntentParameterCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v39 = 0;
  v35 = type metadata accessor for String.IntentInputOptions();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = *MEMORY[0x277CBA308];
  v23 = *(v1 + 104);
  v34 = v1 + 104;
  v23(v3, v22, v38);
  OUTLINED_FUNCTION_6_7();
  v24 = v3;
  v25 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v26 = v37;
  *v37 = v25;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v36);
  v39 = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v35);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v18);
  v23(v24, v22, v38);
  OUTLINED_FUNCTION_6_7();
  result = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v26[1] = result;
  return result;
}

uint64_t SearchToolMCGrounding.perform()(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch22MemoryCreationQUResultVSgMd, &_s10OmniSearch22MemoryCreationQUResultVSgMR);
  OUTLINED_FUNCTION_114(v3);
  *(v2 + 80) = swift_task_alloc();
  v4 = type metadata accessor for MemoryCreationQUResult(0);
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  OUTLINED_FUNCTION_114(v5);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return MEMORY[0x2822009F8](SearchToolMCGrounding.perform());
}

{
  v3 = *v2;
  v4 = *(*v2 + 120);
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  outlined destroy of ResourceBundle?(v4, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);

  if (v1)
  {
    v5 = SearchToolMCGrounding.perform();
  }

  else
  {

    v5 = SearchToolMCGrounding.perform();
  }

  return MEMORY[0x2822009F8](v5);
}

void *SearchToolMCGrounding.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v11[18] = __swift_project_value_buffer(v12, static Logging.stextension);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    IntentParameter.wrappedValue.getter();
    v16 = *(v11[8] + 16);

    *(v15 + 4) = v16;

    _os_log_impl(&dword_25D85C000, v13, v14, "SearchTool Memory Creation Grounding perform() with %ld queries", v15, 0xCu);
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  IntentParameter.wrappedValue.getter();
  v17 = *(v11[2] + 16);

  IntentParameter.wrappedValue.getter();
  v18 = *(v11[3] + 16);

  if (v17 == v18)
  {
    IntentParameter.wrappedValue.getter();
    result = v11[5];
    v11[19] = result;
    v20 = result[2];
    v21 = MEMORY[0x277D84F90];
    v11[20] = v20;
    v11[21] = v21;
    v11[22] = 0;
    if (v20)
    {
      if (result[2])
      {
        v11[23] = result[4];
        v11[24] = result[5];

        result = IntentParameter.wrappedValue.getter();
        v22 = v11[6];
        if (*(v22 + 16))
        {
          v11[25] = *(v22 + 40);

          type metadata accessor for OmniSearchService();
          type metadata accessor for MemoryCreationModelType();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
          v27 = swift_task_alloc();
          v11[26] = v27;
          *v27 = v11;
          v28 = OUTLINED_FUNCTION_0_14(v27);

          return static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v11[7] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch22MemoryCreationQUResultVGMd, &_sSay10OmniSearch22MemoryCreationQUResultVGMR);
    lazy protocol witness table accessor for type [MemoryCreationQUResult] and conformance <A> [A]();
    static IntentResult.result<A>(value:)();
  }

  else
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_25D85C000, v36, v37, "SearchTool Memory Creation Grounding should have the same number of raw queries and qu parses", v38, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v11[4] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch22MemoryCreationQUResultVGMd, &_sSay10OmniSearch22MemoryCreationQUResultVGMR);
    lazy protocol witness table accessor for type [MemoryCreationQUResult] and conformance <A> [A]();
    static IntentResult.result<A>(value:)();
  }

  OUTLINED_FUNCTION_7_11();

  OUTLINED_FUNCTION_106();

  return v39();
}

void SearchToolMCGrounding.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v12 = *(v11 + 216);
  v13 = *(v12 + OBJC_IVAR____TtC10OmniSearch10LLMQUParse_parse);
  v15 = *(v11 + 80);
  v14 = *(v11 + 88);
  v16 = *(v12 + OBJC_IVAR____TtC10OmniSearch10LLMQUParse_performanceMetrics);

  MemoryCreationQUResult.init(parse:performanceMetrics:)(v13, v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    v17 = *(v11 + 80);

    outlined destroy of ResourceBundle?(v17, &_s10OmniSearch22MemoryCreationQUResultVSgMd, &_s10OmniSearch22MemoryCreationQUResultVSgMR);
    v18 = *(v11 + 176);
  }

  else
  {
    v20 = *(v11 + 104);
    v19 = *(v11 + 112);
    outlined init with take of MemoryCreationQUResult(*(v11 + 80), v19);
    outlined init with copy of MemoryCreationQUResult(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v11 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, *(v11 + 168));
      v22 = v45;
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v22);
      v22 = v46;
    }

    v16 = *(v11 + 104);
    v25 = *(v11 + 112);
    v26 = *(v11 + 96);

    outlined destroy of MemoryCreationQUResult(v25);
    *(v22 + 16) = v24 + 1;
    outlined init with take of MemoryCreationQUResult(v16, v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24);
    v18 = *(v11 + 176);
    *(v11 + 168) = v22;
  }

  OUTLINED_FUNCTION_11_10(v18);
  if (!v27)
  {
    v31 = *(v11 + 152);
    if (v16 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_3_14(v31);
      IntentParameter.wrappedValue.getter();
      if (v16 < *(*(v11 + 48) + 16))
      {
        OUTLINED_FUNCTION_8_12();

        type metadata accessor for OmniSearchService();
        type metadata accessor for MemoryCreationModelType();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
        v36 = swift_task_alloc();
        *(v11 + 208) = v36;
        *v36 = v11;
        v37 = OUTLINED_FUNCTION_0_14(v36);

        static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11);
        return;
      }
    }

    __break(1u);
    return;
  }

  v28 = *(v11 + 168);

  *(v11 + 56) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch22MemoryCreationQUResultVGMd, &_sSay10OmniSearch22MemoryCreationQUResultVGMR);
  v29 = lazy protocol witness table accessor for type [MemoryCreationQUResult] and conformance <A> [A]();
  OUTLINED_FUNCTION_12_10(v29);

  OUTLINED_FUNCTION_7_11();

  OUTLINED_FUNCTION_106();

  v30();
}

{
  v12 = v11[28];

  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v11[28];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v18 = 138412546;
    v20 = v17;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    *(v18 + 12) = 2080;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 14) = v22;
    _os_log_impl(&dword_25D85C000, v14, v15, "SearchTool Memory Creation Grounding failed with error: %@, not adding this query %s to the returned results", v18, 0x16u);
    outlined destroy of ResourceBundle?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_10(v11[22]);
  if (!v23)
  {
    v27 = v11[19];
    if (v15 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_3_14(v27);
      IntentParameter.wrappedValue.getter();
      if (v15 < *(v11[6] + 16))
      {
        OUTLINED_FUNCTION_8_12();

        type metadata accessor for OmniSearchService();
        type metadata accessor for MemoryCreationModelType();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
        v32 = swift_task_alloc();
        v11[26] = v32;
        *v32 = v11;
        v33 = OUTLINED_FUNCTION_0_14(v32);

        static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11);
        return;
      }
    }

    __break(1u);
    return;
  }

  v24 = v11[21];

  v11[7] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch22MemoryCreationQUResultVGMd, &_sSay10OmniSearch22MemoryCreationQUResultVGMR);
  v25 = lazy protocol witness table accessor for type [MemoryCreationQUResult] and conformance <A> [A]();
  OUTLINED_FUNCTION_12_10(v25);

  OUTLINED_FUNCTION_7_11();

  OUTLINED_FUNCTION_106();

  v26();
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchToolMCGrounding(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return SearchToolMCGrounding.perform()(a1);
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SearchToolMCGrounding(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolMCGrounding and conformance SearchToolMCGrounding();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type [MemoryCreationQUResult] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [MemoryCreationQUResult] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MemoryCreationQUResult] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch22MemoryCreationQUResultVGMd, &_sSay10OmniSearch22MemoryCreationQUResultVGMR);
    lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MemoryCreationQUResult] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult)
  {
    type metadata accessor for MemoryCreationQUResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUResult and conformance MemoryCreationQUResult);
  }

  return result;
}

uint64_t outlined init with copy of MemoryCreationQUResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemoryCreationQUResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchToolMCGrounding and conformance SearchToolMCGrounding()
{
  result = lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding;
  if (!lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding;
  if (!lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding;
  if (!lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolMCGrounding and conformance SearchToolMCGrounding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentResultContainer<[MemoryCreationQUResult], Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<[MemoryCreationQUResult], Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<[MemoryCreationQUResult], Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVySay10OmniSearch22MemoryCreationQUResultVGs5NeverOA2IGMd, &_s10AppIntents21IntentResultContainerVySay10OmniSearch22MemoryCreationQUResultVGs5NeverOA2IGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<[MemoryCreationQUResult], Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{
  *(a1 + 8) = SearchToolMCGrounding.perform();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_14@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + 16 * v2;
  *(v1 + 184) = *(v4 + 32);
  *(v1 + 192) = *(v4 + 40);
}

uint64_t OUTLINED_FUNCTION_7_11()
{
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  *(v0 + 200) = *(v2 + 16 * v1 + 40);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return static IntentResult.result<A>(value:)();
}

uint64_t static SearchToolMCQU.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static SearchToolMCQU.isDiscoverable = a1;
  return result;
}

uint64_t key path getter for static SearchToolMCQU.isDiscoverable : SearchToolMCQU.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SearchToolMCQU.isDiscoverable;
  return result;
}

uint64_t key path setter for static SearchToolMCQU.isDiscoverable : SearchToolMCQU.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SearchToolMCQU.isDiscoverable = v1;
  return result;
}

uint64_t static SearchToolMCQU.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  __swift_project_value_buffer(v2, static SearchToolMCQU.title);
  OUTLINED_FUNCTION_51();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SearchToolMCQU.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for description);
  }

  v0 = type metadata accessor for IntentDescription();

  return __swift_project_value_buffer(v0, static SearchToolMCQU.description);
}

uint64_t static SearchToolMCQU.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchToolMCQU.description);
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchToolMCQU.description.setter(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchToolMCQU.description);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchToolMCQU.description.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for description);
  }

  v1 = type metadata accessor for IntentDescription();
  __swift_project_value_buffer(v1, static SearchToolMCQU.description);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchToolMCQU.description : SearchToolMCQU.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchToolMCQU.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchToolMCQU.description : SearchToolMCQU.Type(uint64_t a1)
{
  v2 = SearchToolMCQU.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t key path getter for SearchToolMCQU.query : SearchToolMCQU@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolMCQU.query.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for SearchToolMCQU.query : SearchToolMCQU(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];

  SearchToolMCQU.query.setter(v2, v3);
}

uint64_t (*SearchToolMCQU.query.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchToolMCQU.originatorPID : SearchToolMCQU@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolMCQU.originatorPID.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchToolMCQU.originatorPID : SearchToolMCQU(uint64_t *a1, void *a2)
{
  v2 = *a1;

  SearchToolMCQU.originatorPID.setter(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t (*SearchToolMCQU.originatorPID.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchToolMCQU.useMiniMC : SearchToolMCQU@<X0>(_BYTE *a1@<X8>)
{
  result = SearchToolMCQU.useMiniMC.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchToolMCQU.useMiniMC : SearchToolMCQU(char *a1, void *a2)
{
  v2 = *a1;

  SearchToolMCQU.useMiniMC.setter(v2);
}

uint64_t (*SearchToolMCQU.useMiniMC.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchToolMCQU.personNames.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchToolMCQU.petNames.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchToolMCQU.personNames : SearchToolMCQU@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = a4(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t key path setter for SearchToolMCQU.personNames : SearchToolMCQU(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = *a1;

  a5(v6);
}

uint64_t (*SearchToolMCQU.locations.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchToolMCQU.currentTime : SearchToolMCQU@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolMCQU.currentTime.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for SearchToolMCQU.currentTime : SearchToolMCQU(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];

  SearchToolMCQU.currentTime.setter(v2, v3);
}

uint64_t (*SearchToolMCQU.currentTime.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchToolMCQU.init()@<X0>(uint64_t *a1@<X8>)
{
  v126 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd, &_sSb10AppIntentsE17IntentDisplayNameVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v124 = &v111 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterC15IntControlStyleOySi_GMd, &_s10AppIntents15IntentParameterC15IntControlStyleOySi_GMR);
  OUTLINED_FUNCTION_14();
  v113 = v5;
  v114 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v112 = &v111 - v7;
  v127 = type metadata accessor for InputConnectionBehavior();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  OUTLINED_FUNCTION_114(v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v111 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd, &_sSS10AppIntentsE18IntentInputOptionsVSgMR);
  OUTLINED_FUNCTION_114(v17);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v111 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v21);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v111 - v23;
  v25 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v26);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd, &_s10AppIntents15IntentParameterCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_15();
  LocalizedStringResource.init(stringLiteral:)();
  v29 = OUTLINED_FUNCTION_1_17();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
  v32 = type metadata accessor for String.IntentInputOptions();
  v118 = v20;
  v119 = v32;
  v128 = 0;
  v129 = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_92();
  v125 = v37;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v120 = *MEMORY[0x277CBA308];
  v41 = *(v9 + 104);
  v117 = v9 + 104;
  v123 = v41;
  v41(v12);
  OUTLINED_FUNCTION_11_11();
  v42 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v43 = v126;
  *v126 = v42;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySiGMd, &_s10AppIntents15IntentParameterCySiGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_15();
  LocalizedStringResource.init(stringLiteral:)();
  v44 = OUTLINED_FUNCTION_1_17();
  v122 = v25;
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v25);
  v128 = 0;
  LOBYTE(v129) = 1;
  v47 = v16;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v37);
  (*(v113 + 104))(v112, *MEMORY[0x277CB9EC8], v114);
  v121 = v12;
  v51 = v120;
  v52 = v127;
  v123(v12, v120, v127);
  OUTLINED_FUNCTION_11_11();
  v43[1] = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd, &_s10AppIntents15IntentParameterCySbSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_15();
  LocalizedStringResource.init(stringLiteral:)();
  v53 = OUTLINED_FUNCTION_1_17();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v25);
  LOBYTE(v128) = 2;
  type metadata accessor for Bool.IntentDisplayName();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  OUTLINED_FUNCTION_92();
  v60 = v125;
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v125);
  v64 = v52;
  v65 = v123;
  v123(v121, v51, v64);
  v116 = v28;
  v126[2] = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySaySSGSgGMd, &_s10AppIntents15IntentParameterCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v66 = OUTLINED_FUNCTION_1_17();
  v67 = v122;
  __swift_storeEnumTagSinglePayload(v66, v68, v69, v122);
  v128 = 0;
  v70 = v119;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  v115 = v47;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v60);
  v77 = v120;
  v78 = v127;
  v65(v121, v120, v127);
  v79 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v80 = v126;
  v126[3] = v79;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_12_11();
  v81 = OUTLINED_FUNCTION_1_17();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v67);
  v128 = 0;
  OUTLINED_FUNCTION_92();
  v84 = v70;
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v70);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v125);
  v91 = v121;
  v92 = v77;
  v93 = v123;
  v123(v121, v92, v78);
  v80[4] = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_12_11();
  v94 = v24;
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v122);
  v128 = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v84);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v125);
  v101 = v120;
  v93(v91, v120, v127);
  v102 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v103 = v126;
  v126[5] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSSgGMd, &_s10AppIntents15IntentParameterCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_15();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v94, 0, 1, v122);
  v128 = 0;
  v129 = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v119);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v125);
  v93(v91, v101, v127);
  result = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v103[6] = result;
  return result;
}

uint64_t SearchToolMCQU.perform()(uint64_t a1)
{
  *(v2 + 160) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch22MemoryCreationQUResultVSgMd, &_s10OmniSearch22MemoryCreationQUResultVSgMR);
  *(v2 + 168) = v3;
  OUTLINED_FUNCTION_114(v3);
  *(v2 + 176) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  OUTLINED_FUNCTION_114(v4);
  *(v2 + 184) = swift_task_alloc();
  v5 = *(v1 + 16);
  *(v2 + 192) = *v1;
  *(v2 + 208) = v5;
  *(v2 + 224) = *(v1 + 32);
  *(v2 + 240) = *(v1 + 48);

  return MEMORY[0x2822009F8](SearchToolMCQU.perform());
}

{
  v3 = *v2;
  v3[37] = v1;

  v4 = v3[23];
  if (v1)
  {
    outlined destroy of ResourceBundle?(v4, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);

    v5 = SearchToolMCQU.perform();
  }

  else
  {
    v3[38] = a1;
    outlined destroy of ResourceBundle?(v4, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);

    v5 = SearchToolMCQU.perform();
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t SearchToolMCQU.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logging.stextension);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v28 = v14;
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136316674;
    IntentParameter.wrappedValue.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    IntentParameter.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    String.init<A>(describing:)();
    v17 = OUTLINED_FUNCTION_8_13();

    *(v15 + 14) = v17;
    *(v15 + 22) = 2080;
    IntentParameter.wrappedValue.getter();
    String.init<A>(describing:)();
    v18 = OUTLINED_FUNCTION_8_13();

    *(v15 + 24) = v18;
    *(v15 + 32) = 2080;
    IntentParameter.wrappedValue.getter();
    String.init<A>(describing:)();
    v19 = OUTLINED_FUNCTION_8_13();

    *(v15 + 34) = v19;
    *(v15 + 42) = 2080;
    IntentParameter.wrappedValue.getter();
    *(v11 + 80) = *(v11 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v20 = OUTLINED_FUNCTION_8_13();

    *(v15 + 44) = v20;
    *(v15 + 52) = 2048;
    IntentParameter.wrappedValue.getter();

    *(v15 + 54) = *(v11 + 152);

    *(v15 + 62) = 2080;
    IntentParameter.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    String.init<A>(describing:)();
    v21 = OUTLINED_FUNCTION_8_13();

    *(v15 + 64) = v21;
    _os_log_impl(&dword_25D85C000, v13, v28, "SearchTool Memory Creation QU perform() with query: %s, personNames: %s, petNames: %s, locations: %s, currentTime: %s, originatorPID: %ld, useMiniMC: %s", v15, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v30, -1, -1);
    MEMORY[0x25F8A1050](v15, -1, -1);
  }

  else
  {
  }

  type metadata accessor for OmniSearchService();
  IntentParameter.wrappedValue.getter();
  v22 = *(v11 + 24);
  v29 = *(v11 + 16);
  *(v11 + 248) = v22;
  IntentParameter.wrappedValue.getter();
  v23 = *(v11 + 96);
  IntentParameter.wrappedValue.getter();
  static MemoryCreationModelType.modelTypeForBool(_:)();
  IntentParameter.wrappedValue.getter();
  v24 = *(v11 + 104);
  *(v11 + 256) = v24;
  IntentParameter.wrappedValue.getter();
  *(v11 + 264) = *(v11 + 112);
  IntentParameter.wrappedValue.getter();
  *(v11 + 272) = *(v11 + 120);
  IntentParameter.wrappedValue.getter();
  *(v11 + 280) = *(v11 + 40);
  v25 = swift_task_alloc();
  *(v11 + 288) = v25;
  *v25 = v11;
  v25[1] = SearchToolMCQU.perform();
  v26 = *(v11 + 184);

  return static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(v29, v22, v23, 0, v26, 0, 0, v24, a9, a10, a11);
}

uint64_t SearchToolMCQU.perform()()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = *&v1[OBJC_IVAR____TtC10OmniSearch10LLMQUParse_parse];
  v4 = *&v1[OBJC_IVAR____TtC10OmniSearch10LLMQUParse_performanceMetrics];

  MemoryCreationQUResult.init(parse:performanceMetrics:)(v3, v4, v2);
  lazy protocol witness table accessor for type MemoryCreationQUResult? and conformance <A> A?();
  static IntentResult.result<A>(value:)();

  outlined destroy of ResourceBundle?(v2, &_s10OmniSearch22MemoryCreationQUResultVSgMd, &_s10OmniSearch22MemoryCreationQUResultVSgMR);

  v5 = v0[1];

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchToolMCQU(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return SearchToolMCQU.perform()(a1);
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SearchToolMCQU(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolMCQU and conformance SearchToolMCQU();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUResult? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUResult? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUResult? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch22MemoryCreationQUResultVSgMd, &_s10OmniSearch22MemoryCreationQUResultVSgMR);
    lazy protocol witness table accessor for type MemoryCreationQUResult and conformance MemoryCreationQUResult();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUResult? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolMCQU and conformance SearchToolMCQU()
{
  result = lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU;
  if (!lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU;
  if (!lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU;
  if (!lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolMCQU and conformance SearchToolMCQU);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for SearchToolMCQU(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SearchToolMCQU(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentResultContainer<MemoryCreationQUResult?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<MemoryCreationQUResult?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<MemoryCreationQUResult?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVy10OmniSearch22MemoryCreationQUResultVSgs5NeverOA2IGMd, &_s10AppIntents21IntentResultContainerVy10OmniSearch22MemoryCreationQUResultVSgs5NeverOA2IGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<MemoryCreationQUResult?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return IntentParameter.wrappedValue.setter();
}

uint64_t OpenFlightReservationEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_4_13(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenFlightReservationEntityIntent.title);
}

uint64_t static OpenFlightReservationEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_4_13(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenFlightReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenFlightReservationEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenFlightReservationEntityIntent.description);
}

uint64_t static OpenFlightReservationEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenFlightReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t outlined init with copy of IntentDescription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for OpenFlightReservationEntityIntent.target : OpenFlightReservationEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of FlightReservationEntity(__dst, &v3);
  return OpenFlightReservationEntityIntent.target.setter(__src);
}

uint64_t (*OpenFlightReservationEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenFlightReservationEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[56] = v1;
  v0[57] = v2;
  type metadata accessor for MainActor();
  v0[58] = static MainActor.shared.getter();
  v0[59] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[60] = v3;

  return MEMORY[0x2822009F8](OpenFlightReservationEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 29, 0xD8uLL);
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = OpenFlightReservationEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA017FlightReservationF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 496) = v0;

  outlined destroy of FlightReservationEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenFlightReservationEntityIntent.perform();
  }

  else
  {
    v3 = OpenFlightReservationEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  OUTLINED_FUNCTION_106();

  return v0();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA017FlightReservationF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA23FlightReservationEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012GenericEventF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA18GenericEventEntityV_Tt0B5Tm();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA016HotelReservationF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA22HotelReservationEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012BusinessCardF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA18BusinessCardEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012PersonalCardF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA18PersonalCardEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA021RestaurantReservationF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA27RestaurantReservationEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA0bcF0V_Tt0g5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA0bC6EntityV_Tt0g5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA022TicketedTransportationF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA28TicketedTransportationEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA018VehicleReservationF0V_Tt0B5TY0_()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_5_11();
  v1 = _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA24VehicleReservationEntityV_Tt0B5();
  if (v0)
  {
    OUTLINED_FUNCTION_2_15();
  }

  else
  {
    v3 = v1;
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_9_13(v4, sel_handlerForCommand_environment_);
    if (v5)
    {
      v6 = v5;
      [v6 executeWithTriggerEvent_];
    }

    OUTLINED_FUNCTION_106();
  }

  return v2();
}

unint64_t lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity()
{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity;
  if (!lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservationEntity and conformance FlightReservationEntity);
  }

  return result;
}

uint64_t OpenFlightReservationEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch23FlightReservationEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch23FlightReservationEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch23FlightReservationEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenFlightReservationEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenFlightReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenFlightReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenFlightReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenFlightReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenFlightReservationEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenFlightReservationEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenFlightReservationEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenFlightReservationEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenFlightReservationEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenFlightReservationEntityIntent and conformance OpenFlightReservationEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>);
  }

  return result;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA23FlightReservationEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA22HotelReservationEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA18BusinessCardEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA18PersonalCardEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA27RestaurantReservationEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA0bC6EntityV_Tt0g5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA18GenericEventEntityV_Tt0B5Tm()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA28TicketedTransportationEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV17decodeOpenCommandySo9SFCommandCxKAA0C13ItemProvidingRzlFZAA24VehicleReservationEntityV_Tt0B5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  EntityProperty.wrappedValue.getter();
  v5 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SearchSpotlightEntity missing data of the SFcommand", v9, 2u);
      MEMORY[0x25F8A1050](v9, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = IntentFile.data.getter();
    v13 = v12;
    (*(*(v5 - 8) + 8))(v4, v5);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v14;
      if (!v14)
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logging.search);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25D85C000, v17, v1, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data", v18, 2u);
          MEMORY[0x25F8A1050](v18, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
      }
    }

    outlined consume of Data._Representation(v11, v13);
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError;
  if (!lazy protocol witness table cache variable for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError;
  if (!lazy protocol witness table cache variable for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_9_13(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OpenGenericEventEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_16(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenGenericEventEntityIntent.title);
}

uint64_t static OpenGenericEventEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_16(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenGenericEventEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenGenericEventEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_18(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenGenericEventEntityIntent.description);
}

uint64_t static OpenGenericEventEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_18(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenGenericEventEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenGenericEventEntityIntent.target : OpenGenericEventEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of GenericEventEntity(__dst, &v3);
  return OpenGenericEventEntityIntent.target.setter(__src);
}

uint64_t (*OpenGenericEventEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenGenericEventEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[36] = v1;
  v0[37] = v2;
  type metadata accessor for MainActor();
  v0[38] = static MainActor.shared.getter();
  v0[39] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[40] = v3;

  return MEMORY[0x2822009F8](OpenGenericEventEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 19, 0x88uLL);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = OpenGenericEventEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012GenericEventF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 336) = v0;

  outlined destroy of GenericEventEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenGenericEventEntityIntent.perform();
  }

  else
  {
    v3 = OpenGenericEventEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity()
{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity;
  if (!lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericEventEntity and conformance GenericEventEntity);
  }

  return result;
}

uint64_t OpenGenericEventEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch18GenericEventEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch18GenericEventEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch18GenericEventEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenGenericEventEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenGenericEventEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenGenericEventEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenGenericEventEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenGenericEventEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenGenericEventEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenGenericEventEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenGenericEventEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenGenericEventEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenGenericEventEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenGenericEventEntityIntent and conformance OpenGenericEventEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenHotelReservationEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_17(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenHotelReservationEntityIntent.title);
}

uint64_t static OpenHotelReservationEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_17(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenHotelReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenHotelReservationEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_19(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenHotelReservationEntityIntent.description);
}

uint64_t static OpenHotelReservationEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_19(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenHotelReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenHotelReservationEntityIntent.target : OpenHotelReservationEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of HotelReservationEntity(__dst, &v3);
  return OpenHotelReservationEntityIntent.target.setter(__src);
}

uint64_t (*OpenHotelReservationEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenHotelReservationEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[34] = v1;
  v0[35] = v2;
  type metadata accessor for MainActor();
  v0[36] = static MainActor.shared.getter();
  v0[37] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[38] = v3;

  return MEMORY[0x2822009F8](OpenHotelReservationEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 18, 0x80uLL);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = OpenHotelReservationEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA016HotelReservationF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 320) = v0;

  outlined destroy of HotelReservationEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenHotelReservationEntityIntent.perform();
  }

  else
  {
    v3 = OpenHotelReservationEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

double _s10OmniSearch22HotelReservationEntityVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity()
{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity;
  if (!lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservationEntity and conformance HotelReservationEntity);
  }

  return result;
}

uint64_t OpenHotelReservationEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch22HotelReservationEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch22HotelReservationEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch22HotelReservationEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenHotelReservationEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenHotelReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenHotelReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenHotelReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenHotelReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenHotelReservationEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenHotelReservationEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenHotelReservationEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenHotelReservationEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenHotelReservationEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenHotelReservationEntityIntent and conformance OpenHotelReservationEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenIDCardBusinessEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_18(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenIDCardBusinessEntityIntent.title);
}

uint64_t static OpenIDCardBusinessEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_18(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenIDCardBusinessEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenIDCardBusinessEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenIDCardBusinessEntityIntent.description);
}

uint64_t static OpenIDCardBusinessEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenIDCardBusinessEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenIDCardBusinessEntityIntent.target : OpenIDCardBusinessEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of BusinessCardEntity(__dst, &v3);
  return OpenIDCardBusinessEntityIntent.target.setter(__src);
}

uint64_t (*OpenIDCardBusinessEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenIDCardBusinessEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[26] = v1;
  v0[27] = v2;
  type metadata accessor for MainActor();
  v0[28] = static MainActor.shared.getter();
  v0[29] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[30] = v3;

  return MEMORY[0x2822009F8](OpenIDCardBusinessEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 14, 0x60uLL);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = OpenIDCardBusinessEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012BusinessCardF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 256) = v0;

  outlined destroy of BusinessCardEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenIDCardBusinessEntityIntent.perform();
  }

  else
  {
    v3 = OpenIDCardBusinessEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity()
{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity;
  if (!lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BusinessCardEntity and conformance BusinessCardEntity);
  }

  return result;
}

uint64_t OpenIDCardBusinessEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v15 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch18BusinessCardEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch18BusinessCardEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_16(v12);
  type metadata accessor for IntentDialog();
  memset(v15, 0, sizeof(v15));
  OUTLINED_FUNCTION_3_16(v9);
  OUTLINED_FUNCTION_3_16(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenIDCardBusinessEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenIDCardBusinessEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenIDCardBusinessEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenIDCardBusinessEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenIDCardBusinessEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenIDCardBusinessEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenIDCardBusinessEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenIDCardBusinessEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenIDCardBusinessEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenIDCardBusinessEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenIDCardBusinessEntityIntent and conformance OpenIDCardBusinessEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OpenIDCardPersonalEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_19(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenIDCardPersonalEntityIntent.title);
}

uint64_t static OpenIDCardPersonalEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_19(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenIDCardPersonalEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenIDCardPersonalEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_21(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenIDCardPersonalEntityIntent.description);
}

uint64_t static OpenIDCardPersonalEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_21(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenIDCardPersonalEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenIDCardPersonalEntityIntent.target : OpenIDCardPersonalEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of PersonalCardEntity(__dst, &v3);
  return OpenIDCardPersonalEntityIntent.target.setter(__src);
}

uint64_t (*OpenIDCardPersonalEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenIDCardPersonalEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[50] = v1;
  v0[51] = v2;
  type metadata accessor for MainActor();
  v0[52] = static MainActor.shared.getter();
  v0[53] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[54] = v3;

  return MEMORY[0x2822009F8](OpenIDCardPersonalEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 26, 0xC0uLL);
  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = OpenIDCardPersonalEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012PersonalCardF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 448) = v0;

  outlined destroy of PersonalCardEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenIDCardPersonalEntityIntent.perform();
  }

  else
  {
    v3 = OpenIDCardPersonalEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity()
{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity;
  if (!lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalCardEntity and conformance PersonalCardEntity);
  }

  return result;
}

uint64_t OpenIDCardPersonalEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch18PersonalCardEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch18PersonalCardEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch18PersonalCardEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenIDCardPersonalEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenIDCardPersonalEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenIDCardPersonalEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenIDCardPersonalEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenIDCardPersonalEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenIDCardPersonalEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenIDCardPersonalEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenIDCardPersonalEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenIDCardPersonalEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenIDCardPersonalEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenIDCardPersonalEntityIntent and conformance OpenIDCardPersonalEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenMediaEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_20(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenMediaEntityIntent.title);
}

uint64_t static OpenMediaEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_20(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenMediaEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenMediaEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_22(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenMediaEntityIntent.description);
}

uint64_t static OpenMediaEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_22(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenMediaEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

double key path getter for OpenMediaEntityIntent.target : OpenMediaEntityIntent@<D0>(_OWORD *a1@<X8>)
{
  OpenMediaEntityIntent.target.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t key path setter for OpenMediaEntityIntent.target : OpenMediaEntityIntent(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *&v8 = *a1;
  *(&v8 + 1) = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;

  outlined copy of Data?(v5, v6);
  return OpenMediaEntityIntent.target.setter(&v8);
}

uint64_t (*OpenMediaEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

unint64_t lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity()
{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity;
  if (!lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaEntity and conformance MediaEntity);
  }

  return result;
}

uint64_t OpenMediaEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v15 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch11MediaEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch11MediaEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_16(v12);
  type metadata accessor for IntentDialog();
  memset(v15, 0, sizeof(v15));
  OUTLINED_FUNCTION_3_16(v9);
  OUTLINED_FUNCTION_3_16(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenMediaEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenMediaEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenMediaEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.openAppWhenRun.getter in conformance OpenMediaEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent();

  return MEMORY[0x28210B5F8](a1, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenMediaEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenMediaEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenMediaEntityIntent(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent();
  *v5 = v2;
  v5[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return MEMORY[0x28210B600](a1, a2, v6);
}

uint64_t protocol witness for AppIntent.init() in conformance OpenMediaEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenMediaEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenMediaEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenMediaEntityIntent and conformance OpenMediaEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenRestaurantReservationEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_21(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenRestaurantReservationEntityIntent.title);
}

uint64_t static OpenRestaurantReservationEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_21(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenRestaurantReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenRestaurantReservationEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_23(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenRestaurantReservationEntityIntent.description);
}

uint64_t static OpenRestaurantReservationEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_23(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenRestaurantReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenRestaurantReservationEntityIntent.target : OpenRestaurantReservationEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of RestaurantReservationEntity(__dst, &v3);
  return OpenRestaurantReservationEntityIntent.target.setter(__src);
}

uint64_t (*OpenRestaurantReservationEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenRestaurantReservationEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[34] = v1;
  v0[35] = v2;
  type metadata accessor for MainActor();
  v0[36] = static MainActor.shared.getter();
  v0[37] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[38] = v3;

  return MEMORY[0x2822009F8](OpenRestaurantReservationEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 18, 0x80uLL);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = OpenRestaurantReservationEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA021RestaurantReservationF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 320) = v0;

  outlined destroy of RestaurantReservationEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenHotelReservationEntityIntent.perform();
  }

  else
  {
    v3 = OpenHotelReservationEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

unint64_t lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity()
{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity;
  if (!lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservationEntity and conformance RestaurantReservationEntity);
  }

  return result;
}

uint64_t OpenRestaurantReservationEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch27RestaurantReservationEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch27RestaurantReservationEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch22HotelReservationEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenRestaurantReservationEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenRestaurantReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenRestaurantReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenRestaurantReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenRestaurantReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenRestaurantReservationEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenRestaurantReservationEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenRestaurantReservationEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenRestaurantReservationEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenRestaurantReservationEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenRestaurantReservationEntityIntent and conformance OpenRestaurantReservationEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenSearchSpotlightEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_22(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenSearchSpotlightEntityIntent.title);
}

uint64_t static OpenSearchSpotlightEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_22(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenSearchSpotlightEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenSearchSpotlightEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_24(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenSearchSpotlightEntityIntent.description);
}

uint64_t static OpenSearchSpotlightEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_24(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenSearchSpotlightEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenSearchSpotlightEntityIntent.target : OpenSearchSpotlightEntityIntent(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for SearchSpotlightEntity(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchSpotlightEntity(a1, v5);
  return OpenSearchSpotlightEntityIntent.target.setter(v5);
}

uint64_t OpenSearchSpotlightEntityIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for SearchSpotlightEntity(0);
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  outlined init with copy of SearchSpotlightEntity(a1, v5 - v4);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of SearchSpotlightEntity(a1);
}

uint64_t outlined init with copy of SearchSpotlightEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSpotlightEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchSpotlightEntity(uint64_t a1)
{
  v2 = type metadata accessor for SearchSpotlightEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*OpenSearchSpotlightEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenSearchSpotlightEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_114(v3);
  v0[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v0[6] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v4;

  return MEMORY[0x2822009F8](OpenSearchSpotlightEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = OpenSearchSpotlightEntityIntent.perform();
  v2 = *(v0 + 32);

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA0bcF0V_Tt0g5(v2);
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  outlined destroy of SearchSpotlightEntity(v2);
  if (v0)
  {
    v3 = OpenSearchSpotlightEntityIntent.perform();
  }

  else
  {
    v3 = OpenSearchSpotlightEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();

  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OpenSearchSpotlightEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v13 = OUTLINED_FUNCTION_114(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  v20 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch0F15SpotlightEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch0F15SpotlightEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v19);
  v21 = type metadata accessor for SearchSpotlightEntity(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v11);
  OUTLINED_FUNCTION_10_10(v8);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity, &protocol conformance descriptor for SearchSpotlightEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchSpotlightEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenSearchSpotlightEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenSearchSpotlightEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenSearchSpotlightEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenSearchSpotlightEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenSearchSpotlightEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenSearchSpotlightEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenSearchSpotlightEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenSearchSpotlightEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenSearchSpotlightEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenSearchSpotlightEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenSearchSpotlightEntityIntent and conformance OpenSearchSpotlightEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenTicketedShowEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_23(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenTicketedShowEntityIntent.title);
}

uint64_t static OpenTicketedShowEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_23(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenTicketedShowEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenTicketedShowEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_25(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenTicketedShowEntityIntent.description);
}

uint64_t static OpenTicketedShowEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_25(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenTicketedShowEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenTicketedShowEntityIntent.target : OpenTicketedShowEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of TicketedShowEntity(__dst, &v3);
  return OpenTicketedShowEntityIntent.target.setter(__src);
}

uint64_t (*OpenTicketedShowEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenTicketedShowEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[36] = v1;
  v0[37] = v2;
  type metadata accessor for MainActor();
  v0[38] = static MainActor.shared.getter();
  v0[39] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[40] = v3;

  return MEMORY[0x2822009F8](OpenTicketedShowEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 19, 0x88uLL);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = OpenTicketedShowEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA012TicketedShowF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 336) = v0;

  outlined destroy of TicketedShowEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenGenericEventEntityIntent.perform();
  }

  else
  {
    v3 = OpenGenericEventEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

unint64_t lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity()
{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity;
  if (!lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedShowEntity and conformance TicketedShowEntity);
  }

  return result;
}

uint64_t OpenTicketedShowEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch18TicketedShowEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch18TicketedShowEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch18GenericEventEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenTicketedShowEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenTicketedShowEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenTicketedShowEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenTicketedShowEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenTicketedShowEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenTicketedShowEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenTicketedShowEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenTicketedShowEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenTicketedShowEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenTicketedShowEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenTicketedShowEntityIntent and conformance OpenTicketedShowEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenTicketedTransportationEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_24(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenTicketedTransportationEntityIntent.title);
}

uint64_t static OpenTicketedTransportationEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_24(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenTicketedTransportationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenTicketedTransportationEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_26(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenTicketedTransportationEntityIntent.description);
}

uint64_t static OpenTicketedTransportationEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_26(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenTicketedTransportationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenTicketedTransportationEntityIntent.target : OpenTicketedTransportationEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of TicketedTransportationEntity(__dst, &v3);
  return OpenTicketedTransportationEntityIntent.target.setter(__src);
}

uint64_t (*OpenTicketedTransportationEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenTicketedTransportationEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[30] = v1;
  v0[31] = v2;
  type metadata accessor for MainActor();
  v0[32] = static MainActor.shared.getter();
  v0[33] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[34] = v3;

  return MEMORY[0x2822009F8](OpenTicketedTransportationEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 16, 0x70uLL);
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = OpenTicketedTransportationEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA022TicketedTransportationF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 288) = v0;

  outlined destroy of TicketedTransportationEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenTicketedTransportationEntityIntent.perform();
  }

  else
  {
    v3 = OpenTicketedTransportationEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity()
{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity;
  if (!lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportationEntity and conformance TicketedTransportationEntity);
  }

  return result;
}

uint64_t OpenTicketedTransportationEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v15 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch28TicketedTransportationEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch28TicketedTransportationEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_3_16(v12);
  type metadata accessor for IntentDialog();
  memset(v15, 0, sizeof(v15));
  OUTLINED_FUNCTION_3_16(v9);
  OUTLINED_FUNCTION_3_16(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenTicketedTransportationEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenTicketedTransportationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenTicketedTransportationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenTicketedTransportationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenTicketedTransportationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenTicketedTransportationEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenTicketedTransportationEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenTicketedTransportationEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenTicketedTransportationEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenTicketedTransportationEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenTicketedTransportationEntityIntent and conformance OpenTicketedTransportationEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OpenVehicleReservationEntityIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_25(&one-time initialization token for title);
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static OpenVehicleReservationEntityIntent.title);
}

uint64_t static OpenVehicleReservationEntityIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0_25(&one-time initialization token for title);
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenVehicleReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OpenVehicleReservationEntityIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_27(&one-time initialization token for description);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);

  return __swift_project_value_buffer(v0, static OpenVehicleReservationEntityIntent.description);
}

uint64_t static OpenVehicleReservationEntityIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_1_27(&one-time initialization token for description);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenVehicleReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t key path setter for OpenVehicleReservationEntityIntent.target : OpenVehicleReservationEntityIntent(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of VehicleReservationEntity(__dst, &v3);
  return OpenVehicleReservationEntityIntent.target.setter(__src);
}

uint64_t (*OpenVehicleReservationEntityIntent.target.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t OpenVehicleReservationEntityIntent.perform()()
{
  OUTLINED_FUNCTION_48();
  v0[40] = v1;
  v0[41] = v2;
  type metadata accessor for MainActor();
  v0[42] = static MainActor.shared.getter();
  v0[43] = dispatch thunk of Actor.unownedExecutor.getter();
  v0[44] = v3;

  return MEMORY[0x2822009F8](OpenVehicleReservationEntityIntent.perform());
}

{
  OUTLINED_FUNCTION_48();
  IntentParameter.wrappedValue.getter();
  memcpy(v0 + 2, v0 + 21, 0x98uLL);
  v1 = swift_task_alloc();
  v0[45] = v1;
  *v1 = v0;
  v1[1] = OpenVehicleReservationEntityIntent.perform();

  return _s10OmniSearch0B15SpotlightOpenerV10openEntityyyxYaKAA0C13ItemProvidingRzlFZAA018VehicleReservationF0V_Tt0B5((v0 + 2));
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  *(v2 + 368) = v0;

  outlined destroy of VehicleReservationEntity(v2 + 16);
  if (v0)
  {
    v3 = OpenVehicleReservationEntityIntent.perform();
  }

  else
  {
    v3 = OpenVehicleReservationEntityIntent.perform();
  }

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity()
{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity;
  if (!lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VehicleReservationEntity and conformance VehicleReservationEntity);
  }

  return result;
}

uint64_t OpenVehicleReservationEntityIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11 - 8];
  v13 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch24VehicleReservationEntityVGMd, &_s10AppIntents15IntentParameterCy10OmniSearch24VehicleReservationEntityVGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_10(v12);
  _s10OmniSearch24VehicleReservationEntityVSgWOi0_(v17);
  memcpy(v16, v17, sizeof(v16));
  type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_10_10(v9);
  OUTLINED_FUNCTION_10_10(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v0);
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}