uint64_t one-time initialization function for playlistCovers()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.playlistCovers);
  __swift_project_value_buffer(v0, static Logger.playlistCovers);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for playlistCovers != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.playlistCovers);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV3hue_AC10saturationAC10brightnessAC5alphatMd, &_s12CoreGraphics7CGFloatV3hue_AC10saturationAC10brightnessAC5alphatMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV3hue_AC10saturationAC10brightnessAC5alphatMd, &_s12CoreGraphics7CGFloatV3hue_AC10saturationAC10brightnessAC5alphatMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25MRGroupSessionParticipant_pMd, &_sSo25MRGroupSessionParticipant_pMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd, &_sSS3key_SS5valuetMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *v13;
      v14 = *v13 == v10 && *(v13 + 8) == v11;
      if (v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v15;
      *(v13 + 24) = v16;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        specialized Array.remove(at:)(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v5 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        specialized Array.remove(at:)(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

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
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_2 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      NewAByxGyFSnySiG_Tgq5_2 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(NewAByxGyFSnySiG_Tgq5_2);
    }

    v76 = NewAByxGyFSnySiG_Tgq5_2 + 16;
    v77 = *(NewAByxGyFSnySiG_Tgq5_2 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &NewAByxGyFSnySiG_Tgq5_2[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  NewAByxGyFSnySiG_Tgq5_2 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1(0, *(NewAByxGyFSnySiG_Tgq5_2 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_2);
    }

    v5 = *(NewAByxGyFSnySiG_Tgq5_2 + 2);
    v30 = *(NewAByxGyFSnySiG_Tgq5_2 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      NewAByxGyFSnySiG_Tgq5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1((v30 > 1), v5 + 1, 1, NewAByxGyFSnySiG_Tgq5_2);
    }

    *(NewAByxGyFSnySiG_Tgq5_2 + 2) = v31;
    v32 = NewAByxGyFSnySiG_Tgq5_2 + 32;
    v33 = &NewAByxGyFSnySiG_Tgq5_2[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(NewAByxGyFSnySiG_Tgq5_2 + 4);
          v35 = *(NewAByxGyFSnySiG_Tgq5_2 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &NewAByxGyFSnySiG_Tgq5_2[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &NewAByxGyFSnySiG_Tgq5_2[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(NewAByxGyFSnySiG_Tgq5_2 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(NewAByxGyFSnySiG_Tgq5_2 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(NewAByxGyFSnySiG_Tgq5_2 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &NewAByxGyFSnySiG_Tgq5_2[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t specialized static PlaylistCovers.hexRepresentation(for:)()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2EB0;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return String.init(format:_:)(0x323025586C323025, 0xEF586C323025586CLL, v5);
}

uint64_t specialized static PlaylistCovers.Source.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  type metadata accessor for PlaylistCovers.Source(0);
  __chkstk_darwin();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO6SourceO_AEtMd, &_s9MusicCore14PlaylistCoversO6SourceO_AEtMR);
  __chkstk_darwin();
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of PlaylistCovers.Source(a1, &v20 - v12);
  outlined init with copy of PlaylistCovers.Source(a2, &v13[v15]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PlaylistCovers.Source(v13, v9);
    v16 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8MusicKit8PlaylistV5EntryV_Tt1g5(v16, *&v13[v15]);

LABEL_9:
      outlined destroy of PlaylistCovers.Source(v13);
      return v17 & 1;
    }
  }

  else
  {
    outlined init with copy of PlaylistCovers.Source(v13, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      type metadata accessor for Track();
      lazy protocol witness table accessor for type Song and conformance Song(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v17 = static MusicItemCollection<>.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v11, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v11, v4);
  }

  outlined destroy of TaskPriority?(v13, &_s9MusicCore14PlaylistCoversO6SourceO_AEtMd, &_s9MusicCore14PlaylistCoversO6SourceO_AEtMR);
  v17 = 0;
  return v17 & 1;
}

id specialized static PlaylistCovers.color(from:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for NSScanner.NumberRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = NSScanner.scanUInt64(representation:)();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (one-time initialization token for playlistCovers != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.playlistCovers);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlaylistCovers.Source;
  if (!type metadata singleton initialization cache for PlaylistCovers.Source)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PlaylistCovers.Source(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors);
  }

  return result;
}

void type metadata completion function for PlaylistCovers.Source(uint64_t a1)
{
  type metadata accessor for MusicItemCollection<Track>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Playlist.Entry](319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for MusicItemCollection<Track>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MusicItemCollection<Track>)
  {
    type metadata accessor for Track();
    v1 = type metadata accessor for MusicItemCollection();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MusicItemCollection<Track>);
    }
  }
}

void type metadata accessor for [Playlist.Entry](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Playlist.Entry])
  {
    type metadata accessor for Playlist.Entry();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Playlist.Entry]);
    }
  }
}

uint64_t outlined init with copy of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(char *a1)
{
  v40 = a1;

  specialized MutableCollection<>.sort(by:)(&v40);
  v1 = v40;
  v2 = *(v40 + 16);
  if (v2)
  {
    v3 = (v40 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v38 = *v3;
        v36 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1);
          v4 = v40;
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v38;
        if (v6 >= v5 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
          v7 = v38;
          v4 = v40;
        }

        *(v4 + 2) = v6 + 1;
        v8 = &v4[32 * v6];
        *(v8 + 2) = v36;
        *(v8 + 3) = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v40 = v4;

  specialized MutableCollection<>.sort(by:)(&v40);

  v10 = v40;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v40 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = *(v10 + 2);
        v24 = (v10 + 32);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v37 = v22;
      v39 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14;
      if ((v26 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1);
        v14 = v40;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v18 = v37;
      v17 = v39;
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v18 = v37;
        v17 = v39;
        v14 = v40;
      }

      *(v14 + 2) = v16 + 1;
      v19 = &v14[32 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v40 = v14;
  specialized Array.append<A>(contentsOf:)(v10);
  v27 = v40;
  v28 = *(v40 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_36;
  }

  v40 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    *(v30 + 32);
    v32;
    v33;
    v35 = v34;
LABEL_36:

    return;
  }

LABEL_44:
  __break(1u);

  __break(1u);
}

uint64_t specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:), 0, 0);
}

