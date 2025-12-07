__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = vcnt_s8(a1);
    v2.i16[0] = vaddlv_u8(v2);
    v3 = v2.u32[0];
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(v2.u32[0], 0);
    v5 = v4 + 4;
    v6 = (v4[3] >> 1) - v3;
    do
    {
      if (!v3)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!v1)
      {
        goto LABEL_35;
      }

      v7 = (v1 - 1) & v1;
      *v5++ = __clz(__rbit64(v1));
      v1 = v7;
      --v3;
    }

    while (v3);
    if (v7)
    {
      while (1)
      {
        if (!v6)
        {
          v8 = v4[3];
          if (((v8 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
          if (v9 <= 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = v9;
          }

          v11 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
          v12 = swift_allocObject(v11, (8 * v10 + 32), 7uLL);
          v13 = _swift_stdlib_malloc_size(v12);
          v14 = v13 - 32;
          if (v13 < 32)
          {
            v14 = v13 - 25;
          }

          v15 = v14 >> 3;
          v12[2] = v10;
          v12[3] = (2 * (v14 >> 3));
          v16 = (v12 + 4);
          v17 = v4[3] >> 1;
          if (v4[2])
          {
            if (v12 != v4 || v16 >= &v4[v17 + 4])
            {
              memmove(v12 + 4, v4 + 4, 8 * v17);
            }

            v4[2] = 0;
          }

          v5 = (v16 + 8 * v17);
          v6 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
          v4;
          v4 = v12;
        }

        v19 = __OFSUB__(v6--, 1);
        if (v19)
        {
          break;
        }

        *v5++ = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        if (!v7)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
    v20 = qword_1EE3221C8;
    &_swiftEmptyArrayStorage;
    v6 = v20 >> 1;
  }

LABEL_28:
  v21 = v4[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v19 = __OFSUB__(v22, v6);
    v23 = (v22 - v6);
    if (v19)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4[2] = v23;
  }

  return v4;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(void *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = 0;
  if (a2 + 1 < 64)
  {
    v5 = ~(-1 << (a2 + 1));
  }

  else
  {
    v5 = -1;
  }

  v6 = *result & v5;
  v7 = &_swiftEmptyArrayStorage;
  v8 = &_swiftEmptySetSingleton;
  v9 = (a2 + 64) >> 6;
  if (!v6)
  {
LABEL_9:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v2[v4];
      ++v13;
      if (v14)
      {
        v6 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v4 << 6);
        if (v3)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    v27 = v7[3];
    if (v27 >= 2)
    {
      v28 = v27 >> 1;
      v12 = __OFSUB__(v28, v3);
      v29 = (v28 - v3);
      if (v12)
      {
        goto LABEL_35;
      }

      v7[2] = v29;
    }

    return v7;
  }

  while (1)
  {
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v4 << 6);
    if (!v3)
    {
      break;
    }

LABEL_6:
    v12 = __OFSUB__(v3--, 1);
    if (v12)
    {
      goto LABEL_33;
    }

LABEL_26:
    *v8++ = v11;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  v15 = v7[3];
  if (((v15 >> 1) + 0x4000000000000000) < 0)
  {
    goto LABEL_34;
  }

  v30 = v11;
  v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_HashTable.Bucket>();
  v19 = swift_allocObject(v18, (8 * v17 + 32), 7uLL);
  v20 = _swift_stdlib_malloc_size(v19);
  v21 = v20 - 32;
  if (v20 < 32)
  {
    v21 = v20 - 25;
  }

  v22 = v21 >> 3;
  v19[2] = v17;
  v19[3] = (2 * (v21 >> 3));
  v23 = (v19 + 4);
  v24 = v7[3] >> 1;
  if (v7[2])
  {
    v25 = v7 + 4;
    if (v19 != v7 || v23 >= v25 + 8 * v24)
    {
      memmove(v19 + 4, v25, 8 * v24);
    }

    v7[2] = 0;
  }

  v8 = (v23 + 8 * v24);
  v26 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
  result = v7;
  v7 = v19;
  v11 = v30;
  v12 = __OFSUB__(v26, 1);
  v3 = v26 - 1;
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(char *a1, char *a2)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    v3 = a1;
    if (a2 >= a1)
    {
      v4 = a2 - a1;
    }

    else
    {
      v4 = 0;
    }

    v5 = &_swiftEmptyArrayStorage;
    if (a1 != a2)
    {
      v6 = 0;
      v7 = &_swiftEmptySetSingleton;
      while (1)
      {
        if (!v4)
        {
          goto LABEL_31;
        }

        v8 = *v3;
        if (!v6)
        {
          v9 = v5[3];
          if (((v9 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_33;
          }

          v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
          if (v10 <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10;
          }

          v12 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
          v13 = swift_allocObject(v12, (v11 + 32), 7uLL);
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v11;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v5[3] >> 1;
          if (v5[2])
          {
            if (v13 != v5 || v15 >= v5 + v16 + 32)
            {
              memmove(v13 + 4, v5 + 4, v16);
            }

            v5[2] = 0;
          }

          v7 = (v15 + v16);
          v6 = (v14 >> 1) - v16;
          v5;
          v5 = v13;
        }

        v18 = __OFSUB__(v6--, 1);
        if (v18)
        {
          break;
        }

        ++v3;
        *v7 = v8;
        v7 = (v7 + 1);
        --v4;
        if (v3 == a2)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_31:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    v5 = &_swiftEmptyArrayStorage;
  }

LABEL_27:
  v19 = v5[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v6);
    v21 = (v20 - v6);
    if (!v18)
    {
      v5[2] = v21;
      return v5;
    }

    goto LABEL_34;
  }

  return v5;
}

__objc2_class **_copySequenceToContiguousArray<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v6);
  v89 = &v82 - v8;
  v86 = v9;
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v85 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v82 - v18;
  v20 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v98 = v24;
  v84 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v99 = &v82 - v26;
  v27 = a3;
  v28 = (*(a3 + 40))(a2, a3);
  v29 = v28;
  v97 = v7;
  v94 = v19;
  if (v28)
  {
    if (v28 <= 0)
    {
      v34 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v30 = getContiguousArrayStorageType<A>(for:)(v86, v86);
      v31 = v7;
      v32 = *(v7 + 72);
      v33 = *(v31 + 80);
      v34 = swift_allocObject(v30, (((v33 + *(v30 + 48)) & ~v33) + v32 * v29), v33 | *(v30 + 52));
      v35 = _swift_stdlib_malloc_size(v34);
      if (!v32 || ((v36 = v35 - ((v33 + 32) & ~v33), v36 == 0x8000000000000000) ? (v37 = v32 == -1) : (v37 = 0), v37))
      {
LABEL_54:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v38 = v36 / v32;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v86, v86);
      v34[2] = v29;
      v34[3] = (isClassOrObjCExistentialType | (2 * v38));
      v7 = v97;
    }

    v34;
  }

  else
  {
    v34 = &_swiftEmptyArrayStorage;
  }

  v40 = *(v7 + 80);
  v41 = v34[3];
  v34;
  (*(v20 + 16))(v23, a1, a2);
  v42 = v27;
  (*(v27 + 32))(a2, v27);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v12;
  v43 = v41 >> 1;
  v90 = (v40 + 32) & ~v40;
  v44 = v34 + v90;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v42, a2, v98, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v46 = AssociatedConformanceWitness;
  v88 = v40;
  if (v29)
  {
    v93 = v34;
    v95 = *(AssociatedConformanceWitness + 16);
    v47 = (v97 + 48);
    v43 -= v29;
    v48 = v86;
    v49 = v94;
    do
    {
      v50 = v46;
      v95(v98, v46);
      if ((*v47)(v49, 1, v48) == 1)
      {
        goto LABEL_57;
      }

      v51 = v97;
      (*(v97 + 32))(v44, v49, v48);
      v44 += *(v51 + 72);
      --v29;
      v46 = v50;
    }

    while (v29);
    v52 = v97;
    v40 = v88;
    v34 = v93;
  }

  else
  {
    v52 = v97;
  }

  v53 = *(v46 + 16);
  v54 = v96;
  v94 = (v46 + 16);
  v95 = v46;
  v93 = v53;
  (v53)(v98, v46);
  v55 = v54;
  v56 = v86;
  v91 = v52[6];
  v92 = v52 + 6;
  v57 = v91(v54, 1, v86);
  v58 = v89;
  if (v57 != 1)
  {
    v87 = ~v40;
    v60 = v52[4];
    while (1)
    {
      v60(v58, v55, v56);
      if (v43)
      {
        v59 = v34;
        v61 = __OFSUB__(v43--, 1);
        if (v61)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v62 = v34[3];
        if (((v62 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v63 = v62 & 0xFFFFFFFFFFFFFFFELL;
        if (v63 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v63;
        }

        v65 = getContiguousArrayStorageType<A>(for:)(v56, v56);
        v66 = v52[9];
        v59 = swift_allocObject(v65, (((*(v65 + 48) + v88) & v87) + v66 * v64), *(v65 + 52) | v88);
        v67 = _swift_stdlib_malloc_size(v59);
        if (!v66)
        {
          goto LABEL_54;
        }

        v68 = v90;
        if (v67 - v90 == 0x8000000000000000 && v66 == -1)
        {
          goto LABEL_54;
        }

        v70 = (v67 - v90) / v66;
        v71 = _swift_isClassOrObjCExistentialType(v56, v56);
        v59[2] = v64;
        v59[3] = (v71 | (2 * v70));
        v72 = v59 + v68;
        v73 = v34[3] >> 1;
        v74 = v73 * v66;
        if (v34[2])
        {
          v75 = v34 + v90;
          if (v59 < v34 || v72 >= v34 + v90 + v74)
          {
            swift_arrayInitWithTakeFrontToBack(v72, v75, v73, v56);
          }

          else if (v59 != v34)
          {
            swift_arrayInitWithTakeBackToFront(v72, v75, v73, v56);
          }

          v34[2] = 0;
        }

        v44 = &v72[v74];
        v77 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - v73;
        v34;
        v52 = v97;
        v58 = v89;
        v61 = __OFSUB__(v77, 1);
        v43 = v77 - 1;
        if (v61)
        {
LABEL_51:
          __break(1u);
          goto LABEL_54;
        }
      }

      v60(v44, v58, v56);
      v44 += v52[9];
      (v93)(v98, v95);
      v55 = v96;
      v34 = v59;
      if (v91(v96, 1, v56) == 1)
      {
        goto LABEL_47;
      }
    }
  }

  v59 = v34;
LABEL_47:
  (*(v84 + 8))(v99, v98);
  (*(v85 + 8))(v55, v83);
  v78 = v59[3];
  if (v78 >= 2)
  {
    v79 = v78 >> 1;
    v61 = __OFSUB__(v79, v43);
    v80 = (v79 - v43);
    if (v61)
    {
      __break(1u);
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v59[2] = v80;
  }

  return v59;
}

__objc2_class **_UnsafePartiallyInitializedContiguousArrayBuffer.init(initialCapacity:)(__objc2_class *a1, unint64_t *a2)
{
  if (a1)
  {
    if (a1 < 1)
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v4 = getContiguousArrayStorageType<A>(for:)(a2, a2);
      v5 = *(*(a2 - 1) + 72);
      v6 = *(*(a2 - 1) + 80);
      v7 = swift_allocObject(v4, (((v6 + *(v4 + 48)) & ~v6) + v5 * a1), v6 | *(v4 + 52));
      v8 = _swift_stdlib_malloc_size(v7);
      if (!v5 || ((v9 = v8 - ((v6 + 32) & ~v6), v9 == 0x8000000000000000) ? (v10 = v5 == -1) : (v10 = 0), v10))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v11 = v9 / v5;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
      v7[2] = a1;
      v7[3] = (isClassOrObjCExistentialType | (2 * v11));
    }

    v7;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v7;
  return v7;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.addWithExistingCapacity(_:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v5;
    v6 = *(v2 + 8);
    v7 = *(*(a2 + 16) - 8) + 16;
    result = (*v7)(v6, result);
    *(v2 + 8) = v6 + *(v7 + 56);
  }

  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.add(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  if (!v4)
  {
    v5 = *v2;
    v6 = *(*v2 + 24);
    if (((v6 >> 1) + 0x4000000000000000) < 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = a2;
    v10 = *(a2 + 16);
    v11 = getContiguousArrayStorageType<A>(for:)(v10, v10);
    v12 = *(*(v10 - 1) + 72);
    v13 = *(*(v10 - 1) + 80);
    v14 = swift_allocObject(v11, (((v13 + *(v11 + 48)) & ~v13) + v12 * v8), v13 | *(v11 + 52));
    v15 = _swift_stdlib_malloc_size(v14);
    if (!v12 || ((v16 = (v13 + 32) & ~v13, v15 - v16 == 0x8000000000000000) ? (v17 = v12 == -1) : (v17 = 0), v17))
    {
LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = (v15 - v16) / v12;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v10, v10);
    v14[2] = v8;
    v14[3] = isClassOrObjCExistentialType | (2 * v18);
    v20 = *(v5 + 24) >> 1;
    v4 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
    v2[1] = v14 + v16 + v20 * v12;
    v2[2] = v4;
    if (*(v5 + 16))
    {
      UnsafeMutablePointer.moveInitialize(from:count:)((v5 + v16), v20, v14 + v16, v10);
      *(v5 + 16) = 0;
    }

    v5;
    *v2 = v14;
    a2 = v9;
  }

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v2[2] = v4 - 1;
  v21 = v2[1];
  v22 = *(*(a2 + 16) - 8) + 16;
  result = (*v22)(v21, a1);
  v2[1] = v21 + *(v22 + 56);
  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.finish()()
{
  result = *v0;
  v2 = *(*v0 + 24);
  if (v2 < 2)
  {
    goto LABEL_4;
  }

  v3 = v2 >> 1;
  v4 = v0[2];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (!v5)
  {
    *(result + 16) = v6;
LABEL_4:
    *v0 = &_swiftEmptyArrayStorage;
    v0[2] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.result.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.finishWithOriginalCount()()
{
  result = *v0;
  *v0 = &_swiftEmptyArrayStorage;
  v0[2] = 0;
  return result;
}

uint64_t String.init(cString:)(char *a1)
{
  return String.init(cString:)(a1, _swift_stdlib_strlen);
}

{
  v2 = _swift_stdlib_strlen_unsigned(a1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = v2;
  v4 = validateUTF8(_:)(a1, v2);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v3, v4 & 1, v7);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(a1, v3, v5, v6);
}

uint64_t static String._fromUTF8Repairing(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = validateUTF8(_:)(a1, a2);
  if ((v4 & 0x8000000000000000) != 0)
  {
    return repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v5, v6);
  }

  else
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v7);
  }
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFs4Int8V_s5UInt8Vs5NeverOSSTt1g5019_sSS7cStringSSSPys4f14VG_tcfcSSSRys5G7VGXEfU_Tf1cn_n(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = validateUTF8(_:)(a1, a2);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v7);
    }

    v11 = v5;
    v12 = v6;
    v13 = a1;
    v14 = a2;
  }

  else
  {
    if ((validateUTF8(_:)(0, 0) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v11 = v9;
    v12 = v10;
    v13 = 0;
    v14 = 0;
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v13, v14, v11, v12);
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    if (a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a3(&var2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    (a3)((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return (a1)(0, 0, &v5, a4);
  }

  if (a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1(a3, a4, &v5);
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__sAD_pqd_1_Isgyrzr_AEqd_1_sAD_psAD_pRsd_0_Ri_zRi_d__Ri_d_1_r_1_lIetMgyrzo_Tp5(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return (a1)(0, 0, &v13, a4, a5, a6);
  }

  v6 = *(a6 - 8);
  if ((*(v6 + 80) & a3) != 0)
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(v6 + 72);
  v8 = *(*(a5 - 8) + 72);
  if (v7 != v8)
  {
    v9 = a4 * v8;
    if ((a4 * v8) >> 64 == (a4 * v8) >> 63)
    {
      if (v7)
      {
        if (v9 != 0x8000000000000000 || v7 != -1)
        {
          if (v8 >= v7)
          {
            if (v8 != 0x8000000000000000 || v7 != -1)
            {
              v11 = v8 % v7;
              goto LABEL_17;
            }
          }

          else if (v8)
          {
            v11 = v7 % v8;
LABEL_17:
            if (v11)
            {
              goto LABEL_25;
            }

            a4 = v9 / v7;
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_19:
  if (a4 < 0)
  {
    goto LABEL_25;
  }

  return a1(a3, a4, &v13);
}

uint64_t specialized String.withCString<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    LOBYTE(v7) = specialized _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4);
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v10[0] = a1;
    v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = (a5)(v10, a3);
      if (v7)
      {
        LOBYTE(v7) = *v7 == 0;
      }
    }
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10[3] = a3;
      v9 = a5;
      v5 = _StringObject.sharedUTF8.getter(a1, a2);
      a5 = v9;
    }

    v6 = *v5;
    if (v6 <= 0x20 && ((0x100003E01uLL >> v6) & 1) != 0)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = a5();
      if (v7)
      {
        LOBYTE(v7) = *v7 == 0;
      }
    }
  }

  return v7 & 1;
}

uint64_t String.withCString<A>(_:)(void (*a1)(uint64_t), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    return _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4);
  }

  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v16[2] = v8;
  v16[3] = v10;
  v16[4] = v5;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v17[0] = v6;
    v17[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    return v10(v17);
  }

  else
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      v16[8] = v8;
      v16[7] = v9;
      v4 = _StringObject.sharedUTF8.getter(v6, v7);
    }

    MEMORY[0x1EEE9AC00](v4, v5);
    v15[2] = v11;
    v15[3] = partial apply for closure #1 in _StringGuts.withCString<A>(_:);
    v15[4] = v16;
    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error), v15, v13, v12);
  }
}

uint64_t static String._tryFromUTF8(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = validateUTF8(_:)(a1, a2);
  if ((v4 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v5);
  }
}

unint64_t static String.decodeCString<A>(_:as:repairingInvalidCodeUnits:)(char *a1, ValueMetadata *a2, int a3, ValueMetadata *a4, int **a5)
{
  v79 = a3;
  v78 = a2;
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v9 = v8;
  v10 = *(swift_getAssociatedConformanceWitness(a5, a4, v8, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v11 = *(*(v10 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v63 - v15;
  v17 = swift_checkMetadataState(0, v9);
  v18 = *(v17 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v63 - v25;
  if (a4 == &type metadata for Unicode.UTF8)
  {
    if (a1)
    {
      v37 = _swift_stdlib_strlen_unsigned(a1);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v28 = v37;
      v31 = validateUTF8(_:)(a1, v37);
      v35 = v31;
      if (v79)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v28, v31 & 1, v34);
        }

        return repairUTF8(_:firstKnownBrokenRange:)(a1, v28, v32, v33);
      }

      goto LABEL_22;
    }

    return 0;
  }

  if (a4 != &type metadata for Unicode.UTF16)
  {
    if (a1)
    {
      if (v78 == &type metadata for Unicode.UTF8)
      {
        v27 = _swift_stdlib_strlen_unsigned(a1);
        if (v27 < 0)
        {
          goto LABEL_35;
        }

        v28 = v27;
        v29 = *(v18 + 72);
        if (v29 != 1)
        {
          if ((v27 * v29) >> 64 != (v27 * v29) >> 63)
          {
            __break(1u);
            return 0;
          }

          if (v29 < 1 && v29 != -1)
          {
            if (!v29)
            {
              goto LABEL_58;
            }

            v65 = 0;
            v64 = 2142;
            LOBYTE(v63) = 2;
LABEL_35:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v28 = v27 * v29;
          if (v27 * v29 < 0)
          {
            goto LABEL_35;
          }
        }

        v31 = validateUTF8(_:)(a1, v28);
        v35 = v31;
        if (v79)
        {
          if ((v31 & 0x8000000000000000) == 0)
          {
            return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v28, v31 & 1, v34);
          }

          return repairUTF8(_:firstKnownBrokenRange:)(a1, v28, v32, v33);
        }

LABEL_22:
        if ((v35 & 0x8000000000000000) == 0)
        {
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v28, v35 & 1, v34);
        }

        return 0;
      }

      v43 = *(v10 + 64);
      v72 = v18;
      v73 = v43;
      v44 = *(v18 + 16);
      v69 = v10 + 128;
      v70 = v44;
      v74 = v10 + 64;
      v67 = v10 + 96;
      v71 = v18 + 16;
      v76 = (v18 + 8);
      v77 = v24;
      v63 = v11 + 24;
      v64 = v10 + 120;
      for (i = a1; ; i = &v75[*(v72 + 72)])
      {
        v75 = i;
        v48 = v77;
        v70(v26);
        if (v73(v48, v10))
        {
          v49 = (*(v10 + 128))(v77, v10);
        }

        else
        {
          LODWORD(v68) = v73(v77, v10);
          v49 = (*(v10 + 128))(v77, v10);
          if (v68)
          {
            if (v49 > 64)
            {
              goto LABEL_37;
            }

            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v77, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
            (*(v11 + 24))(v16);
            v53 = (*(*(*(v10 + 32) + 8) + 32))(v26, v22);
            v68 = *v76;
            v68(v22, v77);
            if (v53)
            {
              v54 = (*(v10 + 120))(v77, v10);
              v68(v26, v77);
              if (!v54)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v68(v26, v77);
            }

            continue;
          }
        }

        if (v49 >= 64)
        {
LABEL_37:
          v80[0] = 0;
          v68 = *(v10 + 96);
          v46 = lazy protocol witness table accessor for type Int and conformance Int(v49, v50, v51);
          v47 = v77;
          (v68)(v80, &type metadata for Int, v46, v77, v10);
          v66 = (*(*(*(v10 + 16) + 8) + 8))(v26, v22, v47);
          v68 = *v76;
          v68(v22, v47);
          v68(v26, v47);
          if (v66)
          {
            goto LABEL_50;
          }

          continue;
        }

        v55 = (*(v10 + 120))(v77, v10);
        (*v76)(v26, v77);
        if (!v55)
        {
LABEL_50:
          v56 = *(v72 + 72);
          if (v56 && (v75 - a1 != 0x8000000000000000 || v56 != -1))
          {
            v80[0] = UnsafeBufferPointer.init(start:count:)(a1, (v75 - a1) / v56);
            v80[1] = v57;
            v60 = type metadata accessor for UnsafeBufferPointer(0, v77, v58, v59);
            swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v60, v61);
            result = static String._fromCodeUnits<A, B>(_:encoding:repair:)(v80, v78, v79 & 1, v60);
            if (v62)
            {
              return result;
            }

            return 0;
          }

LABEL_58:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v38 = a1;
  if (*a1)
  {
    v39 = a1 + 2;
    v38 = a1;
    do
    {
      v40 = *v39;
      v39 += 2;
      v38 += 2;
    }

    while (v40);
  }

  v41 = v38 - a1;
  if (v41 <= -2)
  {
    goto LABEL_35;
  }

  result = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(a1, v41 / 2, v78, v79 & 1);
  if (!v42)
  {
    return 0;
  }

  return result;
}

BOOL static BinaryInteger.!= infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v68 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v68, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v67 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v61 - v14;
  v65 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v65, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v64 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v61 - v18;
  v72 = *(a4 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v71 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v69 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a5 + 64);
  v25 = v24(a3, a5);
  if ((v25 ^ (*(a6 + 64))(a4, a6)))
  {
    v26 = v24(a3, a5);
    v27 = *(a5 + 128);
    v62 = a1;
    v28 = v27(a3, a5);
    v29 = *(a6 + 128);
    v61 = a2;
    v30 = v29(a4, a6);
    if (v26)
    {
      v32 = v70;
      v31 = v71;
      if (v30 < v28)
      {
        (*(v72 + 16))(v71, v61, a4);
        v33 = v69;
        (*(a5 + 96))(v31, a4, a6, a3, a5);
        v34 = (*(*(*(a5 + 16) + 8) + 8))(v62, v33, a3);
LABEL_16:
        v38 = v34;
        (*(v32 + 8))(v33, a3);
        return (v38 & 1) == 0;
      }

      v46 = v64;
      v47 = v65;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v65, a3, v64, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v49 = v63;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v46, AssociatedConformanceWitness);
      v50 = v69;
      (v47[3])(v49, a3, v47);
      v51 = v62;
      LOBYTE(v46) = (*(*(*(a5 + 32) + 8) + 32))(v62, v50, a3);
      (*(v32 + 8))(v50, a3);
      v52 = v72;
      if (v46)
      {
        (*(v32 + 16))(v50, v51, a3);
        (*(a6 + 96))(v50, a3, a5, a4, a6);
        v38 = (*(*(*(a6 + 16) + 8) + 8))(v31, v61, a4);
        (*(v52 + 8))(v31, a4);
        return (v38 & 1) == 0;
      }

LABEL_17:
      v38 = 0;
      return (v38 & 1) == 0;
    }

    v32 = v70;
    v41 = v71;
    if (v28 >= v30)
    {
      v53 = v67;
      v54 = v68;
      v55 = swift_getAssociatedConformanceWitness(v68, a4, v67, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v56 = v66;
      (*(v55 + 8))(&qword_18071E0A8, 256, v53, v55);
      (v54[3])(v56, a4, v54);
      v57 = v61;
      LOBYTE(v53) = (*(*(*(a6 + 32) + 8) + 32))(v61, v41, a4);
      v58 = v72;
      (*(v72 + 8))(v41, a4);
      v59 = v62;
      if (v53)
      {
        (*(v58 + 16))(v41, v57, a4);
        v33 = v69;
        (*(a5 + 96))(v41, a4, a6, a3, a5);
        v34 = (*(*(*(a5 + 16) + 8) + 8))(v59, v33, a3);
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v42 = v69;
    (*(v70 + 16))(v69, v62, a3);
    (*(a6 + 96))(v42, a3, a5, a4, a6);
    v38 = (*(*(*(a6 + 16) + 8) + 8))(v41, v61, a4);
    v39 = *(v72 + 8);
    v40 = v41;
  }

  else
  {
    v35 = (*(a5 + 128))(a3, a5);
    if (v35 >= (*(a6 + 128))(a4, a6))
    {
      v44 = v71;
      (*(v72 + 16))(v71, a2, a4);
      v45 = v69;
      (*(a5 + 96))(v44, a4, a6, a3, a5);
      v38 = (*(*(*(a5 + 16) + 8) + 8))(a1, v45, a3);
      v39 = *(v70 + 8);
      v40 = v45;
      v43 = a3;
      goto LABEL_11;
    }

    v36 = v69;
    (*(v70 + 16))(v69, a1, a3);
    v37 = v71;
    (*(a6 + 96))(v36, a3, a5, a4, a6);
    v38 = (*(*(*(a6 + 16) + 8) + 8))(v37, a2, a4);
    v39 = *(v72 + 8);
    v40 = v37;
  }

  v43 = a4;
LABEL_11:
  v39(v40, v43);
  return (v38 & 1) == 0;
}

unint64_t _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt0t2g5(char *a1, uint64_t a2, char a3)
{
  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for UnsafeBufferPointer<UInt8> && &full type metadata for Unicode.UTF16 == &full type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a2, a3 & 1);
  }

  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for [UInt8] && &full type metadata for Unicode.UTF16 == &full type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a3 & 1);
  }

  return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0Q0O5UTF16OTt0t2g5(a1, a2, a3 & 1);
}

unint64_t _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(char *a1, uint64_t a2, ValueMetadata *a3, char a4)
{
  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for UnsafeBufferPointer<UInt8> && a3 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a2, a4 & 1);
  }

  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for [UInt8] && a3 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a4 & 1);
  }

  return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0Q0O5UTF16OTt0t2g5(a1, a2, a4 & 1);
}

unint64_t static String._fromCodeUnits<A, B>(_:encoding:repair:)(uint64_t *a1, uint64_t a2, uint64_t a3, Class *a4)
{
  v6 = *(a4 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v17 = (&v145 - v16);
  if (v18 == &unk_1EEEBDEB0 && v13 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(*a1, a1[1], v12 & 1);
  }

  if (a4 == &unk_1EEEBDE20 && v13 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(*a1, v12 & 1);
  }

  if (v11 != &type metadata for Unicode.ASCII)
  {
    v56 = v12 & 1;
    v57 = a1;
    v58 = a4;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    return static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(v57, v56, v58, v59, v60, v61);
  }

  v20 = v13;
  v21 = v14;
  v22 = v15;
  v148 = v12;
  v23 = *(v6 + 16);
  (v23)(&v145 - v16, a1, a4);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v150, v17, a4, v24, 6uLL, v25, v26, v27, v145) & 1) == 0)
  {
    v147 = v23;
    v151 = 0;
    memset(v150, 0, sizeof(v150));
    HasContiguous = outlined destroy of _HasContiguousBytes?(v150, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
    v35 = v21;
    v36 = v20;
    goto LABEL_14;
  }

  v149 = v20;
  _ss9CodingKey_pWOb_0(v150, &v152);
  v28 = v154;
  v29 = v155;
  __swift_project_boxed_opaque_existential_0Tm(&v152, v154);
  if (((*(v29 + 16))(v28, v29) & 1) == 0)
  {
    v147 = v23;
    HasContiguous = __swift_destroy_boxed_opaque_existential_1Tm(&v152);
    v35 = v21;
    v36 = v149;
LABEL_14:
    v149 = &v145;
    MEMORY[0x1EEE9AC00](HasContiguous, v34);
    v141 = a4;
    v142 = v36;
    v143 = v35;
    v144 = v22;
    v37 = *(v35 + 8);
    (*(v37 + 72))(&v152, partial apply for closure #2 in static String._fromCodeUnits<A, B>(_:encoding:repair:));
    if (v153 != 1)
    {
      if (v153)
      {
        return v152;
      }

      v56 = v148 & 1;
      v57 = a1;
      v58 = a4;
      v59 = v36;
      v60 = v35;
      v61 = v22;
      return static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(v57, v56, v58, v59, v60, v61);
    }

    (v147)(v9, a1, a4);
    v38 = (*(v37 + 56))(a4, v37);
    v40 = MEMORY[0x1EEE9AC00](v38, v39);
    v141 = a4;
    v142 = v36;
    v149 = v36;
    v146 = v35;
    v147 = v22;
    v143 = v35;
    v144 = v22;
    v41 = v40;
    swift_getAssociatedTypeWitness(0, v37, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v43 = v42;
    if (!_swift_isClassOrObjCExistentialType(v42, v42) || (v41 & 0x8000000000000000) == 0 && (v41 & 0x4000000000000000) == 0)
    {
      _swift_isClassOrObjCExistentialType(v43, v43);
      v44 = *(v43 - 1);
      v45 = *(v44 + 80);
      if (_swift_isClassOrObjCExistentialType(v43, v43) && (v41 < 0 || (v41 & 0x4000000000000000) != 0))
      {
        if (v41 < 0)
        {
          v140 = v41;
        }

        else
        {
          v140 = (v41 & 0xFFFFFFFFFFFFFF8);
        }

        v46 = [v140 count];
        if (v46 < 0)
        {
          LODWORD(v143) = 0;
          v142 = 1410;
          LOBYTE(v141) = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        _swift_isClassOrObjCExistentialType(v43, v43);
        v46 = *(v41 + 16);
      }

      v47 = *(v44 + 72);
      v48 = v46 * v47;
      if ((v46 * v47) >> 64 == (v46 * v47) >> 63)
      {
        if ((v48 & 0x8000000000000000) == 0)
        {
          v49 = (v45 + 32) & ~v45;
          v50 = (v41 + v49);
          if (_allASCII(_:)((v41 + v49), v48))
          {
            if (!v48)
            {
              v55 = 0;
LABEL_68:
              v41;
              return v55;
            }

            if (v48 > 0xF)
            {
              v52 = v48 | 0xF000000000000000;
              v53 = _allocateStringStorage(codeUnitCapacity:)(v48);
              *(v53 + 16) = v54;
              *(v53 + 24) = v48 | 0xF000000000000000;
              if (v54 < 0)
              {
                *__StringStorage._breadcrumbsAddress.getter() = 0;
                v52 = *(v53 + 24);
              }

              *(v53 + 32 + (v52 & 0xFFFFFFFFFFFFLL)) = 0;
              specialized UnsafeMutablePointer.initialize(from:count:)(v50, v48, (v53 + 32));
              v55 = *(v53 + 24);
              goto LABEL_68;
            }

            if (v48 >= 8)
            {
              v62 = 8;
            }

            else
            {
              v62 = v48;
            }

            v63 = v62 - 1;
            if (v48 < v62 - 1)
            {
              v63 = v48;
            }

            if (v62 == v63)
            {
              LODWORD(v143) = 0;
              v142 = 309;
              LOBYTE(v141) = 2;
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v64 = v48 - 8;
            if (v48 >= 8)
            {
              v67 = v62 & 8;
              v68 = vmovl_u8(*v50);
              v69 = vmovl_u16(*v68.i8);
              v70.i64[0] = v69.u32[2];
              v70.i64[1] = v69.u32[3];
              v71 = v70;
              v72 = vmovl_high_u16(v68);
              v70.i64[0] = v72.u32[2];
              v70.i64[1] = v72.u32[3];
              v73 = v70;
              v70.i64[0] = v69.u32[0];
              v70.i64[1] = v69.u32[1];
              v74 = v70;
              v70.i64[0] = v72.u32[0];
              v70.i64[1] = v72.u32[1];
              v75 = vorrq_s8(vorrq_s8(vshlq_u64(v74, xmmword_18071DBB0), vshlq_u64(v70, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v71, xmmword_18071DBA0), vshlq_u64(v73, xmmword_18071DBD0)));
              v65 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
              if (v62 == v67)
              {
                goto LABEL_50;
              }

              v66 = 8 * v67;
            }

            else
            {
              v65 = 0;
              v66 = 0;
              v67 = 0;
            }

            v76 = v62 - v67;
            v77 = (v41 + v67 + v49);
            do
            {
              v78 = *v77++;
              *&v65 |= v78 << (v66 & 0x38);
              v66 += 8;
              --v76;
            }

            while (v76);
LABEL_50:
            if (v48 < 9)
            {
LABEL_67:
              v55 = v65;
              goto LABEL_68;
            }

            if (v64 < 4)
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              goto LABEL_65;
            }

            if (v64 >= 0x10)
            {
              v83 = &v50[1];
              v81 = v64 & 0xFFFFFFFFFFFFFFF0;
              v84 = xmmword_18071DBF0;
              v85 = xmmword_18071DC00;
              v86 = xmmword_18071DC10;
              v87 = xmmword_18071DC20;
              v88 = xmmword_18071DBD0;
              v89 = xmmword_18071DBC0;
              v90 = vdupq_n_s64(0x38uLL);
              v51 = vdupq_n_s64(0x80uLL);
              v91 = xmmword_18071DBA0;
              v82 = 8 * (v64 & 0xFFFFFFFFFFFFFFF0);
              v92 = 0uLL;
              v93 = 0uLL;
              v94 = xmmword_18071DBB0;
              v95 = v64 & 0xFFFFFFFFFFFFFFF0;
              v96 = 0uLL;
              v97 = 0uLL;
              v98 = 0uLL;
              v99 = 0uLL;
              v100 = 0uLL;
              v101 = 0uLL;
              do
              {
                v102 = *v83++;
                v103 = vmovl_u8(*v102.i8);
                v104 = vmovl_high_u16(v103);
                v105.i64[0] = v104.u32[2];
                v105.i64[1] = v104.u32[3];
                v106 = v105;
                v107 = vmovl_high_u8(v102);
                v108 = vmovl_u16(*v107.i8);
                v105.i64[0] = v108.u32[2];
                v105.i64[1] = v108.u32[3];
                v109 = v105;
                v105.i64[0] = v108.u32[0];
                v105.i64[1] = v108.u32[1];
                v110 = v105;
                v105.i64[0] = v104.u32[0];
                v105.i64[1] = v104.u32[1];
                v111 = v105;
                v112 = vmovl_u16(*v103.i8);
                v105.i64[0] = v112.u32[2];
                v105.i64[1] = v112.u32[3];
                v113 = v105;
                v114 = vmovl_high_u16(v107);
                v105.i64[0] = v114.u32[0];
                v105.i64[1] = v114.u32[1];
                v115 = v105;
                v105.i64[0] = v112.u32[0];
                v105.i64[1] = v112.u32[1];
                v116 = v105;
                v105.i64[0] = v114.u32[2];
                v105.i64[1] = v114.u32[3];
                v97 = vorrq_s8(vshlq_u64(v106, vandq_s8(v88, v90)), v97);
                v99 = vorrq_s8(vshlq_u64(v109, vandq_s8(v86, v90)), v99);
                v98 = vorrq_s8(vshlq_u64(v110, vandq_s8(v87, v90)), v98);
                v96 = vorrq_s8(vshlq_u64(v111, vandq_s8(v89, v90)), v96);
                v93 = vorrq_s8(vshlq_u64(v113, vandq_s8(v91, v90)), v93);
                v100 = vorrq_s8(vshlq_u64(v115, vandq_s8(v85, v90)), v100);
                v92 = vorrq_s8(vshlq_u64(v116, vandq_s8(v94, v90)), v92);
                v101 = vorrq_s8(vshlq_u64(v105, vandq_s8(v84, v90)), v101);
                v89 = vaddq_s64(v89, v51);
                v91 = vaddq_s64(v91, v51);
                v94 = vaddq_s64(v94, v51);
                v88 = vaddq_s64(v88, v51);
                v87 = vaddq_s64(v87, v51);
                v86 = vaddq_s64(v86, v51);
                v85 = vaddq_s64(v85, v51);
                v84 = vaddq_s64(v84, v51);
                v95 -= 16;
              }

              while (v95);
              v117 = vorrq_s8(vorrq_s8(vorrq_s8(v92, v98), vorrq_s8(v96, v100)), vorrq_s8(vorrq_s8(v93, v99), vorrq_s8(v97, v101)));
              v79 = vorr_s8(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
              if (v64 == v81)
              {
                goto LABEL_67;
              }

              if ((v64 & 0xC) == 0)
              {
                v80 = 8 * (v64 & 0xFFFFFFFFFFFFFFF0);
LABEL_65:
                v134 = v48 - v81 - 8;
                v135 = (v81 + v49 + v41 + 8);
                do
                {
                  v136 = *v135++;
                  *&v79 |= v136 << (v80 & 0x38);
                  v80 += 8;
                  --v134;
                }

                while (v134);
                goto LABEL_67;
              }
            }

            else
            {
              v79 = 0;
              v82 = 0;
              v81 = 0;
            }

            v118 = v81;
            v81 = v64 & 0xFFFFFFFFFFFFFFFCLL;
            v80 = 8 * (v64 & 0xFFFFFFFFFFFFFFFCLL);
            v119 = v79;
            v120 = vdupq_n_s64(v82);
            v121 = 0uLL;
            v122 = vaddq_s64(v120, xmmword_18071DBA0);
            v123 = vaddq_s64(v120, xmmword_18071DBB0);
            v124 = (v118 + v49 + v41 + 8);
            v125 = v118 - (v64 & 0xFFFFFFFFFFFFFFFCLL);
            v126.i64[0] = 255;
            v126.i64[1] = 255;
            v127 = vdupq_n_s64(0x38uLL);
            v128 = vdupq_n_s64(0x20uLL);
            do
            {
              v129 = *v124++;
              v51.i32[0] = v129;
              v130 = vmovl_u16(*&vmovl_u8(*v51.i8));
              v131.i64[0] = v130.u32[2];
              v131.i64[1] = v130.u32[3];
              v132 = vandq_s8(v131, v126);
              v131.i64[0] = v130.u32[0];
              v131.i64[1] = v130.u32[1];
              v51 = vshlq_u64(vandq_s8(v131, v126), vandq_s8(v123, v127));
              v121 = vorrq_s8(vshlq_u64(v132, vandq_s8(v122, v127)), v121);
              v119 = vorrq_s8(v51, v119);
              v122 = vaddq_s64(v122, v128);
              v123 = vaddq_s64(v123, v128);
              v125 += 4;
            }

            while (v125);
            v133 = vorrq_s8(v119, v121);
            v79 = vorr_s8(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
            if (v64 == v81)
            {
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          v41;
          goto LABEL_73;
        }
      }

      else
      {
        __break(1u);
      }

      LODWORD(v143) = 0;
      v142 = 1215;
      LOBYTE(v141) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v137 = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOSSSgIsgyrzr_AByxGAhgHRsd__AGRsd_0_r_0_lIetMggozo_Tp5(partial apply for closure #2 in static String._fromCodeUnits<A, B>(_:encoding:repair:), (&v145 - 12), v41, v43);
    v139 = v138;
    v41;
    if (v139)
    {
      return v137;
    }

LABEL_73:
    v56 = v148 & 1;
    v57 = a1;
    v58 = a4;
    v59 = v149;
    v60 = v146;
    v61 = v147;
    return static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(v57, v56, v58, v59, v60, v61);
  }

  v30 = v154;
  v31 = v155;
  __swift_project_boxed_opaque_existential_0Tm(&v152, v154);
  (*(v31 + 8))(v150, closure #1 in static String._fromCodeUnits<A, B>(_:encoding:repair:), 0, &unk_1EEEBDDF0, v30, v31);
  if (*(&v150[0] + 1))
  {
    v32 = *&v150[0];
  }

  else
  {
    v32 = static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(a1, v148 & 1, a4, v149, v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v152);
  return v32;
}

void String.withCString<A, B>(encodedAs:_:)(ValueMetadata *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (**a6)(char *, uint64_t)@<X5>, Class *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a1 == &type metadata for Unicode.UTF8)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v12;
    v16[5] = v11;
    v16[6] = v13;
    String.withCString<A>(_:)(partial apply for closure #1 in String.withCString<A, B>(encodedAs:_:), v16, v14, v15);
  }

  else
  {
    String._slowWithCString<A, B>(encodedAs:_:)(a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

unint64_t String.init<A>(decodingCString:as:)(char *a1, ValueMetadata *a2, ValueMetadata *a3, int **a4)
{
  v75 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v60[-v14];
  v16 = swift_checkMetadataState(0, v8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v25 = &v60[-v24];
  if (a3 == &type metadata for Unicode.UTF8)
  {
    return String.init(cString:)(a1, _swift_stdlib_strlen_unsigned);
  }

  if (a3 == &type metadata for Unicode.UTF16)
  {
    if (v75 != &type metadata for Unicode.UTF8)
    {
      if (*a1)
      {
        v32 = a1 + 2;
        v33 = a1;
        do
        {
          v34 = *v32;
          v32 += 2;
          v33 += 2;
        }

        while (v34);
      }

      else
      {
        v33 = a1;
      }

      v40 = v33 - a1;
      if (v40 > -2)
      {
        result = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(a1, v40 / 2, v75, 1);
        if (!v41)
        {
          goto LABEL_49;
        }

        return result;
      }

      goto LABEL_30;
    }

    if (!a1)
    {
      goto LABEL_49;
    }

    v35 = _swift_stdlib_strlen_unsigned(a1);
    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v28 = v35;
    goto LABEL_23;
  }

  if (v75 == &type metadata for Unicode.UTF8)
  {
    v26 = v23;
    v27 = _swift_stdlib_strlen_unsigned(a1);
    if (v27 < 0)
    {
      goto LABEL_30;
    }

    v28 = v27;
    v29 = *(v26 + 72);
    if (v29 != 1)
    {
      if ((v27 * v29) >> 64 != (v27 * v29) >> 63)
      {
        __break(1u);
LABEL_51:
        if (!v29)
        {
          goto LABEL_52;
        }

        LODWORD(v62) = 0;
        v61 = 2142;
        v60[0] = 2;
LABEL_30:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v29 < 1 && v29 != -1)
      {
        goto LABEL_51;
      }

      v28 = v27 * v29;
      if (v27 * v29 < 0)
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    v36 = validateUTF8(_:)(a1, v28);
    if ((v36 & 0x8000000000000000) != 0)
    {
      return repairUTF8(_:firstKnownBrokenRange:)(a1, v28, v37, v38);
    }

    else
    {
      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v28, v36 & 1, v39);
    }
  }

  v70 = *(v9 + 64);
  v71 = v9 + 64;
  v67 = v23;
  v68 = *(v23 + 16);
  v69 = v23 + 16;
  v66 = v9 + 128;
  v64 = v9 + 96;
  v73 = (v23 + 8);
  v74 = v22;
  v61 = v10 + 24;
  v62 = v9 + 120;
  for (i = a1; ; i = &v72[*(v67 + 72)])
  {
    v72 = i;
    v45 = v74;
    v68(v25);
    if ((v70)(v45, v9))
    {
      break;
    }

    LODWORD(v65) = v70();
    v46 = (*(v9 + 128))(v74, v9);
    if ((v65 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v46 > 64)
    {
      goto LABEL_32;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v74, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
    (*(v10 + 24))(v15);
    v50 = (*(*(*(v9 + 32) + 8) + 32))(v25, v20);
    v65 = *v73;
    (v65)(v20, v74);
    if (v50)
    {
      v51 = (*(v9 + 120))(v74, v9);
      (v65)(v25, v74);
      if (!v51)
      {
        goto LABEL_45;
      }
    }

    else
    {
      (v65)(v25, v74);
    }

LABEL_33:
    ;
  }

  v46 = (*(v9 + 128))(v74, v9);
LABEL_41:
  if (v46 >= 64)
  {
LABEL_32:
    v76[0] = 0;
    v65 = *(v9 + 96);
    v43 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
    v44 = v74;
    v65(v76, &type metadata for Int, v43, v74, v9);
    v63 = (*(*(*(v9 + 16) + 8) + 8))(v25, v20, v44);
    v65 = *v73;
    (v65)(v20, v44);
    (v65)(v25, v44);
    if (v63)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v52 = (*(v9 + 120))(v74, v9);
  (*v73)(v25, v74);
  if (v52)
  {
    goto LABEL_33;
  }

LABEL_45:
  v53 = *(v67 + 72);
  if (!v53 || v72 - a1 == 0x8000000000000000 && v53 == -1)
  {
LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v76[0] = UnsafeBufferPointer.init(start:count:)(a1, (v72 - a1) / v53);
  v76[1] = v54;
  v57 = type metadata accessor for UnsafeBufferPointer(0, v74, v55, v56);
  swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v57, v58);
  result = static String._fromCodeUnits<A, B>(_:encoding:repair:)(v76, v75, 1, v57);
  if (!v59)
  {
LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OpaquePointer()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OpaquePointer(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t specialized _Pointer.debugDescription.getter(Swift::UInt64 a1)
{
  v1 = _uint64ToString(_:radix:uppercase:)(a1, 16, 0);
  countAndFlagsBits = v1._countAndFlagsBits;
  object = v1._object;
  if ((v1._object & 0x1000000000000000) != 0)
  {
    v5 = String.UTF16View._foreignCount()();
  }

  else
  {
    v4 = (v1._object >> 56) & 0xF;
    if ((v1._object & 0x2000000000000000) == 0)
    {
      v4 = v1._countAndFlagsBits;
    }

    v5 = String.UTF16View._nativeGetOffset(for:)(((v4 << 16) | 7));
  }

  v14 = 16 - v5;
  if (__OFSUB__(16, v5))
  {
    __break(1u);
LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v14 < 0)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    v15 = v5 - 16;
    do
    {
      while (1)
      {
        if (!v15)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((object & 0x2000000000000000) == 0)
        {
          break;
        }

        v16 = specialized _SmallString.init(_:appending:)(0x30uLL, 0xE100000000000000, countAndFlagsBits, object);
        if (v18)
        {
          break;
        }

        v21 = v16;
        v22 = v17;
        object;
        object = v22;
        countAndFlagsBits = v21;
        v20 = __CFADD__(v15++, 1);
        if (v20)
        {
          goto LABEL_20;
        }
      }

      if ((object & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(object) & 0xF;
      }

      else
      {
        v19 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      _StringGuts.append(_:)(countAndFlagsBits, object, 0, v19, v6, v7, v8, v9, v10, v11, v12, v13);
      object;
      countAndFlagsBits = 48;
      object = 0xE100000000000000;
      v20 = __CFADD__(v15++, 1);
    }

    while (!v20);
  }

LABEL_20:
  v23 = specialized static String.+ infix(_:_:)(0x7830uLL, 0xE200000000000000, countAndFlagsBits, object);
  object;
  return v23;
}

uint64_t Int.init<A>(bitPattern:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  if ((*(v8 + 48))(v7, 1, a2) == 1)
  {
    v11 = type metadata accessor for Optional(0, a2, v9, v10);
    (*(*(v11 - 8) + 8))(a1, v11);
    return 0;
  }

  else
  {
    memcpy(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    return (*(a3 + 48))(a2, a3);
  }
}

uint64_t specialized static Optional<A>.== infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (!a2 || !a4)
  {
    return v4;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  if ((~a2 & 0x6000000000000000) == 0 && (a4 & 0x6000000000000000) == 0x6000000000000000)
  {
    return 0;
  }

  return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, 0);
}

uint64_t specialized static Optional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyHashable?(a1, v23);
  outlined init with copy of AnyHashable?(a2, &v24);
  if (!v23[3])
  {
    if (!*(&v25 + 1))
    {
      outlined destroy of AnyHashable?(v23);
      v9 = 1;
      return v9 & 1;
    }

LABEL_7:
    outlined destroy of _HasContiguousBytes?(v23, &_ss11AnyHashableVSg_ACtMd, _ss11AnyHashableVSg_ACtMR);
    v9 = 0;
    return v9 & 1;
  }

  outlined init with copy of AnyHashable?(v23, &v20);
  if (!*(&v25 + 1))
  {
    outlined destroy of AnyHashable(&v20);
    goto LABEL_7;
  }

  v18[0] = v20;
  v18[1] = v21;
  v3 = v22;
  v19 = v22;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v4 = *(&v21 + 1);
  __swift_project_boxed_opaque_existential_0Tm(v18, *(&v21 + 1));
  (*(v3 + 8))(v12, v4, v3);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_0Tm(v12, v13);
  v7 = *(&v16 + 1);
  v8 = v17;
  __swift_project_boxed_opaque_existential_0Tm(&v15, *(&v16 + 1));
  (*(v8 + 8))(v11, v7, v8);
  v9 = (*(v6 + 16))(v11, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  outlined destroy of AnyHashable(&v15);
  outlined destroy of AnyHashable(v18);
  outlined destroy of AnyHashable?(v23);
  return v9 & 1;
}

uint64_t static Optional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v39 = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v35 = &v35 - v10;
  v13 = type metadata accessor for Optional(0, v11, v11, v12);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v40 = &v35 - v16;
  swift_getTupleTypeMetadata2(0, v13, v13, 0, 0);
  v18 = v17;
  v19 = *(v17 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v35 - v22;
  v24 = *(v21 + 48);
  v38 = v14;
  v25 = *(v14 + 16);
  v25(&v35 - v22, v39, v13);
  v25(&v23[v24], a2, v13);
  v39 = v6;
  v26 = *(v6 + 48);
  if (v26(v23, 1, a3) == 1)
  {
    v27 = 1;
    if (v26(&v23[v24], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25(v40, v23, v13);
    if (v26(&v23[v24], 1, a3) != 1)
    {
      v28 = v39;
      v29 = *(v39 + 32);
      v30 = v35;
      v29(v35, v40, a3);
      v31 = &v23[v24];
      v32 = v36;
      v29(v36, v31, a3);
      v27 = (*(v37 + 8))(v30, v32, a3);
      v33 = *(v28 + 8);
      v33(v32, a3);
      v33(v30, a3);
LABEL_8:
      v19 = v38;
      goto LABEL_9;
    }

    (*(v39 + 8))(v40, a3);
  }

  v27 = 0;
  v13 = v18;
LABEL_9:
  (*(v19 + 8))(v23, v13);
  return v27 & 1;
}

uint64_t String.init<A>(_:radix:uppercase:)(uint64_t a1, Swift::Int radix, Swift::Bool uppercase, uint64_t a4)
{
  countAndFlagsBits = BinaryInteger._description(radix:uppercase:)(radix, uppercase)._countAndFlagsBits;
  (*(*(a4 - 8) + 8))(a1, a4);
  return countAndFlagsBits;
}

uint64_t static _DebuggerSupport.ivarCount(mirror:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (*(a1 + 24))(&v17);
  v3 = v17;
  if (v17)
  {
    v5 = v20;
    v4 = v21;
    v7 = v18;
    v6 = v19;
    v12[0] = v17;
    v12[1] = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22 & 1;
    v8 = static _DebuggerSupport.ivarCount(mirror:)(v12);
    v2 = outlined consume of Mirror?(v3, v7, v6, v5, v4);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*v1 + 320))(v2);
  v10 = __OFADD__(v8, v9);
  result = v8 + v9;
  if (v10)
  {
    __break(1u);
  }

  return result;
}

void _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, Swift::Int a5, uint64_t a6, unsigned __int8 a7, unsigned __int8 a8, uint64_t *a9, uint64_t *a10, unint64_t *a11)
{
  v11 = *a10 - 1;
  if (*a10 < 1)
  {
    return;
  }

  v13 = a7;
  v14 = a5;
  v16 = a1;
  v581 = *(a2 + 8);
  v17 = *(a2 + 16);
  v575 = *(a2 + 24);
  v587 = v17;
  if ((a7 & 1) == 0 && !a8 && (specialized static AnyIndex.== infix(_:_:)(*(v581 + 16), *(v581 + 24), *(v581 + 32), *(v581 + 40)) & 1) != 0 && v17 != 1)
  {
    v575(&v599);
    v18 = v599;
    if (v599)
    {
      v20 = *(&v600 + 1);
      v19 = v601;
      v583 = v13;
      v21 = *(&v599 + 1);
      v22 = v600;
      BYTE8(v601) &= 1u;
      v23 = static _DebuggerSupport.ivarCount(mirror:)(&v599);
      v24 = v22;
      v13 = v583;
      v25 = v20;
      v16 = a1;
      v14 = a5;
      outlined consume of Mirror?(v18, v21, v24, v25, v19);
      if (v23 < 1)
      {
        return;
      }
    }
  }

  *a10 = v11;
  v26 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
  v27 = swift_allocObject(v26, 0x40, 7uLL);
  *(v27 + 1) = xmmword_18071DB30;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  v29 = String.init(repeating:count:)(v28, v14);
  v27[7] = &type metadata for String;
  *(v27 + 2) = v29;
  specialized _print<A>(_:separator:terminator:to:)(v27, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, a11);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v27 + 4);
  swift_deallocClassInstance(v27);
  v30 = v587 == 1;
  outlined init with copy of Any?(v16, &v599);
  if (*(&v600 + 1))
  {
    outlined init with take of Any(&v599, v598);
    outlined init with take of Any(v598, &v606);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
    if ((swift_dynamicCast(&v599, &v606, qword_1EEEAC6F8, v31, 6uLL, v32, v33, v34, v574) & 1) == 0)
    {
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v599);
  }

  else
  {
    outlined destroy of Any?(&v599);
  }

  v30 = 0;
LABEL_13:
  v35 = (*(*v581 + 320))();
  v36 = 549033698;
  if (a6 > 0)
  {
    v36 = 549426914;
  }

  v576 = v35;
  v37 = 0xA400000000000000;
  if (!v35)
  {
    v37 = 0xE200000000000000;
    v36 = 8237;
  }

  if (v13 & (v30 || v35 == 0))
  {
    v38 = 0xE000000000000000;
  }

  else
  {
    v38 = v37;
  }

  if (v13 & (v30 || v35 == 0))
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  v40 = swift_allocObject(v26, 0x40, 7uLL);
  *(v40 + 1) = xmmword_18071DB30;
  v40[7] = &type metadata for String;
  v40[4] = v39;
  v40[5] = v38;
  specialized _print<A>(_:separator:terminator:to:)(v40, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, a11);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v40 + 4);
  swift_deallocClassInstance(v40);
  v41 = v587;
  v42 = v587 - 5;
  if ((v587 - 5) < 3)
  {
    LODWORD(v43) = 0x10201u >> (8 * (v42 & 0x1F));
    goto LABEL_27;
  }

  if (a8 < 5u)
  {
    v43 = 0x500040300uLL >> (8 * (a8 & 0x1Fu));
LABEL_27:
    v584 = v43;
    v44 = a1;
    if (!a4)
    {
      goto LABEL_28;
    }

LABEL_31:
    v45 = swift_allocObject(v26, 0x40, 7uLL);
    *(v45 + 1) = xmmword_18071DB30;
    v46 = _StringGuts.init(_initialCapacity:)(5);
    v56 = v47;
    *&v599 = v46;
    *(&v599 + 1) = v47;
    v57 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v57 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v57 || (v46 & ~v47 & 0x2000000000000000) != 0)
    {
      if (v47 & 0x2000000000000000) == 0 || (v58 = specialized _SmallString.init(_:appending:)(v46, v47, 0, 0xE000000000000000), (v60))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v48, v49, v50, v51, v52, v53, v54, v55);
        0xE000000000000000;
        v70 = *(&v599 + 1);
        v69 = v599;
        goto LABEL_41;
      }

      v70 = v59;
      v71 = v58;
      v56;
      0xE000000000000000;
      v69 = v71;
      v44 = a1;
      *&v599 = v69;
    }

    else
    {
      v47;
      v69 = 0;
      v70 = 0xE000000000000000;
      *&v599 = 0;
    }

    *(&v599 + 1) = v70;
LABEL_41:
    v72 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v72 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (v72 || (v69 & ~v70 & 0x2000000000000000) != 0)
    {
      if ((v70 & 0x2000000000000000) != 0 && (a4 & 0x2000000000000000) != 0 && (v73 = specialized _SmallString.init(_:appending:)(v69, v70, a3, a4), (v75 & 1) == 0))
      {
        v86 = v73;
        v87 = v74;
        v70;
        *&v599 = v86;
        *(&v599 + 1) = v87;
        a4 = v87;
        v85 = v86;
        v44 = a1;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v76 = HIBYTE(a4) & 0xF;
        }

        else
        {
          v76 = a3 & 0xFFFFFFFFFFFFLL;
        }

        _StringGuts.append(_:)(a3, a4, 0, v76, v61, v62, v63, v64, v65, v66, v67, v68);
        a4 = *(&v599 + 1);
        v85 = v599;
        v44 = a1;
      }
    }

    else
    {
      a4;
      v70;
      v85 = a3;
      *&v599 = a3;
      *(&v599 + 1) = a4;
    }

    v88 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v88 = v85 & 0xFFFFFFFFFFFFLL;
    }

    if (v88 || (v85 & ~a4 & 0x2000000000000000) != 0)
    {
      if ((a4 & 0x2000000000000000) != 0 && (v89 = specialized _SmallString.init(_:appending:)(v85, a4, 0x203A20uLL, 0xE300000000000000), (v91 & 1) == 0))
      {
        v92 = v89;
        v93 = v90;
        a4;
        0xE300000000000000;
      }

      else
      {
        _StringGuts.append(_:)(2112032, 0xE300000000000000, 0, 3, v77, v78, v79, v80, v81, v82, v83, v84);
        0xE300000000000000;
        v93 = *(&v599 + 1);
        v92 = v599;
      }
    }

    else
    {
      v92 = 2112032;
      a4;
      v93 = 0xE300000000000000;
    }

    v45[7] = &type metadata for String;
    v45[4] = v92;
    v45[5] = v93;
    specialized _print<A>(_:separator:terminator:to:)(v45, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, a11);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v45 + 4);
    swift_deallocClassInstance(v45);
    v41 = v587;
    v578 = v26;
    if ((v13 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  v584 = 0;
  v44 = a1;
  if (a4)
  {
    goto LABEL_31;
  }

LABEL_28:
  v578 = v26;
  if ((v13 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_64:
  outlined init with copy of Any?(v44, &v599);
  if (*(&v600 + 1))
  {
    if (swift_dynamicCast(v598, &v599, qword_1EEEAC6F8, &type metadata for String, 6uLL, v94, v95, v96, v574))
    {
      object = *&v598[8];
      countAndFlagsBits = *v598;
      v99 = a11;
      goto LABEL_230;
    }
  }

  else
  {
    outlined destroy of Any?(&v599);
  }

LABEL_68:
  v100 = *a2;
  if (v41 > 4)
  {
    if (v42 < 3)
    {
LABEL_80:
      if (v576 == 1)
      {
        v115 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("1 element", 9uLL, 1);
        countAndFlagsBits = v115._countAndFlagsBits;
        object = v115._object;
        v99 = a11;
        if (!v115._object)
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      v116 = _StringGuts.init(_initialCapacity:)(11);
      v126 = v116;
      v127 = v117;
      *&v599 = v116;
      *(&v599 + 1) = v117;
      v128 = HIBYTE(v117) & 0xF;
      v129 = v116 & 0xFFFFFFFFFFFFLL;
      if ((v117 & 0x2000000000000000) != 0)
      {
        v129 = HIBYTE(v117) & 0xF;
      }

      v99 = a11;
      if (v129 || (v116 & ~v117 & 0x2000000000000000) != 0)
      {
        if ((v117 & 0x2000000000000000) == 0)
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v118, v119, v120, v121, v122, v123, v124, v125);
          0xE000000000000000;
          v130 = *(&v599 + 1);
          v126 = v599;
          goto LABEL_139;
        }

        0xE000000000000000;
        v127;
        v146 = 0xA000000000000000;
        if (!(v127 & 0x80808080808080 | v126 & 0x8080808080808080))
        {
          v146 = 0xE000000000000000;
        }

        v130 = v146 & 0xFF00000000000000 | (v128 << 56) | v127 & 0xFFFFFFFFFFFFFFLL;
        *&v599 = v126;
      }

      else
      {
        v117;
        v126 = 0;
        v130 = 0xE000000000000000;
        *&v599 = 0;
      }

      *(&v599 + 1) = v130;
LABEL_139:
      v202 = _int64ToString(_:radix:uppercase:)(v576, 10, 0, swift_int64ToString);
      v211 = v201;
      v212 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v212 = v126 & 0xFFFFFFFFFFFFLL;
      }

      if (v212 || (v126 & ~v130 & 0x2000000000000000) != 0)
      {
        if ((v130 & 0x2000000000000000) == 0)
        {
          if ((v201 & 0x2000000000000000) != 0)
          {
            goto LABEL_149;
          }

LABEL_147:
          v213 = v202 & 0xFFFFFFFFFFFFLL;
LABEL_150:
          _StringGuts.append(_:)(v202, v211, 0, v213, v203, v204, v205, v206, v207, v208, v209, v210);
          v211;
          v211 = *(&v599 + 1);
          v202 = v599;
          goto LABEL_151;
        }

        if ((v201 & 0x2000000000000000) == 0)
        {
          goto LABEL_147;
        }

        v214 = specialized _SmallString.init(_:appending:)(v126, v130, v202, v201);
        if (v216)
        {
LABEL_149:
          v213 = HIBYTE(v211) & 0xF;
          goto LABEL_150;
        }

        v233 = v214;
        v234 = v215;
        v211;
        v130;
        *&v599 = v233;
        *(&v599 + 1) = v234;
        v211 = v234;
        v202 = v233;
      }

      else
      {
        v130;
        *&v599 = v202;
        *(&v599 + 1) = v211;
      }

LABEL_151:
      v225 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements", 9uLL, 1);
      countAndFlagsBits = v225._countAndFlagsBits;
      object = v225._object;
      v226 = HIBYTE(v211) & 0xF;
      if ((v211 & 0x2000000000000000) == 0)
      {
        v226 = v202 & 0xFFFFFFFFFFFFLL;
      }

      if (!v226 && (v202 & ~v211 & 0x2000000000000000) == 0)
      {
        v211;
        if (!v225._object)
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      if ((v211 & 0x2000000000000000) != 0)
      {
        if ((v225._object & 0x2000000000000000) != 0)
        {
          v228 = specialized _SmallString.init(_:appending:)(v202, v211, v225._countAndFlagsBits, v225._object);
          if ((v230 & 1) == 0)
          {
            v235 = v228;
            v236 = v229;
            v225._object;
            v211;
            countAndFlagsBits = v235;
            object = v236;
            if (!v236)
            {
              goto LABEL_231;
            }

            goto LABEL_230;
          }

          goto LABEL_161;
        }
      }

      else if ((v225._object & 0x2000000000000000) != 0)
      {
LABEL_161:
        v227 = (v225._object >> 56) & 0xF;
        goto LABEL_162;
      }

      v227 = v225._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_162:
      _StringGuts.append(_:)(v225._countAndFlagsBits, v225._object, 0, v227, v217, v218, v219, v220, v221, v222, v223, v224);
      v231 = v225._object;
      goto LABEL_163;
    }

    if (v41 != 8)
    {
LABEL_90:
      outlined init with copy of Any?(v44, &v606);
      v99 = a11;
      if (v608)
      {
        outlined init with copy of Any?(&v606, &v602);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (swift_dynamicCast(&v599, &v602, qword_1EEEAC6F8, v131, 0, v132, v133, v134, v574) || (v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v599, &v602, qword_1EEEAC6F8, v139, 0, v140, v141, v142, v574)))
        {
          _ss9CodingKey_pWOb_0(&v599, v598);
          v143 = *&v598[24];
          v144 = *&v598[32];
          __swift_project_boxed_opaque_existential_0Tm(v598, *&v598[24]);
          countAndFlagsBits = (*(v144 + 8))(v143, v144);
          object = v145;
          __swift_destroy_boxed_opaque_existential_1Tm(v598);
          __swift_destroy_boxed_opaque_existential_1Tm(&v602);
          goto LABEL_229;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v602);
      }

      if (v576 < 1)
      {
        outlined init with copy of Any?(v44, &v599);
        if (*(&v600 + 1))
        {
          outlined init with take of Any(&v599, v598);
          *&v602 = 0;
          *(&v602 + 1) = 0xE000000000000000;
          _debugPrint_unlocked<A, B>(_:_:)(v598, &v602, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
          __swift_destroy_boxed_opaque_existential_1Tm(v598);
          object = *(&v602 + 1);
          countAndFlagsBits = v602;
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0;
        }

        goto LABEL_229;
      }

      v168 = _StringGuts.init(_initialCapacity:)(2);
      v178 = v168;
      v179 = v169;
      *&v599 = v168;
      *(&v599 + 1) = v169;
      v180 = HIBYTE(v169) & 0xF;
      v181 = v168 & 0xFFFFFFFFFFFFLL;
      if ((v169 & 0x2000000000000000) != 0)
      {
        v181 = HIBYTE(v169) & 0xF;
      }

      if (v181 || (v168 & ~v169 & 0x2000000000000000) != 0)
      {
        if ((v169 & 0x2000000000000000) == 0)
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v170, v171, v172, v173, v174, v175, v176, v177);
          0xE000000000000000;
          goto LABEL_178;
        }

        0xE000000000000000;
        v179;
        v182 = 0xA000000000000000;
        if (!(v179 & 0x80808080808080 | v178 & 0x8080808080808080))
        {
          v182 = 0xE000000000000000;
        }

        v183 = v182 & 0xFF00000000000000 | (v180 << 56) | v179 & 0xFFFFFFFFFFFFFFLL;
        *&v599 = v178;
      }

      else
      {
        v169;
        v183 = 0xE000000000000000;
        *&v599 = 0;
      }

      *(&v599 + 1) = v183;
LABEL_178:
      TypeName = swift_getTypeName(v100, 0);
      if (v238 < 0)
      {
        goto LABEL_431;
      }

      v239 = TypeName;
      v240 = v238;
      v241 = validateUTF8(_:)(TypeName, v238);
      if ((v241 & 0x8000000000000000) != 0)
      {
        v245 = repairUTF8(_:firstKnownBrokenRange:)(v239, v240, v242, v243);
      }

      else
      {
        v245 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v239, v240, v241 & 1, v244);
      }

      countAndFlagsBits = v245;
      v255 = v246;
      v256 = *(&v599 + 1);
      v257 = HIBYTE(*(&v599 + 1)) & 0xFLL;
      if ((*(&v599 + 1) & 0x2000000000000000) == 0)
      {
        v257 = v599 & 0xFFFFFFFFFFFFLL;
      }

      if (v257 || (v599 & ~*(&v599 + 1) & 0x2000000000000000) != 0)
      {
        if ((*(&v599 + 1) & 0x2000000000000000) == 0)
        {
          if ((v246 & 0x2000000000000000) != 0)
          {
            goto LABEL_192;
          }

LABEL_190:
          v258 = v245 & 0xFFFFFFFFFFFFLL;
LABEL_193:
          _StringGuts.append(_:)(countAndFlagsBits, v255, 0, v258, v247, v248, v249, v250, v251, v252, v253, v254);
          v255;
          v255 = *(&v599 + 1);
          countAndFlagsBits = v599;
          goto LABEL_194;
        }

        if ((v246 & 0x2000000000000000) == 0)
        {
          goto LABEL_190;
        }

        v259 = specialized _SmallString.init(_:appending:)(v599, *(&v599 + 1), v245, v246);
        if (v261)
        {
LABEL_192:
          v258 = HIBYTE(v255) & 0xF;
          goto LABEL_193;
        }

        v272 = v259;
        v273 = v260;
        v255;
        v256;
        *&v599 = v272;
        *(&v599 + 1) = v273;
        v255 = v273;
        countAndFlagsBits = v272;
      }

      else
      {
        *(&v599 + 1);
        *&v599 = countAndFlagsBits;
        *(&v599 + 1) = v255;
      }

LABEL_194:
      v270 = HIBYTE(v255) & 0xF;
      v271 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v255 & 0x2000000000000000) != 0)
      {
        v271 = HIBYTE(v255) & 0xF;
      }

      if (v271 || (countAndFlagsBits & ~v255 & 0x2000000000000000) != 0)
      {
        if ((v255 & 0x2000000000000000) == 0)
        {
LABEL_199:
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v262, v263, v264, v265, v266, v267, v268, v269);
          0xE000000000000000;
          object = *(&v599 + 1);
          countAndFlagsBits = v599;
          goto LABEL_229;
        }

        goto LABEL_225;
      }

      goto LABEL_228;
    }

LABEL_94:
    outlined init with copy of Any?(v44, &v606);
    if (v608)
    {
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
      v99 = a11;
      if (swift_dynamicCast(&v599, &v606, qword_1EEEAC6F8, v135, 0, v136, v137, v138, v574) || (v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v599, &v606, qword_1EEEAC6F8, v161, 0, v162, v163, v164, v574)))
      {
        _ss9CodingKey_pWOb_0(&v599, v598);
        v165 = *&v598[24];
        v166 = *&v598[32];
        __swift_project_boxed_opaque_existential_0Tm(v598, *&v598[24]);
        countAndFlagsBits = (*(v166 + 8))(v165, v166);
        object = v167;
        __swift_destroy_boxed_opaque_existential_1Tm(v598);
        __swift_destroy_boxed_opaque_existential_1Tm(&v606);
        if (!object)
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      outlined init with take of Any(&v606, &v599);
      v186 = _StringGuts.init(_initialCapacity:)(10);
      v196 = v187;
      *v598 = v186;
      *&v598[8] = v187;
      v197 = HIBYTE(v187) & 0xF;
      if ((v187 & 0x2000000000000000) == 0)
      {
        v197 = v186 & 0xFFFFFFFFFFFFLL;
      }

      if (v197 || (v186 & ~v187 & 0x2000000000000000) != 0)
      {
        if ((v187 & 0x2000000000000000) != 0 && (v198 = specialized _SmallString.init(_:appending:)(v186, v187, 0x3CuLL, 0xE100000000000000), (v200 & 1) == 0))
        {
          v484 = v198;
          v485 = v199;
          0xE100000000000000;
          v196;
          *v598 = v484;
          *&v598[8] = v485;
        }

        else
        {
          _StringGuts.append(_:)(60, 0xE100000000000000, 0, 1, v188, v189, v190, v191, v192, v193, v194, v195);
          0xE100000000000000;
        }
      }

      else
      {
        v187;
        *v598 = 60;
        *&v598[8] = 0xE100000000000000;
      }

      v488 = *(&v600 + 1);
      v489 = __swift_project_boxed_opaque_existential_0Tm(&v599, *(&v600 + 1));
      DynamicType = swift_getDynamicType(v489, v488, 1);
      v491 = swift_getTypeName(DynamicType, 0);
      if (v492 < 0)
      {
        goto LABEL_431;
      }

      v493 = v491;
      v494 = v492;
      v495 = validateUTF8(_:)(v491, v492);
      if ((v495 & 0x8000000000000000) != 0)
      {
        v499 = repairUTF8(_:firstKnownBrokenRange:)(v493, v494, v496, v497);
      }

      else
      {
        v499 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v493, v494, v495 & 1, v498);
      }

      v509 = v500;
      v510 = *&v598[8];
      v511 = HIBYTE(*&v598[8]) & 0xFLL;
      if ((*&v598[8] & 0x2000000000000000) == 0)
      {
        v511 = *v598 & 0xFFFFFFFFFFFFLL;
      }

      if (v511 || (*v598 & ~*&v598[8] & 0x2000000000000000) != 0)
      {
        if ((*&v598[8] & 0x2000000000000000) == 0)
        {
          if ((v500 & 0x2000000000000000) != 0)
          {
            v512 = HIBYTE(v500) & 0xF;
LABEL_385:
            _StringGuts.append(_:)(v499, v509, 0, v512, v501, v502, v503, v504, v505, v506, v507, v508);
            v509;
            v509 = *&v598[8];
            v521 = *v598;
            goto LABEL_386;
          }

LABEL_384:
          v512 = v499 & 0xFFFFFFFFFFFFLL;
          goto LABEL_385;
        }

        if ((v500 & 0x2000000000000000) == 0)
        {
          goto LABEL_384;
        }

        v526 = v499;
        v527 = specialized _SmallString.init(_:appending:)(*v598, *&v598[8], v499, v500);
        if (v529)
        {
          v512 = HIBYTE(v509) & 0xF;
          v499 = v526;
          goto LABEL_385;
        }

        v570 = v528;
        v571 = v527;
        v510;
        v509;
        *v598 = v571;
        *&v598[8] = v570;
        v509 = v570;
        v521 = v571;
      }

      else
      {
        v532 = v499;
        *&v598[8];
        v521 = v532;
        *v598 = v532;
        *&v598[8] = v509;
      }

LABEL_386:
      v522 = HIBYTE(v509) & 0xF;
      if ((v509 & 0x2000000000000000) == 0)
      {
        v522 = v521 & 0xFFFFFFFFFFFFLL;
      }

      if (v522 || (v521 & ~v509 & 0x2000000000000000) != 0)
      {
        if ((v509 & 0x2000000000000000) != 0 && (v523 = specialized _SmallString.init(_:appending:)(v521, v509, 0x7830203AuLL, 0xE400000000000000), (v525 & 1) == 0))
        {
          v530 = v523;
          v531 = v524;
          v509;
          0xE400000000000000;
          *v598 = v530;
          *&v598[8] = v531;
        }

        else
        {
          _StringGuts.append(_:)(2016419898, 0xE400000000000000, 0, 4, v513, v514, v515, v516, v517, v518, v519, v520);
          0xE400000000000000;
        }
      }

      else
      {
        v509;
        *v598 = 2016419898;
        *&v598[8] = 0xE400000000000000;
      }

      v533 = *(&v600 + 1);
      v534 = __swift_project_boxed_opaque_existential_0Tm(&v599, *(&v600 + 1));
      v535 = swift_getDynamicType(v534, v533, 1);
      if (swift_isClassType(v535) && v535)
      {
        v536 = _unsafeDowncastToAnyObject(fromAny:)(&v599);
        __swift_destroy_boxed_opaque_existential_1Tm(&v599);
        swift_unknownObjectRelease(v536);
        v537 = v536;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v599);
        v537 = 0;
      }

      v538 = _int64ToString(_:radix:uppercase:)(v537, 16, 0, swift_int64ToString);
      v548 = v539;
      v549 = *&v598[8];
      v550 = HIBYTE(*&v598[8]) & 0xFLL;
      if ((*&v598[8] & 0x2000000000000000) == 0)
      {
        v550 = *v598 & 0xFFFFFFFFFFFFLL;
      }

      if (v550 || (*v598 & ~*&v598[8] & 0x2000000000000000) != 0)
      {
        if ((*&v598[8] & 0x2000000000000000) == 0)
        {
          if ((v539 & 0x2000000000000000) != 0)
          {
            v551 = HIBYTE(v539) & 0xF;
LABEL_411:
            _StringGuts.append(_:)(v538, v548, 0, v551, v540, v541, v542, v543, v544, v545, v546, v547);
            v548;
            v548 = *&v598[8];
            v560 = *v598;
            goto LABEL_412;
          }

LABEL_410:
          v551 = v538 & 0xFFFFFFFFFFFFLL;
          goto LABEL_411;
        }

        if ((v539 & 0x2000000000000000) == 0)
        {
          goto LABEL_410;
        }

        v565 = v538;
        v566 = specialized _SmallString.init(_:appending:)(*v598, *&v598[8], v538, v539);
        if (v568)
        {
          v551 = HIBYTE(v548) & 0xF;
          v538 = v565;
          goto LABEL_411;
        }

        v572 = v567;
        v573 = v566;
        v548;
        v549;
        *v598 = v573;
        *&v598[8] = v572;
        v548 = v572;
        v560 = v573;
      }

      else
      {
        v569 = v538;
        *&v598[8];
        v560 = v569;
        *v598 = v569;
        *&v598[8] = v548;
      }

LABEL_412:
      v561 = HIBYTE(v548) & 0xF;
      if ((v548 & 0x2000000000000000) == 0)
      {
        v561 = v560 & 0xFFFFFFFFFFFFLL;
      }

      if (v561 || (v560 & ~v548 & 0x2000000000000000) != 0)
      {
        if ((v548 & 0x2000000000000000) != 0 && (v562 = specialized _SmallString.init(_:appending:)(v560, v548, 0x3EuLL, 0xE100000000000000), (v564 & 1) == 0))
        {
          countAndFlagsBits = v562;
          object = v563;
          v548;
          0xE100000000000000;
          if (!object)
          {
            goto LABEL_231;
          }
        }

        else
        {
          _StringGuts.append(_:)(62, 0xE100000000000000, 0, 1, v552, v553, v554, v555, v556, v557, v558, v559);
          0xE100000000000000;
          object = *&v598[8];
          countAndFlagsBits = *v598;
          if (!*&v598[8])
          {
            goto LABEL_231;
          }
        }
      }

      else
      {
        v548;
        object = 0xE100000000000000;
        countAndFlagsBits = 62;
      }

      goto LABEL_230;
    }

    v147 = _StringGuts.init(_initialCapacity:)(2);
    v157 = v147;
    v158 = v148;
    *&v599 = v147;
    *(&v599 + 1) = v148;
    v159 = HIBYTE(v148) & 0xF;
    v160 = v147 & 0xFFFFFFFFFFFFLL;
    if ((v148 & 0x2000000000000000) != 0)
    {
      v160 = HIBYTE(v148) & 0xF;
    }

    v99 = a11;
    if (v160 || (v147 & ~v148 & 0x2000000000000000) != 0)
    {
      if ((v148 & 0x2000000000000000) == 0)
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v149, v150, v151, v152, v153, v154, v155, v156);
        0xE000000000000000;
        goto LABEL_204;
      }

      0xE000000000000000;
      v158;
      v184 = 0xA000000000000000;
      if (!(v158 & 0x80808080808080 | v157 & 0x8080808080808080))
      {
        v184 = 0xE000000000000000;
      }

      v185 = v184 & 0xFF00000000000000 | (v159 << 56) | v158 & 0xFFFFFFFFFFFFFFLL;
      *&v599 = v157;
    }

    else
    {
      v148;
      v185 = 0xE000000000000000;
      *&v599 = 0;
    }

    *(&v599 + 1) = v185;
LABEL_204:
    v274 = swift_getTypeName(v100, 0);
    if (v275 < 0)
    {
      goto LABEL_431;
    }

    v276 = v274;
    v277 = v275;
    v278 = validateUTF8(_:)(v274, v275);
    if ((v278 & 0x8000000000000000) != 0)
    {
      v282 = repairUTF8(_:firstKnownBrokenRange:)(v276, v277, v279, v280);
    }

    else
    {
      v282 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v276, v277, v278 & 1, v281);
    }

    countAndFlagsBits = v282;
    v255 = v283;
    v292 = *(&v599 + 1);
    v293 = HIBYTE(*(&v599 + 1)) & 0xFLL;
    if ((*(&v599 + 1) & 0x2000000000000000) == 0)
    {
      v293 = v599 & 0xFFFFFFFFFFFFLL;
    }

    if (v293 || (v599 & ~*(&v599 + 1) & 0x2000000000000000) != 0)
    {
      if ((*(&v599 + 1) & 0x2000000000000000) == 0)
      {
        if ((v283 & 0x2000000000000000) != 0)
        {
          goto LABEL_218;
        }

LABEL_216:
        v294 = v282 & 0xFFFFFFFFFFFFLL;
LABEL_219:
        _StringGuts.append(_:)(countAndFlagsBits, v255, 0, v294, v284, v285, v286, v287, v288, v289, v290, v291);
        v255;
        v255 = *(&v599 + 1);
        countAndFlagsBits = v599;
        goto LABEL_220;
      }

      if ((v283 & 0x2000000000000000) == 0)
      {
        goto LABEL_216;
      }

      v295 = specialized _SmallString.init(_:appending:)(v599, *(&v599 + 1), v282, v283);
      if (v297)
      {
LABEL_218:
        v294 = HIBYTE(v255) & 0xF;
        goto LABEL_219;
      }

      v482 = v295;
      v483 = v296;
      v255;
      v292;
      *&v599 = v482;
      *(&v599 + 1) = v483;
      v255 = v483;
      countAndFlagsBits = v482;
    }

    else
    {
      *(&v599 + 1);
      *&v599 = countAndFlagsBits;
      *(&v599 + 1) = v255;
    }

LABEL_220:
    v270 = HIBYTE(v255) & 0xF;
    v298 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v255 & 0x2000000000000000) != 0)
    {
      v298 = HIBYTE(v255) & 0xF;
    }

    if (v298 || (countAndFlagsBits & ~v255 & 0x2000000000000000) != 0)
    {
      if ((v255 & 0x2000000000000000) == 0)
      {
        goto LABEL_199;
      }

LABEL_225:
      v255;
      0xE000000000000000;
      v299 = 0xA000000000000000;
      if (!(v255 & 0x80808080808080 | countAndFlagsBits & 0x8080808080808080))
      {
        v299 = 0xE000000000000000;
      }

      object = v299 & 0xFF00000000000000 | (v270 << 56) | v255 & 0xFFFFFFFFFFFFFFLL;
LABEL_229:
      outlined destroy of Any?(&v606);
      if (object)
      {
        goto LABEL_230;
      }

      goto LABEL_231;
    }

LABEL_228:
    v255;
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_229;
  }

  if (v41 <= 1)
  {
    if (!v41)
    {
      goto LABEL_90;
    }

    goto LABEL_94;
  }

  if (v41 == 2)
  {
    goto LABEL_90;
  }

  if (v41 == 3)
  {
    goto LABEL_80;
  }

  if (v576 >= 1)
  {
    v101 = _StringGuts.init(_initialCapacity:)(2);
    v111 = v101;
    v112 = v102;
    *&v599 = v101;
    *(&v599 + 1) = v102;
    v113 = HIBYTE(v102) & 0xF;
    v114 = v101 & 0xFFFFFFFFFFFFLL;
    if ((v102 & 0x2000000000000000) != 0)
    {
      v114 = HIBYTE(v102) & 0xF;
    }

    v99 = a11;
    if (v114 || (v101 & ~v102 & 0x2000000000000000) != 0)
    {
      if ((v102 & 0x2000000000000000) != 0)
      {
        0xE000000000000000;
        v112;
        v232 = 0xA000000000000000;
        if (!(v112 & 0x80808080808080 | v111 & 0x8080808080808080))
        {
          v232 = 0xE000000000000000;
        }

        *&v599 = v111;
        *(&v599 + 1) = v232 & 0xFF00000000000000 | (v113 << 56) | v112 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v103, v104, v105, v106, v107, v108, v109, v110);
        0xE000000000000000;
      }
    }

    else
    {
      v102;
      *&v599 = 0;
      *(&v599 + 1) = 0xE000000000000000;
    }

    v447 = swift_getTypeName(v100, 0);
    if (v448 < 0)
    {
      goto LABEL_431;
    }

    v449 = v447;
    v450 = v448;
    v451 = validateUTF8(_:)(v447, v448);
    if ((v451 & 0x8000000000000000) != 0)
    {
      v455 = repairUTF8(_:firstKnownBrokenRange:)(v449, v450, v452, v453);
    }

    else
    {
      v455 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v449, v450, v451 & 1, v454);
    }

    countAndFlagsBits = v455;
    v465 = v456;
    v466 = *(&v599 + 1);
    v467 = HIBYTE(*(&v599 + 1)) & 0xFLL;
    if ((*(&v599 + 1) & 0x2000000000000000) == 0)
    {
      v467 = v599 & 0xFFFFFFFFFFFFLL;
    }

    if (v467 || (v599 & ~*(&v599 + 1) & 0x2000000000000000) != 0)
    {
      if ((*(&v599 + 1) & 0x2000000000000000) == 0)
      {
        if ((v456 & 0x2000000000000000) != 0)
        {
          goto LABEL_354;
        }

LABEL_352:
        v468 = v455 & 0xFFFFFFFFFFFFLL;
LABEL_355:
        _StringGuts.append(_:)(countAndFlagsBits, v465, 0, v468, v457, v458, v459, v460, v461, v462, v463, v464);
        v465;
        v465 = *(&v599 + 1);
        countAndFlagsBits = v599;
        goto LABEL_356;
      }

      if ((v456 & 0x2000000000000000) == 0)
      {
        goto LABEL_352;
      }

      v469 = specialized _SmallString.init(_:appending:)(v599, *(&v599 + 1), v455, v456);
      if (v471)
      {
LABEL_354:
        v468 = HIBYTE(v465) & 0xF;
        goto LABEL_355;
      }

      v486 = v469;
      v487 = v470;
      v465;
      v466;
      *&v599 = v486;
      *(&v599 + 1) = v487;
      v465 = v487;
      countAndFlagsBits = v486;
    }

    else
    {
      *(&v599 + 1);
      *&v599 = countAndFlagsBits;
      *(&v599 + 1) = v465;
    }

LABEL_356:
    v480 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v465 & 0x2000000000000000) != 0)
    {
      v480 = HIBYTE(v465) & 0xF;
    }

    if (v480 || (countAndFlagsBits & ~v465 & 0x2000000000000000) != 0)
    {
      if ((v465 & 0x2000000000000000) == 0)
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v472, v473, v474, v475, v476, v477, v478, v479);
        v231 = 0xE000000000000000;
LABEL_163:
        v231;
        object = *(&v599 + 1);
        countAndFlagsBits = v599;
        if (!*(&v599 + 1))
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      v465;
      0xE000000000000000;
      v481 = 0xA000000000000000;
      if (!(v465 & 0x80808080808080 | countAndFlagsBits & 0x8080808080808080))
      {
        v481 = 0xE000000000000000;
      }

      object = v481 & 0xFF00000000000000 | ((HIBYTE(v465) & 0xF) << 56) | v465 & 0xFFFFFFFFFFFFFFLL;
      if (!object)
      {
        goto LABEL_231;
      }
    }

    else
    {
      v465;
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

LABEL_230:
    v300 = swift_allocObject(v578, 0x40, 7uLL);
    *(v300 + 1) = xmmword_18071DB30;
    v300[7] = &type metadata for String;
    v300[4] = countAndFlagsBits;
    v300[5] = object;
    specialized _print<A>(_:separator:terminator:to:)(v300, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v99);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v300);
    __swift_destroy_boxed_opaque_existential_1Tm(v300 + 4);
    swift_deallocClassInstance(v300);
    goto LABEL_231;
  }

  outlined init with copy of Any?(v44, &v599);
  v99 = a11;
  if (*(&v600 + 1))
  {
    outlined init with take of Any(&v599, v598);
    *&v606 = 0;
    *(&v606 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v598, &v606, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
    __swift_destroy_boxed_opaque_existential_1Tm(v598);
    object = *(&v606 + 1);
    countAndFlagsBits = v606;
    if (*(&v606 + 1))
    {
      goto LABEL_230;
    }
  }

LABEL_231:
  v586 = a6 - 1;
  v301 = a6 < 1 || v30;
  if (v301)
  {
    v302 = swift_allocObject(v578, 0x40, 7uLL);
    v303 = v302;
    *(v302 + 1) = xmmword_18071DB30;
    v302[7] = &type metadata for String;
    v302[4] = 0;
    v304 = v302 + 4;
    v305 = 0xE000000000000000;
LABEL_236:
    v302[5] = v305;
    specialized _print<A>(_:separator:terminator:to:)(v302, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000, v99);
    swift_bridgeObjectRelease_n(0xE100000000000000, 2);
    swift_setDeallocating(v303);
    v306 = v304;
    goto LABEL_237;
  }

  outlined init with copy of Any?(v44, &v599);
  if (*(&v600 + 1))
  {
    outlined init with take of Any(&v599, v598);
    v307 = *&v598[24];
    v308 = __swift_project_boxed_opaque_existential_0Tm(v598, *&v598[24]);
    v309 = swift_getDynamicType(v308, v307, 1);
    if (swift_isClassType(v309) && v309)
    {
      v310 = _unsafeDowncastToAnyObject(fromAny:)(v598);
      __swift_destroy_boxed_opaque_existential_1Tm(v598);
      swift_unknownObjectRelease(v310);
      if (specialized Set.contains(_:)(v310, *a9))
      {
        v302 = swift_allocObject(v578, 0x40, 7uLL);
        v303 = v302;
        *(v302 + 1) = xmmword_18071DB30;
        v302[7] = &type metadata for String;
        v302[4] = 0x7D202E2E2E207B20;
        v304 = v302 + 4;
        v305 = 0xE800000000000000;
        goto LABEL_236;
      }

      specialized Set._Variant.insert(_:)(&v599, v310);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v598);
    }
  }

  v311 = swift_allocObject(v578, 0x40, 7uLL);
  *(v311 + 1) = xmmword_18071DB30;
  v311[7] = &type metadata for String;
  v311[4] = 0;
  v311[5] = 0xE000000000000000;
  specialized _print<A>(_:separator:terminator:to:)(v311, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000, v99);
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  swift_setDeallocating(v311);
  __swift_destroy_boxed_opaque_existential_1Tm(v311 + 4);
  swift_deallocClassInstance(v311);
  v312 = (v575)(&v599);
  v313 = v599;
  if (v599)
  {
    v314 = *(&v599 + 1);
    v316 = v600;
    v315 = v601;
    v606 = v599;
    v607 = v600;
    v608 = *(&v600 + 1);
    v609 = v601;
    v610 = BYTE8(v601) & 1;
    v599 = 0u;
    v600 = 0u;
    if (__OFADD__(a5, 2))
    {
      goto LABEL_430;
    }

    _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(&v599, &v606, 0x7265707573, 0xE500000000000000, a5 + 2, v586, 0, 0, a9, a10, v99);
    outlined consume of Mirror?(v313, v314, v316, *(&v316 + 1), v315);
    0xE500000000000000;
    v312 = outlined destroy of Any?(&v599);
  }

  v317 = (*(*v581 + 96))(v312);
  v318 = *(*v317 + 96);
  v318(v598);
  v600 = *&v598[16];
  v601 = *&v598[32];
  v599 = *v598;
  if (!*&v598[40])
  {
LABEL_295:
    v317;
    return;
  }

  v319 = 0;
  v580 = v99;
  v320 = __OFADD__(a5, 2);
  while (1)
  {
    v322 = *(&v599 + 1);
    v321 = v599;
    outlined init with take of Any(&v600, v597);
    if (v322)
    {
      goto LABEL_286;
    }

    v323 = _StringGuts.init(_initialCapacity:)(2);
    v333 = v324;
    *v598 = v323;
    *&v598[8] = v324;
    v334 = HIBYTE(v324) & 0xF;
    if ((v324 & 0x2000000000000000) == 0)
    {
      v334 = v323 & 0xFFFFFFFFFFFFLL;
    }

    if (v334 || (v323 & ~v324 & 0x2000000000000000) != 0)
    {
      if (v324 & 0x2000000000000000) == 0 || (v335 = specialized _SmallString.init(_:appending:)(v323, v324, 0, 0xE000000000000000), (v337))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v325, v326, v327, v328, v329, v330, v331, v332);
        0xE000000000000000;
        v338 = *&v598[8];
        v339 = *v598;
        goto LABEL_263;
      }

      v339 = v335;
      v338 = v336;
      v333;
      0xE000000000000000;
      *v598 = v339;
    }

    else
    {
      v324;
      v339 = 0;
      v338 = 0xE000000000000000;
      *v598 = 0;
    }

    *&v598[8] = v338;
LABEL_263:
    v340 = _int64ToString(_:radix:uppercase:)(v319, 10, 0, swift_int64ToString);
    v350 = v341;
    v351 = HIBYTE(v338) & 0xF;
    if ((v338 & 0x2000000000000000) == 0)
    {
      v351 = v339 & 0xFFFFFFFFFFFFLL;
    }

    if (!v351 && (v339 & ~v338 & 0x2000000000000000) == 0)
    {
      v370 = v340;
      v338;
      v361 = v370;
      *v598 = v370;
      *&v598[8] = v350;
      goto LABEL_273;
    }

    if ((v338 & 0x2000000000000000) != 0)
    {
      if ((v341 & 0x2000000000000000) != 0)
      {
        v366 = v340;
        v367 = specialized _SmallString.init(_:appending:)(v339, v338, v340, v341);
        if ((v369 & 1) == 0)
        {
          v383 = v368;
          v384 = v367;
          v338;
          v350;
          *v598 = v384;
          *&v598[8] = v383;
          v350 = v383;
          v361 = v384;
          goto LABEL_273;
        }

        v352 = HIBYTE(v350) & 0xF;
        v340 = v366;
        goto LABEL_272;
      }

LABEL_271:
      v352 = v340 & 0xFFFFFFFFFFFFLL;
      goto LABEL_272;
    }

    if ((v341 & 0x2000000000000000) == 0)
    {
      goto LABEL_271;
    }

    v352 = HIBYTE(v341) & 0xF;
LABEL_272:
    _StringGuts.append(_:)(v340, v350, 0, v352, v342, v343, v344, v345, v346, v347, v348, v349);
    v350;
    v350 = *&v598[8];
    v361 = *v598;
LABEL_273:
    v362 = HIBYTE(v350) & 0xF;
    if ((v350 & 0x2000000000000000) == 0)
    {
      v362 = v361 & 0xFFFFFFFFFFFFLL;
    }

    if (v362 || (v361 & ~v350 & 0x2000000000000000) != 0)
    {
      if ((v350 & 0x2000000000000000) != 0 && (v363 = specialized _SmallString.init(_:appending:)(v361, v350, 0, 0xE000000000000000), (v365 & 1) == 0))
      {
        v321 = v363;
        v322 = v364;
        v350;
        0xE000000000000000;
      }

      else
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v353, v354, v355, v356, v357, v358, v359, v360);
        0xE000000000000000;
        v322 = *&v598[8];
        v321 = *v598;
      }
    }

    else
    {
      v350;
      v321 = 0;
      v322 = 0xE000000000000000;
    }

    v99 = v580;
