uint64_t ExpressionStructure.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGMR);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-1] - v9;
  if (*(a4 + 16))
  {
    v12 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys();

    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v13[0]) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v4)
    {
      v13[0] = a4;
      v14 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMd, &_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMR);
      lazy protocol witness table accessor for type [ExpressionStructure.Argument] and conformance <A> [A](&lazy protocol witness table cache variable for type [ExpressionStructure.Argument] and conformance <A> [A], lazy protocol witness table accessor for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument, MEMORY[0x1E69E6300]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v12 + 8))(v10, v7);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

unint64_t lazy protocol witness table accessor for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument()
{
  result = lazy protocol witness table cache variable for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument;
  if (!lazy protocol witness table cache variable for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument;
  if (!lazy protocol witness table cache variable for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument);
  }

  return result;
}

uint64_t ExpressionStructure.Argument.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLVGMd, &_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLVGMR);
    lazy protocol witness table accessor for type [ExpressionStructure] and conformance <A> [A](&lazy protocol witness table cache variable for type [ExpressionStructure] and conformance <A> [A], lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure, MEMORY[0x1E69E6300]);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
  }

  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PredicateExpressionCodingKeys()
{
  v1 = 0x6973736572707865;
  if (*v0 != 1)
  {
    v1 = 0x7275746375727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C626169726176;
  }
}

unint64_t PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v94 = a3;
  }

  else
  {
    a2 = _typeName(_:qualified:)();
    v94 = v5;
  }

  v90 = v4;
  v6 = *(v4 + 8);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {

          v48 = v90;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v7 = *(v90 + 8);
          v50 = a2;
          v51 = v94;
          v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, v94);
          v53 = *(v7 + 16);
          v54 = (v52 & 1) == 0;
          v55 = __OFADD__(v53, v54);
          v56 = v53 + v54;
          if (!v55)
          {
            LOBYTE(v6) = v52;
            if (*(v7 + 24) >= v56)
            {
              goto LABEL_48;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
            v57 = v7;
            v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, v94);
            if ((v6 & 1) == (v58 & 1))
            {
LABEL_50:
              if ((v6 & 1) == 0)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_48:
              if (isUniquelyReferenced_nonNull_native)
              {
                v57 = v7;
                goto LABEL_50;
              }

LABEL_62:
              v62 = v12;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
              v63 = static _DictionaryStorage.copy(original:)();
              v57 = v63;
              if (*(v7 + 16))
              {
                v64 = (v63 + 64);
                v65 = v7 + 64;
                v66 = ((1 << *(v57 + 32)) + 63) >> 6;
                if (v57 != v7 || v64 >= v65 + 8 * v66)
                {
                  memmove(v64, (v7 + 64), 8 * v66);
                }

                v67 = 0;
                *(v57 + 16) = *(v7 + 16);
                v68 = 1 << *(v7 + 32);
                v69 = *(v7 + 64);
                v70 = -1;
                if (v68 < 64)
                {
                  v70 = ~(-1 << v68);
                }

                v71 = v70 & v69;
                v72 = (v68 + 63) >> 6;
                if ((v70 & v69) != 0)
                {
                  do
                  {
                    v73 = __clz(__rbit64(v71));
                    v71 &= v71 - 1;
LABEL_75:
                    v76 = 16 * (v73 | (v67 << 6));
                    v77 = (*(v7 + 48) + v76);
                    v79 = *v77;
                    v78 = v77[1];
                    v80 = *(v7 + 56) + v76;
                    v81 = *v80;
                    LOBYTE(v80) = *(v80 + 8);
                    v82 = (*(v57 + 48) + v76);
                    *v82 = v79;
                    v82[1] = v78;
                    v83 = *(v57 + 56) + v76;
                    *v83 = v81;
                    *(v83 + 8) = v80;
                  }

                  while (v71);
                }

                v74 = v67;
                while (1)
                {
                  v67 = v74 + 1;
                  if (__OFADD__(v74, 1))
                  {
                    break;
                  }

                  if (v67 >= v72)
                  {
                    goto LABEL_77;
                  }

                  v75 = *(v65 + 8 * v67);
                  ++v74;
                  if (v75)
                  {
                    v73 = __clz(__rbit64(v75));
                    v71 = (v75 - 1) & v75;
                    goto LABEL_75;
                  }
                }

                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                _StringGuts.grow(_:)(75);
                MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181482E40);
                v84 = String.init(cString:)();
                MEMORY[0x1865CB0E0](v84);

                MEMORY[0x1865CB0E0](0x797420646E612027, 0xEC00000027206570);
                v85 = _typeName(_:qualified:)();
                MEMORY[0x1865CB0E0](v85);

                MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
                MEMORY[0x1865CB0E0](a2, v94);
                MEMORY[0x1865CB0E0](39, 0xE100000000000000);
LABEL_84:
                result = _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return result;
              }

LABEL_77:

              v12 = v62;
              v50 = a2;
              v51 = v94;
              v48 = v90;
              if ((v6 & 1) == 0)
              {
LABEL_78:
                result = specialized _NativeDictionary._insert(at:key:value:)(v12, v50, v51, a1, 0, v57);
                goto LABEL_79;
              }
            }

            v59 = v12;

            v61 = *(v57 + 56) + 16 * v59;
            *v61 = a1;
            *(v61 + 8) = 0;
LABEL_79:
            *(v48 + 8) = v57;
            return result;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_13:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
    v16 = (*(v6 + 48) + v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v6 + 56) + v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    if (*v16 == a2 && v17 == v94)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v12)
    {
      break;
    }

    v10 &= v10 - 1;
    if (v20 == a1)
    {
      v23 = v21;
    }

    else
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
      }

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
      v26 = v25;

      if (v26)
      {
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v90 + 8);
        if (v27)
        {
          v29 = *(v90 + 8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
          v30 = static _DictionaryStorage.copy(original:)();
          v29 = v30;
          if (*(v28 + 16))
          {
            v31 = (v30 + 64);
            __src = (v28 + 64);
            v32 = ((1 << *(v29 + 32)) + 63) >> 6;
            if (v29 != v28 || v31 >= &__src[8 * v32])
            {
              memmove(v31, __src, 8 * v32);
            }

            v33 = 0;
            *(v29 + 16) = *(v28 + 16);
            v34 = 1 << *(v28 + 32);
            if (v34 < 64)
            {
              v35 = ~(-1 << v34);
            }

            else
            {
              v35 = -1;
            }

            v89 = v35 & *(v28 + 64);
            v36 = (v34 + 63) >> 6;
            while (v89)
            {
              v37 = __clz(__rbit64(v89));
              v89 &= v89 - 1;
LABEL_41:
              v40 = 16 * (v37 | (v33 << 6));
              v41 = (*(v28 + 48) + v40);
              v43 = *v41;
              v42 = v41[1];
              v44 = *(v28 + 56) + v40;
              v45 = *v44;
              LOBYTE(v44) = *(v44 + 8);
              v46 = (*(v29 + 48) + v40);
              *v46 = v43;
              v46[1] = v42;
              v47 = *(v29 + 56) + v40;
              *v47 = v45;
              *(v47 + 8) = v44;
            }

            v38 = v33;
            while (1)
            {
              v33 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_81;
              }

              if (v33 >= v36)
              {
                break;
              }

              v39 = *&__src[8 * v33];
              ++v38;
              if (v39)
              {
                v37 = __clz(__rbit64(v39));
                v89 = (v39 - 1) & v39;
                goto LABEL_41;
              }
            }
          }
        }

        v12 = specialized _NativeDictionary._delete(at:)(v24, v29);
        *(v90 + 8) = v29;
      }
    }
  }

  if (v21)
  {
    goto LABEL_82;
  }

  if (v20 != a1)
  {
    _StringGuts.grow(_:)(57);
    MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482DC0);
    v86 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v86);

    MEMORY[0x1865CB0E0](0x2720646E612027, 0xE700000000000000);
    v87 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v87);

    MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
    MEMORY[0x1865CB0E0](a2, v94);
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    goto LABEL_84;
  }
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(unsigned int *a1, int a2)
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

uint64_t Predicate.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 16);
  v117 = 8 * v4;
  if (v4 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v8 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (&v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v4;
      do
      {
        v8 += 8;
        *v9++ = swift_getMetatypeMetadata();
        --v10;
      }

      while (v10);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v3 = a1;
  }

  v99 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v108 = &v98;
  v113 = v13;
  v107 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v98 - v17;
  v118 = v4;
  v114 = a2;
  if (v4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v15, v16);
  }

  else
  {
    v115 = v3;
    MEMORY[0x1EEE9AC00](v14);
    if (v23)
    {
      v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v25 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = v118;
      do
      {
        v27 = *v24++;
        *v25++ = type metadata accessor for PredicateExpressions.Variable(255, v27, v20, v21);
        --v26;
      }

      while (v26);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = v115;
  }

  v106 = &v98;
  v101 = TupleTypeMetadata;
  v110 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = &v98;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v98 - v31;
  v104 = &v98;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - v34;
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v36 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  v116 = v18;
  v109 = &v98;
  if (v36)
  {
    LODWORD(v100) = 0;
    v37 = (*v36 + 16);
    v38 = (*v36 + 24);
  }

  else
  {
    if (one-time initialization token for standardConfiguration != -1)
    {
      swift_once();
    }

    v37 = &static PredicateCodableConfiguration.standardConfiguration;
    v38 = &qword_1EA7B0718;
    LODWORD(v100) = byte_1EA7B0720;
  }

  v39 = *v38;
  v112 = *v37;

  v115 = v39;

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v40 = v111;
  outlined init with copy of Hashable & Sendable(v111, v125);
  v41 = v126;
  v98 = v127;
  v42 = __swift_project_boxed_opaque_existential_1(v125, v126);
  v102 = &v98;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = (&v98 - v45);
  v47 = v40 + *(v114 + 36);
  v48 = v101;
  (*(v110 + 16))(v32, v47, v101, v43);
  v49 = v118;
  if (v118)
  {
    v50 = (v48 + 4);
    v51 = (&v98 - v45);
    v52 = v118;
    do
    {
      if (v49 == 1)
      {
        v53 = 0;
        v54 = v35;
      }

      else
      {
        v53 = *v50;
        v54 = &v35[v53];
      }

      *&v35[v53] = *&v32[v53];
      *v51++ = v54;
      v50 += 4;
      --v52;
    }

    while (v52);
  }

  v110 = v41;
  v111 = v42;
  __swift_mutable_project_boxed_opaque_existential_1(v128, v128[3]);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v55 = v118;
  v56 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v98 - v45);
  v59 = v112;
  v60 = v115;
  if (v55)
  {
    v61 = (v48 + 4);
    v62 = (&v98 - v45);
    v63 = v55;
    do
    {
      if (v55 == 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = *v61;
      }

      v65 = *v46++;
      *&v29[v64] = *v65;
      *v62++ = &v29[v64];
      v61 += 4;
      --v63;
    }

    while (v63);
  }

  v101 = &v98;
  v122 = v59;
  v123 = v60;
  v124 = v100;
  MEMORY[0x1EEE9AC00](v57);
  v67 = &v98 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v110;
  v69 = v114;
  if (v55)
  {
    v70 = (*(v114 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v71 = (v99 + 32);
    v72 = v67;
    v73 = v55;
    do
    {
      if (v55 == 1)
      {
        v74 = 0;
      }

      else
      {
        v74 = *v71;
      }

      v75 = *v70++;
      *&v12[v74] = v75;
      *v72++ = &v12[v74];
      v71 += 4;
      --v73;
    }

    while (v73);
  }

  v76 = *(v69 + 24);

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v67, v55, v76);
  v121 = v68;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v119);
  (*(*(v68 - 8) + 16))(boxed_opaque_existential_0, v111, v68);
  __swift_project_boxed_opaque_existential_1(v119, v121);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v119);
  v80 = v122;
  v79 = v123;
  v81 = v55;
  v82 = v124;
  v119[0] = v122;
  v119[1] = v123;
  v120 = v124;

  v83 = v103;
  v84 = ExpressionStructure.init(_:with:path:)(DynamicType, v119, MEMORY[0x1E69E7CC0]);
  if (v83)
  {

    v87 = v116;
  }

  else
  {
    v100 = v84;
    v103 = v86;
    v114 = v85;
    v117 = v76;
    LOBYTE(v129) = 0;
    v87 = v116;
    v88 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    if (v55)
    {
      v89 = (v117 & 0xFFFFFFFFFFFFFFFELL);
      do
      {
        v90 = *v89;
        v129 = **v58;
        __swift_mutable_project_boxed_opaque_existential_1(v119, v121);
        type metadata accessor for PredicateExpressions.Variable(0, v90, v91, v92);
        swift_getWitnessTable();
        v88 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v58;
        ++v89;
        --v81;
      }

      while (v81);
      v80 = v122;
      v79 = v123;
      v82 = v124;
      v87 = v116;
    }

    MEMORY[0x1EEE9AC00](v88);
    v93 = v110;
    *(&v98 - 10) = v118;
    *(&v98 - 9) = v93;
    *(&v98 - 8) = v117;
    v94 = v98;
    *(&v98 - 7) = *(v98 + 8);
    *(&v98 - 6) = *(v94 + 24);
    *(&v98 - 5) = v87;
    v95 = v114;
    *(&v98 - 4) = v100;
    *(&v98 - 3) = v95;
    v96 = v111;
    *(&v98 - 2) = v103;
    *(&v98 - 1) = v96;
    specialized _withPredicateArchivingState<A>(_:_:)(v80, v79, v82, partial apply for closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:));

    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  (*(v107 + 8))(v87, v113);
  __swift_destroy_boxed_opaque_existential_1(v125);
  return __swift_destroy_boxed_opaque_existential_1(v128);
}

uint64_t ExpressionStructure.init(_:with:path:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v70 = *a2;
  v71 = v8;
  v66 = v9;
  v72 = v9;
  v10 = PredicateCodableConfiguration._identifier(for:)(a1);
  if (!v11)
  {

    v14 = _typeName(_:qualified:)();
    v16 = v15;
    v73 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    MEMORY[0x1865CB0E0](v17, v19);

    lazy protocol witness table accessor for type PredicateCodableError and conformance PredicateCodableError();
    swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v16;
    *(v20 + 16) = 47;
    *(v20 + 24) = 0xE100000000000000;
    *(v20 + 32) = 0;
    swift_willThrow();
    return v4;
  }

  v4 = v10;
  v13 = v11;
  v67 = v8;
  if (v12)
  {

LABEL_36:

    return v4;
  }

  Type.genericArguments2.getter();
  if (!v21)
  {

    goto LABEL_36;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v56 = v21;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
  if ((v56 & 0x8000000000000000) == 0)
  {
    result = 0;
    v23 = v73;
    v63 = v13;
    v64 = a3;
    v65 = v7;
    v24 = v8;
    v60 = v4;
    while (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v58 = result;
      v59 = v23;
      v25 = GenericArguments2.subscript.getter();
      v26 = v25;
      v57 = v27;
      if (v27)
      {
        v28 = *(v25 + 16);
        if (v28)
        {
          v68 = MEMORY[0x1E69E7CC0];
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
          v29 = 0;
          v30 = v68;
          v61 = v26;
          v62 = v26 + 32;
          while (v29 < *(v26 + 16))
          {
            v31 = *(v62 + 8 * v29);
            v70 = v65;
            v71 = v67;
            v72 = v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_181218E20;
            *(inited + 32) = v4;
            *(inited + 40) = v63;
            v4 = *(a3 + 16);

            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || (v33 = *(a3 + 24) >> 1, v33 <= v4))
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v4 + 1, 1, a3);
              a3 = result;
              v33 = *(result + 24) >> 1;
            }

            if (v33 <= *(a3 + 16))
            {
              goto LABEL_40;
            }

            swift_arrayInitWithCopy();

            ++*(a3 + 16);
            result = ExpressionStructure.init(_:with:path:)(v31, &v70, a3);
            if (v5)
            {

              outlined consume of GenericArgument(v61, 1);

              return v4;
            }

            v69 = v30;
            v37 = *(v30 + 16);
            v36 = *(v30 + 24);
            v26 = v61;
            if (v37 >= v36 >> 1)
            {
              v39 = result;
              v40 = v34;
              v41 = v35;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
              v35 = v41;
              v34 = v40;
              v26 = v61;
              result = v39;
              v30 = v69;
            }

            ++v29;
            *(v30 + 16) = v37 + 1;
            v38 = (v30 + 24 * v37);
            v38[4] = result;
            v38[5] = v34;
            v38[6] = v35;
            v4 = v60;
            a3 = v64;
            if (v28 == v29)
            {
              v5 = 0;
              outlined consume of GenericArgument(v26, 1);
              v13 = v63;
              v24 = v67;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
          break;
        }

        outlined consume of GenericArgument(v25, 1);
        v30 = MEMORY[0x1E69E7CC0];
LABEL_29:
        v48 = 0;
        v49 = 0;
      }

      else
      {
        v70 = v7;
        v71 = v24;
        v72 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v42 = swift_initStackObject();
        *(v42 + 16) = xmmword_181218E20;
        *(v42 + 32) = v4;
        *(v42 + 40) = v13;
        v43 = a3;
        v44 = *(a3 + 16);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0 || (v45 = *(v43 + 24) >> 1, v46 = v43, v45 <= v44))
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v44 + 1, 1, v43);
          v46 = result;
          v45 = *(result + 24) >> 1;
        }

        if (v45 <= *(v46 + 16))
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        ++*(v46 + 16);
        v47 = ExpressionStructure.init(_:with:path:)(v26, &v70, v46);
        if (v5)
        {

          swift_bridgeObjectRelease_n();
          return v4;
        }

        v30 = v47;
        v24 = v67;
      }

      v50 = v58;
      v23 = v59;
      v73 = v59;
      v52 = *(v59 + 16);
      v51 = *(v59 + 24);
      if (v52 >= v51 >> 1)
      {
        v54 = v48;
        v55 = v49;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v50 = v58;
        v24 = v67;
        v49 = v55;
        v48 = v54;
        v13 = v63;
        v23 = v73;
      }

      result = v50 + 1;
      *(v23 + 16) = v52 + 1;
      v53 = v23 + 32 * v52;
      *(v53 + 32) = v30;
      *(v53 + 40) = v48;
      *(v53 + 48) = v49;
      *(v53 + 56) = v57 & 1;
      a3 = v64;
      v7 = v65;
      if (result == v56)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance DateComponents.ISO8601FormatStyle.Fields(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t lazy protocol witness table accessor for type [ExpressionStructure.Argument] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMd, &_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void PredicateCodableConfiguration.allowInputs<each A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16) == 1)
  {
    if (a2)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v7 = a2;
      v8 = v6;
      v9 = (a3 & 0xFFFFFFFFFFFFFFFELL);
      v10 = *(v6 + 2);
      do
      {
        v11 = *(v8 + 3);
        v12 = v10 + 1;
        if (v10 >= v11 >> 1)
        {
          v14 = v7;
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1, v8);
          v7 = v14;
          v8 = v15;
        }

        v13 = *v9++;
        *(v8 + 2) = v12;
        *&v8[8 * v10++ + 32] = v13;
        --v7;
      }

      while (v7);
      goto LABEL_9;
    }

    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v12)
    {
LABEL_9:
      v16 = 0;
      do
      {
        v17 = *&v8[8 * v16 + 32];
        _StringGuts.grow(_:)(29);

        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v18);

        PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(v17, 0xD00000000000001BLL, 0x8000000181483840, 1);

        ++v16;
      }

      while (v12 != v16);

      return;
    }
  }
}

_WORD *storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpressionStructure.CodingKeys()
{
  if (*v0)
  {
    return 1936159329;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t PredicateArchivingState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *partial apply for closure #1 in _NSSwiftCalendar.locale.setter()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return Calendar.locale.setter(&v2);
}

uint64_t _NSSwiftTimeZone.isDaylightSavingTime.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&v2 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  ObjectType = swift_getObjectType();
  __tp.tv_sec = v2;
  LOBYTE(v1) = (*(v1 + 72))(&__tp, ObjectType, v1);
  swift_unknownObjectRelease();
  return v1 & 1;
}

Swift::Bool __swiftcall _TimeZoneICU.isDaylightSavingTime(for:)(Foundation::Date a1)
{
  v2 = v1[2];
  os_unfair_lock_lock(v2 + 6);
  if (_TimeZoneICU.State.calendar(_:)(v1[3], v1[4]))
  {
    ucal_setMillis();
    v3 = ucal_get();
    v4 = v3 / 1000.0 != 0.0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2 + 6);
  return v4;
}

__C::_NSRange __swiftcall _NSSwiftCalendar.range(of:in:for:)(NSCalendarUnit of, NSCalendarUnit in, Foundation::Date a3)
{
  v6 = *v3;
  _fromNSCalendarUnit(_:)(of, &v26);
  v7 = v26;
  if (v26 == 19)
  {
    goto LABEL_11;
  }

  _fromNSCalendarUnit(_:)(in, &v25);
  v8 = v25;
  if (v25 == 19)
  {
    goto LABEL_11;
  }

  v9 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v9 + 32));
  v10 = *(v9 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 32));
  v24 = v7;
  v23 = v8;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v11 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v11 = v6;
  }

  v12 = *&static Date.validCalendarRange >= v11 ? *&static Date.validCalendarRange : v11;
  ObjectType = swift_getObjectType();
  v22 = v12;
  v14 = (*(v10 + 144))(&v24, &v23, &v22, ObjectType, v10);
  v16 = v15;
  v18 = v17;
  v19 = swift_unknownObjectRelease();
  if (v18)
  {
LABEL_11:
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v16 - v14;
    if (__OFSUB__(v16, v14))
    {
      __break(1u);
    }

    else
    {
      v19 = v14;
    }
  }

  result.length = v20;
  result.location = v19;
  return result;
}