uint64_t specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:)()
{
  v125 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v118 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v120 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v119 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v115 = UIColor.hsba.getter();
  v116 = v23;
  v25 = v24;

  v121 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v59 = v14 + 0.2;
      v60 = v16 + 0.1;
      v61 = 1.0;
      if (v59 > 1.0)
      {
LABEL_54:
        if (v60 <= v61)
        {
          v62 = v19 + 0.1;
          v59 = 1.0;
          if (v62 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v62 = v19 + 0.1;
        v60 = 1.0;
        v59 = v61;
        if (v62 <= 1.0)
        {
LABEL_64:
          v61 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v61 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v62 = 1.0;
        goto LABEL_64;
      }

      if (v60 > 1.0)
      {
        v61 = v59;
        goto LABEL_59;
      }

      v62 = v19 + 0.1;
LABEL_62:
      if (v62 <= v61)
      {
        v67 = v21 + 0.2;
        if (v67 <= v61)
        {
          v66 = v25 + 0.2;
          v63 = 1.0;
          v64 = v9;
          if (v66 <= 1.0)
          {
            v65 = v116 + 0.6;
            if (v116 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v61 = v67;
LABEL_68:
          v65 = v116 + 0.6;
          v66 = v63;
          v67 = v61;
          if (v116 + 0.6 <= 1.0)
          {
LABEL_70:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMR);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_1004F2EE0;
            *(v68 + 32) = v118;
            *(v68 + 40) = v121;
            *(v68 + 48) = v64;
            *(v68 + 56) = v11;
            *(v68 + 64) = v120;
            *(v68 + 72) = v59;
            *(v68 + 80) = v60;
            *(v68 + 88) = 0x3FF0000000000000;
            *(v68 + 96) = v119;
            *(v68 + 104) = v62;
            *(v68 + 112) = v67;
            *(v68 + 120) = 0x3FF0000000000000;
            *(v68 + 128) = v115;
            *(v68 + 136) = v66;
            *(v68 + 144) = v65;
            *(v68 + 152) = 0x3FF0000000000000;
            specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(v68);
            v70 = v69;
            v72 = v71;
            v74 = v73;
            v76 = v75;

            if (one-time initialization token for playlistCovers != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            __swift_project_value_buffer(v77, static Logger.playlistCovers);
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = v76;
            v43 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v43, v78))
            {
              goto LABEL_97;
            }

            v45 = swift_slowAlloc();
            v122 = v78;
            v46 = swift_slowAlloc();
            v124 = v46;
            *v45 = 136446210;
            v79 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
            v81 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v79, v80, &v124);

            *(v45 + 4) = v81;
            v50 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v65 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v63 = v25 + 0.2;
        v64 = v9;
        if (v63 > 1.0)
        {
          v63 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1004F2EE0;
      *(v29 + 32) = v118;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v120;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v119;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v115;
      *(v29 + 136) = v28;
      *(v29 + 144) = v116;
      *(v29 + 152) = 0x3FF0000000000000;
      specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(v29);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if (one-time initialization token for playlistCovers != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.playlistCovers);
      v39 = v31;
      v40 = v33;
      v41 = v35;
      v42 = v37;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_97;
      }

      v45 = swift_slowAlloc();
      v122 = v44;
      v46 = swift_slowAlloc();
      v124 = v46;
      *v45 = 136446210;
      v47 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
      v49 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v48, &v124);

      *(v45 + 4) = v49;
      v50 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v43, v122, v50, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v117 = v9;
      v51 = v14 + 0.3;
      v52 = v16 + 0.2;
      v53 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v54 = v119;
        if (v52 <= 1.0)
        {
          v55 = v121 + 0.5;
          v56 = v117 + 0.2;
          v57 = 1.0;
          v114 = v11;
          if (v121 + 0.5 <= 1.0)
          {
            if (v56 <= 1.0)
            {
              v58 = v118;
              v93 = -0.5;
              if (v119 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v58 = v118;
            goto LABEL_87;
          }

          v58 = v118;
          v55 = 1.0;
          if (v56 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v57 = v56;
          goto LABEL_87;
        }
      }

      else
      {
        v51 = 1.0;
        v54 = v119;
        if (v52 <= 1.0)
        {
          v53 = v16 + 0.2;
        }
      }

      v55 = v121 + 0.5;
      v56 = v117 + 0.2;
      v57 = 1.0;
      v114 = v11;
      if (v121 + 0.5 <= 1.0)
      {
        if (v56 <= 1.0)
        {
          v58 = v118;
          v93 = -0.5;
          v52 = v53;
          if (v54 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v58 = v118;
        v52 = v53;
        goto LABEL_87;
      }

      v58 = v118;
      v52 = v53;
      v55 = 1.0;
      if (v56 > 1.0)
      {
LABEL_87:
        v93 = -0.5;
        v56 = v57;
        if (v54 >= 0.5)
        {
LABEL_89:
          v94 = v54 + v93;
          if (v21 + 0.8 <= 1.0)
          {
            v95 = v21 + 0.8;
          }

          else
          {
            v95 = 1.0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMR);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_1004F2EE0;
          *(v96 + 32) = v58;
          *(v96 + 40) = v121;
          *(v96 + 48) = v117;
          *(v96 + 56) = v114;
          *(v96 + 64) = v120;
          *(v96 + 72) = v51;
          *(v96 + 80) = v52;
          *(v96 + 88) = 0x3FF0000000000000;
          *(v96 + 96) = v58;
          *(v96 + 104) = v55;
          *(v96 + 112) = v56;
          *(v96 + 120) = 0x3FF0000000000000;
          *(v96 + 128) = v94;
          *(v96 + 136) = v19;
          *(v96 + 144) = v95;
          *(v96 + 152) = 0x3FF0000000000000;
          specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(v96);
          v98 = v97;
          v100 = v99;
          v102 = v101;
          v104 = v103;

          if (one-time initialization token for playlistCovers != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          __swift_project_value_buffer(v105, static Logger.playlistCovers);
          v39 = v98;
          v40 = v100;
          v41 = v102;
          v42 = v104;
          v43 = Logger.logObject.getter();
          v106 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v43, v106))
          {
            goto LABEL_97;
          }

          v107 = swift_slowAlloc();
          v123 = v1;
          v124 = swift_slowAlloc();
          v108 = v124;
          *v107 = 136446210;
          v109 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
          v111 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v109, v110, &v124);

          *(v107 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v43, v106, "Using recipe 1 colors=%{public}s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v108);
          v1 = v123;
          goto LABEL_96;
        }

LABEL_88:
        v93 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v59 = v14 + 0.2;
    v60 = v16 + 0.1;
    v61 = 1.0;
    if (v59 > 1.0)
    {
      goto LABEL_54;
    }

    v62 = v19 + 0.1;
    if (v60 > 1.0)
    {
      v60 = 1.0;
      if (v62 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v116 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (one-time initialization token for playlistCovers != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.playlistCovers);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v124 = v86;
    *v85 = 136446210;
    if (one-time initialization token for blackAndWhiteColors != -1)
    {
      swift_once();
    }

    v87 = PlaylistCovers.RecipeColors.description.getter(static PlaylistCovers.Specs.blackAndWhiteColors, *algn_10063D708, qword_10063D710, qword_10063D718);
    v89 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v87, v88, &v124);

    *(v85 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "Using black and white colors=%{public}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
  }

  if (one-time initialization token for blackAndWhiteColors != -1)
  {
    swift_once();
  }

  v90 = *algn_10063D708;
  v92 = qword_10063D710;
  v91 = qword_10063D718;
  v39 = static PlaylistCovers.Specs.blackAndWhiteColors;
  v40 = v90;
  v41 = v92;
  v42 = v91;
LABEL_98:
  v112 = v1[1];

  return v112(v39, v40, v41, v42);
}

uint64_t outlined destroy of PlaylistCovers.Source(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Song and conformance Song(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = specialized static UIAlertController.alertController(with:overrideStyle:)(&a1->title.value._countAndFlagsBits, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v19 = v4;
  if (v6)
  {
    v7 = *(v2 + 88);
    v8 = one-time initialization token for logger;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static PresentationSource.logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Deferring presentation…", v12, 2u);
    }

    v13 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_36;
    v14 = _Block_copy(aBlock);
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    outlined init with copy of PresentationSource(v2, aBlock);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    outlined init with take of PresentationSource(aBlock, v16 + 24);
    *(v16 + 120) = v19;
    *(v16 + 128) = style;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v19;
    v6(v2, v18, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v4, style, 1, 0, 0);
  }
}

void *PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    UIViewController.noticePresenting.getter(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      __swift_project_boxed_opaque_existential_0Tm(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    else
    {
      return outlined destroy of TaskPriority?(v8, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = *(v5 + 88);
    v13 = one-time initialization token for logger;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static PresentationSource.logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Deferring presentation…", v17, 2u);
    }

    v18 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_3_2;
    v19 = _Block_copy(aBlock);
    v20 = [v18 initWithTimeout:v19 interruptionHandler:10.0];
    _Block_release(v19);

    outlined init with copy of PresentationSource(v6, aBlock);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    outlined init with take of PresentationSource(aBlock, v21 + 24);
    *(v21 + 120) = a1;
    *(v21 + 128) = a2 & 1;
    *(v21 + 129) = a3 & 1;
    *(v21 + 136) = a4;
    *(v21 + 144) = a5;
    v22 = v20;
    v23 = a1;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);
    v11(v6, v23, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v21);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11, v12);
  }

  else
  {
    v24 = (a2 & 1);
    v25 = (a3 & 1);

    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(a1, v24, v25, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      outlined destroy of PresentationSource.Position(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}

__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return PresentationSource.viewController.modify;
}

void PresentationSource.viewController.modify(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 72));
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 88));
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_1004F2ED0;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s9MusicCore18PresentationSourceV8PositionVSgMd, &_s9MusicCore18PresentationSourceV8PositionVSgMR);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v230 = v6;
    LODWORD(v228) = a2;
    v229 = a3;
    a3 = Strong;
    v18 = [a3 presentedViewController];
    a2 = a3;
    if (v18)
    {
      v19 = a3;
      do
      {
        a2 = v18;

        v18 = [a2 presentedViewController];
        v19 = a2;
      }

      while (v18);
    }

    v20 = [a2 transitionCoordinator];
    if (v20)
    {
      v6 = v20;
      if (one-time initialization token for logger == -1)
      {
LABEL_8:
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static PresentationSource.logger);
        v22 = a1;
        swift_unknownObjectRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v225 = v23;
          v26 = v25;
          v226 = swift_slowAlloc();
          *&v238 = v226;
          *v26 = 136446466;
          v27 = v22;
          v227 = v22;
          v28 = v27;
          v29 = [v27 description];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LODWORD(v224) = v24;
          v31 = a3;
          v32 = a5;
          v33 = v30;
          v34 = a4;
          v36 = v35;

          v37 = v33;
          a5 = v32;
          a3 = v31;
          v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v37, v36, &v238);
          a4 = v34;

          *(v26 + 4) = v38;
          *(v26 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37UIViewControllerTransitionCoordinator_pMd, &_sSo37UIViewControllerTransitionCoordinator_pMR);
          v39 = String.init<A>(describing:)();
          v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v39, v40, &v238);
          v22 = v227;

          *(v26 + 14) = v41;
          v42 = v225;
          _os_log_impl(&_mh_execute_header, v225, v224, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v26, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        outlined init with copy of PresentationSource(v230, &v238);
        v75 = swift_allocObject();
        *(v75 + 16) = v6;
        *(v75 + 24) = v22;
        outlined init with take of PresentationSource(&v238, v75 + 32);
        *(v75 + 128) = v228 & 1;
        *(v75 + 129) = v229 & 1;
        *(v75 + 136) = a4;
        *(v75 + 144) = a5;
        *&v233 = partial apply for closure #1 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
        *(&v233 + 1) = v75;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        *(&v232 + 1) = &block_descriptor_33_0;
        v76 = _Block_copy(&aBlock);
        v77 = v22;
        swift_unknownObjectRetain();
        outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);

        [v6 animateAlongsideTransition:0 completion:v76];
        _Block_release(v76);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v56 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v56];
      v57 = type metadata accessor for UIViewController.WeakViewControllerReference();
      v58 = objc_allocWithZone(v57);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v237.receiver = v58;
      v237.super_class = v57;
      v59 = objc_msgSendSuper2(&v237, "init");
      if (one-time initialization token for playActivityRecommendationDataSourceViewController != -1)
      {
        swift_once();
      }

      v227 = a4;
      objc_setAssociatedObject(a1, static AssociatedKeys.playActivityRecommendationDataSourceViewController, v59, 1);
      v226 = v56;

      v60 = v230;
      v61 = v230[8];
      if (v61)
      {
        v61(a1);
      }

      v222 = a5;
      v217 = [a1 modalPresentationStyle];
      objc_opt_self();
      v221 = swift_dynamicCastObjCClass();
      v62 = a1;
      v64 = v60[1];
      v63 = v60[2];
      v66 = v60[3];
      v65 = v60[4];
      v68 = v60[5];
      v67 = v60[6];
      v69 = v60[7];
      objc_opt_self();
      v70 = v62;
      v71 = swift_dynamicCastObjCClass();
      v224 = v64;
      v223 = v66;
      v230 = v65;
      v72 = v65;
      v73 = v68;
      v225 = v69;
      outlined copy of PresentationSource.Position?(v64, v63, v66, v72, v68, v67);
      if (v71)
      {
        v74 = [v71 preferredStyle] == 0;
      }

      else
      {
        v74 = 0;
      }

      v104 = v67;
      v105 = v226;
      v220 = v70;
      v106 = v63;
      if (v67 == 0xFF && !v221)
      {
        v107 = v220;
        if ([v220 modalPresentationStyle] == 7)
        {
          v108 = [v107 popoverPresentationController];
          if (v108)
          {
            v109 = v108;
            v218 = a3;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v110 = type metadata accessor for Logger();
            __swift_project_value_buffer(v110, static PresentationSource.logger);
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
            }

            v114 = [v109 sourceItem];
            if (v114)
            {
              v115 = v114;
              swift_unknownObjectRetain();
              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v219 = swift_slowAlloc();
                *&v238 = v219;
                *v118 = 136446210;
                *&aBlock = v115;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo41UIPopoverPresentationControllerSourceItem_pMd, &_sSo41UIPopoverPresentationControllerSourceItem_pMR);
                v119 = String.init<A>(describing:)();
                v221 = v106;
                v121 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v119, v120, &v238);
                v216 = v109;
                v122 = v117;
                v123 = v121;

                *(v118 + 4) = v123;
                _os_log_impl(&_mh_execute_header, v116, v122, "Using sourceItem=%{public}s as the position", v118, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v219);

                outlined consume of PresentationSource.Position?(v224, v221, v223, v230, v73, v104);
              }

              else
              {
                outlined consume of PresentationSource.Position?(v224, v106, v223, v230, v73, v104);
              }

              v106 = 0;
              v223 = 0;
              v230 = 0;
              v73 = 0;
              v225 = 15;
              v104 = 2;
              v224 = v115;
              a3 = v218;
            }

            else
            {
              v124 = [v109 sourceView];
              a3 = v218;
              if (v124)
              {
                v125 = v124;
                v221 = v106;
                v126 = v124;
                v127 = Logger.logObject.getter();
                v128 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v216 = v129;
                  v219 = swift_slowAlloc();
                  *&v238 = v219;
                  *v129 = 136446210;
                  v130 = v126;
                  v131 = [v130 description];
                  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v215 = v127;
                  v133 = v132;
                  v214 = v128;
                  v135 = v134;

                  a3 = v218;
                  v136 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v133, v135, &v238);

                  v137 = v216;
                  *(v216 + 4) = v136;
                  v138 = v215;
                  _os_log_impl(&_mh_execute_header, v215, v214, "Using sourceView=%{public}s as the position", v137, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v219);
                }

                else
                {
                }

                [v109 sourceRect];
                v143 = v142;
                v145 = v144;
                v147 = v146;
                v149 = v148;
                outlined consume of PresentationSource.Position?(v224, v221, v223, v230, v73, v104);

                v104 = 0;
                v106 = v143;
                v223 = v145;
                v230 = v147;
                v73 = v149;
                v225 = 15;
                v224 = v125;
              }

              else
              {
                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v221 = v106;
                  *v141 = 0;
                  v106 = v221;
                }
              }
            }
          }
        }
      }

      v150 = [v105 view];
      if (!v150)
      {
        __break(1u);
        return;
      }

      v151 = v150;
      v152 = [v150 window];

      v221 = v106;
      v219 = v73;
      v153 = v220;
      if (v152 && (v154 = [v152 traitCollection], v152, v155 = objc_msgSend(v154, "horizontalSizeClass"), v154, v155 == 2) && (v228 & 1) != 0)
      {
        if (v104 == 0xFF)
        {
          LOBYTE(v156) = [v153 modalPresentationStyle] == 7;
          goto LABEL_71;
        }

        v156 = 1;
      }

      else
      {
        v156 = 0;
        if (v104 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v238 = v224;
      *(&v238 + 1) = v106;
      *&v239 = v223;
      *(&v239 + 1) = v230;
      *&v240 = v73;
      BYTE8(v240) = v104;
      v241 = v225;
      if (PresentationSource.Position.canPresent(from:)(v105))
      {
        if ((v156 | v74))
        {
          v218 = a3;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v157 = type metadata accessor for Logger();
          v158 = __swift_project_value_buffer(v157, static PresentationSource.logger);
          v159 = v153;
          v228 = v158;
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            *&aBlock = v217;
            *v162 = 136446210;
            v163 = v159;
            v164 = [v163 description];
            v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = v166;

            v168 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v165, v167, &aBlock);

            *(v162 + 4) = v168;
            v106 = v221;
            __swift_destroy_boxed_opaque_existential_0Tm(v217);
          }

          v169 = v227;
          v170 = v218;
          v171 = v223;
          v172 = v224;
          [v159 setModalPresentationStyle:7];
          v173 = [v159 popoverPresentationController];
          if (v173)
          {
            v217 = v159;

            v174 = v172;
            v175 = v172;
            v176 = v230;
            v177 = v219;
            outlined copy of PresentationSource.Position?(v174, v106, v171, v230, v219, v104);
            outlined copy of PresentationSource.Position.Source(v175, v106, v171, v176, v177, v104);
            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.default.getter();
            v228 = v104;
            v180 = v178;
            v181 = v179;
            outlined consume of PresentationSource.Position?(v175, v106, v171, v176, v177, v104);
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v236 = v183;
              *v182 = 136446210;
              aBlock = v238;
              v232 = v239;
              v233 = v240;
              v234 = v241;
              LOBYTE(v104) = v228;
              outlined copy of PresentationSource.Position.Source(v175, v106, v223, v176, v177, v228);
              v184 = String.init<A>(describing:)();
              v186 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v184, v185, &v236);
              v106 = v221;

              *(v182 + 4) = v186;
              _os_log_impl(&_mh_execute_header, v180, v181, "Configuring viewController with popover position=%{public}s", v182, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v183);
              v171 = v223;
              v169 = v227;

              v170 = v218;
            }

            else
            {

              LOBYTE(v104) = v228;
            }

            v201 = v217;
            v235 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
            v202 = swift_dynamicCastObjCProtocolConditional();
            v172 = v224;
            v153 = v220;
            if (v202)
            {
              v203 = v202;
              v204 = v201;
              v205 = [v204 presentationController];
              if (v205)
              {
                v206 = v205;
                [v205 setDelegate:v203];

                v106 = v221;
              }
            }

            v207 = [v201 popoverPresentationController];
            if (v207)
            {
              v208 = v207;
              v209 = v230;
              if (v104)
              {
                if (v104 == 1)
                {
                  [v207 setBarButtonItem:v172];
                }

                else
                {
                  [v207 setSourceItem:v172];
                }
              }

              else
              {
                v210 = v219;
                v211 = v219;
                [v207 setSourceView:v224];
                [v208 setSourceRect:{*&v106, *&v171, *&v209, *&v211}];
                v212 = v210;
                v172 = v224;
                outlined consume of PresentationSource.Position?(v224, v106, v171, v209, v212, v104);
              }

              [v208 setPermittedArrowDirections:v225];

              outlined consume of PresentationSource.Position?(v172, v106, v171, v230, v219, v104);
            }

            else
            {
              outlined consume of PresentationSource.Position?(v172, v106, v171, v230, v219, v104);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v156) = 0;
      }