LABEL_286:
    if (*a10 < 1)
    {
      break;
    }

    outlined init with copy of Any(v597, v596);
    outlined init with take of Any(v597, v595);
    outlined init with copy of Any(v595, v594);
    v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
    if (swift_dynamicCast(v598, v594, qword_1EEEAC6F8, v371, 6uLL, v372, v373, v374, v574))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v595);
      _ss9CodingKey_pWOb_0(v598, v593);
      v375 = *&v593[2];
      v376 = *(&v593[1] + 1);
      __swift_project_boxed_opaque_existential_0Tm(v593, *(&v593[1] + 1));
      v377 = v376;
      v99 = v580;
      (*(v375 + 8))(v598, v377, v375);
      v378 = v598[16];
      v588 = *&v598[24];
      v591 = *v598;
      v379 = v598[40];
      __swift_destroy_boxed_opaque_existential_1Tm(v593);
      v381 = v588;
      v380 = v591;
    }

    else
    {
      memset(v598, 0, 40);
      outlined destroy of _HasContiguousBytes?(v598, &_ss17CustomReflectable_pSgMd, _ss17CustomReflectable_pSgMR);
      memset(v593, 0, 41);
      Mirror.init(internalReflecting:subjectType:customAncestor:)(v595, 0, v593, v598);
      v380 = *v598;
      v378 = v598[16];
      v381 = *&v598[24];
      v379 = v598[40];
    }

    v602 = v380;
    v603 = v378;
    v604 = v381;
    v605 = v379;
    if (v320)
    {
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v589 = *(&v381 + 1);
    v592 = *(&v380 + 1);
    _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(v596, &v602, v321, v322, a5 + 2, v586, 0, v584, a9, a10, v99);
    v589;
    v592;
    v322;
    v382 = outlined destroy of Any?(v596);
    if (__OFADD__(v319, 1))
    {
      goto LABEL_429;
    }

    (v318)(v598, v382);
    v600 = *&v598[16];
    v601 = *&v598[32];
    v599 = *v598;
    ++v319;
    if (!*&v598[40])
    {
      goto LABEL_295;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v597);
  v322;
  v317;
  v385 = swift_allocObject(v578, 0x40, 7uLL);
  *(v385 + 1) = xmmword_18071DB30;
  if (__OFADD__(a5, 4))
  {
    __break(1u);
    goto LABEL_433;
  }

  v386 = v385;
  v387._countAndFlagsBits = 32;
  v387._object = 0xE100000000000000;
  v388 = String.init(repeating:count:)(v387, a5 + 4);
  *(v386 + 56) = &type metadata for String;
  *(v386 + 32) = v388;
  specialized _print<A>(_:separator:terminator:to:)(v386, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v99);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v386);
  __swift_destroy_boxed_opaque_existential_1Tm((v386 + 32));
  swift_deallocClassInstance(v386);
  v389 = v576 - v319;
  if (__OFSUB__(v576, v319))
  {
LABEL_433:
    __break(1u);
    return;
  }

  v390 = swift_allocObject(v578, 0x40, 7uLL);
  *(v390 + 1) = xmmword_18071DB30;
  v391 = _StringGuts.init(_initialCapacity:)(3);
  v401 = v392;
  *v598 = v391;
  *&v598[8] = v392;
  v402 = HIBYTE(v392) & 0xF;
  if ((v392 & 0x2000000000000000) == 0)
  {
    v402 = v391 & 0xFFFFFFFFFFFFLL;
  }

  if (v402 || (v391 & ~v392 & 0x2000000000000000) != 0)
  {
    if (v392 & 0x2000000000000000) == 0 || (v403 = specialized _SmallString.init(_:appending:)(v391, v392, 0x28uLL, 0xE100000000000000), (v405))
    {
      _StringGuts.append(_:)(40, 0xE100000000000000, 0, 1, v393, v394, v395, v396, v397, v398, v399, v400);
      0xE100000000000000;
      v406 = *&v598[8];
      v407 = *v598;
      goto LABEL_309;
    }

    v407 = v403;
    v406 = v404;
    v401;
    0xE100000000000000;
  }

  else
  {
    v392;
    v407 = 40;
    v406 = 0xE100000000000000;
  }

  *v598 = v407;
  *&v598[8] = v406;