uint64_t _CalendarGregorian.range(of:in:for:)(unsigned __int8 *a1, _BYTE *a2, double *a3)
{
  v4 = *a2;
  if (v4 <= 0xF && ((1 << v4) & 0xE100) != 0)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *a3;
  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      if (v4 - 4 >= 3)
      {
        v9 = 4;
        goto LABEL_21;
      }

      return 0;
    }

    if (v7 == 5)
    {
      if (v4 - 5 >= 2)
      {
        v9 = 5;
        goto LABEL_21;
      }

      return 0;
    }
  }

  else
  {
    switch(v7)
    {
      case 6u:
        if (v4 != 6)
        {
          v9 = 6;
          goto LABEL_21;
        }

        return 0;
      case 0xDu:
        v9 = 13;
        goto LABEL_21;
      case 7u:
        if (v4 - 3 >= 5)
        {
          v9 = 7;
LABEL_21:
          v16[0] = v9;
          return _CalendarGregorian.maximumRange(of:)(v16);
        }

        return 0;
    }
  }

  if (*a2 > 8u)
  {
    if (v4 == 9)
    {
      if (v7 > 0xB)
      {
        return 0;
      }

      if (((1 << v7) & 0x508) == 0)
      {
        if (((1 << v7) & 0x804) == 0)
        {
          return 0;
        }

        LOBYTE(v13) = v7;
        v12 = 9;
        goto LABEL_57;
      }

      LOBYTE(v13) = v7;
      v11 = 9;
      goto LABEL_65;
    }

    if (v4 != 10)
    {
      if (v4 != 12 || v7 > 0xB)
      {
        return 0;
      }

      if (((1 << v7) & 0xA04) != 0)
      {
        LOBYTE(v13) = v7;
        v10 = 12;
LABEL_61:
        LOBYTE(v15) = v10;
        *v16 = v8;
        return _CalendarGregorian._algorithmA(smaller:larger:at:)(&v13, &v15, v16);
      }

      if (((1 << v7) & 0x108) == 0)
      {
        return 0;
      }

      LOBYTE(v13) = v7;
      v11 = 12;
      goto LABEL_65;
    }

    if (v7 != 3)
    {
      return 0;
    }

    *v16 = *a3;
    return _CalendarGregorian._algorithmD(at:)(v16, v8);
  }

  else
  {
    if (*a2)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          return 0;
        }

        if (*a1 <= 9u)
        {
          if (v7 != 3 && v7 != 8)
          {
            return 0;
          }

          goto LABEL_54;
        }

        if (v7 == 10)
        {
LABEL_54:
          LOBYTE(v13) = v7;
          v10 = 2;
          goto LABEL_61;
        }

        if (v7 != 11)
        {
          return 0;
        }

        LOBYTE(v13) = 11;
        v12 = 2;
LABEL_57:
        LOBYTE(v15) = v12;
        *v16 = v8;
        return _CalendarGregorian._algorithmC(smaller:larger:at:)(&v13, &v15, v16);
      }

      result = 1;
      if (v7 > 0x12)
      {
LABEL_62:
        if (v7 != 2)
        {
          return 0;
        }

        return result;
      }

      if (((1 << v7) & 0x500) == 0)
      {
        v10 = 1;
        if (((1 << v7) & 0xA00) != 0)
        {
          LOBYTE(v13) = v7;
          goto LABEL_61;
        }

        if (((1 << v7) & 0x40008) != 0)
        {
          v15 = 2;
          v14 = v8;
          v13 = *(v3 + 112);
          swift_unknownObjectRetain();
          _CalendarGregorian.dateComponents(_:from:in:)(&v15, &v14, &v13, v16);
          swift_unknownObjectRelease();
          result = outlined destroy of DateComponents(v16);
          if ((v17 & 1) == 0)
          {
            return 1;
          }

          __break(1u);
          return result;
        }

        goto LABEL_62;
      }

      LOBYTE(v13) = v7;
      v11 = 1;
LABEL_65:
      LOBYTE(v15) = v11;
      *v16 = v8;
      return _CalendarGregorian._algorithmB(smaller:larger:at:)(&v13, &v15, v16);
    }

    if (v7 > 0xB)
    {
      return 0;
    }

    result = 1;
    if (((1 << v7) & 0xE0E) != 0)
    {
      v16[0] = v7;
      return _CalendarGregorian.maximumRange(of:)(v16);
    }

    if (v7 != 8)
    {
      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall _NSSwiftCalendar.isDateInWeekend(_:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = *(v2 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v4 + 32));
  v5 = *(v4 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 32));
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v6 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v3)
  {
    v6 = v3;
  }

  if (*&static Date.validCalendarRange >= v6)
  {
    v7 = *&static Date.validCalendarRange;
  }

  else
  {
    v7 = v6;
  }

  ObjectType = swift_getObjectType();
  v11 = v7;
  v9 = (*(v5 + 168))(&v11, ObjectType, v5);
  swift_unknownObjectRelease();
  return v9 & 1;
}

void protocol witness for _LocaleProtocol.weekendRange.getter in conformance _LocaleICU(uint64_t a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock(v3 + 134);
  partial apply for closure #1 in _LocaleICU.firstDayOfWeek.getter(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 134);
  v4 = v5;
  os_unfair_lock_lock(v3 + 134);
  closure #1 in _LocaleICU.weekendRange.getter(&v3[4], v4, a1);

  os_unfair_lock_unlock(v3 + 134);
}

Swift::Bool __swiftcall _CalendarGregorian.isDateInWeekend(_:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = xmmword_181232B70;
  if (*(v2 + 96))
  {
    v5 = *(v2 + 104);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 336);
    swift_unknownObjectRetain();
    v7(&weekendRange.onsetTime.is_nil, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v15)
    {
      v8 = 0;
      value_high = 0;
      end = 0;
      start = 0x40F5180000000000;
      v4 = xmmword_181232B70;
    }

    else
    {
      value_high = HIBYTE(weekendRange.ceaseTime.value);
      v8 = *&weekendRange.onsetTime.is_nil;
      start = weekendRange.start;
      end = weekendRange.end;
      v4 = v14;
    }
  }

  else
  {
    v8 = 0;
    value_high = 0;
    end = 0;
    start = 0x40F5180000000000;
  }

  weekendRange.onsetTime.value = v3;
  *&weekendRange.onsetTime.is_nil = v8;
  HIBYTE(weekendRange.ceaseTime.value) = value_high & 1;
  weekendRange.start = start;
  LOBYTE(weekendRange.end) = end & 1;
  v14 = v4;
  return _CalendarGregorian.isDateInWeekend(_:weekendRange:)(v4, &weekendRange);
}

uint64_t closure #1 in _LocaleICU.weekendRange.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  if ((*(result + 257) & 1) == 0)
  {
    v32 = *(result + 256);
    v33 = *(result + 224);
    *a4 = *(result + 208);
    *(a4 + 16) = v33;
    *(a4 + 32) = *(result + 240);
    *(a4 + 48) = v32 & 1;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  inited = swift_initStackObject();
  result = specialized Collection<>.firstIndex(of:)(a2, outlined read-only object #0 of one-time initialization function for weekdays);
  if (v11)
  {
    __break(1u);
    return result;
  }

  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_113;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (HIDWORD(v12))
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v41 = a4;
  inited[8] = v12;
  v13 = (inited + 8);
  v14 = v12 % 7;
  v15 = v14 + 1;
  v16 = v14 + 2;
  if (v15 == 7)
  {
    v16 = 1;
  }

  inited[9] = v15;
  inited[10] = v16;
  v17 = v16 % 7;
  v18 = v17 + 1;
  v19 = v17 + 2;
  if (v18 == 7)
  {
    v19 = 1;
  }

  inited[11] = v18;
  inited[12] = v19;
  v20 = v19 % 7;
  v21 = v20 + 1;
  v22 = v20 + 2;
  if (v21 == 7)
  {
    v22 = 1;
  }

  inited[13] = v21;
  inited[14] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20UCalendarWeekdayTypeVGMd, &_ss23_ContiguousArrayStorageCySo20UCalendarWeekdayTypeVGMR);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_18122CFA0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  String.utf8CString.getter();
  ucal_open();

  v40 = inited + 8;
  v25 = *v13;
  if ((*v13 & 0x80000000) != 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v35 = 4;
    goto LABEL_74;
  }

  v13 = 0;
  v26 = 0;
  v4 = 0;
  v5 = 1;
  v27 = 1;
  while (1)
  {
    DayOfWeekType = ucal_getDayOfWeekType();
    v6 = *(v23 + 16);
    if (v13 >= v6)
    {
      goto LABEL_55;
    }

    *(v23 + 4 * v13 + 32) = DayOfWeekType;
    if (DayOfWeekType == 3)
    {
      if (v13 > 6)
      {
        goto LABEL_65;
      }

      v27 = 0;
      v4 = v25;
LABEL_16:
      if (v13 == 6)
      {
        break;
      }

      goto LABEL_17;
    }

    if (DayOfWeekType != 2)
    {
      goto LABEL_16;
    }

    if (v13 > 6)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v35 = 2;
      goto LABEL_74;
    }

    v5 = 0;
    v26 = v25;
    if (v13 == 6)
    {
      break;
    }

LABEL_17:
    v25 = inited[v13++ + 9];
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_54;
    }
  }

  v29 = 0;
  LOBYTE(v13) = v27;
  do
  {
    if (v6 == v29)
    {
      goto LABEL_109;
    }

    v30 = v23 + 4 * v29++;
  }

  while ((*(v30 + 32) - 1) > 2);
  v7 = 0.0;
  v8 = 0.0;
  if ((v5 & 1) == 0)
  {
    v8 = ucal_getWeekendTransition() / 1000.0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_28:
    v24 = (v23 + 32);
    if (v5)
    {
      goto LABEL_29;
    }

LABEL_42:
    LOBYTE(v31) = 0;
    goto LABEL_76;
  }

  if (v27)
  {
    goto LABEL_28;
  }

LABEL_41:
  v7 = ucal_getWeekendTransition() / 1000.0;
  v24 = (v23 + 32);
  if ((v5 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_29:
  if (*v24 != 1)
  {
    if (v6 != 1)
    {
      if (*(v23 + 36) == 1)
      {
        v34 = 1;
        goto LABEL_70;
      }

      if (v6 != 2)
      {
        if (*(v23 + 40) == 1)
        {
          v34 = 2;
          goto LABEL_70;
        }

        if (v6 != 3)
        {
          if (*(v23 + 44) == 1)
          {
            v34 = 3;
            goto LABEL_70;
          }

          if (v6 != 4)
          {
            if (*(v23 + 48) == 1)
            {
              v34 = 4;
              goto LABEL_70;
            }

            if (v6 != 5)
            {
              if (*(v23 + 52) == 1)
              {
                v34 = 5;
                goto LABEL_70;
              }

              if (v6 != 6)
              {
                if (*(v23 + 56) != 1)
                {
                  v26 = 0;
                  LOBYTE(v31) = 1;
                  goto LABEL_76;
                }

                v34 = 6;
LABEL_70:
                v36 = &v40[v34];
                goto LABEL_75;
              }
            }
          }
        }
      }
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v6 < 7)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
  }

  if (*(v23 + 56) != 1)
  {
    v34 = 0;
    goto LABEL_70;
  }

  if (*(v23 + 52) != 1)
  {
    v35 = 5;
    goto LABEL_74;
  }

  if (*(v23 + 48) != 1)
  {
    goto LABEL_56;
  }

  if (*(v23 + 44) != 1)
  {
    v35 = 3;
    goto LABEL_74;
  }

  if (*(v23 + 40) != 1)
  {
    goto LABEL_66;
  }

  if (*(v23 + 36) == 1)
  {
    v31 = *v24;
    if (*v24 == 1)
    {
      v26 = 0;
      goto LABEL_76;
    }

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

LABEL_74:
  v36 = &v40[v35 + 1];
LABEL_75:
  LOBYTE(v31) = 0;
  v26 = *v36;
LABEL_76:
  if ((v13 & 1) == 0)
  {
    goto LABEL_108;
  }

  if (*v24 != 1)
  {
    if (v6 >= 7)
    {
      goto LABEL_87;
    }

    goto LABEL_115;
  }

  if (v6 < 7)
  {
    goto LABEL_118;
  }

  if (*(v23 + 56) != 1)
  {
LABEL_87:
    if (*(v23 + 56) == 1)
    {
      v38 = 6;
    }

    else if (*(v23 + 52) == 1)
    {
      v38 = 5;
    }

    else if (*(v23 + 48) == 1)
    {
      v38 = 4;
    }

    else if (*(v23 + 44) == 1)
    {
      v38 = 3;
    }

    else if (*(v23 + 40) == 1)
    {
      v38 = 2;
    }

    else if (*(v23 + 36) == 1)
    {
      v38 = 1;
    }

    else
    {
      if (*v24 != 1)
      {
        goto LABEL_109;
      }

      v38 = 0;
    }

    v39 = &v40[v38];
    goto LABEL_107;
  }

  if (*(v23 + 36) == 1)
  {
    if (*(v23 + 40) == 1)
    {
      if (*(v23 + 44) == 1)
      {
        if (*(v23 + 48) == 1)
        {
          if (*(v23 + 52) != 1)
          {
            v37 = 5;
            goto LABEL_103;
          }

LABEL_109:
          *(v41 + 16) = 0u;
          *(v41 + 32) = 0u;
          *v41 = 0u;
          *(v41 + 48) = 1;
          goto LABEL_111;
        }

        v37 = 4;
      }

      else
      {
        v37 = 3;
      }
    }

    else
    {
      v37 = 2;
    }
  }

  else
  {
    v37 = 1;
  }

LABEL_103:
  v39 = &v40[v37 - 1];
LABEL_107:
  v4 = *v39;
LABEL_108:
  if (v31)
  {
    goto LABEL_109;
  }

  *v41 = v8;
  *(v41 + 8) = v5 & 1;
  *(v41 + 16) = v7;
  *(v41 + 24) = v13 & 1;
  *(v41 + 32) = v26;
  *(v41 + 40) = v4;
  *(v41 + 48) = 0;
LABEL_111:
  ucal_close();
  swift_setDeallocating();
  return swift_setDeallocating();
}

Swift::Bool __swiftcall _CalendarGregorian.isDateInWeekend(_:weekendRange:)(Foundation::Date _, Foundation::WeekendRange *weekendRange)
{
  value = weekendRange->onsetTime.value;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  __src[0] = 128;
  v31 = *&value;
  __dst[0] = *(v3 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(__src, &v31, __dst, v32);
  swift_unknownObjectRelease();
  result = outlined destroy of DateComponents(v32);
  if (v34)
  {
    goto LABEL_44;
  }

  if (v10 == v9 && v33 != v10)
  {
    return 0;
  }

  if (v10 >= v9 || (result = 0, v33 >= v10) && v9 >= v33)
  {
    if (v9 < v10 && v9 < v33 && v33 < v10)
    {
      return 0;
    }

    if (v33 == v10)
    {
      if (v5 == 0.0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v6;
      }

      if (v12)
      {
        return 1;
      }

      v31 = 112;
      v28 = value;
      __dst[0] = *(v3 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v31, &v28, __dst, __src);
      swift_unknownObjectRelease();
      result = memcpy(__dst, __src, 0x11BuLL);
      if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
      {
        goto LABEL_46;
      }

      v21 = *&__dst[7];
      v22 = *&__dst[8];
      v23 = *&__dst[9];
      result = outlined destroy of DateComponents(__dst);
      v24 = 3600 * v21;
      if ((v21 * 3600) >> 64 == (3600 * v21) >> 63)
      {
        v25 = 60 * v22;
        if ((v22 * 60) >> 64 == (60 * v22) >> 63)
        {
          v18 = __OFADD__(v24, v25);
          v26 = v24 + v25;
          if (!v18)
          {
            v18 = __OFADD__(v26, v23);
            v27 = v26 + v23;
            if (!v18)
            {
              return v5 <= v27;
            }

            goto LABEL_42;
          }

          goto LABEL_40;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_37:
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
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    result = 1;
    if (!((v33 != v9) | v8 & 1) && v7 < 86400.0)
    {
      v31 = 112;
      v28 = value;
      __dst[0] = *(v3 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v31, &v28, __dst, __src);
      swift_unknownObjectRelease();
      result = memcpy(__dst, __src, 0x11BuLL);
      if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
      {
        goto LABEL_45;
      }

      v13 = *&__dst[7];
      v14 = *&__dst[8];
      v15 = *&__dst[9];
      result = outlined destroy of DateComponents(__dst);
      v16 = 3600 * v13;
      if ((v13 * 3600) >> 64 == (3600 * v13) >> 63)
      {
        v17 = 60 * v14;
        if ((v14 * 60) >> 64 == (60 * v14) >> 63)
        {
          v18 = __OFADD__(v16, v17);
          v19 = v16 + v17;
          if (!v18)
          {
            v18 = __OFADD__(v19, v15);
            v20 = v19 + v15;
            if (!v18)
            {
              return v7 > v20;
            }

            goto LABEL_43;
          }

          goto LABEL_41;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

  return result;
}

double AttributedString.unicodeScalars.getter@<D0>(uint64_t a1@<X8>)
{

  *&result = AttributedString.UnicodeScalarView.init(_:)(v2, a1).n128_u64[0];
  return result;
}

double AttributedString.init(_:)@<D0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  v27 = a1[3];
  v28 = v3;
  v4 = a1[2];
  v5 = a1[1];
  v25[0] = *a1;
  v25[1] = v5;
  v26 = v4;
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  BigString.init(_:)();
  v6 = *(*&v25[0] + 72);
  v7 = *(*&v25[0] + 80);
  v8 = *(*&v25[0] + 88);
  swift_unknownObjectRetain();
  v9 = specialized Rope.extract<A>(from:to:in:)(*(&v25[0] + 1) >> 11, *(&v26 + 1) >> 11, v6, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();
  outlined destroy of AttributedSubstring(v25);
  type metadata accessor for AttributedString.Guts();
  v16 = swift_allocObject();
  v17 = BigString.isEmpty.getter() & 1;
  specialized Rope._endPath.getter(v9);
  if (v9)
  {
    v18 = v13 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_11:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v16 + 24) = v22;
  *(v16 + 16) = add_explicit;
  *(v16 + 40) = v23;
  result = *&v24;
  *(v16 + 56) = v24;
  *(v16 + 72) = v9;
  *(v16 + 80) = v11;
  *(v16 + 88) = v13;
  *(v16 + 96) = v15;
  *(v16 + 104) = MEMORY[0x1E69E7CC0];
  *a2 = v16;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView(void (**a1)(void **a1), unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x34uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2 >> 10;
  if (v7 < v2[1] >> 10 || v7 >= v2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*v2 + 40);
    v10 = *(*v2 + 56);
    *result = *(*v2 + 24);
    *(result + 1) = v9;
    *(result + 2) = v10;
    swift_unknownObjectRetain();
    v11 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    *(v6 + 12) = v11;
    return protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AttributedString.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString.UnicodeScalarView(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[5] >> 10;
  if (v2 >= v1[1] >> 10 && v3 >= v2)
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UnicodeScalarView.index(after:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v3 >= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
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

uint64_t _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t isUniquelyReferenced_nonNull_native@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v242 = a5;
  v243 = a6;
  v269 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 16);
  v249 = *(v11 - 1);
  v12 = v249;
  MEMORY[0x1EEE9AC00](a1);
  v239 = &v232 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v247 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v232 - v18;
  v20 = *v7;
  v252 = *(v7 + 16);
  v21 = *(a3 + 24);
  v22 = v11;
  v267 = v11;
  v268 = v21;
  v251 = v21;
  __swift_allocate_boxed_opaque_existential_0(&v264);
  v24 = *(v12 + 16);
  v23 = v12 + 16;
  v246 = a2;
  v245 = v23;
  v244 = v24;
  v24();
  v25 = *(v20 + 152);
  v253 = v20;
  v254 = v16;
  v255 = v19;
  v250 = isUniquelyReferenced_nonNull_native;
  v248 = v14;
  if (!v25)
  {
    v30 = dispatch thunk of CodingKey.stringValue.getter();
    v28 = v38;
    goto LABEL_86;
  }

  if (v25 != 1)
  {
    v28 = v11;
    isUniquelyReferenced_nonNull_native = *(v20 + 160);

    v39 = __JSONEncoder.codingPath.getter();
    v40 = _CodingPathNode.path.getter(v252);
    v261 = v39;
    specialized Array.append<A>(contentsOf:)(v40);
    v22 = v261;
    outlined init with copy of Hashable & Sendable(&v264, &v261);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

    goto LABEL_132;
  }

  v237 = v11;
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  v28 = v27;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v30 = v26;
  if (!v29)
  {
    v22 = v237;
    goto LABEL_86;
  }

  v31 = String.index(after:)();
  v32 = 7;
  if (((v28 >> 60) & ((v30 & 0x800000000000000) == 0)) != 0)
  {
    v32 = 11;
  }

  v236 = 4 * v29;
  if (4 * v29 < v31 >> 14)
  {
    goto LABEL_163;
  }

  v235 = v32 | (v29 << 16);
  v33 = String.subscript.getter();
  v37 = v36;
  v16 = MEMORY[0x1E69E7CC0];
  i = v28;
  v28 = v30;
  v241 = v7;
  if ((v33 ^ v34) < 0x4000)
  {
    v23 = 15;
    goto LABEL_76;
  }

  v20 = v33;
  isUniquelyReferenced_nonNull_native = v34;
  v25 = v35;
  v23 = 15;
  while (1)
  {
    v233 = v23;
    v240 = v16;
    v50 = Substring.UnicodeScalarView.index(before:)();
    v51 = Substring.UnicodeScalarView.subscript.getter();
    v52 = v51;
    v53 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v51), 1u);
    v7 = v20;
    if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v52, v53, 0x700030001))
    {
      break;
    }

LABEL_20:
    v54 = Substring.UnicodeScalarView.index(after:)();

    v56 = v7 >> 14;
    v57 = v233;
    if (v7 >> 14 < v233 >> 14 || v54 >> 14 < v56)
    {
      goto LABEL_167;
    }

    v16 = v240;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v59 = *(v16 + 2);
    v58 = *(v16 + 3);
    if (v59 >= v58 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v16);
    }

    *(v16 + 2) = v59 + 1;
    v60 = &v16[16 * v59];
    *(v60 + 4) = v57;
    *(v60 + 5) = v7;
    if (v236 < v56)
    {
      goto LABEL_168;
    }

    v61 = String.subscript.getter();
    v65 = v64;
    if ((v61 ^ v62) < 0x4000)
    {
      v23 = v7;
      goto LABEL_76;
    }

    v66 = v61;
    isUniquelyReferenced_nonNull_native = v62;
    v67 = v63;
    v234 = v7 >> 14;
    v240 = v16;
    v68 = Substring.UnicodeScalarView.index(before:)();
    if ((v65 & 0x2000000000000000) != 0)
    {
      v22 = (HIBYTE(v65) & 0xF);
    }

    else
    {
      v22 = (v67 & 0xFFFFFFFFFFFFLL);
    }

    v238 = v65 & 0xFFFFFFFFFFFFFFLL;
    v69 = v66;
    while (1)
    {
      v70 = Substring.UnicodeScalarView.subscript.getter();
      if (BYTE2(v70) <= 1u)
      {
        v71 = *(&__CFUniCharLowercaseLetterCharacterSetBitmap + BYTE2(v70));
        if (v71)
        {
          if ((*(v71 + (v70 >> 3)) >> (v70 & 7)))
          {
            break;
          }
        }
      }

      if ((v69 ^ v68) < 0x4000)
      {
        v23 = v7;
        v16 = v240;
        goto LABEL_76;
      }

      v25 = _StringGuts.validateInclusiveScalarIndex(_:)(v69, v67, v65) >> 16;
      if (v25 >= v22)
      {
        __break(1u);
        goto LABEL_127;
      }

      if ((v65 & 0x1000000000000000) != 0)
      {
        v69 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((v65 & 0x2000000000000000) != 0)
        {
          v261 = v67;
          v262 = v238;
          v73 = *(&v261 + v25);
        }

        else
        {
          v72 = (v65 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v67 & 0x1000000000000000) == 0)
          {
            v72 = _StringObject.sharedUTF8.getter();
          }

          v73 = *(v72 + v25);
        }

        v74 = v73;
        v75 = __clz(v73 ^ 0xFF) - 24;
        if (v74 >= 0)
        {
          LOBYTE(v75) = 1;
        }

        v69 = ((v25 + v75) << 16) | 5;
      }
    }

    v84 = Substring.UnicodeScalarView.index(after:)();

    if (v84 >> 14 < v69 >> 14)
    {
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
    }

    if (v69 >> 14 == String.index(after:)() >> 14)
    {
      v23 = v7;
    }

    else
    {
      v85 = String.index(before:)();
      if (v234 > v85 >> 14)
      {
        goto LABEL_189;
      }

      v23 = v85;
      v87 = *(v240 + 2);
      v86 = *(v240 + 3);
      if (v87 >= v86 >> 1)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v240);
      }

      v88 = v240;
      *(v240 + 2) = v87 + 1;
      v89 = &v88[16 * v87];
      *(v89 + 4) = v7;
      *(v89 + 5) = v23;
    }

    if (v236 < v84 >> 14)
    {
      goto LABEL_188;
    }

    v20 = String.subscript.getter();
    isUniquelyReferenced_nonNull_native = v90;
    v25 = v91;
    v37 = v92;
    v16 = v240;
    if ((v20 ^ v90) < 0x4000)
    {
      goto LABEL_76;
    }
  }

  if ((v37 & 0x2000000000000000) != 0)
  {
    v22 = (HIBYTE(v37) & 0xF);
  }

  else
  {
    v22 = (v25 & 0xFFFFFFFFFFFFLL);
  }

  v238 = v37 & 0xFFFFFFFFFFFFFFLL;
  v234 = (v37 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v7 = v20;
  while ((v7 ^ v50) >= 0x4000)
  {
    v79 = _StringGuts.validateInclusiveScalarIndex(_:)(v7, v25, v37) >> 16;
    if (v79 >= v22)
    {
      goto LABEL_130;
    }

    if ((v37 & 0x1000000000000000) != 0)
    {
      v7 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v37 & 0x2000000000000000) != 0)
      {
        v261 = v25;
        v262 = v238;
        v81 = *(&v261 + v79);
      }

      else
      {
        v80 = v234;
        if ((v25 & 0x1000000000000000) == 0)
        {
          v80 = _StringObject.sharedUTF8.getter();
        }

        v81 = *(v80 + v79);
      }

      v82 = v81;
      v83 = __clz(v81 ^ 0xFF) - 24;
      if (v82 >= 0)
      {
        LOBYTE(v83) = 1;
      }

      v7 = ((v79 + v83) << 16) | 5;
    }

    v76 = Substring.UnicodeScalarView.subscript.getter();
    v77 = v76;
    v78 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v76), 1u);
    if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v77, v78, 0x700030001))
    {
      goto LABEL_20;
    }
  }

  v16 = v240;
  v23 = v233;