LABEL_71:
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        [v187 setAllowsCustomPresentationStyle:1];
        v188 = 2;
      }

      else
      {
        v188 = v217;
        if (v217 == -2)
        {
          v189 = [v105 traitCollection];
          [v189 horizontalSizeClass];
        }

        else if (((v217 == 7) & v156) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v188 = 3;
          }

          else
          {
            v188 = 7;
          }
        }
      }

      v190 = a3;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v191 = type metadata accessor for Logger();
      __swift_project_value_buffer(v191, static PresentationSource.logger);
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v236 = v188;
        type metadata accessor for UIModalPresentationStyle(0);
        v196 = String.init<A>(describing:)();
        v198 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&_mh_execute_header, v192, v193, "Presenting viewController with style=%{public}s", v194, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v195);
        v106 = v221;
      }

      v169 = v227;
      v170 = v190;
      v171 = v223;
      [v153 setModalPresentationStyle:v188];
      v172 = v224;
LABEL_84:
      if (v169)
      {
        *&v233 = v169;
        *(&v233 + 1) = v222;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = thunk for @escaping @callee_guaranteed () -> ();
        *(&v232 + 1) = &block_descriptor_27;
        v199 = _Block_copy(&aBlock);
        v106 = v221;
      }

      else
      {
        v199 = 0;
      }

      v200 = v226;
      [v226 presentViewController:v153 animated:v229 & 1 completion:v199];

      _Block_release(v199);
      outlined consume of PresentationSource.Position?(v172, v106, v171, v230, v219, v104);
      return;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static PresentationSource.logger);
    v79 = a1;
    v80 = a2;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v218 = a3;
      v84 = v83;
      *&v238 = swift_slowAlloc();
      *v84 = 136446466;
      v85 = v79;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v227 = a4;
      v88 = v87;
      v222 = a5;
      v90 = v89;

      v91 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v88, v90, &v238);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2082;
      v92 = v80;
      v93 = [v92 description];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v94;
      a4 = v227;
      v98 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v97, v96, &v238);
      a5 = v222;

      *(v84 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v81, v82, "Attempted to present %{public}s, but need to dismiss %{public}s first", v84, 0x16u);
      swift_arrayDestroy();

      a3 = v218;
    }

    outlined init with copy of PresentationSource(v230, &v238);
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v79;
    outlined init with take of PresentationSource(&v238, v99 + 32);
    *(v99 + 128) = v228 & 1;
    v100 = v229 & 1;
    *(v99 + 129) = v100;
    *(v99 + 136) = a4;
    *(v99 + 144) = a5;
    *&v233 = partial apply for closure #2 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(&v233 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v232 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v232 + 1) = &block_descriptor_24_1;
    v101 = _Block_copy(&aBlock);
    v102 = v79;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);
    v103 = v80;

    [v103 dismissViewControllerAnimated:v100 completion:v101];
    _Block_release(v101);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static PresentationSource.logger);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v238 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = a4;
      v54 = v53;

      v55 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v54, &v238);
      a4 = v52;

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
    }

    if (a4)
    {
      a4();
    }
  }
}

void closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static PresentationSource.logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static PresentationSource.logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void closure #1 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, void (*a7)(void), uint64_t a8)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static PresentationSource.logger);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  v41 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v40 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37UIViewControllerTransitionCoordinator_pMd, &_sSo37UIViewControllerTransitionCoordinator_pMR);
    v17 = String.init<A>(describing:)();
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v40;
  }

  v29 = *(a4 + 80);
  if (v29)
  {
    v30 = *(a4 + 88);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_36_1;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    outlined init with copy of PresentationSource(a4, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    outlined init with take of PresentationSource(aBlock, v37 + 24);
    *(v37 + 120) = v41;
    *(v37 + 128) = a5 & 1;
    *(v37 + 129) = a6 & 1;
    *(v37 + 136) = a7;
    *(v37 + 144) = a8;
    v38 = v41;
    v39 = v36;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a7, a8);
    v29(a4, v38, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v37);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v29, v30);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v41, (a5 & 1), (a6 & 1), a7, a8);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void closure #2 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, void *a2, uint64_t a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static PresentationSource.logger);
  v12 = a1;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v42 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v41 = a3;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    a3 = v41;
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v42;
  }

  v30 = *(a3 + 80);
  if (v30)
  {
    v31 = *(a3 + 88);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Deferring presentation…", v34, 2u);
    }

    v35 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_43_1;
    v36 = _Block_copy(aBlock);
    v37 = [v35 initWithTimeout:v36 interruptionHandler:10.0];
    _Block_release(v36);

    outlined init with copy of PresentationSource(a3, aBlock);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    outlined init with take of PresentationSource(aBlock, v38 + 24);
    *(v38 + 120) = v13;
    *(v38 + 128) = a4 & 1;
    *(v38 + 129) = a5 & 1;
    *(v38 + 136) = a6;
    *(v38 + 144) = a7;
    v39 = v13;
    v40 = v37;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a6, a7);
    v30(a3, v39, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v38);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30, v31);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v13, (a4 & 1), (a5 & 1), a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      UIPopoverPresentationControllerSourceItem.frame(in:)();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        outlined destroy of PresentationSource.Position(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        outlined destroy of PresentationSource.Position(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    outlined destroy of PresentationSource.Position(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  outlined destroy of PresentationSource.Position(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t protocol witness for AlertPresenting.present(_:) in conformance PresentationSource(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(protocol witness for AlertPresenting.present(_:) in conformance PresentationSource, v4, v3);
}

uint64_t protocol witness for AlertPresenting.present(_:) in conformance PresentationSource()
{
  v1 = *(v0 + 16);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

double thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of PresentationSource.Position?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceV8PositionVSgMd, &_s9MusicCore18PresentationSourceV8PositionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PresentationSource.Position?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceV8PositionVSgMd, &_s9MusicCore18PresentationSourceV8PositionVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions()
{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PresentationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSource.Position(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationSource.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSource.Position.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationSource.Position.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100236D40()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

id outlined copy of PresentationSource.Position?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of PresentationSource.Position.Source(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id outlined copy of PresentationSource.Position.Source(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

void outlined consume of PresentationSource.Position?(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined consume of PresentationSource.Position.Source(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_100236E38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[0] = a6;
  v16[1] = a7;
  v8 = *a1;
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v16 - v11;
  View.modifier<A>(_:)();
  type metadata accessor for PresentedViewState(0, *(v8 + 80), v13, v14);
  v16[2] = a5;
  v16[3] = v16[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  View.environmentObject<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PresentedViewState.isPresented.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for PresentedViewState.isPresented : <A>PresentedViewState<A>@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return OptionalObservableObject.output.modify;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return PresentedViewState.$isPresented.modify;
}

void PresentedViewState.$isPresented.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9[-v4];
  v6 = direct field offset for PresentedViewState._isPresented;
  v7 = *(v1 + 80);
  v9[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

void PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v13 - v9, a1, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  v12 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v12, v10, v6);
  swift_endAccess();
  if (a2)
  {
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  else
  {
    PresentedViewState.isPresented.setter(1);
  }
}

uint64_t *PresentedViewState.deinit()
{
  v1 = direct field offset for PresentedViewState._isPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100237C14@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void type metadata completion function for PresentedViewState(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100237D80(void *a1)
{
  v1 = a1[1];
  type metadata accessor for ModifiedContent();
  type metadata accessor for PresentedViewState(255, v1, v2, v3);
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t NoticePresenting.present(_:internalOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v9);
  (*(a4 + 8))(v9, a2, a3, a4);
  return outlined destroy of Notice(v9);
}

void UIViewController.noticePresenting.getter(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      UIViewController.noticePresenting.getter(a1);
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  type metadata accessor for MainActor();
  *(v2 + 272) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(PresentedViewState<A>.present(_:), v6, v5);
}

uint64_t PresentedViewState<A>.present(_:)()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  outlined init with copy of Alert(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  static Published.subscript.setter();
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = PresentedViewState<A>.present(_:);
  v5 = v0[8];

  return v7(v5, v2, v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(PresentedViewState<A>.present(_:), v3, v2);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of URL?(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    outlined assign with take of URL?(v8, v7 + v9);
    swift_endAccess();
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t protocol witness for AlertPresenting.present(_:) in conformance <A> PresentedViewState<A>(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t one-time initialization function for noticePresenting()
{
  result = swift_slowAlloc();
  static UIWindowScene.AssociatedObjectKeys.noticePresenting = result;
  return result;
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for noticePresenting != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, static UIWindowScene.AssociatedObjectKeys.noticePresenting))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    outlined destroy of TaskPriority?(v6, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pMd, &_s9MusicCore16NoticePresenting_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (one-time initialization token for noticePresenting != -1)
  {
    swift_once();
  }

  v3 = static UIWindowScene.AssociatedObjectKeys.noticePresenting;
  outlined init with copy of NoticePresenting?(a1, v12);
  v4 = v13;
  if (v13)
  {
    __swift_project_boxed_opaque_existential_0Tm(v12, v13);
    v5 = *(v4 - 8);
    v6 = __chkstk_darwin();
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, 1);
  swift_unknownObjectRelease();
  return outlined destroy of TaskPriority?(a1, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
}

uint64_t outlined init with copy of NoticePresenting?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return UIWindowScene.noticePresenting.modify;
}

void UIWindowScene.noticePresenting.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of NoticePresenting?(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    outlined destroy of TaskPriority?(v2, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t outlined destroy of Notice(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized closure #1 in PresentedViewState.present(_:animated:)(uint64_t a1)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(PresentedViewState<A>.present(_:), v5, v4);
}

uint64_t protocol witness for ShareSheetPresenting.present(_:) in conformance <A> PresentedViewState<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t ShareSheetModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v29 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAUtFQOyAA01_f9Modifier_D0Vy9MusicCore010ShareSheetR033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_A0__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAUtFQOyAA01_f9Modifier_D0Vy9MusicCore010ShareSheetR033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_A0__GMR);
  __chkstk_darwin();
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAQtFQOyAA01_C16Modifier_ContentVy9MusicCore010ShareSheetO033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_Md, &_s7SwiftUI4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAQtFQOyAA01_C16Modifier_ContentVy9MusicCore010ShareSheetO033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_MR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*a3 + 96);
  swift_beginAccess();
  outlined init with copy of URL?(a3 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of URL?(v12);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMR);
    (*(*(v18 - 8) + 16))(v28, v29, v18);
    swift_storeEnumTagMultiPayload();
    v19 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShareSheetModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v31 = v18;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMR);
    v26 = v7;
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PresentedViewState<URL> and conformance PresentedViewState<A>, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMR, &protocol conformance descriptor for PresentedViewState<A>);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v25 = a4;
    v27 = v13;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMR);
    v24 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShareSheetModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v21 = v16;
    View.sharingPicker(isPresented:item:subject:message:)();

    v22 = v26;
    (*(v8 + 16))(v28, v10, v26);
    swift_storeEnumTagMultiPayload();
    v31 = v23;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v8 + 8))(v10, v22);
    return (*(v14 + 8))(v21, v27);
  }
}

void key path getter for PresentedViewState.isPresented : PresentedViewState<URL>(_BYTE *a2@<X8>)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for PresentedViewState.isPresented : PresentedViewState<URL>(char *a1, uint64_t *a2)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double View.shareSheetPresenting(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PresentedViewState<URL> and conformance PresentedViewState<A>, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMR, &protocol conformance descriptor for PresentedViewState<A>);
  ObservedObject.init(wrappedValue:)();
  View.modifier<A>(_:)();

  return result;
}

uint64_t sub_10023958C(void *a1)
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ShareSheetModifier and conformance ShareSheetModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ShareSheetModifier and conformance ShareSheetModifier()
{
  result = lazy protocol witness table cache variable for type ShareSheetModifier and conformance ShareSheetModifier;
  if (!lazy protocol witness table cache variable for type ShareSheetModifier and conformance ShareSheetModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareSheetModifier and conformance ShareSheetModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAStFQOyAA01_e9Modifier_D0Vy9MusicCore010ShareSheetQ033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_AZGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAStFQOyAA01_e9Modifier_D0Vy9MusicCore010ShareSheetQ033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_AZGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShareSheetModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(27);

  swift_getMetatypeMetadata();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  swift_getMetatypeMetadata();
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000014;
}

void *LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  outlined copy of LibraryContentConfiguration<A>?<A, B>(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

double outlined copy of LibraryContentConfiguration<A>?<A, B>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v6 = a1;
    v7 = a2;
  }

  return result;
}

void LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined consume of LibraryContentConfiguration<A>?<A, B>(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
}

double outlined consume of LibraryContentConfiguration<A>?<A, B>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

void LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15, uint64_t a16, uint64_t a17)
{
  v25[160] = a12 & 1;
  v25[152] = a15 & 1;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v30 = a10;
  *&v31 = a11;
  BYTE8(v31) = a12 & 1;
  v32 = a13;
  v33 = a14;
  LOBYTE(v34) = a15 & 1;
  *(&v34 + 1) = 0;
  v35 = 0;
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  v36[5] = a6;
  v36[6] = a7;
  v36[7] = a8;
  v37 = a10;
  v38 = a11;
  v39 = a12 & 1;
  v40 = a13;
  v41 = a14;
  v42 = a15 & 1;
  v43 = 0;
  v44 = 0;
  v18 = type metadata accessor for LibraryModelRequest(0, a16, a17, a4);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v25, &v26, v18);
  (*(v19 + 8))(v36, v18);
  v20 = v33;
  *(a9 + 96) = v32;
  *(a9 + 112) = v20;
  *(a9 + 128) = v34;
  *(a9 + 144) = v35;
  v21 = v29;
  *(a9 + 32) = v28;
  *(a9 + 48) = v21;
  v22 = v31;
  *(a9 + 64) = v30;
  *(a9 + 80) = v22;
  result = *&v26;
  v24 = v27;
  *a9 = v26;
  *(a9 + 16) = v24;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21MPModelLibraryRequestCMd, &_sSo21MPModelLibraryRequestCMR);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  ModelRequest.configure(_:)(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet, MPIdentifierSet_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet, MPIdentifierSet_ptr);
    v8 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelObject, MPModelObject_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    outlined copy of LibraryContentConfiguration<A>?<A, B>(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
    outlined copy of LibraryContentConfiguration<A>?<A, B>(v4, v5, v6, v7);
    outlined consume of LibraryContentConfiguration<A>?<A, B>(v4, v5, v6, v7);
    outlined consume of LibraryContentConfiguration<A>?<A, B>(v8, v9, v11, v10);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  outlined copy of LibraryContentConfiguration<A>?<A, B>(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  outlined copy of LibraryContentConfiguration<A>?<A, B>(v4, v5, v6, v7);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  outlined consume of LibraryContentConfiguration<A>?<A, B>(v4, v5, v6, v7);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo13MPModelObjectC_Tt1g5(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelKind, MPModelKind_ptr);
    v14 = a5;
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo16NSSortDescriptorC_Tt1g5(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15MPIdentifierSetC_Tt1g5(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

double protocol witness for ModelRequest.section.getter in conformance LibraryModelRequest<A, B>@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of LibraryContentConfiguration<A>?<A, B>(v2, v3, v4, v5);
}

double protocol witness for ModelRequest.item.getter in conformance LibraryModelRequest<A, B>@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;

  return result;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t instantiation function for generic protocol witness table for LibraryModelRequest<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LibraryContentConfiguration<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for LibraryModelRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore27LibraryContentConfigurationVyxGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryModelRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryModelRequest(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LibraryModelRequest.Filter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LibraryModelRequest.Filter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for LibraryModelRequest.Filter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LibraryContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void ModelRequest.configure(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v46 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v14 = __chkstk_darwin();
  v16 = &v46 - v15;
  v17 = *(a3 + 56);
  v55 = v3;
  v58 = a2;
  v48 = v17;
  (v17)(a2, a3, v14);
  v18 = *(v8 - 8);
  v57 = *(v18 + 48);
  v19 = v57(v16, 1, v8);
  v51 = v9;
  v49 = v10;
  if (v19 == 1)
  {
    (*(v10 + 8))(v16, v9);
    v20 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = (*(AssociatedConformanceWitness + 24))(v8, AssociatedConformanceWitness);
    (*(v18 + 8))(v16, v8);
  }

  [v59 setSectionKind:v20];

  v22 = v48;
  v48(v58, a3);
  v23 = v57(v13, 1, v8);
  v24 = v50;
  if (v23 == 1)
  {
    v25 = 0;
    v26 = v49;
    v27 = v51;
  }

  else
  {
    v28 = swift_getAssociatedConformanceWitness();
    v25 = (*(v28 + 32))(v8, v28);
    v26 = v18;
    v27 = v8;
  }

  (*(v26 + 8))(v13, v27);
  [v59 setSectionProperties:v25];

  v22(v58, a3);
  if (v57(v24, 1, v8) == 1)
  {
    (*(v49 + 8))(v24, v51);
  }

  else
  {
    v29 = swift_getAssociatedConformanceWitness();
    v30 = (*(v29 + 56))(v8, v29);
    (*(v18 + 8))(v24, v8);
    if (v30)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSSortDescriptor, NSSortDescriptor_ptr);
      v31.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_12;
    }
  }

  v31.super.isa = 0;
LABEL_12:
  [v59 setSectionSortDescriptors:v31.super.isa];

  v57 = *(a3 + 64);
  v32 = v52;
  v33 = v58;
  (v57)(v58, a3);
  v34 = AssociatedTypeWitness;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = v35[3](v34, v35);
  v47 = a3;
  v54 = *(v54 + 8);
  (v54)(v32, v34);
  v37 = v59;
  [v59 setItemKind:v36];

  v38 = a3;
  v39 = v57;
  (v57)(v33, v38);
  v40 = v35[4](v34, v35);
  v41 = v32;
  v42 = v54;
  (v54)(v41, v34);
  [v37 setItemProperties:v40];

  v43 = v53;
  v39(v33, v47);
  v44 = v35[7](v34, v35);
  v42(v43, v34);
  if (v44)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSSortDescriptor, NSSortDescriptor_ptr);
    v45.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v45.super.isa = 0;
  }

  [v59 setItemSortDescriptors:v45.super.isa];
}

double protocol witness for Request.perform(_:_:) in conformance LibraryModelRequest<A, B>@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = *(a4 + 16);
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MPModelLibraryResponse<A, B>, Error>, @guaranteed RequestResponseInvalidatable?) -> (), v9, a4, WitnessTable, x8_0);

  return result;
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = partial apply for closure #1 in ModelRequest.perform(_:_:);
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_37;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (one-time initialization token for ModelRequestQueue != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSOperation, NSOperation_ptr);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id one-time initialization function for ModelRequestQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for ModelRequestQueue != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

uint64_t closure #1 in ModelRequest.perform(_:_:)(void *a1, uint64_t a2, void (*a3)(Swift::Int, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (!a1)
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure();
      v10 = swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v17 = 0;
      v18 = 1;
      goto LABEL_9;
    }

LABEL_7:
    lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure();
    v10 = swift_allocError();
    *v20 = v7;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v7 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  if (!v9)
  {
    if (!v7)
    {
      v28 = a1;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MPModelResponseCMd, &_sSo15MPModelResponseCMR);
      WitnessTable = swift_getWitnessTable();
      v24 = specialized String.init<A>(describing:)(&v28, v22, WitnessTable);
      v26 = v25;
      lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure();
      v10 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      v18 = 1;
      *(v27 + 16) = 1;
      swift_errorRetain();
      v7 = 0;
      v17 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004F2400;
  v12 = MPModelResponseDidInvalidateNotification;
  v13.location = MPModelResponseDidInvalidateNotification;
  v13.length = v10;
  v14 = CFRange.init(_:)(v13);
  *(v11 + 56) = &type metadata for NotificationTrigger;
  *(v11 + 64) = &protocol witness table for NotificationTrigger;
  *(v11 + 32) = v14;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v15 = a1;
  v16 = v12;
  v7 = BindingRequestResponseInvalidation.init(triggers:)(v11);
  v17 = lazy protocol witness table accessor for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation();
  v18 = 0;
LABEL_9:
  a3(v10, v18, v7, v17);
  outlined consume of Result<A.ResultContent, Error><A>(v10, v18);
  outlined consume of Result<A.ResultContent, Error><A>(v10, v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_10023B6FC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MPModelLibraryResponse<A, B>, Error>, @guaranteed RequestResponseInvalidatable?) -> ()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure()
{
  result = lazy protocol witness table cache variable for type ModelRequestFailure and conformance ModelRequestFailure;
  if (!lazy protocol witness table cache variable for type ModelRequestFailure and conformance ModelRequestFailure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelRequestFailure and conformance ModelRequestFailure);
  }

  return result;
}

void outlined consume of Result<A.ResultContent, Error><A>(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation()
{
  result = lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation;
  if (!lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation)
  {
    type metadata accessor for BindingRequestResponseInvalidation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19ModelRequestFailure33_8A1376CE9C4D710355983652056232D0LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t static Request.label.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();

  return _typeName(_:qualified:)();
}

double Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, partial apply for closure #1 in Request.performThenCompleteOnMain(_:_:), v10, a4, a5);

  return result;
}

uint64_t closure #1 in Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v16 = type metadata accessor for Result();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v30 - v19;
  type metadata accessor for OS_dispatch_queue();
  v31 = static OS_dispatch_queue.main.getter();
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = a7;
  v23 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  aBlock[4] = partial apply for closure #1 in closure #1 in Request.performThenCompleteOnMain(_:_:);
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_38;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v39 + 8))(v11, v27);
  return (*(v37 + 8))(v14, v38);
}

uint64_t sub_10023BD54()
{

  return swift_deallocObject();
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5[7] = type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd, &_s9MusicCore28RequestResponseInvalidatable_pSgMR);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(Request.response(previousRevision:), 0, 0);
}

