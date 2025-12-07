uint64_t implicit closure #2 in static Locale.identifier(fromComponents:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  if ((*(v2 + 48))(ObjectType, v2))
  {
    v4 = 1;
LABEL_5:
    Hasher._combine(_:)(v4);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  (*(v2 + 64))(ObjectType, v2);
  String.hash(into:)();

  (*(v2 + 464))(&v37, ObjectType, v2);
  v45[6] = v43;
  v46[0] = *v44;
  *(v46 + 12) = *&v44[12];
  v45[2] = v39;
  v45[3] = v40;
  v45[4] = v41;
  v45[5] = v42;
  v45[0] = v37;
  v45[1] = v38;
  if (_s10Foundation17LocalePreferencesVSgWOg(v45) == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v5 = v37;
  v6 = *(&v37 + 1);
  v7 = *(&v38 + 1);
  v8 = *(&v39 + 1);
  v9 = v40;
  v31 = v41;
  v32 = v42;
  v10 = v43;
  v11 = *v44;
  v33 = v44[24];
  v34 = *&v44[16];
  v12 = v44[25];
  v35 = v44[26];
  v36 = v44[27];
  Hasher._combine(_:)(1u);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5 & 1);
    if (v6)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v6 + 16));
      v13 = *(v6 + 16);
      if (v13)
      {
        v14 = v6 + 40;
        do
        {

          String.hash(into:)();

          v14 += 16;
          --v13;
        }

        while (v13);
      }

      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(0);
LABEL_16:
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v9)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, v9, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v9 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, *(&v9 + 1), v21, v22, v23, v24, v25, v26);
    if (v31)
    {
      goto LABEL_24;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v31)
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v31 + 1))
      {
        goto LABEL_25;
      }

LABEL_29:
      v27 = v33;
      Hasher._combine(_:)(0);
      if (v32)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(&v31 + 1))
  {
    goto LABEL_29;
  }

LABEL_25:
  v27 = v33;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v32)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
LABEL_31:
  if (*(&v32 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v10)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v10 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, *(&v10 + 1));
    if (v11)
    {
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v47, v11);
      if (v34)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  Hasher._combine(_:)(0);
  if (v34)
  {
LABEL_40:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v27 == 2)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

LABEL_46:
  Hasher._combine(_:)(0);
  if (v27 == 2)
  {
LABEL_41:
    Hasher._combine(_:)(0);
    if (v12 != 2)
    {
      goto LABEL_42;
    }

LABEL_48:
    Hasher._combine(_:)(0);
    if (v35 != 2)
    {
      goto LABEL_43;
    }

LABEL_49:
    v28 = 0;
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27 & 1);
  if (v12 == 2)
  {
    goto LABEL_48;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v12 & 1);
  if (v35 == 2)
  {
    goto LABEL_49;
  }

LABEL_43:
  Hasher._combine(_:)(1u);
  v28 = v35 & 1;
LABEL_50:
  Hasher._combine(_:)(v28);
  if (v36 == 2)
  {
    v29 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v29 = v36 & 1;
  }

  Hasher._combine(_:)(v29);
  outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  return Hasher._finalize()();
}

uint64_t Locale.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v30[0] = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v30 - v6;
  v8 = *v1;
  v9 = v1[1];
  swift_getObjectType();
  v10 = (*(v9 + 64))();
  v11 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6158];
  *&v34 = v10;
  *(&v34 + 1) = v12;
  v31 = xmmword_181231A50;
  outlined init with take of Any(&v34, &v32);
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  v16 = &v13[6 * v15];
  v17 = v31;
  v18 = v33;
  v16[3] = v32;
  v16[4] = v18;
  v16[2] = v17;
  *&v31 = v8;
  v19 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v35 = v11;
  *&v34 = v19;
  *(&v34 + 1) = v20;
  v31 = xmmword_181231A70;
  outlined init with take of Any(&v34, &v32);
  v22 = v13[2];
  v21 = v13[3];
  if (v22 >= v21 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v13);
  }

  v13[2] = v22 + 1;
  v23 = &v13[6 * v22];
  v24 = v31;
  v25 = v33;
  v23[3] = v32;
  v23[4] = v25;
  v23[2] = v24;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  *&v34 = v13;
  v26 = *MEMORY[0x1E69E75B8];
  v27 = type metadata accessor for Mirror.DisplayStyle();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v7, v26, v27);
  (*(v28 + 56))(v7, 0, 1, v27);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v30[0]);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Locale.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Locale.CodingKeys@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = *(v5 + 2);
  v13[0] = (v5 + 32);
  v13[1] = v6;
  result = _minimumMergeRunLength(_:)(v6);
  if (result >= v6)
  {
    if (v6)
    {
      result = specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v6, 1, a1);
    }
  }

  else
  {
    v8 = result;
    if (v6 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v6 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = v9 + 32;
    v11[1] = v6 >> 1;
    v10 = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v13, a1, a2, v8);
    *(v10 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = result;
  v116 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v100 = result;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v13 >= v9)
      {
        v27 = v13;
      }

      else
      {
        v14 = v12;
        v15 = *v7;
        v16 = (*v7 + 16 * v13);
        v17 = v16[1];
        v114 = *v16;
        v115 = v17;
        v18 = (v15 + 16 * v14);
        v19 = v18[1];
        v112 = *v18;
        v113 = v19;

        v107 = a4(&v114, &v112);
        if (v6)
        {
LABEL_92:
        }

        v20 = 0;
        v98 = v9 - 1;
        v103 = v14;
        v105 = v9;
        v21 = v14 - v9 + 2;
        v22 = 16 * v14;
        v23 = (v15 + v22 + 24);
        while (v21 + v20)
        {
          v24 = v23[2];
          v114 = v23[1];
          v115 = v24;
          v25 = *v23;
          v112 = *(v23 - 1);
          v113 = v25;

          v26 = a4(&v114, &v112);

          ++v20;
          v23 += 2;
          if ((v107 ^ v26))
          {
            v12 = v103;
            v98 = v103 + v20;
            v27 = v103 + v20 + 1;
            goto LABEL_12;
          }
        }

        v12 = v103;
        v27 = v105;
LABEL_12:
        v8 = v100;
        v7 = a3;
        if (v107)
        {
          if (v27 < v12)
          {
            goto LABEL_112;
          }

          if (v12 <= v98)
          {
            v89 = 0;
            v90 = 16 * v27;
            v91 = v12;
            do
            {
              if (v91 != v27 + v89 - 1)
              {
                v92 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                v93 = (v92 + v22);
                v94 = v92 + v90;
                v95 = *v93;
                v96 = v93[1];
                *v93 = *(v94 - 16);
                *(v94 - 16) = v95;
                *(v94 - 8) = v96;
              }

              ++v91;
              --v89;
              v90 -= 16;
              v22 += 16;
            }

            while (v91 < v27 + v89);
          }
        }
      }

      v28 = v7[1];
      if (v27 >= v28)
      {
        goto LABEL_25;
      }

      if (__OFSUB__(v27, v12))
      {
        goto LABEL_109;
      }

      if (v27 - v12 >= a6)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v12, a6))
      {
        goto LABEL_110;
      }

      v29 = v27;
      if (v12 + a6 >= v28)
      {
        v30 = v7[1];
      }

      else
      {
        v30 = v12 + a6;
      }

      if (v30 < v12)
      {
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
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        return result;
      }

      v31 = v29;
      if (v29 == v30)
      {
        break;
      }

      v79 = *v7;
      v80 = (*v7 + 16 * v29);
      v104 = v12;
      v81 = v12 - v29;
      v109 = v30;
      do
      {
        v106 = v31;
        v82 = (v79 + 16 * v31);
        v83 = *v82;
        v84 = v82[1];
        v97 = v81;
        v99 = v80;
        do
        {
          v114 = v83;
          v115 = v84;
          v85 = *(v80 - 1);
          v112 = *(v80 - 2);
          v113 = v85;

          v86 = a4(&v114, &v112);
          if (v6)
          {
            goto LABEL_92;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_114;
          }

          v83 = *v80;
          v84 = v80[1];
          *v80 = *(v80 - 1);
          *(v80 - 1) = v84;
          *(v80 - 2) = v83;
          v80 -= 2;
        }

        while (!__CFADD__(v81++, 1));
        v27 = v109;
        v31 = v106 + 1;
        v80 = v99 + 2;
        v81 = v97 - 1;
      }

      while (v106 + 1 != v109);
      v8 = v100;
      v7 = a3;
      v12 = v104;
      if (v109 < v104)
      {
        goto LABEL_108;
      }

LABEL_26:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v33 = *(v11 + 2);
      v32 = *(v11 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v34;
      v35 = &v11[16 * v33];
      *(v35 + 4) = v12;
      *(v35 + 5) = v27;
      v116 = v11;
      v36 = *v8;
      if (!*v8)
      {
        goto LABEL_116;
      }

      v108 = v27;
      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v38 = *(v11 + 4);
            v39 = *(v11 + 5);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_45:
            if (v41)
            {
              goto LABEL_99;
            }

            v54 = &v11[16 * v34];
            v56 = *v54;
            v55 = *(v54 + 1);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_102;
            }

            v60 = &v11[16 * v37 + 32];
            v62 = *v60;
            v61 = *(v60 + 1);
            v48 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v48)
            {
              goto LABEL_105;
            }

            if (__OFADD__(v58, v63))
            {
              goto LABEL_106;
            }

            if (v58 + v63 >= v40)
            {
              if (v40 < v63)
              {
                v37 = v34 - 2;
              }

              goto LABEL_66;
            }

            goto LABEL_59;
          }

          v64 = &v11[16 * v34];
          v66 = *v64;
          v65 = *(v64 + 1);
          v48 = __OFSUB__(v65, v66);
          v58 = v65 - v66;
          v59 = v48;
LABEL_59:
          if (v59)
          {
            goto LABEL_101;
          }

          v67 = &v11[16 * v37];
          v69 = *(v67 + 4);
          v68 = *(v67 + 5);
          v48 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v48)
          {
            goto LABEL_104;
          }

          if (v70 < v58)
          {
            goto LABEL_3;
          }