LABEL_309:
  v408 = _int64ToString(_:radix:uppercase:)(v389, 10, 0, swift_int64ToString);
  v418 = v409;
  v419 = HIBYTE(v406) & 0xF;
  if ((v406 & 0x2000000000000000) == 0)
  {
    v419 = v407 & 0xFFFFFFFFFFFFLL;
  }

  if (v419 || (v407 & ~v406 & 0x2000000000000000) != 0)
  {
    if ((v406 & 0x2000000000000000) != 0)
    {
      if ((v409 & 0x2000000000000000) == 0)
      {
        goto LABEL_317;
      }

      v436 = v408;
      v437 = specialized _SmallString.init(_:appending:)(v407, v406, v408, v409);
      if (v439)
      {
        v420 = HIBYTE(v418) & 0xF;
        v408 = v436;
        goto LABEL_318;
      }

      v445 = v438;
      v446 = v437;
      v406;
      v418;
      *v598 = v446;
      *&v598[8] = v445;
      v418 = v445;
      v429 = v446;
    }

    else
    {
      if ((v409 & 0x2000000000000000) != 0)
      {
        v420 = HIBYTE(v409) & 0xF;
        goto LABEL_318;
      }

LABEL_317:
      v420 = v408 & 0xFFFFFFFFFFFFLL;
LABEL_318:
      _StringGuts.append(_:)(v408, v418, 0, v420, v410, v411, v412, v413, v414, v415, v416, v417);
      v418;
      v418 = *&v598[8];
      v429 = *v598;
    }
  }

  else
  {
    v440 = v408;
    v406;
    v429 = v440;
    *v598 = v440;
    *&v598[8] = v418;
  }

  v430 = HIBYTE(v418) & 0xF;
  if ((v418 & 0x2000000000000000) == 0)
  {
    v430 = v429 & 0xFFFFFFFFFFFFLL;
  }

  if (v430 || (v429 & ~v418 & 0x2000000000000000) != 0)
  {
    if ((v418 & 0x2000000000000000) != 0 && (v431 = specialized _SmallString.init(_:appending:)(v429, v418, 0, 0xE000000000000000), (v433 & 1) == 0))
    {
      v434 = v431;
      v435 = v432;
      v418;
      0xE000000000000000;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v421, v422, v423, v424, v425, v426, v427, v428);
      0xE000000000000000;
      v435 = *&v598[8];
      v434 = *v598;
    }
  }

  else
  {
    v418;
    v434 = 0;
    v435 = 0xE000000000000000;
  }

  v390[7] = &type metadata for String;
  v390[4] = v434;
  v390[5] = v435;
  specialized _print<A>(_:separator:terminator:to:)(v390, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v99);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v390);
  __swift_destroy_boxed_opaque_existential_1Tm(v390 + 4);
  swift_deallocClassInstance(v390);
  if (v319 >= 1)
  {
    v441 = swift_allocObject(v578, 0x40, 7uLL);
    *(v441 + 1) = xmmword_18071DB30;
    v441[7] = &type metadata for String;
    v441[4] = 0x65726F6D20;
    v441[5] = 0xE500000000000000;
    specialized _print<A>(_:separator:terminator:to:)(v441, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v99);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v441);
    __swift_destroy_boxed_opaque_existential_1Tm(v441 + 4);
    swift_deallocClassInstance(v441);
  }

  v303 = swift_allocObject(v578, 0x40, 7uLL);
  *(v303 + 1) = xmmword_18071DB30;
  if (v389 == 1)
  {
    v442 = 0xE700000000000000;
    v443 = 0x29646C69686320;
  }

  else
  {
    v444 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" children)", 0xAuLL, 1);
    v442 = v444._object;
    v443 = v444._countAndFlagsBits;
  }

  v303[7] = &type metadata for String;
  v303[4] = v443;
  v303[5] = v442;
  specialized _print<A>(_:separator:terminator:to:)(v303, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000, v99);
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  swift_setDeallocating(v303);
  v306 = v303 + 4;