uint64_t Request.response(previousRevision:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = Request.response(previousRevision:);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001004CDBD0, partial apply for closure #1 in Request.response(previousRevision:), v3, v6);
}

{

  return _swift_task_switch(Request.response(previousRevision:), 0, 0);
}

{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t closure #1 in Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd, &_s9MusicCore28RequestResponseInvalidatable_pSgMR);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 32))(v18, a3, partial apply for closure #1 in closure #1 in Request.response(previousRevision:), v15, a4, a5);

  return outlined destroy of RequestCancellableTask?(v18);
}

uint64_t closure #1 in closure #1 in Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd, &_s9MusicCore28RequestResponseInvalidatable_pSgMR);
  swift_getTupleTypeMetadata2();
  v10 = __chkstk_darwin();
  v13 = (&v15 + *(v12 + 48) - v11);
  (*(*(v9 - 8) + 16))(&v15 - v11, a1, v9, v10);
  *v13 = a2;
  v13[1] = a3;
  type metadata accessor for CheckedContinuation();
  swift_unknownObjectRetain();
  return CheckedContinuation.resume(returning:)();
}

uint64_t Array<A>.cancel()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_10023C63C()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd, &_s9MusicCore28RequestResponseInvalidatable_pSgMR);
  swift_getTupleTypeMetadata2();
  v1 = type metadata accessor for CheckedContinuation();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd, &_s9MusicCore28RequestResponseInvalidatable_pSgMR);
  swift_getTupleTypeMetadata2();
  v9 = *(type metadata accessor for CheckedContinuation() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return closure #1 in closure #1 in Request.response(previousRevision:)(a1, a2, a3, v10, v7, v8);
}