LABEL_76:

  if (v236 < v23 >> 14)
  {
    goto LABEL_164;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v94 = *(v16 + 2);
    v93 = *(v16 + 3);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v16);
    }

    *(v16 + 2) = v95;
    v96 = &v16[16 * v94];
    v97 = v235;
    *(v96 + 4) = v23;
    *(v96 + 5) = v97;
    v261 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 + 1, 0);
    isUniquelyReferenced_nonNull_native = v261;
    v240 = v16;
    v98 = v16 + 40;
    do
    {
      String.subscript.getter();
      v99 = Substring.lowercased()();

      v261 = isUniquelyReferenced_nonNull_native;
      v101 = *(isUniquelyReferenced_nonNull_native + 16);
      v100 = *(isUniquelyReferenced_nonNull_native + 24);
      if (v101 >= v100 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
        isUniquelyReferenced_nonNull_native = v261;
      }

      v98 += 16;
      *(isUniquelyReferenced_nonNull_native + 16) = v101 + 1;
      *(isUniquelyReferenced_nonNull_native + 16 * v101 + 32) = v99;
      --v95;
    }

    while (v95);

    v261 = isUniquelyReferenced_nonNull_native;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v30 = BidirectionalCollection<>.joined(separator:)();
    v103 = v102;

    v28 = v103;
    v20 = v253;
    v22 = v237;
    while (1)
    {
      v16 = v254;
      v7 = v241;
LABEL_86:
      __swift_destroy_boxed_opaque_existential_1(&v264);
      v104 = *(v7 + 8);
      v105 = *(v104 + 16);
      v106 = *(v105 + 16);
      v240 = v30;
      if (!v106)
      {
        goto LABEL_108;
      }

      v238 = v104;

      v107 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v28);
      if ((v108 & 1) == 0)
      {

        v104 = v238;
        v115 = *(v238 + 16);
        if (*(v115 + 16))
        {

          v116 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v28);
          if (v117)
          {
            v118 = *(v115 + 56) + 24 * v116;
            v119 = *(v118 + 16) >> 6;
            if (v119)
            {
              if (v119 != 2)
              {
                goto LABEL_193;
              }

              v110 = *v118;

              v114 = v255;
              goto LABEL_151;
            }
          }

          v104 = v238;
        }

LABEL_108:
        type metadata accessor for JSONFuture.RefObject();
        v137 = swift_allocObject();
        *(v137 + 16) = MEMORY[0x1E69E7CC8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation10JSONFutureOGMd, &_sSDySS10Foundation10JSONFutureOGMR);
        Dictionary.reserveCapacity(_:)(4);
        v241 = v137;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v264 = *(v104 + 16);
        v25 = v264;
        *(v104 + 16) = 0x8000000000000000;
        v138 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v28);
        v140 = *(v25 + 16);
        v141 = (v139 & 1) == 0;
        v129 = __OFADD__(v140, v141);
        v142 = v140 + v141;
        if (v129)
        {
          goto LABEL_131;
        }

        v143 = v139;
        if (*(v25 + 24) >= v142)
        {
          v114 = v255;
          if (isUniquelyReferenced_nonNull_native)
          {
            v144 = v25;
            goto LABEL_114;
          }

          v237 = v22;
          v238 = v138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
          v168 = static _DictionaryStorage.copy(original:)();
          v144 = v168;
          if (*(v25 + 16))
          {
            v169 = (v168 + 64);
            v170 = (v25 + 64);
            v171 = ((1 << *(v144 + 32)) + 63) >> 6;
            v236 = v25 + 64;
            if (v144 != v25 || v169 >= &v170[8 * v171])
            {
              memmove(v169, v170, 8 * v171);
            }

            v172 = 0;
            *(v144 + 16) = *(v25 + 16);
            v173 = 1 << *(v25 + 32);
            v174 = -1;
            if (v173 < 64)
            {
              v174 = ~(-1 << v173);
            }

            v175 = v174 & *(v25 + 64);
            v176 = (v173 + 63) >> 6;
            v16 = v254;
            if (!v175)
            {
              goto LABEL_141;
            }

            while (1)
            {
              v177 = __clz(__rbit64(v175));
              for (i = (v175 - 1) & v175; ; i = (v179 - 1) & v179)
              {
                v180 = v177 | (v172 << 6);
                v181 = 16 * v180;
                v182 = (*(v25 + 48) + 16 * v180);
                v184 = *v182;
                v183 = v182[1];
                v180 *= 24;
                v185 = *(v25 + 56) + v180;
                v186 = *v185;
                v187 = *(v185 + 8);
                v188 = (*(v144 + 48) + v181);
                v189 = *(v185 + 16);
                *v188 = v184;
                v188[1] = v183;
                v190 = *(v144 + 56) + v180;
                *v190 = v186;
                *(v190 + 8) = v187;
                *(v190 + 16) = v189;

                outlined copy of JSONFuture(v186, v187, v189);
                v20 = v253;
                v114 = v255;
                v175 = i;
                v16 = v254;
                if (i)
                {
                  break;
                }

LABEL_141:
                v178 = v172;
                do
                {
                  v172 = v178 + 1;
                  if (__OFADD__(v178, 1))
                  {
                    goto LABEL_190;
                  }

                  if (v172 >= v176)
                  {
                    goto LABEL_148;
                  }

                  v179 = *(v236 + 8 * v172);
                  ++v178;
                }

                while (!v179);
                v177 = __clz(__rbit64(v179));
              }
            }
          }

LABEL_148:

          v138 = v238;
          v22 = v237;
          if ((v143 & 1) == 0)
          {
            goto LABEL_149;
          }

LABEL_115:
          v146 = v22;
          v147 = v138;

          v148 = *(v144 + 56) + 24 * v147;
          v22 = v146;
          v149 = *v148;
          v150 = *(v148 + 8);
          v110 = v241;
          *v148 = v241;
          *(v148 + 8) = 0;
          v151 = *(v148 + 16);
          *(v148 + 16) = 0x80;
          outlined consume of JSONFuture(v149, v150, v151);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, isUniquelyReferenced_nonNull_native);
          v144 = v264;
          v138 = specialized __RawDictionaryStorage.find<A>(_:)(v240, v28);
          v114 = v255;
          if ((v143 & 1) != (v145 & 1))
          {
            goto LABEL_196;
          }

LABEL_114:
          if (v143)
          {
            goto LABEL_115;
          }

LABEL_149:
          v110 = v241;
          specialized _NativeDictionary._insert(at:key:value:)(v138, v240, v28, v241, 0, 128, v144);
        }

        *(v104 + 16) = v144;
LABEL_151:

        v112 = v247;
        v113 = v250;
        goto LABEL_152;
      }

      i = v28;
      v109 = *(v105 + 56) + 24 * v107;
      v110 = *v109;
      isUniquelyReferenced_nonNull_native = *(v109 + 8);
      v111 = *(v109 + 16);
      outlined copy of JSONFuture(*v109, isUniquelyReferenced_nonNull_native, *(v109 + 16));

      if ((v111 & 0xC0) == 0x80)
      {

        v112 = v247;
        v113 = v250;
        v114 = v255;
        goto LABEL_152;
      }

      if (v111 != 4)
      {
        goto LABEL_192;
      }

      v236 = isUniquelyReferenced_nonNull_native;
      outlined copy of JSONEncoderValue(v110, isUniquelyReferenced_nonNull_native, 4u);
      v235 = v110;
      v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_SS_AF10JSONFutureOts5NeverOTg5016_s10Foundation16ef27O20convertedToObjectRefAA10G39O0gF0CSgyFSS_AFtSS3key_AC5valuet_tXEfU_Tf1cn_n(v110);
      v120 = *(v25 + 16);
      v114 = v255;
      v237 = v22;
      if (!v120)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
      v121 = static _DictionaryStorage.allocate(capacity:)();
      v122 = *(v25 + 16);
      *&v258 = v121;
      v241 = v122;
      if (!v122)
      {
        goto LABEL_117;
      }

      v22 = 0;
      v123 = (v25 + 64);
      while (v22 < *(v25 + 16))
      {
        v28 = v25;
        v25 = *(v123 - 3);
        v20 = *(v123 - 2);
        v7 = *(v123 - 1);
        isUniquelyReferenced_nonNull_native = *v123;
        v264 = *(v123 - 4);
        v124 = v264;
        v265 = v25;

        outlined copy of JSONFuture(v20, v7, isUniquelyReferenced_nonNull_native);
        v125 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v25);
        v127 = v121[2];
        v128 = (v126 & 1) == 0;
        v129 = __OFADD__(v127, v128);
        v130 = v127 + v128;
        if (v129)
        {
          goto LABEL_128;
        }

        v131 = v126;
        if (v121[3] < v130)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, 1);
          v121 = v258;
          v125 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v25);
          if ((v131 & 1) != (v132 & 1))
          {
            goto LABEL_196;
          }
        }

        if (v131)
        {
          goto LABEL_194;
        }

        v121[(v125 >> 6) + 8] |= 1 << v125;
        v133 = (v121[6] + 16 * v125);
        *v133 = v124;
        v133[1] = v25;
        v134 = v121[7] + 24 * v125;
        *v134 = v20;
        *(v134 + 8) = v7;
        *(v134 + 16) = isUniquelyReferenced_nonNull_native;
        v135 = v121[2];
        v129 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (v129)
        {
          goto LABEL_129;
        }

        v22 = (v22 + 1);
        v121[2] = v136;
        v123 += 40;
        v20 = v253;
        v16 = v254;
        v114 = v255;
        v25 = v28;
        if (v241 == v22)
        {
          goto LABEL_117;
        }
      }

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
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
LABEL_14:
      v42 = v22[2];
      v41 = v22[3];
      v241 = v7;
      if (v42 >= v41 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
      }

      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v261, v263);
      v44 = MEMORY[0x1EEE9AC00](v43);
      v46 = &v232 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46, v44);
      v259 = v28;
      v260 = v251;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v258);
      (*(v249 + 32))(boxed_opaque_existential_0, v46, v28);
      v22[2] = v42 + 1;
      outlined init with take of Equatable(&v258, &v22[5 * v42 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v261);
      (v25)(&v261, v22);

      __swift_project_boxed_opaque_existential_1(&v261, v263);
      v22 = v28;
      v30 = dispatch thunk of CodingKey.stringValue.getter();
      v28 = v49;
      sub_1807A5C7C(v25, isUniquelyReferenced_nonNull_native);
      __swift_destroy_boxed_opaque_existential_1(&v261);
      v20 = v253;
    }

    v121 = MEMORY[0x1E69E7CC8];