LABEL_66:
          v75 = v37 - 1;
          if (v37 - 1 >= v34)
          {
            __break(1u);
LABEL_95:
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
            goto LABEL_111;
          }

          if (!*v7)
          {
            goto LABEL_113;
          }

          v76 = *&v11[16 * v75 + 32];
          v77 = *&v11[16 * v37 + 40];
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v76), (*v7 + 16 * *&v11[16 * v37 + 32]), (*v7 + 16 * v77), v36, a4);
          if (v6)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_95;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v11 = result;
          }

          if (v75 >= *(v11 + 2))
          {
            goto LABEL_96;
          }

          v78 = &v11[16 * v75];
          *(v78 + 4) = v76;
          *(v78 + 5) = v77;
          v116 = v11;
          result = specialized Array.remove(at:)(v37);
          v11 = v116;
          v34 = *(v116 + 2);
          if (v34 <= 1)
          {
            goto LABEL_3;
          }
        }

        v42 = &v11[16 * v34 + 32];
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_97;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_98;
        }

        v49 = &v11[16 * v34];
        v51 = *v49;
        v50 = *(v49 + 1);
        v48 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v48)
        {
          goto LABEL_100;
        }

        v48 = __OFADD__(v40, v52);
        v53 = v40 + v52;
        if (v48)
        {
          goto LABEL_103;
        }

        if (v53 >= v45)
        {
          v71 = &v11[16 * v37 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v48 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v48)
          {
            goto LABEL_107;
          }

          if (v40 < v74)
          {
            v37 = v34 - 2;
          }

          goto LABEL_66;
        }

        goto LABEL_45;
      }

LABEL_3:
      v9 = v7[1];
      v10 = v108;
      if (v108 >= v9)
      {
        goto LABEL_90;
      }
    }

    v27 = v29;
LABEL_25:
    if (v27 < v12)
    {
      goto LABEL_108;
    }

    goto LABEL_26;
  }

LABEL_90:
  if (!*v8)
  {
    goto LABEL_117;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v116, *v8, a4, a5);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t (*a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  v5 = v4;
  v65 = a4;
  v7 = a1;
  v8 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_2:
  *v7 = v8;
  v10 = *(v8 + 2);
  if (v10 < 2)
  {
    return 1;
  }

  __src = a2;
  v51 = v7;
  while (1)
  {
    v11 = *v52;
    if (!*v52)
    {
      __break(1u);
      return result;
    }

    v54 = v10;
    v55 = v8;
    v12 = *&v8[16 * v10];
    v53 = v10 - 1;
    v14 = &v8[16 * v10 + 16];
    v13 = *v14;
    v56 = *(v14 + 1);
    v57 = v12;
    v15 = 16 * v12;
    v16 = (v11 + 16 * v12);
    v17 = 16 * *v14;
    v18 = (v11 + v17);
    v19 = v11 + 16 * v56;
    v7 = v17 - 16 * v12;
    v20 = 16 * v56 - v17;
    if (v7 >= v20)
    {
      break;
    }

    v21 = v19;
    if (v16 != a2 || v18 <= a2)
    {
      memmove(a2, v16, 16 * v13 - 16 * v12);
    }

    v8 = a2;
    v23 = &a2[v7];
    v24 = v7 < 1 || 16 * v56 <= v17;
    v25 = v21;
    if (!v24)
    {
      while (1)
      {
        v26 = *(v18 + 1);
        v63 = *v18;
        v64 = v26;
        v27 = *(v8 + 1);
        v61 = *v8;
        v62 = v27;

        v28 = a3(&v63, &v61);
        if (v5)
        {

          v46 = v23 - v8 + 15;
          if (v23 - v8 >= 0)
          {
            v46 = v23 - v8;
          }

          if (v16 < v8 || v16 >= &v8[v46 & 0xFFFFFFFFFFFFFFF0] || v16 != v8)
          {
            memmove(v16, v8, 16 * (v46 >> 4));
          }

          return 1;
        }

        v7 = v28;

        if ((v7 & 1) == 0)
        {
          break;
        }

        v29 = v18;
        v30 = v16 == v18;
        v18 += 16;
        if (!v30)
        {
          goto LABEL_24;
        }

LABEL_25:
        v16 += 16;
        if (v8 >= v23 || v18 >= v25)
        {
          goto LABEL_17;
        }
      }

      v29 = v8;
      v30 = v16 == v8;
      v8 += 16;
      if (v30)
      {
        goto LABEL_25;
      }

LABEL_24:
      *v16 = *v29;
      goto LABEL_25;
    }

    v8 = __src;
LABEL_17:
    v18 = v16;
LABEL_49:
    if (v18 != v8 || v18 >= &v8[(v23 - v8 + (v23 - v8 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(v18, v8, 16 * ((v23 - v8) / 16));
    }

    a2 = __src;
    if (v56 < v57)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
      goto LABEL_2;
    }

    v8 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
    }

    v7 = v51;
    if ((v54 - 2) >= *(v8 + 2))
    {
      goto LABEL_74;
    }

    v45 = &v8[16 * v54];
    *v45 = v57;
    *(v45 + 1) = v56;
    *v51 = v8;
    result = specialized Array.remove(at:)(v53);
    v8 = *v51;
    v10 = *(*v51 + 2);
    if (v10 <= 1)
    {
      return 1;
    }
  }

  v50 = v16;
  v58 = v19;
  if (v18 != a2 || v19 <= a2)
  {
    memmove(a2, v18, 16 * v56 - 16 * v13);
  }

  v32 = a2;
  v23 = &a2[v20];
  v33 = v20 < 1 || v17 <= v15;
  v8 = v32;
  if (v33)
  {
    goto LABEL_49;
  }

LABEL_37:
  v34 = v18;
  v35 = v5;
  v36 = 0;
  v37 = v23;
  v49 = v34 - 16;
  while (1)
  {
    v38 = v37;
    v39 = &v37[v36];
    v40 = &v37[v36 - 16];
    v41 = *&v37[v36 - 8];
    v63 = *v40;
    v64 = v41;
    v42 = *(v34 - 1);
    v43 = v34;
    v61 = *(v34 - 2);
    v62 = v42;

    v44 = a3(&v63, &v61);
    if (v35)
    {
      break;
    }

    v7 = v44;

    if (v7)
    {
      if ((v58 + v36) != v43)
      {
        *(v58 + v36 - 16) = *v49;
      }

      v58 = v58 + v36 - 16;
      v23 = &v38[v36];
      v5 = 0;
      if (&v38[v36] <= __src)
      {
        v18 = v49;
LABEL_59:
        v23 = &v38[v36];
        v8 = __src;
        goto LABEL_49;
      }

      v18 = v49;
      if (v50 >= v49)
      {
        goto LABEL_59;
      }

      goto LABEL_37;
    }

    v34 = v43;
    v37 = v38;
    if ((v58 + v36) != v39)
    {
      *(v58 + v36 - 16) = *v40;
    }

    v36 -= 16;
    v23 = &v38[v36];
    if (&v38[v36] <= __src)
    {
      v8 = __src;
      v5 = 0;
      v18 = v34;
      goto LABEL_49;
    }
  }

  v47 = v38 - __src + v36;
  v48 = v47 + 15;
  if (v47 >= 0)
  {
    v48 = v38 - __src + v36;
  }

  if (v43 < __src || v43 >= &__src[v48 & 0xFFFFFFFFFFFFFFF0] || v43 != __src)
  {
    memmove(v43, __src, 16 * (v48 >> 4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *a2, char *a3, char *__src, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v57 = a5;
  v6 = a3;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    v14 = __src;
    v15 = __dst;
    if (__src != __dst || &__dst[16 * v9] <= __src)
    {
      memmove(__src, __dst, 16 * v9);
    }

    v16 = &v14[16 * v9];
    if (v7 < 16 || v13 >= v6)
    {
LABEL_21:
      a2 = v15;
      goto LABEL_40;
    }

    v17 = v13;
    v52 = &v14[16 * v9];
    while (1)
    {
      v18 = v6;
      v19 = *(v17 + 1);
      v55 = *v17;
      v56 = v19;
      v20 = *(v14 + 1);
      v53 = *v14;
      v54 = v20;

      v21 = v57(&v55, &v53);
      if (v5)
      {

        v43 = v52 - v14 + 15;
        if (v52 - v14 >= 0)
        {
          v43 = v52 - v14;
        }

        v44 = v43 >> 4;
        if (v15 < v14 || v15 >= &v14[v43 & 0xFFFFFFFFFFFFFFF0])
        {
          memmove(v15, v14, 16 * v44);
        }

        else if (v15 != v14)
        {
          v39 = 16 * v44;
          v40 = v15;
LABEL_46:
          v41 = v14;
LABEL_47:
          memmove(v40, v41, v39);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v17;
      v24 = v15 == v17;
      v17 += 16;
      v6 = v18;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 += 16;
      v16 = v52;
      if (v14 >= v52 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v23 = v14;
    v24 = v15 == v14;
    v14 += 16;
    v6 = v18;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v15 = *v23;
    goto LABEL_19;
  }

  if (__src != a2 || &a2[16 * v12] <= __src)
  {
    v25 = a2;
    v26 = __src;
    memmove(__src, a2, 16 * v12);
    __src = v26;
    a2 = v25;
  }

  __srca = __src;
  v16 = &__src[16 * v12];
  if (v10 < 16 || a2 <= __dst)
  {
    v14 = __src;
    goto LABEL_40;
  }

LABEL_27:
  v50 = v6;
  v27 = 0;
  v28 = v16;
  v48 = a2 - 16;
  while (1)
  {
    v29 = v28;
    v30 = &v28[v27];
    v31 = &v28[v27 - 16];
    v32 = *&v28[v27 - 8];
    v55 = *v31;
    v56 = v32;
    v33 = *(a2 - 1);
    v34 = a2;
    v53 = *(a2 - 2);
    v54 = v33;

    v35 = v57(&v55, &v53);
    if (v5)
    {
      break;
    }

    v36 = v35;

    if (v36)
    {
      v6 = &v50[v27 - 16];
      a2 = v48;
      if (&v50[v27] != v34)
      {
        *v6 = *v48;
      }

      v16 = &v29[v27];
      v14 = __srca;
      if (&v29[v27] <= __srca || v48 <= __dst)
      {
        v16 = &v29[v27];
LABEL_40:
        v37 = v16 - v14;
        v38 = v37 + 15;
        if (v37 >= 0)
        {
          v38 = v37;
        }

        if (a2 < v14 || a2 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || a2 != v14)
        {
          v39 = 16 * (v38 >> 4);
          v40 = a2;
          goto LABEL_46;
        }

        return 1;
      }

      goto LABEL_27;
    }

    a2 = v34;
    v28 = v29;
    if (&v50[v27] != v30)
    {
      *&v50[v27 - 16] = *v31;
    }

    v27 -= 16;
    v16 = &v29[v27];
    v14 = __srca;
    if (&v29[v27] <= __srca)
    {
      goto LABEL_40;
    }
  }

  v41 = __srca;
  v45 = v29 - __srca + v27;
  v46 = v45 + 15;
  if (v45 >= 0)
  {
    v46 = v29 - __srca + v27;
  }

  v47 = v46 >> 4;
  if (v34 < __srca || v34 >= &__srca[v46 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v34, __srca, 16 * v47);
  }

  else if (v34 != __srca)
  {
    v39 = 16 * v47;
    v40 = v34;
    goto LABEL_47;
  }

  return 1;
}

id specialized static Locale._canonicalLocaleIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695D798];

  return static Locale.canonicalLanguageIdentifier(from:)(a1, a2, v2, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

uint64_t _LocaleAutoupdating.prefs.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v9 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v11[0] = v0;
    *(v11 + 8) = v9;
    LocaleCache.preferences()(v13);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
    v11[6] = v13[6];
    v12[0] = v14[0];
    *(v12 + 12) = *(v14 + 12);
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v13, &v10);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v11, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      partial apply for closure #2 in LocaleCache._currentAndCache.getter((v1 + 16), v11);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v13);

      v2 = *(&v11[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v13);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v2 + 464))(ObjectType, v2);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.identifierDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 72))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.languageCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 80))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.countryCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 88))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.scriptCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 96))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.variantCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 104))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.calendarIdentifierDisplayName(for:) in conformance _LocaleAutoupdating(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7 = static LocaleCache.cache;
  v8 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v7) = v1;
  v5 = (*(v3 + 112))(&v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t protocol witness for _LocaleProtocol.currencyCodeDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 120))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.currencySymbolDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 128))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifierDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 136))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.collatorIdentifierDisplayName(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 144))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t protocol witness for _LocaleProtocol.scriptCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 160))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.variantCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 168))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.regionCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 176))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.exemplarCharacterSet.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 184))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.calendar.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 192))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifier.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 208))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.usesMetricSystem.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 216))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t protocol witness for _LocaleProtocol.groupingSeparator.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 232))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.currencySymbol.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 240))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.currencyCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 248))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.collatorIdentifier.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 256))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.quotationBeginDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 264))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.quotationEndDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 272))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.alternateQuotationBeginDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 280))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.alternateQuotationEndDelimiter.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 288))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.currency.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 304))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.availableNumberingSystems.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 320))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.weekendRange.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 336))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.collation.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 368))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.timeZone.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 384))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.subdivision.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 392))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.variant.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 400))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.temperatureUnit.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 408))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.forceHourCycle.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 424))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.forceMinDaysInFirstWeek(_:) in conformance _LocaleAutoupdating(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7 = static LocaleCache.cache;
  v8 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v7) = v1;
  v5 = (*(v3 + 440))(&v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

void LocaleCache.State.IdentifierAndPrefs.hash(into:)(Swift::Int a1)
{
  v39 = *(v1 + 16);
  *v48 = *(v1 + 17);
  *&v48[3] = *(v1 + 20);
  v40 = *(v1 + 24);
  v41 = *(v1 + 40);
  v37 = *(v1 + 32);
  v38 = *(v1 + 48);
  v42 = *(v1 + 56);
  v43 = *(v1 + 64);
  v44 = *(v1 + 72);
  v45 = *(v1 + 80);
  v2 = *(v1 + 96);
  v46 = *(v1 + 88);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v35 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 153);
  v10 = *(v1 + 154);
  v11 = *(v1 + 155);
  String.hash(into:)();
  v47 = v39;
  v49 = v40;
  v50 = v37;
  v51 = v41;
  v52 = v38;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v2;
  v59 = v3;
  v60 = v4;
  v33 = v4;
  v34 = v5;
  v61 = v5;
  v62 = v6;
  v63 = v7;
  v64 = v35;
  v65 = v8;
  v66 = v9;
  v67 = v10;
  v68 = v11;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v47) == 1)
  {
    v12 = 0;
    goto LABEL_49;
  }

  Hasher._combine(_:)(1u);
  if (v39 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v39 & 1;
  }

  Hasher._combine(_:)(v13);
  if (v40)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v40 + 16));
    v14 = *(v40 + 16);
    if (v14)
    {
      v15 = v40 + 40;
      do
      {

        String.hash(into:)();

        v15 += 16;
        --v14;
      }

      while (v14);
    }

    if (v41)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v41)
    {
LABEL_11:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_14;
    }
  }

  Hasher._combine(_:)(0);