uint64_t outlined destroy of RequestCancellableTask?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22RequestCancellableTask_pSgMd, &_s9MusicCore22RequestCancellableTask_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023C8F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = *(type metadata accessor for Result() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Request.performThenCompleteOnMain(_:_:)()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = *(type metadata accessor for Result() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v7 = specialized RequestResponse.Controller.init(request:)(a1, v4, v5, v6);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = specialized RequestResponse.Controller.init(request:)(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t RequestResponse.Revision.invalidate()()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return Published.init(wrappedValue:)(&v3, v1);
}

double RequestResponse.Controller.revision.setter(uint64_t a1)
{
  specialized RequestResponse.Controller.revision.setter(a1);

  return result;
}

void RequestResponse.Controller.request.didset(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v20 - v9;
  v11 = *(v4 + 96);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, v2 + v11, v5);
  v20[1] = *(*(v4 + 88) + 8);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v10, v5);
  if ((v13 & 1) == 0)
  {
    v20[0] = v8;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.invalidate()();

    v15 = *(*v3 + 176);
    swift_beginAccess();
    v16 = *(v3 + v15);
    if (v16)
    {
      v12(v10, (v16 + *(*v16 + 96)), v5);
      v17 = v3 + v11;
      v18 = v20[0];
      v12(v20[0], v17, v5);

      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v14(v18, v5);
      v14(v10, v5);
      if ((v19 & 1) == 0)
      {
        RequestResponse.Revision.invalidate()();
      }
    }

    RequestResponse.Controller.setNeedsAutomaticReload()();
  }
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void RequestResponse.Controller.setNeedsAutomaticReload()()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  specialized RequestResponse.Controller.request.setter(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return RequestResponse.Controller.request.modify;
}

void RequestResponse.Controller.request.modify(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    specialized RequestResponse.Controller.request.setter(v4, v7);
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
  }

  else
  {
    specialized RequestResponse.Controller.request.setter(*(v2 + 56), a2);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t key path getter for RequestResponse.Controller.revision : <A>RequestResponse.Controller<A>@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double key path setter for RequestResponse.Controller.revision : <A>RequestResponse.Controller<A>(void *a1)
{

  specialized RequestResponse.Controller.revision.setter(v1);

  return result;
}

double RequestResponse.Controller.revision.didset(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (one-time initialization token for rrc != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.rrc);
      swift_retain_n();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      specialized RequestResponse.Controller.revision.setter(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      RequestResponse.Controller.didApplyRevision(_:)(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision(255, v24, v23, v25);
      swift_getFunctionTypeMetadata2();
      type metadata accessor for Array();
      Dictionary.subscript.getter();
      swift_endAccess();
      if (v60)
      {
        v61[0] = v60;
        __chkstk_darwin();
        swift_getWitnessTable();
        Sequence.forEach(_:)();
      }

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (one-time initialization token for rrc != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.rrc);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "╭ %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          v22 = v59;
        }

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&_mh_execute_header, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        RequestResponse.Controller.setNeedsAutomaticReload()();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(partial apply for closure #2 in RequestResponse.Controller.revision.didset, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.didApplyRevision(_:)(uint64_t a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v1, a1);
    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  }

  return result;
}

double closure #2 in RequestResponse.Controller.revision.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = RequestResponse.Controller.revision.getter();
    v13 = *(v12 + *(*v12 + 112));

    if (v13 == a4)
    {
      if (one-time initialization token for rrc != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.rrc);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39[0] = v18;
        *v17 = 136446210;
        v19 = (*(a6 + 24))(a5, a6);
        v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, v39);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "╭ %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "╞ 🔄 Invalidated", v24, 2u);
      }

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = a4;
        _os_log_impl(&_mh_execute_header, v25, v26, "╞ RevisionID=%{public}ld", v27, 0xCu);
      }

      swift_unknownObjectRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136446210;
        swift_getObjectType();
        v32 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
        v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, v39);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "╰ Invalidator=%{public}s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
      }

      v35 = v11 + *(*v11 + 136);
      swift_beginAccess();
      v36 = *v35;
      if (*v35)
      {
        v37 = *(v35 + 8);

        v38 = RequestResponse.Controller.revision.getter();
        v36(v11, v38);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v36, v37);
      }

      RequestResponse.Controller.setNeedsAutomaticReload()();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v5 = RequestResponse.Controller.revision.getter();
    v6 = *(v5 + *(*v5 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v9) || (, v10 = RequestResponse.Revision.isValid.getter(), , !v10))
      {
        RequestResponse.Controller.setNeedsAutomaticReload()();
      }
    }
  }
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  RequestResponse.Controller.isAutomaticReloadingEnabled.didset(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return RequestResponse.Controller.isAutomaticReloadingEnabled.modify;
}