LABEL_117:
    v152 = v235;
    outlined consume of JSONFuture(v235, v236, 4u);

    type metadata accessor for JSONFuture.RefObject();
    v153 = swift_allocObject();
    *(v153 + 16) = v121;
    v241 = v153;
    swift_retain_n();
    v154 = v238;
    v155 = swift_isUniquelyReferenced_nonNull_native();
    v264 = *(v154 + 16);
    v25 = v264;
    *(v154 + 16) = 0x8000000000000000;
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v240, i);
    v157 = *(v25 + 16);
    v158 = (v156 & 1) == 0;
    v159 = v157 + v158;
    if (__OFADD__(v157, v158))
    {
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v234 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
      v208 = static _DictionaryStorage.copy(original:)();
      v160 = v208;
      if (!*(v25 + 16))
      {
LABEL_184:

        v113 = v250;
        v20 = v253;
        v22 = v237;
        v16 = v254;
        v114 = v255;
        v154 = v238;
        v110 = v241;
        v152 = v235;
        v55 = v234;
        if ((v7 & 1) == 0)
        {
          goto LABEL_185;
        }

        goto LABEL_124;
      }

      v209 = (v208 + 64);
      isUniquelyReferenced_nonNull_native = v25 + 64;
      v210 = ((1 << *(v160 + 32)) + 63) >> 6;
      if (v160 != v25 || v209 >= isUniquelyReferenced_nonNull_native + 8 * v210)
      {
        memmove(v209, (v25 + 64), 8 * v210);
      }

      v211 = 0;
      *(v160 + 16) = *(v25 + 16);
      v212 = 1 << *(v25 + 32);
      v213 = *(v25 + 64);
      v214 = -1;
      if (v212 < 64)
      {
        v214 = ~(-1 << v212);
      }

      v215 = v214 & v213;
      v216 = (v212 + 63) >> 6;
      if ((v214 & v213) != 0)
      {
        do
        {
          v217 = __clz(__rbit64(v215));
          v215 &= v215 - 1;
LABEL_182:
          v220 = v217 | (v211 << 6);
          v221 = 16 * v220;
          v222 = (*(v25 + 48) + 16 * v220);
          v224 = *v222;
          v223 = v222[1];
          v220 *= 24;
          v225 = *(v25 + 56) + v220;
          v20 = *v225;
          v226 = *(v225 + 8);
          v227 = (*(v160 + 48) + v221);
          v228 = *(v225 + 16);
          *v227 = v224;
          v227[1] = v223;
          v229 = *(v160 + 56) + v220;
          *v229 = v20;
          *(v229 + 8) = v226;
          *(v229 + 16) = v228;

          outlined copy of JSONFuture(v20, v226, v228);
        }

        while (v215);
      }

      v218 = v211;
      while (1)
      {
        v211 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          break;
        }

        if (v211 >= v216)
        {
          goto LABEL_184;
        }

        v219 = *(isUniquelyReferenced_nonNull_native + 8 * v211);
        ++v218;
        if (v219)
        {
          v217 = __clz(__rbit64(v219));
          v215 = (v219 - 1) & v219;
          goto LABEL_182;
        }
      }

      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:

      v230 = swift_allocError();
      swift_willThrow();
      outlined consume of JSONFuture(v20, v7, isUniquelyReferenced_nonNull_native);
      v257[0] = v230;
      v231 = v230;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v261 = 0;
        v262 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);
        MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](39, 0xE100000000000000);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_196:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v7 = v156;
    if (*(v25 + 24) >= v159)
    {
      v22 = v237;
      if ((v155 & 1) == 0)
      {
        goto LABEL_169;
      }

      v160 = v25;
      v110 = v241;
      v113 = v250;
      if (v156)
      {
        goto LABEL_124;
      }

LABEL_185:
      specialized _NativeDictionary._insert(at:key:value:)(v55, v240, i, v110, 0, 128, v160);
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v159, v155);
      v160 = v264;
      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v240, i);
      v113 = v250;
      v22 = v237;
      if ((v7 & 1) != (v162 & 1))
      {
        goto LABEL_196;
      }

      v55 = v161;
      v110 = v241;
      if ((v7 & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_124:
      v163 = v55;

      v164 = *(v160 + 56) + 24 * v163;
      v165 = *v164;
      v166 = *(v164 + 8);
      *v164 = v110;
      *(v164 + 8) = 0;
      v167 = *(v164 + 16);
      *(v164 + 16) = 0x80;
      outlined consume of JSONFuture(v165, v166, v167);
    }

    *(v154 + 16) = v160;
    outlined consume of JSONFuture(v152, v236, 4u);
    v112 = v247;
LABEL_152:
    (v244)(v114, v246, v22);
    v191 = v249;
    (*(v249 + 56))(v114, 0, 1, v22);
    v23 = v248;
    (*(v112 + 16))(v16, v114, v248);
    if ((*(v191 + 48))(v16, 1, v22) == 1)
    {
      v192 = *(v112 + 8);

      v192(v114, v23);
      v192(v16, v23);
      v193 = v252;

      goto LABEL_160;
    }

    v195 = v110;
    v196 = *(v191 + 32);
    v197 = v16;
    v16 = v239;
    v196(v239, v197, v22);
    v198 = v22;
    v193 = swift_allocObject();
    v199 = v251;
    v193[5] = v198;
    v193[6] = v199;
    v200 = __swift_allocate_boxed_opaque_existential_0(v193 + 2);
    v196(v200, v16, v198);
    v201 = *(v112 + 8);

    v201(v114, v23);
    v202 = v252;
    v193[7] = v252;
    v203 = v202 >> 62;
    if (v203)
    {
      break;
    }

    v204 = (v252 + 64);
LABEL_158:
    v110 = v195;
    v113 = v250;
    v205 = *v204;

    v206 = v205 + 1;
    if (!__OFADD__(v205, 1))
    {
      goto LABEL_159;
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  if (v203 == 1)
  {
    v204 = ((v252 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_158;
  }

  v110 = v195;
  v113 = v250;
  v206 = 1;
LABEL_159:
  v193[8] = v206;
LABEL_160:
  v264 = v20;
  v265 = v110;
  v266 = v193;
  type metadata accessor for _JSONKeyedEncodingContainer(0, v113, v242, v194);

  swift_getWitnessTable();
  KeyedEncodingContainer.init<A>(_:)();
}

uint64_t sub_180994BEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t outlined consume of JSONFuture(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined consume of JSONEncoderValue(result, a2, a3);
  }
}

uint64_t instantiation function for generic protocol witness table for <A> PredicateExpressions.Value<A>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Equal<A, B>(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t type metadata completion function for PredicateExpressions.CollectionIndexSubscript(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.Conjunction(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Variable<A>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for PredicateExpressions.Value(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.StringLocalizedStandardContains(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.OptionalFlatMap(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for PredicateExpressions.Variable(319, a1[3], v4, v5);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id NSAttributedString.init(_:)(uint64_t *a1)
{
  v95 = *a1;
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v1 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v1 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(v113);
    os_unfair_lock_unlock(v1 + 10);
    v2 = v113[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd, &_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v113[0] = v2;
    specialized Array.append<A>(contentsOf:)(inited);
    v4 = v113[0];
    v5 = *(v113[0] + 16);
    if (v5)
    {
      v113[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = v113[0];
      v7 = v4 + 40;
      do
      {
        v8 = static AttributeScope.scopeDescription.getter(*(v7 - 8));

        v113[0] = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = v113[0];
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v7 += 16;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v105 = *(v6 + 16);
    if (!v105)
    {
      v12 = MEMORY[0x1E69E7CC8];
LABEL_51:
      v97 = v12;

      v59 = *(v95 + 40);
      v128[0] = *(v95 + 24);
      v128[1] = v59;
      v128[2] = *(v95 + 56);
      v129[0] = v128[0];
      v130 = *(v95 + 56);
      v129[1] = v59;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v129, v113);
      MEMORY[0x1865CAF80](v128);
      v60 = objc_allocWithZone(NSMutableAttributedString);
      v61 = String._bridgeToObjectiveCImpl()();

      v93 = [v60 initWithString_];
      swift_unknownObjectRelease();
      v62 = *(v95 + 40);
      v125 = *(v95 + 24);
      v126 = v62;
      v127 = *(v95 + 56);
      BigString.startIndex.getter();
      v63 = *(v95 + 72);
      v64 = *(v95 + 80);
      v65 = *(v95 + 88);
      v66 = *(v95 + 96);
      v113[0] = v63;
      v113[1] = v64;
      v96 = v66;
      v113[2] = v65;
      v113[3] = v66;
      v111 = v63;
      if (v63)
      {
        v67 = *(v63 + 18);
        v68 = v65;
        swift_unknownObjectRetain();
        v65 = v68;
      }

      else
      {
        v67 = 0;
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      v114 = v96;
      v115 = v67;
      v117 = 0;
      v118 = 0;
      v116 = 0;
      v94 = v65;
      while (1)
      {
        if (v111)
        {
          if (v71 == v65)
          {
            goto LABEL_83;
          }
        }

        else if (!v71)
        {
LABEL_83:

          swift_unknownObjectRelease();
          v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

          return v91;
        }

        if (v114 != v96)
        {
          goto LABEL_87;
        }

        v108 = v69;
        v73 = v115;
        v74 = v116;
        if (v116)
        {
          v75 = (v116 + 24 * ((v115 >> ((4 * *(v116 + 18) + 8) & 0x3C)) & 0xF));
          v76 = v75[3];
          v77 = v75[5];
          v33 = __OFADD__(v70++, 1);
          v78 = v33;
          v103 = v75[4];

          v79 = v77;

          v80 = v111;
          if (v78)
          {
            goto LABEL_88;
          }

          v117 = v70;
          v33 = __OFADD__(v71, v76);
          v71 += v76;
          if (v33)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v80 = v111;
          specialized Rope._Node.subscript.getter(v115, v111);
          v103 = v82;
          v33 = __OFADD__(v70++, 1);
          if (v33)
          {
            goto LABEL_88;
          }

          v79 = v81;
          v117 = v70;
          v83 = specialized Rope._Node.subscript.getter(v73, v111);
          v84 = v71;

          v71 += v83;
          if (__OFADD__(v84, v83))
          {
            goto LABEL_92;
          }
        }

        v118 = v71;
        if (!v80 || v73 >= (((-15 << ((4 * *(v80 + 18) + 8) & 0x3C)) - 1) & *(v80 + 18) | (*(v80 + 16) << ((4 * *(v80 + 18) + 8) & 0x3C))))
        {
          goto LABEL_95;
        }

        if (v74 && (v85 = (4 * *(v74 + 18) + 8) & 0x3C, v86 = ((v73 >> v85) & 0xF) + 1, v86 < *(v74 + 16)))
        {
          v115 = (v86 << v85) | ((-15 << v85) - 1) & v73;
        }

        else if ((specialized Rope._Node.formSuccessor(of:)(&v114, v80) & 1) == 0)
        {
          v87 = ((-15 << ((4 * *(v80 + 18) + 8) & 0x3C)) - 1) & *(v80 + 18) | (*(v80 + 16) << ((4 * *(v80 + 18) + 8) & 0x3C));
          v114 = v96;
          v115 = v87;
          v116 = 0;
        }

        v88 = *(v95 + 40);
        v122 = *(v95 + 24);
        v123 = v88;
        v124 = *(v95 + 56);
        swift_unknownObjectRetain();
        BigString.UTF8View.index(_:offsetBy:)();
        swift_unknownObjectRelease();
        v89 = *(v95 + 40);
        v119 = *(v95 + 24);
        v120 = v89;
        v121 = *(v95 + 56);
        swift_unknownObjectRetain();
        v90 = BigString.UTF16View.distance(from:to:)();
        swift_unknownObjectRelease();
        if (!*(v103 + 16))
        {
          break;
        }

        v112[0] = v103;
        v112[1] = v79;

        if (!specialized Dictionary<>.init(_:attributeTable:options:)(v112, v97, 1)[2])
        {
          goto LABEL_82;
        }

        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        v72 = v108;
        [v93 setAttributes:_NativeDictionary.bridged()() range:{v108, v90}];
        swift_unknownObjectRelease();
LABEL_56:
        v33 = __OFADD__(v72, v90);
        v69 = v72 + v90;
        v65 = v94;
        if (v33)
        {
          goto LABEL_89;
        }
      }

LABEL_82:

      v72 = v108;
      goto LABEL_56;
    }

    v11 = 0;
    v104 = v6 + 32;
    v12 = MEMORY[0x1E69E7CC8];
    v102 = v6;
LABEL_12:
    if (v11 >= *(v6 + 16))
    {
      goto LABEL_91;
    }

    v13 = *(v104 + 8 * v11);
    v106 = v11 + 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113[0] = v12;
    v15 = v13 + 64;
    v16 = 1 << *(v13 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & *(v13 + 64);
    v19 = (v16 + 63) >> 6;
    v107 = v13;

    v20 = 0;
LABEL_19:
    if (v18)
    {
      break;
    }

    while (2)
    {
      v22 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        if (v22 < v19)
        {
          v18 = *(v15 + 8 * v22);
          ++v20;
          if (v18)
          {
            goto LABEL_24;
          }

          continue;
        }

        v11 = v106;
        v6 = v102;
        if (v106 == v105)
        {
          goto LABEL_51;
        }

        goto LABEL_12;
      }

      break;
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
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    a1 = swift_once();
  }

  v22 = v20;
LABEL_24:
  v23 = (v22 << 10) | (16 * __clz(__rbit64(v18)));
  v24 = (*(v107 + 48) + v23);
  v25 = *v24;
  v26 = v24[1];
  v109 = *(*(v107 + 56) + v23);

  v110 = v25;
  v27 = v25;
  v28 = v12;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
  v31 = *(v12 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    goto LABEL_85;
  }

  v35 = v30;
  if (*(v12 + 24) < v34)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native & 1);
    v28 = v113[0];
    v36 = v110;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v110, v26);
    if ((v35 & 1) != (v37 & 1))
    {
      goto LABEL_96;
    }

LABEL_30:
    v18 &= v18 - 1;
    if (v35)
    {
      v21 = v29;

      *(*(v28 + 56) + 16 * v21) = v109;
    }

    else
    {
      *(v28 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v38 = (*(v28 + 48) + 16 * v29);
      *v38 = v36;
      v38[1] = v26;
      *(*(v28 + 56) + 16 * v29) = v109;
      v39 = *(v28 + 16);
      v33 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v33)
      {
        goto LABEL_86;
      }

      *(v28 + 16) = v40;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v20 = v22;
    v12 = v28;
    goto LABEL_19;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_29:
    v36 = v110;
    goto LABEL_30;
  }

  v99 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd, &_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMR);
  v41 = static _DictionaryStorage.copy(original:)();
  v28 = v41;
  if (!*(v12 + 16))
  {
LABEL_49:

    v113[0] = v28;
    v29 = v99;
    goto LABEL_29;
  }

  v42 = (v41 + 64);
  v43 = v12 + 64;
  v44 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != v12 || v42 >= v43 + 8 * v44)
  {
    memmove(v42, (v12 + 64), 8 * v44);
  }

  v45 = 0;
  *(v28 + 16) = *(v12 + 16);
  v46 = 1 << *(v12 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v12 + 64);
  v98 = (v46 + 63) >> 6;
  if (v48)
  {
    do
    {
      v100 = (v48 - 1) & v48;
      v101 = v45;
      v49 = __clz(__rbit64(v48)) | (v45 << 6);
LABEL_47:
      v53 = 16 * v49;
      v54 = (*(v12 + 48) + v53);
      v56 = *v54;
      v55 = v54[1];
      v57 = *(*(v12 + 56) + v53);
      v58 = (*(v28 + 48) + v53);
      *v58 = v56;
      v58[1] = v55;
      *(*(v28 + 56) + v53) = v57;

      v48 = v100;
      v45 = v101;
    }

    while (v100);
  }

  v50 = v45;
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v98)
    {
      goto LABEL_49;
    }

    v52 = *(v43 + 8 * v51);
    ++v50;
    if (v52)
    {
      v100 = (v52 - 1) & v52;
      v101 = v51;
      v49 = __clz(__rbit64(v52)) | (v51 << 6);
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  swift_unknownObjectRelease();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall _NSSwiftCalendar.isDate(_:inSameDayAs:)(Foundation::Date _, Foundation::Date inSameDayAs)
{
  v4 = *v2;
  v5 = *(v3 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v5 + 32));
  *&_a[0]._time = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 32));
  v11 = *&_a[0]._time;
  v10 = v4;
  v7 = Calendar.compare(_:to:toGranularity:)(_a[0], v6, &v10);
  swift_unknownObjectRelease();
  return v7 == NSOrderedSame;
}

uint64_t getEnumTagSinglePayload for AttributedString.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t specialized Rope.Builder._appendNow(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  if (v5)
  {
    v13 = v5;
    v14 = v6;
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
    v10 = swift_allocObject();
    a2 = v8;
    a3 = v9;
    v11 = v10;
    a1 = v7;
    *(v11 + 16) = 0;
    *(v11 + 18) = 0;
    v14 = 0uLL;
    v13 = v11;
  }

  specialized Rope._Node._appendItem(_:)(a1, a2, a3);
  result = v13;
  if (*(v13 + 16) == 15)
  {

    return specialized Rope.Builder._appendNow(_:)(v13, v14, *(&v14 + 1));
  }

  else
  {
    *(v4 + 8) = v13;
    *(v4 + 16) = v14;
  }

  return result;
}

uint64_t specialized Rope.Builder.finalize()()
{
  v1 = v0;
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[9];
  v0[8] = 0;
  v0[9] = 0;
  v0[7] = 0;
  if (v2)
  {
    if (v3)
    {
      v5 = v0[4];
      v6 = v0[5];
      v7 = v0[6];
      v0[5] = 0;
      v0[6] = 0;
      v0[4] = 0;
      if (v6)
      {
        specialized Rope.Builder._appendNow(_:)(v5, v6, v7);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(v0[4], v0[5], v0[6]);
      }

      v0[4] = v3;
      v0[5] = v2;
      v0[6] = v4;
    }

    else
    {
    }
  }

  v8 = v0[4];
  v9 = v0[5];
  v10 = v0 + 4;
  v11 = v0[6];
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = 0;
  if (v9)
  {
    specialized Rope.Builder._appendNow(_:)(v8, v9, v11);
  }

LABEL_17:
  v19 = v1[10];
  while (1)
  {
    if (!v19[2])
    {
      v20 = v1[4];
      v21 = v1[5];
      v22 = v1[6];
      *v10 = 0;
      v1[5] = 0;
      v1[6] = 0;
      if (v21)
      {
        specialized Rope.Builder._appendNow(_:)(v20, v21, v22);
      }

      v24 = v1[1];
      v23 = v1[2];
      v25 = v1[3];
      v1[2] = 0;
      v1[3] = 0;
      v1[1] = 0;
      v58 = 0;
      MEMORY[0x1865D26B0](&v58, 8, v22);
      v26 = v58;
      v27 = *v1;
      if (!*(*v1 + 16))
      {
        return v24;
      }

      while (1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v32 = v27[2];
          if (!v32)
          {
            goto LABEL_48;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          v27 = result;
          v32 = *(result + 16);
          if (!v32)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        v33 = v32 - 1;
        v34 = &v27[4 * v32];
        v28 = *v34;
        v30 = v34[1];
        v31 = v34[2];
        v29 = v34[3];
        v27[2] = v33;
        *v1 = v27;
        if (v24)
        {
          if (!*(v24 + 16))
          {
            goto LABEL_46;
          }

          if (v28)
          {
            if (*(v28 + 16))
            {
              v58 = v28;
              v59 = v30;
              v60 = v31;
              v55 = v24;
              v56 = v23;
              v57 = v25;
              if (*(v28 + 18) >= *(v24 + 18))
              {
                result = specialized Rope._Node._graftBack(_:)(v54, &v55);
                if (result)
                {
                  v46 = v58;
                  v47 = *(v58 + 18) + 1;
                  if ((v47 >> 8))
                  {
                    goto LABEL_51;
                  }

                  v48 = result;
                  v49 = v44;
                  v50 = v45;
                  v51 = v59;
                  v52 = v60;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMR);
                  result = swift_allocObject();
                  *(result + 18) = v47;
                  v30 = v51 + v49;
                  if (__OFADD__(v51, v49))
                  {
                    goto LABEL_52;
                  }

                  v31 = v52 + v50;
                  if (__OFADD__(v52, v50))
                  {
                    goto LABEL_55;
                  }

                  v28 = result;
                  *(result + 24) = v46;
                  *(result + 32) = v51;
                  *(result + 40) = v52;
                  *(result + 48) = v48;
                  *(result + 56) = v49;
                  *(result + 64) = v50;
                  *(result + 16) = 2;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v28 = v58;
                  v30 = v59;
                  v31 = v60;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                  swift_unknownObjectRelease();
                }
              }

              else
              {
                result = specialized Rope._Node._graftFront(_:)(v54, &v58);
                if (result)
                {
                  v37 = result;
                  v38 = *(result + 18) + 1;
                  if ((v38 >> 8))
                  {
                    goto LABEL_50;
                  }

                  v39 = v35;
                  v40 = v36;
                  v42 = v55;
                  v41 = v56;
                  v43 = v57;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMR);
                  result = swift_allocObject();
                  *(result + 18) = v38;
                  v30 = v39 + v41;
                  if (__OFADD__(v39, v41))
                  {
                    goto LABEL_53;
                  }

                  v31 = v40 + v43;
                  if (__OFADD__(v40, v43))
                  {
                    goto LABEL_54;
                  }

                  v28 = result;
                  *(result + 24) = v37;
                  *(result + 32) = v39;
                  *(result + 40) = v40;
                  *(result + 48) = v42;
                  *(result + 56) = v41;
                  *(result + 64) = v43;
                  *(result + 16) = 2;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                }

                else
                {
                  v28 = v55;
                  v30 = v56;
                  v31 = v57;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                }

                swift_unknownObjectRelease();
              }

LABEL_46:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            swift_unknownObjectRelease();
          }

          v29 = v26;
          v28 = v24;
          v30 = v23;
          v31 = v25;
        }

LABEL_25:
        v27 = *v1;
        v25 = v31;
        v23 = v30;
        v24 = v28;
        v26 = v29;
        if (!*(*v1 + 16))
        {
          return v28;
        }
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
      v13 = *(result + 16);
      if (!v13)
      {
        break;
      }

      goto LABEL_12;
    }

    v13 = v19[2];
    if (!v13)
    {
      break;
    }

LABEL_12:
    v14 = v13 - 1;
    v15 = &v19[4 * v13];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19[2] = v14;
    v1[10] = v19;
    if (v16)
    {
      specialized Rope.Builder._insertBeforeTip(_:)(v16, v17, v18);
      goto LABEL_17;
    }
  }

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
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString._InternalRun(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

double AttributedString.subscript.getter@<D0>(uint64_t a9@<X8>)
{
  v11 = *v9;
  v12 = *(*v9 + 40);
  v37 = *(*v9 + 24);
  v38 = v12;
  v39 = *(v11 + 56);
  *&v24 = v11;
  *(&v24 + 1) = BigString.startIndex.getter();
  *&v25 = v13;
  *(&v25 + 1) = v14;
  *&v26 = v15;
  *(&v26 + 1) = BigString.endIndex.getter();
  *&v27 = v16;
  *(&v27 + 1) = v17;
  v28 = v18;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v40[2] = v26;
  v40[3] = v27;
  v40[4] = v28;
  v40[0] = v24;
  v40[1] = v25;
  outlined destroy of AttributedString.CharacterView(v40);
  *(a9 + 72) = 0;
  *a9 = v11;
  v19 = *(v11 + 40);
  v34 = *(v11 + 24);
  v35 = v19;
  v36 = *(v11 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(&v29);
  result = *&v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  *(a9 + 8) = v30;
  *(a9 + 24) = v21;
  *(a9 + 40) = v22;
  *(a9 + 56) = v23;
  return result;
}

__n128 AttributedString.UnicodeScalarView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a9@<X8>)
{
  v11 = *(a1 + 40);
  v43[0] = *(a1 + 24);
  v43[1] = v11;
  v43[2] = *(a1 + 56);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v24 = *(a1 + 40);
  v25 = *(a1 + 24);
  v31 = BigString.startIndex.getter();
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = BigString.endIndex.getter();
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v25;
  v40 = v24;
  v41 = v12;
  v42 = v13;

  outlined init with copy of BigString(v43, v26);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(v43);
  outlined destroy of BigSubstring.UnicodeScalarView(v26);
  result = v27;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  *a9 = a1;
  *(a9 + 8) = result;
  *(a9 + 24) = v21;
  *(a9 + 40) = v22;
  *(a9 + 56) = v23;
  *(a9 + 72) = 0;
  return result;
}

uint64_t specialized Rope.extract<A>(from:to:in:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    memset(&v14[8], 0, 72);
    v15 = MEMORY[0x1E69E7CC0];
    if ((result & 0x8000000000000000) == 0 && a2 >= result && a5 >= a2)
    {
      if (result != a2)
      {
        v6 = result;
        v8 = *(a3 + 18);
        swift_unknownObjectRetain();
        v9 = (a3 + 16);
        v10 = (a3 + 24);
        if (v8)
        {
          specialized closure #2 in Rope._Node.extract<A>(from:to:in:into:)(v9, v10, v6, a2, v14);
        }

        else
        {
          specialized closure #1 in Rope._Node.extract<A>(from:to:in:into:)(v9, v10, v6, a2, v14);
        }

        swift_unknownObjectRelease();
      }

      v11 = specialized Rope.Builder.finalize()();
      v12[2] = *&v14[32];
      v12[3] = *&v14[48];
      v12[4] = *&v14[64];
      v13 = v15;
      v12[0] = *v14;
      v12[1] = *&v14[16];
      outlined destroy of TermOfAddress?(v12, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMd, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMR);
      return v11;
    }

    __break(1u);
  }

  else if (!(a2 | result))
  {
    *v14 = 0;
    MEMORY[0x1865D26B0](v14, 8);
    return 0;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in Rope._Node.extract<A>(from:to:in:into:)(_WORD *result, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *result;
  v7 = a3;
  if (*result)
  {
    v8 = 0;
    v9 = a2;
    v10 = a3;
    do
    {
      v11 = *v9;
      v9 += 3;
      v7 = v10 - v11;
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_72;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_73;
      }

      if (v7 + 1 < 1)
      {
        goto LABEL_9;
      }

      ++v8;
      v10 = v7;
    }

    while (v6 != v8);
  }

  if (v7)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v10 = 0;
  v8 = *result;
LABEL_9:
  v12 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    goto LABEL_78;
  }

  v13 = v10 + v12;
  if (__OFADD__(v10, v12))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v8 >= v6)
  {
    v15 = v8;
  }

  else
  {
    v14 = &a2[3 * v8];
    v15 = v8;
    while (1)
    {
      v17 = *v14;
      v14 += 3;
      v16 = v17;
      if (v17 >= v13)
      {
        break;
      }

      v18 = __OFSUB__(v13, v16);
      v13 -= v16;
      if (v18)
      {
        goto LABEL_74;
      }

      if (v6 == ++v15)
      {
        v15 = *result;
        break;
      }
    }
  }

  v19 = &a2[3 * v8];
  v21 = *v19;
  v20 = v19[1];
  v22 = v19[2];
  if (v8 != v15)
  {
    if (v10 < 0)
    {
      goto LABEL_82;
    }

    v29 = v21 - v10;
    if (v21 < v10)
    {
      goto LABEL_82;
    }

    if (v21 == v10)
    {

      v30 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      v31 = a5[4];
      v32 = a5[5];
      v33 = a5[6];
      a5[5] = 0;
      a5[6] = 0;
      a5[4] = 0;
      if (v32)
      {
        v34 = v20;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        specialized Rope.Builder._appendNow(_:)(v31, v32, v33);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5], a5[6]);
        a5[4] = v29;
        a5[5] = v34;
        a5[6] = v22;
        v30 = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
LABEL_38:
          if (v15 < v30)
          {
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          if (v30 != v15)
          {
            if (v30 < v15)
            {
              v41 = ~v8 + v15;
              v42 = &a2[3 * v8 + 5];
              while (1)
              {
                v43 = *(v42 - 2);
                if (v43)
                {
                  v44 = *(v42 - 1);
                  v45 = *v42;
                  v46 = a5[4];
                  v47 = *(a5 + 5);
                  v48 = a5[5];
                  a5[4] = 0;
                  a5[5] = 0;
                  a5[6] = 0;
                  if (v48)
                  {
                    v63 = v46;
                    v64 = v47;
                    v65 = v45;
                    v50 = a5[1];
                    v49 = a5[2];
                    v51 = a5[3];
                    a5[1] = 0;
                    a5[2] = 0;
                    a5[3] = 0;
                    if (!v50)
                    {
                      v52 = v44;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
                      v50 = swift_allocObject();
                      v44 = v52;
                      v51 = 0;
                      v49 = 0;
                      *(v50 + 16) = 0;
                      *(v50 + 18) = 0;
                    }

                    v62 = v44;

                    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
                    {
                      v53 = specialized Rope._Node.copy()(v50);
                      v49 = v54;
                      v51 = v55;
                      swift_unknownObjectRelease();
                      v50 = v53;
                    }

                    v18 = __OFADD__(v49, 1);
                    v56 = v49 + 1;
                    if (v18)
                    {
                      goto LABEL_75;
                    }

                    v18 = __OFADD__(v51, v63);
                    v57 = v51 + v63;
                    if (v18)
                    {
                      goto LABEL_76;
                    }

                    v58 = *(v50 + 16);
                    v59 = v50 + 24 * *(v50 + 16);
                    *(v59 + 24) = v63;
                    *(v59 + 32) = v64;
                    if (v58 == 0xFFFF)
                    {
                      goto LABEL_77;
                    }

                    v60 = v58 + 1;
                    *(v50 + 16) = v60;
                    if (v60 == 15)
                    {
                      specialized Rope.Builder._appendNow(_:)(v50, v56, v57);
                    }

                    else
                    {
                      swift_unknownObjectRelease();
                      a5[1] = v50;
                      a5[2] = v56;
                      a5[3] = v57;
                    }

                    outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5], a5[6]);
                    a5[4] = v43;
                    a5[5] = v62;
                    a5[6] = v65;
                  }

                  else
                  {
                    a5[4] = v43;
                    a5[5] = v44;
                    a5[6] = v45;
                  }
                }

                v42 += 3;
                if (!--v41)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_87;
          }

LABEL_40:
          if (v13 < 0 || (v35 = &a2[3 * v15], *v35 < v13))
          {
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            return;
          }

          if (v13)
          {
            v37 = v35[1];
            v36 = v35[2];
            v38 = a5[4];
            v39 = a5[5];
            v40 = a5[6];
            a5[5] = 0;
            a5[6] = 0;
            a5[4] = 0;
            if (v39)
            {

              specialized Rope.Builder._appendNow(_:)(v38, v39, v40);
              outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5], a5[6]);
              a5[4] = v13;
              a5[5] = v37;
              a5[6] = v36;
            }

            else
            {
              a5[4] = v13;
              a5[5] = v37;
              a5[6] = v36;
            }
          }

          return;
        }
      }

      else
      {
        a5[4] = v29;
        a5[5] = v20;
        a5[6] = v22;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v30 = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
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
    goto LABEL_79;
  }

  if (__OFSUB__(v21, v10))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v18 = __OFSUB__(v13, v10);
  v23 = v13 - v10;
  if (v18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if ((v23 | v10) < 0)
  {
    goto LABEL_85;
  }

  if (v21 < v10 || v21 - v10 < v23)
  {
    goto LABEL_85;
  }

  if (v23)
  {
    v25 = a5[4];
    v26 = a5[5];
    v27 = a5[6];
    a5[5] = 0;
    a5[6] = 0;
    a5[4] = 0;
    if (v26)
    {
      v28 = v20;

      specialized Rope.Builder._appendNow(_:)(v25, v26, v27);
      outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5], a5[6]);
      a5[4] = v23;
      a5[5] = v28;
      a5[6] = v22;
    }

    else
    {
      a5[4] = v23;
      a5[5] = v20;
      a5[6] = v22;
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView()
{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

uint64_t SortDescriptor.init<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a2 & 1;
  *a5 = a2 & 1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v8 = type metadata accessor for ComparableComparator(0, *(v6 + *MEMORY[0x1E69E77B0] + 8), a3, a4);
  *(a5 + 48) = v8;
  *(a5 + 56) = swift_getWitnessTable();
  *(a5 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  WitnessTable = swift_getWitnessTable();
  *(v9 + 24) = WitnessTable;
  *(a5 + 64) = partial apply for closure #1 in AnySortComparator.init<A>(_:);
  *(a5 + 72) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = WitnessTable;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #2 in AnySortComparator.init<A>(_:);
  *(v12 + 24) = v11;
  *(a5 + 80) = _sSH_s8Sendablep10Foundation9SortOrderOs11AnyHashableVIeghlyr_SH_sAApADSH_sAApIeghlyr_TRTA_0;
  *(a5 + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = WitnessTable;
  *(a5 + 96) = partial apply for closure #3 in AnySortComparator.init<A>(_:);
  *(a5 + 104) = v13;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a5 + 112) = v15;
  *(a5 + 120) = 2;
  return result;
}

{
  v6 = *a1;
  v7 = a2 & 1;
  *a5 = a2 & 1;
  v8 = MEMORY[0x1E69E77B0];
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v9 = type metadata accessor for ComparableComparator(255, *(*(v6 + *v8 + 8) + 16), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for OptionalComparator(0, v9, WitnessTable, v11);
  *(a5 + 48) = v12;
  *(a5 + 56) = swift_getWitnessTable();
  *(a5 + 24) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_getWitnessTable();
  *(v13 + 24) = v14;
  *(a5 + 64) = closure #1 in AnySortComparator.init<A>(_:)partial apply;
  *(a5 + 72) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
  *(v16 + 24) = v15;
  *(a5 + 80) = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
  *(a5 + 88) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(a5 + 96) = closure #3 in AnySortComparator.init<A>(_:)partial apply;
  *(a5 + 104) = v17;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a5 + 112) = v19;
  *(a5 + 120) = 2;
  return result;
}

uint64_t sub_180996EA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation14SortDescriptorV17AllowedComparisonOyx_G(uint64_t a1)
{
  if ((*(a1 + 96) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 96) & 7;
  }
}

uint64_t SortDescriptor.keyPath.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SortDescriptor.AllowedComparison(0, *(a1 + 16), a3, a4);
  (*(*(v5 - 8) + 16))(v8, v4 + 24, v5);
  if (v11 > 2u)
  {
    return 0;
  }

  if (!v11 || v11 == 1)
  {
    return v9;
  }

  v7 = v10;
  outlined destroy of AnySortComparator(v8);
  return v7;
}

uint64_t type metadata instantiation function for SortDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = result;
  v5 = a3[2];
  if (!v5)
  {
    result = 0;
    v7 = __OFSUB__(a2, v4);
    v9 = a2 - v4;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v6 = a3[5];
  v7 = __OFSUB__(result, v6);
  v8 = result - v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  result = v8 + v5;
  v7 = __OFSUB__(a2, v4);
  v9 = a2 - v4;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (a3[3] < v9)
  {
    v9 = a3[3];
  }

  v10 = v9 + result;
  if (result)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return closure #1 in Data.customMirror.getter(result, v11, a4);
}

uint64_t type metadata instantiation function for SortDescriptor.AllowedComparison(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ComparableComparator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for ComparableComparator<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.KeyPath<A, B>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t Date.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd, &_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_181218E20;
  *(v9 + 32) = 0xD00000000000001ELL;
  *(v9 + 40) = 0x8000000181487740;
  *(v9 + 72) = MEMORY[0x1E69E63B0];
  *(v9 + 48) = v8;
  v14[1] = v8;
  v14[0] = v9;
  v10 = *MEMORY[0x1E69E75B8];
  v11 = type metadata accessor for Mirror.DisplayStyle();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void Data.customMirror.getter(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Mirror.AncestorRepresentation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a2);
      goto LABEL_10;
    }

LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v14 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  v14 = 0;
  if (v13 == 2)
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v14 = v15 - v16;
    if (__OFSUB__(v15, v16))
    {
      __break(1u);
      goto LABEL_8;
    }
  }

LABEL_10:
  v39[0] = a3;
  v44 = MEMORY[0x1E69E6530];
  *&v43 = v14;
  v40 = xmmword_181234420;
  outlined init with take of Any(&v43, &v41);
  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = v17[2];
  v18 = v17[3];
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v17[2] = v20;
    v21 = &v17[6 * v19];
    v22 = v40;
    v23 = v42;
    v21[3] = v41;
    v21[4] = v23;
    v21[2] = v22;
    v45 = v17;
    v20 = 0;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, &v45);
    if (v14 >= 64)
    {
      v26 = v45;
      goto LABEL_34;
    }

    if (v13 <= 1)
    {
      break;
    }

    if (v13 == 2)
    {
      v24 = *(a1 + 16);
      v18 = v14 + v24;
      if (__OFADD__(v14, v24))
      {
        goto LABEL_39;
      }

      v27 = *(a1 + 24);
      goto LABEL_25;
    }

    v24 = 0;
    v25 = v14 & (v14 >> 63);
    if (v25 >= 0)
    {
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v20, 1, v17);
  }

  if (!v13)
  {
    v24 = 0;
    v18 = BYTE6(a2);
    if (BYTE6(a2) >= v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = BYTE6(a2);
    }

    if (v25 >= 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v24 = a1;
  v18 = v14 + a1;
  if (__OFADD__(v14, a1))
  {
    goto LABEL_40;
  }

  v27 = a1 >> 32;
LABEL_25:
  if (v27 >= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v27;
  }

  if (v25 < v24)
  {
    goto LABEL_36;
  }

LABEL_29:
  v28 = Data._Representation.subscript.getter(v24, v25, a1, a2);
  v30 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v28, v29);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  *&v43 = v30;
  v40 = xmmword_181234430;
  outlined init with take of Any(&v43, &v41);
  v26 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
  }

  v32 = v26[2];
  v31 = v26[3];
  if (v32 >= v31 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v26);
  }

  v26[2] = v32 + 1;
  v33 = &v26[6 * v32];
  v34 = v40;
  v35 = v42;
  v33[3] = v41;
  v33[4] = v35;
  v33[2] = v34;
  v45 = v26;
LABEL_34:
  *&v40 = a1;
  *(&v40 + 1) = a2;
  *&v43 = v26;
  v36 = *MEMORY[0x1E69E75B8];
  v37 = type metadata accessor for Mirror.DisplayStyle();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v12, v36, v37);
  (*(v38 + 56))(v12, 0, 1, v37);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E75D8], v6);
  outlined copy of Data._Representation(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A], &_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR, MEMORY[0x1E69E6340]);
  Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return closure #1 in Data.customMirror.getter(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return closure #1 in Data.customMirror.getter(v8, v4, a3);
}