LABEL_14:
  if (v42)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v43)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v43, v16, v17, v18, v19, v20, v21);
    if (v44)
    {
      goto LABEL_19;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v44)
    {
LABEL_19:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v44, v22, v23, v24, v25, v26, v27);
      if (v45)
      {
        goto LABEL_20;
      }

LABEL_24:
      Hasher._combine(_:)(0);
      if (v46)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  Hasher._combine(_:)(0);
  if (!v45)
  {
    goto LABEL_24;
  }

LABEL_20:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v46)
  {
LABEL_21:
    v28 = v34;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_26;
  }

LABEL_25:
  v28 = v34;
  Hasher._combine(_:)(0);
LABEL_26:
  if (v2)
  {
    v29 = v11;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v3)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v29 = v11;
    Hasher._combine(_:)(0);
    if (v3)
    {
LABEL_28:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v30 = v29;
      if (v33)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }
  }

  Hasher._combine(_:)(0);
  v30 = v29;
  if (v33)
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v31 = v6;
    if (v28)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

LABEL_36:
  Hasher._combine(_:)(0);
  v31 = v6;
  if (v28)
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v28);
    if (v31)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
  if (v31)
  {
LABEL_31:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v31);
    if (v35)
    {
      goto LABEL_32;
    }

LABEL_39:
    Hasher._combine(_:)(0);
    if (v8 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

LABEL_38:
  Hasher._combine(_:)(0);
  if (!v35)
  {
    goto LABEL_39;
  }

LABEL_32:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v8 == 2)
  {
LABEL_33:
    Hasher._combine(_:)(0);
    goto LABEL_41;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v8 & 1);
LABEL_41:
  if (v9 == 2)
  {
    Hasher._combine(_:)(0);
    if (v10 != 2)
    {
LABEL_43:
      Hasher._combine(_:)(1u);
      v32 = v10 & 1;
      goto LABEL_46;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v9 & 1);
    if (v10 != 2)
    {
      goto LABEL_43;
    }
  }

  v32 = 0;
LABEL_46:
  Hasher._combine(_:)(v32);
  if (v30 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v30 & 1;
  }

LABEL_49:
  Hasher._combine(_:)(v12);
}