double RequestResponse.Controller.isPaused.didset(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (one-time initialization token for rrc != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.rrc);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&_mh_execute_header, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        RequestResponse.Controller.apply(_:)(v5);
      }
    }
  }

  return result;
}

void RequestResponse.Controller.apply(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v17[4] = closure #1 in RequestResponse.Controller.apply(_:);
  v17[5] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
  v17[3] = &block_descriptor_24_2;
  v5 = _Block_copy(v17);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = v2 + *(*v2 + 120);
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v11 = v6;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);
    if (one-time initialization token for rrc != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.rrc);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v15, 2u);
    }

    v9(v2, a1, partial apply for closure #2 in RequestResponse.Controller.apply(_:), v7);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9, v10);
  }

  else
  {

    v16 = v6;
    closure #2 in RequestResponse.Controller.apply(_:)(v16, v2, a1);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

double RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return RequestResponse.Controller.isPaused.didset(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return RequestResponse.Controller.isPaused.modify;
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

void RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v8 - 8);
  __chkstk_darwin();
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v43 - v14;
  if (a1)
  {
    v16 = swift_allocObject();
    v16[2] = v12;
    v17 = *(v7 + 88);
    v16[3] = v17;
    v16[4] = a1;
    v16[5] = a2;
    aBlock[6] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed RequestResponse.Controller<A>, @guaranteed RequestResponse.Revision<A>) -> ();
    aBlock[7] = v16;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision(255, v12, v17, v18);
    swift_getFunctionTypeMetadata2();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      v44 = v8;
      v22 = *(*v3 + 96);
      swift_beginAccess();
      (*(v13 + 16))(v15, v3 + v22, v12);
      v23 = *(*v21 + 96);
      v24 = *(v7 + 88);
      v25 = *(v24 + 40);

      LOBYTE(v23) = v25(v21 + v23, v12, v24);
      (*(v13 + 8))(v15, v12);
      if (v23)
      {
        if (one-time initialization token for rrc != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.rrc);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v29 = 136446210;
          v30 = (*(v24 + 24))(v12, v24);
          v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v31, aBlock);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "╭ %{public}s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
        }

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "╞ 🛑 Cancelled", v35, 2u);
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          *(v38 + 4) = *(v21 + *(*v21 + 112));

          _os_log_impl(&_mh_execute_header, v36, v37, "╰ RevisionID=%{public}ld", v38, 0xCu);
        }

        else
        {
        }

        v39 = *(v21 + *(*v21 + 112));
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v49, v39);
        swift_endAccess();
        RequestResponse.Revision.invalidate()();
      }

      v8 = v44;
    }

    type metadata accessor for OS_dispatch_queue();
    v40 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in RequestResponse.Controller.setNeedsReload(_:);
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_39;
    v41 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v42 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    (*(v48 + 8))(v42, v8);
    (*(v45 + 8))(v11, v47);
  }
}

void RequestResponse.Controller.reloadIfNeeded()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v62 - v9;
  v12 = *(v11 + 192);
  if (*(v2 + v12) != 1)
  {
    return;
  }

  *(v2 + v12) = 0;
  v13 = *(*v2 + 176);
  swift_beginAccess();
  v65 = v13;
  v14 = *(v3 + v13);
  if (v14 || (v14 = *(v3 + *(*v3 + 184))) != 0)
  {
    v15 = *(v14 + *(*v14 + 112));
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v60 = RequestResponse.Controller.revision.getter();
    v61 = *(v60 + *(*v60 + 112));

    v16 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
LABEL_5:
      v63 = v8;
      v17 = *(*v3 + 96);
      swift_beginAccess();
      v64 = v6;
      v62[0] = v6[2];
      v62[1] = v6 + 2;
      (v62[0])(v10, v3 + v17, v5);
      v18 = *(*v3 + 160);
      swift_beginAccess();
      v73[0] = *(v3 + v18);
      v69 = v10;
      v70 = v16;
      *&v71 = v16;
      swift_beginAccess();
      v66 = *(v4 + 88);
      v67 = v5;
      type metadata accessor for RequestResponse.Revision(255, v5, v66, v19);
      swift_getFunctionTypeMetadata2();
      type metadata accessor for Array();
      type metadata accessor for Dictionary();

      v8 = v69;
      Dictionary.subscript.setter();
      swift_endAccess();
      *(v3 + v18) = static Array._allocateUninitialized(_:)();

      v20 = v3 + *(*v3 + 112);
      swift_beginAccess();
      v21 = *v20;
      if (*v20)
      {
        v22 = *(v20 + 8);

        v21(v3, v8);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v21, v22);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v6 = specialized RequestResponse.Revision.init(id:request:)(v70, v8);
      *(v3 + v65) = v6;

      if (one-time initialization token for rrc == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.rrc);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v68 = v6;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v74[0] = v28;
    *v27 = 136446210;
    v29 = (*(v66 + 24))();
    v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v29, v30, v74);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "╭ %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);

    v8 = v69;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "╞ 🕺Performing", v34, 2u);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v35, v36, "╞ RevisionID=%{public}ld", v37, 0xCu);
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v74[0] = v41;
    *v40 = 136446210;
    swift_beginAccess();
    (v62[0])(v63, v8, v67);
    v42 = String.init<A>(describing:)();
    v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v43, v74);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "╰ Request=%{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  v45 = v70;
  swift_beginAccess();
  v46 = RequestResponse.Controller.revision.getter();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v68;
  v48[3] = v47;
  v48[4] = v45;
  v49 = v66;
  v50 = v8;
  v51 = *(v66 + 32);

  v52 = v67;
  v51(v74, v46, partial apply for closure #1 in RequestResponse.Controller.reloadIfNeeded(), v48, v67, v49);

  outlined init with copy of RequestCancellableTask?(v74, &v71);
  if (v72)
  {
    outlined init with take of ActionPerforming(&v71, v73);
    v53 = v65;
    swift_beginAccess();
    v54 = *(v3 + v53);
    v55 = v64;
    if (v54)
    {
      swift_endAccess();
      v57 = v69;
      if (*(v54 + *(*v54 + 112)) == v70)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator(0, v52, v66, v56);
        outlined init with copy of ActionPerforming(v73, &v71);
        v58 = swift_allocObject();
        *(v58 + 56) = 0;
        *(v58 + 64) = 0;
        *(v58 + 72) = 0;
        outlined init with take of ActionPerforming(&v71, v58 + 16);
        WitnessTable = swift_getWitnessTable();

        specialized RequestResponse.Revision.invalidation.setter(v58, WitnessTable);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      outlined destroy of RequestCancellableTask?(v74);
      (v55[1])(v57, v52);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      outlined destroy of RequestCancellableTask?(v74);
      swift_endAccess();

      (v55[1])(v69, v52);
    }
  }

  else
  {
    outlined destroy of RequestCancellableTask?(v74);

    outlined destroy of RequestCancellableTask?(&v71);
    (v64[1])(v50, v52);
  }
}

uint64_t RequestResponse.Controller.TaskInvalidator.__allocating_init(task:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  outlined init with take of ActionPerforming(a1, v2 + 16);
  return v2;
}

uint64_t RequestResponse.Controller.TaskInvalidator.isInvalid.didset(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0Tm((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t RequestResponse.Controller.TaskInvalidator.isInvalid.setter(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return RequestResponse.Controller.TaskInvalidator.isInvalid.didset(v2);
}

uint64_t RequestResponse.Controller.TaskInvalidator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RequestResponseInvalidatable.onInvalidation.getter in conformance RequestResponse.Controller<A>.TaskInvalidator()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 72));
  return v1;
}