uint64_t SortDescriptor.stringComparator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for SortDescriptor.AllowedComparison(0, *(a1 + 16), a2, a3);
  v7 = *(v6 - 8);
  result = (*(v7 + 16))(&v15, v4 + 24, v6);
  if (v18 == 3)
  {
    v9 = v15;
    if (v17)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v13 = v14 | v16;
  }

  else if (v18 > 1u)
  {
    result = (*(v7 + 8))(&v15, v6);
    v9 = 0;
    v13 = 2;
  }

  else
  {
    v9 = v15;
    v10 = v16;
    v11 = v17;

    if (v11)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v10;
  }

  if (v13 != 2)
  {
    v13 = v13;
  }

  *a4 = v9;
  *(a4 + 8) = v13;
  return result;
}

uint64_t getEnumTagSinglePayload for String.StandardComparator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t closure #1 in Data.customMirror.getter(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v11 = MEMORY[0x1E69E6270];
    *&v10 = result;
    outlined init with take of Any(&v10, v9);
    v4 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v4;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      v4 = result;
      *a3 = result;
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      v4 = result;
      *a3 = result;
    }

    v4[2] = v6 + 1;
    v7 = &v4[6 * v6];
    v8 = v9[1];
    v7[3] = v9[0];
    v7[4] = v8;
    v7[2] = xmmword_181234440;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

uint64_t closure #1 in XMLPlistMap.detectUID(dictionaryReferenceCount:objectOffset:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result == 1428440643 && *(result + 4) == 17481;
  *a2 = v3;
  return result;
}

char **IndexSet.formIndex(before:)(char **result)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    goto LABEL_11;
  }

  v6 = result[3];
  if (!v6)
  {
    return result;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *v3;
  v2 = result;
  result[3] = v7;
  v9 = *(v8 + 24);
  result = [*(v8 + 16) rangeAtIndex_];
  v4 = result;
  v5 = result + v10;
  v1 = __OFADD__(result, v10);
  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = v2;
  if (v5 < v4)
  {
    __break(1u);
LABEL_11:
    if (!__OFSUB__(v4--, 1))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    if (v1)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    result = v2;
    if (v5 < v4)
    {
LABEL_23:
      __break(1u);
      return result;
    }
  }

  result[1] = v4;
  result[2] = v5;
  v4 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  *result = v4;
  return result;
}

uint64_t IndexSet.init(integer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(NSIndexSet) initWithIndex_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd, &_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMR);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

void updateDateTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSDateFormatter);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = v6;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = v10;
  }

  [(NSDateFormatter *)v6 setLocale:v7];
  if (!v8)
  {
    v8 = [v7 objectForKey:*MEMORY[0x1E695D958]];
  }

  [(NSDateFormatter *)v10 setCalendar:v8];
  [(NSDateFormatter *)v10 setDateStyle:a2];
  [(NSDateFormatter *)v10 setTimeStyle:a3];
  v9 = [(NSDateFormatter *)v10 dateFormat];

  *(a1 + 40) = v9;
}

uint64_t __NSFirePerformWithOrder(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *(a3 + 8);
  v20 = *a3;
  v4 = *(a3 + 24);
  v18 = *(a3 + 16);
  v6 = *(a3 + 32);
  v5 = *(a3 + 40);
  _CFAutoreleasePoolPush();
  CFRetain(a1);
  objc_sync_enter(v5);
  v7 = [v5 _perft];
  v22.length = [v7 count];
  v22.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v22, v6);
  if (FirstIndexOfValue << 32 != 0xFFFFFFFF00000000)
  {
    CFArrayRemoveValueAtIndex(v7, FirstIndexOfValue);
  }

  v9 = [v4 count];
  v10 = *MEMORY[0x1E695DA28];
  v11 = *MEMORY[0x1E695E8D0];
  for (i = v9 - 1; i != -1; --i)
  {
    v13 = [v4 objectAtIndex:i];
    v14 = v13;
    v15 = v11;
    if (v13 != v10)
    {
      if ([(__CFString *)v13 isEqual:@"kCFRunLoopCommonModes"])
      {
        v15 = v11;
      }

      else
      {
        v15 = v14;
      }
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(Current, a1, v15);
  }

  objc_sync_exit(v5);
  [v20 v19];
  CFRelease(a1);

  return _CFAutoreleasePoolPop();
}

uint64_t __performOrderedCleanup(id *a1, uint64_t a2)
{
  _CFAutoreleasePoolPush();

  free(a1);

  return _CFAutoreleasePoolPop();
}

uint64_t _NSSwiftCalendar.nextDate(after:matching:options:)@<X0>(double *a1@<X0>, const void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  if ((a3 & 2) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if ((a3 & 0x100) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  if ((a3 & 0x200) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if ((a3 & 0x400) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = (a3 & 0x3000) == 0x2000;
  v14 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v14 + 32));
  memcpy(v34, a2, 0x11BuLL);
  v31 = v15;
  v32 = v16;
  if (!DateComponents._validate(for:)(&v31))
  {
    goto LABEL_18;
  }

  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  if (v8 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v8)
  {
    v20 = (a3 >> 2) & 1;
    v21 = 101;
    v22 = v8;
    while (1)
    {
      v25[0] = v15;
      v25[1] = v16;
      v30 = *&v8;
      memcpy(v34, a2, 0x11BuLL);
      v29 = v12;
      v28 = v13;
      v27 = v20;
      v26 = v22;
      v23 = 0;
      LOBYTE(v24) = 1;
      Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v30, v34, &v29, &v28, &v27, &v26, &v23, &v31);
      if (v32 != 2)
      {
        break;
      }

      v22 = v33;
      if (!--v21)
      {
        *v25 = v8;
        v31 = v15;
        v32 = v16;
        memcpy(v34, a2, 0x11BuLL);
        LOBYTE(v23) = v20;
        LOBYTE(v30) = v12;
        LOBYTE(v26) = v13;
        _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v25, &v31, v34, &v23, &v30, &v26);
        result = swift_unknownObjectRelease();
        v18 = 0;
        v19 = 1;
        goto LABEL_19;
      }
    }

    v18 = v31;
    result = swift_unknownObjectRelease();
    v19 = 0;
  }

  else
  {
LABEL_18:
    result = swift_unknownObjectRelease();
    v18 = 0;
    v19 = 1;
  }

LABEL_19:
  *a4 = v18;
  *(a4 + 8) = v19;
  return result;
}

Swift::Int __swiftcall _CalendarGregorian.wrapAroundRelativeWeekday(_:)(Swift::Int result)
{
  if (*(v1 + 136) != 1)
  {
    v11 = *(v1 + 128);
    v9 = __OFSUB__(result, v11);
    v10 = result - v11;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (*(v1 + 96))
  {
    v2 = result;
    v3 = *(v1 + 104);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 328);
    swift_unknownObjectRetain();
    v5(&v13, ObjectType, v3);
    result = specialized Collection<>.firstIndex(of:)(v13, outlined read-only object #0 of one-time initialization function for weekdays);
    if (v6)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v7 = result;
    result = swift_unknownObjectRelease();
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = v2;
    v9 = __OFSUB__(v2, v8);
    v10 = v2 - v8;
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

LABEL_9:
  v12 = v10 % 7;
  if (v12 >= 0)
  {
    return v12;
  }

  else
  {
    return v12 + 7;
  }
}

uint64_t _CreateComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v6 = *MEMORY[0x1E695D900];
  v8[0] = *MEMORY[0x1E695D910];
  v8[1] = v6;
  v9[1] = [NSNumber numberWithBool:a4];
  v8[2] = *MEMORY[0x1E695D908];
  v9[2] = [NSValue valueWithRange:a2, a3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
}

unint64_t protocol witness for _LocaleProtocol.languageCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.languageCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t closure #1 in _LocaleICU.languageCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v8 = a2;
  v120 = *MEMORY[0x1E69E9840];
  v103 = a1;
  v10 = *(a1 + 448);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v101 = a5;
  v113 = 0;
  v107 = a3;
  v14 = String.utf8CString.getter();
  v15 = String.utf8CString.getter();
  DisplayLanguage = uloc_getDisplayLanguage();

  v108 = v5;
  v106 = v8;
  if (DisplayLanguage - 1 <= 0x100)
  {
    v17 = specialized String.init(_utf16:)(v119, DisplayLanguage);
    if (v18)
    {
      v14 = v17;
      v15 = v18;
LABEL_97:

LABEL_99:
      v69 = v107;

      v70 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v117[0] = *(v70 + 448);
      v8 = *&v117[0];
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v69);
      v73 = *(v8 + 16);
      v74 = (v72 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
LABEL_110:
        __break(1u);
      }

      else
      {
        LOBYTE(a4) = v72;
        if (*(v8 + 24) < v76)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, isUniquelyReferenced_nonNull_native);
          v77 = *&v117[0];
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v107);
          if ((a4 & 1) != (v78 & 1))
          {
            goto LABEL_133;
          }

          if (a4)
          {
            goto LABEL_103;
          }

LABEL_106:
          result = specialized _NativeDictionary._insert(at:key:value:)(v24, v106, v107, v14, v15, v77);
          goto LABEL_107;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v77 = v8;
          if ((v72 & 1) == 0)
          {
            goto LABEL_106;
          }

LABEL_103:
          v79 = v24;

          v80 = (*(v77 + 56) + 16 * v79);
          *v80 = v14;
          v80[1] = v15;

LABEL_107:
          *(v103 + 448) = v77;
          v81 = v101;
          *v101 = v14;
          v81[1] = v15;
          return result;
        }
      }

      v105 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
      v82 = static _DictionaryStorage.copy(original:)();
      v77 = v82;
      if (*(v8 + 16))
      {
        v83 = (v82 + 64);
        v84 = ((1 << *(v77 + 32)) + 63) >> 6;
        if (v77 != v8 || v83 >= v8 + 64 + 8 * v84)
        {
          memmove(v83, (v8 + 64), 8 * v84);
        }

        v104 = (v8 + 64);
        v85 = 0;
        *(v77 + 16) = *(v8 + 16);
        v86 = 1 << *(v8 + 32);
        v87 = *(v8 + 64);
        v88 = -1;
        if (v86 < 64)
        {
          v88 = ~(-1 << v86);
        }

        v89 = v88 & v87;
        v90 = (v86 + 63) >> 6;
        if ((v88 & v87) != 0)
        {
          do
          {
            v91 = __clz(__rbit64(v89));
            v89 &= v89 - 1;
LABEL_124:
            v94 = 16 * (v91 | (v85 << 6));
            v95 = (*(v8 + 48) + v94);
            v96 = *v95;
            v97 = v95[1];
            v98 = (*(v77 + 48) + v94);
            v99 = *(*(v8 + 56) + v94);
            *v98 = v96;
            v98[1] = v97;
            *(*(v77 + 56) + v94) = v99;
          }

          while (v89);
        }

        v92 = v85;
        while (1)
        {
          v85 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            __break(1u);
          }

          if (v85 >= v90)
          {
            break;
          }

          v93 = *(v104 + v85);
          ++v92;
          if (v93)
          {
            v91 = __clz(__rbit64(v93));
            v89 = (v93 - 1) & v93;
            goto LABEL_124;
          }
        }
      }

      v24 = v105;
      if ((a4 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_103;
    }
  }

  v19 = *(a4 + 136);
  v20 = *(a4 + 168);
  v117[6] = *(a4 + 152);
  *v118 = v20;
  *&v118[12] = *(a4 + 180);
  v21 = *(a4 + 72);
  v22 = *(a4 + 104);
  v117[2] = *(a4 + 88);
  v117[3] = v22;
  v117[4] = *(a4 + 120);
  v117[5] = v19;
  v117[0] = *(a4 + 56);
  v117[1] = v21;
  if (_s10Foundation17LocalePreferencesVSgWOg(v117) != 1)
  {
    v23 = *(&v117[0] + 1);
    if (*(&v117[0] + 1))
    {

      v25 = *(v23 + 2);
      if (!v25)
      {
LABEL_98:

        v14 = 0;
        v15 = 0;
        goto LABEL_99;
      }

      goto LABEL_51;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v26 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  v24 = swift_unknownObjectRelease();
  if (v26 && (v115 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), v24 = swift_dynamicCast(), (v24 & 1) != 0))
  {
    v27 = v109;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v105 = *(v27 + 16);
  if (!v105)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_50:

    v25 = *(v23 + 2);
    if (!v25)
    {
      goto LABEL_98;
    }

LABEL_51:
    v46 = 0;
    v105 = *MEMORY[0x1E695E4A8];
    v47 = v23 + 40;
    while (1)
    {
      if (v46 >= *(v23 + 2))
      {
        goto LABEL_109;
      }

      v48 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v105, v48);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_68;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v51 = CanonicalLanguageIdentifierFromString;
      v52 = v51;
      if (!isTaggedPointer)
      {
        goto LABEL_60;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v51);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v54 = v108;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v14 = v55;
            v108 = v54;

            goto LABEL_91;
          }

LABEL_60:
          LOBYTE(v109) = 0;
          v115 = 0;
          LOBYTE(v111) = 0;
          v112 = 0;
          IsCF = __CFStringIsCF();
          if (!IsCF)
          {
            v57 = v52;
            String.init(_nativeStorage:)();
            if (v58)
            {
              v14 = v58;

              goto LABEL_91;
            }

            v115 = [(__CFString *)v57 length];
            if (!v115)
            {

              goto LABEL_68;
            }

LABEL_88:
            String.init(_cocoaString:)();
LABEL_89:
            v14 = v61;
            goto LABEL_90;
          }

          if (!v115)
          {

LABEL_68:
            v14 = 0xE000000000000000;
            goto LABEL_91;
          }

          if (v112 == 1)
          {
            if (v109)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_89;
          }

          if ((v111 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v109 != 1)
          {
            IsCF = [(__CFString *)v52 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v62 = v108;
          v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v14 = v64;
          v108 = v62;
          v65 = HIBYTE(v64) & 0xF;
          if ((v64 & 0x2000000000000000) == 0)
          {
            v65 = v63 & 0xFFFFFFFFFFFFLL;
          }

          if (!v65)
          {

            goto LABEL_88;
          }

          goto LABEL_74;
        }

        v59 = [(__CFString *)v52 UTF8String];
        if (!v59)
        {
          goto LABEL_131;
        }

        String.init(utf8String:)(v59);
        if (!v60)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v111 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v60)
        {
          [(__CFString *)v52 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v14 = v110;
          goto LABEL_90;
        }
      }

      v14 = v60;
LABEL_74:

LABEL_90:
LABEL_91:
      LODWORD(v109) = 0;
      v8 = String.utf8CString.getter();
      LOBYTE(a4) = String.utf8CString.getter();

      v15 = uloc_getDisplayLanguage();

      if (v109 <= 0 && v109 != -127 && (v15 - 1) < 0x101)
      {
        v14 = &v101;
        MEMORY[0x1EEE9AC00](v24);
        v67 = v108;
        v24 = closure #1 in String.init(_utf16:)(&v101 - v66, v114, v68, &v115);
        v108 = v67;
        if (v67)
        {
          goto LABEL_132;
        }

        v15 = v116;
        if (v116)
        {
          v14 = v115;

          goto LABEL_97;
        }
      }

      ++v46;
      v47 += 16;
      if (v25 == v46)
      {
        goto LABEL_98;
      }
    }
  }

  v28 = 0;
  v104 = *MEMORY[0x1E695E4A8];
  v29 = v27 + 40;
  v23 = MEMORY[0x1E69E7CC0];
  v102 = v27;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v30 = String._bridgeToObjectiveCImpl()();

    v31 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v104, v30);
    swift_unknownObjectRelease();
    if (!v31)
    {

      goto LABEL_29;
    }

    v32 = _objc_isTaggedPointer(v31);
    v33 = v31;
    v34 = v33;
    if (v32)
    {
      break;
    }