Swift::String_optional __swiftcall LocaleCache.preferredLocale()()
{
  v0 = String._bridgeToObjectiveCImpl()();
  v1 = CFPreferencesCopyAppValue(v0, *MEMORY[0x1E695E8A8]);
  swift_unknownObjectRelease();
  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    v2 = v5;
    v3 = v6;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t specialized static LocaleCache.State.IdentifierAndPrefs.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v186[6] = *(a1 + 7);
  v187[0] = v6;
  *(v187 + 12) = *(a1 + 140);
  v7 = *(a1 + 4);
  v186[2] = *(a1 + 3);
  v186[3] = v7;
  v8 = *(a1 + 5);
  v186[5] = *(a1 + 6);
  v186[4] = v8;
  v9 = *(a1 + 1);
  v186[1] = *(a1 + 2);
  v186[0] = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 8);
  v188[6] = *(a2 + 7);
  v189[0] = v12;
  *(v189 + 12) = *(a2 + 140);
  v13 = *(a2 + 4);
  v188[2] = *(a2 + 3);
  v188[3] = v13;
  v14 = *(a2 + 6);
  v188[4] = *(a2 + 5);
  v188[5] = v14;
  v15 = *(a2 + 2);
  v188[0] = *(a2 + 1);
  v188[1] = v15;
  if (v4 == v10 && v5 == v11 || (v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v16 & 1) != 0))
  {
    v18 = *(a1 + 6);
    v19 = *(a1 + 8);
    __src[6] = *(a1 + 7);
    __src[7] = v19;
    *(&__src[7] + 12) = *(a1 + 140);
    v20 = *(a1 + 2);
    v21 = *(a1 + 4);
    __src[2] = *(a1 + 3);
    __src[3] = v21;
    v23 = *(a1 + 4);
    v22 = *(a1 + 5);
    v24 = v22;
    __src[5] = *(a1 + 6);
    __src[4] = v22;
    v25 = *(a1 + 1);
    v26 = v25;
    __src[1] = *(a1 + 2);
    __src[0] = v25;
    *(&__src[16] + 12) = *(a2 + 140);
    v27 = *(a2 + 8);
    __src[15] = *(a2 + 7);
    __src[16] = v27;
    v28 = *(a2 + 4);
    __src[11] = *(a2 + 3);
    __src[12] = v28;
    v29 = *(a2 + 5);
    __src[14] = *(a2 + 6);
    __src[13] = v29;
    v30 = *(a2 + 1);
    __src[10] = *(a2 + 2);
    __src[9] = v30;
    v31 = *(a1 + 8);
    v184[6] = __src[6];
    v185[0] = v31;
    *(v185 + 12) = *(a1 + 140);
    v184[2] = __src[2];
    v184[3] = v23;
    v184[5] = v18;
    v184[4] = v24;
    v184[1] = v20;
    v184[0] = v26;
    if (_s10Foundation17LocalePreferencesVSgWOg(v184) == 1)
    {
      v32 = *(a2 + 8);
      __dst[6] = *(a2 + 7);
      __dst[7] = v32;
      *(&__dst[7] + 12) = *(a2 + 140);
      v33 = *(a2 + 4);
      __dst[2] = *(a2 + 3);
      __dst[3] = v33;
      v34 = *(a2 + 6);
      __dst[4] = *(a2 + 5);
      __dst[5] = v34;
      v35 = *(a2 + 2);
      __dst[0] = *(a2 + 1);
      __dst[1] = v35;
      if (_s10Foundation17LocalePreferencesVSgWOg(__dst) == 1)
      {
        v36 = *(a1 + 8);
        v181 = *(a1 + 7);
        *v182 = v36;
        *&v182[12] = *(a1 + 140);
        v37 = *(a1 + 3);
        v178 = *(a1 + 4);
        v38 = *(a1 + 5);
        v180 = *(a1 + 6);
        v179 = v38;
        v39 = *(a1 + 1);
        v176 = *(a1 + 2);
        v177 = v37;
        v175 = v39;
        outlined init with copy of LocalePreferences?(v186, &v166);
        outlined init with copy of LocalePreferences?(v188, &v166);
        v40 = &v175;
LABEL_7:
        outlined destroy of TermOfAddress?(v40, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
        return 1;
      }

      outlined init with copy of LocalePreferences?(v186, &v175);
      outlined init with copy of LocalePreferences?(v188, &v175);
      goto LABEL_11;
    }

    *&v182[12] = *(a1 + 140);
    v41 = *(a1 + 7);
    *v182 = *(a1 + 8);
    v181 = v41;
    v42 = *(a1 + 3);
    v178 = *(a1 + 4);
    v43 = *(a1 + 5);
    v180 = *(a1 + 6);
    v179 = v43;
    v44 = *(a1 + 1);
    v176 = *(a1 + 2);
    v177 = v42;
    v175 = v44;
    v46 = *(a1 + 17);
    v45 = (a1 + 17);
    v136 = v44;
    v165[0] = v46;
    *(v165 + 3) = *(v45 + 3);
    v135 = *(&v44 + 1);
    v134 = v176;
    v132 = v178;
    v133 = v42;
    v47 = *(&v178 + 1);
    v48 = *(&v179 + 1);
    v49 = *(&v180 + 1);
    v130 = v181;
    v131 = v179;
    v50 = *(&v181 + 1);
    v128 = v180;
    *v129 = *v182;
    *&v129[16] = *&v182[16];
    v51 = v182[24];
    v52 = v182[25];
    v53 = v182[26];
    v54 = v182[27];
    v55 = *(a2 + 8);
    __dst[6] = *(a2 + 7);
    __dst[7] = v55;
    *(&__dst[7] + 12) = *(a2 + 140);
    v56 = *(a2 + 4);
    __dst[2] = *(a2 + 3);
    __dst[3] = v56;
    v57 = *(a2 + 6);
    __dst[4] = *(a2 + 5);
    __dst[5] = v57;
    v58 = *(a2 + 2);
    __dst[0] = *(a2 + 1);
    __dst[1] = v58;
    if (_s10Foundation17LocalePreferencesVSgWOg(__dst) == 1)
    {
      LOBYTE(v166) = v136;
      *(&v166 + 1) = *v45;
      DWORD1(v166) = *(v45 + 3);
      *(&v166 + 1) = v135;
      v167 = v134;
      v168 = v133;
      v169 = __PAIR128__(v47, v132);
      v170 = __PAIR128__(v48, v131);
      v171 = __PAIR128__(v49, v128);
      v172 = __PAIR128__(v50, v130);
      *v173 = *v129;
      *&v173[16] = *&v129[16];
      v173[24] = v51;
      v173[25] = v52;
      v173[26] = v53;
      v173[27] = v54;
      outlined init with copy of LocalePreferences?(v186, &v157);
      outlined init with copy of LocalePreferences?(v188, &v157);
      outlined init with copy of LocalePreferences?(&v175, &v157);
      outlined destroy of LocalePreferences(&v166);
LABEL_11:
      memcpy(__dst, __src, 0x11CuLL);
      v59 = &_s10Foundation17LocalePreferencesVSg_ADtMd;
      v60 = &_s10Foundation17LocalePreferencesVSg_ADtMR;
      v61 = __dst;
LABEL_41:
      outlined destroy of TermOfAddress?(v61, v59, v60);
      return 0;
    }

    v126 = v48;
    v127 = v47;
    v121 = v49;
    v125 = v50;
    v122 = v52;
    v123 = v51;
    v124 = v53;
    v120 = v54;
    v62 = *(a2 + 2);
    v166 = *(a2 + 1);
    v167 = v62;
    v63 = *(a2 + 4);
    v168 = *(a2 + 3);
    v169 = v63;
    v64 = *(a2 + 6);
    v170 = *(a2 + 5);
    v171 = v64;
    v65 = *(a2 + 8);
    v172 = *(a2 + 7);
    *v173 = v65;
    *&v173[12] = *(a2 + 140);
    v67 = *(&v168 + 1);
    v66 = v168;
    v69 = *(&v169 + 1);
    v68 = v169;
    v70 = *(&v170 + 1);
    v71 = v170;
    v72 = *(&v171 + 1);
    v73 = v171;
    if (v136 == 2)
    {
      v75 = *&v129[8];
      v74 = *&v129[16];
      v76 = *v129;
      if (v166 != 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v75 = *&v129[8];
      v74 = *&v129[16];
      v76 = *v129;
      if (v166 == 2 || ((v166 ^ v136) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    v116 = *(&v172 + 1);
    v117 = v172;
    v114 = *&v173[8];
    v115 = *v173;
    v112 = v173[25];
    v113 = v173[24];
    v110 = v173[27];
    v111 = v173[26];
    if (v135)
    {
      if (!*(&v166 + 1))
      {
        goto LABEL_38;
      }

      v77 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v135, *(&v166 + 1));
      v66 = v168;
      v68 = v169;
      v67 = *(&v168 + 1);
      v72 = *(&v171 + 1);
      v73 = v171;
      v69 = *(&v169 + 1);
      v70 = *(&v170 + 1);
      v71 = v170;
      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(&v166 + 1))
    {
      goto LABEL_38;
    }

    if (*(&v134 + 1))
    {
      if (!*(&v167 + 1))
      {
        goto LABEL_38;
      }

      if (v134 != v167)
      {
        v106 = v72;
        v78 = v68;
        v108 = v66;
        v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v66 = v108;
        v68 = v78;
        v72 = v106;
        if ((v79 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_26:
      if (*(&v133 + 1))
      {
        v80 = v130;
        if (v67)
        {
          if (v133 == __PAIR128__(v67, v66))
          {
            goto LABEL_30;
          }

          v81 = v72;
          v82 = v68;
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v68 = v82;
          v72 = v81;
          if (v83)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v80 = v130;
        if (!v67)
        {
LABEL_30:
          if (v132)
          {
            LOBYTE(v84) = v122;
            if (v68)
            {
              v85 = v69;
              v86 = v72;
              v87 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v132, v68);
              v72 = v86;
              v69 = v85;
              if (v87)
              {
LABEL_33:
                v88 = v71;
                if (v127)
                {
                  LOBYTE(v89) = v123;
                  if (!v69)
                  {
                    goto LABEL_54;
                  }

                  v90 = v69;
                  v91 = v72;
                  v92 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v127, v90);
                  v72 = v91;
                  if ((v92 & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  LOBYTE(v89) = v123;
                  if (v69)
                  {
                    goto LABEL_54;
                  }
                }

                v105 = v73;
                v107 = v72;
                v109 = v70;
                if (v131)
                {
                  if (v88)
                  {
                    type metadata accessor for CFDictionaryRef(0);
                    outlined init with copy of LocalePreferences?(v186, &v157);
                    outlined init with copy of LocalePreferences?(v188, &v157);
                    outlined init with copy of LocalePreferences?(&v175, &v157);
                    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                    v95 = v88;
                    v96 = static _CFObject.== infix(_:_:)();

                    v80 = v130;
                    LOBYTE(v93) = v124;
                    v94 = v125;
                    if ((v96 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

LABEL_56:
                    if (v126)
                    {
                      if (!v109)
                      {
                        goto LABEL_39;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v97 = v109;
                      v94 = v125;
                      v98 = static _CFObject.== infix(_:_:)();

                      v80 = v130;
                      if ((v98 & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else if (v109)
                    {
                      goto LABEL_39;
                    }

                    if (v128)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (!v105)
                      {
                        goto LABEL_39;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v99 = v105;
                      v94 = v125;
                      v100 = static _CFObject.== infix(_:_:)();

                      v80 = v130;
                      if ((v100 & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v105)
                      {
                        goto LABEL_39;
                      }
                    }

                    if (v121)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (!v107)
                      {
                        goto LABEL_39;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v101 = v107;
                      v94 = v125;
                      v102 = static _CFObject.== infix(_:_:)();

                      v80 = v130;
                      if ((v102 & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v107)
                      {
                        goto LABEL_39;
                      }
                    }

                    if (v80)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (!v117)
                      {
                        goto LABEL_39;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v103 = v117;
                      v94 = v125;
                      v104 = static _CFObject.== infix(_:_:)();

                      v80 = v130;
                      if ((v104 & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v117)
                      {
                        goto LABEL_39;
                      }
                    }

                    if (v94)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (!v116)
                      {
                        goto LABEL_39;
                      }

                      v118 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(v125, v116);

                      if ((v118 & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v116)
                      {
                        goto LABEL_39;
                      }
                    }

                    if (v76)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (!v115)
                      {
                        goto LABEL_39;
                      }

                      v119 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(*v129, v115);

                      if ((v119 & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v115)
                      {
                        goto LABEL_39;
                      }
                    }

                    if (v74)
                    {
                      v89 = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (!*(&v114 + 1) || *&v129[8] != v114 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v89 = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (*(&v114 + 1))
                      {
                        goto LABEL_39;
                      }
                    }

                    if (v89 == 2)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      v84 = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v113 != 2)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      v84 = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v113 == 2 || ((v113 ^ v123) & 1) != 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    outlined destroy of TermOfAddress?(&v166, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                    if (v84 == 2)
                    {
                      LOBYTE(v89) = v123;
                      v93 = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v112 != 2)
                      {
                        goto LABEL_40;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      v93 = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v112 == 2 || ((v112 ^ v122) & 1) != 0)
                      {
                        goto LABEL_40;
                      }
                    }

                    if (v93 == 2)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v111 != 2)
                      {
                        goto LABEL_40;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v111 == 2 || ((v111 ^ v124) & 1) != 0)
                      {
                        goto LABEL_40;
                      }
                    }

                    if (v120 == 2)
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v110 != 2)
                      {
                        goto LABEL_40;
                      }
                    }

                    else
                    {
                      LOBYTE(v89) = v123;
                      LOBYTE(v93) = v124;
                      LOBYTE(v84) = v122;
                      v75 = *&v129[8];
                      v74 = *&v129[16];
                      v76 = *v129;
                      v94 = v125;
                      v80 = v130;
                      if (v110 == 2 || ((v110 ^ v120) & 1) != 0)
                      {
                        goto LABEL_40;
                      }
                    }

                    v137 = v136;
                    *v138 = v165[0];
                    *&v138[3] = *(v165 + 3);
                    v139 = v135;
                    v140 = v134;
                    v141 = v133;
                    v142 = v132;
                    v143 = v127;
                    v144 = v131;
                    v145 = v126;
                    v146 = v128;
                    v147 = v121;
                    v148 = v80;
                    v149 = v94;
                    v150 = v76;
                    v151 = v75;
                    v152 = v74;
                    v153 = v89;
                    v154 = v84;
                    v155 = v93;
                    v156 = v120;
                    outlined destroy of LocalePreferences(&v137);
                    v163 = __src[6];
                    v164[0] = __src[7];
                    *(v164 + 12) = *(&__src[7] + 12);
                    v159 = __src[2];
                    v160 = __src[3];
                    v161 = __src[4];
                    v162 = __src[5];
                    v157 = __src[0];
                    v158 = __src[1];
                    v40 = &v157;
                    goto LABEL_7;
                  }
                }

                else if (!v88)
                {
                  outlined init with copy of LocalePreferences?(v186, &v157);
                  outlined init with copy of LocalePreferences?(v188, &v157);
                  outlined init with copy of LocalePreferences?(&v175, &v157);
                  LOBYTE(v93) = v124;
                  v94 = v125;
                  goto LABEL_56;
                }

LABEL_54:
                outlined init with copy of LocalePreferences?(v186, &v157);
                outlined init with copy of LocalePreferences?(v188, &v157);
                outlined init with copy of LocalePreferences?(&v175, &v157);
                LOBYTE(v93) = v124;
                v94 = v125;
                goto LABEL_39;
              }
            }
          }

          else
          {
            LOBYTE(v84) = v122;
            if (!v68)
            {
              goto LABEL_33;
            }
          }

          outlined init with copy of LocalePreferences?(v186, &v157);
          outlined init with copy of LocalePreferences?(v188, &v157);
          outlined init with copy of LocalePreferences?(&v175, &v157);
          LOBYTE(v93) = v124;
LABEL_47:
          LOBYTE(v89) = v123;
          v94 = v125;
          goto LABEL_39;
        }
      }

      outlined init with copy of LocalePreferences?(v186, &v157);
      outlined init with copy of LocalePreferences?(v188, &v157);
      outlined init with copy of LocalePreferences?(&v175, &v157);
      LOBYTE(v93) = v124;
      LOBYTE(v84) = v122;
      goto LABEL_47;
    }

    if (!*(&v167 + 1))
    {
      goto LABEL_26;
    }

LABEL_38:
    outlined init with copy of LocalePreferences?(v186, &v157);
    outlined init with copy of LocalePreferences?(v188, &v157);
    outlined init with copy of LocalePreferences?(&v175, &v157);
    LOBYTE(v89) = v123;
    LOBYTE(v93) = v124;
    LOBYTE(v84) = v122;
    v94 = v50;
    v80 = v130;
LABEL_39:
    outlined destroy of TermOfAddress?(&v166, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_40:
    v137 = v136;
    *v138 = v165[0];
    *&v138[3] = *(v165 + 3);
    v139 = v135;
    v140 = v134;
    v141 = v133;
    v142 = v132;
    v143 = v127;
    v144 = v131;
    v145 = v126;
    v146 = v128;
    v147 = v121;
    v148 = v80;
    v149 = v94;
    v150 = v76;
    v151 = v75;
    v152 = v74;
    v153 = v89;
    v154 = v84;
    v155 = v93;
    v156 = v120;
    outlined destroy of LocalePreferences(&v137);
    v163 = __src[6];
    v164[0] = __src[7];
    *(v164 + 12) = *(&__src[7] + 12);
    v159 = __src[2];
    v160 = __src[3];
    v161 = __src[4];
    v162 = __src[5];
    v157 = __src[0];
    v158 = __src[1];
    v59 = &_s10Foundation17LocalePreferencesVSgMd;
    v60 = &_s10Foundation17LocalePreferencesVSgMR;
    v61 = &v157;
    goto LABEL_41;
  }

  return result;
}

uint64_t destroy for LocaleCache()
{
}

uint64_t assignWithTake for LocaleCache(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy156_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LocaleCache.State.IdentifierAndPrefs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 156))
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

uint64_t storeEnumTagSinglePayload for LocaleCache.State.IdentifierAndPrefs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 156) = 1;
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

    *(result + 156) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSu_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt16V_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    v18 = HIWORD(v6) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF0000) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 & 0x10000) != 0)
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5Tm(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

double LocalePreferences.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 33686018;
  return result;
}

void LocalePreferences.apply(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (v2 != 2)
  {
    *v1 = v2;
  }

  v30 = a1[136];
  v31 = a1[137];
  v32 = a1[138];
  v4 = a1[139];
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  v10 = *(a1 + 8);
  v24 = *(a1 + 9);
  v25 = *(a1 + 10);
  v26 = *(a1 + 11);
  v27 = *(a1 + 12);
  v28 = *(a1 + 13);
  v11 = *(a1 + 14);
  v22 = *(a1 + 2);
  v23 = *(a1 + 15);
  v29 = *(a1 + 16);
  if (v3)
  {

    *(v1 + 8) = v3;
  }

  if (v5)
  {

    *(v1 + 16) = v22;
    *(v1 + 24) = v5;
  }

  if (v7)
  {

    *(v1 + 32) = v6;
    *(v1 + 40) = v7;
  }

  if (v9)
  {

    *(v1 + 48) = v9;
  }

  if (v8)
  {

    *(v1 + 56) = v8;
  }

  if (v11)
  {

    *(v1 + 112) = v11;
  }

  if (v10)
  {
    v12 = *(v1 + 64);
    v13 = v10;

    *(v1 + 64) = v10;
  }

  if (v24)
  {
    v14 = *(v1 + 72);
    v15 = v24;

    *(v1 + 72) = v24;
  }

  if (v25)
  {
    v16 = *(v1 + 80);
    v17 = v25;

    *(v1 + 80) = v25;
  }

  if (v26)
  {
    v18 = *(v1 + 88);
    v19 = v26;

    *(v1 + 88) = v26;
  }

  if (v27)
  {
    v20 = *(v1 + 96);
    v21 = v27;

    *(v1 + 96) = v27;
  }

  if (v28)
  {

    *(v1 + 104) = v28;
  }

  if (v29)
  {

    *(v1 + 120) = v23;
    *(v1 + 128) = v29;
  }

  if (v30 != 2)
  {
    *(v1 + 136) = v30;
  }

  if (v31 == 2)
  {
    if (v32 == 2)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(v1 + 137) = v31;
    if (v32 == 2)
    {
LABEL_33:
      if (v4 == 2)
      {
        return;
      }

      goto LABEL_34;
    }
  }

  *(v1 + 138) = v32;
  if (v4 == 2)
  {
    return;
  }

LABEL_34:
  *(v1 + 139) = v4;
}

uint64_t LocalePreferences.languages.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t LocalePreferences.locale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LocalePreferences.collationOrder.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t LocalePreferences.firstWeekday.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t LocalePreferences.minDaysInFirstWeek.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void LocalePreferences.ICUSymbolsAndStrings.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v1[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[1])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (v1[2])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (v1[2])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v1[3])
    {
      goto LABEL_5;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v1[4])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (!v1[3])
  {
    goto LABEL_10;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  if (v1[4])
  {
LABEL_6:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    return;
  }

LABEL_11:
  Hasher._combine(_:)(0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalePreferences.ICUSymbolsAndStrings(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (v5)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalePreferences.ICUSymbolsAndStrings(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static LocalePreferences.ICUSymbolsAndStrings.== infix(_:_:)(v5, v7) & 1;
}

uint64_t LocalePreferences.dateFormats.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t LocalePreferences.numberSymbols.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t LocalePreferences.country.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t LocalePreferences.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

double LocalePreferences.init(metricUnits:languages:locale:collationOrder:firstWeekday:minDaysInFirstWeek:country:measurementUnits:temperatureUnit:force24Hour:force12Hour:numberSymbols:dateFormats:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, char *a13, __int16 a14, uint64_t a15, uint64_t a16)
{
  v16 = *a12;
  v17 = *a13;
  result = 0.0;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11;
  *(a9 + 136) = v16;
  *(a9 + 137) = v17;
  *(a9 + 138) = a14;
  *(a9 + 104) = a16;
  *(a9 + 112) = a15;
  *(a9 + 96) = 0;
  return result;
}

void LocalePreferences.hash(into:)(Swift::Int a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 3);
  v7 = *(v1 + 5);
  v6 = *(v1 + 6);
  v32 = *(v1 + 7);
  v33 = *(v1 + 8);
  v34 = *(v1 + 9);
  v35 = *(v1 + 10);
  v37 = *(v1 + 11);
  v38 = *(v1 + 12);
  v39 = *(v1 + 13);
  v40 = *(v1 + 14);
  v41 = *(v1 + 16);
  v8 = v1[136];
  v42 = v1[137];
  v43 = v1[138];
  v9 = v1[139];
  if (v3 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v3 & 1;
  }

  Hasher._combine(_:)(v10);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v4 + 16));
    v11 = *(v4 + 16);
    if (v11)
    {
      v12 = v4 + 40;
      do
      {

        String.hash(into:)();

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    v36 = v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v36 = v9;
    if (v5)
    {
LABEL_9:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
LABEL_12:
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v13 = v41;
    if (v6)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v6, v14, v15, v16, v17, v18, v19);
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v13 = v41;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  if (v32)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v32, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v33)
  {
    v26 = v8;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v34)
    {
      goto LABEL_22;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    v27 = v26;
    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v26 = v8;
  Hasher._combine(_:)(0);
  if (!v34)
  {
    goto LABEL_25;
  }

LABEL_22:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  v27 = v26;
  if (v35)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    goto LABEL_27;
  }

LABEL_26:
  Hasher._combine(_:)(0);
LABEL_27:
  if (v37)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    v28 = v40;
    if (v38)
    {
      goto LABEL_29;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v28 = v40;
    if (v38)
    {
LABEL_29:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (v39)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  Hasher._combine(_:)(0);
  if (v39)
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v39);
    if (v28)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  Hasher._combine(_:)(0);
  if (v28)
  {
LABEL_31:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v28);
    v29 = v36;
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  Hasher._combine(_:)(0);
  v29 = v36;
  if (v13)
  {
LABEL_32:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v27 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  Hasher._combine(_:)(0);
  if (v27 == 2)
  {
LABEL_33:
    Hasher._combine(_:)(0);
    if (v42 != 2)
    {
      goto LABEL_34;
    }

LABEL_42:
    Hasher._combine(_:)(0);
    if (v43 != 2)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_41:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27 & 1);
  if (v42 == 2)
  {
    goto LABEL_42;
  }

LABEL_34:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v42 & 1);
  if (v43 != 2)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    v30 = v43 & 1;
    goto LABEL_44;
  }

LABEL_43:
  v30 = 0;
LABEL_44:
  Hasher._combine(_:)(v30);
  if (v29 == 2)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v29 & 1;
  }

  Hasher._combine(_:)(v31);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalePreferences(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 3);
  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  v29 = *(v1 + 7);
  v30 = *(v1 + 8);
  v31 = *(v1 + 9);
  v32 = *(v1 + 10);
  v33 = *(v1 + 11);
  v34 = *(v1 + 12);
  v7 = *(v1 + 13);
  v8 = *(v1 + 14);
  v35 = v1[136];
  v36 = *(v1 + 16);
  v9 = v1[137];
  v37 = v1[138];
  v38 = v1[139];
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v2 & 1;
  }

  Hasher._combine(_:)(v10);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v3 + 16));
    v11 = *(v3 + 16);
    if (v11)
    {
      v12 = v3 + 40;
      do
      {

        String.hash(into:)();

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
LABEL_9:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
LABEL_12:
  if (v6)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v5)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v39, v5, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v29)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v39, v29, v19, v20, v21, v22, v23, v24);
    if (v30)
    {
      goto LABEL_20;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v30)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (v31)
      {
        goto LABEL_21;
      }

LABEL_25:
      v25 = v35;
      Hasher._combine(_:)(0);
      if (v32)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  Hasher._combine(_:)(0);
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_21:
  v25 = v35;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  if (v32)
  {
LABEL_22:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    goto LABEL_27;
  }

LABEL_26:
  Hasher._combine(_:)(0);
LABEL_27:
  if (v33)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v34)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v7)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v39, v7);
    if (v8)
    {
      goto LABEL_35;
    }

LABEL_38:
    Hasher._combine(_:)(0);
    if (v36)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  Hasher._combine(_:)(0);
  if (!v8)
  {
    goto LABEL_38;
  }

LABEL_35:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v39, v8);
  if (v36)
  {
LABEL_36:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_40;
  }