LABEL_237:
  __swift_destroy_boxed_opaque_existential_1Tm(v306);
  swift_deallocClassInstance(v303);
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  if (count < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = count;
  object = repeating._object;
  countAndFlagsBits = repeating._countAndFlagsBits;
  if (count >= 2)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    if ((repeating._object & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(repeating._object) & 0xF;
    }

    else
    {
      v5 = repeating._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    String.reserveCapacity(_:)(v5 * count);
    while (1)
    {
      v15 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v15 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 && (v24 & ~v25 & 0x2000000000000000) == 0)
      {
        object;
        v25;
        v24 = countAndFlagsBits;
        v25 = object;
        goto LABEL_9;
      }

      v14 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v25 & 0x2000000000000000) != 0)
      {
        if ((object & 0x2000000000000000) == 0)
        {
          goto LABEL_8;
        }

        v16 = specialized _SmallString.init(_:appending:)(v24, v25, countAndFlagsBits, object);
        if ((v18 & 1) == 0)
        {
          v19 = v16;
          v20 = v17;
          v25;
          v24 = v19;
          v25 = v20;
          goto LABEL_9;
        }
      }

      else if ((object & 0x2000000000000000) == 0)
      {
        goto LABEL_8;
      }

      v14 = HIBYTE(object) & 0xF;
LABEL_8:
      _StringGuts.append(_:)(countAndFlagsBits, object, 0, v14, v6, v7, v8, v9, v10, v11, v12, v13);
LABEL_9:
      if (!--v2)
      {
        object;
        countAndFlagsBits = v24;
        object = v25;
        goto LABEL_24;
      }
    }
  }

  if (!count)
  {
    repeating._object;
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

LABEL_24:
  v21 = countAndFlagsBits;
  v22 = object;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = specialized static Hasher._hash(seed:_:)(*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = _swift_stdlib_Hashing_parameters ^ *(a3 + 40);
  v17 = 0u;
  v18 = 0u;
  v16[0] = 0;
  v16[1] = v6 ^ 0x736F6D6570736575;
  v16[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v16[3] = v6 ^ 0x6C7967656E657261;
  v16[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v16, a1, a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = v11[1];
    if (*v11 == a1 && v12 == a2)
    {
      break;
    }

    v14 = (~v12 & 0x6000000000000000) == 0 && (a2 & 0x6000000000000000) == 0x6000000000000000;
    if (!v14 && (_stringCompareInternal(_:_:expecting:)(*v11, v12, a1, a2, 0) & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = a1[3], v6 = a1[4], __swift_project_boxed_opaque_existential_0Tm(a1, v5), (*(v6 + 8))(v25, v5, v6), v7 = v26, v8 = v27, __swift_project_boxed_opaque_existential_0Tm(v25, v26), v9 = (*(v8 + 40))(v4, v7, v8), __swift_destroy_boxed_opaque_existential_1Tm(v25), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v20 = ~v10;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v11, v25);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_0Tm(v25, v26);
      (*(v13 + 8))(v22, v12, v13);
      v14 = v23;
      v15 = v24;
      __swift_project_boxed_opaque_existential_0Tm(v22, v23);
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v16);
      (*(v17 + 8))(v21, v16, v17);
      v18 = (*(v15 + 16))(v21, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      outlined destroy of AnyHashable(v25);
      if (v18)
      {
        break;
      }

      v11 = (v11 + 1) & v20;
    }

    while (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void *Mirror.init(reflecting:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v21);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
  if (swift_dynamicCast(v19, v21, qword_1EEEAC6F8, v4, 6uLL, v5, v6, v7, v15))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    _ss9CodingKey_pWOb_0(v19, v18);
    v9 = *&v18[2];
    v8 = *(&v18[1] + 1);
    __swift_project_boxed_opaque_existential_0Tm(v18, *(&v18[1] + 1));
    (*(v9 + 8))(v19, v8, v9);
    v10 = v19[16];
    v16 = *&v19[24];
    v17 = *v19;
    v11 = v20;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v14 = v16;
    v13 = v17;
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    outlined destroy of _HasContiguousBytes?(v19, &_ss17CustomReflectable_pSgMd, _ss17CustomReflectable_pSgMR);
    memset(v18, 0, 41);
    result = Mirror.init(internalReflecting:subjectType:customAncestor:)(a1, 0, v18, v19);
    v13 = *v19;
    v10 = v19[16];
    v14 = *&v19[24];
    v11 = v20;
  }

  *a2 = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  *(a2 + 40) = v11;
  return result;
}

__objc2_class **Dictionary.init(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
  return static _DictionaryStorage.allocate(capacity:)(a1);
}

__objc2_class **Dictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v14, a1, v15);
  v16 = type metadata accessor for Dictionary(0, a2, a3, a5);
  if (swift_dynamicCast(&v27, v14, a4, v16, 6uLL, v17, v18, v19, v26))
  {
    (*(v12 + 8))(a1, a4);
  }

  else
  {
    v20 = (*(a6 + 40))(a4, a6);
    if (v20)
    {
      v22 = v20;
      type metadata accessor for _DictionaryStorage(0, a2, a3, a5);
      v23 = static _DictionaryStorage.allocate(capacity:)(v22);
    }

    else
    {
      v23 = &_swiftEmptyDictionarySingleton;
    }

    v27 = v23;
    MEMORY[0x1EEE9AC00](v23, v21);
    *(&v26 - 6) = a2;
    *(&v26 - 5) = a3;
    *(&v26 - 4) = a4;
    *(&v26 - 3) = a5;
    *(&v26 - 2) = a6;
    v24 = type metadata accessor for _NativeDictionary(0, a2, a3, a5);
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, partial apply for closure #1 in Dictionary.init<A>(uniqueKeysWithValues:), (&v26 - 16), v24, a4, a6);
    (*(v12 + 8))(a1, a4);
  }

  return v27;
}

void swift_unexpectedError(void *a1, const char *a2, unint64_t a3, char a4, unint64_t a5)
{
  v10 = 0xD000000000000030;
  v11 = _StringGuts.init(_initialCapacity:)(50);
  v21 = v12;
  v62 = v11;
  v63 = v12;
  v22 = 0x800000018066C9C0;
  v23 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v23 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 || (v11 & ~v12 & 0x2000000000000000) != 0)
  {
    if (("Swift/StringLegacy.swift" & 0x2000000000000000 & v12) != 0 && (v24 = specialized _SmallString.init(_:appending:)(v11, v12, 0xD000000000000030, 0x800000018066C9C0), (v26 & 1) == 0))
    {
      v10 = v24;
      v28 = v25;
      v21;
      v62 = v10;
      v63 = v28;
      v22 = v28;
    }

    else
    {
      if (("Swift/StringLegacy.swift" & 0x2000000000000000) != 0)
      {
        v27 = ("Swift/StringLegacy.swift" >> 56) & 0xF;
      }

      else
      {
        v27 = 48;
      }

      _StringGuts.append(_:)(0xD000000000000030, 0x800000018066C9C0, 0, v27, v13, v14, v15, v16, v17, v18, v19, v20);
      v10 = v62;
      v22 = v63;
    }
  }

  else
  {
    v12;
    v62 = 0xD000000000000030;
    v63 = 0x800000018066C9C0;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  v61 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  _debugPrint_unlocked<A, B>(_:_:)(&v61, &v59, v29, &type metadata for String, &protocol witness table for String);
  a1;
  v38 = v59;
  v39 = v60;
  v40 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v40 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40 && (v10 & ~v22 & 0x2000000000000000) == 0)
  {
    v22;
    v62 = v38;
    v63 = v39;
    goto LABEL_26;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    if ((v60 & 0x2000000000000000) != 0)
    {
      v50 = specialized _SmallString.init(_:appending:)(v10, v22, v59, v60);
      if ((v52 & 1) == 0)
      {
        v57 = v50;
        v58 = v51;
        v22;
        v39;
        v62 = v57;
        v63 = v58;
        v39 = v58;
        v38 = v57;
LABEL_26:
        v53 = v38 & 0xFFFFFFFFFFFFLL;
        if ((v39 & 0x2000000000000000) != 0)
        {
          v53 = HIBYTE(v39) & 0xF;
        }

        if (v53 || (v38 & ~v39 & 0x2000000000000000) != 0)
        {
          if ((v39 & 0x2000000000000000) != 0)
          {
            v39;
            v55 = 0xA000000000000000;
            if (!(v39 & 0x80808080808080 | v38 & 0x8080808080808080))
            {
              v55 = 0xE000000000000000;
            }

            v54 = v55 & 0xFF00000000000000 | ((HIBYTE(v39) & 0xF) << 56) | v39 & 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v41, v42, v43, v44, v45, v46, v47, v48);
            v38 = v62;
            v54 = v63;
          }
        }

        else
        {
          v39;
          v38 = 0;
          v54 = 0xE000000000000000;
        }

        if (a4)
        {
          v56 = 2;
        }

        else
        {
          v56 = 0;
        }

        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v38, v54, a2, a3, v56, a5, 0);
      }

      goto LABEL_24;
    }
  }

  else if ((v60 & 0x2000000000000000) != 0)
  {
LABEL_24:
    v49 = HIBYTE(v39) & 0xF;
    goto LABEL_25;
  }

  v49 = v59 & 0xFFFFFFFFFFFFLL;