uint64_t protocol witness for RequestResponseInvalidatable.onInvalidation.setter in conformance RequestResponse.Controller<A>.TaskInvalidator(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
}

uint64_t (*protocol witness for RequestResponseInvalidatable.isInvalid.modify in conformance RequestResponse.Controller<A>.TaskInvalidator(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return protocol witness for RequestResponseInvalidatable.isInvalid.modify in conformance RequestResponse.Controller<A>.TaskInvalidator;
}

double closure #1 in RequestResponse.Controller.reloadIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v13 = type metadata accessor for Result();
  (*(*(v13 - 8) + 24))(&a4[v12], a1, v13);
  swift_endAccess();
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation();
    v14 = swift_allocObject();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 16) = 0x636972656E6547;
    *(v14 + 24) = 0xE700000000000000;
    a3 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  specialized RequestResponse.Revision.invalidation.setter(v14, a3);
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_queue();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in closure #1 in RequestResponse.Controller.reloadIfNeeded(), v15);

  return result;
}

double closure #1 in closure #1 in RequestResponse.Controller.reloadIfNeeded()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (one-time initialization token for rrc != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.rrc);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136446210;
      v14 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v15, v35);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "╭ %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "╞ ✅ Finished Loading", v19, 2u);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v20, v21, "╞ RevisionID=%{public}ld", v22, 0xCu);
    }

    v23 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v23);
    v25 = v24;
    swift_endAccess();
    if (v25)
    {
      v26 = *(*v8 + 152);
      swift_beginAccess();
      if (*(v8 + v26) != 1)
      {
        v33 = RequestResponse.Controller.revision.getter();
        v34 = *(v33 + *(*v33 + 112));

        if (v34 < v23)
        {
          RequestResponse.Controller.apply(_:)(a3);
        }

        goto LABEL_24;
      }

      v27 = *(*v8 + 184);
      v28 = *(v8 + v27);
      if (v28)
      {
        if (*(v28 + *(*v28 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return result;
      }

      *(v8 + v27) = a3;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
      }
    }
  }

  return result;
}

void closure #1 in RequestResponse.Controller.apply(_:)()
{
  if (one-time initialization token for rrc != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.rrc);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void closure #2 in RequestResponse.Controller.apply(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 disarm];

  specialized RequestResponse.Controller.revision.setter(v3);

  if (one-time initialization token for rrc != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.rrc);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "╰ 👌 Applied", v6, 2u);
  }
}

uint64_t *RequestResponse.Controller.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  v3 = *(*v0 + 104);
  type metadata accessor for RequestResponse.Revision(255, v2, *(v1 + 88), v4);
  v5 = type metadata accessor for Published();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 120) + 8));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 128) + 8));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));

  return v0;
}

uint64_t RequestResponse.Revision.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Result();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RequestResponse.Revision.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for Result();
  v6 = *(v5 - 1);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v5, &v12, a1);
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t RequestResponse.Revision.invalidation.didset(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 40))(ObjectType, a2);
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    RequestResponseInvalidatable.invalidate()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *RequestResponse.Revision.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RequestResponse.Controller.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for rrc()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.rrc);
  __swift_project_value_buffer(v0, static Logger.rrc);
  return Logger.init(subsystem:category:)();
}

uint64_t *specialized RequestResponse.Revision.init(id:request:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = (&v18 - v11);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v7 - 8) + 16))(v2 + *(*v2 + 96), a2, v7, v10);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError(0, v7, v6, v13);
  swift_getWitnessTable();
  *v12 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v9 + 32))(v2 + *(*v2 + 104), v12, v8);
  type metadata accessor for GenericRequestResponseInvalidation();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0x636972656E6547;
  *(v14 + 24) = 0xE700000000000000;
  v15 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  v16 = (v2 + *(*v2 + 120));
  *v16 = v14;
  v16[1] = v15;
  return v2;
}

uint64_t *specialized RequestResponse.Controller.init(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = (v5 + *(*v5 + 112));
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + *(*v5 + 120));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + *(*v5 + 128));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + *(*v5 + 136));
  *v11 = 0;
  v11[1] = 0;
  *(v5 + *(*v5 + 144)) = 0;
  *(v5 + *(*v5 + 152)) = 0;
  v12 = *(*v5 + 160);
  v13 = *(v7 + 80);
  type metadata accessor for RequestResponse.Revision(255, v13, *(v7 + 88), a4);
  swift_getFunctionTypeMetadata2();
  *(v5 + v12) = static Array._allocateUninitialized(_:)();
  v14 = *(*v5 + 168);
  v15 = type metadata accessor for Array();
  swift_getTupleTypeMetadata2();
  v16 = static Array._allocateUninitialized(_:)();
  v17 = specialized Dictionary.init(dictionaryLiteral:)(v16, &type metadata for Int, v15, &protocol witness table for Int);

  *(v5 + v14) = v17;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + *(*v5 + 192)) = 0;
  *(v5 + *(*v5 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v13 - 8) + 16))(v5 + *(*v5 + 96), a1, v13);
  swift_checkMetadataState();
  swift_allocObject();
  v18 = specialized RequestResponse.Revision.init(id:request:)(0, a1);
  RequestResponse.Revision.invalidate()();
  swift_beginAccess();
  v19 = *v18;
  v21 = v18;
  Published.init(wrappedValue:)(&v21, v19);
  swift_endAccess();
  return v5;
}

uint64_t sub_100241D7C@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double sub_100241DA8(void *a1)
{

  specialized RequestResponse.Controller.revision.setter(v1);

  return result;
}

__n128 sub_100241DF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double specialized RequestResponse.Controller.revision.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  RequestResponse.Controller.revision.didset(v2);

  return result;
}

uint64_t specialized RequestResponse.Controller.request.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v9 = *(v8 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  RequestResponse.Controller.request.didset(v7, v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002420C4()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for RequestResponse.Controller(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision(255, result, *(a1 + 88), v3);
    result = type metadata accessor for Published();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for RequestResponse.Revision(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for Result();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t instantiation function for generic protocol witness table for RequestResponse.Controller<A>.TaskInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized RequestResponse.Controller.TaskInvalidator.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v2._countAndFlagsBits = (*(a2 + 24))();
  String.append(_:)(v2);

  return 0x3A664F6B736154;
}

uint64_t specialized RequestResponse.Controller.$revision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Revision(255, *(*v4 + 80), *(*v4 + 88), a4);
  type metadata accessor for Published.Publisher();
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v10 - v7, a1, v6);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100242670()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002426A8()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of RequestCancellableTask?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22RequestCancellableTask_pSgMd, &_s9MusicCore22RequestCancellableTask_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized RequestResponse.Revision.invalidation.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  RequestResponse.Revision.invalidation.didset(v4, v5);

  return swift_unknownObjectRelease();
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100242814()
{

  return swift_deallocObject();
}

uint64_t sub_100242860()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in RequestResponse.Controller.revision.didset(uint64_t (**a1)(uint64_t *, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v1 + 24);
  v6 = v2;
  return v3(&v6, &v5);
}

uint64_t sub_1002428FC()
{

  return swift_deallocObject();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(triggers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(a1);
  return v2;
}

uint64_t GenericRequestResponseInvalidation.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v5(v2, v3);

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v7, v8);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.init(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 40));
  return v1;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

void *GenericRequestResponseInvalidation.deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t GenericRequestResponseInvalidation.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericRequestResponseInvalidation()
{
  v1 = *(*v0 + 16);

  return v1;
}

void *CompoundRequestResponseInvalidation.__allocating_init(responseInvalidations:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized CompoundRequestResponseInvalidation.init(responseInvalidations:)(a1);

  return v2;
}

void *CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v1 = specialized CompoundRequestResponseInvalidation.init(responseInvalidations:)(a1);

  return v1;
}

uint64_t CompoundRequestResponseInvalidation.append(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = *(a2 + 24);
    swift_unknownObjectRetain();

    v8(partial apply for closure #1 in CompoundRequestResponseInvalidation.append(_:), v7, ObjectType, a2);

    swift_beginAccess();
    v9 = *(v2 + 40);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      *(v3 + 40) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = v5;
    v13[5] = a2;
    *(v3 + 40) = v9;
    swift_endAccess();
    if (((*(a2 + 40))(ObjectType, a2) & 1) != 0 && (swift_beginAccess(), *(v3 + 32) != 1) && (*(v3 + 32) = 1, swift_beginAccess(), (v14 = *(v3 + 16)) != 0))
    {
      v15 = *(v3 + 24);

      v14(v5, a2);
      swift_unknownObjectRelease();
      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14, v15);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double closure #1 in CompoundRequestResponseInvalidation.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (*(v7 + 32) == 1 || (*(v7 + 32) = 1, swift_beginAccess(), (v8 = *(v7 + 16)) == 0))
    {
    }

    else
    {
      v9 = *(v7 + 24);

      v8(a1, a2);

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8, v9);
    }
  }

  return result;
}