LABEL_39:
  Hasher._combine(_:)(0);
LABEL_40:
  if (v25 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v25 & 1);
  }

  if (v9 == 2)
  {
    Hasher._combine(_:)(0);
    if (v37 != 2)
    {
LABEL_45:
      Hasher._combine(_:)(1u);
      v26 = v37 & 1;
      goto LABEL_48;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v9 & 1);
    if (v37 != 2)
    {
      goto LABEL_45;
    }
  }

  v26 = 0;
LABEL_48:
  Hasher._combine(_:)(v26);
  if (v38 == 2)
  {
    v27 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v27 = v38 & 1;
  }

  Hasher._combine(_:)(v27);
  return Hasher._finalize()();
}

id _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SiTt1g5(void *a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7CA0] + 8;
  v5 = MEMORY[0x1E69E6530];

  swift_unknownObjectRetain();
  if (v5 == v4)
  {
    v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (!v6)
    {
      v7 = [a1 count];
      if (v7)
      {
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
        v9 = static _DictionaryStorage.allocate(capacity:)();
        v10 = v9[6];
        v11 = v9[7];

        [a1 _getObjects_andKeys_count_];
        if (v8 >= 1)
        {
          swift_unknownObjectRetain();
          _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
          swift_unknownObjectRelease();
        }

        result = swift_arrayDestroy();
        v13 = 0;
        if (v8 >= 0)
        {
          v9[2] = 0;

          v12 = 0;
          goto LABEL_8;
        }

        goto LABEL_19;
      }

      goto LABEL_12;
    }

LABEL_7:
    v12 = v6;
    v13 = 1;
LABEL_8:
    *a2 = v12;
    return v13;
  }

  v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v6)
  {
    goto LABEL_7;
  }

  v15 = [a1 count];
  if (!v15)
  {
LABEL_12:
    v13 = 1;
    v12 = MEMORY[0x1E69E7CC8];
    goto LABEL_8;
  }

  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v17 = static _DictionaryStorage.allocate(capacity:)();
  v18 = v17[6];
  v19 = v17[7];

  result = [a1 _getObjects_andKeys_count_];
  v20 = v16;
  if (v16 >= 1)
  {
    v20 = v16;
    swift_unknownObjectRetain();
    _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
    result = swift_unknownObjectRelease();
  }

  if (__OFSUB__(v16, v20))
  {
    goto LABEL_20;
  }

  result = swift_arrayDestroy();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17[2] = 0;

    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  __break(1u);
  __break(1u);