LABEL_25:
  _StringGuts.append(_:)(v38, v39, 0, v49, v30, v31, v32, v33, v34, v35, v36, v37);
  v39;
  v38 = v62;
  v39 = v63;
  goto LABEL_26;
}

uint64_t Dictionary.init<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  v27 = a2;
  v14 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v17 + 40))(v18, v17);
  if (v19)
  {
    v20 = v19;
    type metadata accessor for _DictionaryStorage(0, a4, a5, a7);
    v21 = static _DictionaryStorage.allocate(capacity:)(v20);
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v30 = v21;
  (*(v14 + 32))(v16, a1, a6);
  v22 = type metadata accessor for _NativeDictionary(0, a4, a5, a7);
  v23 = v29;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, 1, v27, v28, v22, a6, a8);
  (*(v14 + 8))(v16, a6);
  v24 = v30;
  if (v23)
  {
    v30;
  }

  return v24;
}

__objc2_class **Dictionary.init<A>(grouping:by:)(uint64_t a1, void (*a2)(char *), uint64_t a3, Class *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v95 = a4;
  v90 = a6;
  v86 = a2;
  v87 = a3;
  v76 = *(a4 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v71 - v12;
  swift_getAssociatedTypeWitness(0, v14, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  v77 = *(v15 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v93 = &v71 - v21;
  v24 = type metadata accessor for Optional(0, v16, v22, v23);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v71 - v26;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v29 = v28;
  v71 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v71 - v31;
  v96 = &_swiftEmptyDictionarySingleton;
  (*(a7 + 32))(a5, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, v29, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v34 = *(AssociatedConformanceWitness + 16);
  v88 = v32;
  v89 = v29;
  v84 = AssociatedConformanceWitness + 16;
  v85 = AssociatedConformanceWitness;
  v83 = v34;
  (v34)(v29);
  v35 = v77;
  v81 = *(v77 + 48);
  v82 = v77 + 48;
  if (v81(v27, 1, v16) != 1)
  {
    v91 = *(v35 + 32);
    v92 = v35 + 32;
    v73 = v76 + 32;
    v72 = (v76 + 8);
    v36 = &_swiftEmptyDictionarySingleton;
    v79 = v16;
    v80 = v13;
    v78 = v27;
    while (1)
    {
      v41 = v93;
      v91(v93, v27, v16);
      v42 = v94;
      v86(v41);
      v94 = v42;
      if (v42)
      {
        (*(v77 + 8))(v93, v16);
        (*(v71 + 8))(v88, v89);
        v36;
        return v36;
      }

      v43 = __RawDictionaryStorage.find<A>(_:)(v13, v95, v90);
      v47 = v36[2];
      v48 = (v44 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v95);
      }

      v50 = v44;
      if (v36[3] >= v49)
      {
        v57 = v43;
        if (v44)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v51 = type metadata accessor for Array(255, v16, v45, v46);
        v52 = v13;
        v53 = v95;
        v54 = v90;
        type metadata accessor for _NativeDictionary(0, v95, v51, v90);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, 1);
        v36 = v96;
        v55 = __RawDictionaryStorage.find<A>(_:)(v52, v53, v54);
        if ((v50 & 1) != (v56 & 1))
        {
          goto LABEL_20;
        }

        v57 = v55;
        v16 = v79;
        v13 = v80;
        v27 = v78;
        if (v50)
        {
LABEL_5:
          (*v72)(v13, v95);
          v37 = v74;
          v91(v74, v93, v16);
          v40 = type metadata accessor for Array(0, v16, v38, v39);
          Array.append(_:)(v37, v40);
          goto LABEL_6;
        }
      }

      v59 = v75;
      v58 = v76;
      v60 = *(v76 + 32);
      v61 = v13;
      v62 = v95;
      v60(v75, v61, v95);
      v63 = getContiguousArrayStorageType<A>(for:)(v16, v16);
      v64 = swift_allocObject(v63, (((*(v77 + 80) + *(v63 + 48)) & ~*(v77 + 80)) + *(v77 + 72)), *(v77 + 80) | *(v63 + 52));
      v65 = static Array._adoptStorage(_:count:)(v64, 1);
      v91(v66, v93, v16);
      v36[(v57 >> 6) + 8] = (v36[(v57 >> 6) + 8] | (1 << v57));
      v60(v36[6] + *(v58 + 72) * v57, v59, v62);
      *(&v36[7]->isa + v57) = v65;
      v67 = v36[2];
      v68 = __OFADD__(v67, 1);
      v69 = (&v67->isa + 1);
      if (v68)
      {
        goto LABEL_19;
      }

      v36[2] = v69;
      v16 = v79;
      v13 = v80;
      v27 = v78;
LABEL_6:
      v83(v89, v85);
      if (v81(v27, 1, v16) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v36 = &_swiftEmptyDictionarySingleton;
LABEL_3:
  (*(v71 + 8))(v88, v89);
  return v36;
}

void Dictionary.filter(_:)(uint64_t (*a1)(char *, char *), __objc2_class **a2, int64_t a3, Class *a4, char *a5, __objc2_class **a6)
{
  v8 = a5;
  v9 = a4;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v14 = v13;
  v123 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v139 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v128 = &v112 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v140 = &v112 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v155 = &v112 - v25;
  v28 = type metadata accessor for Optional(0, v8, v26, v27);
  v157 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v143 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v146 = &v112 - v33;
  v145 = type metadata accessor for Optional(0, v9, v34, v35);
  v153 = *(v145 - 8);
  v37 = MEMORY[0x1EEE9AC00](v145, v36);
  v120 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v121 = (&v112 - v41);
  v131 = *(v9 - 1);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v142 = (&v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v43, v45);
  v141 = (&v112 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for Optional(0, v14, v47, v48);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v147 = &v112 - v51;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v156 = v6;
    v137 = a1;
    v138 = a2;
    v129 = a6;
    v159 = &_swiftEmptyDictionarySingleton;
    if (a3 < 0)
    {
      v52 = a3;
    }

    else
    {
      v52 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v53 = type metadata accessor for __CocoaDictionary.Iterator();
    v54 = swift_allocObject(v53, 0xE8, 7uLL);
    *(v54 + 16) = 0u;
    *(v54 + 32) = 0u;
    *(v54 + 48) = 0u;
    *(v54 + 64) = 0u;
    *(v54 + 80) = 0u;
    *(v54 + 96) = 0u;
    *(v54 + 112) = 0u;
    *(v54 + 128) = 0u;
    *(v54 + 144) = 0u;
    *(v54 + 160) = 0u;
    *(v54 + 176) = 0u;
    *(v54 + 192) = 0u;
    *(v54 + 216) = 0;
    *(v54 + 224) = 0;
    *(v54 + 208) = v52;
    v122 = v54;
    v55 = v54 & 0x7FFFFFFFFFFFFFFFLL;
    v56 = *((v54 & 0x7FFFFFFFFFFFFFFFLL) + 0xD8);
    if ((v56 & 0x8000000000000000) == 0)
    {
      v119 = (v131 + 56);
      v118 = (v153 + 2);
      v117 = (v131 + 48);
      v116 = (v153 + 1);
      v115 = (v130 + 56);
      v114 = (v157 + 16);
      v113 = (v130 + 48);
      v112 = (v157 + 8);
      v152 = (v130 + 32);
      v136 = (v123 + 56);
      v135 = (v123 + 48);
      v149 = (v130 + 8);
      v150 = (v131 + 8);
      v151 = (v123 + 16);
      v127 = (v123 + 8);
      v126 = (v123 + 32);
      v144 = &_swiftEmptyDictionarySingleton;
      v125 = v129 + 4;
      v58 = v145;
      v57 = v146;
      v134 = v28;
      v133 = v54 & 0x7FFFFFFFFFFFFFFFLL;
      v153 = (v131 + 32);
      v124 = v14;
      v154 = v8;
      while (1)
      {
        if (v56 == *(v55 + 224))
        {
          v59 = [*(v55 + 208) countByEnumeratingWithState:v55 + 16 objects:v55 + 80 count:16];
          *(v55 + 224) = v59;
          if (!v59)
          {
            *(v55 + 216) = -1;
            goto LABEL_34;
          }

          *(v55 + 216) = 0;
          v60 = *(v55 + 24);
          if (!v60)
          {
            goto LABEL_40;
          }

          v56 = 0;
        }

        else
        {
          v60 = *(v55 + 24);
          if (!v60)
          {
            goto LABEL_40;
          }

          if (v56 >> 60)
          {
            __break(1u);
LABEL_39:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v61 = (v60 + 8 * v56);
        if ((v61 & 7) != 0)
        {
          goto LABEL_39;
        }

        v62 = *v61;
        *(v55 + 216) = v56 + 1;
        v63 = *(v55 + 208);
        swift_unknownObjectRetain(v62);
        v64 = [v63 &sel:v62 objectForKey:?];
        if (!v64)
        {
LABEL_40:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v65 = v64;
        if (_swift_isClassOrObjCExistentialType(v9, v9))
        {
          v158 = v62;
          swift_dynamicCast(v142, &v158, qword_1EEEAC710, v9, 7uLL, v66, v67, v68, v112);
        }

        else
        {
          (*v119)(v121, 1, 1, v9);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v62, v9, v121);
          (*v118)(v120, v121, v58);
          if ((*v117)(v120, 1, v9) == 1)
          {
            goto LABEL_42;
          }

          swift_unknownObjectRelease(v62);
          (*v116)(v121, v58);
          (*v153)(v142, v120, v9);
        }

        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v8, v8);
        v73 = v143;
        v74 = v9;
        if (isClassOrObjCExistentialType)
        {
          v158 = v65;
          v75 = v141;
          swift_dynamicCast(v141, &v158, qword_1EEEAC710, v8, 7uLL, v70, v71, v72, v112);
        }

        else
        {
          (*v115)(v57, 1, 1, v8);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v65, v8, v57);
          (*v114)(v73, v57, v28);
          if ((*v113)(v73, 1, v8) == 1)
          {
LABEL_42:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v65);
          (*v112)(v57, v28);
          v75 = v141;
          (*v152)(v141, v73, v8);
        }

        v76 = *(v14 + 48);
        v77 = *v153;
        v78 = v147;
        (*v153)();
        v79 = *v152;
        (*v152)(&v78[v76], v75, v154);
        (*v136)(v78, 0, 1, v14);
        if ((*v135)(v78, 1, v14) == 1)
        {
          goto LABEL_35;
        }

        v157 = v79;
        v80 = *(v14 + 48);
        v81 = v155;
        v148 = v77;
        (v77)(v155, v78, v74);
        v82 = &v78[v80];
        v83 = v154;
        (v157)(&v81[v80], v82, v154);
        v84 = v74;
        v85 = *v151;
        v86 = v140;
        (*v151)(v140, v81, v14);
        v87 = *(v14 + 48);
        v88 = v156;
        v89 = v137(v86, &v86[v87]);
        if (v88)
        {
          (*v127)(v155, v14);
          _sSh8IteratorV8_VariantOySS__GWOe_0(v122 | 0x8000000000000000);
          v144;
          (*v149)(&v86[v87], v83);
          (*v150)(v86, v84);
          return;
        }

        v90 = v89;
        v156 = 0;
        v91 = *v149;
        v92 = &v86[v87];
        v93 = v83;
        (*v149)(v92, v83);
        v94 = *v150;
        v95 = v84;
        (*v150)(v86, v84);
        if (v90)
        {
          v96 = v128;
          v97 = v155;
          v85(v128, v155, v14);
          (*v126)(v139, v97, v14);
          v132 = *(v14 + 48);
          v98 = v144[2];
          v9 = v84;
          v8 = v93;
          v99 = v129;
          if (v144[3] <= v98)
          {
            type metadata accessor for _NativeDictionary(0, v95, v8, v129);
            _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(&v98->isa + 1, 1);
          }

          v100 = v91;
          v101 = v159;
          v102 = (*(v99 + 32))(v159[5], v9, v99);
          v103 = v101;
          v104 = __RawDictionaryStorage.find<A>(_:hashValue:)(v96, v102, v9, v99);
          v105 = v148;
          if (v106)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v9);
          }

          v107 = v104;
          v103[(v104 >> 6) + 8] = (v103[(v104 >> 6) + 8] | (1 << v104));
          (v105)(v103[6] + *(v131 + 72) * v104, v96, v9);
          v108 = v139;
          (v157)(v103[7] + *(v130 + 72) * v107, &v139[v132], v8);
          v109 = v124;
          v110 = *(v124 + 48);
          v111 = &v103[2]->isa + 1;
          v144 = v103;
          v103[2] = v111;
          v94(v108, v9);
          v100((v96 + v110), v8);
          v14 = v109;
        }

        else
        {
          (*v127)(v155, v14);
          v9 = v84;
          v8 = v93;
        }

        v28 = v134;
        v55 = v133;
        v56 = *(v133 + 216);
        v58 = v145;
        v57 = v146;
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }
      }
    }

    v144 = &_swiftEmptyDictionarySingleton;
LABEL_34:
    (*(v123 + 56))(v147, 1, 1, v14);
LABEL_35:
    _sSh8IteratorV8_VariantOySS__GWOe_0(v122 | 0x8000000000000000);
  }

  else
  {
    _NativeDictionary.filter(_:)(a1, a2, a3, v9, v8, a6);
    a3;
  }
}

uint64_t _NativeDictionary.insertNew(key:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (*(*v3 + 24) <= v6)
  {
    v7 = a1;
    v8 = a2;
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v6 + 1, 1);
    a1 = v7;
    a2 = v8;
    v5 = *v3;
  }

  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[4];

  return _NativeDictionary._unsafeInsertNew(key:value:)(a1, a2, v5, v9, v10, v11);
}

void _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxSiSgIsgnndzo_AByxAHGAIsAG_pSHRzAHRs_r0_lIetMggozo_Tp5(uint64_t isStackAllocationSafe, __objc2_class **a2, uint64_t a3, __objc2_class **a4, __objc2_class **a5)
{
  v10 = isStackAllocationSafe;
  v17[8] = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 32);
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a3;
  v17[6] = isStackAllocationSafe;
  v17[7] = a2;
  v12 = ((1 << v11) + 63) >> 6;
  v13 = (8 * v12);
  if (v11 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, a2);
    v14 = (&v17[-1] - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v12, v14);
    _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_UnsafeBitsetVKXEfU_AhByxSiSgGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxAIIsgnndzo_AJsAK_pSHRzAIRs_r0_lIetyggozo_Tp5(v14, v12, a3, v10, a2, a4, a5);
    if (v5)
    {
      swift_willThrow();
    }
  }

  else
  {
    v15 = swift_slowAlloc(v13, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v12, v15);
    _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_UnsafeBitsetVKXEfU_AhByxSiSgGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxAIIsgnndzo_AJsAK_pSHRzAIRs_r0_lIetyggozo_TP5TA(v15, v12, v17);
    v15;
  }
}