LABEL_26:
    LOBYTE(v109) = 0;
    v115 = 0;
    LOBYTE(v111) = 0;
    v112 = 0;
    if (!__CFStringIsCF())
    {
      v37 = v34;
      v38 = String.init(_nativeStorage:)();
      if (v39)
      {
        v8 = v38;
        a4 = v39;

        goto LABEL_41;
      }

      v115 = [(__CFString *)v37 length];
      if (!v115)
      {

        v8 = 0;
        a4 = 0xE000000000000000;
        goto LABEL_41;
      }

      v27 = v102;
      v8 = String.init(_cocoaString:)();
      a4 = v43;
LABEL_42:

      goto LABEL_43;
    }

LABEL_29:
    v8 = 0;
    a4 = 0xE000000000000000;
LABEL_43:
    v24 = swift_isUniquelyReferenced_nonNull_native();
    if ((v24 & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      v23 = v24;
    }

    v14 = *(v23 + 2);
    v44 = *(v23 + 3);
    v15 = (v14 + 1);
    if (v14 >= v44 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v14 + 1, 1, v23);
      v23 = v24;
    }

    v28 = (v28 + 1);
    *(v23 + 2) = v15;
    v45 = v23 + 16 * v14;
    *(v45 + 4) = v8;
    *(v45 + 5) = a4;
    v29 += 16;
    if (v105 == v28)
    {
      goto LABEL_50;
    }
  }

  v35 = _objc_getTaggedPointerTag(v33);
  if (!v35)
  {
    v111 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v41 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v42)
    {
      [(__CFString *)v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v109;
      a4 = v110;
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (v35 != 22)
  {
    if (v35 == 2)
    {
      MEMORY[0x1EEE9AC00](v35);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      a4 = v36;

LABEL_41:
      v27 = v102;
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  v40 = [(__CFString *)v34 UTF8String];
  if (!v40)
  {
    goto LABEL_129;
  }

  v41 = String.init(utf8String:)(v40);
  if (v42)
  {
LABEL_36:
    v8 = v41;
    a4 = v42;

    goto LABEL_43;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  v100 = v108;
  swift_willThrow();

  __break(1u);
LABEL_133:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *copyFromStringToStorage(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = a3;
    v10 = result;
    do
    {
      v19 = 0;
      v20 = 0;
      ValueAtIndex = CFStorageGetValueAtIndex();
      v12 = v19 - a5 + v20;
      if (v12 >= v8)
      {
        v12 = v8;
      }

      v20 = v12;
      if (a6)
      {
        result = [v10 getCharacters:ValueAtIndex range:{a2, v12}];
        v13 = v20;
        v14 = v20;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v16 = 0;
        result = [v10 getBytes:ValueAtIndex maxLength:v12 usedLength:&v18 encoding:_NSCStringEncoding options:0 range:a2 remainingRange:{v12, &v16}];
        if ((result & 1) == 0)
        {
          v15 = [NSString stringWithFormat:@"Unable to convert bytes in string %p to _NSCStringEncoding", v10];
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v15 userInfo:0]);
        }

        v13 = v18;
        v14 = v20 - v17;
      }

      a2 += v14;
      a5 += v13;
      v8 -= v14;
    }

    while (v8);
  }

  return result;
}

id URLRequest.allowsCellularAccess.setter(char a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd, &_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMR);
    v7 = swift_allocObject();
    v8 = v6;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest, 0x1E695AC18);
    swift_dynamicCast();
    v6 = v10;
    *(v7 + 16) = v10;

    *v2 = v7;
  }

  return [v6 *a2];
}

void _doPatternNormalization(const __CFString *a1, UniChar **a2, unsigned __int8 *a3, int a4, CFStringRef *a5, CFStringCompareFlags a6, CFIndex *a7, size_t a8, CFStringNormalizationForm theForm)
{
  v10 = a7;
  v46 = a6;
  v13 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v16 = *a3;
  v17 = *a7;
  bzero(*a2, a8);
  v63.location = 0;
  v63.length = v17;
  CFStringGetCharacters(a1, v63, v15);
  v18 = v46;
  v15[v17] = 0;
  *a5 = CFStringCreateWithCharacters(0, v15, v17);
  if (a4)
  {
    [_NSPredicateOperatorUtilities copyRegexFindSafePattern:a1 toBuffer:v15];
    v17 = u_strlen(v15);
  }

  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E480], v15, v17, a8, *MEMORY[0x1E695E498]);
  if (v18)
  {
    if ((v18 & 0x100) != 0)
    {
      objc_opt_self();
      Length = CFStringGetLength(MutableWithExternalCharactersNoCopy);
      theString = MutableWithExternalCharactersNoCopy;
      v58 = 0;
      v59 = Length;
      CharactersPtr = CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy);
      v44 = v13;
      v43 = v10;
      if (CharactersPtr)
      {
        CStringPtr = 0;
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(MutableWithExternalCharactersNoCopy, 0x600u);
      }

      v60 = 0;
      v61 = 0;
      v57 = CStringPtr;
      if (Length >= 1)
      {
        v22 = 0;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v23 = -Length;
        v24 = Length + 64;
        v49 = 0u;
        v50 = 0u;
        v25 = Length;
        *buffer = 0u;
        v48 = 0u;
        do
        {
          v26 = v25;
          if (v25 >= 5)
          {
            v27 = 5;
          }

          else
          {
            v27 = v25;
          }

          --v25;
          v28 = v59;
          if (v59 >= v26)
          {
            if (CharactersPtr)
            {
              v29 = CharactersPtr[v58 - 1 + v26];
            }

            else if (v57)
            {
              v29 = v57[v58 - 1 + v26];
            }

            else
            {
              v30 = v61 >= v26 && v22 < v26;
              if (!v30)
              {
                v31 = v27 + v23;
                v32 = v24 - v27;
                v33 = v26 - v27;
                v34 = v33 + 64;
                if (v33 + 64 >= v59)
                {
                  v34 = v59;
                }

                v60 = v33;
                v61 = v34;
                if (v59 >= v32)
                {
                  v28 = v32;
                }

                v64.location = v33 + v58;
                v64.length = v28 + v31;
                CFStringGetCharacters(theString, v64, buffer);
                v22 = v60;
              }

              v29 = buffer[v26 - 1 - v22];
            }

            v35 = v29;
            v36 = v29 - 65284;
            v30 = v36 > 0x3A;
            v37 = (1 << v36) & 0x580000008000CF1;
            if (!v30 && v37 != 0 || (v35 - 65371) < 3)
            {
              CFStringInsert(MutableWithExternalCharactersNoCopy, v25, @"\"");
              theString = MutableWithExternalCharactersNoCopy;
              v58 = 0;
              v59 = Length;
              CharactersPtr = CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy);
              if (CharactersPtr)
              {
                v40 = 0;
              }

              else
              {
                v40 = CFStringGetCStringPtr(MutableWithExternalCharactersNoCopy, 0x600u);
              }

              v22 = 0;
              v57 = v40;
              v60 = 0;
              v61 = 0;
            }
          }

          ++v23;
          --v24;
        }

        while (v25 + 1 > 1);
      }

      v13 = v44;
      v10 = v43;
      v18 = v46;
    }

    CFStringFold(MutableWithExternalCharactersNoCopy, v18, 0);
  }

  CFStringNormalize(MutableWithExternalCharactersNoCopy, theForm);
  if (CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy) == v15)
  {
    v41 = CFStringGetLength(MutableWithExternalCharactersNoCopy);
  }

  else
  {
    if (v16)
    {
      free(v15);
    }

    v41 = CFStringGetLength(MutableWithExternalCharactersNoCopy);
    v42 = malloc_type_malloc(2 * v41 + 2, 0x1000040BDFB0063uLL);
    *a2 = v42;
    *v13 = 1;
    v65.location = 0;
    v65.length = v41;
    CFStringGetCharacters(MutableWithExternalCharactersNoCopy, v65, v42);
    v42[v41] = 0;
  }

  *v10 = v41;
  CFRelease(MutableWithExternalCharactersNoCopy);
}

void sub_18099A9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v16 = v14;
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    if (v16)
    {
      free(v13);
    }

    *v12 = 0;
    objc_exception_throw(v15);
  }

  _Unwind_Resume(exception_object);
}

void type metadata completion function for Duration.TimeFormatStyle.Pattern(uint64_t a1)
{
  type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Int?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall _NSLocalizedStringResourceSwiftWrapper.localize()()
{
  v1 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v2 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v22 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64);
  v23 = v2;
  v3 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v19[0] = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v19[1] = v3;
  v4 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v6 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v5 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v20 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32);
  v21 = v4;
  v7 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v17[4] = v22;
  v17[5] = v7;
  v17[0] = v6;
  v17[1] = v5;
  v24 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
  v18 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
  v17[2] = v20;
  v17[3] = v1;
  v12 = 0uLL;
  v13 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  outlined init with copy of LocalizedStringResource(v19, v11);
  v8 = String.init(localized:options:)(v17, &v12);
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id @objc _NSLocalizedStringResourceSwiftWrapper.description.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveCImpl()();

  return v5;
}

void String.LocalizationOptions.init(nsOptions:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 pluralizationNumber];
  v5 = v4;
  if (v4)
  {
    if ([v4 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v6 = [v5 integerValue];
      v7 = 0;
    }

    v2 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 17) = v5 == 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
}

uint64_t closure #1 in createTemporaryFile(at:inPath:prefix:options:variant:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, id a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v156 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v22 = @"NSCocoaErrorDomain";
    v23 = v22;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v22);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_117;
          }

          goto LABEL_17;
        }

        v36 = [(__CFString *)v23 UTF8String];
        if (!v36)
        {
          __break(1u);
LABEL_241:
          __break(1u);
          goto LABEL_242;
        }

        String.init(utf8String:)(v36);
        if (v37)
        {
          goto LABEL_18;
        }

        __break(1u);
      }

      v152 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v38)
      {
        goto LABEL_18;
      }

      [(__CFString *)v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_117;
    }