LABEL_19:
  __break(1u);
  __break(1u);
LABEL_20:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t specialized static LocalePreferences.ICUSymbolsAndStrings.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v5 = v4;
    v6 = static _CFObject.== infix(_:_:)();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (a1[1])
  {
    if (!v7)
    {
      return 0;
    }

    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v10 = *(a2 + 16);
  if (a1[2])
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v11 = v10;
    v12 = static _CFObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v13 = *(a2 + 24);
  if (a1[3])
  {
    if (!v13)
    {
      return 0;
    }

    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v14 = v13;
    v15 = static _CFObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v16 = *(a2 + 32);
  if (a1[4])
  {
    if (v16)
    {
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      v17 = v16;
      v18 = static _CFObject.== infix(_:_:)();

      if (v18)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static LocalePreferences.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v163 = *(a1 + 2);
  v181 = *(a1 + 3);
  v152 = *(a1 + 4);
  v171 = *(a1 + 5);
  v154 = *(a1 + 6);
  v151 = *(a1 + 7);
  v5 = *(a1 + 9);
  v150 = *(a1 + 8);
  v7 = *(a1 + 10);
  v6 = *(a1 + 11);
  v9 = *(a1 + 12);
  v8 = *(a1 + 13);
  v11 = *(a1 + 14);
  v10 = *(a1 + 15);
  v12 = *(a1 + 16);
  v13 = a1[136];
  v14 = a1[137];
  v15 = a1[138];
  v16 = a1[139];
  v17 = *a2;
  v18 = *(a2 + 1);
  v173 = *(a2 + 3);
  v155 = *(a2 + 4);
  v156 = *(a2 + 2);
  v172 = *(a2 + 5);
  v153 = *(a2 + 6);
  v182 = *(a2 + 7);
  v149 = *(a2 + 8);
  v19 = *(a2 + 10);
  v148 = *(a2 + 9);
  v20 = *(a2 + 11);
  v21 = *(a2 + 12);
  v22 = *(a2 + 13);
  v23 = *(a2 + 14);
  v25 = *(a2 + 15);
  v24 = *(a2 + 16);
  v26 = a2[136];
  v27 = a2[137];
  v28 = a2[138];
  v29 = a2[139];
  if (v3 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v17 == 2 || ((v17 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    v115 = v10;
    v119 = a2[137];
    v109 = a2[139];
    v111 = v13;
    v102 = a2[138];
    v143 = v14;
    v146 = v15;
    v31 = v16;
    v136 = v11;
    v138 = *(a2 + 14);
    v113 = a2[136];
    v32 = v12;
    v33 = *(a2 + 16);
    v124 = *(a2 + 15);
    v130 = *(a2 + 10);
    v34 = v8;
    v35 = *(a2 + 13);
    v36 = v9;
    v37 = v6;
    v38 = *(a2 + 11);
    v39 = v7;
    v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v18);
    v25 = v124;
    v19 = v130;
    v7 = v39;
    v20 = v38;
    v6 = v37;
    v9 = v36;
    v22 = v35;
    v8 = v34;
    v11 = v136;
    v23 = v138;
    v24 = v33;
    v12 = v32;
    v13 = v111;
    v26 = v113;
    v16 = v31;
    v15 = v146;
    v28 = v102;
    v29 = v109;
    v14 = v143;
    v27 = v119;
    v10 = v115;
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v147 = v15;
  if (v181)
  {
    v41 = v182;
    if (!v173)
    {
      return 0;
    }

    v144 = v14;
    if (v163 != v156 || v181 != v173)
    {
      v125 = v25;
      v88 = v24;
      v174 = v6;
      v139 = v23;
      v103 = v16;
      v81 = v12;
      v42 = v8;
      v95 = v22;
      v157 = v7;
      v164 = v20;
      v131 = v19;
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v182;
      v12 = v81;
      v25 = v125;
      v19 = v131;
      v7 = v157;
      v20 = v164;
      v6 = v174;
      v24 = v88;
      v22 = v95;
      v8 = v42;
      v23 = v139;
      v16 = v103;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v144 = v14;
    v41 = v182;
    if (v173)
    {
      return 0;
    }
  }

  if (v171)
  {
    if (!v172)
    {
      return 0;
    }

    if (v152 != v155 || v171 != v172)
    {
      v126 = v25;
      v89 = v24;
      v175 = v6;
      v140 = v23;
      v120 = v27;
      v104 = v16;
      v82 = v12;
      v44 = v8;
      v96 = v22;
      v158 = v7;
      v165 = v20;
      v45 = v19;
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v182;
      v12 = v82;
      v19 = v45;
      v7 = v158;
      v20 = v165;
      v6 = v175;
      v24 = v89;
      v22 = v96;
      v8 = v44;
      v25 = v126;
      v23 = v140;
      v16 = v104;
      v27 = v120;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v172)
  {
    return 0;
  }

  if (v154)
  {
    if (!v153)
    {
      return 0;
    }

    v121 = v27;
    v105 = v16;
    v141 = v23;
    v83 = v12;
    v90 = v24;
    v47 = v25;
    v48 = v8;
    v97 = v22;
    v176 = v6;
    v159 = v7;
    v166 = v20;
    v132 = v19;
    v49 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v154, v153);
    v41 = v182;
    v12 = v83;
    v19 = v132;
    v7 = v159;
    v20 = v166;
    v6 = v176;
    v24 = v90;
    v22 = v97;
    v8 = v48;
    v25 = v47;
    v23 = v141;
    v16 = v105;
    v27 = v121;
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v153)
  {
    return 0;
  }

  if (v151)
  {
    if (!v41)
    {
      return 0;
    }

    v122 = v27;
    v106 = v16;
    v142 = v23;
    v84 = v12;
    v91 = v24;
    v50 = v25;
    v51 = v8;
    v98 = v22;
    v177 = v6;
    v160 = v7;
    v167 = v20;
    v133 = v19;
    v52 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v151, v41);
    v12 = v84;
    v19 = v133;
    v7 = v160;
    v20 = v167;
    v6 = v177;
    v24 = v91;
    v22 = v98;
    v8 = v51;
    v25 = v50;
    v23 = v142;
    v16 = v106;
    v27 = v122;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  if (v150)
  {
    if (!v149)
    {
      return 0;
    }

    v123 = v27;
    v116 = v10;
    v107 = v16;
    v85 = v12;
    v92 = v24;
    v127 = v25;
    v78 = v8;
    v99 = v22;
    v178 = v6;
    v161 = v7;
    v168 = v20;
    v134 = v19;
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v53 = v13;
    v54 = v149;
    v55 = static _CFObject.== infix(_:_:)();

    v8 = v78;
    v25 = v127;
    v19 = v134;
    v7 = v161;
    v20 = v168;
    v6 = v178;
    v24 = v92;
    v22 = v99;
    v12 = v85;
    v13 = v53;
    v16 = v107;
    v10 = v116;
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v123 = v27;
    if (v149)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v148)
    {
      return 0;
    }

    v117 = v10;
    v108 = v16;
    v86 = v12;
    v93 = v24;
    v128 = v25;
    v79 = v8;
    v100 = v22;
    v179 = v6;
    v162 = v7;
    v169 = v20;
    v135 = v19;
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v56 = v13;
    v57 = v148;
    v58 = static _CFObject.== infix(_:_:)();

    v25 = v128;
    v19 = v135;
    v7 = v162;
    v20 = v169;
    v6 = v179;
    v24 = v93;
    v22 = v100;
    v8 = v79;
    v12 = v86;
    v13 = v56;
    v16 = v108;
    v10 = v117;
    if ((v58 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v148)
  {
    return 0;
  }

  v118 = v10;
  v114 = v26;
  v94 = v24;
  v101 = v22;
  v129 = v25;
  v137 = v11;
  v80 = v8;
  if (v7)
  {
    v170 = v20;
    v180 = v6;
    v145 = v21;
    if (!v19)
    {
      return 0;
    }

    v59 = v12;
    v60 = v13;
    v61 = v16;
    v62 = v19;
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v63 = v62;
    v64 = static _CFObject.== infix(_:_:)();

    v16 = v61;
    v13 = v60;
    v12 = v59;
    v6 = v180;
    v21 = v145;
    v20 = v170;
    if ((v64 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v110 = v29;
  v112 = v13;
  v87 = v12;
  if (v6)
  {
    v65 = v144;
    v66 = v147;
    if (!v20)
    {
      return 0;
    }

    v67 = v9;
    v68 = v16;
    v69 = v20;
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v70 = v69;
    v71 = static _CFObject.== infix(_:_:)();

    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v67 = v9;
    v65 = v144;
    v66 = v147;
    v68 = v16;
    if (v20)
    {
      return 0;
    }
  }

  if (v67)
  {
    if (!v21)
    {
      return 0;
    }

    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    v72 = v21;
    v73 = static _CFObject.== infix(_:_:)();

    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v80)
  {
    if (!v101)
    {
      return 0;
    }

    v74 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(v80, v101);

    if ((v74 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  if (v137)
  {
    if (!v23)
    {
      return 0;
    }

    v75 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(v137, v23);

    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v87)
  {
    if (!v94 || (v118 != v129 || v87 != v94) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_77;
  }

  if (v94)
  {
    return 0;
  }

LABEL_77:
  if (v112 == 2)
  {
    if (v114 != 2)
    {
      return 0;
    }
  }

  else if (v114 == 2 || ((v114 ^ v112) & 1) != 0)
  {
    return 0;
  }

  if (v65 == 2)
  {
    if (v123 != 2)
    {
      return 0;
    }
  }

  else if (v123 == 2 || ((v123 ^ v65) & 1) != 0)
  {
    return 0;
  }

  if (v66 == 2)
  {
    v76 = v68;
    v77 = v110;
    if (v28 != 2)
    {
      return 0;
    }

LABEL_92:
    if (v76 == 2)
    {
      if (v77 != 2)
      {
        return 0;
      }
    }

    else if (v77 == 2 || ((v77 ^ v76) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v28 != 2)
  {
    v76 = v68;
    v77 = v110;
    if (((v28 ^ v66) & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalePreferences and conformance LocalePreferences()
{
  result = lazy protocol witness table cache variable for type LocalePreferences and conformance LocalePreferences;
  if (!lazy protocol witness table cache variable for type LocalePreferences and conformance LocalePreferences)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalePreferences and conformance LocalePreferences);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalePreferences and conformance LocalePreferences;
  if (!lazy protocol witness table cache variable for type LocalePreferences and conformance LocalePreferences)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalePreferences and conformance LocalePreferences);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalePreferences.MeasurementUnit and conformance LocalePreferences.MeasurementUnit()
{
  result = lazy protocol witness table cache variable for type LocalePreferences.MeasurementUnit and conformance LocalePreferences.MeasurementUnit;
  if (!lazy protocol witness table cache variable for type LocalePreferences.MeasurementUnit and conformance LocalePreferences.MeasurementUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalePreferences.MeasurementUnit and conformance LocalePreferences.MeasurementUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalePreferences.TemperatureUnit and conformance LocalePreferences.TemperatureUnit()
{
  result = lazy protocol witness table cache variable for type LocalePreferences.TemperatureUnit and conformance LocalePreferences.TemperatureUnit;
  if (!lazy protocol witness table cache variable for type LocalePreferences.TemperatureUnit and conformance LocalePreferences.TemperatureUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalePreferences.TemperatureUnit and conformance LocalePreferences.TemperatureUnit);
  }

  return result;
}

__n128 __swift_memcpy140_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LocalePreferences.ICUSymbolsAndStrings(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalePreferences.ICUSymbolsAndStrings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalePreferences.ICUSymbolsAndStrings and conformance LocalePreferences.ICUSymbolsAndStrings()
{
  result = lazy protocol witness table cache variable for type LocalePreferences.ICUSymbolsAndStrings and conformance LocalePreferences.ICUSymbolsAndStrings;
  if (!lazy protocol witness table cache variable for type LocalePreferences.ICUSymbolsAndStrings and conformance LocalePreferences.ICUSymbolsAndStrings)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalePreferences.ICUSymbolsAndStrings and conformance LocalePreferences.ICUSymbolsAndStrings);
  }

  return result;
}

uint64_t _LocaleProtocol.regionCode.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 376))(&v7, a1);
  v2 = v8;
  if (!v8)
  {
    return 0;
  }

  v4 = v9;
  v3 = v10;
  v5 = v7;

  outlined consume of Locale.LanguageCode?(v5, v2, v4, v3);
  return v5;
}

double _LocaleUnlocalized.language.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = String.lowercased()();
  v3 = String.uppercased()();
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  *a1 = xmmword_18123DD50;
  *(a1 + 16) = v2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *&result = 3223600;
  *(a1 + 64) = xmmword_18123DD60;
  *(a1 + 80) = v3;
  return result;
}

uint64_t _LocaleUnlocalized.__deallocating_deinit()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v7[0] = v1;
  *(v7 + 12) = *(v0 + 140);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  outlined destroy of LocalePreferences?(v6);
  return swift_deallocClassInstance();
}

__n128 protocol witness for _LocaleProtocol.init(identifier:prefs:) in conformance _LocaleUnlocalized(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = swift_allocObject();
  v5 = *(a3 + 112);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 128) = v5;
  *(v4 + 140) = *(a3 + 124);
  v6 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v6;
  v7 = *(a3 + 80);
  *(v4 + 80) = *(a3 + 64);
  *(v4 + 96) = v7;
  result = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = result;
  return result;
}

_OWORD *protocol witness for _LocaleProtocol.init(name:prefs:disableBundleMatching:) in conformance _LocaleUnlocalized(uint64_t a1, uint64_t a2, __int128 *a3)
{

  v4 = swift_allocObject();
  v12 = a3[6];
  *v13 = a3[7];
  *&v13[12] = *(a3 + 124);
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  v6 = *a3;
  v7 = a3[1];
  _NSBundleDeallocatingImmortalBundle();
  v4[7] = v12;
  v4[8] = *v13;
  *(v4 + 140) = *&v13[12];
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  v4[1] = v6;
  v4[2] = v7;
  return v4;
}

_OWORD *protocol witness for _LocaleProtocol.init(components:) in conformance _LocaleUnlocalized(const void *a1)
{
  v2 = swift_allocObject();
  memcpy(v8, a1, sizeof(v8));
  outlined destroy of Locale.Components(v8);
  _s10Foundation17LocalePreferencesVSgWOi0_(v9);
  v3 = v10[0];
  v2[7] = v9[6];
  v2[8] = v3;
  *(v2 + 140) = *(v10 + 12);
  v4 = v9[3];
  v2[3] = v9[2];
  v2[4] = v4;
  v5 = v9[5];
  v2[5] = v9[4];
  v2[6] = v5;
  v6 = v9[1];
  v2[1] = v9[0];
  v2[2] = v6;
  return v2;
}

uint64_t protocol witness for _LocaleProtocol.exemplarCharacterSet.getter in conformance _LocaleUnlocalized(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v1 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v1 + 16), v5);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v5[1];
  ObjectType = swift_getObjectType();
  (*(v2 + 184))(ObjectType, v2);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.measurementSystem.getter in conformance _LocaleUnlocalized@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for metric != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B00F8;
  v2 = xmmword_1EA7B0100;
  *a1 = static Locale.MeasurementSystem.metric;
  a1[1] = v1;
  *(a1 + 1) = v2;
}

uint64_t protocol witness for _LocaleProtocol.numberingSystem.getter in conformance _LocaleUnlocalized@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for latn != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EA7AE6E0;
  v2 = xmmword_1EA7AE6E8;
  *a1 = static Locale.NumberingSystem.latn;
  a1[1] = v1;
  *(a1 + 1) = v2;
}

uint64_t protocol witness for _LocaleProtocol.availableNumberingSystems.getter in conformance _LocaleUnlocalized()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_181218E20;
  if (one-time initialization token for latn != -1)
  {
    swift_once();
  }

  v1 = unk_1EA7AE6E0;
  v2 = xmmword_1EA7AE6E8;
  *(v0 + 32) = static Locale.NumberingSystem.latn;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;

  return v0;
}

double protocol witness for _LocaleProtocol.weekendRange.getter in conformance _LocaleUnlocalized@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 86400.0;
  *(a1 + 16) = xmmword_18123DD70;
  *(a1 + 32) = xmmword_181232B70;
  *(a1 + 48) = 0;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.collation.getter in conformance _LocaleUnlocalized@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for standard != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B7188;
  v2 = xmmword_1EA7B7190;
  *a1 = static Locale.Collation.standard;
  a1[1] = v1;
  *(a1 + 1) = v2;
}

double protocol witness for _LocaleProtocol.region.getter in conformance _LocaleUnlocalized@<D0>(uint64_t a1@<X8>)
{
  v2 = String.uppercased()();
  *&result = 3223600;
  *a1 = xmmword_18123DD60;
  *(a1 + 16) = v2;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.prefs.getter in conformance _LocaleUnlocalized@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[8];
  v20 = v1[7];
  v21[0] = v3;
  *(v21 + 12) = *(v1 + 140);
  v4 = v1[2];
  v5 = v1[4];
  v16 = v1[3];
  v6 = v16;
  v17 = v5;
  v7 = v1[4];
  v8 = v1[6];
  v18 = v1[5];
  v9 = v18;
  v19 = v8;
  v10 = v1[2];
  v15[0] = v1[1];
  v11 = v15[0];
  v15[1] = v10;
  v12 = v1[8];
  a1[6] = v20;
  a1[7] = v12;
  *(a1 + 124) = *(v1 + 140);
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v2;
  *a1 = v11;
  a1[1] = v4;
  return outlined init with copy of LocalePreferences?(v15, &v14);
}

uint64_t protocol witness for _LocaleProtocol.bridgeToNSLocale() in conformance _LocaleUnlocalized(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v1 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v6[1];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 488))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t Locale.Weekday.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 8) >= 0xFFFFFFF9)
  {
    *a2 = outlined read-only object #0 of one-time initialization function for weekdays[result + 31];
  }

  else
  {
    *a2 = 7;
  }

  return result;
}

{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if ((result - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    *a2 = outlined read-only object #0 of one-time initialization function for weekdays[result + 31];
  }

  else
  {
    *a2 = 7;
  }

  return result;
}

uint64_t Locale.Weekday.icuIndex.getter()
{
  result = specialized Collection<>.firstIndex(of:)(*v0, outlined read-only object #0 of one-time initialization function for weekdays);
  if (v2)
  {
    goto LABEL_5;
  }

  if (__OFADD__(result++, 1))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *Locale.HourCycle.init(rawValue:)@<X0>(uint64_t *__return_ptr a1@<X8>, Swift::String string@<0:X0, 8:X1>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *a1 = v7;
  return result;
}

uint64_t *Locale.Weekday.init(rawValue:)@<X0>(uint64_t *__return_ptr a1@<X8>, Swift::String string@<0:X0, 8:X1>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.Weekday.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *a1 = v7;
  return result;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  for (i = (a5 + 56); ; i += 4)
  {
    v10 = *(i - 1) == a3 && *i == a4;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v5 == ++v8)
    {
      return 0;
    }
  }

  return v8;
}

__n128 Locale.Components.init(languageCode:script:languageRegion:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 96) = 27;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 1031;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = a2[1];
  *(a4 + 32) = *a2;
  *(a4 + 48) = v9;
  result = *a3;
  v11 = *(a3 + 16);
  *(a4 + 64) = *a3;
  *(a4 + 80) = v11;
  return result;
}

uint64_t Locale.Collation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  result = a3();
  a4[2] = result;
  a4[3] = v6;
  return result;
}

uint64_t Locale.Script.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::String *a3@<X8>)
{
  a3->_countAndFlagsBits = a1;
  a3->_object = a2;

  String.init<A>(_:)();
  v4 = String._capitalized()();

  a3[1] = v4;
  return result;
}

uint64_t Locale.Components.languageComponents.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return outlined init with copy of Locale.Language.Components(v9, &v8);
}

void Locale.Components.collation.getter(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.collation.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[13], v1[14], v1[15], v1[16]);
  result = *a1;
  *(v1 + 15) = *(a1 + 16);
  *(v1 + 13) = result;
  return result;
}

void Locale.Components.currency.getter(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.currency.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[17], v1[18], v1[19], v1[20]);
  result = *a1;
  *(v1 + 19) = *(a1 + 16);
  *(v1 + 17) = result;
  return result;
}