void _NativeDictionary.filter(_:)(uint64_t isStackAllocationSafe, __objc2_class **a2, uint64_t a3, __objc2_class **a4, __objc2_class **a5, __objc2_class **a6)
{
  v9 = isStackAllocationSafe;
  v17[10] = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 32);
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a3;
  v17[7] = isStackAllocationSafe;
  v17[8] = a2;
  v11 = ((1 << v10) + 63) >> 6;
  v12 = (8 * v11);
  if (v10 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, a2);
    v13 = (v15 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v13);
    closure #1 in _NativeDictionary.filter(_:)(v13, v11, v9, a5, a6, &v16);
    if (v6)
    {
      swift_willThrow();
    }
  }

  else
  {
    v14 = swift_slowAlloc(v12, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v14);
    partial apply for closure #1 in _NativeDictionary.filter(_:)(v14, v11, v17);
    v14;
  }
}

unint64_t Dictionary._Variant.index(forKey:)(id *a1, int64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = [v7 &sel:v6 objectForKey:?];
    if (v8)
    {
      swift_unknownObjectRelease(v8);
      v9 = [swift_unknownObjectRetain(v7) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v9, 24))
        {
          v11 = swift_bufferAllocate(v10, (8 * v9 + 24), 7uLL);
          v11[2] = v9;
          [v7 getObjects:0 andKeys:v11 + 3 count:v9];
          a2;
          if ((v11[2] & 0x8000000000000000) == 0)
          {
            v12 = 3;
            do
            {
              v13 = v11[v12];
              swift_unknownObjectRetain(v13);
              isEqual = swift_stdlib_NSObject_isEqual(v6, v13);
              swift_unknownObjectRelease(v13);
              ++v12;
            }

            while ((isEqual & 1) == 0);
            v15 = type metadata accessor for __CocoaDictionary.Index.Storage();
            v16 = swift_allocObject(v15, 0x20, 7uLL);
            v16[2] = v7;
            v16[3] = v11;
            swift_unknownObjectRetain(v7);
            swift_unknownObjectRelease(v6);
            return v16;
          }

LABEL_19:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }

    swift_unknownObjectRelease(v6);
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  result = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void Dictionary._Variant.lookup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class *a7, Class *a8, uint64_t a9)
{
  v13 = a2;
  v15 = *(a7 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v20 & 0xC000000000000001) == 0)
  {
    if (v17)
    {
      v41 = v13;
      if (v16 >= 0)
      {
        v29 = (v16 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v29 = v16;
      }

      v30 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v29, v30))
      {
        goto LABEL_33;
      }

      if (*(a6 + 36) == specialized static Hasher._hash(seed:_:)(0, v29[2]))
      {
        if (!swift_dynamicCastClass(v29, v30))
        {
          goto LABEL_33;
        }

        v31 = v29[3];
        if (*(v31 + 16) <= a4)
        {
          goto LABEL_32;
        }

        v32 = *(v31 + 8 * a4 + 24);
        v33 = swift_unknownObjectRetain(v32);
        _forceBridgeFromObjectiveC<A>(_:_:)(v33, a7, v19, v34);
        swift_unknownObjectRelease(v32);
        v35 = __RawDictionaryStorage.find<A>(_:)(v19, a7, a9);
        v37 = v36;
        (*(v15 + 8))(v19, a7);
        if (v37)
        {
          v16 = v35;
          v13 = v41;
LABEL_29:
          v38 = a1;
          v39 = v16;
          (*(v15 + 16))(v38, *(a6 + 48) + *(v15 + 72) * v16, a7);
          (*(*(a8 - 1) + 2))(v13, *(a6 + 56) + *(*(a8 - 1) + 9) * v39, a8);
          return;
        }
      }
    }

    else if ((v16 & 0x8000000000000000) == 0 && 1 << *(a6 + 32) > v16 && ((*(a6 + 8 * (v16 >> 6) + 64) >> v16) & 1) != 0 && *(a6 + 36) == a4)
    {
      goto LABEL_29;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6 >= 0)
  {
    a6 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if ((v17 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v16 >= 0)
  {
    v21 = (v16 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v21 = v16;
  }

  v22 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v21, v22))
  {
    goto LABEL_33;
  }

  v23 = *(v21 + 2);
  if (v23 != a6)
  {
    goto LABEL_32;
  }

  v24 = *(*(v21 + 3) + 8 * a4 + 24);
  swift_unknownObjectRetain(v24);
  if (!swift_dynamicCastClass(v21, v22))
  {
LABEL_33:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = [v23 &sel:v24 objectForKey:?];
  if (!v25)
  {
LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = v25;
  _forceBridgeFromObjectiveC<A>(_:_:)(v24, a7, a1, v26);
  swift_unknownObjectRelease(v24);
  _forceBridgeFromObjectiveC<A>(_:_:)(v27, a8, v13, v28);

  swift_unknownObjectRelease(v27);
}

id Dictionary._Variant.count.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

uint64_t (*Dictionary.subscript.read(char ***a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, char *a7, uint64_t a8))()
{
  swift_getTupleTypeMetadata2(0, a6, a7, "key value ", 0);
  v17 = v16;
  *a1 = v16;
  v18 = *(v16 - 1);
  a1[1] = v18;
  v19 = *(v18 + 64);
  if (swift_coroFrameAlloc)
  {
    v20 = swift_coroFrameAlloc(v19, 0xB32AuLL);
  }

  else
  {
    v20 = malloc(v19);
  }

  a1[2] = v20;
  Dictionary._Variant.lookup(_:)(v20, v20 + *(v17 + 12), a2, a3, a4 & 1, a5, a6, a7, a8);
  return _ArrayBuffer.subscript.read;
}

void _sSDyxq_GSlsSl34_customLastIndexOfEquatableElementy0C0QzSgSg0F0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t Dictionary._Variant.lookup(_:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
    if (a2 < 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v11 = [v10 &sel:v9 objectForKey:?];
    swift_unknownObjectRelease(v9);
    if (v11)
    {
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, a4, a6, v12);
      swift_unknownObjectRelease(v11);
      v13 = 0;
      v14 = *(a4 - 1);
      goto LABEL_11;
    }
  }

  else if (*(a2 + 16))
  {
    v15 = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
    if (v16)
    {
      v19 = *(a4 - 1);
      (*(v19 + 16))(a6, *(a2 + 56) + *(v19 + 72) * v15, a4);
      v14 = v19;
      v13 = 0;
      goto LABEL_11;
    }
  }

  v14 = *(a4 - 1);
  v13 = 1;
LABEL_11:
  v17 = *(v14 + 56);

  return v17(a6, v13, 1, a4);
}

void specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
  v10 = *v4;
  *v4 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *v4 = v10;
}

unint64_t specialized Dictionary._Variant.setValue(_:forKey:)(__int128 *a1, unint64_t a2, unint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
  v9 = *v3;
  *v3 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v3 = v9;
  return result;
}

_OWORD *specialized Dictionary._Variant.setValue(_:forKey:)(_OWORD *a1, unint64_t a2, unint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
  v9 = *v3;
  *v3 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v3 = v9;
  return result;
}

void specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
  v8 = *v3;
  *v3 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v3 = v8;
}

_OWORD *specialized Dictionary._Variant.setValue(_:forKey:)(_OWORD *a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  v7 = *v2;
  *v2 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  *v2 = v7;
  return result;
}

char *Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = a3[2];
  v10 = a3[3];
  if ((v8 & 0xC000000000000001) == 0)
  {
    v13 = a3[4];
    goto LABEL_8;
  }

  if (v8 < 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v11 count];
  if (!__OFADD__(result, 1))
  {
    v13 = a3[4];
    v8 = _NativeDictionary.init(_:capacity:)(v11, (result + 1), v9, v10, v13);
    *v4 = v8;
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v8);
    v16 = *v4;
    *v4 = 0x8000000000000000;
    v15 = type metadata accessor for _NativeDictionary(0, v9, v10, v13);
    result = _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, v15);
    *v4 = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = type metadata accessor for Dictionary._Variant(0, a2[2], a2[3], a2[4]);

  return Dictionary._Variant.removeValue(forKey:)(a1, v5, a3);
}

uint64_t (*Dictionary.subscript.modify(void *a1, uint64_t a2, void *a3))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xAB9uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = a3[2];
  v5[4] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[5] = v8;
  v10 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xAB9uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v6[6] = v11;
  (*(v9 + 16))();
  v13 = type metadata accessor for Dictionary._Variant(0, v7, a3[3], a3[4]);
  v6[7] = Dictionary._Variant.subscript.modify(v6, v12, v13);
  return Dictionary.subscript.modify;
}

void Dictionary.subscript.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*Dictionary._Variant.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t *a1)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0xA0, 0x939CuLL);
  }

  else
  {
    v7 = malloc(0xA0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = a3[2];
  v7[13] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v7[14] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0x939CuLL);
    v8[15] = v13;
    v14 = swift_coroFrameAlloc(v12, 0x939CuLL);
  }

  else
  {
    v13 = malloc(v12);
    v8[15] = v13;
    v14 = malloc(v12);
  }

  v15 = v14;
  v8[16] = v14;
  v16 = *v3;
  v17 = a3[3];
  if ((*v3 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v16);
    (*(v11 + 16))(v15, a2, v9);
    v8[17] = Dictionary._Variant.asNative.modify(v8 + 4);
    v25 = type metadata accessor for _NativeDictionary(0, v9, v17, a3[4]);
    v8[18] = _NativeDictionary.subscript.modify(v8 + 8, v15, isUniquelyReferenced_nonNull_native, v25);
    return Dictionary._Variant.subscript.modify;
  }

  if (v16 < 0)
  {
    v18 = *v3;
  }

  else
  {
    v18 = (v16 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v18 count];
  if (!__OFADD__(result, 1))
  {
    v20 = a3[4];
    v21 = _NativeDictionary.init(_:capacity:)(v18, result + 1, v9, v17, v20);
    v8[12] = v21;
    *v3 = v21;
    (*(v11 + 16))(v13, a2, v9);
    v21;
    v22 = type metadata accessor for _NativeDictionary(0, v9, v17, v20);
    v8[19] = _NativeDictionary.subscript.modify(v8, v13, 1, v22);
    return Dictionary._Variant.subscript.modify;
  }

  __break(1u);
  return result;
}

void Dictionary._Variant.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 32;
  v3 = *(*a1 + 136);
  v4 = *(*a1 + 128);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 112);
  (*(*a1 + 144))();
  (*(v6 + 8))(v4, v5);
  v3(v2, 0);
  v7 = *(v1 + 120);
  free(*(v1 + 128));
  free(v7);

  free(v1);
}

void Dictionary._Variant.subscript.modify(void *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 112);
  v2 = *(*a1 + 120);
  v4 = *(*a1 + 104);
  (*(*a1 + 152))(*a1, 0);
  (*(v3 + 8))(v2, v4);
  *(v1 + 96);
  v5 = *(v1 + 120);
  free(*(v1 + 128));
  free(v5);

  free(v1);
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a5[7] + 16 * result);
  *v7 = a3;
  v7[1] = a4;
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

uint64_t _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  (*(*(a5 - 8) + 32))(a4[6] + *(*(a5 - 8) + 72) * a1, a2, a5);
  result = (*(*(a6 - 8) + 32))(a4[7] + *(*(a6 - 8) + 72) * a1, a3, a6);
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

uint64_t Dictionary.subscript.getter@<X0>(id *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, Class *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a3;
  v34 = a2;
  v14 = type metadata accessor for Optional(0, a6, a3, a4);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v33 - v21;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v23 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a5);
    if (a4 < 0)
    {
      v24 = a4;
    }

    else
    {
      v24 = (a4 & 0xFFFFFFFFFFFFFF8);
    }

    v25 = [v24 &sel:v23 objectForKey:{v33, v34}];
    swift_unknownObjectRelease(v23);
    if (v25)
    {
      _forceBridgeFromObjectiveC<A>(_:_:)(v25, a6, v22, v26);
      swift_unknownObjectRelease(v25);
      v27 = *(a6 - 1);
      v28 = v27;
LABEL_10:
      (*(v28 + 56))(v22, 0, 1, a6);
      goto LABEL_12;
    }
  }

  else if (*(a4 + 16))
  {
    v29 = __RawDictionaryStorage.find<A>(_:)(a1, a5, a7);
    if (v30)
    {
      v31 = *(a4 + 56);
      v27 = *(a6 - 1);
      (*(v27 + 16))(v22, v31 + *(v27 + 72) * v29, a6);
      v28 = v27;
      goto LABEL_10;
    }
  }

  v27 = *(a6 - 1);
  (*(v27 + 56))(v22, 1, 1, a6);
LABEL_12:
  (*(v15 + 32))(v19, v22, v14);
  if ((*(v27 + 48))(v19, 1, a6) != 1)
  {
    return (*(v27 + 32))(a8, v19, a6);
  }

  v34();
  return (*(v15 + 8))(v19, v14);
}

void (*Dictionary.subscript.modify(void (*a1)(void), void (*a2)(void), void (*a3)(void), uint64_t a4, void *a5))(void **a1)
{
  v6 = v5;
  v11 = a5[2];
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = swift_coroFrameAlloc;
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v13, 0x1535uLL);
  }

  else
  {
    v15 = malloc(v13);
  }

  v16 = v15;
  *a1 = v15;
  v45 = a5[3];
  v17 = *(*(v45 - 1) + 8);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0x1535uLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v42 = v18;
  v43 = v16;
  *(a1 + 1) = v18;
  v19 = *v6;
  v44 = v12;
  if ((*v6 & 0xC000000000000001) == 0)
  {
    moveElements = swift_isUniquelyReferenced_nonNull_native(v19);
    v46 = *v6;
    v21 = *v6;
    *v6 = 0x8000000000000000;
    v12 = a5[4];
    v41 = a2;
    v32 = __RawDictionaryStorage.find<A>(_:)(a2, v11, v12);
    v34 = v21[2];
    v35 = (v33 & 1) == 0;
    v36 = v34 + v35;
    if (!__OFADD__(v34, v35))
    {
      v16 = v32;
      LOBYTE(v14) = v33;
      if (v21[3] < v36)
      {
        type metadata accessor for _NativeDictionary(0, v11, v45, v12);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, moveElements);
        v21 = v46;
        v29 = v41;
        v37 = __RawDictionaryStorage.find<A>(_:)(v41, v11, v12);
        if ((v14 & 1) != (v38 & 1))
        {
          goto LABEL_32;
        }

        v16 = v37;
LABEL_26:
        *v6 = v21;
        if (v14)
        {
          return Dictionary.subscript.modify;
        }

        goto LABEL_22;
      }

      if (moveElements)
      {
LABEL_25:
        v29 = v41;
        goto LABEL_26;
      }

LABEL_31:
      type metadata accessor for _NativeDictionary(0, v11, v45, v12);
      _NativeDictionary.copy()();
      v21 = v46;
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 < 0)
  {
    v14 = *v6;
  }

  else
  {
    v14 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = [v14 count];
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  v41 = a3;
  a3 = a1;
  v12 = a5[4];
  v21 = _NativeDictionary.init(_:capacity:)(v14, v20 + 1, v11, v45, v12);
  v46 = v21;
  v22 = a2;
  v23 = __RawDictionaryStorage.find<A>(_:)(a2, v11, v12);
  v25 = v21[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = v24;
  if (v21[3] < v27)
  {
    type metadata accessor for _NativeDictionary(0, v11, v45, v12);
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, 1);
    v29 = v22;
    v30 = __RawDictionaryStorage.find<A>(_:)(v22, v11, v12);
    if ((v28 & 1) == (v31 & 1))
    {
      v16 = v30;
      goto LABEL_21;
    }

LABEL_32:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v11);
  }

  v16 = v23;
  v29 = v22;
LABEL_21:
  *v6 = v21;
  a3 = v41;
  if ((v28 & 1) == 0)
  {
LABEL_22:
    a3();
    (*(v44 + 16))(v43, v29, v11);
    _NativeDictionary._insert(at:key:value:)(v16, v43, v42, v21, v11, v45);
  }

  return Dictionary.subscript.modify;
}

void Dictionary.subscript.modify(void **a1)
{
  v1 = *a1;
  free(a1[1]);

  free(v1);
}