LABEL_17:
    LOBYTE(v150) = 0;
    v154 = 0;
    LOBYTE(v152) = 0;
    v153 = 0;
    if (__CFStringIsCF())
    {
LABEL_18:

      goto LABEL_117;
    }

    v30 = v23;
    String.init(_nativeStorage:)();
    if (!v31 && (v154 = [(__CFString *)v30 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_117:
    v67 = objc_allocWithZone(NSError);
    v68 = String._bridgeToObjectiveCImpl()();

    v60 = MEMORY[0x1E69E7CA0];
    v8 = _NativeDictionary.bridged()();
    a6 = [v67 initWithDomain:v68 code:514 userInfo:v8];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v69 = [a6 domain];
    if (!v69)
    {
LABEL_127:
      v74 = 0;
      a3 = 0xE000000000000000;
      goto LABEL_154;
    }

    v70 = v69;
    v71 = _objc_isTaggedPointer(v69);
    v72 = v70;
    v8 = v72;
    if ((v71 & 1) == 0)
    {
      goto LABEL_123;
    }

    v73 = _objc_getTaggedPointerTag(v72);
    if (v73)
    {
      if (v73 != 22)
      {
        if (v73 == 2)
        {
          MEMORY[0x1EEE9AC00](v73);
          v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          a3 = v75;

LABEL_154:
          v83 = v23;
          v84 = v83;
          if (!isTaggedPointer)
          {
            goto LABEL_159;
          }

          v85 = _objc_getTaggedPointerTag(v83);
          if (!v85)
          {
            goto LABEL_167;
          }

          if (v85 != 22)
          {
            if (v85 == 2)
            {
              v8 = &v146;
              MEMORY[0x1EEE9AC00](v85);
              v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              a2 = v87;

LABEL_173:
              if (v74 == v86 && a3 == a2)
              {
              }

              else
              {
                v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v94 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_178;
                }
              }

              return swift_willThrow();
            }

LABEL_159:
            LOBYTE(v150) = 0;
            v154 = 0;
            LOBYTE(v152) = 0;
            v153 = 0;
            if (__CFStringIsCF())
            {
            }

            else
            {
              v8 = v84;
              v88 = String.init(_nativeStorage:)();
              if (v89)
              {
                v86 = v88;
                a2 = v89;

                goto LABEL_173;
              }

              v154 = [(__CFString *)v8 length];
              if (v154)
              {
                v86 = String.init(_cocoaString:)();
                a2 = v93;
                goto LABEL_173;
              }
            }

            v86 = 0;
            a2 = 0xE000000000000000;
            goto LABEL_173;
          }

          v90 = [(__CFString *)v84 UTF8String];
          if (v90)
          {
            v91 = String.init(utf8String:)(v90);
            if (v92)
            {
LABEL_168:
              v86 = v91;
              a2 = v92;

              goto LABEL_173;
            }

            __break(1u);
LABEL_167:
            v152 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v92)
            {
              [(__CFString *)v84 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v86 = v150;
              a2 = v151;
              goto LABEL_173;
            }

            goto LABEL_168;
          }

          goto LABEL_241;
        }

LABEL_123:
        LOBYTE(v150) = 0;
        v154 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_127;
        }

        v76 = v8;
        v77 = String.init(_nativeStorage:)();
        if (v78)
        {
          v74 = v77;
          a3 = v78;

          goto LABEL_154;
        }

        v154 = [(__CFString *)v76 length];
        if (!v154)
        {

          goto LABEL_127;
        }

        v74 = String.init(_cocoaString:)();
        a3 = v82;
LABEL_153:

        goto LABEL_154;
      }

      v79 = [(__CFString *)v8 UTF8String];
      if (!v79)
      {
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

      v80 = String.init(utf8String:)(v79);
      if (v81)
      {
LABEL_132:
        v74 = v80;
        a3 = v81;

        goto LABEL_153;
      }

      __break(1u);
    }

    v152 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v80 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v81)
    {
      [(__CFString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v74 = v150;
      a3 = v151;
      goto LABEL_153;
    }

    goto LABEL_132;
  }

  if (mktemp(a1))
  {
    v17 = _NSOpenFileDescriptor_Protected(a1, 2562, a7, 438);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v17;
      result = String.init(cString:)();
      *a8 = v18;
      a8[1] = result;
      a8[2] = v20;
      return result;
    }

    result = MEMORY[0x1865CA7A0]();
    if (result == 17)
    {
      *a8 = 0;
      a8[1] = 0;
      a8[2] = 0;
      return result;
    }

    v32 = MEMORY[0x1865CA7A0]();
    v33 = v32;
    if (a4)
    {
      if (v32 > 27)
      {
        if (v32 <= 62)
        {
          if (v32 != 28)
          {
            if (v32 == 30)
            {
              v39 = 642;
              goto LABEL_182;
            }

            goto LABEL_181;
          }
        }

        else
        {
          if (v32 == 63)
          {
            v39 = 514;
            goto LABEL_182;
          }

          if (v32 != 69)
          {
            if (v32 == 102)
            {
              swift_unknownObjectRetain();
              v26 = 0;
              v27 = 512;
              goto LABEL_187;
            }

LABEL_181:
            v39 = 512;
LABEL_182:
            v147 = v39;
            v148 = a5;
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v95 = POSIXErrorCode.rawValue.getter();
              v96 = objc_allocWithZone(NSError);
              v97 = String._bridgeToObjectiveCImpl()();

              v26 = [v96 initWithDomain:v97 code:v95 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v98 = [v26 domain];
              v99 = static String._unconditionallyBridgeFromObjectiveC(_:)(v98);
              v101 = v100;

              if (v99 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v101 == v102)
              {

                v27 = v147;
                goto LABEL_187;
              }

              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v27 = v147;
              if (v103)
              {
LABEL_187:
                ObjectType = swift_getObjectType();
                (*(a3 + 240))(ObjectType, a3);
                v51 = String._bridgeToObjectiveCImpl()();

                v52 = (*(a3 + 432))(ObjectType, a3);
                outlined consume of PathOrURL(a2, a3, 1);
                if (v26)
                {
                  v154 = v26;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v105 = v26;
                  v106 = _getErrorEmbeddedNSError<A>(_:)();

                  if (v106)
                  {
                  }

                  else
                  {
                    swift_allocError();
                    *v107 = v105;
                  }

                  v55 = _swift_stdlib_bridgeErrorToNSError();
                }

                else
                {
                  v55 = 0;
                }

                if (!a6)
                {
                  v56 = 0;
                  goto LABEL_196;
                }

                goto LABEL_194;
              }

              goto LABEL_238;
            }

            goto LABEL_245;
          }
        }

        v39 = 640;
        goto LABEL_182;
      }

      if (v32 > 12)
      {
        if (v32 != 13)
        {
          if (v32 == 17)
          {
            v39 = 516;
            goto LABEL_182;
          }

          goto LABEL_181;
        }
      }

      else if (v32 != 1)
      {
        if (v32 == 2)
        {
          v39 = 4;
          goto LABEL_182;
        }

        goto LABEL_181;
      }

      v39 = 513;
      goto LABEL_182;
    }

    v149 = a6;
    if (v32 > 27)
    {
      if (v32 > 62)
      {
        if (v32 == 63)
        {
          v40 = 514;
          goto LABEL_199;
        }

        if (v32 != 69)
        {
          if (v32 == 102)
          {
            v26 = 0;
            v148 = 512;
            goto LABEL_205;
          }

          goto LABEL_198;
        }

        goto LABEL_151;
      }

      if (v32 == 28)
      {
LABEL_151:
        v40 = 640;
        goto LABEL_199;
      }

      if (v32 == 30)
      {
        v40 = 642;
        goto LABEL_199;
      }

LABEL_198:
      v40 = 512;
      goto LABEL_199;
    }

    if (v32 > 12)
    {
      if (v32 != 13)
      {
        if (v32 != 17)
        {
          goto LABEL_198;
        }

        v40 = 516;
        goto LABEL_199;
      }
    }

    else if (v32 != 1)
    {
      if (v32 != 2)
      {
        goto LABEL_198;
      }

      v40 = 4;
LABEL_199:
      v148 = v40;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
LABEL_245:
        _StringGuts.grow(_:)(22);

        v154 = 0xD000000000000014;
        v155 = 0x80000001814813E0;
        LODWORD(v150) = v33;
        goto LABEL_246;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v108 = POSIXErrorCode.rawValue.getter();
      v109 = objc_allocWithZone(NSError);
      v110 = String._bridgeToObjectiveCImpl()();

      v26 = [v109 initWithDomain:v110 code:v108 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v111 = [v26 domain];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)(v111);
      v114 = v113;

      if (v112 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v114 == v115)
      {
      }

      else
      {
        v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v116 & 1) == 0)
        {
          goto LABEL_239;
        }
      }

      a6 = v149;
LABEL_205:

      URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v154);
      outlined consume of PathOrURL(a2, a3, 0);
      v117 = v154;
      v118 = v155;
      v119 = String._bridgeToObjectiveCImpl()();
      if (v117)
      {
        v120 = swift_getObjectType();
        v121 = (*(v118 + 432))(v120, v118);
        swift_unknownObjectRelease();
      }

      else
      {
        v121 = 0;
      }

      if (v26)
      {
        v150 = v26;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v122 = v26;
        v123 = _getErrorEmbeddedNSError<A>(_:)();

        if (v123)
        {
        }

        else
        {
          swift_allocError();
          *v125 = v122;
        }

        v124 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v124 = 0;
      }

      if (a6)
      {
        v56 = String._bridgeToObjectiveCImpl()();
      }

      else
      {
        v56 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      goto LABEL_197;
    }

    v40 = 513;
    goto LABEL_199;
  }

  v25 = MEMORY[0x1865CA7A0]();
  LODWORD(v8) = v25;
  if ((a4 & 1) == 0)
  {
    if (v25 > 27)
    {
      if (v25 > 62)
      {
        if (v25 == 63)
        {
          v35 = 514;
          goto LABEL_100;
        }

        if (v25 != 69)
        {
          if (v25 == 102)
          {
            v28 = 0;
            v29 = 512;
            goto LABEL_224;
          }

          goto LABEL_99;
        }

        goto LABEL_72;
      }

      if (v25 == 28)
      {
LABEL_72:
        v35 = 640;
        goto LABEL_100;
      }

      if (v25 == 30)
      {
        v35 = 642;
        goto LABEL_100;
      }

LABEL_99:
      v35 = 512;
      goto LABEL_100;
    }

    if (v25 > 12)
    {
      if (v25 != 13)
      {
        if (v25 != 17)
        {
          goto LABEL_99;
        }

        v35 = 516;
        goto LABEL_100;
      }
    }

    else if (v25 != 1)
    {
      if (v25 != 2)
      {
        goto LABEL_99;
      }

      v35 = 4;
LABEL_100:
      v147 = v35;
      v148 = a5;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_244;
      }

      v8 = @"NSPOSIXErrorDomain";
      v58 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
      v59 = @"NSPOSIXErrorDomain";
      v60 = v59;
      if (!v58)
      {
LABEL_106:
        LOBYTE(v150) = 0;
        v154 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        if (!__CFStringIsCF())
        {
          v62 = v60;
          String.init(_nativeStorage:)();
          if (!v63 && (v154 = [(__CFString *)v62 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_220:
          v126 = POSIXErrorCode.rawValue.getter();
          v127 = objc_allocWithZone(NSError);
          v128 = String._bridgeToObjectiveCImpl()();

          v28 = [v127 initWithDomain:v128 code:v126 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v129 = [v28 domain];
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)(v129);
          v132 = v131;

          if (v130 == static String._unconditionallyBridgeFromObjectiveC(_:)(v8) && v132 == v133)
          {

            v29 = v147;
          }

          else
          {
            v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v29 = v147;
            if ((v134 & 1) == 0)
            {
              goto LABEL_237;
            }
          }

LABEL_224:

          URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v154);
          outlined consume of PathOrURL(a2, a3, 0);
          v135 = v154;
          v136 = v155;
          v137 = String._bridgeToObjectiveCImpl()();
          if (v135)
          {
            v138 = swift_getObjectType();
            v139 = (*(v136 + 432))(v138, v136);
            swift_unknownObjectRelease();
            if (v28)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v139 = 0;
            if (v28)
            {
LABEL_226:
              v150 = v28;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v140 = v28;
              v141 = _getErrorEmbeddedNSError<A>(_:)();

              if (v141)
              {
              }

              else
              {
                swift_allocError();
                *v144 = v140;
              }

              v142 = _swift_stdlib_bridgeErrorToNSError();
              if (a6)
              {
                goto LABEL_233;
              }

              goto LABEL_230;
            }
          }

          v142 = 0;
          if (a6)
          {
LABEL_233:
            v143 = String._bridgeToObjectiveCImpl()();
            goto LABEL_234;
          }

LABEL_230:
          v143 = 0;
LABEL_234:
          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
          swift_unknownObjectRelease();

          return swift_willThrow();
        }

LABEL_218:

        goto LABEL_220;
      }

      v61 = _objc_getTaggedPointerTag(v59);
      if (!v61)
      {
        goto LABEL_112;
      }

      if (v61 != 22)
      {
        if (v61 == 2)
        {
          MEMORY[0x1EEE9AC00](v61);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_220;
        }

        goto LABEL_106;
      }

      v64 = [(__CFString *)v60 UTF8String];
      if (v64)
      {
        String.init(utf8String:)(v64);
        if (v65)
        {
          goto LABEL_218;
        }

        __break(1u);
LABEL_112:
        v152 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v66)
        {
          goto LABEL_218;
        }

LABEL_178:
        [(__CFString *)v60 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_220;
      }

LABEL_243:
      __break(1u);
      goto LABEL_244;
    }

    v35 = 513;
    goto LABEL_100;
  }

  v149 = a6;
  if (v25 <= 27)
  {
    if (v25 > 12)
    {
      if (v25 != 13)
      {
        if (v25 == 17)
        {
          v34 = 516;
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    else if (v25 != 1)
    {
      if (v25 == 2)
      {
        v34 = 4;
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v34 = 513;
    goto LABEL_85;
  }

  if (v25 <= 62)
  {
    if (v25 != 28)
    {
      if (v25 == 30)
      {
        v34 = 642;
        goto LABEL_85;
      }

      goto LABEL_84;
    }

LABEL_71:
    v34 = 640;
    goto LABEL_85;
  }

  switch(v25)
  {
    case '?':
      v34 = 514;
      goto LABEL_85;
    case 'E':
      goto LABEL_71;
    case 'f':
      swift_unknownObjectRetain();
      v26 = 0;
      v27 = 512;
      goto LABEL_91;
  }

LABEL_84:
  v34 = 512;
LABEL_85:
  v148 = v34;
  swift_unknownObjectRetain();
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    v41 = POSIXErrorCode.rawValue.getter();
    v42 = objc_allocWithZone(NSError);
    v43 = String._bridgeToObjectiveCImpl()();

    v26 = [v42 initWithDomain:v43 code:v41 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v44 = [v26 domain];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)(v44);
    v47 = v46;

    if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v47 == v48)
    {

      v27 = v148;
      a6 = v149;
      goto LABEL_91;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v148;
    if (v49)
    {
      a6 = v149;
LABEL_91:
      v50 = swift_getObjectType();
      (*(a3 + 240))(v50, a3);
      v51 = String._bridgeToObjectiveCImpl()();

      v52 = (*(a3 + 432))(v50, a3);
      outlined consume of PathOrURL(a2, a3, 1);
      if (v26)
      {
        v154 = v26;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v53 = v26;
        v54 = _getErrorEmbeddedNSError<A>(_:)();

        if (v54)
        {
        }

        else
        {
          swift_allocError();
          *v57 = v53;
        }

        v55 = _swift_stdlib_bridgeErrorToNSError();
        if (a6)
        {
          goto LABEL_194;
        }
      }

      else
      {
        v55 = 0;
        if (a6)
        {
LABEL_194:
          v56 = String._bridgeToObjectiveCImpl()();
          goto LABEL_196;
        }
      }

      v56 = 0;
LABEL_196:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

LABEL_197:
      return swift_willThrow();
    }

    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
  }

LABEL_244:
  _StringGuts.grow(_:)(22);

  v154 = 0xD000000000000014;
  v155 = 0x80000001814813E0;
  LODWORD(v150) = v8;
LABEL_246:
  v145 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v145);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id _NSLocalizedStringResourceSwiftWrapper.init(key:defaultValue:table:locale:bundleURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v24 = *a7;
  v19 = *a8;
  v20 = a8[1];
  v21 = swift_getObjectType();
  if ((*(v20 + 144))(v21, v20))
  {
    if (!a4)
    {

      a3 = a1;
      a4 = a2;
    }

    v22 = &v9[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
    *v22 = a1;
    *(v22 + 1) = a2;
    *(v22 + 2) = MEMORY[0x1E69E7CC0];
    *(v22 + 3) = a3;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    *(v22 + 6) = a6;
    *(v22 + 56) = v24;
    *(v22 + 9) = v19;
    *(v22 + 10) = v20;
    *(v22 + 11) = 0;
    *(v22 + 12) = 0;
    v25.receiver = v9;
    v25.super_class = ObjectType;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void _ss45_conditionallyBridgeFromObjectiveC_bridgeableyxSg01_D5CTypeQz_xmts01_D11CBridgeableRzlFSb_Tt1g5(uint64_t a1)
{
  if (!*MEMORY[0x1E695E4D0])
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*MEMORY[0x1E695E4D0] != a1)
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v2 = [objc_allocWithZone(NSNumber) initWithInteger_];
    v3 = static NSObject.== infix(_:_:)();

    if ((v3 & 1) == 0)
    {
      if (*MEMORY[0x1E695E4C0])
      {
        if (*MEMORY[0x1E695E4C0] != a1)
        {
          v4 = [objc_allocWithZone(NSNumber) initWithInteger_];
          static NSObject.== infix(_:_:)();
        }

        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v21 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 3 * v11;
  if ((v11 * 3) >> 64 == (3 * v11) >> 63)
  {
    if (v12 < -1)
    {
      __break(1u);
    }

    v5 = v12 + 1;

    if (v12 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v17 = swift_slowAlloc();

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v17, v5, a1, a2, a3, a4, &v20);
    MEMORY[0x1865D2690](v17, -1, -1);

    if (!v6)
    {
      return v20;
    }

    return a3;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v18 - v14;
  if (String._fileSystemRepresentation(into:)(&v18 - v14, v5, a1, a2))
  {
    closure #1 in String._resolvingSymlinksInPath()(v15, a3, a4, &v19);
    if (v6)
    {
      swift_willThrow();

      return a3;
    }

    a3 = v19;
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

{
  v4 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a3, a4);

  return v4;
}

{
  v6 = v4;
  v18[2] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 3 * v11;
  if ((v11 * 3) >> 64 != (3 * v11) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < -1)
  {
    __break(1u);
    return v18[0];
  }

  v5 = v12 + 1;

  if (v12 >= 1024)
  {
LABEL_15:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v16 = swift_slowAlloc();

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v16, v5, a1, a2, a3, a4, v18);
    MEMORY[0x1865D2690](v16, -1, -1);

    if (v6)
    {
      return a3;
    }

    return v18[0];
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  if (String._fileSystemRepresentation(into:)(&v18[-1] - v14, v5, a1, a2))
  {
    a3 = String.init(cString:)();
  }

  else
  {
  }

  return a3;
}

char *closure #1 in String._resolvingSymlinksInPath()@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v7 = result;
  v12[0] = a2;
  v12[1] = a3;

  if (static URL.isAbsolute(standardizing:pathStyle:)(v12, 0))
  {
    v8 = static String._resolvingSymlinksInPathUsingFullPathAttribute(_:)(v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;

      *a4 = v10;
      a4[1] = v11;
      return result;
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    closure #1 in closure #1 in String._resolvingSymlinksInPath()(&v13, __dst, v7, 0x402uLL);
    if (!v4)
    {

      *a4 = v13;
      return result;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v5 = swift_slowAlloc();
    closure #1 in closure #1 in String._resolvingSymlinksInPath()(a4, v5, v7, 0x402uLL);
    if (!v4)
    {

      return MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  result = MEMORY[0x1865D2690](v5, -1, -1);
  __break(1u);
  return result;
}

uint64_t static String._resolvingSymlinksInPathUsingFullPathAttribute(_:)(const char *a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = 0x800000000000005;
  v6[1] = 0;
  v6[2] = 0;
  bzero(v4, 0x40CuLL);
  v2 = getattrlist(a1, v6, v4, 0x40CuLL, 0);
  result = 0;
  if (!v2)
  {
    if (v5)
    {
      return String.init(cString:)();
    }
  }

  return result;
}

uint64_t @objc _NSSwiftCalendar.isDateInToday(_:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *))
{
  v6 = a1;
  [a3 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = *&v6[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v9 + 32));
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 32));
  v13 = v11;
  v12 = v8;
  LOBYTE(a4) = a4(&v12);

  swift_unknownObjectRelease();
  return a4 & 1;
}

NSComparisonResult __swiftcall _NSSwiftCalendar.compare(_:to:toUnitGranularity:)(Foundation::Date _, Foundation::Date to, NSCalendarUnit toUnitGranularity)
{
  v5 = *toUnitGranularity;
  _fromNSCalendarUnit(_:)(v3, &v12);
  if (v12 == 19)
  {
    return 0;
  }

  v7 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v7 + 32));
  *&_a[0]._time = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  v12 = *&_a[0]._time;
  v11 = v5;
  v9 = Calendar.compare(_:to:toGranularity:)(_a[0], v8, &v11);
  swift_unknownObjectRelease();
  return v9;
}

Swift::Void __swiftcall _NSLocalizedStringResourceSwiftWrapper.encode(with:)(NSCoder with)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(objc_class *)with.super.isa allowsKeyedCoding])
  {
    type metadata accessor for PropertyListEncoder();
    inited = swift_initStackObject();
    v4 = MEMORY[0x1E69E7CC8];
    inited[2] = 200;
    inited[3] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    inited[4] = v5;
    v7 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
    v25[4] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64);
    v25[5] = v7;
    v26 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
    v8 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
    v25[2] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32);
    v25[3] = v8;
    v9 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
    v25[0] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
    v25[1] = v9;

    outlined init with copy of LocalizedStringResource(v25, &v19);
    os_unfair_lock_lock(v6);

    v10 = inited[4];

    os_unfair_lock_unlock(v10 + 4);

    v11 = specialized PropertyListEncoder._encodeBPlist<A>(_:)(v25);
    v13 = v12;
    outlined destroy of LocalizedStringResource(v25);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_10;
      }

      v16 = *(v11 + 16);
      v17 = *(v11 + 24);
    }

    else
    {
      if (!v14)
      {
        v19 = v11;
        v20 = v13;
        v21 = BYTE2(v13);
        v22 = BYTE3(v13);
        v23 = BYTE4(v13);
        v24 = BYTE5(v13);
        v15 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v19 length:BYTE6(v13)];
LABEL_10:
        v18 = v15;
        [(objc_class *)with.super.isa encodeObject:v15 forKey:String._bridgeToObjectiveCImpl()()];
        outlined consume of Data._Representation(v11, v13);

        swift_unknownObjectRelease();
        return;
      }

      v16 = v11;
      v17 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
        __break(1u);
      }
    }

    v15 = __DataStorage.bridgedReference(_:)(v16, v17);
    goto LABEL_10;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized PropertyListEncoder._encodeBPlist<A>(_:)(uint64_t a1)
{
  v4 = specialized PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:)(a1);
  if (!v2)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 40);
    if ((v6 & 0xF0) == 0x90 && (v6 == 144 ? (v7 = (*(v4 + 24) | *(v4 + 32) | v5) == 0) : (v7 = 0), v7 || (v6 == 144 ? (v8 = v5 == 1) : (v8 = 0), v8 ? (v9 = *(v4 + 24) == 0) : (v9 = 0), v9)))
    {
      v1 = v4;
      v11 = type metadata accessor for EncodingError();
      swift_allocError();
      v13 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
      v13[3] = &type metadata for LocalizedStringResource;
      v20 = swift_allocObject();
      *v13 = v20;
      v21 = *(a1 + 16);
      *(v20 + 16) = *a1;
      *(v20 + 32) = v21;
      v22 = *(a1 + 48);
      *(v20 + 48) = *(a1 + 32);
      *(v20 + 64) = v22;
      v23 = *(a1 + 80);
      *(v20 + 80) = *(a1 + 64);
      *(v20 + 96) = v23;
      *(v20 + 112) = *(a1 + 96);
      v43 = 0;
      v44 = 0xE000000000000000;
      outlined init with copy of LocalizedStringResource(a1, &v38);
      _StringGuts.grow(_:)(55);
      v38 = v43;
      v39 = v44;
      MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
      MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
      v24 = "er property list fragment.";
      v25 = 0xD00000000000002BLL;
    }

    else
    {
      v10 = v6 >> 4;
      if ((v6 >> 4) - 1 >= 4)
      {
        if (v10 && (v10 != 9 || v6 != 144 || v5 != 2 || *(v4 + 24) != 0))
        {
          v1 = v4;
          if ((v6 & 0xF0) != 0x70)
          {
            v37 = swift_slowAlloc();
            v38 = MEMORY[0x1E69E7CC0];
            LOBYTE(v39) = 0;
            v40 = v37;
            v41 = 0x2000;
            v42 = 0;
            v1 = _BPlistEncodingFormat.Writer.serializePlist(_:)(v1);

            outlined consume of Data._Representation(0, 0xC000000000000000);

            return v1;
          }

          v11 = type metadata accessor for EncodingError();
          swift_allocError();
          v13 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
          v13[3] = &type metadata for LocalizedStringResource;
          v33 = swift_allocObject();
          *v13 = v33;
          v34 = *(a1 + 16);
          *(v33 + 16) = *a1;
          *(v33 + 32) = v34;
          v35 = *(a1 + 48);
          *(v33 + 48) = *(a1 + 32);
          *(v33 + 64) = v35;
          v36 = *(a1 + 80);
          *(v33 + 80) = *(a1 + 64);
          *(v33 + 96) = v36;
          *(v33 + 112) = *(a1 + 96);
          v43 = 0;
          v44 = 0xE000000000000000;
          outlined init with copy of LocalizedStringResource(a1, &v38);
          _StringGuts.grow(_:)(52);
          v38 = v43;
          v39 = v44;
          MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
          MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
          v24 = "list version=1.0>\n";
          v25 = 0xD000000000000028;
          goto LABEL_24;
        }

        v1 = v4;
        v11 = type metadata accessor for EncodingError();
        swift_allocError();
        v13 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
        v13[3] = &type metadata for LocalizedStringResource;
        v27 = swift_allocObject();
        *v13 = v27;
        v28 = *(a1 + 16);
        *(v27 + 16) = *a1;
        *(v27 + 32) = v28;
        v29 = *(a1 + 48);
        *(v27 + 48) = *(a1 + 32);
        *(v27 + 64) = v29;
        v30 = *(a1 + 80);
        *(v27 + 80) = *(a1 + 64);
        *(v27 + 96) = v30;
        *(v27 + 112) = *(a1 + 96);
        v43 = 0;
        v44 = 0xE000000000000000;
        outlined init with copy of LocalizedStringResource(a1, &v38);
        _StringGuts.grow(_:)(54);
        v38 = v43;
        v39 = v44;
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
        v18 = " encoded as string property list fragment.";
      }

      else
      {
        v1 = v4;
        v11 = type metadata accessor for EncodingError();
        swift_allocError();
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
        v13[3] = &type metadata for LocalizedStringResource;
        v14 = swift_allocObject();
        *v13 = v14;
        v15 = *(a1 + 16);
        *(v14 + 16) = *a1;
        *(v14 + 32) = v15;
        v16 = *(a1 + 48);
        *(v14 + 48) = *(a1 + 32);
        *(v14 + 64) = v16;
        v17 = *(a1 + 80);
        *(v14 + 80) = *(a1 + 64);
        *(v14 + 96) = v17;
        *(v14 + 112) = *(a1 + 96);
        v43 = 0;
        v44 = 0xE000000000000000;
        outlined init with copy of LocalizedStringResource(a1, &v38);
        _StringGuts.grow(_:)(54);
        v38 = v43;
        v39 = v44;
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
        v18 = " encoded as number property list fragment.";
      }

      v24 = (v18 - 32);
      v25 = 0xD00000000000002ALL;
    }

LABEL_24:
    MEMORY[0x1865CB0E0](v25, v24 | 0x8000000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_18099E63C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t specialized PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for __PlistEncoderBPlist();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *(v6 + 16) = v7;
  *(v6 + 40) = xmmword_181248570;
  specialized _BPlistEncodingFormat.init()(v26);
  v8 = v26[1];
  *(v6 + 56) = v26[0];
  *(v6 + 72) = v8;
  *(v6 + 88) = v27;
  v9 = *(a1 + 80);
  v24[4] = *(a1 + 64);
  v24[5] = v9;
  v25 = *(a1 + 96);
  v10 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v10;
  v11 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v11;
  v23[2] = v24;

  v12 = specialized __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(partial apply for specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:), v23, 0x8000000000000000, 0, 0, 0, 255);
  if (v2)
  {
  }

  if (!v12)
  {
    v15 = type metadata accessor for EncodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
    v17[3] = &type metadata for LocalizedStringResource;
    v18 = swift_allocObject();
    *v17 = v18;
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    v20 = *(a1 + 48);
    *(v18 + 48) = *(a1 + 32);
    *(v18 + 64) = v20;
    v21 = *(a1 + 64);
    v22 = *(a1 + 80);
    *(v18 + 112) = *(a1 + 96);
    *(v18 + 80) = v21;
    *(v18 + 96) = v22;
    outlined init with copy of LocalizedStringResource(a1, v24);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
    swift_willThrow();
  }

  v14 = v12;

  return v14;
}

void specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v80 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation23LocalizedStringResourceV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation23LocalizedStringResourceV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  isa = v5[-1].isa;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v79 = &v74 - v8;
  if ((*(*a1 + 240))(v7))
  {
    v9 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v11 = v10;
    *&v78 = v2;
    v12 = v5;
    v13 = isa;
    v15 = v14;
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    *(v16 + 24) = v11;
    *(v16 + 32) = v15;
    isa = v13;
    v5 = v12;
    v3 = v78;
    *(v16 + 40) = 96;
    *(v16 + 48) = -1;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v17 = v79;
    goto LABEL_5;
  }

  v18 = specialized BidirectionalCollection.last.getter(a1[2]);
  if (v18)
  {
    v16 = v18;
    v17 = v79;
    if ((*(v18 + 40) & 0xF0) == 0x60)
    {
LABEL_5:
      v19 = a1[5];
      *&v90[0] = a1;
      *(&v90[0] + 1) = v16;
      *&v90[1] = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation34_PlistKeyedEncodingContainerBPlist33_BB206CA0B38724D56C5B55865D7B7E02LLVyAA23LocalizedStringResourceV10CodingKeys019_6BD3BCCACE0AF34AB8M12E61AF16B4164LLOGMd, &_s10Foundation34_PlistKeyedEncodingContainerBPlist33_BB206CA0B38724D56C5B55865D7B7E02LLVyAA23LocalizedStringResourceV10CodingKeys019_6BD3BCCACE0AF34AB8M12E61AF16B4164LLOGMR);
      lazy protocol witness table accessor for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>();
      KeyedEncodingContainer.init<A>(_:)();
      v20 = v80;
      LOBYTE(v90[0]) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v3)
      {
        (*(isa + 8))(v17, v5);
        return;
      }

      v87 = *&v20[2].isa;
      v88 = v20[4].isa;
      v90[0] = *&v20[2].isa;
      *&v90[1] = v20[4];
      LOBYTE(v83) = 1;
      outlined init with copy of String.LocalizationValue(&v87, v89);
      lazy protocol witness table accessor for type String.LocalizationValue and conformance String.LocalizationValue();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v84 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v77 = isa;
      v86 = *&v20[7].isa;
      v89[0] = *&v20[7].isa;
      outlined init with copy of Locale(&v86, &v83);
      Locale.Components.init(locale:)(v89, v90);
      memcpy(v89, v90, sizeof(v89));
      v21 = Locale.Components.icuIdentifier.getter();
      v23 = v22;
      if (one-time initialization token for cache != -1)
      {
        v68 = v21;
        swift_once();
        v21 = v68;
      }

      v24 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v21);
      *(&v74 - 2) = v25;
      *(&v74 - 1) = v23;
      os_unfair_lock_lock((v24 + 48));
      partial apply for closure #1 in LocaleCache.fixed(_:)((v24 + 16), &v83);
      os_unfair_lock_unlock((v24 + 48));
      v78 = v83;

      v89[0] = v78;
      LOBYTE(v83) = 3;
      lazy protocol witness table accessor for type Locale and conformance Locale();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = v80;
      v85 = *&v80[9].isa;
      v89[0] = *&v80[9].isa;
      LOBYTE(v81) = 4;
      outlined init with copy of URL(&v85, &v83);
      lazy protocol witness table accessor for type URL and conformance URL();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = v77;
      swift_unknownObjectRelease();
      if (v26[12].isa)
      {
        LOBYTE(v89[0]) = 5;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v27 + 8))(v17, v5);
        swift_unknownObjectRelease();
        outlined destroy of Locale.Components(v90);
        return;
      }

      v76 = *MEMORY[0x1E69E9BA8];
      v28 = *(&v85 + 1);
      ObjectType = swift_getObjectType();
      v74 = *(v28 + 240);
      v75 = ObjectType;
      v74(ObjectType, v28);
      String.utf8CString.getter();

      v30 = sandbox_extension_issue_file();

      if (v30)
      {
        v80 = v5;
        MEMORY[0x1865CAEB0](v30);
        if (v31)
        {
LABEL_14:
          isa = v30;
LABEL_15:
          v32 = v77;
          LOBYTE(v89[0]) = 5;
          v33 = v79;
          v34 = v80;
          KeyedEncodingContainer.encode(_:forKey:)();

          MEMORY[0x1865D2690](isa, -1, -1);
          outlined destroy of Locale.Components(v90);
          swift_unknownObjectRelease();
          (*(v32 + 8))(v33, v34);
          return;
        }

        v49 = [objc_allocWithZone(NSString) initWithCString:v30 encoding:4];
        if (v49)
        {
          v50 = v49;
          isTaggedPointer = _objc_isTaggedPointer(v49);
          v52 = v50;
          v53 = v52;
          if (!isTaggedPointer)
          {
            goto LABEL_27;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v52);
          if (!TaggedPointerTag)
          {
            goto LABEL_40;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              *(&v74 - 2) = v53;
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_14;
            }

LABEL_27:
            LOBYTE(v83) = 0;
            *&v89[0] = 0;
            LOBYTE(v81) = 0;
            v82 = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              v58 = *&v89[0];
              if (!*&v89[0])
              {
                isa = v30;

                goto LABEL_15;
              }

              isa = v30;
              if (v82 == 1)
              {
                if (v83)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_57;
              }

              if (v81)
              {
                if (v83 == 1)
                {
                  MEMORY[0x1EEE9AC00](IsCF);
                  *(&v74 - 4) = v53;
                  *(&v74 - 3) = v89;
                  *(&v74 - 4) = 1536;
                  *(&v74 - 1) = v58;
                }

                else
                {
                  v69 = [v53 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v69);
                  *(&v74 - 4) = v53;
                  *(&v74 - 3) = v89;
                  *(&v74 - 4) = 134217984;
                  *(&v74 - 1) = v70;
                }

                v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v73 = HIBYTE(v72) & 0xF;
                if ((v72 & 0x2000000000000000) == 0)
                {
                  v73 = v71 & 0xFFFFFFFFFFFFLL;
                }

                if (v73)
                {

                  goto LABEL_57;
                }
              }
            }

            else
            {
              isa = v30;
              v63 = v53;
              String.init(_nativeStorage:)();
              if (v64 || (*&v89[0] = [v63 length]) == 0)
              {

                goto LABEL_15;
              }
            }

            String.init(_cocoaString:)();
            goto LABEL_57;
          }

          isa = v30;
          v65 = [v53 UTF8String];
          if (v65)
          {
            String.init(utf8String:)(v65);
            if (v66)
            {
              goto LABEL_41;
            }

            __break(1u);
LABEL_40:
            isa = v30;
            v81 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v67)
            {
              [v53 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
LABEL_57:

              goto LABEL_15;
            }

LABEL_41:

            goto LABEL_15;
          }

          goto LABEL_60;
        }

        v59 = type metadata accessor for EncodingError();
        swift_allocError();
        v61 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
        v61[3] = MEMORY[0x1E69E6158];
        *v61 = 0;
        v61[1] = 0xE000000000000000;
        v62 = v79;
        v5 = v80;
        KeyedEncodingContainer.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6B30], v59);
        swift_willThrow();
        MEMORY[0x1865D2690](v30, -1, -1);
        outlined destroy of Locale.Components(v90);
        swift_unknownObjectRelease();
        v55 = *(v77 + 8);
        v56 = v62;
      }

      else
      {
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, localizedStringLogger);
        v36 = v80;
        outlined init with copy of LocalizedStringResource(v80, v89);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        outlined destroy of LocalizedStringResource(v36);
        LODWORD(v76) = v38;
        v80 = v37;
        v39 = os_log_type_enabled(v37, v38);
        v40 = v75;
        if (v39)
        {
          v41 = v5;
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v89[0] = v43;
          *v42 = 136315394;
          v44 = (v74)(v40, v28);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v89);

          *(v42 + 4) = v46;
          *(v42 + 12) = 1026;
          *(v42 + 14) = MEMORY[0x1865CA7A0](v47);
          v48 = v80;
          _os_log_impl(&dword_18075C000, v80, v76, "Unable to issue sandbox extension for path '%s' (errno: %{public}d)", v42, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1865D2690](v43, -1, -1);
          MEMORY[0x1865D2690](v42, -1, -1);
          outlined destroy of Locale.Components(v90);

          swift_unknownObjectRelease();
          (*(v77 + 8))(v79, v41);
          return;
        }

        outlined destroy of Locale.Components(v90);

        swift_unknownObjectRelease();
        v55 = *(v77 + 8);
        v56 = v79;
      }

      v55(v56, v5);
      return;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  os_unfair_lock_unlock((isa + 48));
  __break(1u);
}

__n128 partial apply for specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 80);
  v7[4] = *(v2 + 64);
  v7[5] = v3;
  v8 = *(v2 + 96);
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v5 = *(v2 + 48);
  v7[2] = *(v2 + 32);
  v7[3] = v5;
  specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(a1, v7);
  return result;
}

unint64_t lazy protocol witness table accessor for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>()
{
  result = lazy protocol witness table cache variable for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>;
  if (!lazy protocol witness table cache variable for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation34_PlistKeyedEncodingContainerBPlist33_BB206CA0B38724D56C5B55865D7B7E02LLVyAA23LocalizedStringResourceV10CodingKeys019_6BD3BCCACE0AF34AB8M12E61AF16B4164LLOGMd, &_s10Foundation34_PlistKeyedEncodingContainerBPlist33_BB206CA0B38724D56C5B55865D7B7E02LLVyAA23LocalizedStringResourceV10CodingKeys019_6BD3BCCACE0AF34AB8M12E61AF16B4164LLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>);
  }

  return result;
}

uint64_t String.LocalizationValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *v1;
  v27 = v1[1];
  v10 = v1[2];
  v25 = v9;
  v26 = v10;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v33 = static LocaleCache.cache;
  v34 = qword_1ED4404B0;
  v11 = LocaleCache._currentAndCache.getter();
  v30 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33) = 0;
  v13 = v28;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v8;
  if (v13)
  {
    swift_unknownObjectRelease();
    return (*(v29 + 8))(v8, v6);
  }

  else
  {
    v16 = *(v25 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v26 = 0;
      v27 = v14;
      v28 = v6;
      v35 = MEMORY[0x1E69E7CC0];
      v18 = v25;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v35;
      v19 = v18 + 32;
      v20 = v24;
      do
      {
        outlined init with copy of String.LocalizationValue.FormatArgument(v19, &v33);
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(&v33, v32);
        v31[0] = v11;
        v31[1] = v30;
        swift_unknownObjectRetain();
        String.LocalizationValue.FormatArgument.CodableStorage.init(_:fallbackLocale:)(v32, v31, v5);
        outlined destroy of String.LocalizationValue.FormatArgument(&v33);
        v35 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v20 = v24;
          v17 = v35;
        }

        *(v17 + 16) = v22 + 1;
        outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(v5, v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v22, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
        v19 += 112;
        --v16;
      }

      while (v16);
      v14 = v27;
      v6 = v28;
    }

    *&v33 = v17;
    v32[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMd, &_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMR);
    lazy protocol witness table accessor for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A](&lazy protocol witness table cache variable for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A], &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.CodableStorage, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v14, v6);
  }
}

void type metadata completion function for Duration.TimeFormatStyle.Pattern.Fields(uint64_t a1)
{
  type metadata accessor for (roundSeconds: FloatingPointRoundingRule)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (fractionalSecondsLength: Int, roundFractionalSeconds: FloatingPointRoundingRule)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *URL.standardizedFileURL.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 400))(v8, ObjectType, v3);
  v7 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v7 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
  return result;
}

NSNumber __swiftcall UInt._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedInteger_];
}

uint64_t URLComponents.percentEncodedQuery.getter()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v2 = 0;
  }

  if (!v1 && (*(v0 + 15) & 1) != 0)
  {
    if (*v0 && (*(*v0 + 192) & 1) == 0)
    {
      v3 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v3);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t URLQueryItem.name.getter()
{
  v1 = *v0;

  return v1;
}

Foundation::Date __swiftcall Date.init(timeInterval:since:)(Swift::Double timeInterval, Foundation::Date since)
{
  result._time = *v2 + timeInterval;
  *v3 = result._time;
  return result;
}

uint64_t NSData.subscript.getter(uint64_t a1)
{
  v11 = 0;
  v10 = a1;
  v3 = swift_allocObject();
  v3[2] = &v10;
  v3[3] = a1;
  v3[4] = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = _sSo6NSDataC10FoundationEys5UInt8VSicigySV_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA_0;
  *(v4 + 24) = v3;
  v9[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v9[3] = &block_descriptor_13_1;
  v5 = _Block_copy(v9);

  [v1 enumerateByteRangesUsingBlock_];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;

    return v8;
  }

  return result;
}

uint64_t _sSo6NSDataC10FoundationEys5UInt8VSicigySV_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA_0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4[2];
  v6 = *v5 - a2;
  if (__OFSUB__(*v5, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v4[3];
  v7 = v4[4];
  *v5 = v6;
  if (v8 < a2)
  {
    return result;
  }

  if (__OFSUB__(v8, a2))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v8 - a2 < a3)
  {
    *v7 = *(result + v6);
    *a4 = 1;
  }

  return result;
}

NSNumber __swiftcall Int32._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInt_];
}

ssize_t specialized NSFileHandle.write<A>(contentsOf:)(uint64_t a1, int64_t a2)
{
  v4 = v3;
  v5 = v2;
  v104[9] = *MEMORY[0x1E69E9840];
  if ((_NSFileHandleIsClosed(v2) & 1) == 0)
  {
    result = _NSFileHandleCanPerformWritingInSwiftOverlay(v2);
    v15 = a2 >> 62;
    if (result)
    {
      result = [v5 fileDescriptor];
      if ((result & 0x80000000) == 0)
      {
        v16 = [v5 fileDescriptor];
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v46 = *(a1 + 16);
            v47 = *(a1 + 24);
            v48 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            if (v48)
            {
              v49 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v24 = __OFSUB__(v46, v49);
              v50 = v46 - v49;
              if (v24)
              {
LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              v18 = (v50 + v48);
            }

            else
            {
              v18 = 0;
            }

            v24 = __OFSUB__(v47, v46);
            v59 = v47 - v46;
            if (v24)
            {
LABEL_128:
              __break(1u);
              goto LABEL_129;
            }

            v60 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            if (v60 >= v59)
            {
              v60 = v59;
            }

            v61 = v18 + v60;
            if (v18)
            {
              v17 = v61;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            *(&v100 + 6) = 0;
            *&v100 = 0;
            v18 = &v100;
            v17 = &v100;
          }
        }

        else if (v15)
        {
          v53 = (a1 >> 32) - a1;
          if (a1 >> 32 < a1)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v54 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v54)
          {
            goto LABEL_71;
          }

          v55 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v56 = a1 - v55;
          if (__OFSUB__(a1, v55))
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v53)
          {
            v53 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          v18 = (v56 + v54);
          if (v56 + v54)
          {
            v17 = v18 + v53;
          }

          else
          {
LABEL_71:
            v18 = 0;
            v17 = 0;
          }
        }

        else
        {
          *&v100 = a1;
          WORD4(v100) = a2;
          BYTE10(v100) = BYTE2(a2);
          BYTE11(v100) = BYTE3(a2);
          BYTE12(v100) = BYTE4(a2);
          BYTE13(v100) = BYTE5(a2);
          v17 = &v100 + BYTE6(a2);
          v18 = &v100;
        }

        return closure #1 in writeSingleRegion #1 <A><A1>(_:) in NSFileHandle.write<A>(contentsOf:)(v18, v17, v16);
      }
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        *&v100 = a1;
        WORD4(v100) = a2;
        BYTE10(v100) = BYTE2(a2);
        BYTE11(v100) = BYTE3(a2);
        BYTE12(v100) = BYTE4(a2);
        BYTE13(v100) = BYTE5(a2);
        v19 = &v100 + BYTE6(a2);
LABEL_45:
        closure #1 in NSFileHandle.write<A>(contentsOf:)(&v100, v19, v5);
        return outlined consume of Data._Representation(a1, a2);
      }

      if (a1 >> 32 < a1)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v38 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v38)
      {
        return result;
      }

      v39 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v40 = a1 - v39;
      if (__OFSUB__(a1, v39))
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v41 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= (a1 >> 32) - a1 ? (a1 >> 32) - a1 : *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v42 = v40 + v38;
      if (!(v40 + v38))
      {
        return result;
      }

      if (v41)
      {
        type metadata accessor for __DataStorage();
        v43 = swift_allocObject();
        *(v43 + 64) = 0;
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
        *(v43 + 40) = 0;
        *(v43 + 48) = _NSBundleDeallocatingImmortalBundle;
        *(v43 + 56) = 0;
        *(v43 + 32) = v41 | 0x8000000000000000;
        outlined copy of Data._Representation(a1, a2);
        v31 = specialized Data._Representation.init(_:count:)(v43, v41);
        v4 = v44;
        v33 = v44 >> 62;
        if ((v44 >> 62) <= 1)
        {
          if (v33)
          {
LABEL_111:
            v30 = v31;
            v34 = v31 >> 32;
            if (v31 >> 32 < v31)
            {
              __break(1u);
            }

            goto LABEL_112;
          }

LABEL_43:
          *&v100 = v31;
          WORD4(v100) = v4;
          BYTE10(v100) = BYTE2(v4);
          BYTE11(v100) = BYTE3(v4);
          BYTE12(v100) = BYTE4(v4);
          BYTE13(v100) = BYTE5(v4);
          v45 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v100 length:BYTE6(v4)];
          goto LABEL_113;
        }

LABEL_73:
        if (v33 == 2)
        {
          v30 = *(v31 + 16);
          v34 = *(v31 + 24);
          goto LABEL_112;
        }

LABEL_75:
        v45 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_113;
      }

      goto LABEL_70;
    }

    if (v15 != 2)
    {
      *(&v100 + 6) = 0;
      *&v100 = 0;
      v19 = &v100;
      goto LABEL_45;
    }

    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v22)
    {
      v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v24 = __OFSUB__(v20, v23);
      v25 = v20 - v23;
      if (v24)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v24 = __OFSUB__(v21, v20);
      v26 = v21 - v20;
      if (!v24)
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v26)
        {
          v10 = v26;
        }

        else
        {
          v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v27 = v25 + v22;
        if (!(v25 + v22))
        {
          return result;
        }

        if (v10)
        {
          type metadata accessor for __DataStorage();
          v28 = swift_allocObject();
          if (v10 > 0x3FFFFFFFFFFFFFFELL)
          {
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          *(v28 + 64) = 0;
          *(v28 + 16) = v27;
          *(v28 + 24) = v10;
          *(v28 + 40) = 0;
          *(v28 + 48) = _NSBundleDeallocatingImmortalBundle;
          *(v28 + 56) = 0;
          *(v28 + 32) = v10 | 0x8000000000000000;
          v29 = v28;
          outlined copy of Data._Representation(a1, a2);
          v30 = specialized Data._Representation.init(_:count:)(v29, v10);
          v31 = v30;
          v4 = v32;
          v33 = v32 >> 62;
          if ((v32 >> 62) <= 1)
          {
            if (!v33)
            {
              goto LABEL_43;
            }

            v30 = v30;
            v34 = v31 >> 32;
            if (v31 >> 32 < v31)
            {
              __break(1u);
LABEL_31:
              v35 = v10;
              v36 = String.init(_nativeStorage:)();
              if (v37)
              {
                a1 = v36;
                v13 = v37;

                goto LABEL_86;
              }

              if (![v35 length])
              {

                goto LABEL_51;
              }

              v57 = String.init(_cocoaString:)();
LABEL_85:
              a1 = v57;
              v13 = v58;
              goto LABEL_86;
            }

LABEL_112:
            v45 = __DataStorage.bridgedReference(_:)(v30, v34);
LABEL_113:
            v84 = v45;
            outlined consume of Data._Representation(v31, v4);
            *&v100 = 0;
            v85 = [v5 writeData:v84 error:&v100];

            if (v85)
            {
              v86 = v100;
              return outlined consume of Data._Representation(a1, a2);
            }

            if (v100)
            {
              v100;
LABEL_119:
              swift_willThrow();
              return outlined consume of Data._Representation(a1, a2);
            }

            if (one-time initialization token for _nilObjCError == -1)
            {
LABEL_118:
              v87 = _nilObjCError;
              goto LABEL_119;
            }

LABEL_132:
            swift_once();
            goto LABEL_118;
          }

          goto LABEL_73;
        }

LABEL_70:
        outlined copy of Data._Representation(a1, a2);
        v31 = 0;
        v4 = 0xC000000000000000;
        goto LABEL_75;
      }
    }

    else if (!__OFSUB__(v21, v20))
    {
      return result;
    }

    __break(1u);
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    v57 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_85;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v9 = @"NSDebugDescription";
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_15;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_55;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      a1 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

LABEL_86:
      *&v100 = a1;
      *(&v100 + 1) = v13;
      v62 = MEMORY[0x1E69E6158];
      AnyHashable.init<A>(_:)();
      v104[8] = v62;
      v104[5] = 0xD00000000000002ELL;
      v104[6] = 0x800000018147DC60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
      v31 = static _DictionaryStorage.allocate(capacity:)();
      a2 = &v100;
      outlined init with copy of (AnyHashable, Any)(v104, &v100);

      outlined destroy of TermOfAddress?(v104, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(&v100);
      v65 = v64;

      if (v65)
      {
LABEL_122:
        __break(1u);
      }

      else
      {
        a1 = v31 + 64;
        *(v31 + 64 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
        v66 = *(v31 + 48) + 40 * v63;
        v67 = v100;
        v68 = v101;
        *(v66 + 32) = *&v102[0];
        *v66 = v67;
        *(v66 + 16) = v68;
        outlined init with take of Any((v102 + 8), (*(v31 + 56) + 32 * v63));
        v69 = *(v31 + 16);
        if (!__OFADD__(v69, 1))
        {
          *(v31 + 16) = v69 + 1;
          v88 = v4;
          if (v69 == -1)
          {
            v70 = MEMORY[0x1E69E7CC8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
            v70 = static _DictionaryStorage.allocate(capacity:)();
          }

          v71 = 1 << *(v31 + 32);
          v72 = -1;
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          v5 = v72 & *(v31 + 64);
          v4 = (v71 + 63) >> 6;

          v73 = 0;
          v89 = v31;
          while (v5)
          {
            a2 = v73;
LABEL_101:
            v75 = __clz(__rbit64(v5)) | (a2 << 6);
            outlined init with copy of AnyHashable(*(v31 + 48) + 40 * v75, &v100);
            outlined init with copy of Any(*(v31 + 56) + 32 * v75, v102 + 8);
            v98[0] = v102[0];
            v98[1] = v102[1];
            v99 = v103;
            v97[0] = v100;
            v97[1] = v101;
            outlined init with copy of AnyHashable(v97, &v91);
            if (!swift_dynamicCast())
            {
              outlined destroy of TermOfAddress?(v97, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

LABEL_107:
              v82 = objc_allocWithZone(NSError);
              v83 = @"NSCocoaErrorDomain";
              [v82 initWithDomain:v83 code:512 userInfo:{_NativeDictionary.bridged()(), v88}];

              swift_unknownObjectRelease();

              return swift_willThrow();
            }

            v5 &= v5 - 1;
            outlined init with copy of Any(v98 + 8, v93);
            outlined destroy of TermOfAddress?(v97, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
            v94 = v90;
            outlined init with take of Any(v93, v95);
            v76 = v94;
            outlined init with take of Any(v95, v96);
            outlined init with take of Any(v96, &v94);
            v77 = specialized __RawDictionaryStorage.find<A>(_:)(v76, *(&v76 + 1));
            v78 = v77;
            if (v79)
            {
              *(v70[6] + 16 * v77) = v76;

              v74 = (v70[7] + 32 * v78);
              __swift_destroy_boxed_opaque_existential_1(v74);
              outlined init with take of Any(&v94, v74);
            }

            else
            {
              if (v70[2] >= v70[3])
              {
                __break(1u);
LABEL_121:
                __break(1u);
                goto LABEL_122;
              }

              *(v70 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v77;
              *(v70[6] + 16 * v77) = v76;
              outlined init with take of Any(&v94, (v70[7] + 32 * v77));
              v80 = v70[2];
              v24 = __OFADD__(v80, 1);
              v81 = v80 + 1;
              if (v24)
              {
                goto LABEL_121;
              }

              v70[2] = v81;
            }

            v73 = a2;
            v31 = v89;
          }

          while (1)
          {
            a2 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (a2 >= v4)
            {

              goto LABEL_107;
            }

            v5 = *(a1 + 8 * a2);
            ++v73;
            if (v5)
            {
              goto LABEL_101;
            }
          }

          __break(1u);
          goto LABEL_111;
        }
      }

      __break(1u);
      goto LABEL_124;
    }

LABEL_15:
    LOBYTE(v97[0]) = 0;
    *&v100 = 0;
    LOBYTE(v94) = 0;
    v92[0] = 0;
    if (__CFStringIsCF())
    {

LABEL_51:
      a1 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_86;
    }

    goto LABEL_31;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v51 = String.init(utf8String:)(result);
    if (v52)
    {
LABEL_56:
      a1 = v51;
      v13 = v52;

      goto LABEL_86;
    }

    __break(1u);
LABEL_55:
    LOWORD(v94) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v52)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v13 = *(&v97[0] + 1);
      a1 = *&v97[0];
      goto LABEL_86;
    }

    goto LABEL_56;
  }

  __break(1u);
  return result;
}