void Locale.Components.numberingSystem.getter(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.numberingSystem.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[21], v1[22], v1[23], v1[24]);
  result = *a1;
  *(v1 + 23) = *(a1 + 16);
  *(v1 + 21) = result;
  return result;
}

void Locale.Components.measurementSystem.getter(uint64_t *a1@<X8>)
{
  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.measurementSystem.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[26], v1[27], v1[28], v1[29]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 13) = *a1;
  *(v1 + 14) = v4;
  return result;
}

void Locale.Components.region.getter(uint64_t *a1@<X8>)
{
  v2 = v1[30];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[33];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.region.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[30], v1[31], v1[32], v1[33]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 15) = *a1;
  *(v1 + 16) = v4;
  return result;
}

void Locale.Components.subdivision.getter(uint64_t *a1@<X8>)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[37];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.subdivision.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[34], v1[35], v1[36], v1[37]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 17) = *a1;
  *(v1 + 18) = v4;
  return result;
}

uint64_t Locale.Components.timeZone.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_unknownObjectRelease();
  *(v1 + 304) = v2;
  *(v1 + 312) = v3;
  return result;
}

void Locale.Components.variant.getter(uint64_t *a1@<X8>)
{
  v2 = v1[40];
  v3 = v1[41];
  v4 = v1[42];
  v5 = v1[43];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Components.variant.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[40], v1[41], v1[42], v1[43]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 20) = *a1;
  *(v1 + 21) = v4;
  return result;
}