char *Dictionary._Variant.mutatingFind(_:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = a2[2];
  v9 = a2[3];
  if ((*v2 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
    v12 = *v2;
    v27 = *v4;
    *v4 = 0x8000000000000000;
    v3 = a2[4];
    result = __RawDictionaryStorage.find<A>(_:)(a1, v8, v3);
    v22 = v12[2];
    v23 = (v21 & 1) == 0;
    v24 = v22 + v23;
    if (!__OFADD__(v22, v23))
    {
      v17 = v21;
      if (v12[3] < v24)
      {
        type metadata accessor for _NativeDictionary(0, v8, v9, v3);
        v18 = v24;
        v19 = isUniquelyReferenced_nonNull_native;
        goto LABEL_12;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

LABEL_19:
      v26 = result;
      type metadata accessor for _NativeDictionary(0, v8, v9, v3);
      _NativeDictionary.copy()();
      result = v26;
      v12 = v27;
      goto LABEL_15;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 < 0)
  {
    v10 = *v2;
  }

  else
  {
    v10 = (v7 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v10 count];
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = a2[4];
  v12 = _NativeDictionary.init(_:capacity:)(v10, (result + 1), v8, v9, v3);
  v27 = v12;
  result = __RawDictionaryStorage.find<A>(_:)(a1, v8, v3);
  v14 = v12[2];
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v13;
  if (v12[3] >= v16)
  {
    goto LABEL_15;
  }

  type metadata accessor for _NativeDictionary(0, v8, v9, v3);
  v18 = v16;
  v19 = 1;
LABEL_12:
  _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v19);
  v12 = v27;
  result = __RawDictionaryStorage.find<A>(_:)(a1, v8, v3);
  if ((v17 & 1) != (v25 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v8);
  }

LABEL_15:
  *v4 = v12;
  return result;
}

uint64_t Dictionary.subscript.setter(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = a1;
  v12 = *(a5 + 24);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v15;
  v16 = *v8;
  v18 = *(v17 + 16);
  v19 = (*v8 & 0xC000000000000001) == 0;
  v46 = v21;
  v47 = v20;
  if (v19)
  {
    LODWORD(v43) = swift_isUniquelyReferenced_nonNull_native(v16);
    v48 = *v8;
    v24 = v48;
    *v8 = 0x8000000000000000;
    v6 = *(a5 + 32);
    v30 = __RawDictionaryStorage.find<A>(_:)(a2, v18, v6);
    v31 = v24[2];
    v32 = (v23 & 1) == 0;
    v33 = v31 + v32;
    if (!__OFADD__(v31, v32))
    {
      v7 = v30;
      if (v24[3] >= v33)
      {
        if (!v43)
        {
          goto LABEL_23;
        }

        *v8 = v24;
        if (v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v42 = v23;
        type metadata accessor for _NativeDictionary(0, v18, v12, v6);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v43);
        v24 = v48;
        v34 = __RawDictionaryStorage.find<A>(_:)(v47, v18, v6);
        v36 = v35 & 1;
        v37 = v42;
        if ((v42 & 1) != v36)
        {
          goto LABEL_25;
        }

        v7 = v34;
        *v8 = v24;
        if (v37)
        {
          goto LABEL_10;
        }
      }

LABEL_18:
      v38 = v44;
      v46();
      _NativeDictionary._insert(at:key:value:)(v7, v47, v38, v24, v18, v12);
      return (*(v13 + 40))(v24[7] + *(v13 + 72) * v7, v11, v12);
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v40 = v23;
    type metadata accessor for _NativeDictionary(0, v18, v12, v6);
    _NativeDictionary.copy()();
    v24 = v48;
    *v8 = v48;
    if (v40)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v16 < 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = [v7 count];
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v43 = v11;
  v6 = *(a5 + 32);
  v24 = _NativeDictionary.init(_:capacity:)(v7, v23, v18, v12, v6);
  v48 = v24;
  v25 = __RawDictionaryStorage.find<A>(_:)(a2, v18, v6);
  v26 = v24[2];
  v27 = (v23 & 1) == 0;
  v11 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v23;
  if (v24[3] < v11)
  {
    type metadata accessor for _NativeDictionary(0, v18, v12, v6);
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, 1);
    v24 = v48;
    v25 = __RawDictionaryStorage.find<A>(_:)(v47, v18, v6);
    if ((v28 & 1) != (v29 & 1))
    {
LABEL_25:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v18);
    }
  }

  v7 = v25;
  v11 = v43;
  *v8 = v24;
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  (*(*(v18 - 1) + 1))(v47, v18);
  return (*(v13 + 40))(v24[7] + *(v13 + 72) * v7, v11, v12);
}

__objc2_class **Dictionary.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.mapValues<A>(_:)(a1, a2, a3, a4, a5, a6);
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return __CocoaDictionary.mapValues<A, B, C>(_:)(a1, a2, a3, a4, a5, a6, a7);
}

__objc2_class **Dictionary._Variant.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.mapValues<A>(_:)(a1, a2, a3, a4, a5, a6);
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return __CocoaDictionary.mapValues<A, B, C>(_:)(a1, a2, a3, a4, a5, a6, a7);
}

__objc2_class **Dictionary.compactMapValues<A>(_:)(void (*a1)(char *), uint64_t a2, int64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v138 = a7;
  v168 = a1;
  v169 = a2;
  v163 = type metadata accessor for Optional(0, a6, a3, a4);
  v11 = *(v163 - 8);
  v13 = MEMORY[0x1EEE9AC00](v163, v12);
  v157 = &v123 - v14;
  i = *(a6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v141 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v140 = &v123 - v19;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v21 = v20;
  v22 = *(v20 - 8);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v139 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v177 = &v123 - v27;
  v30 = type metadata accessor for Optional(0, a5, v28, v29);
  v175 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v146 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v133 = &v123 - v35;
  v132 = type metadata accessor for Optional(0, a4, v36, v37);
  v38 = *(v132 - 8);
  v40 = MEMORY[0x1EEE9AC00](v132, v39);
  v134 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v135 = (&v123 - v44);
  v173 = a5;
  v156 = *(a5 - 1);
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v145 = (&v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v154 = &v123 - v50;
  v174 = a4;
  v155 = *(a4 - 1);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v159 = (&v123 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52, v54);
  v152 = &v123 - v55;
  v58 = type metadata accessor for Optional(0, v21, v56, v57);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v61 = &v123 - v60;
  v180 = &_swiftEmptyDictionarySingleton;
  v167 = a6;
  v131 = v30;
  if ((a3 & 0xC000000000000001) != 0)
  {
    if (a3 < 0)
    {
      v62 = a3;
    }

    else
    {
      v62 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v63 = type metadata accessor for __CocoaDictionary.Iterator();
    v64 = swift_allocObject(v63, 0xE8, 7uLL);
    v144 = 0;
    v65 = 0;
    v66 = 0;
    *(v64 + 208) = v62;
    *(v64 + 216) = 0;
    *(v64 + 16) = 0u;
    *(v64 + 32) = 0u;
    *(v64 + 48) = 0u;
    *(v64 + 64) = 0u;
    *(v64 + 80) = 0u;
    *(v64 + 96) = 0u;
    *(v64 + 112) = 0u;
    *(v64 + 128) = 0u;
    *(v64 + 144) = 0u;
    *(v64 + 160) = 0u;
    *(v64 + 176) = 0u;
    *(v64 + 192) = 0u;
    *(v64 + 224) = 0;
    v67 = v64 | 0x8000000000000000;
  }

  else
  {
    v68 = -1 << *(a3 + 32);
    v65 = ~v68;
    v69 = *(a3 + 64);
    v144 = a3 + 64;
    v70 = -v68;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v66 = v71 & v69;
    v67 = a3;
  }

  v147 = v67 & 0x7FFFFFFFFFFFFFFFLL;
  v130 = (v155 + 56);
  v129 = (v38 + 16);
  v128 = (v155 + 48);
  v127 = (v38 + 8);
  v161 = (v155 + 32);
  v126 = (v156 + 56);
  v125 = (v175 + 16);
  v124 = (v156 + 48);
  v123 = (v175 + 8);
  v160 = (v156 + 32);
  v72 = (v22 + 56);
  v142 = v65;
  v158 = (v65 + 64) >> 6;
  v149 = v155 + 16;
  v148 = v156 + 16;
  v170 = (v22 + 32);
  v171 = (v22 + 48);
  v164 = (i + 48);
  v137 = (i + 32);
  v136 = (v156 + 8);
  v165 = (v22 + 8);
  v162 = (v11 + 8);
  a3;
  v73 = 0;
  v143 = &_swiftEmptyDictionarySingleton;
  v74 = v157;
  v153 = v21;
  v151 = v61;
  v172 = v67;
  v150 = (v22 + 56);
  v175 = 0;
  if ((v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v75 = v173;
  if (v66)
  {
    v166 = v66;
    v76 = v66;
    v77 = v73;
LABEL_26:
    i = (v76 - 1) & v76;
    v87 = __clz(__rbit64(v76)) | (v77 << 6);
    v88 = v155;
    v89 = v152;
    v90 = v174;
    (*(v155 + 16))(v152, *(v67 + 48) + *(v155 + 72) * v87, v174);
    v91 = v156;
    v92 = *(v67 + 56) + *(v156 + 72) * v87;
    v93 = v154;
    (*(v156 + 16))(v154, v92, v75);
    v94 = *(v153 + 48);
    v95 = *(v88 + 32);
    v21 = v153;
    v61 = v151;
    v95(v151, v89, v90);
    (*(v91 + 32))(&v61[v94], v93, v75);
    v72 = v150;
    (*v150)(v61, 0, 1, v21);
    v85 = v77;
    v74 = v157;
    goto LABEL_37;
  }

  if (v158 <= (v73 + 1))
  {
    v84 = (v73 + 1);
  }

  else
  {
    v84 = v158;
  }

  v85 = (v84 - 1);
  v86 = v73;
  while (1)
  {
    v77 = (v86 + 1);
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v77 >= v158)
    {
      break;
    }

    v76 = *(v144 + 8 * v77);
    ++v86;
    if (v76)
    {
      v166 = 0;
      v75 = v173;
      goto LABEL_26;
    }
  }

  (*v72)(v61, 1, 1, v21);
  for (i = 0; ; i = v66)
  {
LABEL_37:
    if ((*v171)(v61, 1, v21) == 1)
    {
      v67 = v172;
      goto LABEL_54;
    }

    v111 = *v170;
    v112 = v177;
    (*v170)(v177, v61, v21);
    v113 = v178;
    v168(&v112[*(v21 + 48)]);
    v178 = v113;
    v67 = v172;
    if (v113)
    {
      (*v165)(v177, v21);
      _sSh8IteratorV8_VariantOySS__GWOe_0(v67);
      v121 = v143;
      v143;
      return v121;
    }

    if ((*v164)(v74, 1, v167) == 1)
    {
      (*v165)(v177, v21);
      (*v162)(v74, v163);
    }

    else
    {
      v175 = *v137;
      v114 = v167;
      (v175)(v140, v74, v167);
      v111(v139, v177, v21);
      (v175)(v141, v140, v114);
      v115 = v143[2];
      if (v143[3] <= v115)
      {
        type metadata accessor for _NativeDictionary(0, v174, v114, v138);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(&v115->isa + 1, 1);
      }

      v116 = *(v21 + 48);
      v117 = v139;
      v143 = v180;
      _NativeDictionary._unsafeInsertNew(key:value:)(v139, v141, v180, v174, v114, v138);
      (*v136)(v117 + v116, v173);
    }

    v73 = v85;
    v66 = i;
    v175 = v85;
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v78 = v147;
    v79 = *(v147 + 216);
    v81 = v173;
    v80 = v174;
    if ((v79 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    if (v79 == *(v147 + 224))
    {
      break;
    }

    v83 = *(v147 + 24);
    if (!v83)
    {
      goto LABEL_59;
    }

    if (v79 >> 60)
    {
      goto LABEL_57;
    }

LABEL_29:
    v96 = (v83 + 8 * v79);
    if ((v96 & 7) != 0)
    {
      goto LABEL_58;
    }

    v97 = *v96;
    v78[27] = v79 + 1;
    v98 = v78[26];
    swift_unknownObjectRetain(v97);
    v99 = [v98 &sel:v97 objectForKey:?];
    if (!v99)
    {
LABEL_59:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v100 = v99;
    if (_swift_isClassOrObjCExistentialType(v80, v80))
    {
      v179 = v97;
      swift_dynamicCast(v159, &v179, qword_1EEEAC710, v80, 7uLL, v101, v102, v103, v123);
    }

    else
    {
      (*v130)(v135, 1, 1, v80);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v97, v80, v135);
      (*v129)(v134, v135, v132);
      if ((*v128)(v134, 1, v80) == 1)
      {
        goto LABEL_60;
      }

      swift_unknownObjectRelease(v97);
      (*v127)(v135, v132);
      (*v161)(v159, v134, v80);
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v81, v81);
    v108 = v146;
    if (isClassOrObjCExistentialType)
    {
      v179 = v100;
      v109 = v145;
      swift_dynamicCast(v145, &v179, qword_1EEEAC710, v81, 7uLL, v105, v106, v107, v123);
    }

    else
    {
      v118 = v133;
      (*v126)(v133, 1, 1, v81);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v100, v81, v118);
      v119 = v118;
      v120 = v131;
      (*v125)(v108, v119, v131);
      if ((*v124)(v108, 1, v81) == 1)
      {
LABEL_60:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v100);
      (*v123)(v133, v120);
      v109 = v145;
      (*v160)(v145, v108, v81);
    }

    v110 = *(v21 + 48);
    (*v161)(v61, v159, v174);
    (*v160)(&v61[v110], v109, v81);
    (*v72)(v61, 0, 1, v21);
    v85 = v175;
  }

  v82 = [*(v147 + 208) countByEnumeratingWithState:v147 + 16 objects:v147 + 80 count:16];
  v78[28] = v82;
  if (v82)
  {
    v78[27] = 0;
    v83 = v78[3];
    if (!v83)
    {
      goto LABEL_59;
    }

    v79 = 0;
    goto LABEL_29;
  }

  v78[27] = -1;
LABEL_53:
  (*v72)(v61, 1, 1, v21);
LABEL_54:
  v121 = v143;
  _sSh8IteratorV8_VariantOySS__GWOe_0(v67);
  return v121;
}

uint64_t Sequence.reduce<A>(into:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, int **a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a6;
  v41 = a5;
  v46 = a2;
  v47 = a3;
  v50 = a1;
  v38 = a7;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - v13;
  v17 = type metadata accessor for Optional(0, v11, v15, v16);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v38 - v20;
  v22 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v19, v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  v40 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = (&v38 - v29);
  (*(v22 + 16))(v25, v49, a4);
  v31 = v48;
  (v48[4])(a4, v48);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v31, a4, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v48 = v30;
  v49 = v27;
  v34 = v39;
  v44 = AssociatedConformanceWitness + 16;
  v45 = AssociatedConformanceWitness;
  v43 = v33;
  (v33)(v27);
  v42 = *(v34 + 48);
  if (v42(v21, 1, v11) == 1)
  {
LABEL_5:
    (*(v40 + 8))(v48, v49);
    return (*(*(v41 - 8) + 32))(v38, v50);
  }

  else
  {
    v35 = *(v34 + 32);
    v36 = (v34 + 8);
    while (1)
    {
      v35(v14, v21, v11);
      v46(v50, v14);
      if (v7)
      {
        break;
      }

      (*v36)(v14, v11);
      v43(v49, v45);
      if (v42(v21, 1, v11) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v36)(v14, v11);
    (*(v40 + 8))(v48, v49);
    return (*(*(v41 - 8) + 8))(v50);
  }
}

uint64_t Dictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BOOL8 a4@<X8>)
{
  v7 = type metadata accessor for Dictionary._Variant(0, a3[2], a3[3], a3[4]);

  return Dictionary._Variant.updateValue(_:forKey:)(a1, a2, v7, a4);
}

uint64_t Dictionary._Variant.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BOOL8 isUniquelyReferenced_nonNull_native@<X8>)
{
  v8 = a1;
  v10 = *(a3 + 16);
  v45 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = *(v14 + 24);
  v16 = (*v4 & 0xC000000000000001) == 0;
  v47 = isUniquelyReferenced_nonNull_native;
  v48 = v4;
  v46 = v8;
  if (v16)
  {
    v31 = swift_isUniquelyReferenced_nonNull_native(v13);
    v49 = *v4;
    v32 = v49;
    *v4 = 0x8000000000000000;
    v5 = *(a3 + 32);
    v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
    v34 = v32[2];
    v35 = (v33 & 1) == 0;
    v36 = v34 + v35;
    if (!__OFADD__(v34, v35))
    {
      LOBYTE(v8) = v33;
      if (v32[3] >= v36)
      {
        if (!v31)
        {
          goto LABEL_23;
        }
      }

      else
      {
        type metadata accessor for _NativeDictionary(0, v10, v15, v5);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v31);
        v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
        if ((v8 & 1) != (v37 & 1))
        {
          goto LABEL_14;
        }
      }

      v19 = v49;
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v43 = v18;
        (*(v45 + 16))(v12, a2, v10);
        v38 = v43;
        goto LABEL_25;
      }

LABEL_18:
      v27 = v19[7];
      v28 = *(v15 - 1);
      v29 = v28;
      v30 = *(v28 + 72) * v18;
      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v42 = v18;
    type metadata accessor for _NativeDictionary(0, v10, v15, v5);
    _NativeDictionary.copy()();
    v18 = v42;
    v19 = v49;
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (v13 < 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = (v13 & 0xFFFFFFFFFFFFFF8);
  }

  v18 = [v17 count];
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(a3 + 32);
  v19 = _NativeDictionary.init(_:capacity:)(v17, v18 + 1, v10, v15, v5);
  v49 = v19;
  v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
  v21 = v19[2];
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v20;
  if (v19[3] < v23)
  {
    type metadata accessor for _NativeDictionary(0, v10, v15, v5);
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, 1);
    v19 = v49;
    v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
    if ((v24 & 1) != (v25 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
    }
  }

  v26 = v18;
  if ((v24 & 1) == 0)
  {
    (*(v45 + 16))(v12, a2, v10);
    v38 = v26;
LABEL_25:
    _NativeDictionary._insert(at:key:value:)(v38, v12, v46, v19, v10, v15);
    result = (*(*(v15 - 1) + 7))(v47, 1, 1, v15);
    goto LABEL_26;
  }

  v27 = v19[7];
  v28 = *(v15 - 1);
  v29 = v28;
  v30 = *(v28 + 72) * v18;
LABEL_19:
  v39 = *(v28 + 32);
  v40 = v47;
  v39(v47, v27 + v30, v15);
  v39(v19[7] + v30, v46, v15);
  result = (*(v29 + 56))(v40, 0, 1, v15);
LABEL_26:
  *v48 = v19;
  return result;
}

void Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v7 = v6;
  v31 = a2;
  v32 = a3;
  v35 = a5;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v30 - v15;
  v17 = *v7;
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  if ((*v7 & 0xC000000000000001) != 0)
  {
    if (v17 < 0)
    {
      v21 = *v7;
    }

    else
    {
      v21 = (v17 & 0xFFFFFFFFFFFFFF8);
    }

    *v7;
    v22 = [v21 count];
    v23 = *(a4 + 32);
    v36 = _NativeDictionary.init(_:capacity:)(v21, v22, v19, v20, v23);
    v24 = v35;
    (*(v10 + 32))(v13, a1, v35);
    v25 = type metadata accessor for _NativeDictionary(0, v19, v20, v23);
    v26 = v34;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, 1, v31, v32, v25, v24, v33);
    (*(v10 + 8))(v13, v24);
    if (v26)
    {
      v36;
      return;
    }

    v17;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v7);
    v28 = v35;
    (*(v10 + 32))(v16, a1, v35);
    v36 = *v7;
    *v7 = 0x8000000000000000;
    v29 = type metadata accessor for _NativeDictionary(0, v19, v20, *(a4 + 32));
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, isUniquelyReferenced_nonNull_native, v31, v32, v29, v28, v33);
    (*(v10 + 8))(v16, v28);
  }

  *v7 = v36;
}

void Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unsigned __int16 *a4)
{
  v8 = swift_allocObject(&unk_1EEEADDE0, 0x28, 7uLL);
  v9 = *(a4 + 2);
  v10 = *(a4 + 3);
  v8[2] = v9;
  v8[3] = v10;
  v11 = *(a4 + 4);
  v8[4] = v11;
  v12 = swift_allocObject(&unk_1EEEADE08, 0x38, 7uLL);
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  v12[5] = partial apply for closure #1 in Dictionary.merge(_:uniquingKeysWith:);
  v12[6] = v8;
  v21[0] = a1;
  v21[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B);
  v21[2] = v12;
  v13 = type metadata accessor for Dictionary._Variant(0, v9, v10, v11);
  swift_getTupleTypeMetadata2(255, v9, v10, 0, 0);
  v15 = v14;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], a4, v16);
  v18 = type metadata accessor for LazyMapSequence(0, a4, v15, WitnessTable);
  v20 = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v18, v19);
  Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v21, a2, a3, v13, v18, v20);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, char *a3@<X3>, char *a4@<X4>, uint64_t a5@<X8>)
{
  swift_getTupleTypeMetadata2(0, a3, a4, "key value ", 0);
  v11 = *(v10 + 48);
  swift_getTupleTypeMetadata2(0, a3, a4, 0, 0);
  return a2(a5, a5 + *(v12 + 48), a1, a1 + v11);
}

uint64_t LazySequenceProtocol.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 32))(a3, a5);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for LazySequenceProtocol, associated type descriptor for LazySequenceProtocol.Elements);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v12, &protocol requirements base descriptor for LazySequenceProtocol, associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  v15 = (a6 + *(type metadata accessor for LazyMapSequence(0, v13, a4, AssociatedConformanceWitness) + 44));
  *v15 = a1;
  v15[1] = a2;

  return a2;
}

unint64_t Dictionary.merging<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for Dictionary._Variant(0, a5, a6, a8);
  Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, v14, a7, a9);
  if (v9)
  {
    a4;
  }

  return a4;
}

void Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unint64_t a4, char *a5, char *a6, uint64_t a7)
{
  v26 = a4;
  v14 = swift_allocObject(&unk_1EEEADE30, 0x28, 7uLL);
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v15 = swift_allocObject(&unk_1EEEADE58, 0x38, 7uLL);
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = closure #1 in Dictionary.merge(_:uniquingKeysWith:)partial apply;
  v15[6] = v14;
  v25[0] = a1;
  v25[1] = thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)partial apply;
  v25[2] = v15;
  v16 = type metadata accessor for Dictionary._Variant(0, a5, a6, a7);
  v17 = type metadata accessor for Dictionary(255, a5, a6, a7);
  swift_getTupleTypeMetadata2(255, a5, a6, 0, 0);
  v19 = v18;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], v17, v20);
  v22 = type metadata accessor for LazyMapSequence(0, v17, v19, WitnessTable);
  v24 = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v22, v23);
  Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v25, a2, a3, v16, v22, v24);
  if (v7)
  {
    v26;
  }
}

void Dictionary.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v11 = type metadata accessor for Dictionary._Variant(0, a6[2], a6[3], a6[4]);

  Dictionary._Variant.remove(at:)(a1, a2, a3, a4, a5 & 1, v11);
}

void Dictionary._Variant.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v29 = a2;
  v30 = a4;
  v28 = a1;
  v11 = *(a6 + 16);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = *(v16 + 24);
  if ((*v6 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v6);
    v19 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v31 = v19;
      *v7 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v11, v17, *(a6 + 32));
      _NativeDictionary.copy()();
      v19 = v31;
      *v7 = v31;
    }

    v19;
    if (a5)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (a3 < 0 || 1 << *(v19 + 32) <= a3 || ((*(v19 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0 || *(v19 + 36) != v30)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v15 < 0)
  {
    v18 = *v6;
  }

  else
  {
    v18 = (v15 & 0xFFFFFFFFFFFFFF8);
  }

  v15;
  v19 = _NativeDictionary.init(_:capacity:)(v18, [v18 count], v11, v17, *(a6 + 32));
  v19;
  v15;
  if ((a5 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (a3 >= 0)
  {
    v20 = (a3 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v20 = a3;
  }

  v21 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v20, v21))
  {
    goto LABEL_25;
  }

  if (*(v19 + 36) != specialized static Hasher._hash(seed:_:)(0, v20[2]))
  {
    goto LABEL_23;
  }

  if (!swift_dynamicCastClass(v20, v21))
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v20[3];
  if (*(v22 + 16) <= v30)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = *(v22 + 8 * v30 + 24);
  v24 = swift_unknownObjectRetain(v23);
  _forceBridgeFromObjectiveC<A>(_:_:)(v24, v11, v14, v25);
  swift_unknownObjectRelease(v23);
  a3 = __RawDictionaryStorage.find<A>(_:)(v14, v11, *(a6 + 32));
  LOBYTE(v23) = v26;
  (*(v12 + 8))(v14, v11);
  if ((v23 & 1) == 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_22:
  v19;
  *v7 = 0x8000000000000000;
  (*(v12 + 32))(v28, *(v19 + 48) + *(v12 + 72) * a3, v11);
  (*(*(v17 - 1) + 4))(v29, *(v19 + 56) + *(*(v17 - 1) + 9) * a3, v17);
  _NativeDictionary._delete(at:)(a3);
  *v7 = v19;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  v8 = *v2;
  v12 = *v3;
  *v3 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v12;
  }

  *(*(v8 + 48) + 16 * v6 + 8);
  v9 = *(*(v8 + 56) + 16 * v6);
  v10.offset = v6;
  specialized _NativeDictionary._delete(at:)(v10, v8);
  *v3 = v8;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v10 = *v3;
    v15 = *v4;
    *v4 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v15;
    }

    *(*(v10 + 48) + 16 * v8 + 8);
    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a1 = *v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(v11 + 32);
    v13.offset = v8;
    specialized _NativeDictionary._delete(at:)(v13, v10);
    *v4 = v10;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v10 = *v3;
    v13 = *v4;
    *v4 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v13;
    }

    *(*(v10 + 48) + 16 * v8 + 8);
    outlined init with take of Any((*(v10 + 56) + 32 * v8), a1);
    v11.offset = v8;
    specialized _NativeDictionary._delete(at:)(v11, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v9 = *v2;
    v12 = *v3;
    *v3 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12;
    }

    outlined destroy of AnyHashable((*(v9 + 48) + 40 * v7));
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a1);
    v10.offset = v7;
    specialized _NativeDictionary._delete(at:)(v10, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  v7 = *v1;
  v11 = *v2;
  *v2 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  outlined destroy of AnyHashable((*(v7 + 48) + 40 * v5));
  v8 = *(*(v7 + 56) + 16 * v5);
  v9.offset = v5;
  specialized _NativeDictionary._delete(at:)(v9, v7);
  *v2 = v7;
  return v8;
}

uint64_t Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 24);
  v38 = *(v7 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = *(v9 + 16);
  if ((*v4 & 0xC000000000000001) != 0)
  {
    v14 = v8;
    v15 = _bridgeAnythingToObjectiveC<A>(_:)(v8, *(v9 + 16));
    if (v12 < 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    v17 = [v16 &sel:v15 objectForKey:?];
    if (v17)
    {
      v37 = a3;
      swift_unknownObjectRelease(v17);
      v12;
      v18 = [v16 count];
      v19 = *(a2 + 32);
      v20 = _NativeDictionary.init(_:capacity:)(v16, v18, v13, v7, v19);
      v20;
      v21 = __RawDictionaryStorage.find<A>(_:)(v14, v13, v19);
      v23 = v22;
      v20;
      if ((v23 & 1) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v15);
      (*(*(v13 - 1) + 1))(v20[6] + *(*(v13 - 1) + 9) * v21, v13);
      v24 = *(v38 + 32);
      v24(v11, v20[7] + *(v38 + 72) * v21, v7);
      _NativeDictionary._delete(at:)(v21);
      v12;
      *v4 = v20;
      v25 = v37;
      v24(v37, v11, v7);
      return (*(v38 + 56))(v25, 0, 1, v7);
    }

    swift_unknownObjectRelease(v15);
  }

  else
  {
    v27 = *(a2 + 32);
    v28 = __RawDictionaryStorage.find<A>(_:)(v8, *(v9 + 16), v27);
    if (v29)
    {
      v30.offset = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
      v32 = *v4;
      v39 = *v4;
      *v4 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeDictionary(0, v13, v7, v27);
        _NativeDictionary.copy()();
        v32 = v39;
      }

      (*(*(v13 - 1) + 1))(*(v32 + 48) + *(*(v13 - 1) + 9) * v30.offset, v13);
      (*(v38 + 32))(a3, *(v32 + 56) + *(v38 + 72) * v30.offset, v7);
      _NativeDictionary._delete(at:)(v30);
      *v4 = v32;
      v33 = *(v38 + 56);
      v34 = a3;
      v35 = 0;
      goto LABEL_14;
    }
  }

  v33 = *(v38 + 56);
  v34 = a3;
  v35 = 1;
LABEL_14:

  return v33(v34, v35, 1, v7);
}

Swift::Void __swiftcall Dictionary.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for Dictionary._Variant(0, v1[2], v1[3], v1[4]);

  Dictionary._Variant.removeAll(keepingCapacity:)(keepingCapacity);
}

Swift::Void __swiftcall Dictionary._Variant.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = *v2;
  if (keepingCapacity)
  {
    v4 = v1;
    v5 = *(v1 + 16);
    if ((v3 & 0xC000000000000001) != 0)
    {
      if (v3 < 0)
      {
        v6 = *v2;
      }

      else
      {
        v6 = (v3 & 0xFFFFFFFFFFFFFF8);
      }

      if ([v6 count] > 0)
      {
        v7 = *(v4 + 24);
        v8 = [v6 count];
        v3;
        if (v8)
        {
          type metadata accessor for _DictionaryStorage(0, v5, v7, *(v4 + 32));
          v9 = static _DictionaryStorage.allocate(capacity:)(v8);
        }

        else
        {
          v9 = &_swiftEmptyDictionarySingleton;
        }

        *v2 = v9;
      }
    }

    else if (*(v3 + 16))
    {
      v10 = *(v1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
      v12 = *v2;
      *v2 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v5, v10, *(v4 + 32));
      _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v2 = v12;
    }
  }

  else
  {
    *v2;
    *v2 = &_swiftEmptyDictionarySingleton;
  }
}

unint64_t Dictionary.values.getter()
{
  _swift_displayCrashMessage();

  return v0;
}

uint64_t (*Dictionary.values.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary.values.modify;
}

uint64_t swap<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 32);
  v9(v8, a1);
  (v9)(a1, a2, a3);
  return (v9)(a2, v8, a3);
}

void Dictionary.Keys.startIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects:0 andKeys:v5 + 3 count:v3];
        a1;
        v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 64);
    v10 = (63 - (-1 << *(a1 + 32))) >> 6;
    do
    {
      if (*v9++)
      {
        break;
      }

      v8 -= 64;
      --v10;
    }

    while (v10);
  }
}

void Dictionary.Keys.endIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects:0 andKeys:v5 + 3 count:v3];
        a1;
        v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int Dictionary.Keys.index(after:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.index(after:)(a1, a2, a3 & 1, a4, a5, a6, a7);
  }

  if (a4 < 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0)
  {
    v10 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v10 = a1;
  }

  v11 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v10, v11))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v10 + 2) != v9 || *(*(v10 + 3) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8;
  return v8;
}

void Dictionary.Keys.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, Class *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a4 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (v11)
    {
      v20 = v12;
      v21 = v10;
      if (v9 >= 0)
      {
        v22 = (v9 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v22 = v9;
      }

      v23 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v22, v23))
      {
        goto LABEL_27;
      }

      if (*(a3 + 36) != specialized static Hasher._hash(seed:_:)(0, v22[2]))
      {
        goto LABEL_24;
      }

      if (!swift_dynamicCastClass(v22, v23))
      {
LABEL_27:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = v22[3];
      if (*(v24 + 16) <= v21)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = *(v24 + 8 * v21 + 24);
      v26 = swift_unknownObjectRetain(v25);
      _forceBridgeFromObjectiveC<A>(_:_:)(v26, a4, v14, v27);
      swift_unknownObjectRelease(v25);
      v28 = __RawDictionaryStorage.find<A>(_:)(v14, a4, v20);
      LOBYTE(v25) = v29;
      (*(v8 + 8))(v14, a4);
      if (v25)
      {
        v9 = v28;
LABEL_23:
        (*(v8 + 16))(a5, *(a3 + 48) + *(v8 + 72) * v9, a4);
        return;
      }
    }

    else if ((v9 & 0x8000000000000000) == 0 && 1 << *(a3 + 32) > v9 && ((*(a3 + 8 * (v9 >> 6) + 64) >> v9) & 1) != 0 && *(a3 + 36) == v10)
    {
      goto LABEL_23;
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v11 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = specialized __CocoaDictionary.key(at:)(v9, v10, v16);
  v18 = swift_unknownObjectRetain(v17);
  _forceBridgeFromObjectiveC<A>(_:_:)(v18, a4, a5, v19);

  swift_unknownObjectRelease(v17);
}