uint64_t static Locale.Subdivision.subdivision(for:)@<X0>(uint64_t *a1@<X0>, Swift::String *a2@<X8>)
{
  v5 = *a1;

  MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
  *a2 = v5;
  v4 = String.lowercased()();
  result = v4._countAndFlagsBits;
  a2[1] = v4;
  return result;
}

unint64_t Locale.Components.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x7369766964627573;
    v6 = 0x656E6F5A656D6974;
    if (a1 != 10)
    {
      v6 = 0x746E6169726176;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6C63794372756F68;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0x6E6F69676572;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7261646E656C6163;
    v2 = 0x79636E6572727563;
    v3 = 0x6E697265626D756ELL;
    if (a1 != 4)
    {
      v3 = 0x7961447473726966;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x6F6974616C6C6F63;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Locale.Components.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Locale.Components.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Components.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Components.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Components.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation6LocaleV10ComponentsV10CodingKeys33_BFF28DEA2E1A79B78E7508A27E6F7AC8LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation6LocaleV10ComponentsV10CodingKeys33_BFF28DEA2E1A79B78E7508A27E6F7AC8LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = v1[3];
  v84 = v1[2];
  v85 = v7;
  v8 = v1[5];
  v86 = v1[4];
  v87 = v8;
  v9 = v1[1];
  v82 = *v1;
  v83 = v9;
  v63 = *(v1 + 96);
  v10 = *(v1 + 13);
  v61 = *(v1 + 14);
  v62 = v10;
  v11 = *(v1 + 16);
  v59 = *(v1 + 15);
  v60 = v11;
  v12 = *(v1 + 18);
  v55 = *(v1 + 17);
  v56 = v12;
  v13 = *(v1 + 19);
  v57 = *(v1 + 20);
  v58 = v13;
  v14 = *(v1 + 22);
  v51 = *(v1 + 21);
  v52 = v14;
  v15 = *(v1 + 23);
  v53 = *(v1 + 24);
  v54 = v15;
  LODWORD(v15) = *(v1 + 200);
  v49 = *(v1 + 201);
  v50 = v15;
  v16 = *(v1 + 26);
  v17 = *(v1 + 27);
  v18 = *(v1 + 29);
  v47 = *(v1 + 28);
  v48 = v17;
  v45 = v16;
  v46 = v18;
  v19 = *(v1 + 30);
  v43 = *(v1 + 31);
  v44 = v19;
  v20 = *(v1 + 32);
  v41 = *(v1 + 33);
  v42 = v20;
  v21 = *(v1 + 34);
  v39 = *(v1 + 35);
  v40 = v21;
  v22 = *(v1 + 36);
  v37 = *(v1 + 37);
  v38 = v22;
  v23 = *(v1 + 38);
  v35 = *(v1 + 39);
  v36 = v23;
  v24 = *(v1 + 40);
  v33 = *(v1 + 41);
  v34 = v24;
  v25 = *(v1 + 42);
  v31 = *(v1 + 43);
  v32 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of Locale.Language.Components(&v82, &v76);
  lazy protocol witness table accessor for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v78 = v84;
  v79 = v85;
  v80 = v86;
  v81 = v87;
  v76 = v82;
  v77 = v83;
  v75 = 0;
  lazy protocol witness table accessor for type Locale.Language.Components and conformance Locale.Language.Components();
  v26 = v88;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v26)
  {
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v69 = v76;
    v70 = v77;
    outlined destroy of Locale.Language.Components(&v69);
  }

  else
  {
    v28 = v61;
    v29 = v62;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v69 = v76;
    v70 = v77;
    outlined destroy of Locale.Language.Components(&v69);
    LOBYTE(v64) = v63;
    v68 = 1;
    lazy protocol witness table accessor for type Calendar.Identifier and conformance Calendar.Identifier();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v64 = v29;
    v65 = v28;
    v66 = v59;
    v67 = v60;
    v68 = 2;
    outlined copy of Locale.LanguageCode?(v29, v28, v59, v60);
    lazy protocol witness table accessor for type Locale.Collation and conformance Locale.Collation();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
    v64 = v55;
    v65 = v56;
    v66 = v58;
    v67 = v57;
    v68 = 3;
    outlined copy of Locale.LanguageCode?(v55, v56, v58, v57);
    lazy protocol witness table accessor for type Locale.Currency and conformance Locale.Currency();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
    v64 = v51;
    v65 = v52;
    v66 = v54;
    v67 = v53;
    v68 = 4;
    outlined copy of Locale.LanguageCode?(v51, v52, v54, v53);
    lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
    LOBYTE(v64) = v50;
    v68 = 5;
    lazy protocol witness table accessor for type Locale.Weekday and conformance Locale.Weekday();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v64) = v49;
    v68 = 6;
    lazy protocol witness table accessor for type Locale.HourCycle and conformance Locale.HourCycle();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v64 = v45;
    v65 = v48;
    v66 = v47;
    v67 = v46;
    v68 = 7;
    outlined copy of Locale.LanguageCode?(v45, v48, v47, v46);
    lazy protocol witness table accessor for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
    v64 = v44;
    v65 = v43;
    v66 = v42;
    v67 = v41;
    v68 = 8;
    outlined copy of Locale.LanguageCode?(v44, v43, v42, v41);
    lazy protocol witness table accessor for type Locale.Region and conformance Locale.Region();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
    v64 = v40;
    v65 = v39;
    v66 = v38;
    v67 = v37;
    v68 = 9;
    outlined copy of Locale.LanguageCode?(v40, v39, v38, v37);
    lazy protocol witness table accessor for type Locale.Subdivision and conformance Locale.Subdivision();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
    v64 = v36;
    v65 = v35;
    v68 = 10;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v64 = v34;
    v65 = v33;
    v66 = v32;
    v67 = v31;
    v68 = 11;
    outlined copy of Locale.LanguageCode?(v34, v33, v32, v31);
    lazy protocol witness table accessor for type Locale.Variant and conformance Locale.Variant();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Locale.LanguageCode?(v64, v65, v66, v67);
  }

  return (*(v4 + 8))(v6, v3);
}