uint64_t Dictionary.Keys._customContainsEquatableElement(_:)(id *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
      return v9 & 1;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v6 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  v8 = [v7 &sel:v6 objectForKey:?];
  swift_unknownObjectRelease(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  swift_unknownObjectRelease(v8);
  v9 = 1;
  return v9 & 1;
}

uint64_t Dictionary._Variant.contains(_:)(id *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
      return v9 & 1;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v6 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  v8 = [v7 &sel:v6 objectForKey:?];
  swift_unknownObjectRelease(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  swift_unknownObjectRelease(v8);
  v9 = 1;
  return v9 & 1;
}

uint64_t Optional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t static Dictionary.Keys.== infix(_:_:)(int64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v105 = *(a3 - 1);
  v9 = *(v105 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = (&v83 - v12);
  v15 = type metadata accessor for Optional(0, v13, v13, v14);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v26 = (&v83 - v25);
  v27 = v7 & 0xC000000000000001;
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0 && !v27 && a1 == v7)
  {
    return 1;
  }

  v104 = v7 & 0xC000000000000001;
  if (!v28)
  {
    v88 = v24;
    v89 = v23;
    v90 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v91 = v22;
    v33 = *(a1 + 16);
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (v33 == *(v7 + 16))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v27)
  {
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v31 = a1;
    }

    else
    {
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v32 = v7;
    }

    if (v31 == v32)
    {
      return 1;
    }
  }

  else
  {
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v88 = v24;
  v89 = v23;
  v90 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = v22;
  if (a1 < 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = v30;
  }

  v33 = [v34 count];
  if (!v104)
  {
    goto LABEL_15;
  }

LABEL_22:
  if (v7 < 0)
  {
    v35 = v7;
  }

  else
  {
    v35 = (v7 & 0xFFFFFFFFFFFFFF8);
  }

  if (v33 != [v35 count])
  {
    return 0;
  }

LABEL_26:
  v96 = v9;
  v93 = a5;
  if (v28)
  {
    if (a1 < 0)
    {
      v36 = a1;
    }

    else
    {
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v37 = type metadata accessor for __CocoaDictionary.Iterator();
    v38 = swift_allocObject(v37, 0xE8, 7uLL);
    v92 = 0;
    v39 = 0;
    v40 = 0;
    *(v38 + 208) = v36;
    *(v38 + 216) = 0;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0u;
    *(v38 + 48) = 0u;
    *(v38 + 64) = 0u;
    *(v38 + 80) = 0u;
    *(v38 + 96) = 0u;
    *(v38 + 112) = 0u;
    *(v38 + 128) = 0u;
    *(v38 + 144) = 0u;
    *(v38 + 160) = 0u;
    *(v38 + 176) = 0u;
    *(v38 + 192) = 0u;
    *(v38 + 224) = 0;
    v41 = v38 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(a1 + 32);
    v39 = ~v42;
    v43 = *(a1 + 64);
    v92 = a1 + 64;
    v44 = -v42;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v40 = v45 & v43;
    v41 = a1;
  }

  v94 = v41 & 0x7FFFFFFFFFFFFFFFLL;
  v101 = (v105 + 56);
  v86 = (v16 + 16);
  v85 = (v105 + 48);
  v84 = (v16 + 8);
  v87 = v39;
  v46 = (v39 + 64) >> 6;
  v95 = v105 + 16;
  v99 = (v105 + 8);
  v100 = (v105 + 32);
  v47 = (v7 & 0xFFFFFFFFFFFFFF8);
  if (v7 < 0)
  {
    v47 = v7;
  }

  v97 = v47;
  a1;
  v48 = 0;
  v49 = v41;
  v103 = v7;
  while (1)
  {
    v50 = v40;
    v51 = v48;
    if ((v49 & 0x8000000000000000) == 0)
    {
      v52 = v40;
      if (!v40)
      {
        v53 = v48;
        while (1)
        {
          v48 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if (v48 >= v46)
          {
            (*v101)(v26, 1, 1, a3);
            v81 = v49;
            goto LABEL_69;
          }

          v52 = *(v92 + 8 * v48);
          ++v53;
          if (v52)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_78:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_44:
      v98 = v51;
      v40 = (v52 - 1) & v52;
      v54 = v105;
      (*(v105 + 16))(v26, *(v49 + 48) + *(v105 + 72) * (__clz(__rbit64(v52)) | (v48 << 6)), a3);
      (*(v54 + 56))(v26, 0, 1, a3);
      goto LABEL_56;
    }

    v55 = v94;
    v56 = *(v94 + 216);
    v57 = v101;
    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if (v56 != *(v94 + 224))
    {
      v59 = *(v94 + 24);
      if (!v59)
      {
LABEL_81:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v56 >> 60)
      {
        __break(1u);
LABEL_80:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_52;
    }

    v58 = [*(v94 + 208) countByEnumeratingWithState:v94 + 16 objects:v94 + 80 count:16];
    v55[28] = v58;
    if (!v58)
    {
      break;
    }

    v55[27] = 0;
    v59 = v55[3];
    if (!v59)
    {
      goto LABEL_81;
    }

    v56 = 0;
LABEL_52:
    v60 = (v59 + 8 * v56);
    if ((v60 & 7) != 0)
    {
      goto LABEL_80;
    }

    v102 = v40;
    v61 = *v60;
    v55[27] = v56 + 1;
    swift_unknownObjectRetain(v61);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a3, a3);
    v98 = v51;
    if (isClassOrObjCExistentialType)
    {
      v107 = v61;
      swift_dynamicCast(v26, &v107, qword_1EEEAC710, a3, 7uLL, v63, v64, v65, v83);
      v66 = *v57;
    }

    else
    {
      v83 = v49;
      v66 = *v57;
      v79 = v88;
      v66(v88, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v61, a3, v79);
      v80 = v89;
      (*v86)(v89, v79, v91);
      if ((*v85)(v80, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*v84)(v79, v91);
      swift_unknownObjectRelease(v61);
      (*v100)(v26, v80, a3);
      v49 = v83;
      v51 = v98;
    }

    v66(v26, 0, 1, a3);
    v48 = v51;
    v50 = v102;
    v40 = v102;
LABEL_56:
    v67 = *v100;
    (*v100)(v106, v26, a3);
    if (v104)
    {
      v68 = _swift_isClassOrObjCExistentialType(a3, a3);
      v102 = v50;
      if (v68)
      {
        if (v96 != 8)
        {
          goto LABEL_78;
        }

        v69 = v49;
        v70 = v106;
        v71 = *v106;
        v72 = *v99;
        swift_unknownObjectRetain(*v106);
        v73 = v70;
        v49 = v69;
        v7 = v103;
        v72(v73, a3);
      }

      else
      {
        v78 = v90;
        v67(v90, v106, a3);
        v71 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v78, a3);
      }

      v74 = [v97 &sel:v71 objectForKey:?];
      swift_unknownObjectRelease(v71);
      if (!v74)
      {
        v82 = v49;
        goto LABEL_72;
      }

      swift_unknownObjectRelease(v74);
    }

    else
    {
      if (!*(v7 + 16))
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v49);
        (*v99)(v106, a3);
        return 0;
      }

      v75 = v106;
      __RawDictionaryStorage.find<A>(_:)(v106, a3, v93);
      v7 = v103;
      v77 = v76;
      (*v99)(v75, a3);
      if ((v77 & 1) == 0)
      {
        v82 = v49;
LABEL_72:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v82);
        return 0;
      }
    }
  }

  v55[27] = -1;
LABEL_76:
  (*v57)(v26, 1, 1, a3);
  v81 = v49;
LABEL_69:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v81);
  return 1;
}

uint64_t Dictionary._Variant.asCocoa.getter(int64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  a1;
  return v1;
}

uint64_t Dictionary.Keys.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 16);
    v11 = __CocoaDictionary.Iterator.nextKey()();
    if (v11)
    {
      v13 = v11;
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, v10, a2, v12);
      swift_unknownObjectRelease(v13);
      v14 = *(*(v10 - 1) + 7);
      v15 = a2;
      v16 = 0;
    }

    else
    {
      v14 = *(*(v10 - 1) + 7);
      v15 = a2;
      v16 = 1;
    }

    return v14(v15, v16, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v20 = (v8 - 1) & v8;
      v21 = *(result + 16);
      v22 = *(v21 - 8);
      (*(v22 + 16))(a2, *(v4 + 48) + *(v22 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v21);
      result = (*(v22 + 56))(a2, 0, 1, v21);
      v19 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v19;
      v2[4] = v20;
    }

    else
    {
      v17 = (v6 + 64) >> 6;
      if (v17 <= v7 + 1)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = (v6 + 64) >> 6;
      }

      v19 = v18 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v17)
        {
          result = (*(*(*(result + 16) - 8) + 56))(a2, 1, 1);
          v20 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized Sequence<>.contains(_:)(unsigned __int16 a1, Swift::Int a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = a2;
    v7 = 0;
    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_11;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
LABEL_12:
      v15[0] = v5;
      v15[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v8 = v15;
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_20:
      v8 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
LABEL_8:
      v8 = _StringObject.sharedUTF8.getter(v5, a3);
    }

    for (i = _decodeScalar(_:startingAt:)(v8, a2, v7); ; i = *&v11._0._value)
    {
      v7 += a2;
      if (i >= 0x10000)
      {
        v12 = i;
        result = Unicode.Scalar.UTF16View.subscript.getter(1, i);
        v13 = (((v12 + 67043328) >> 10) - 10240);
        if (v13 != ((v12 + 67043328) >> 10) + 55296)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        result = 1;
        if (v13 == a1 || v14 == a1)
        {
          return result;
        }
      }

      else if (i == a1)
      {
        return 1;
      }

      if (v7 >= v3)
      {
        return 0;
      }

      if ((a3 & 0x1000000000000000) == 0)
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          goto LABEL_12;
        }

        if ((v5 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }

LABEL_11:
      v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v7 << 16));
      a2 = v11.scalarLength;
    }
  }

  return 0;
}

uint64_t Sequence<>.contains(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a3 + 48))();
  if (v8 == 2)
  {
    MEMORY[0x1EEE9AC00](v8, v9);
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = a1;
    LOBYTE(v8) = Sequence.contains(where:)(partial apply for closure #1 in Sequence<>.contains(_:), v11, a2, a3);
  }

  return v8 & 1;
}

uint64_t (*Dictionary.Keys.subscript.read(Class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6))()
{
  v11 = *(a6 - 1);
  *a1 = a6;
  a1[1] = v11;
  v12 = v11[8];
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0x7516uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  a1[2] = v13;
  Dictionary.Keys.subscript.getter(a2, a3, a5, a6, v13);
  return Dictionary.Keys.subscript.read;
}

void Dictionary.formIndex(after:)(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!*(a1 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v8 >= 0)
    {
      v11 = (v8 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v11 = *a1;
    }

    v12 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v11, v12))
    {
      goto LABEL_18;
    }

    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native(v11);
    }

    if (!swift_dynamicCastClass(v11, v12))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v13 = a2;
    }

    if (*(v11 + 2) != v13 || v9 >= *(*(v11 + 3) + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v14 = v9 + 1;
    v15 = 1;
  }

  else
  {
    v16 = _NativeDictionary.index(after:)(*a1, v9, v10, a2, a3, a6, a5);
    v14 = v17;
    v15 = v18;
    sub_180615F30(v8, v9, v10);
    v8 = v16;
  }

  *a1 = v8;
  a1[1] = v14;
  *(a1 + 16) = v15 & 1;
}

void Dictionary.Values.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, Class *a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (v12)
    {
      v25 = v14;
      v26 = v13;
      if (v11 >= 0)
      {
        v27 = (v11 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v27 = v11;
      }

      v28 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v27, v28))
      {
        goto LABEL_33;
      }

      if (*(a3 + 36) == specialized static Hasher._hash(seed:_:)(0, v27[2]))
      {
        if (!swift_dynamicCastClass(v27, v28))
        {
          goto LABEL_33;
        }

        v29 = v27[3];
        if (*(v29 + 16) <= a2)
        {
          goto LABEL_32;
        }

        v30 = *(v29 + 8 * a2 + 24);
        v31 = swift_unknownObjectRetain(v30);
        _forceBridgeFromObjectiveC<A>(_:_:)(v31, v26, v16, v32);
        swift_unknownObjectRelease(v30);
        v33 = __RawDictionaryStorage.find<A>(_:)(v16, v26, v25);
        v35 = v34;
        (*(v10 + 8))(v16, v26);
        if (v35)
        {
          v11 = v33;
LABEL_29:
          (*(*(a5 - 1) + 2))(a6, *(a3 + 56) + *(*(a5 - 1) + 9) * v11, a5);
          return;
        }
      }
    }

    else if ((v11 & 0x8000000000000000) == 0 && 1 << *(a3 + 32) > v11 && ((*(a3 + 8 * (v11 >> 6) + 64) >> v11) & 1) != 0 && *(a3 + 36) == a2)
    {
      goto LABEL_29;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if ((v12 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 >= 0)
  {
    v18 = (v11 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v18, v19))
  {
    goto LABEL_33;
  }

  v20 = *(v18 + 2);
  if (v20 != a3)
  {
    goto LABEL_32;
  }

  v21 = *(*(v18 + 3) + 8 * a2 + 24);
  swift_unknownObjectRetain(v21);
  if (!swift_dynamicCastClass(v18, v19))
  {
LABEL_33:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = [v20 &sel:v21 objectForKey:?];
  if (!v22)
  {
LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = v22;
  swift_unknownObjectRelease(v21);
  _forceBridgeFromObjectiveC<A>(_:_:)(v23, a5, a6, v24);

  swift_unknownObjectRelease(v23);
}

void (*Dictionary.Values.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5))(void **a1)
{
  v6 = v5;
  v12 = a5[2];
  v29 = *(v12 - 1);
  v13 = *(v29 + 64);
  if (swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc(v13, 0xB3DAuLL);
  }

  else
  {
    v14 = malloc(v13);
  }

  v15 = v14;
  *a1 = v14;
  v16 = *v5;
  v17 = a5[3];
  if ((*v5 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v5);
    v19 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v30 = *v6;
      *v6 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v12, v17, a5[4]);
      _NativeDictionary.copy()();
      v19 = v30;
      *v6 = v30;
    }

    v19;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_21:
    if (a2 < 0 || 1 << *(v19 + 32) <= a2 || ((*(v19 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0 || *(v19 + 36) != a3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v16 < 0)
  {
    v18 = *v5;
  }

  else
  {
    v18 = (v16 & 0xFFFFFFFFFFFFFF8);
  }

  *v6;
  v19 = _NativeDictionary.init(_:capacity:)(v18, [v18 count], v12, v17, a5[4]);
  v19;
  v16;
  *v6 = v19;
  if ((a4 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (a2 >= 0)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v20 = a2;
  }

  v21 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v20, v21))
  {
    goto LABEL_28;
  }

  if (*(v19 + 36) != specialized static Hasher._hash(seed:_:)(0, v20[2]))
  {
    goto LABEL_26;
  }

  if (!swift_dynamicCastClass(v20, v21))
  {
LABEL_28:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v20[3];
  if (*(v22 + 16) <= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = *(v22 + 8 * a3 + 24);
  v24 = swift_unknownObjectRetain(v23);
  _forceBridgeFromObjectiveC<A>(_:_:)(v24, v12, v15, v25);
  swift_unknownObjectRelease(v23);
  __RawDictionaryStorage.find<A>(_:)(v15, v12, a5[4]);
  LOBYTE(v23) = v26;
  (*(v29 + 8))(v15, v12);
  if ((v23 & 1) == 0)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_25:
  v19;
  return Dictionary.Values.subscript.modify;
}

__objc2_class **Dictionary._Variant.ensureUniqueNative()(void *a1)
{
  v3 = *v1;
  v4 = a1[2];
  v5 = a1[3];
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v6 = *v1;
    }

    else
    {
      v6 = (v3 & 0xFFFFFFFFFFFFFF8);
    }

    *v1;
    v7 = _NativeDictionary.init(_:capacity:)(v6, [v6 count], v4, v5, a1[4]);
    v7;
    v3;
    *v1 = v7;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
    v7 = *v1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v10 = *v1;
      *v1 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v4, v5, a1[4]);
      _NativeDictionary.copy()();
      v7 = v10;
      *v1 = v10;
    }

    v7;
  }

  return v7;
}

uint64_t _NativeDictionary.validatedBucket(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 1);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    if (result >= 0)
    {
      v16 = (result & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = result;
    }

    v17 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v16, v17))
    {
      goto LABEL_17;
    }

    if (*(a4 + 36) != specialized static Hasher._hash(seed:_:)(0, v16[2]))
    {
      goto LABEL_15;
    }

    if (!swift_dynamicCastClass(v16, v17))
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = v16[3];
    if (*(v18 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v19 = *(v18 + 8 * a2 + 24);
    v20 = swift_unknownObjectRetain(v19);
    _forceBridgeFromObjectiveC<A>(_:_:)(v20, a5, v14, v21);
    swift_unknownObjectRelease(v19);
    v22 = __RawDictionaryStorage.find<A>(_:)(v14, a5, a7);
    LOBYTE(v19) = v23;
    (*(v11 + 8))(v14, a5);
    if (v19)
    {
      return v22;
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < 0 || 1 << *(a4 + 32) <= result || ((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0 || *(a4 + 36) != a2)
  {
    goto LABEL_15;
  }

  return result;
}

void Dictionary.Values.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v31 = a1;
  v10 = *(a5 + 16);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = *(v15 + 24);
  if ((*v5 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v5);
    v18 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v33 = v18;
      *v6 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v10, v16, *(a5 + 32));
      _NativeDictionary.copy()();
      v18 = v33;
      *v6 = v33;
    }

    v18;
    if (v32)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (a2 < 0)
    {
      goto LABEL_23;
    }

    if (1 << *(v18 + 32) <= a2)
    {
      goto LABEL_23;
    }

    if (((*(v18 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = a2;
    if (*(v18 + 36) != a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v14 < 0)
  {
    v17 = *v5;
  }

  else
  {
    v17 = (v14 & 0xFFFFFFFFFFFFFF8);
  }

  v14;
  v18 = _NativeDictionary.init(_:capacity:)(v17, [v17 count], v10, v16, *(a5 + 32));
  v18;
  v14;
  *v6 = v18;
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (a2 >= 0)
  {
    v19 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v19 = a2;
  }

  v20 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v19, v20))
  {
    goto LABEL_25;
  }

  if (*(v18 + 36) != specialized static Hasher._hash(seed:_:)(0, v19[2]))
  {
    goto LABEL_23;
  }

  if (!swift_dynamicCastClass(v19, v20))
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v21 = v19[3];
  if (*(v21 + 16) <= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v21 + 8 * a3 + 24);
  v23 = swift_unknownObjectRetain(v22);
  _forceBridgeFromObjectiveC<A>(_:_:)(v23, v10, v13, v24);
  swift_unknownObjectRelease(v22);
  v25 = __RawDictionaryStorage.find<A>(_:)(v13, v10, *(a5 + 32));
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  if ((v27 & 1) == 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_22:
  v29 = *(v18 + 56);
  v18;
  (*(*(v16 - 1) + 5))(v29 + *(*(v16 - 1) + 9) * v25, v31, v16);
  sub_180615F30(a2, a3, v32 & 1);
}

BOOL Dictionary.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = [a1 count];
  }

  else
  {
    v3 = *(a1 + 16);
  }

  return v3 == 0;
}

uint64_t Dictionary.Values.swapAt(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v13 = a1;
  v14 = *(a7 + 24);
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v75 = &v69[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v18 + 16);
  v76 = *(v19 - 1);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v73 = &v69[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v69[-v25];
  v28 = *(v27 + 32);
  v77 = v29;
  v78 = v28;
  result = static Dictionary.Index.== infix(_:_:)(v24, v32, v30 & 1, v33, v29, v31 & 1);
  if (result)
  {
    return result;
  }

  v72 = v15;
  v74 = v14;
  v35 = *v8;
  if ((*v8 & 0xC000000000000001) != 0)
  {
    if (v35 < 0)
    {
      v36 = *v8;
    }

    else
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFF8);
    }

    v37 = v8;
    v38 = *v8;
    v35;
    v39 = [v36 count];
    v40 = _NativeDictionary.init(_:capacity:)(v36, v39, v19, v74, v78);
    v41 = v38;
    v8 = v37;
    v41;
    *v37 = v40;
    v35 = v40;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
  v43 = *v8;
  if (a3)
  {
    v70 = isUniquelyReferenced_nonNull_native;
    v71 = v8;
    if (v13 >= 0)
    {
      v13 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v44 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v13, v44))
    {
      goto LABEL_40;
    }

    v45 = specialized static Hasher._hash(seed:_:)(0, *(v13 + 16));
    v46 = v72;
    if (*(v43 + 36) != v45)
    {
      goto LABEL_38;
    }

    if (!swift_dynamicCastClass(v13, v44))
    {
      goto LABEL_40;
    }

    v47 = *(v13 + 24);
    if (*(v47 + 16) <= a2)
    {
      goto LABEL_39;
    }

    v48 = *(v47 + 8 * a2 + 24);
    v49 = swift_unknownObjectRetain(v48);
    _forceBridgeFromObjectiveC<A>(_:_:)(v49, v19, v26, v50);
    swift_unknownObjectRelease(v48);
    v13 = __RawDictionaryStorage.find<A>(_:)(v26, v19, v78);
    LOBYTE(v48) = v51;
    (*(v76 + 8))(v26, v19);
    if ((v48 & 1) == 0)
    {
      goto LABEL_38;
    }

    v8 = v71;
    LOBYTE(isUniquelyReferenced_nonNull_native) = v70;
  }

  else
  {
    v46 = v72;
    if (v13 < 0 || 1 << *(v43 + 32) <= v13 || ((*(v43 + 8 * (v13 >> 6) + 64) >> v13) & 1) == 0 || *(v43 + 36) != a2)
    {
      goto LABEL_38;
    }
  }

  if (a6)
  {
    v52 = isUniquelyReferenced_nonNull_native;
    if (a4 >= 0)
    {
      v53 = (a4 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v53 = a4;
    }

    v54 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (swift_dynamicCastClass(v53, v54))
    {
      if (*(v43 + 36) != specialized static Hasher._hash(seed:_:)(0, v53[2]))
      {
        goto LABEL_38;
      }

      if (swift_dynamicCastClass(v53, v54))
      {
        v55 = v53[3];
        if (*(v55 + 16) > v77)
        {
          v56 = *(v55 + 8 * v77 + 24);
          v57 = swift_unknownObjectRetain(v56);
          v58 = v73;
          _forceBridgeFromObjectiveC<A>(_:_:)(v57, v19, v73, v59);
          swift_unknownObjectRelease(v56);
          a4 = __RawDictionaryStorage.find<A>(_:)(v58, v19, v78);
          LOBYTE(v56) = v60;
          (*(v76 + 8))(v58, v19);
          if (v56)
          {
            LOBYTE(isUniquelyReferenced_nonNull_native) = v52;
            goto LABEL_34;
          }

LABEL_38:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_39:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

LABEL_40:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4 < 0 || 1 << *(v43 + 32) <= a4 || ((*(v43 + 8 * (a4 >> 6) + 64) >> a4) & 1) == 0 || *(v43 + 36) != v77)
  {
    goto LABEL_38;
  }

LABEL_34:
  v79 = v43;
  *v8 = 0x8000000000000000;
  v61 = v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    type metadata accessor for _NativeDictionary(0, v19, v74, v78);
    _NativeDictionary.copy()();
    v43 = v79;
  }

  v62 = *(v46 + 32);
  v63 = *(v46 + 72);
  v64 = v63 * v13;
  v65 = *(v43 + 56) + v63 * v13;
  v66 = v74;
  v67 = v75;
  v62(v75, v65, v74);
  v68 = v63 * a4;
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v43 + 56) + v68), 1, (*(v43 + 56) + v64), v66);
  result = (v62)(*(v43 + 56) + v68, v67, v66);
  *v61 = v43;
  return result;
}

__objc2_class **_NativeDictionary.init(_:)(void *a1, Class *a2, Class *a3, uint64_t a4)
{
  v8 = [a1 count];

  return _NativeDictionary.init(_:capacity:)(a1, v8, a2, a3, a4);
}

uint64_t (*Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

Swift::Void __swiftcall _NativeDictionary.swapValuesAt(_:_:isUnique:)(Swift::_HashTable::Bucket _, Swift::_HashTable::Bucket a2, Swift::Bool isUnique)
{
  v6 = *(v3 + 24);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](_.offset, a2.offset);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v11 & 1) == 0)
  {
    v17 = v8;
    _NativeDictionary.copy()();
    v8 = v17;
  }

  v12 = *v4;
  v13 = *(v7 + 32);
  v14 = *(v7 + 72);
  v15 = v14 * v8;
  v13(v10, *(v12 + 56) + v14 * v8, v6);
  v16 = v14 * a2.offset;
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v12 + 56) + v16), 1, (*(v12 + 56) + v15), v6);
  v13((*(v12 + 56) + v16), v10, v6);
}

uint64_t (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, Class *a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0xD5C6uLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v11 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v12 = *(a4 + 8);
  v13 = type metadata accessor for Slice(0, a3, v12, v10);
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[5] = swift_coroFrameAlloc(v15, 0xD5C6uLL);
    v16 = swift_coroFrameAlloc(v15, 0xD5C6uLL);
  }

  else
  {
    v11[5] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness(255, v12, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v18, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v19, AssociatedConformanceWitness, v21);
  v11[7] = v22;
  v23 = *(v22 - 8);
  v24 = v23;
  v11[8] = v23;
  v25 = *(v23 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[9] = swift_coroFrameAlloc(v25, 0xD5C6uLL);
    v26 = swift_coroFrameAlloc(v25, 0xD5C6uLL);
  }

  else
  {
    v11[9] = malloc(v25);
    v26 = malloc(v25);
  }

  v11[10] = v26;
  (*(v24 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v17);
  return MutableCollection<>.subscript.modify;
}