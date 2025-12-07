char *$defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(char **a1, char **a2, void *a3, unint64_t *a4)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(*(a4 - 1) + 72);
  if (!v7 || ((v8 = *a3 - v6, v7 == -1) ? (v9 = v8 == 0x8000000000000000) : (v9 = 0), v9))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8 / v7, v5, a4);
}

Swift::Int __swiftcall _minimumMergeRunLength(_:)(Swift::Int result)
{
  v1 = 58 - __clz(result);
  v2 = -1 << v1;
  v3 = result >> v1;
  if ((result & ~v2) != 0)
  {
    ++v3;
  }

  if (result >= 64)
  {
    return v3;
  }

  return result;
}

uint64_t _findNextRun<A>(in:from:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, Class *a6, uint64_t a7)
{
  v103 = a4;
  v104 = a5;
  v83[0] = a1;
  v10 = *(*(a7 + 8) + 8);
  swift_getAssociatedTypeWitness(0, *(v10 + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v106 = *(v11 - 8);
  v107 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v108 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v114 = v83 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v88 = v83 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v105 = v83 - v22;
  swift_getAssociatedTypeWitness(0, v10, a6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v24 = v23;
  v25 = *(v23 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = v83 - v32;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = v83 - v35;
  v100 = *(v25 + 16);
  v101 = v25 + 16;
  v100(v83 - v35, a3, v24);
  (*(v10 + 184))(a3, a6, v10);
  v98 = *(v10 + 72);
  v99 = v10 + 72;
  v98(a6, v10);
  v116 = v10;
  v111 = a6;
  v37 = a6;
  v38 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v37, v24, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v40 = *(AssociatedConformanceWitness + 16);
  v97 = AssociatedConformanceWitness;
  v96 = AssociatedConformanceWitness + 16;
  v95 = v40;
  LOBYTE(a3) = (v40)(v33, v29, v24);
  v41 = *(v25 + 8);
  v102 = v29;
  v113 = v24;
  v41(v29, v24);
  if (a3)
  {
    v93 = v25;
    v109 = v36;
    v110 = v41;
    v42 = v116;
    v43 = *(v116 + 80);
    v92 = v116 + 80;
    v94 = v38;
    v44 = v43(v115, v38, v111, v116);
    v46 = v106 + 16;
    v45 = *(v106 + 16);
    v45(v105);
    v44(v115, 0);
    v47 = v109;
    v91 = v43;
    v48 = v43(v115, v109, v111, v42);
    v49 = v88;
    v90 = v45;
    v45(v88);
    v48(v115, 0);
    v110(v47, v113);
    v50 = v112;
    v51 = v103(v105, v49);
    if (v50)
    {
      v52 = v107;
      v53 = *(v106 + 8);
      v53(v49, v107);
      v53(v105, v52);
      v110(v94, v113);
    }

    else
    {
      v86 = v51;
      v85 = v46;
      v89 = v25 + 8;
      v112 = 0;
      v57 = v107;
      v58 = v106 + 8;
      v59 = *(v106 + 8);
      v59(v49, v107);
      v106 = v58;
      v84 = v59;
      v59(v105, v57);
      v87 = *(v116 + 192);
      v88 = (v116 + 192);
      v60 = v94;
      v61 = v93;
      v83[1] = a2;
      while (1)
      {
        v62 = v109;
        v63 = v113;
        v100(v109, v60, v113);
        v64 = v111;
        v65 = v116;
        v87(v60, v111, v116);
        v66 = v102;
        v98(v64, v65);
        v67 = v95(v60, v66, v63, v97);
        v68 = v63;
        v69 = v110;
        v110(v66, v68);
        if ((v67 & 1) == 0)
        {
          v69(v62, v113);
LABEL_12:
          (*(v61 + 32))(v83[0], v60, v113);
          v54 = v86;
          return v54 & 1;
        }

        v70 = v111;
        v71 = v91;
        v105 = v91(v115, v60, v111, v116);
        v72 = v107;
        v73 = v90;
        v90(v114);
        (v105)(v115, 0);
        v74 = v70;
        v75 = v110;
        v76 = v71(v115, v62, v74, v116);
        v77 = v108;
        v73(v108);
        v76(v115, 0);
        v75(v109, v113);
        v78 = v112;
        v79 = v103(v114, v77);
        v112 = v78;
        if (v78)
        {
          break;
        }

        v80 = v79;
        v81 = v84;
        v84(v108, v72);
        v81(v114, v72);
        v60 = v94;
        v61 = v93;
        if ((v86 ^ v80))
        {
          goto LABEL_12;
        }
      }

      v82 = v84;
      v84(v108, v72);
      v82(v114, v72);
      v75(v94, v113);
    }
  }

  else
  {
    v55 = v113;
    v41(v36, v113);
    (*(v25 + 32))(v83[0], v38, v55);
    v54 = 0;
  }

  return v54 & 1;
}

uint64_t UnsafeMutableBufferPointer._mergeRuns(_:at:buffer:by:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v7;
  v13 = *a1;
  sub_1802E86D0(a2 - 1, 1, *a1);
  v14 = v13 + 32;
  v15 = *(v13 + 32 + 16 * v8);
  sub_1802E86D0(a2, 1, v13);
  v16 = *v6;
  if (!*v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = *(v14 + 16 * a2 + 8);
  v18 = *(*(*(a6 + 16) - 8) + 72);
  _merge<A>(low:mid:high:buffer:by:)((v16 + v18 * v15), v16 + v18 * *(v14 + 16 * a2), v16 + v18 * v17, a3, a4, a5, *(a6 + 16));
  if (!v25)
  {
    if (v17 >= v15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
      *a1 = v13;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        *a1 = v13;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v8);
      v20 = v13 + 16 * v8;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      *a1 = v13;
      Array.remove(at:)(a2, &unk_1EEEBBEA8, v24);
      return 1;
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 1;
}

uint64_t UnsafeMutableBufferPointer._mergeTopRuns(_:buffer:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *a1;
  if (*(*a1 + 16) >= 2uLL)
  {
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a1);
    *v8 = v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_58;
    }

    while (1)
    {
      *v8 = v7;
      v62 = v8;
      while (1)
      {
        v10 = Array._getCount()();
        v11 = v10 - 1;
        if (__OFSUB__(v10, 1))
        {
          __break(1u);
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v12 = v10 - 4;
        if (v11 >= 3)
        {
          break;
        }

        if (v10 != 3)
        {
          goto LABEL_19;
        }

        v8 = v6;
        v13 = 0;
LABEL_13:
        sub_1802E86D0(v13, 1, v7);
        v27 = (v7 + 16 * v11);
        v28 = v27[1];
        v6 = (v28 - *v27);
        if (__OFSUB__(v28, *v27))
        {
          goto LABEL_45;
        }

        sub_1802E86D0(v11 - 1, 1, v7);
        v29 = (v7 + 32 + 16 * (v11 - 1));
        v31 = *v29;
        v30 = v29[1];
        v32 = v30 - v31;
        if (__OFSUB__(v30, v31))
        {
          goto LABEL_48;
        }

        sub_1802E86D0(v11, 1, v7);
        v33 = (v7 + 32 + 16 * v11);
        v34 = v33[1];
        v35 = v34 - *v33;
        if (__OFSUB__(v34, *v33))
        {
          goto LABEL_51;
        }

        v24 = __OFADD__(v32, v35);
        v36 = v32 + v35;
        if (v24)
        {
          goto LABEL_53;
        }

        v37 = v36 < v6;
        v6 = v8;
        if (!v37)
        {
          sub_1802E86D0(v13, 1, v7);
          v52 = v27[1];
          v53 = v52 - *v27;
          if (__OFSUB__(v52, *v27))
          {
            goto LABEL_56;
          }

          sub_1802E86D0(v11, 1, v7);
          v54 = v33[1];
          if (__OFSUB__(v54, *v33))
          {
            goto LABEL_57;
          }

          if (v53 < v54 - *v33)
          {
            --v11;
          }

LABEL_33:
          v8 = v62;
          goto LABEL_34;
        }

LABEL_19:
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_47;
        }

        sub_1802E86D0(v11 - 1, 1, v7);
        v38 = (v7 + 32 + 16 * (v11 - 1));
        v40 = *v38;
        v39 = v38[1];
        v41 = v39 - v40;
        if (__OFSUB__(v39, v40))
        {
          goto LABEL_50;
        }

        sub_1802E86D0(v11, 1, v7);
        v42 = (v7 + 32 + 16 * v11);
        v44 = *v42;
        v43 = v42[1];
        v24 = __OFSUB__(v43, v44);
        v45 = v43 - v44;
        v8 = v62;
        if (v24)
        {
          goto LABEL_52;
        }

        if (v45 < v41)
        {
          return 1;
        }

LABEL_34:
        sub_1802E86D0(v11 - 1, 1, v7);
        v55 = v7 + 32;
        v56 = *(v7 + 32 + 16 * (v11 - 1));
        sub_1802E86D0(v11, 1, v7);
        if (!*v67)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v57 = *(v55 + 16 * v11 + 8);
        v58 = *(*(*(a5 + 16) - 8) + 72);
        _merge<A>(low:mid:high:buffer:by:)((*v67 + v58 * v56), *v67 + v58 * *(v55 + 16 * v11), *v67 + v58 * v57, a2, a3, a4, *(a5 + 16));
        if (!v6)
        {
          if (v57 < v56)
          {
            goto LABEL_42;
          }

          v59 = swift_isUniquelyReferenced_nonNull_native(v7);
          *v8 = v7;
          if (!v59)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            *v8 = v7;
          }

          ContiguousArray._checkSubscript_mutating(_:)(v11 - 1);
          v60 = v7 + 16 * (v11 - 1);
          *(v60 + 32) = v56;
          *(v60 + 40) = v57;
          *v8 = v7;
          specialized Array.remove(at:)(v11);
          v7 = *v8;
          if (Array._getCount()() > 1)
          {
            continue;
          }
        }

        return 1;
      }

      sub_1802E86D0(v10 - 4, 1, v7);
      v14 = v7 + 32;
      v15 = (v7 + 32 + 16 * v12);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
        break;
      }

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
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v8 = v6;
    v13 = v11 - 2;
    sub_1802E86D0(v11 - 2, 1, v7);
    v6 = (v7 + 16 * v11);
    v19 = v6[1];
    v20 = v19 - *v6;
    if (__OFSUB__(v19, *v6))
    {
      goto LABEL_44;
    }

    sub_1802E86D0(v11 - 1, 1, v7);
    v21 = (v14 + 16 * (v11 - 1));
    v23 = *v21;
    v22 = v21[1];
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (v24)
    {
      goto LABEL_46;
    }

    v24 = __OFADD__(v20, v25);
    v26 = v20 + v25;
    if (v24)
    {
      goto LABEL_49;
    }

    if (v26 >= v18)
    {
      sub_1802E86D0(v11 - 2, 1, v7);
      v46 = v6[1];
      v47 = v46 - *v6;
      if (__OFSUB__(v46, *v6))
      {
        goto LABEL_54;
      }

      sub_1802E86D0(v11, 1, v7);
      v48 = (v14 + 16 * v11);
      v50 = *v48;
      v49 = v48[1];
      v24 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v24)
      {
        goto LABEL_55;
      }

      if (v47 < v51)
      {
        --v11;
      }

      v6 = v8;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  return 1;
}

uint64_t UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a1);
  *a1 = v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  *a1 = v8;
  if (Array._getCount()() >= 2)
  {
    do
    {
      v10 = Array._getCount()();
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = v10 - 2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_14;
      }

      sub_1802E86D0(v10 - 2, 1, v8);
      v13 = v8 + 32;
      v14 = *(v8 + 32 + 16 * v12);
      sub_1802E86D0(v11, 1, v8);
      if (!*v24)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v15 = *(v13 + 16 * v11);
      v16 = *(v13 + 16 * v11 + 8);
      v17 = *(*(*(a5 + 16) - 8) + 72);
      _merge<A>(low:mid:high:buffer:by:)((*v24 + v17 * v14), *v24 + v17 * v15, *v24 + v17 * v16, a2, a3, a4, *(a5 + 16));
      if (v5)
      {
        break;
      }

      if (v16 < v14)
      {
        goto LABEL_15;
      }

      v18 = swift_isUniquelyReferenced_nonNull_native(v8);
      *a1 = v8;
      if (!v18)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        *a1 = v8;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v11 - 1);
      v19 = v8 + 16 * v12;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      *a1 = v8;
      specialized Array.remove(at:)(v11);
      v8 = *a1;
    }

    while (Array._getCount()() > 1);
  }

  return 1;
}

void closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void (**a1)(char *, char *, uint64_t), uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v105 = a4;
  v106 = a5;
  v99 = a1;
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v97 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = &_swiftEmptyArrayStorage;
  v16 = *(v11 + 8);
  v104 = v14;
  if (v16 >= 1)
  {
    v95 = v13;
    v17 = type metadata accessor for UnsafeMutableBufferPointer(0, v14, v11, v12);
    v18 = 0;
    v101 = v10;
    v102 = a3;
    v96 = v10 + 32;
    v98 = v17;
    while (1)
    {
      v109 = *a3;
      v110 = v16;
      v108 = v18;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v17, v11);
      v20 = _findNextRun<A>(in:from:by:)(&v111, &v109, &v108, v105, v106, v17, WitnessTable);
      if (v8)
      {
        goto LABEL_79;
      }

      v22 = v111;
      if (v20)
      {
        if (v111 < v18)
        {
          goto LABEL_80;
        }

        if (v18 < v111)
        {
          v23 = v111;
          v24 = v18;
          v107 = 0;
          do
          {
            v25 = v23 - 1;
            if (v24 != v23 - 1)
            {
              v26 = a3[1];
              v27 = v24 < v26 && v23 <= v26;
              if (!v27)
              {
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v100 = v22;
              v28 = *a3;
              if (!*a3)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v29 = *(v101 + 72);
              v30 = (v28 + v29 * v24);
              v31 = (v28 + v29 * v25);
              v32 = v104;
              v103 = *(v101 + 32);
              v103(v97, v30, v104);
              if (v29 * v24 < v29 * v25 || v30 >= &v31[v29])
              {
                swift_arrayInitWithTakeFrontToBack(v30, v31, 1, v32);
              }

              else if (v29 * v24 != v29 * v25)
              {
                swift_arrayInitWithTakeBackToFront(v30, v31, 1, v32);
              }

              v103(v31, v97, v32);
              a3 = v102;
              v22 = v100;
            }

            ++v24;
            v23 = v25;
            v27 = v24 < v25;
            v8 = v107;
          }

          while (v27);
        }
      }

      v34 = a3[1];
      if (v22 < v34)
      {
        if (__OFSUB__(v22, v18))
        {
          goto LABEL_95;
        }

        if (v22 - v18 < v95)
        {
          if (__OFADD__(v18, v95))
          {
            goto LABEL_96;
          }

          if (v18 + v95 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v18 + v95;
          }

          if (v35 < v18)
          {
LABEL_80:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v109 = v18;
          v110 = v35;
          v111 = v22;
          v36 = v98;
          v37 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v98, v21);
          v39 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v36, v38);
          MutableCollection<>._insertionSort(within:sortedEnd:by:)(&v109, &v111, v105, v106, v36, v37, v39);
          if (v8)
          {
            goto LABEL_79;
          }

          v22 = v35;
        }
      }

      if (v22 < v18)
      {
        goto LABEL_80;
      }

      v109 = v18;
      v110 = v22;
      v100 = v22;
      Array.append(_:)(&v109, &unk_1EEEBBEA8);
      v103 = *v99;
      if (!v103)
      {
        goto LABEL_97;
      }

      v40 = v112;
      if (v112[2] <= 1)
      {
        goto LABEL_3;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v112))
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      }

      v112 = v40;
      v41 = v40[2];
      while (1)
      {
        v42 = v41 - 1;
        if (v41 < 4)
        {
          break;
        }

        sub_1802E86D0(v41 - 4, 1, v40);
        v44 = v40 + 4;
        v45 = &v40[2 * v41 - 4];
        v47 = *v45;
        v46 = v45[1];
        v48 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
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
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v107 = v8;
        v43 = v41 - 3;
        sub_1802E86D0(v41 - 3, 1, v40);
        v49 = &v44[2 * v41 - 6];
        v50 = v49[1];
        v51 = v50 - *v49;
        if (__OFSUB__(v50, *v49))
        {
          goto LABEL_82;
        }

        sub_1802E86D0(v41 - 2, 1, v40);
        v52 = &v40[2 * v41];
        v54 = *v52;
        v53 = v52[1];
        v55 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v55)
        {
          goto LABEL_84;
        }

        v55 = __OFADD__(v51, v56);
        v57 = v51 + v56;
        if (v55)
        {
          goto LABEL_87;
        }

        if (v57 >= v48)
        {
          sub_1802E86D0(v41 - 3, 1, v40);
          v81 = v49[1];
          v82 = v81 - *v49;
          if (__OFSUB__(v81, *v49))
          {
            goto LABEL_91;
          }

          sub_1802E86D0(v41 - 1, 1, v40);
          v83 = &v44[2 * v42];
          v85 = *v83;
          v84 = v83[1];
          v55 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v55)
          {
            goto LABEL_92;
          }

          if (v82 < v86)
          {
            v42 = v41 - 2;
          }

          v8 = v107;
          goto LABEL_70;
        }

LABEL_50:
        sub_1802E86D0(v43, 1, v40);
        v58 = &v40[2 * v43 + 4];
        v59 = v58[1];
        v60 = v59 - *v58;
        if (__OFSUB__(v59, *v58))
        {
          goto LABEL_83;
        }

        v61 = v41 - 2;
        sub_1802E86D0(v41 - 2, 1, v40);
        v62 = &v40[2 * v41];
        v64 = *v62;
        v63 = v62[1];
        v65 = v63 - v64;
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_86;
        }

        sub_1802E86D0(v41 - 1, 1, v40);
        v66 = &v40[2 * v42 + 4];
        v67 = v66[1];
        v68 = v67 - *v66;
        if (__OFSUB__(v67, *v66))
        {
          goto LABEL_89;
        }

        v55 = __OFADD__(v65, v68);
        v69 = v65 + v68;
        if (v55)
        {
          goto LABEL_90;
        }

        v27 = v69 < v60;
        v8 = v107;
        if (v27)
        {
          goto LABEL_61;
        }

        sub_1802E86D0(v43, 1, v40);
        v70 = v58[1];
        v71 = v70 - *v58;
        if (__OFSUB__(v70, *v58))
        {
          goto LABEL_93;
        }

        sub_1802E86D0(v41 - 1, 1, v40);
        v72 = v66[1];
        if (__OFSUB__(v72, *v66))
        {
          goto LABEL_94;
        }

        if (v71 < v72 - *v66)
        {
          v42 = v41 - 2;
        }

LABEL_70:
        sub_1802E86D0(v42 - 1, 1, v40);
        v87 = v40 + 4;
        v88 = v40[2 * v42 + 2];
        sub_1802E86D0(v42, 1, v40);
        a3 = v102;
        if (!*v102)
        {
          goto LABEL_97;
        }

        v89 = v87[2 * v42 + 1];
        _merge<A>(low:mid:high:buffer:by:)((*v102 + *(v101 + 72) * v88), *v102 + *(v101 + 72) * v87[2 * v42], *v102 + *(v101 + 72) * v89, v103, v105, v106, v104);
        if (v8)
        {
          goto LABEL_79;
        }

        if (v89 < v88)
        {
          goto LABEL_80;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v40);
        v112 = v40;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          v112 = v40;
        }

        ContiguousArray._checkSubscript_mutating(_:)(v42 - 1);
        v91 = &v40[2 * v42 - 2];
        v91[4] = v88;
        v91[5] = v89;
        v112 = v40;
        specialized Array.remove(at:)(v42);
        v40 = v112;
        v41 = v112[2];
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      if (v41 == 3)
      {
        break;
      }

      v61 = v41 - 2;
LABEL_61:
      sub_1802E86D0(v61, 1, v40);
      v73 = &v40[2 * v41];
      v75 = *v73;
      v74 = v73[1];
      v76 = v74 - v75;
      if (__OFSUB__(v74, v75))
      {
        goto LABEL_85;
      }

      v77 = &v40[2 * v42];
      sub_1802E86D0(v41 - 1, 1, v40);
      v78 = v77[4];
      v79 = v77[5];
      v55 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v55)
      {
        goto LABEL_88;
      }

      if (v80 >= v76)
      {
        goto LABEL_70;
      }

      a3 = v102;
LABEL_3:
      v16 = a3[1];
      v18 = v100;
      v17 = v98;
      if (v100 >= v16)
      {
        goto LABEL_77;
      }
    }

    v107 = v8;
    v43 = 0;
    goto LABEL_50;
  }

LABEL_77:
  v92 = *v99;
  if (!*v99)
  {
    goto LABEL_97;
  }

  v93 = type metadata accessor for UnsafeMutableBufferPointer(0, v104, v11, v12);
  UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v112, v92, v105, v106, v93);
LABEL_79:
  v112;
}

uint64_t UnsafeRawBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    if (a4 - a3 < a2)
    {
      goto LABEL_12;
    }
  }

  else if (a2 >= 1)
  {
    goto LABEL_12;
  }

  result = a3 ? a3 + a1 : 0;
  v6 = a2 - a1;
  if (v6 < 0 || v6 && !result)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeRawBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (a3)
  {
    result = a3 + a1;
  }

  else
  {
    result = 0;
  }

  if (v4 < 0 || a2 != a1 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 < result || a4 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else if (a3)
  {
    result += a3;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = a3 + a1;
  }

  else
  {
    result = 0;
  }

  v5 = a2 - a1;
  if (v5 < 0 || v5 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void _ss10OutputSpanVsRi_zrlEfD(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 1)
  {
    if ((*(*(a4 - 1) + 80) & result) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    swift_arrayDestroy(result, a3, a4);
  }
}

uint64_t UnsafeMutableRawPointer.initializeMemory<A>(as:repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = a3;
  if (a3)
  {
    v9 = *(a5 - 8);
    v10 = *(v9 + 16);
    v11 = a4;
    do
    {
      v10(v11, a2, a5);
      v11 += *(v9 + 72);
      --v6;
    }

    while (v6);
  }

  return a4;
}

unint64_t StaticString.unicodeScalar.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (HIDWORD(result))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result >> 16 > 0x10 || (result & 0xFFFFF800) == 0xD800)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t StaticString.utf8CodeUnitCount.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t protocol witness for _ExpressibleByBuiltinUnicodeScalarLiteral.init(_builtinUnicodeScalarLiteral:) in conformance StaticString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 0x7F)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  return result;
}

__n128 _ss12StaticStringVs43ExpressibleByExtendedGraphemeClusterLiteralssACP08extendedfgH0x0efgH4TypeQz_tcfCTW_0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t _ss12StaticStringVs51_ExpressibleByBuiltinExtendedGraphemeClusterLiteralssACP08_builtinfghI017utf8CodeUnitCount7isASCIIxBp_BwBi1_tcfCTW_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t StaticString.description.getter(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 >> 16 <= 0x10 && (a1 & 0xFFFFF800) != 0xD800)
    {
      return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1);
    }

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = _allASCII(_:)(a1, a2);
  return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v5, v6);
}

uint64_t StaticString.debugDescription.getter(unint64_t a1, uint64_t a2, char a3)
{
  v3 = StaticString.description.getter(a1, a2, a3);
  v236.value._countAndFlagsBits = 34;
  v236.value._object = 0xE100000000000000;
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v227 = v4;
  v228 = v5;
  v229 = v3;
  if (!v5)
  {
LABEL_224:
    v234 = 34;
    v235 = 0xE100000000000000;
    countAndFlagsBits = v236.value._countAndFlagsBits;
    object = v236.value._object;
    v177 = (v236.value._object >> 56) & 0xF;
    if ((v236.value._object & 0x2000000000000000) == 0)
    {
      v177 = v236.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v177)
    {
LABEL_276:
      v227;
      goto LABEL_279;
    }

    while (1)
    {
      v26 = v234;
      v9 = v235;
      v183 = specialized Collection.first.getter(v234, v235);
      if ((v183 & 0x100000000) != 0)
      {
        goto LABEL_284;
      }

      v232 = countAndFlagsBits;
      v233 = object;
      v236.value._countAndFlagsBits = 0;
      v236.value._object = 0xE000000000000000;
      v184 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v183);
      v186 = v185;
      _StringGuts.append(_:)(v184, v185, v187, v188, v189, v190, v191, v192, v193, v194);
      v186;
      v21 = v232;
      v20 = v233;
      v233;
      0xE000000000000000;
      v236.value._countAndFlagsBits = v21;
      v236.value._object = v20;
      v195 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v195 = v21;
      }

      v196 = 7;
      if (((v20 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
      {
        v196 = 11;
      }

      v197._rawBits = v196 | (v195 << 16);
      v198._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v197)._rawBits;
      rawBits = v198._rawBits;
      if (!(v198._rawBits >> 14))
      {
        break;
      }

      v200 = v198._rawBits >> 16;
      if (v198._rawBits >= 0x20000)
      {
        if ((v20 & 0x1000000000000000) == 0)
        {
          if ((v20 & 0x2000000000000000) != 0)
          {
            v232 = v21;
            v233 = (v20 & 0xFFFFFFFFFFFFFFLL);
            v202 = *&v231[v200];
          }

          else
          {
            if ((v21 & 0x1000000000000000) != 0)
            {
              v201 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v201 = _StringObject.sharedUTF8.getter(v21, v20);
              if (!v201)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v202 = *&v201[v200 - 2];
          }

          if (v202 != 2573 && (v202 & 0x8080) == 0)
          {
            v200 = 1;
LABEL_251:
            v204 = v200 << 8;
            goto LABEL_258;
          }
        }

        v200 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(rawBits >> 16);
      }

      if (v200 >= 64)
      {
        v204 = 63;
      }

      else
      {
        v204 = v200 << 8;
      }

LABEL_258:
      v20;
      v205._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v197)._rawBits;
      if (!(v205._rawBits >> 14))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v206 = v205._rawBits;
      v20;
      if ((v20 & 0x1000000000000000) != 0)
      {
        v211 = String.UnicodeScalarView._foreignIndex(before:)(v206)._rawBits;
        v20;
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v208 = 0;
          v232 = v21;
          v233 = (v20 & 0xFFFFFFFFFFFFFFLL);
          do
          {
            v210 = v231[(v206 >> 16) + 1 + v208--] & 0xC0;
          }

          while (v210 == 128);
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v207 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v207 = _StringObject.sharedUTF8.getter(v21, v20);
          }

          v208 = 0;
          do
          {
            v209 = v207[(v206 >> 16) - 1 + v208--] & 0xC0;
          }

          while (v209 == 128);
        }

        v20;
        v211 = (v206 - -65536 * v208) & 0xFFFFFFFFFFFF0000;
      }

      if (((rawBits - (v200 << 16)) & 0xFFFFFFFFFFFF0000 | v204) >> 14 >= v211 >> 14)
      {
        goto LABEL_278;
      }

      v232 = v21;
      v233 = v20;
      specialized RangeReplaceableCollection<>.removeLast()();
      v213 = v232;
      v212 = v233;
      v233;
      0xE000000000000000;
      v232 = v213;
      v233 = v212;
      v212;
      v214 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v236.value._countAndFlagsBits = v232;
      v236.value._object = v233;
      v215 = Unicode.Scalar._escaped(asASCII:)(1);
      v178 = v215.value._object;
      if (v215.value._object)
      {
        v179 = v215.value._countAndFlagsBits;
      }

      else
      {
        v179 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v214);
      }

      v216 = v178;
      v180._rawBits = 15;
      v181._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v180, v181, v179, v216);
      v216;
      countAndFlagsBits = v236.value._countAndFlagsBits;
      object = v236.value._object;
      v182 = (v236.value._object >> 56) & 0xF;
      if ((v236.value._object & 0x2000000000000000) == 0)
      {
        v182 = v236.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v182)
      {
        goto LABEL_276;
      }
    }

    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v200 = 0;
    goto LABEL_251;
  }

  v6 = v4;
  v222 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v223 = v4 & 0xFFFFFFFFFFFFFFLL;
  v4;
  v8 = 0;
  v9 = -255;
  v10 = 1;
  while (1)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v16 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8 << 16));
      scalarLength = v16.scalarLength;
      value = v16._0._value;
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v234 = v229;
        v235 = v223;
        v13 = &v234;
      }

      else
      {
        v13 = v222;
        if ((v229 & 0x1000000000000000) == 0)
        {
          v13 = _StringObject.sharedUTF8.getter(v229, v6);
        }
      }

      value = _decodeScalar(_:startingAt:)(v13, v7, v8);
    }

    v17 = value;
    v8 += scalarLength;
    v18 = Unicode.Scalar._escaped(asASCII:)(0);
    v230 = v8;
    if (!v18.value._object)
    {
      v39 = v236.value._countAndFlagsBits;
      v38 = v236.value._object;
      if ((v10 & 1) == 0)
      {
        goto LABEL_47;
      }

      LODWORD(v234) = 0;
      v40 = specialized BidirectionalCollection.last.getter(v236.value._countAndFlagsBits, v236.value._object);
      if ((v40 & 0x100000000) != 0)
      {
LABEL_284:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (_GraphemeBreakingState.shouldBreak(between:and:)(v40, v17))
      {
LABEL_47:
        v234 = v39;
        v235 = v38;
        v236.value._countAndFlagsBits = 0;
        v236.value._object = 0xE000000000000000;
        v42 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v17);
        v43 = v41;
        v44 = HIBYTE(v38) & 0xF;
        v45 = HIBYTE(v41) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v226 = (v41 & 0x2000000000000000) == 0;
          v46 = v42 & 0xFFFFFFFFFFFFLL;
          v47 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) != 0)
          {
LABEL_68:
            v224 = v46;
            if ((v41 & 0x1000000000000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_141:
            swift_bridgeObjectRetain_n(v41, 2);
            v115._rawBits = 1;
            v116._rawBits = (v47 << 16) | 1;
            v117._rawBits = _StringGuts.validateScalarRange(_:)(v115, v116, v42, v43)._rawBits;
            if (v117._rawBits < 0x10000)
            {
              v117._rawBits |= 3;
            }

            v62 = String.UTF8View.distance(from:to:)(v117, v118);
            v43;
            if ((v38 & 0x1000000000000000) != 0)
            {
              goto LABEL_144;
            }

LABEL_70:
            if ((v38 & 0x2000000000000000) != 0)
            {
              v63 = HIBYTE(v38) & 0xF;
            }

            else
            {
              v63 = *&v39 & 0xFFFFFFFFFFFFLL;
            }

            v64 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
LABEL_280:
              __break(1u);
LABEL_281:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            goto LABEL_74;
          }

LABEL_67:
          v47 = v46;
          goto LABEL_68;
        }

        if ((v41 & 0x2000000000000000) == 0)
        {
          v46 = v42 & 0xFFFFFFFFFFFFLL;
          v226 = 1;
          goto LABEL_67;
        }

        v114 = v45 + v44;
        if (v45 + v44 >= 0x10)
        {
          v226 = 0;
          v47 = HIBYTE(v41) & 0xF;
          v224 = v42 & 0xFFFFFFFFFFFFLL;
          if ((v41 & 0x1000000000000000) != 0)
          {
            goto LABEL_141;
          }

LABEL_69:
          v41;
          v62 = v47;
          if ((v38 & 0x1000000000000000) == 0)
          {
            goto LABEL_70;
          }

LABEL_144:
          v119 = String.UTF8View._foreignCount()();
          v64 = v119 + v62;
          if (__OFADD__(v119, v62))
          {
            goto LABEL_280;
          }

LABEL_74:
          v65 = *&v39 & ~v38;
          if ((v65 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
          {
            v66 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
            if (v67)
            {
              goto LABEL_283;
            }

            if (v64 > 15)
            {
              goto LABEL_86;
            }

            if ((v38 & 0x2000000000000000) == 0)
            {
              if (v66 < v62)
              {
                v43;
LABEL_81:
                if ((v38 & 0x1000000000000000) != 0)
                {
                  v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v38);
                  v71 = v160;
                }

                else
                {
                  if ((*&v39 & 0x1000000000000000) != 0)
                  {
                    v69 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v70 = *&v39 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v69 = _StringObject.sharedUTF8.getter(*&v39, v38);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v69, v70, &v232, v68);
                  v39 = v232;
                  v71 = v233;
                }

LABEL_130:
                v43;
                v106._rawBits = 1;
                v107._rawBits = (v47 << 16) | 1;
                v108._rawBits = _StringGuts.validateScalarRange(_:)(v106, v107, v42, v43)._rawBits;
                if (v108._rawBits < 0x10000)
                {
                  v108._rawBits |= 3;
                }

                if (v108._rawBits >> 16 || v109._rawBits >> 16 != v47)
                {
                  v42 = specialized static String._copying(_:)(v108._rawBits, v109, v42, v43);
                  v111 = v122;
                  v43;
                  if ((v111 & 0x2000000000000000) == 0)
                  {
                    goto LABEL_135;
                  }
                }

                else
                {
                  v111 = v43;
                  if ((v43 & 0x2000000000000000) == 0)
                  {
LABEL_135:
                    if ((v111 & 0x1000000000000000) != 0)
                    {
                      v42 = _StringGuts._foreignConvertedToSmall()(v42, v111);
                      v174 = v173;
                      v111;
                      v111 = v174;
                    }

                    else
                    {
                      if ((v42 & 0x1000000000000000) != 0)
                      {
                        v112 = ((v111 & 0xFFFFFFFFFFFFFFFLL) + 32);
                        v113 = v42 & 0xFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v112 = _StringObject.sharedUTF8.getter(v42, v111);
                      }

                      closure #1 in _StringGuts._convertedToSmall()(v112, v113, &v232, v110);
                      v111;
                      v42 = v232;
                      v111 = v233;
                    }

LABEL_154:
                    v123 = HIBYTE(v71) & 0xF;
                    v124 = HIBYTE(v111) & 0xF;
                    v125 = v124 + v123;
                    if (v124 + v123 > 0xF)
                    {
LABEL_283:
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }

                    v43;
                    if (v124)
                    {
                      v126 = 0;
                      v127 = 0;
                      v128 = 8 * v123;
                      v129 = 8 * v124;
                      v6 = v227;
                      v8 = v230;
                      do
                      {
                        v130 = v111 >> (v126 & 0x38);
                        if (v127 < 8)
                        {
                          v130 = v42 >> v126;
                        }

                        v131 = (v130 << (v128 & 0x38)) | ((-255 << (v128 & 0x38)) - 1) & v71;
                        v132 = (v130 << v128) | ((-255 << v128) - 1) & *&v39;
                        if (v123 <= 7)
                        {
                          v39 = v132;
                        }

                        else
                        {
                          v71 = v131;
                        }

                        ++v123;
                        v128 += 8;
                        v126 += 8;
                        ++v127;
                      }

                      while (v129 != v126);
                    }

                    else
                    {
                      v6 = v227;
                      v8 = v230;
                    }

                    0xE000000000000000;
                    v38;
                    v134 = 0xE000000000000000;
                    if (*&v39 & 0x8080808080808080 | v71 & 0x80808080808080)
                    {
                      v134 = 0xA000000000000000;
                    }

                    v234 = v39;
                    v235 = v134 & 0xFF00000000000000 | (v125 << 56) | v71 & 0xFFFFFFFFFFFFFFLL;
LABEL_202:
                    v10 = 0;
                    v236.value._countAndFlagsBits = v234;
                    v236.value._object = v235;
                    goto LABEL_12;
                  }
                }

                v111;
                goto LABEL_154;
              }

LABEL_86:
              v72 = v65 & 0x2000000000000000;
              v73 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
              if ((v74 & 1) != 0 || v73 < v62)
              {
                if (v72)
                {
                  swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL);
                }

                v75 = 2 * _StringGuts.nativeCapacity.getter(*&v39, v38);
                if (v76)
                {
                  v75 = 0;
                }

                if (v75 > v64)
                {
                  v64 = v75;
                }

LABEL_94:
                _StringGuts.grow(_:)(v64);
              }

              else if (!v72 || !swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_94;
              }

              if ((v43 & 0x1000000000000000) != 0)
              {
                v43;
                _StringGuts._foreignAppendInPlace(_:)(v42, v43, 0, v47);
                0xE000000000000000;
                v120 = v43;
              }

              else
              {
                if (v226)
                {
                  if ((v42 & 0x1000000000000000) != 0)
                  {
                    v77 = (v43 & 0xFFFFFFFFFFFFFFFLL) + 32;
                    v78 = v224;
                    v79 = v224;
                  }

                  else
                  {
                    v168 = _StringObject.sharedUTF8.getter(v42, v43);
                    v78 = v224;
                    if (v169 < v224)
                    {
                      goto LABEL_281;
                    }

                    v77 = v168;
                    v79 = v169;
                  }

                  v6 = v227;
                  v43;
                  v80 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v78, v77, v79);
                  v81 = (v235 & 0xFFFFFFFFFFFFFFFLL);
                  __StringStorage.appendInPlace(_:isASCII:)(v80, v82, v42 < 0);
                  v234 = v81[3];
                  0xE000000000000000;
                  v43;
                  goto LABEL_201;
                }

                v43;
                v232 = v42;
                v233 = (v43 & 0xFFFFFFFFFFFFFFLL);
                v43;
                v144 = (v235 & 0xFFFFFFFFFFFFFFFLL);
                __StringStorage.appendInPlace(_:isASCII:)(&v232, v45, (v43 & 0x4000000000000000) != 0);
                v234 = v144[3];
                v120 = 0xE000000000000000;
              }

              v120;
              v6 = v227;
LABEL_201:
              v8 = v230;
              goto LABEL_202;
            }

            v43;
          }

          else
          {
            if (v64 > 15)
            {
              goto LABEL_86;
            }

            v43;
            if ((v38 & 0x2000000000000000) == 0)
            {
              goto LABEL_81;
            }
          }

          v71 = v38;
          goto LABEL_130;
        }

        v41;
        if (v45)
        {
          v135 = 0;
          v136 = 0;
          v137 = 8 * v44;
          v138 = v38;
          do
          {
            v139 = v43 >> (v135 & 0x38);
            if (v136 < 8)
            {
              v139 = v42 >> v135;
            }

            v140 = (v139 << (v137 & 0x38)) | ((-255 << (v137 & 0x38)) - 1) & v138;
            v141 = (v139 << v137) | ((-255 << v137) - 1) & *&v39;
            if (v44 <= 7)
            {
              v39 = v141;
            }

            else
            {
              v138 = v140;
            }

            ++v44;
            v137 += 8;
            v135 += 8;
            ++v136;
          }

          while (8 * v45 != v135);
        }

        else
        {
          v138 = v38;
        }

        v38;
        0xE000000000000000;
        v156 = 0xE000000000000000;
        if (*&v39 & 0x8080808080808080 | v138 & 0x80808080808080)
        {
          v156 = 0xA000000000000000;
        }

        v234 = v39;
        v235 = v156 & 0xFF00000000000000 | (v114 << 56) | v138 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_201;
      }

      v92 = Unicode.Scalar._escaped(asASCII:)(1);
      v91 = v92.value._object;
      if (v92.value._object)
      {
        v93 = v92.value._countAndFlagsBits;
      }

      else
      {
        v93 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v17);
      }

      v94 = v91;
      v142 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v142 = *&v39 & 0xFFFFFFFFFFFFLL;
      }

      if (!v142 && (*&v39 & ~v38 & 0x2000000000000000) == 0)
      {
        v38;
        v236.value._countAndFlagsBits = v93;
        v236.value._object = v94;
        goto LABEL_11;
      }

      if ((v38 & 0x2000000000000000) != 0)
      {
        if ((v91 & 0x2000000000000000) != 0)
        {
          v145 = specialized _SmallString.init(_:appending:)(*&v39, v38, v93, v91);
          if ((v147 & 1) == 0)
          {
            v157 = v145;
            v158 = v146;
            v38;
            v94;
            v236.value._countAndFlagsBits = v157;
            v236.value._object = v158;
            goto LABEL_11;
          }

          goto LABEL_194;
        }
      }

      else if ((v91 & 0x2000000000000000) != 0)
      {
LABEL_194:
        v143 = HIBYTE(v94) & 0xF;
        goto LABEL_195;
      }

      v143 = v93 & 0xFFFFFFFFFFFFLL;
LABEL_195:
      v94;
      _StringGuts.append(_:)(v93, v94, 0, v143, v148, v149, v150, v151, v152, v153, v154, v155);
      swift_bridgeObjectRelease_n(v94, 2);
      goto LABEL_11;
    }

    v19 = v18.value._countAndFlagsBits;
    v20 = v18.value._object;
    v22 = v236.value._countAndFlagsBits;
    v21 = v236.value._object;
    v23 = (v236.value._object >> 56) & 0xF;
    v24 = v236.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v236.value._object & 0x2000000000000000) != 0)
    {
      v25 = (v236.value._object >> 56) & 0xF;
    }

    else
    {
      v25 = v236.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 && (v236.value._countAndFlagsBits & ~v236.value._object & 0x2000000000000000) == 0)
    {
      v236.value._object;
      v236 = v18;
      goto LABEL_10;
    }

    v26 = (v18.value._object & 0x2000000000000000);
    v27 = (v18.value._object >> 56) & 0xF;
    if ((v18.value._object & 0x2000000000000000 & v236.value._object) == 0)
    {
      break;
    }

    v28 = v23 + v27;
    if (v23 + v27 > 0xF)
    {
      break;
    }

    if (v27)
    {
      v54 = 0;
      v55 = 0;
      v56 = 8 * v23;
      v57 = 8 * v27;
      v58 = v236.value._object;
      v6 = v227;
      do
      {
        v59 = v18.value._object >> (v54 & 0x38);
        if (v55 < 8)
        {
          v59 = v18.value._countAndFlagsBits >> v54;
        }

        v60 = (v59 << (v56 & 0x38)) | ((-255 << (v56 & 0x38)) - 1) & v58;
        v61 = (v59 << v56) | ((-255 << v56) - 1) & *&v22;
        if (v23 <= 7)
        {
          v22 = v61;
        }

        else
        {
          v58 = v60;
        }

        ++v23;
        v56 += 8;
        v54 += 8;
        ++v55;
      }

      while (v57 != v54);
    }

    else
    {
      v58 = v236.value._object;
      v6 = v227;
    }

    v236.value._object;
    v18.value._object;
    v121 = 0xE000000000000000;
    if (*&v22 & 0x8080808080808080 | v58 & 0x80808080808080)
    {
      v121 = 0xA000000000000000;
    }

    v12 = (v121 & 0xFF00000000000000 | (v28 << 56) | v58 & 0xFFFFFFFFFFFFFFLL);
LABEL_9:
    v236.value._countAndFlagsBits = v22;
    v236.value._object = v12;
LABEL_10:
    v8 = v230;
LABEL_11:
    v10 = 1;
LABEL_12:
    if (v8 >= v228)
    {
      v6;
      goto LABEL_224;
    }
  }

  if (v26)
  {
    v29 = (v18.value._object >> 56) & 0xF;
  }

  else
  {
    v29 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v225 = v29;
  if ((v18.value._object & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n(v18.value._object, 2);
    v161._rawBits = 1;
    v162._rawBits = (v29 << 16) | 1;
    v163._rawBits = _StringGuts.validateScalarRange(_:)(v161, v162, v18.value._countAndFlagsBits, v18.value._object)._rawBits;
    if (v163._rawBits < 0x10000)
    {
      v163._rawBits |= 3;
    }

    v29 = String.UTF8View.distance(from:to:)(v163, v164);
    v18.value._object;
    if ((v21 & 0x1000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18.value._object;
    if ((v21 & 0x1000000000000000) == 0)
    {
LABEL_33:
      v31 = __OFADD__(v25, v29);
      v32 = v25 + v29;
      if (v31)
      {
        goto LABEL_277;
      }

LABEL_34:
      if ((*&v22 & ~v21 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v21 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(*&v22, v21);
        if (v34)
        {
          goto LABEL_283;
        }

        if (v32 > 15)
        {
LABEL_51:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, v29);
          if ((v18.value._object & 0x1000000000000000) == 0)
          {
            v8 = v230;
            if (v26)
            {
              v234 = v18.value._countAndFlagsBits;
              v235 = v18.value._object & 0xFFFFFFFFFFFFFFLL;
              v18.value._object;
              v133 = v236.value._object & 0xFFFFFFFFFFFFFFFLL;
              __StringStorage.appendInPlace(_:isASCII:)(&v234, (v18.value._object >> 56) & 0xF, (v18.value._object & 0x4000000000000000) != 0);
              v18.value._object;
              v236.value._countAndFlagsBits = *(v133 + 24);
              v6 = v227;
            }

            else
            {
              if ((v18.value._countAndFlagsBits & 0x1000000000000000) != 0)
              {
                v48 = (v18.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
                v49 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                v50 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v166 = _StringObject.sharedUTF8.getter(v18.value._countAndFlagsBits, v18.value._object);
                v49 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                if (v167 < (v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL))
                {
                  goto LABEL_281;
                }

                v48 = v166;
                v50 = v167;
              }

              v6 = v227;
              v18.value._object;
              v51 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v49, v48, v50);
              v52 = v236.value._object & 0xFFFFFFFFFFFFFFFLL;
              __StringStorage.appendInPlace(_:isASCII:)(v51, v53, v18.value._countAndFlagsBits < 0);
              v236.value._countAndFlagsBits = *(v52 + 24);
              v18.value._object;
            }

            goto LABEL_11;
          }

          _StringGuts._foreignAppendInPlace(_:)(v18.value._countAndFlagsBits, v18.value._object, 0, v225);
          swift_bridgeObjectRelease_n(v18.value._object, 2);
          v6 = v227;
          goto LABEL_10;
        }

        if ((v21 & 0x2000000000000000) == 0)
        {
          if (v33 >= v29)
          {
            goto LABEL_51;
          }

          goto LABEL_40;
        }

LABEL_101:
        v37 = v21;
LABEL_102:
        v35 = v225;
      }

      else
      {
        if (v32 > 15)
        {
          goto LABEL_51;
        }

        if ((v21 & 0x2000000000000000) != 0)
        {
          goto LABEL_101;
        }

LABEL_40:
        if ((v21 & 0x1000000000000000) != 0)
        {
          v22 = _StringGuts._foreignConvertedToSmall()(*&v22, v21);
          v37 = v159;
          goto LABEL_102;
        }

        v35 = v225;
        if ((*&v22 & 0x1000000000000000) != 0)
        {
          v36 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v36 = _StringObject.sharedUTF8.getter(*&v22, v21);
          v24 = v170;
        }

        closure #1 in _StringGuts._convertedToSmall()(v36, v24, &v234, v30);
        v22 = v234;
        v37 = v235;
      }

      v18.value._object;
      v83._rawBits = 1;
      v84._rawBits = (v35 << 16) | 1;
      v85._rawBits = _StringGuts.validateScalarRange(_:)(v83, v84, v18.value._countAndFlagsBits, v18.value._object)._rawBits;
      if (v85._rawBits < 0x10000)
      {
        v85._rawBits |= 3;
      }

      if (v85._rawBits >> 16 || v86._rawBits >> 16 != v35)
      {
        v19 = specialized static String._copying(_:)(v85._rawBits, v86, v18.value._countAndFlagsBits, v18.value._object);
        v88 = v95;
        v18.value._object;
        if ((v88 & 0x2000000000000000) == 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v88 = v18.value._object;
        if ((v18.value._object & 0x2000000000000000) == 0)
        {
LABEL_108:
          if ((v88 & 0x1000000000000000) != 0)
          {
            v19 = _StringGuts._foreignConvertedToSmall()(*&v19, v88);
            v172 = v171;
            v88;
            v88 = v172;
          }

          else
          {
            if ((*&v19 & 0x1000000000000000) != 0)
            {
              v89 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v90 = *&v19 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v89 = _StringObject.sharedUTF8.getter(*&v19, v88);
            }

            closure #1 in _StringGuts._convertedToSmall()(v89, v90, &v234, v87);
            v88;
            v19 = v234;
            v88 = v235;
          }

          goto LABEL_118;
        }
      }

      v88;
LABEL_118:
      v96 = HIBYTE(v37) & 0xF;
      v97 = HIBYTE(v88) & 0xF;
      v98 = v97 + v96;
      if (v97 + v96 > 0xF)
      {
        goto LABEL_283;
      }

      v18.value._object;
      if (v97)
      {
        v99 = 0;
        v100 = 0;
        v101 = 8 * v96;
        v102 = 8 * v97;
        v6 = v227;
        do
        {
          v103 = v88 >> (v99 & 0x38);
          if (v100 < 8)
          {
            v103 = *&v19 >> v99;
          }

          v104 = (v103 << (v101 & 0x38)) | ((-255 << (v101 & 0x38)) - 1) & v37;
          v105 = (v103 << v101) | ((-255 << v101) - 1) & *&v22;
          if (v96 <= 7)
          {
            v22 = v105;
          }

          else
          {
            v37 = v104;
          }

          ++v96;
          v101 += 8;
          v99 += 8;
          ++v100;
        }

        while (v102 != v99);
      }

      else
      {
        v6 = v227;
      }

      v18.value._object;
      v21;
      v11 = 0xE000000000000000;
      if (*&v22 & 0x8080808080808080 | v37 & 0x80808080808080)
      {
        v11 = 0xA000000000000000;
      }

      v12 = (v11 & 0xFF00000000000000 | (v98 << 56) | v37 & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_9;
    }
  }

  v165 = String.UTF8View._foreignCount()();
  v32 = v165 + v29;
  if (!__OFADD__(v165, v29))
  {
    goto LABEL_34;
  }

LABEL_277:
  __break(1u);
LABEL_278:
  v227;
  v9;
  v217._rawBits = specialized Collection.dropFirst(_:)(1, *&v26, v9)._rawBits;
  v219 = v218;
  v232 = v21;
  v233 = v20;
  v236.value._countAndFlagsBits = 0;
  v236.value._object = 0xE000000000000000;
  specialized String.UnicodeScalarView.append<A>(contentsOf:)(v217, v237, v220, v218);
  0xE000000000000000;
  v219;
  countAndFlagsBits = v232;
LABEL_279:
  v235;
  return countAndFlagsBits;
}

void *StaticString.customMirror.getter@<X0>(unint64_t a1@<X0>, size_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 >> 16 <= 0x10 && (a1 & 0xFFFFF800) != 0xD800)
    {
      v12 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1);
      v10 = v13;
      goto LABEL_38;
    }

LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    goto LABEL_41;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = _allASCII(_:)(a1, a2);
  if (a2)
  {
    if (a2 <= 0xF)
    {
      v14 = a2 - 8;
      v15 = 8;
      if (a2 < 8)
      {
        v15 = a2;
      }

      v16 = v15 - 1;
      if (a2 < v15 - 1)
      {
        v16 = a2;
      }

      if (v15 == v16)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = *a1;
      if (a2 != 1)
      {
        v12 |= *(a1 + 1) << 8;
        if (a2 != 2)
        {
          v12 |= *(a1 + 2) << 16;
          if (a2 != 3)
          {
            v12 |= *(a1 + 3) << 24;
            if (a2 != 4)
            {
              v12 |= *(a1 + 4) << 32;
              if (a2 != 5)
              {
                v12 |= *(a1 + 5) << 40;
                if (a2 != 6)
                {
                  v12 |= *(a1 + 6) << 48;
                  if (a2 != 7)
                  {
                    v12 |= *(a1 + 7) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (a2 < 9)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = (a1 + 8);
        do
        {
          v20 = *v19++;
          v17 |= v20 << v18;
          v18 += 8;
          --v14;
        }

        while (v14);
      }

      v21 = 0xA000000000000000;
      if (((v17 | v12) & 0x8080808080808080) == 0)
      {
        v21 = 0xE000000000000000;
      }

      v10 = v21 | (a2 << 56) | v17;
    }

    else
    {
      v8 = a2 | 0xC000000000000000;
      if (!v7)
      {
        v8 = a2;
      }

      v9 = v8 | 0x3000000000000000;
      v10 = _allocateStringStorage(codeUnitCapacity:)(a2);
      *(v10 + 16) = v11;
      *(v10 + 24) = v9;
      if (v11 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v9 = *(v10 + 24);
      }

      *(v10 + 32 + (v9 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v10 + 32));
      v12 = *(v10 + 24);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0xE000000000000000;
  }

LABEL_38:
  v23[3] = &type metadata for String;
  v23[0] = v12;
  v23[1] = v10;
  return Mirror.init(reflecting:)(v23, a4);
}

uint64_t static Strideable.< infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = a3;
  v28 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v7 = v6;
  v8 = *(*(swift_getAssociatedConformanceWitness(a4, v5, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - v12;
  v14 = swift_checkMetadataState(0, v7);
  v15 = *(v14 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v27 - v21;
  (*(a4 + 40))(v28, v5, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v14, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v13, v14, v8);
  v24 = swift_getAssociatedConformanceWitness(a4, v5, v14, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v5) = (*(v24 + 40))(v22, v19, v14, v24);
  v25 = *(v15 + 8);
  v25(v19, v14);
  v25(v22, v14);
  return v5 & 1;
}

uint64_t static Strideable.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = a3;
  v28 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v7 = v6;
  v8 = *(*(swift_getAssociatedConformanceWitness(a4, v5, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - v12;
  v14 = swift_checkMetadataState(0, v7);
  v15 = *(v14 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v27 - v21;
  (*(a4 + 40))(v28, v5, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v14, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v13, v14, v8);
  v24 = swift_getAssociatedConformanceWitness(a4, v5, v14, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v5) = (*(*(v24 + 8) + 8))(v22, v19, v14);
  v25 = *(v15 + 8);
  v25(v19, v14);
  v25(v22, v14);
  return v5 & 1;
}

unint64_t _sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs7_Int128V_Tt2t4g5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6);
  v8 = a5 + (a6 >> 63);
  if (__OFADD__(a5, a6 >> 63))
  {
    goto LABEL_6;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v9 = v8 + v7;
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_6:
    v9 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    v6 = ~(a6 >> 63);
    v10 = 0x8000000000000000;
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:
  *a1 = v6;
  a1[1] = v9;
  return v10;
}

unint64_t _sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6Int128V_Tt2t4gq5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = 0x8000000000000000;
  if (__OFADD__(__CFADD__(a4, a6), a5) | __OFADD__(a6 >> 63, __CFADD__(a4, a6) + a5))
  {
    v7 = ~(a6 >> 63);
  }

  else
  {
    v6 = 0;
    v7 = a4 + a6;
  }

  if (__OFADD__(__CFADD__(a4, a6), a5) | __OFADD__(a6 >> 63, __CFADD__(a4, a6) + a5))
  {
    v8 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = (__PAIR128__(a5, a4) + a6) >> 64;
  }

  *a1 = v7;
  a1[1] = v8;
  return v6;
}

_DWORD *_sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs5Int32V_Tt2t4gq5(_DWORD *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 >= 0 != a5 < 0)
  {
    if (a5 > 0xFFFFFFFF7FFFFFFFLL && a5 < 0x80000000)
    {
      LODWORD(v5) = a4 + a5;
      v6 = __OFADD__(a4, a5);
      v7 = !v6;
      if (v6)
      {
        v8 = 0x8000000000000000;
      }

      else
      {
        v8 = 0;
      }

      if (!v7)
      {
        LODWORD(v5) = (a5 >> 63) ^ 0x7FFFFFFF;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (v5 > 0xFFFFFFFF7FFFFFFFLL && v5 < 0x80000000)
    {
      v8 = 0;
LABEL_17:
      *result = v5;
      return v8;
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

_WORD *_sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs5Int16V_Tt2t4gq5(_WORD *result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if (a4 >= 0 != a5 < 0)
  {
    if (a5 > -32769 && a5 < 0x8000)
    {
      LODWORD(v5) = a4 + a5;
      v6 = 0x8000000000000000;
      if (v5 == (a4 + a5))
      {
        v6 = 0;
      }

      else
      {
        LOWORD(v5) = (a5 >> 63) ^ 0x7FFF;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (v5 > -32769 && v5 < 0x8000)
    {
      v6 = 0;
LABEL_11:
      *result = v5;
      return v6;
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

_BYTE *_sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs4Int8V_Tt2t4gq5(_BYTE *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4 >= 0 != a5 < 0)
  {
    if (a5 > -129 && a5 < 128)
    {
      LODWORD(v5) = a4 + a5;
      v6 = 0x8000000000000000;
      if (v5 == (a4 + a5))
      {
        v6 = 0;
      }

      else
      {
        LOBYTE(v5) = (a5 >> 63) ^ 0x7F;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (v5 > -129 && v5 < 128)
    {
      v6 = 0;
LABEL_11:
      *result = v5;
      return v6;
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs8_UInt128V_Tt2t4g5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    v9 = -a6;
    if (__OFSUB__(0, a6))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v6 = a4 + a6;
      v10 = a4 < v9;
      v7 = v10 << 63 >> 63;
      v8 = (a5 == 0) & v10;
      goto LABEL_9;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x83uLL, 0);
  }

  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6);
  v8 = (a5 == -1) & v7;
LABEL_9:
  v11 = v7 + a5;
  v12 = 0x8000000000000000;
  if (v8)
  {
    v11 = ~a6 >> 63;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v6 = ~a6 >> 63;
  }

  *a1 = v6;
  a1[1] = v11;
  return v12;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs7UInt128V_Tt2t4gq5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    v9 = -a6;
    if (__OFSUB__(0, a6))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v7 = (__PAIR128__(a5, a4) - v9) >> 64;
      v6 = a4 + a6;
      v8 = __PAIR128__(a5, a4) < v9;
      goto LABEL_8;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, 0x8000000180671820, "Swift/UInt128.swift", 0x13uLL, 2, 0x9FuLL, 0);
  }

  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6) + a5;
  v8 = __CFADD__(__CFADD__(a4, a6), a5);
LABEL_8:
  v10 = 0x8000000000000000;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = a6 >> 63;
  if (v8)
  {
    v6 = ~v11;
    v7 = ~v11;
  }

  *a1 = v6;
  a1[1] = v7;
  return v10;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6UInt32V_Tt2t4gq5(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(a5))
    {
      v5 = a4 + a5;
      v6 = __CFADD__(a4, a5);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0x8000000000000000) != 0 || HIDWORD(v7))
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a4 + a5;
  v6 = a4 < v7;
LABEL_10:
  v8 = 0x8000000000000000;
  if (v6)
  {
    v5 = ~(a5 >> 63);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6UInt16V_Tt2t4gq5(_WORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (a5 < 0x10000)
    {
      v5 = a4 + a5;
      v6 = HIWORD(v5);
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0x8000000000000000) != 0 || v7 >= 0x10000)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a4 - v7;
  LOBYTE(v6) = (v5 & 0xFFFF0000) != 0;
LABEL_8:
  v8 = 0x8000000000000000;
  if (v6)
  {
    LOWORD(v5) = ~(a5 >> 63);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs5UInt8V_Tt2t4gq5(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (a5 < 0x100)
    {
      v5 = a4 + a5;
      v6 = v5 >> 8;
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0x8000000000000000) != 0 || v7 >= 0x100)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a4 - v7;
  LOBYTE(v6) = (v5 & 0xFFFFFF00) != 0;
LABEL_8:
  v8 = 0x8000000000000000;
  if (v6)
  {
    LOBYTE(v5) = ~(a5 >> 63);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6UInt64V_Tt2t4gq5Tm(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v5 = a4 + a5;
    v6 = __CFADD__(a4, a5);
    goto LABEL_8;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v5 = a4 + a5;
  v6 = a4 < v7;
LABEL_8:
  v8 = 0x8000000000000000;
  if (v6)
  {
    v5 = ~a5 >> 63;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

uint64_t static Strideable<>._step(after:from:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, Class *a7, int **a8, uint64_t a9)
{
  v46 = a6;
  v47 = a1;
  v44 = a5;
  v48 = a8;
  swift_getAssociatedTypeWitness(0, a8, a7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v14 = v13;
  v43 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v41 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v42 = &v41 - v19;
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, a7, "index value ", 0);
  v21 = v20;
  v22 = *(v20 - 8);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v41 - v29;
  *v30 = a2;
  v30[8] = a3 & 1;
  v31 = *(a7 - 1);
  (*(v31 + 16))(&v41 + *(v28 + 48) - v29, a4, a7);
  (*(v22 + 16))(v26, v30, v21);
  v32 = *v26;
  v33 = *(v21 + 48);
  v45 = v26[8];
  if (v45)
  {
    (*(v31 + 8))(&v26[v33], a7);
    (v48[6])(v46, a7);
    (*(v22 + 8))(v30, v21);
    return v32;
  }

  v34 = v48;
  (*(v22 + 8))(v30, v21);
  result = (*(v31 + 8))(&v26[v33], a7);
  if (!__OFADD__(v32++, 1))
  {
    v37 = v41;
    (*(a9 + 64))(v32, v14);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v34, a7, v14, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric);
    v39 = v42;
    (*(*(AssociatedConformanceWitness + 8) + 64))(v37, v46, v14);
    v40 = *(v43 + 8);
    v40(v37, v14);
    (v34[6])(v39, a7, v34);
    v40(v39, v14);
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t static Strideable<>._step(after:from:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v38 = a8;
  v35 = a5;
  v36 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v14, "index value ", 0);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v33 - v24;
  *v25 = a2;
  v25[8] = a3 & 1;
  (*(v12 + 16))(&v33 + *(v23 + 48) - v24, a4, a7);
  (*(v17 + 16))(v21, v25, v16);
  v26 = *v21;
  v27 = *(v16 + 48);
  if (v21[8])
  {
    (*(v12 + 8))(&v21[v27], a7);
    (*(*(v38 + 24) + 48))(v37, a7);
    (*(v17 + 8))(v25, v16);
    return v26;
  }

  v28 = v38;
  (*(v17 + 8))(v25, v16);
  v29 = *(v12 + 8);
  result = v29(&v21[v27], a7);
  if (!__OFADD__(v26++, 1))
  {
    v32 = v34;
    (*(v28 + 64))(v26, a7, v28);
    (*(v28 + 256))(v32, v37, a7, v28);
    v29(v32, a7);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t StrideToIterator.init(_start:end:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  v21 = *(a4 - 1);
  (*(v21 + 16))(a6, a1, a4);
  v13 = type metadata accessor for StrideToIterator(0, a4, a5, v12);
  v20 = *(v21 + 32);
  v20(a6 + v13[9], a2, a4);
  v14 = v13[10];
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v15 - 8) + 32))(a6 + v14, a3, v15);
  v16 = a6 + v13[11];
  *v16 = 0;
  *(v16 + 8) = 0;
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, a4, "index value ", 0);
  v18 = v16 + *(v17 + 48);

  return (v20)(v18, a1, a4);
}

uint64_t StrideTo.underestimatedCount.getter(char *a1)
{
  v1 = *(a1 + 2);
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v1, "index value ", 0);
  v4 = v3;
  v92 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v86 = &v74 - v6;
  v7 = *(a1 + 3);
  swift_getAssociatedTypeWitness(0, v7, v1, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v111 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v106 = &v74 - v11;
  v77 = v7;
  v109 = *(*(swift_getAssociatedConformanceWitness(v7, v1, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v109, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v105 = &v74 - v15;
  v110 = *(v1 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v85 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v74 - v20;
  v104 = type metadata accessor for Optional(0, v1, v22, v23);
  v89 = *(v104 - 8);
  v25 = MEMORY[0x1EEE9AC00](v104, v24);
  v78 = &v74 - v26;
  v107 = a1;
  v27 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StrideToIterator(0, v1, v7, v31);
  v75 = *(v32 - 1);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v74 - v34;
  (*(v27 + 16))(v30, v112, a1);
  v88 = &v35[v32[11]];
  v87 = v4;
  v36 = *(v4 + 48);
  v38 = v110 + 32;
  v37 = *(v110 + 32);
  v37(&v88[v36], v30, v1);
  v39 = v107;
  v40 = *(v107 + 9);
  v103 = v32[9];
  v83 = v38;
  v82 = v37;
  v37(&v35[v103], &v30[v40], v1);
  v41 = *(v39 + 10);
  v76 = v32;
  v43 = v111 + 32;
  v42 = *(v111 + 32);
  v111 = v32[10];
  v42(&v35[v111], &v30[v41], v9);
  v45 = v110 + 16;
  v44 = *(v110 + 16);
  v112 = v36;
  v107 = v35;
  v46 = v35;
  v47 = v88;
  v102 = v44;
  v44(v46, &v88[v36], v1);
  *v47 = 0;
  v47[8] = 0;
  v48 = v109;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, v9, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v99 = *(AssociatedConformanceWitness + 8);
  v100 = AssociatedConformanceWitness + 8;
  v49 = v78;
  v97 = v48[3];
  v98 = v48 + 3;
  v50 = v77;
  v51 = 0;
  v96 = swift_getAssociatedConformanceWitness(v77, v1, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  v94 = *(v96 + 40);
  v95 = v96 + 40;
  v93 = (v43 - 24);
  v81 = (v92 + 2);
  v80 = v50 + 56;
  v92 = (v45 - 8);
  v79 = (v45 + 24);
  v91 = (v45 + 40);
  v110 = v45;
  v90 = (v45 + 32);
  ++v89;
  v84 = v21;
  do
  {
    v102(v21, &v47[v112], v1);
    v52 = v105;
    v99(&qword_18071E0A8, 256);
    v53 = v106;
    (v97)(v52, v9, v109);
    v54 = v107;
    v55 = v94(&v107[v111], v53, v9, v96);
    (*v93)(v53, v9);
    v56 = *(v50 + 1);
    if (v55)
    {
      if (((*(v56 + 32))(v21, &v54[v103], v1) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (((*(v56 + 24))(v21, &v54[v103], v1) & 1) == 0)
    {
LABEL_4:
      v57 = v86;
      v58 = v87;
      (*v81)(v86, v47, v87);
      v59 = v9;
      v60 = v49;
      v61 = *(v58 + 48);
      v62 = v85;
      v63 = (*(v50 + 7))(v85, *v57, v57[8], &v57[v61], v54, &v54[v111], v1, v50);
      v64 = v50;
      v66 = v65;
      v67 = &v57[v61];
      v49 = v60;
      v9 = v59;
      v47 = v88;
      (*v92)(v67, v1);
      *v47 = v63;
      v68 = v66 & 1;
      v50 = v64;
      v47[8] = v68;
      v69 = v62;
      v21 = v84;
      (*v79)(&v47[v112], v69, v1);
      v82(v49, v21, v1);
      v70 = 0;
      goto LABEL_7;
    }

    (*v92)(v21, v1);
    v70 = 1;
LABEL_7:
    (*v91)(v49, v70, 1, v1);
    v71 = (*v90)(v49, 1, v1);
    (*v89)(v49, v104);
    if (v71 == 1)
    {
      goto LABEL_11;
    }
  }

  while (!__OFADD__(v51++, 1));
  __break(1u);
LABEL_11:
  (*(v75 + 8))(v107, v76);
  return v51;
}

uint64_t StrideTo._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v6 = v5;
  v7 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  v11 = *(*(swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v11, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - v15;
  v28 = *(a2 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v6, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
  v18 = v16;
  v19 = v29;
  (*(v11 + 24))(v18, v6, v11);
  v20 = swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v13) = (*(v20 + 16))(v19 + v28, v10, v6, v20);
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    v24 = *(v4 + 8);
    v25 = v30;
    if (((*(v24 + 16))(v30, v19, v3, v24) & 1) == 0 && ((*(v24 + 24))(v19 + *(a2 + 36), v25, v3, v24) & 1) == 0)
    {
      return 2;
    }

    return 0;
  }

  v21 = *(a2 + 36);
  v22 = *(v4 + 8);
  v23 = v30;
  if ((*(v22 + 24))(v30, v19 + v21, v3, v22) & 1) != 0 || ((*(v22 + 16))(v19, v23, v3, v22))
  {
    return 0;
  }

  return 2;
}

uint64_t StrideToIterator._current.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v5, "index value ", 0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v2 + *(a2 + 44), v7);
  v12 = *v10;
  (*(*(v5 - 1) + 32))(a1, &v10[*(v7 + 48)], v5);
  return v12;
}

uint64_t StrideToIterator._current.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v9, "index value ", 0);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v26 - v19;
  *v20 = a1;
  v20[8] = a2 & 1;
  v21 = *(v9 - 1);
  (*(v21 + 32))(&v26 + *(v18 + 48) - v19, a3, v9);
  (*(v12 + 32))(v16, v20, v11);
  v22 = v16[8];
  v23 = *(v11 + 48);
  v24 = v4 + *(a4 + 44);
  *v24 = *v16;
  *(v24 + 8) = v22;
  return (*(v21 + 40))(v24 + *(v11 + 48), &v16[v23], v9);
}

uint64_t StrideThroughIterator.init(_start:end:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for StrideThroughIterator(0, a4, a5, a4);
  *(a6 + v12[12]) = 0;
  v20 = *(a4 - 1);
  (*(v20 + 16))(a6, a1, a4);
  v19 = *(v20 + 32);
  v19(a6 + v12[9], a2, a4);
  v13 = v12[10];
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v14 - 8) + 32))(a6 + v13, a3, v14);
  v15 = a6 + v12[11];
  *v15 = 0;
  *(v15 + 8) = 0;
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, a4, "index value ", 0);
  v17 = v15 + *(v16 + 48);

  return (v19)(v17, a1, a4);
}

uint64_t specialized StrideThroughIterator.next()()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 40) = v5;
    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t StrideThroughIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v5, "index value ", 0);
  v7 = v6;
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v63 = &v57 - v9;
  v65 = *(a1 + 24);
  v10 = v65;
  swift_getAssociatedTypeWitness(0, v65, v5, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v12 = v11;
  v66 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v57 - v14;
  v16 = *(*(swift_getAssociatedConformanceWitness(v10, v5, v12, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v16, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = v17;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v57 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v60 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v57 - v27;
  v29 = v3 + *(a1 + 44);
  v62 = v7;
  v30 = *(v7 + 48);
  v68 = v31;
  v32 = *(v31 + 16);
  v64 = v29;
  v59 = v30;
  v32(&v57 - v27, v29 + v30, v5);
  v33 = *(a1 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v16, v12, v18, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v18, AssociatedConformanceWitness);
  (*(v16 + 24))(v22, v12, v16);
  v35 = v65;
  v36 = swift_getAssociatedConformanceWitness(v65, v5, v12, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  v37 = *(v36 + 40);
  v58 = v33;
  LOBYTE(v18) = v37(v3 + v33, v15, v12, v36);
  v38 = v15;
  v39 = v35;
  (*(v66 + 8))(v38, v12);
  v40 = *(a1 + 36);
  v41 = v35[1];
  if (v18)
  {
    v42 = v28;
    if (((*(v41 + 4))(v28, v3 + v40, v5, v41) & 1) == 0)
    {
LABEL_3:
      v43 = v62;
      v44 = v63;
      v45 = v64;
      (*(v61 + 16))(v63, v64, v62);
      v46 = *(v43 + 48);
      v47 = v60;
      v48 = (v39[7])(v60, *v44, v44[8], &v44[v46], v3, v3 + v58, v5, v39);
      v50 = v49;
      v51 = v68;
      (*(v68 + 8))(&v44[v46], v5);
      *v45 = v48;
      *(v45 + 8) = v50 & 1;
      (*(v51 + 40))(v45 + v59, v47, v5);
      v52 = v51;
      goto LABEL_4;
    }
  }

  else
  {
    v42 = v28;
    if (((*(v41 + 3))(v28, v3 + v40, v5, v41) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if ((*(*(v41 + 1) + 8))(v42, v3 + *(a1 + 36), v5) & 1) == 0 || (v55 = *(a1 + 48), (*(v3 + v55)) || (*(v64 + 8) & 1) == 0 && *v64 == 0x8000000000000000)
  {
    (*(v68 + 8))(v42, v5);
    v54 = 1;
    v53 = v67;
    return (*(v68 + 56))(v53, v54, 1, v5);
  }

  *(v3 + v55) = 1;
  v52 = v68;
LABEL_4:
  v53 = v67;
  (*(v52 + 32))(v67, v42, v5);
  v54 = 0;
  return (*(v68 + 56))(v53, v54, 1, v5);
}

uint64_t DefaultIndices._endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 40);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t StrideTo.init(_start:end:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v34 = a2;
  v31 = a6;
  v32 = a1;
  v35 = a8;
  v36 = a3;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v12 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v31 - v14;
  v16 = *(*(swift_getAssociatedConformanceWitness(a5, a4, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v16, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v16, v11, v18, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v18, AssociatedConformanceWitness);
  v23 = *(v16 + 24);
  v24 = v16;
  v25 = v36;
  v23(v21, v11, v24);
  v26 = swift_getAssociatedConformanceWitness(a5, a4, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v21) = (*(*(v26 + 8) + 8))(v25, v15, v11);
  (*(v12 + 8))(v15, v11);
  if (v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = *(*(a4 - 1) + 4);
  v28 = v35;
  v27(v35, v32, a4);
  v29 = v33(0, a4, a5);
  v27(v28 + *(v29 + 36), v34, a4);
  return (*(v12 + 32))(v28 + *(v29 + 40), v25, v11);
}

uint64_t StrideThrough.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for StrideThroughIterator(0, v7, v8, a3);
  v10 = a2 + v9[11];
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v7, "index value ", 0);
  v18 = *(v11 + 48);
  v12 = *(v7 - 1);
  v13 = *(v12 + 32);
  v13(v10 + v18, v4, v7);
  v13(a2 + v9[9], v4 + *(a1 + 36), v7);
  v14 = *(a1 + 40);
  v15 = v9[10];
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v16 - 8) + 32))(a2 + v15, v4 + v14, v16);
  *(a2 + v9[12]) = 0;
  result = (*(v12 + 16))(a2, v10 + v18, v7);
  *v10 = 0;
  *(v10 + 8) = 0;
  return result;
}

uint64_t StrideThrough.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Optional(0, v7, a3, a4);
  v43 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v38 - v11;
  v13 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 24);
  v39 = a1;
  v18 = type metadata accessor for StrideThroughIterator(0, v7, v42, v17);
  v38 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  (*(v13 + 16))(v16, v5, a1);
  v40 = &v21[v18[11]];
  v22 = v40;
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v7, "index value ", 0);
  v24 = *(v23 + 48);
  v41 = v24;
  v25 = *(v7 - 1);
  v26 = *(v25 + 32);
  v27 = &v22[v24];
  v28 = v16;
  v26(v27, v16, v7);
  v29 = v39;
  v26(&v21[v18[9]], &v28[*(v39 + 36)], v7);
  v30 = *(v29 + 40);
  v31 = v18[10];
  swift_getAssociatedTypeWitness(0, v42, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v32 - 8) + 32))(&v21[v31], &v28[v30], v32);
  v21[v18[12]] = 0;
  v33 = v40;
  (*(v25 + 16))(v21, &v40[v41], v7);
  v34 = 0;
  *v33 = 0;
  v33[8] = 0;
  v35 = (v43 + 8);
  while (1)
  {
    StrideThroughIterator.next()(v18, v12);
    if ((*(v25 + 48))(v12, 1, v7) == 1)
    {
      break;
    }

    (*v35)(v12, v8);
    if (__OFADD__(v34++, 1))
    {
      __break(1u);
      break;
    }
  }

  (*(v38 + 8))(v21, v18);
  (*v35)(v12, v8);
  return v34;
}

uint64_t StrideThrough._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v6 = v5;
  v7 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v11 = *(*(swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v11, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - v15;
  v32 = *(a2 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v6, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
  v18 = *(v11 + 24);
  v19 = v11;
  v20 = v33;
  v18(v16, v6, v19);
  v21 = swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v13) = (*(v21 + 16))(v20 + v32, v10, v6, v21);
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    v26 = a2;
    v27 = *(v4 + 8);
    v28 = *(v27 + 16);
    v29 = v34;
    if ((v28(v34, v20, v3, v27) & 1) == 0 && (v28(v20 + *(v26 + 36), v29, v3, v27) & 1) == 0)
    {
      return 2;
    }

    return 0;
  }

  v22 = *(a2 + 36);
  v23 = *(v4 + 8);
  v24 = *(v23 + 16);
  v25 = v34;
  if (v24(v34, v20 + v22, v3, v23) & 1) != 0 || (v24(v20, v25, v3, v23))
  {
    return 0;
  }

  return 2;
}

uint64_t StrideTo.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v6 = v4;
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - v13;
  (*(v9 + 16))(&v43 - v13, v6, a1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject(v15, 0xB0, 7uLL);
  *(v16 + 1) = xmmword_18071DD20;
  v16[4] = 1836020326;
  v16[5] = 0xE400000000000000;
  v17 = *(a1 + 16);
  v16[9] = v17;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16 + 6);
  v19 = *(*(v17 - 1) + 2);
  v19(boxed_opaque_existential_0Tm, v6, v17);
  v20 = v44;
  v16[10] = a2;
  v16[11] = v20;
  v21 = *(a1 + 36);
  v16[15] = v17;
  v22 = __swift_allocate_boxed_opaque_existential_0Tm(v16 + 12);
  v19(v22, v6 + v21, v17);
  v16[16] = 31074;
  v16[17] = 0xE200000000000000;
  v23 = *(a1 + 40);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), v17, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v25 = v24;
  v16[21] = v24;
  v26 = __swift_allocate_boxed_opaque_existential_0Tm(v16 + 18);
  (*(*(v25 - 8) + 16))(v26, v6 + v23, v25);
  v46[0] = 0;
  v46[1] = 0;
  v27 = static Mirror._superclassIterator<A>(_:_:)(v14, v46, a1);
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v31 = swift_allocObject(v30, 0x48, 7uLL);
  v31[6] = v16;
  v31[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v31[8] = 0;
  v32 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v33 = swift_allocObject(v32, 0x18, 7uLL);
  v33[2] = 0;
  v34 = v16[2];
  v35 = swift_allocObject(v32, 0x18, 7uLL);
  v35[2] = v34;
  v31[2] = v33;
  v31[3] = &protocol witness table for _IndexBox<A>;
  v31[4] = v35;
  v31[5] = &protocol witness table for _IndexBox<A>;
  v36 = v45;
  (*(v9 + 32))(v45, v14, a1);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v46, v36, a1, v37, 6uLL, v38, v39, v40, v43);
  v42 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  *a4 = a1;
  *(a4 + 8) = v31;
  *(a4 + 16) = 9;
  *(a4 + 24) = v27;
  *(a4 + 32) = v29;
  *(a4 + 40) = v42;
  return result;
}

uint64_t stride<A>(from:to:by:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v46 = a7;
  v47 = a8;
  v44 = a6;
  v50 = a5;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v49 = *(*(swift_getAssociatedConformanceWitness(a5, a4, v10, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v49, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v48 = &v44 - v15;
  v16 = swift_checkMetadataState(0, v11);
  v17 = *(v16 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v44 - v24;
  v26 = *(a4 - 1);
  v28 = MEMORY[0x1EEE9AC00](v23, v27);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v44 - v32;
  v45 = v26;
  v34 = *(v26 + 16);
  v34(&v44 - v32, v51, a4);
  v51 = v30;
  v34(v30, v52, a4);
  v35 = v50;
  (*(v17 + 16))(v25, v53, v16);
  v36 = v49;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v49, v16, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v38 = v48;
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
  (v36[3])(v38, v16, v36);
  v39 = swift_getAssociatedConformanceWitness(v35, a4, v16, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v13) = (*(*(v39 + 8) + 8))(v25, v21, v16);
  (*(v17 + 8))(v21, v16);
  if (v13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = *(v45 + 32);
  v41 = v47;
  v40(v47, v33, a4);
  v42 = v46(0, a4, v35);
  v40(v41 + *(v42 + 36), v51, a4);
  return (*(v17 + 32))(v41 + *(v42 + 40), v25, v16);
}

uint64_t _StringGuts.withFastUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
    v8[0] = a3;
    v8[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v8;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter(a3, a4);
  }

  return a1(v5, v6);
}

void _StringGutsSlice._normalizedHash(into:)(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if ((a3 & 0x1000000000000000) == 0 && (v5 & 0x4000000000000000) != 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v16[0] = a2;
      v16[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((a4 & 0x8000000000000000) == 0 && (HIBYTE(a3) & 0xF) >= a5 && a5 - a4 >= 0)
      {
        v10 = v16 + a4;
        v11 = v16 + a5;
        goto LABEL_16;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v7 = a2 & 0xFFFFFFFFFFFFLL;
        if (a4 < 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = a5;
        v15 = a4;
        v12 = _StringObject.sharedUTF8.getter(a2, a3);
        a5 = v14;
        a4 = v15;
        v6 = v12;
        v7 = v13;
        if (v15 < 0)
        {
          goto LABEL_20;
        }
      }

      if (v7 >= a5)
      {
        v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a4, a5, v6, v7);
        v10 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v8, v9);
LABEL_16:
        Hasher.combine(bytes:)(*&v10);
        goto LABEL_17;
      }
    }

LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized _StringGutsSlice._withNFCCodeUnits(_:)(a2, a3, a4, a5, a1);
LABEL_17:
  Hasher._combine(_:)(0xFFu);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Character(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Hasher.init(_seed:)(a1, v5);
  String.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void StringProtocol.hash(into:)(uint64_t a1, Class *a2)
{
  v4 = *(a2 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v37 - v10;
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = (&v37 - v14);
  if (v16 == &type metadata for String)
  {
    v27 = *v2;
    v28 = v2[1];
    if ((v28 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v29 = *v2 & 0xFFFFFFFFFFFFLL;
    }

    v30 = 0;
  }

  else
  {
    if (a2 != &type metadata for Substring)
    {
      v17 = v13;
      v18 = *(v4 + 16);
      v18(&v37 - v14, v2, a2);
      if (swift_dynamicCast(&v37, v15, a2, &type metadata for String, 6uLL, v19, v20, v21, v37))
      {
        v22 = 0;
        v23 = v37;
        v24 = v38;
        v25 = HIBYTE(v38) & 0xF;
        v26 = v37 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v18(v11, v2, a2);
        if (swift_dynamicCast(&v37, v11, a2, &type metadata for Substring, 6uLL, v31, v32, v33, v37))
        {
          v23 = v39;
          v24 = v40;
          v22 = v37 >> 16;
          v34 = v38 >> 16;
LABEL_19:
          _StringGutsSlice._normalizedHash(into:)(v17, v23, v24, v22, v34);
          v24;
          return;
        }

        v18(v7, v2, a2);
        v35 = String.init<A>(_:)(v7, a2);
        v24 = v36;
        v23 = v35;
        v22 = 0;
        v25 = HIBYTE(v24) & 0xF;
        v26 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if ((v24 & 0x2000000000000000) != 0)
      {
        v34 = v25;
      }

      else
      {
        v34 = v26;
      }

      goto LABEL_19;
    }

    v27 = v2[2];
    v28 = v2[3];
    v30 = *v2 >> 16;
    v29 = v2[1] >> 16;
  }

  _StringGutsSlice._normalizedHash(into:)(v13, v27, v28, v30, v29);
}

unsigned __int8 *specialized _StringGutsSlice.withFastUTF8<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a3 & 0x8000000000000000) == 0 && (HIBYTE(a2) & 0xF) >= a4)
    {
      v9 = a4 - a3;
      if (a4 - a3 >= 0)
      {
        v8 = v15 + a3;
        return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
      }
    }

    goto LABEL_13;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = a4;
    v14 = a3;
    v11 = _StringObject.sharedUTF8.getter(a1, a2);
    a4 = v13;
    a3 = v14;
    v6 = v11;
    v7 = v12;
    if (v14 < 0)
    {
      goto LABEL_13;
    }
  }

  if (v7 < a4)
  {
LABEL_13:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v6, v7);
  return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
}

uint64_t specialized _StringGutsSlice.withFastUTF8<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a3 & 0x8000000000000000) == 0 && (HIBYTE(a2) & 0xF) >= a4)
    {
      v9 = a4 - a3;
      if (a4 - a3 >= 0)
      {
        v8 = v15 + a3;
        return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
      }
    }

    goto LABEL_13;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = a4;
    v14 = a3;
    v11 = _StringObject.sharedUTF8.getter(a1, a2);
    a4 = v13;
    a3 = v14;
    v6 = v11;
    v7 = v12;
    if (v14 < 0)
    {
      goto LABEL_13;
    }
  }

  if (v7 < a4)
  {
LABEL_13:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v6, v7);
  return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
}

uint64_t specialized _StringGutsSlice.withFastUTF8<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a3;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = result & 0xFFFFFFFFFFFFLL;
      if (v8 < 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = _StringObject.sharedUTF8.getter(result, a2);
      v10 = v14;
      if (v8 < 0)
      {
        goto LABEL_21;
      }
    }

    if (v10 >= a4)
    {
      result = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, a4, v9, v10);
      if (result)
      {
        v12 = v11;
        if (v11)
        {
          v13 = result;
          do
          {
            result = a5(*v13);
            if (v5)
            {
              break;
            }

            ++v13;
            --v12;
          }

          while (v12);
        }
      }

      return result;
    }

LABEL_21:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v15[0] = result;
  v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a3 < 0 || (HIBYTE(a2) & 0xF) < a4 || a4 - a3 < 0)
  {
    goto LABEL_21;
  }

  if (a4 != a3)
  {
    do
    {
      result = a5(*(v15 + v8));
      if (v5)
      {
        break;
      }

      ++v8;
    }

    while (a4 != v8);
  }

  return result;
}

void specialized _StringGutsSlice._withNFCCodeUnits(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v11._rawBits = (a3 << 16) | 1;
  v12._rawBits = (a4 << 16) | 1;
  v13._rawBits = _StringGuts.validateScalarRange(_:)(v11, v12, a1, a2)._rawBits;
  if (v13._rawBits < 0x10000)
  {
    v13._rawBits |= 3;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  if ((v15 & 0x4000000000000000) != 0)
  {
    specialized Sequence.forEach(_:)(v13, v14._rawBits, a1, a2);
    return;
  }

  rawBits = v14._rawBits;
  v17 = v13._rawBits;
  v41 = 1;
  v40 = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v18 = v13._rawBits >> 14;
    v42 = v14._rawBits >> 14;
    if (v13._rawBits >> 14 == v14._rawBits >> 14)
    {
      return;
    }

    v30 = 4 << ((a1 & 0x800000000000000) != 0);
    v19 = v13._rawBits;
    v20 = v13._rawBits >> 14;
    while (1)
    {
      v21 = v19;
      if ((v19 & 0xC) == v30)
      {
        v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v19)._rawBits;
      }

      else if (v19)
      {
        if (v20 < v18 || (v21 = v19, v20 >= v42))
        {
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_22;
      }

      if (v21 >> 14 < v18 || v21 >> 14 >= v42)
      {
        goto LABEL_42;
      }

      if ((v21 & 1) == 0)
      {
        v21 = _StringGuts.scalarAlignSlow(_:)(v21)._rawBits;
      }

LABEL_22:
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v21 & 0xFFFFFFFFFFFF0000))._0._value;
      v23._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      v19 = String.UnicodeScalarView._foreignIndex(after:)(v23)._rawBits;
      if (!_isScalarNFCQC(_:_:)(value, &v40))
      {
        goto LABEL_37;
      }

      v20 = v19 >> 14;
      if (v19 >> 14 == v42)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v24 = a1 & 0xFFFFFFFFFFFFLL;
        }

        do
        {
          v25 = v17;
          if ((v17 & 0xC) == v30)
          {
            v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v25 >> 14 < v18 || v25 >> 14 >= v42)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = String.UTF8View._foreignSubscript(position:)(v25);
          if ((v17 & 0xC) == v30)
          {
            v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v24 <= v17 >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v17 = String.UTF8View._foreignIndex(after:)(v17)._rawBits;
          Hasher._combine(_:)(v26);
        }

        while (!v5 && v42 != v17 >> 14);
        return;
      }
    }
  }

  _StringGutsSlice._fastNFCCheck(_:_:)(&v41, &v40);
  if (v41)
  {
    specialized _StringGutsSlice.withFastUTF8<A>(_:)(a1, a2, a3, a4, a5);
  }

  else
  {
LABEL_37:
    LOBYTE(v31[0]) = 1;
    *&v33 = v17;
    *(&v33 + 1) = rawBits;
    *&v34 = a1;
    *(&v34 + 1) = a2;
    *&v35 = v17;
    WORD4(v35) = 1;
    BYTE10(v35) = 0;
    LOBYTE(v36) = 1;
    *(&v36 + 1) = &_swiftEmptyArrayStorage;
    LOBYTE(v37) = 0;
    *(&v37 + 4) = 0x1000000000000;
    *&v38 = &_swiftEmptyArrayStorage;
    BYTE8(v38) = 0;
    HIDWORD(v38) = 0;
    v39 = 1;
    v27 = a2;
    do
    {
      v29 = specialized Unicode._InternalNFC.Iterator.next()(v27, v28);
      if ((v29 & 0x100000000) != 0)
      {
        break;
      }

      v27 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v29, a5);
    }

    while (!v5);
    v31[4] = v37;
    v31[5] = v38;
    v32 = v39;
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    outlined destroy of _HasContiguousBytes?(v31, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
  }
}

Swift::String::Index specialized _StringGutsSlice._withNFCCodeUnits(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11._rawBits = (a3 << 16) | 1;
  v12._rawBits = (a4 << 16) | 1;
  result._rawBits = _StringGuts.validateScalarRange(_:)(v11, v12, a1, a2)._rawBits;
  if (result._rawBits < 0x10000)
  {
    result._rawBits |= 3;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  if ((v15 & 0x4000000000000000) != 0)
  {
    return specialized Sequence.forEach(_:)(result, v14._rawBits, a1, a2, a5);
  }

  rawBits = v14._rawBits;
  v17 = result._rawBits;
  v41 = 1;
  v40 = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v18 = result._rawBits >> 14;
    v42 = v14._rawBits >> 14;
    if (result._rawBits >> 14 == v14._rawBits >> 14)
    {
      return result;
    }

    v30 = 4 << ((a1 & 0x800000000000000) != 0);
    v19 = result._rawBits;
    v20 = result._rawBits >> 14;
    while (1)
    {
      v21 = v19;
      if ((v19 & 0xC) == v30)
      {
        v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v19)._rawBits;
      }

      else if (v19)
      {
        if (v20 < v18 || (v21 = v19, v20 >= v42))
        {
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_22;
      }

      if (v21 >> 14 < v18 || v21 >> 14 >= v42)
      {
        goto LABEL_42;
      }

      if ((v21 & 1) == 0)
      {
        v21 = _StringGuts.scalarAlignSlow(_:)(v21)._rawBits;
      }

LABEL_22:
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v21 & 0xFFFFFFFFFFFF0000))._0._value;
      v23._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      v19 = String.UnicodeScalarView._foreignIndex(after:)(v23)._rawBits;
      if (!_isScalarNFCQC(_:_:)(value, &v40))
      {
        goto LABEL_37;
      }

      v20 = v19 >> 14;
      if (v19 >> 14 == v42)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v24 = a1 & 0xFFFFFFFFFFFFLL;
        }

        do
        {
          v25 = v17;
          if ((v17 & 0xC) == v30)
          {
            v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v25 >> 14 < v18 || v25 >> 14 >= v42)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = String.UTF8View._foreignSubscript(position:)(v25);
          if ((v17 & 0xC) == v30)
          {
            v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v24 <= v17 >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v17 = String.UTF8View._foreignIndex(after:)(v17)._rawBits;
          result._rawBits = closure #1 in String._nfcCodeUnits.getter(v26, a5);
        }

        while (!v5 && v42 != v17 >> 14);
        return result;
      }
    }
  }

  _StringGutsSlice._fastNFCCheck(_:_:)(&v41, &v40);
  if (v41)
  {
    return specialized _StringGutsSlice.withFastUTF8<A>(_:)(a1, a2, a3, a4, a5);
  }

LABEL_37:
  LOBYTE(v31[0]) = 1;
  *&v33 = v17;
  *(&v33 + 1) = rawBits;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  *&v35 = v17;
  WORD4(v35) = 1;
  BYTE10(v35) = 0;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v37) = 0;
  *(&v37 + 4) = 0x1000000000000;
  *&v38 = &_swiftEmptyArrayStorage;
  BYTE8(v38) = 0;
  HIDWORD(v38) = 0;
  v39 = 1;
  v27 = a2;
  do
  {
    v29 = specialized Unicode._InternalNFC.Iterator.next()(v27, v28);
    if ((v29 & 0x100000000) != 0)
    {
      break;
    }

    v27 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v29, a5);
  }

  while (!v5);
  v31[4] = v37;
  v31[5] = v38;
  v32 = v39;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  return outlined destroy of _HasContiguousBytes?(v31, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
}

Swift::String::Index _StringGutsSlice._withNFCCodeUnits(_:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13._rawBits = (a5 << 16) | 1;
  v14._rawBits = (a6 << 16) | 1;
  result._rawBits = _StringGuts.validateScalarRange(_:)(v13, v14, a3, a4)._rawBits;
  if (result._rawBits < 0x10000)
  {
    result._rawBits |= 3;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = a3;
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    return specialized Sequence.forEach(_:)(result, v16._rawBits, a3, a4, a1, a2);
  }

  rawBits = v16._rawBits;
  v45._rawBits = result._rawBits;
  v44 = 1;
  v43 = 0;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v32 = v16._rawBits >> 14;
    v33 = v45._rawBits >> 14;
    if (v45._rawBits >> 14 == v16._rawBits >> 14)
    {
      return result;
    }

    v31 = 4 << ((a3 & 0x800000000000000) != 0);
    v19._rawBits = v45._rawBits;
    v20 = v45._rawBits >> 14;
    while (1)
    {
      if ((v19._rawBits & 0xC) == v31)
      {
        v21._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v19)._rawBits;
      }

      else
      {
        v21._rawBits = v19._rawBits;
        if (v19._rawBits)
        {
          if (v20 < v33 || (v21._rawBits = v19._rawBits, v20 >= v32))
          {
LABEL_42:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          goto LABEL_22;
        }
      }

      if (v21._rawBits >> 14 < v33 || v21._rawBits >> 14 >= v32)
      {
        goto LABEL_42;
      }

      if ((v21._rawBits & 1) == 0)
      {
        v21._rawBits = _StringGuts.scalarAlignSlow(_:)(v21)._rawBits;
      }

LABEL_22:
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v21._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
      v22._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      v19._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v22)._rawBits;
      if (!_isScalarNFCQC(_:_:)(value, &v43))
      {
        goto LABEL_37;
      }

      v20 = v19._rawBits >> 14;
      if (v19._rawBits >> 14 == v32)
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v23 = HIBYTE(a4) & 0xF;
        }

        else
        {
          v23 = a3 & 0xFFFFFFFFFFFFLL;
        }

        do
        {
          v24 = v45._rawBits;
          v25 = v45._rawBits & 0xC;
          if (v25 == v31)
          {
            v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(v45)._rawBits;
          }

          if (v24 >> 14 < v33 || v24 >> 14 >= v32)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = String.UTF8View._foreignSubscript(position:)(v24);
          if (v25 == v31)
          {
            v45._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v45)._rawBits;
          }

          if (v23 <= v45._rawBits >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v45._rawBits = String.UTF8View._foreignIndex(after:)(v45)._rawBits;
          result._rawBits = (a1)(v26);
        }

        while (!v6 && v32 != v45._rawBits >> 14);
        return result;
      }
    }
  }

  _StringGutsSlice._fastNFCCheck(_:_:)(&v44, &v43);
  if (v44)
  {
    return specialized _StringGutsSlice.withFastUTF8<A>(_:)(a3, a4, a5, a6, a1);
  }

LABEL_37:
  LOBYTE(v34[0]) = 1;
  *&v36 = v45;
  *(&v36 + 1) = rawBits;
  *&v37 = a3;
  *(&v37 + 1) = a4;
  *&v38 = v45;
  WORD4(v38) = 1;
  BYTE10(v38) = 0;
  LOBYTE(v39) = 1;
  *(&v39 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v40) = 0;
  *(&v40 + 4) = 0x1000000000000;
  *&v41 = &_swiftEmptyArrayStorage;
  BYTE8(v41) = 0;
  HIDWORD(v41) = 0;
  v42 = 1;
  v27 = a4;
  do
  {
    v29 = specialized Unicode._InternalNFC.Iterator.next()(v27, v28);
    if ((v29 & 0x100000000) != 0)
    {
      break;
    }

    v27 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v29, a1);
  }

  while (!v6);
  v34[4] = v40;
  v34[5] = v41;
  v35 = v42;
  v34[0] = v36;
  v34[1] = v37;
  v34[2] = v38;
  v34[3] = v39;
  return outlined destroy of _HasContiguousBytes?(v34, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
}

BOOL specialized == infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v25 = a3;
  v26 = a4;
  swift_getTupleTypeMetadata2(0, a5, &type metadata for Int, 0, 0);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v25 - v18;
  v20 = *(*(a5 - 1) + 16);
  v20(&v25 - v18, a1, a5);
  *&v19[*(v11 + 48)] = a2;
  v20(v16, v25, a5);
  v21 = v26;
  *&v16[*(v11 + 48)] = v26;
  v22 = (*(a6 + 8))(v19, v16, a5, a6);
  v23 = *(v12 + 8);
  if (v22)
  {
    v23(v19, v11);
    v23(v16, v11);
    return a2 == v21;
  }

  else
  {
    v23(v16, v11);
    v23(v19, v11);
    return 0;
  }
}

uint64_t == infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a2;
  v31 = a4;
  v32 = a7;
  v30 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - v19;
  v21 = *(*(a5 - 1) + 16);
  v21(&v27 - v19, a1, a5);
  v22 = *(*(a6 - 1) + 16);
  v27 = *(v12 + 48);
  v22(&v20[v27], v29, a6);
  v21(v17, v30, a5);
  v23 = *(v12 + 48);
  v22(&v17[v23], v31, a6);
  if ((*(v32 + 8))(v20, v17, a5))
  {
    v24 = (*(v28 + 8))(&v20[v27], &v17[v23], a6);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v13 + 8);
  v25(v17, v12);
  v25(v20, v12);
  return v24 & 1;
}

void *static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v6 + 16))(&v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = *(a3 + 8);
  v8 = (*(v7 + 56))(a2, v7);
  v26 = a2;
  v27 = a3;
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  if (_swift_isClassOrObjCExistentialType(v9, v9) && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
  {
    v22 = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOSS6result_Sb11repairsMadetIsgyrzr_AByxGSSAH_SbAItAGSSAH_SbAItRsd__AGRsd_0_r_0_lIetMggozo_Tpq5(partial apply for closure #1 in static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:), v25, v8, v10);
    goto LABEL_14;
  }

  _swift_isClassOrObjCExistentialType(v10, v10);
  v11 = *(v10 - 1);
  v12 = *(v11 + 80);
  if (_swift_isClassOrObjCExistentialType(v10, v10) && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
  {
    if (v8 < 0)
    {
      v24 = v8;
    }

    else
    {
      v24 = (v8 & 0xFFFFFFFFFFFFFF8);
    }

    v13 = [v24 count];
    if (v13 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    _swift_isClassOrObjCExistentialType(v10, v10);
    v13 = *(v8 + 16);
  }

  v14 = *(v11 + 72);
  v15 = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    __break(1u);
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 < 0)
  {
    goto LABEL_16;
  }

  v16 = (v12 + 32) & ~v12;
  v17 = validateUTF8(_:)((v8 + v16), v15);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v21 = repairUTF8(_:firstKnownBrokenRange:)((v8 + v16), v15, v18, v19);
  }

  else
  {
    v21 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v8 + v16, v15, v17 & 1, v20);
  }

  v22 = v21;
LABEL_14:
  v8;
  return v22;
}

uint64_t closure #1 in static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)@<X0>(Class *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v4 = UnsafeRawBufferPointer.init<A>(_:)();
  result = _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOSS6result_Sb11repairsMadetTt1gq50119_sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSSAB_SbACtSRy7ElementQzGXEfU_SSAB_z8ACtSRys5F7VGXEfU_Tf1cn_n(v4, v5);
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  return result;
}

uint64_t _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOSS6result_Sb11repairsMadetTt1gq50119_sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSSAB_SbACtSRy7ElementQzGXEfU_SSAB_z8ACtSRys5F7VGXEfU_Tf1cn_n(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
    if (a2 - a1 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = validateUTF8(_:)(a1, a2 - a1);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v3, v4 & 1, v7);
    }

    v11 = v5;
    v12 = v6;
    v13 = a1;
    v14 = v3;
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

uint64_t String.init<A, B>(decoding:as:)(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v10 != &type metadata for Unicode.UTF8)
  {
    v22 = static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, v10, 1, a3);
    if (!v24)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  (*(*(a5 + 8) + 72))(v27, partial apply for closure #1 in String.init<A, B>(decoding:as:));
  if (v27[1])
  {
    v13 = v27[0];
LABEL_11:
    (*(v8 + 8))(a1, a3);
    return v13;
  }

  (*(v8 + 16))(v12, a1, a3);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v25, v12, a3, v14, 6uLL, v15, v16, v17, v25[0]) & 1) == 0)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    outlined destroy of _HasContiguousBytes?(v25, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
LABEL_9:
    v22 = static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(a1, a3, a5);
LABEL_10:
    v13 = v22;
    goto LABEL_11;
  }

  _ss9CodingKey_pWOb_0(v25, v27);
  v18 = v28;
  v19 = v29;
  __swift_project_boxed_opaque_existential_0Tm(v27, v28);
  if (((*(v19 + 16))(v18, v19) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    goto LABEL_9;
  }

  v20 = v28;
  v21 = v29;
  __swift_project_boxed_opaque_existential_0Tm(v27, v28);
  (*(v21 + 8))(v25, closure #2 in String.init<A, B>(decoding:as:), 0, &type metadata for String, v20, v21);
  (*(v8 + 8))(a1, a3);
  v13 = *&v25[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v13;
}

uint64_t closure #1 in String.init<A, B>(decoding:as:)@<X0>(Class *a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v4 = UnsafeRawBufferPointer.init<A>(_:)();
  v6 = v4;
  if (v4)
  {
    v7 = v5 - v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = validateUTF8(_:)(v4, v7);
  if ((v8 & 0x8000000000000000) != 0)
  {
    result = repairUTF8(_:firstKnownBrokenRange:)(v6, v7, v9, v10);
  }

  else
  {
    result = specialized static String._uncheckedFromUTF8(_:isASCII:)(v6, v7, v8 & 1, v11);
  }

  *a3 = result;
  a3[1] = v13;
  return result;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = validateUTF8(_:)(a1, v5);
  if ((v6 & 0x8000000000000000) != 0)
  {
    result = repairUTF8(_:firstKnownBrokenRange:)(a1, v5, v7, v8);
  }

  else
  {
    result = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v5, v6 & 1, v9);
  }

  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t String.init<A, B>(validating:as:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, int **a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v12 = v11;
  v95 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v105 = (v85 - v14);
  v107 = type metadata accessor for Unicode.ParseResult(0, v12, v15, v16);
  MEMORY[0x1EEE9AC00](v107, v17);
  v106 = (v85 - v18);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v20 = v19;
  v91 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v94 = v85 - v23;
  v24 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v93 = v28;
  v97 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v92 = v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v85 - v33;
  v98 = a3;
  v109 = a3;
  v110 = a4;
  v96 = a5;
  v111 = a5;
  v112 = a6;
  (*(a6 + 72))(&v113, partial apply for closure #1 in String.init<A, B>(validating:as:), v108, &unk_1EEEBDDF0, a4, a6);
  v35 = v114;
  if (v114 == 1)
  {
    v90 = v12;
    v36 = (*(a6 + 40))(a4, a6);
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36 & ~(v36 >> 63), 0, &_swiftEmptyArrayStorage);
    v87 = v24;
    v38 = *(v24 + 16);
    v88 = a1;
    v38(v27, a1, a4);
    (*(a6 + 32))(a4, a6);
    v39 = *(v97 + 16);
    v40 = v92;
    v86 = v34;
    v41 = v93;
    v39(v92, v34, v93);
    v42 = v96;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v96, v98, v20, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
    v44 = *(AssociatedConformanceWitness + 24);
    v45 = v94;
    v104 = v20;
    v44(v20, AssociatedConformanceWitness);
    v103 = AssociatedConformanceWitness;
    v101 = *(AssociatedConformanceWitness + 32);
    v102 = AssociatedConformanceWitness + 32;
    v89 = a4;
    v46 = swift_getAssociatedConformanceWitness(a6, a4, v41, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v47 = v37;
    v100 = v46;
    v99 = (v95 + 32);
    v48 = (v95 + 8);
    v85[1] = v42 + 88;
    v49 = 1;
    v50 = v45;
    v51 = v41;
    v52 = v40;
LABEL_3:
    v95 = v47;
    v53 = v98;
    v54 = v90;
    while (1)
    {
      v55 = v106;
      v56 = v52;
      v57 = v51;
      v58 = v50;
      v59 = v104;
      v101();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v55, v107);
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v61 = v105;
      (*v99)(v105, v55, v54);
      if (v53 == &type metadata for Unicode.UTF16)
      {
        if (v54 != __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR))
        {
          goto LABEL_38;
        }

        v62 = *v61;
        v63 = *v61;
        if (v63 > 0x7F)
        {
          v66 = (*v61 & 0x3F) << 8;
          if (v63 < 0x800)
          {
            v67 = v63 >> 6;
            (*v48)(v61, v54);
            v68 = v66 + v67;
            goto LABEL_16;
          }

          if ((*v61 & 0xF800) == 0xD800)
          {
LABEL_25:
            v74 = (v96[11])(v61);
            (*v48)(v61, v54);
            if (v74 >= 0x80)
            {
              v75 = (v74 & 0x3F) << 8;
              if (v74 >= 0x800)
              {
                v76 = (v75 | (v74 >> 6) & 0x3F) << 8;
                v77 = (((v76 | (v74 >> 12) & 0x3F) << 8) | (v74 >> 18)) - 2122219023;
                v78 = (v74 >> 12) + v76 + 8487393;
                if (HIWORD(v74))
                {
                  v64 = v77;
                }

                else
                {
                  v64 = v78;
                }
              }

              else
              {
                v68 = (v74 >> 6) + v75;
LABEL_16:
                v64 = v68 + 33217;
              }
            }

            else
            {
              v64 = v74 + 1;
            }
          }

          else
          {
            v73 = (v66 | (v63 >> 6) & 0x3F) << 8;
            (*v48)(v61, v54);
            v64 = (v73 & 0xFFFFFFF0 | (v62 >> 12)) + 8487393;
          }

          v50 = v58;
          v51 = v57;
          v52 = v56;
LABEL_18:
          v47 = v95;
          v69 = *(v95 + 16);
          do
          {
            v70 = *(v47 + 24);
            if (v69 >= v70 >> 1)
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v69 + 1, 1, v47);
              v51 = v57;
              v50 = v58;
              v47 = v72;
              v52 = v56;
            }

            *(v47 + 16) = v69 + 1;
            *(v47 + v69 + 32) = v64 - 1;
            v49 &= (v64 - 1) >= 0;
            ++v69;
            v71 = v64 >= 0x100;
            v64 >>= 8;
          }

          while (v71);
          goto LABEL_3;
        }

        (*v48)(v61, v54);
        v64 = (v62 + 1);
      }

      else
      {
        if (v53 != &type metadata for Unicode.UTF8)
        {
          goto LABEL_25;
        }

        if (v54 != &type metadata for _ValidUTF8Buffer)
        {
LABEL_38:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v65 = v61;
        v64 = *v61;
        (*v48)(v65);
        v53 = v98;
      }

      v50 = v58;
      v51 = v57;
      v52 = v56;
      if (v64)
      {
        goto LABEL_18;
      }
    }

    v80 = EnumCaseMultiPayload == 1;
    (*(v87 + 8))(v88, v89);
    (*(v91 + 8))(v50, v59);
    v81 = *(v97 + 8);
    v81(v56, v57);
    v81(v86, v57);
    if (v80)
    {
      v95;
      return 0;
    }

    else
    {
      v83 = v95;
      v79 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v83 + 32, *(v83 + 16), v49 & 1, v82);
      v83;
    }
  }

  else
  {
    v79 = v113;
    (*(v24 + 8))(a1, a4);
    if (!v35)
    {
      return 0;
    }
  }

  return v79;
}

unint64_t static String._validate<A>(_:as:)(unsigned __int8 *a1, uint64_t a2, ValueMetadata *a3, Class *a4, int **a5)
{
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v10);
  v91 = &v78 - v13;
  v92 = v12;
  v94 = type metadata accessor for Unicode.ParseResult(0, v12, v14, v15);
  MEMORY[0x1EEE9AC00](v94, v16);
  v93 = (&v78 - v17);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v96 = &v78 - v22;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v26 = v25;
  if (v25 == &type metadata for UInt8)
  {
    if (type metadata accessor for UnsafeBufferPointer(0, &type metadata for UInt8, v23, v24) != &unk_1EEEBDEB0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3 == &type metadata for Unicode.UTF8)
    {
      v68 = validateUTF8(_:)(a1, a2);
      if ((v68 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v68 & 1, v69);
    }

    if (a3 == &type metadata for Unicode.ASCII)
    {
      if (!_allASCII(_:)(a1, a2))
      {
        return 0;
      }

      return specialized static String._uncheckedFromASCII(_:)(a1, a2, v33);
    }
  }

  v27 = 3 * a2;
  if ((a2 * 3) >> 64 != (3 * a2) >> 63)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_84:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = swift_slowAlloc((3 * a2), 0xFFFFFFFFFFFFFFFFLL);
  if (v27 < 0)
  {
    goto LABEL_84;
  }

  v95 = v28;
  v82 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v19, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  (*(AssociatedConformanceWitness + 24))(v19, AssociatedConformanceWitness);
  v86 = a4;
  v90 = v19;
  if (a1)
  {
    v32 = &a1[*(*(v26 - 8) + 72) * a2];
  }

  else
  {
    v32 = 0;
  }

  v97[0] = a1;
  v97[1] = v32;
  v35 = AssociatedConformanceWitness;
  v38 = *(AssociatedConformanceWitness + 32);
  v36 = AssociatedConformanceWitness + 32;
  v37 = v38;
  v40 = type metadata accessor for UnsafeBufferPointer.Iterator(0, v26, v30, v31);
  v41 = 0;
  v85 = a5;
  v88 = a5 + 11;
  v89 = (v11 + 32);
  v87 = (v11 + 8);
  v42 = 1;
  v43 = v27;
  v83 = 1;
  v81 = v35;
  while (1)
  {
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>.Iterator, v40, v39);
    v45 = v93;
    v37(v97, v40, WitnessTable, v90, v35);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v45, v94);
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v84 = v40;
    v79 = v37;
    v80 = v36;
    v47 = v91;
    v48 = v45;
    v49 = v92;
    (*v89)(v91, v48, v92);
    v50 = (v85[11])(v47);
    (*v87)(v47, v49);
    if (v50 >= 0x80)
    {
      v64 = (v50 & 0x3F) << 8;
      v52 = v95;
      if (v50 >= 0x800)
      {
        v65 = (v64 | (v50 >> 6) & 0x3F) << 8;
        v66 = (((v65 | (v50 >> 12) & 0x3F) << 8) | (v50 >> 18)) - 2122219023;
        v67 = (v50 >> 12) + v65 + 8487393;
        if (HIWORD(v50))
        {
          v51 = v66;
        }

        else
        {
          v51 = v67;
        }
      }

      else
      {
        v51 = (v50 >> 6) + v64 + 33217;
      }
    }

    else
    {
      v51 = v50 + 1;
      v52 = v95;
    }

    v53 = __clz(v51) >> 3;
    v54 = 4 - v53;
    v55 = __OFADD__(v41, v54);
    v56 = v41 + v54;
    if (v55)
    {
      goto LABEL_81;
    }

    if (v43 >= v56)
    {
      v57 = v27;
      if ((v42 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v27 = v57;
      if (v53 != 3)
      {
        goto LABEL_41;
      }

LABEL_31:
      v40 = v84;
      if (v27 < v41)
      {
        goto LABEL_79;
      }

      if (v41 < 0)
      {
        goto LABEL_84;
      }

      v42 = 1;
      goto LABEL_44;
    }

    v57 = v43 + (v43 >> 1);
    if (__OFADD__(v43, v43 >> 1))
    {
      goto LABEL_83;
    }

    v58 = swift_slowAlloc((v43 + (v43 >> 1)), 0xFFFFFFFFFFFFFFFFLL);
    if (v57 < 0)
    {
      goto LABEL_84;
    }

    v52 = v58;
    v59 = v95;
    if (v41 < 0)
    {
      goto LABEL_79;
    }

    if (v27 < v41)
    {
      goto LABEL_84;
    }

    if (v41)
    {
      if (!v95)
      {
        goto LABEL_84;
      }

      if (v57 < v41)
      {
        goto LABEL_86;
      }

      if (v52 < v95 || v52 >= &v95[v41] || v52 != v95)
      {
        memmove(v52, v95, v41);
        v59 = v95;
      }

LABEL_35:
      v59;
      v43 += v43 >> 1;
      if ((v42 & 1) == 0)
      {
LABEL_36:
        v40 = v84;
        if (v57 < v41)
        {
          goto LABEL_79;
        }

        if (v41 < 0)
        {
          goto LABEL_84;
        }

        v42 = 0;
        v27 = v57;
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (v95)
    {
      goto LABEL_35;
    }

    if (v42)
    {
      v27 = v43 + (v43 >> 1);
      v43 = v27;
      if (v53 != 3)
      {
LABEL_41:
        v40 = v84;
        if (v27 < v41)
        {
LABEL_79:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v41 < 0)
        {
          goto LABEL_84;
        }

        v42 = 0;
        v83 = 0;
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    v42 = 0;
    v27 = v43 + (v43 >> 1);
    v43 = v27;
    v40 = v84;
LABEL_44:
    if (v52)
    {
      v60 = &v52[v41];
    }

    else
    {
      v60 = 0;
    }

    v61 = v27 - v41;
    if (v27 - v41 < 0)
    {
      goto LABEL_84;
    }

    if (!v61)
    {
LABEL_86:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v60)
    {
      goto LABEL_84;
    }

    for (i = 0; i != v61; ++i)
    {
      if (v61 == i)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v63 = v51;
      if (!v51)
      {
        v61 = i;
        goto LABEL_58;
      }

      v60[i] = v51 - 1;
      v51 >>= 8;
    }

    if (v63 >= 0x100)
    {
      goto LABEL_86;
    }

LABEL_58:
    v95 = v52;
    v55 = __OFADD__(v41, v61);
    v41 += v61;
    v36 = v80;
    v35 = v81;
    v37 = v79;
    if (v55)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v82 + 8))(v96, v90);
    v70 = v95;
    v71 = specialized Collection.prefix(upTo:)(v41, v95, v27);
    specialized Slice.deinitialize<A>()(v71, v72, v73);
    if (v70)
    {
      v70;
    }

    return 0;
  }

  else
  {
    (*(v82 + 8))(v96, v90);
    if (!v95)
    {
      return 0;
    }

    if (v83)
    {
      v74 = v41 | 0xC000000000000000;
    }

    else
    {
      v74 = v41;
    }

    v75 = v95;
    v76 = type metadata accessor for __SharedStringStorage();
    v77 = swift_allocObject(v76, 0x31, 7uLL);
    result = v74;
    v77[2] = 0;
    v77[3] = v75;
    *(v77 + 48) = 0;
    v77[4] = v74;
    v77[5] = 0;
  }

  return result;
}

uint64_t _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys6UInt16V_G_s0J0O5UTF16OAR4UTF8OTt0t1g5033_sSS19_uncheckedFromUTF16ySSSRys6N18VGFZys5UInt8VXEfU_Says0X0VGTf1nnc_n(__objc2_class **a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 **a4)
{
  v36 = a3;
  v37 = 0;
  v6 = a1;
  v7 = 0;
  v39 = 0;
  for (i = 0; ; v7 = i)
  {
    if (v7)
    {
      v8 = v39;
      if ((v39 & 0xF800) != 0xD800)
      {
        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(a1, a2, a3);
        v17 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
        specialized RangeReplaceableCollection.remove(at:)(0);
        a1 = (v17)(v38, 0);
        v8 = v8;
        v14 = 1;
        goto LABEL_22;
      }

      if (v6)
      {
        v9 = v6;
        if (v6 != a2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if (!v6 || v6 == a2)
      {
        return v37 & 1;
      }

      v8 = *v6;
      v9 = v6 + 1;
      if ((v8 & 0xF800) != 0xD800)
      {
        v14 = 1;
        ++v6;
        goto LABEL_22;
      }

      v8 |= HIWORD(v39) << 16;
      v7 = 16;
      ++v6;
      if (v9 != a2)
      {
LABEL_9:
        v10 = v7;
        if (v7 > 0x1Fu)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = v9 + 1;
        v8 = (*v9 << v7) | ((-65535 << v7) - 1) & v8;
        v7 += 16;
        if (v10 <= 0xF && v6 != a2)
        {
          v6 = v9 + 2;
          v8 = (v9[1] << v7) | ((0x10000 << v10) - 1) & v8;
          v7 = v10 | 0x20;
        }
      }
    }

    v11 = v8 & 0xFC00FC00;
    v12 = (v8 & 0xFC00FC00) == 0xDC00D800 ? 32 : 16;
    i = v7 - v12;
    v13 = v11 == -603924480 ? 32 : 16;
    v39 = v8 >> v13;
    if (v11 != -603924480)
    {
      break;
    }

    v14 = 0;
LABEL_22:
    if (v8 >= 0x80u)
    {
      v16 = (v8 & 0x3F) << 8;
      if (v8 >= 0x800u)
      {
        if ((v8 & 0xF800) == 0xD800)
        {
          if (v14)
          {
            if (v8 >= 0x80u)
            {
              v30 = (v8 & 0x3F) << 8;
              if (v8 >= 0x800u)
              {
                v15 = ((v8 >> 12) | ((v30 | (v8 >> 6) & 0x3F) << 8)) + 8487393;
              }

              else
              {
                v15 = (v8 >> 6) + v30 + 33217;
              }
            }

            else
            {
              v15 = v8 + 1;
            }
          }

          else
          {
            v29 = ((v8 & 0x3FF) << 10) | HIWORD(v8) & 0x3FF;
            v15 = (((v29 + 0x10000) >> 4) & 0x3F00 | ((v29 + 0x10000) >> 18) | (((v29 >> 6) & 0x3F | (((v29 + 0x10000) & 0x3F) << 8)) << 16)) - 2122219023;
          }
        }

        else
        {
          v15 = (((v16 | (v8 >> 6) & 0x3F) << 8) | (v8 >> 12)) + 8487393;
        }
      }

      else
      {
        v15 = v16 + (v8 >> 6) + 33217;
      }
    }

    else
    {
      v15 = (v8 + 1);
      if (v8 == 0xFF)
      {
        continue;
      }
    }

    do
    {
      v31 = *a4;
      a1 = swift_isUniquelyReferenced_nonNull_native(*a4);
      *a4 = v31;
      if ((a1 & 1) == 0)
      {
        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        v31 = a1;
        *a4 = a1;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        v31 = a1;
        *a4 = a1;
      }

      *(v31 + 2) = v33 + 1;
      *(v31 + v33 + 32) = v15 - 1;
      v34 = v15 >= 0x100;
      v15 >>= 8;
    }

    while (v34);
LABEL_3:
    ;
  }

  if ((v36 & 1) == 0)
  {
    v18 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
    *a4 = v18;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      *a4 = v18;
    }

    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      *a4 = v18;
    }

    *(v18 + 16) = v21 + 1;
    *(v18 + v21 + 32) = -17;
    v22 = *a4;
    v23 = swift_isUniquelyReferenced_nonNull_native(*a4);
    *a4 = v22;
    if (!v23)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
      *a4 = v22;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
      *a4 = v22;
    }

    *(v22 + 16) = v25 + 1;
    *(v22 + v25 + 32) = -65;
    v26 = *a4;
    a1 = swift_isUniquelyReferenced_nonNull_native(*a4);
    *a4 = v26;
    if ((a1 & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      v26 = a1;
      *a4 = a1;
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
      v26 = a1;
      *a4 = a1;
    }

    *(v26 + 2) = v28 + 1;
    *(v26 + v28 + 32) = -67;
    v37 = 1;
    goto LABEL_3;
  }

  v37 = 1;
  return v37 & 1;
}

uint64_t _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys5UInt8V_GSbxRi_zRi0_zlyAGIsgn_SbAPRszs0J0O4UTF8ORs_sAHR0_r1_lIetyygd_Tp5(char *a1, char *a2, int a3, void (*a4)(char *), uint64_t a5, Class *a6, uint64_t a7)
{
  v66 = a4;
  v67 = a5;
  v53 = a3;
  v68 = a2;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v11 = v10;
  v12 = *(v10 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v56 = &v51 - v17;
  v64 = type metadata accessor for Optional(0, v11, v18, v19);
  v21 = MEMORY[0x1EEE9AC00](v64, v20);
  v59 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v28 = &v51 - v27;
  v29 = 0;
  v54 = 0;
  v70 = 0;
  v71 = 0;
  v30 = (v12 + 48);
  v57 = (v12 + 48);
  v58 = (v31 + 16);
  v55 = (v12 + 32);
  v65 = (v12 + 8);
  v62 = (v31 + 8);
  v63 = a7 + 104;
  v60 = a7 + 80;
  while (v29)
  {
    v38 = v70;
    if ((v70 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(v24, v25, v26);
      v52 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      v24 = (v52)(v69, 0);
      v37 = (v38 + 1);
      goto LABEL_35;
    }

    if (a1)
    {
      v35 = a1;
LABEL_11:
      if (v35 != v68)
      {
        if (v29 > 0x1Fu)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        a1 = (v35 + 1);
        v38 = (*v35 << v29) | ((-255 << v29) - 1) & v38;
        v39 = v29 + 8;
        if (v29 <= 0x17u && a1 != v68)
        {
          a1 = (v35 + 2);
          v38 = (v35[1] << v39) | ((-65280 << v29) - 1) & v38;
          v39 = v29 + 16;
          if (v29 <= 0xFu && a1 != v68)
          {
            a1 = (v35 + 3);
            v38 = (v35[2] << v39) | ((-16711680 << v29) - 1) & v38;
            v39 = v29 + 24;
            if (v29 <= 7u && a1 != v68)
            {
              a1 = (v35 + 4);
              v38 = (v35[3] << v39) | ((0x1000000 << v29) - 1) & v38;
              v39 = v29 | 0x20;
            }
          }
        }

        v29 = v39;
      }
    }

    if ((v38 & 0xC0E0) == 0x80C0)
    {
      if ((v38 & 0x1E) == 0)
      {
        goto LABEL_32;
      }

      v40 = 16;
      v41 = 1;
    }

    else if ((v38 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v38 & 0x200F) == 0 || (v38 & 0x200F) == 0x200D)
      {
        goto LABEL_32;
      }

      v40 = 24;
      v41 = 1;
    }

    else
    {
      if ((v38 & 0xC0C0C0F8) != 0x808080F0 || (v38 & 0x3007) == 0 || __rev16(v38 & 0x3007) > 0x400)
      {
LABEL_32:
        v24 = Unicode.UTF8.ForwardParser._invalidLength()();
        v41 = 0;
        v40 = 8 * v24;
        goto LABEL_33;
      }

      v40 = 32;
      v41 = 1;
    }

LABEL_33:
    v70 = v38 >> (v40 & 0x38);
    v71 = v29 - v40;
    if ((v41 & 1) == 0)
    {
      v54 = 1;
      if (v53)
      {
        return v54 & 1;
      }

      goto LABEL_3;
    }

    v37 = ((1 << ((v40 >> 1) & 0x1C) << ((v40 >> 1) & 0x1C)) - 1) & (v38 + 16843009);
LABEL_35:
    v69[0] = v37;
    v42 = *(a7 + 104);
    v43 = lazy protocol witness table accessor for type Unicode.UTF8 and conformance Unicode.UTF8(v24, v25, v26);
    v42(v69, &type metadata for Unicode.UTF8, &type metadata for Unicode.UTF8, v43, a6, a7);
    v44 = *v30;
    if ((*v30)(v28, 1, v11) == 1)
    {
      (*v62)(v28, v64);
LABEL_3:
      v32 = v61;
      (*(a7 + 80))(a6, a7);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v11, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
      Sequence.forEach(_:)(v66, v67, v11, *(*(AssociatedConformanceWitness + 8) + 8));
      v24 = (*v65)(v32, v11);
      goto LABEL_4;
    }

    v45 = v59;
    v46 = v64;
    (*v58)(v59, v28, v64);
    if (v44(v45, 1, v11) == 1)
    {
      v47 = *v62;
      (*v62)(v28, v46);
      v47(v45, v46);
      v30 = v57;
      goto LABEL_3;
    }

    v48 = v56;
    (*v55)(v56, v45, v11);
    v49 = swift_getAssociatedConformanceWitness(a7, a6, v11, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
    Sequence.forEach(_:)(v66, v67, v11, *(*(v49 + 8) + 8));
    (*v65)(v48, v11);
    v24 = (*v62)(v28, v46);
    v30 = v57;
LABEL_4:
    v29 = v71;
  }

  if (a1 && a1 != v68)
  {
    v34 = *a1++;
    v35 = a1;
    v36 = v34;
    if ((v34 & 0x80000000) == 0)
    {
      v37 = v36 + 1;
      goto LABEL_35;
    }

    v38 = v70 & 0xFFFFFF00 | v36;
    v29 = 8;
    goto LABEL_11;
  }

  return v54 & 1;
}

uint64_t transcode<A, B, C>(_:from:to:stoppingOnError:into:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, Class *a8, char *a9, uint64_t a10, int **a11, int **a12)
{
  v85 = a5;
  v86 = a6;
  v65 = a4;
  v83 = a2;
  v66 = a12;
  v91 = a10;
  v98 = a9;
  swift_getAssociatedTypeWitness(0, a12, a9, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v15 = v14;
  v77 = *(v14 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v72 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v19);
  v74 = &v64[-v20];
  v78 = type metadata accessor for Optional(0, v15, v21, v22);
  v76 = *(v78 - 8);
  v24 = MEMORY[0x1EEE9AC00](v78, v23);
  v81 = &v64[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v64[-v27];
  swift_getAssociatedTypeWitness(0, a11, a8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v71 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v29);
  v96 = &v64[-v31];
  v97 = v30;
  v90 = type metadata accessor for Unicode.ParseResult(0, v30, v32, v33);
  MEMORY[0x1EEE9AC00](v90, v34);
  v36 = &v64[-v35];
  swift_getAssociatedTypeWitness(0, a11, a8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v38 = v37;
  v68 = *(v37 - 8);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v42 = &v64[-v41];
  MEMORY[0x1EEE9AC00](v40, v43);
  v67 = v45;
  v46 = *(v45 + 16);
  v92 = &v64[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = a7;
  v46();
  v82 = a11;
  v84 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a11, a8, v38, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  v48 = *(AssociatedConformanceWitness + 24);
  v93 = v42;
  v94 = v38;
  v48(v38, AssociatedConformanceWitness);
  v70 = 0;
  v89 = AssociatedConformanceWitness;
  v87 = *(AssociatedConformanceWitness + 32);
  v88 = AssociatedConformanceWitness + 32;
  v80 = (v71 + 4);
  v79 = v66 + 13;
  v49 = (v77 + 6);
  v75 = (v76 + 2);
  v73 = (v77 + 4);
  v50 = (v77 + 1);
  v77 = (v71 + 1);
  ++v76;
  v51 = v66;
  v71 = v66 + 10;
  v52 = v78;
  v87(v92, v95, v91, v94, v89);
  while (1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v36, v90);
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v57 = v96;
    (*v80)(v96, v36, v97);
    (v51[13])(v57, v83, v84, v82);
    v58 = *v49;
    v59 = (*v49)(v28, 1, v15);
    v60 = v81;
    if (v59 == 1)
    {
      (*v77)(v96, v97);
      (*v76)(v28, v78);
LABEL_3:
      v53 = v72;
      v54 = v98;
      (v51[10])(v98, v51);
      v55 = swift_getAssociatedConformanceWitness(v51, v54, v15, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
      Sequence.forEach(_:)(v85, v86, v15, *(*(v55 + 8) + 8));
      (*v50)(v53, v15);
      goto LABEL_4;
    }

    (*v75)(v81, v28, v52);
    if (v58(v60, 1, v15) == 1)
    {
      (*v77)(v96, v97);
      v69 = *v76;
      v69(v28, v52);
      v69(v60, v52);
      goto LABEL_3;
    }

    v61 = v74;
    (*v73)(v74, v60, v15);
    v62 = swift_getAssociatedConformanceWitness(v51, v98, v15, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
    Sequence.forEach(_:)(v85, v86, v15, *(*(v62 + 8) + 8));
    (*v50)(v61, v15);
    (*v77)(v96, v97);
    (*v76)(v28, v52);
LABEL_4:
    v87(v92, v95, v91, v94, v89);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v70 = 1;
    if ((v65 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*(v68 + 8))(v93, v94);
  (*(v67 + 8))(v92, v95);
  return v70 & 1;
}

uint64_t String.init<A, B>(validating:as:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, int **a5, uint64_t a6)
{
  v11 = type metadata accessor for LazySequence(0, a4, a6, a4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for LazyMapSequence(0, a4, &type metadata for UInt8, a6);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v35 - v22;
  v38 = a3;
  v39 = a4;
  v36 = a5;
  v40 = a5;
  v41 = a6;
  (*(a6 + 72))(&v42, partial apply for closure #1 in String.init<A, B>(validating:as:), v37, &unk_1EEEBDDF0, a4, a6);
  v24 = *(a4 - 8);
  if (v43 == 1)
  {
    v25 = *(v24 + 32);
    v25(v14, a1, a4);
    v25(v23, v14, a4);
    v26 = &v23[*(v15 + 44)];
    *v26 = protocol witness for ExpressibleByBooleanLiteral.init(BOOLeanLiteral:) in conformance Bool;
    *(v26 + 1) = 0;
    (*(v16 + 32))(v20, v23, v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v15, v27);
    result = String.init<A, B>(validating:as:)(v20, v29, a3, v15, v36, WitnessTable);
    if (v31)
    {
      return result;
    }
  }

  else
  {
    v32 = v42;
    v33 = a1;
    v34 = v43;
    (*(v24 + 8))(v33, a4);
    if (v34)
    {
      return v32;
    }
  }

  return 0;
}

unint64_t closure #1 in String.init<A, B>(validating:as:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, int **a4@<X4>, unint64_t *a5@<X8>)
{
  if (a1)
  {
    if (a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    a2 = 0;
  }

  result = static String._validate<A>(_:as:)(a1, a2, a3, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

unint64_t String.init(unsafeUninitializedCapacity:initializingUTF8With:)(uint64_t a1, uint64_t (*a2)(int64_t, int64_t))
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 > 15)
  {
    return specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(a1, a2);
  }

  v14 = xmmword_18071DD30;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = a2(&v14, a1);
  if (!v2)
  {
    if (result <= 0)
    {
      if (result)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v4 = 8;
      if (result <= 8)
      {
        v5 = 8;
      }

      else
      {
        v5 = result;
      }

      v6 = 56 * v5;
      if (result < 8)
      {
        v4 = result;
      }

      v7 = 0xFFFFFFFFFFFFFFFFLL >> (v6 & 0x38);
      if (result <= 8)
      {
        v7 = 0;
      }

      v8 = result;
      result = v14 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v4) & 0x38));
      v9 = *(&v14 + 1) & v7;
      v10 = ((*(&v14 + 1) & v7 | result) & 0x8080808080808080) == 0;
      v11 = 0xA000000000000000;
      if (v10)
      {
        v11 = 0xE000000000000000;
      }

      v12 = v11 | (v8 << 56);
      if (((v12 | v9) & 0x4000000000000000) == 0)
      {
        *&v14 = result;
        *(&v14 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
        closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v14, ((v12 | v9) >> 56) & 0xF, &v13);
        return v13;
      }
    }
  }

  return result;
}

uint64_t closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = validateUTF8(_:)(a1, a2);
  if ((v6 & 0x8000000000000000) != 0)
  {
    result = repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v7, v8);
  }

  else
  {
    result = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v6 & 1, v9);
  }

  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t _StringGuts.withCString<A>(_:)(void (*a1)(uint64_t), uint64_t a2, unint64_t a3, unint64_t a4)
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
    v15[3] = closure #1 in _StringGuts.withCString<A>(_:)partial apply;
    v15[4] = v16;
    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error)partial apply, v15, v13, v12);
  }
}

void String._slowWithCString<A, B>(encodedAs:_:)(void (*a1)(unint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t (**a5)(char *, uint64_t)@<X5>, Class *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v139 = a5;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v129 = v15;
  v127 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v124 = v120 - v17;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v19 = v18;
  v137 = *(v18 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v136 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v130 = v120 - v24;
  v141 = type metadata accessor for Optional(0, v19, v25, v26);
  v27 = *(v141 - 8);
  v29 = MEMORY[0x1EEE9AC00](v141, v28);
  v134 = v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v120 - v32;
  a4;
  v36 = a3;
  v37 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v140 = a3;
    v135 = v27;
    a3 = specialized static String._copying(_:)(a3, a4);
    v126 = v101;
    a4;
    v27 = v135;
    v36 = v140;
    v37 = v126;
  }

  v125 = a8;
  v126 = v37;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v70 = HIBYTE(v37) & 0xF;
    v143[0] = a3;
    v143[1] = v37 & 0xFFFFFFFFFFFFFFLL;
    v145 = &_swiftEmptyArrayStorage;
    v71 = HIBYTE(a4) & 0xC;
    v72 = v36 & 0xFFFFFFFFFFFCLL;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v71 = v72;
    }

    v73 = v71 >> 2;
    v74 = v129;
    v75 = type metadata accessor for Array(0, v129, v34, v35);
    Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v73 + 1, 0);
    MEMORY[0x1EEE9AC00](v76, v77);
    v116 = v139;
    v117 = a6;
    v118 = a7;
    v119 = &v145;
    _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys5UInt8V_GSbxRi_zRi0_zlyAGIsgn_SbAPRszs0J0O4UTF8ORs_sAHR0_r1_lIetyygd_Tp5(v143, (v78 + v70), 0, partial apply for closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:), &v120[-6], a6, a7);
    v144 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v74, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger);
    v80 = *(AssociatedConformanceWitness + 8);
    v81 = *(v80 + 88);
    v84 = lazy protocol witness table accessor for type Int and conformance Int(AssociatedConformanceWitness, v82, v83);
    v85 = v124;
    v81(&v144, &type metadata for Int, v84, v74, v80);
    Array.append(_:)(v85, v75);
    v86 = v145;
    v145;
    if (_swift_isClassOrObjCExistentialType(v74, v74) && (v86 < 0 || (v86 & 0x4000000000000000) != 0))
    {
      if (Array._getCount()())
      {
        v144 = v86;
        v110 = type metadata accessor for _ArrayBuffer(0, v74, v105, v106);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v110, v111);
        v100 = (*(WitnessTable + 56))(v110, WitnessTable);
        v87 = v100 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
        goto LABEL_74;
      }

      v86;
      v87 = 0;
    }

    else
    {
      v86;
      if (_swift_isClassOrObjCExistentialType(v74, v74))
      {
        v87 = ((*(v127 + 80) + 32) & ~*(v127 + 80)) + (v86 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v87 = v86 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
      }
    }

    if (_swift_isClassOrObjCExistentialType(v74, v74) && (v86 < 0 || (v86 & 0x4000000000000000) != 0))
    {
      if (v86 < 0)
      {
        v100 = v86;
      }

      else
      {
        v100 = (v86 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v100);
      if (v87)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(v74, v74))
      {
        v100 = (v86 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v100 = v86;
      }

      v86;
      if (v87)
      {
        goto LABEL_74;
      }
    }

    v87 = (~*(v127 + 80) | 0xFFFFFF00);
LABEL_74:
    a1(v87);
    goto LABEL_85;
  }

  v135 = v27;
  v123 = a1;
  v122 = a2;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v38 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v39 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v102 = v36;
    v103 = _StringObject.sharedUTF8.getter(a3, v37);
    v36 = v102;
    v38 = v103;
    v39 = v104;
  }

  v145 = &_swiftEmptyArrayStorage;
  v40 = HIBYTE(a4) & 0xC;
  v41 = v36 & 0xFFFFFFFFFFFCLL;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v40 = v41;
  }

  v42 = v40 >> 2;
  v121 = type metadata accessor for Array(0, v129, v34, v35);
  Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v42 + 1, 0);
  v120[1] = v120;
  if (v38)
  {
    v45 = &v38[v39];
  }

  else
  {
    v45 = 0;
  }

  v46 = MEMORY[0x1EEE9AC00](v43, v44);
  v140 = &v120[-6];
  v49 = 0;
  v138 = (v137 + 6);
  v131 = (v135 + 16);
  v132 = v45;
  v116 = v139;
  v117 = a6;
  v128 = (v137 + 4);
  v139 = (v137 + 1);
  v137 = (v135 + 8);
  v135 = a7 + 80;
  v118 = a7;
  v119 = &v145;
  LODWORD(v144) = 0;
  BYTE4(v144) = 0;
  v133 = a7 + 104;
  while (v49)
  {
    v57 = v144;
    if ((v144 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(v46, v47, v48);
      v120[0] = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      v46 = (v120[0])(v143, 0);
      v56 = (v57 + 1);
      goto LABEL_44;
    }

    if (v38)
    {
      v54 = v38;
      if (v38 != v45)
      {
LABEL_21:
        if (v49 > 0x1Fu)
        {
          LODWORD(v118) = 0;
          v117 = 190;
          LOBYTE(v116) = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v38 = v54 + 1;
        v57 = (*v54 << v49) | ((-255 << v49) - 1) & v57;
        v58 = v49 + 8;
        if (v49 <= 0x17u && v38 != v45)
        {
          v38 = v54 + 2;
          v57 = (v54[1] << v58) | ((-65280 << v49) - 1) & v57;
          v58 = v49 + 16;
          if (v49 <= 0xFu && v38 != v45)
          {
            v38 = v54 + 3;
            v57 = (v54[2] << v58) | ((-16711680 << v49) - 1) & v57;
            v58 = v49 + 24;
            if (v49 <= 7u && v38 != v45)
            {
              v38 = v54 + 4;
              v57 = (v54[3] << v58) | ((0x1000000 << v49) - 1) & v57;
              v58 = v49 | 0x20;
            }
          }
        }

        v49 = v58;
      }
    }

LABEL_30:
    if ((v57 & 0xC0E0) == 0x80C0)
    {
      if ((v57 & 0x1E) == 0)
      {
        goto LABEL_41;
      }

      v59 = 16;
      v60 = 1;
    }

    else if ((v57 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v57 & 0x200F) == 0 || (v57 & 0x200F) == 0x200D)
      {
        goto LABEL_41;
      }

      v59 = 24;
      v60 = 1;
    }

    else
    {
      if ((v57 & 0xC0C0C0F8) != 0x808080F0 || (v57 & 0x3007) == 0 || __rev16(v57 & 0x3007) > 0x400)
      {
LABEL_41:
        v46 = Unicode.UTF8.ForwardParser._invalidLength()();
        v60 = 0;
        v59 = 8 * v46;
        goto LABEL_42;
      }

      v59 = 32;
      v60 = 1;
    }

LABEL_42:
    LODWORD(v144) = v57 >> (v59 & 0x38);
    BYTE4(v144) = v49 - v59;
    if ((v60 & 1) == 0)
    {
      goto LABEL_13;
    }

    v56 = ((1 << ((v59 >> 1) & 0x1C) << ((v59 >> 1) & 0x1C)) - 1) & (v57 + 16843009);
LABEL_44:
    LODWORD(v143[0]) = v56;
    v61 = *(a7 + 104);
    v62 = lazy protocol witness table accessor for type Unicode.UTF8 and conformance Unicode.UTF8(v46, v47, v48);
    v61(v143, &type metadata for Unicode.UTF8, &type metadata for Unicode.UTF8, v62, a6, a7);
    v63 = *v138;
    if ((*v138)(v33, 1, v19) == 1)
    {
      (*v137)(v33, v141);
LABEL_13:
      v50 = v136;
      (*(a7 + 80))(a6, a7);
      v51 = swift_getAssociatedConformanceWitness(a7, a6, v19, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
      v52 = v142;
      Sequence.forEach(_:)(closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:)partial apply, v140, v19, *(*(v51 + 8) + 8));
      v142 = v52;
      v46 = (*v139)(v50, v19);
      goto LABEL_14;
    }

    v64 = v134;
    v65 = v141;
    (*v131)(v134, v33, v141);
    if (v63(v64, 1, v19) == 1)
    {
      v66 = *v137;
      (*v137)(v33, v65);
      v66(v64, v65);
      v45 = v132;
      goto LABEL_13;
    }

    v67 = v130;
    (*v128)(v130, v64, v19);
    v68 = swift_getAssociatedConformanceWitness(a7, a6, v19, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
    v69 = v142;
    Sequence.forEach(_:)(closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:)partial apply, v140, v19, *(*(v68 + 8) + 8));
    v142 = v69;
    (*v139)(v67, v19);
    v46 = (*v137)(v33, v65);
    v45 = v132;
LABEL_14:
    v49 = BYTE4(v144);
  }

  if (v38 && v38 != v45)
  {
    v53 = *v38++;
    v54 = v38;
    v55 = v53;
    if ((v53 & 0x80000000) == 0)
    {
      v56 = v55 + 1;
      goto LABEL_44;
    }

    v57 = v144 & 0xFFFFFF00 | v55;
    v49 = 8;
    if (v38 != v45)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v143[0] = 0;
  v88 = v129;
  v89 = swift_getAssociatedConformanceWitness(a7, a6, v129, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger);
  v90 = *(v89 + 8);
  v91 = *(v90 + 88);
  v94 = lazy protocol witness table accessor for type Int and conformance Int(v89, v92, v93);
  v95 = v124;
  v91(v143, &type metadata for Int, v94, v88, v90);
  v96 = v88;
  Array.append(_:)(v95, v121);
  v86 = v145;
  v145;
  if (_swift_isClassOrObjCExistentialType(v96, v96) && (v86 < 0 || (v86 & 0x4000000000000000) != 0))
  {
    v107 = Array._getCount()();
    v98 = v123;
    if (!v107)
    {
      v86;
      v99 = 0;
      goto LABEL_76;
    }

    v143[0] = v86;
    v113 = type metadata accessor for _ArrayBuffer(0, v88, v108, v109);
    v115 = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v113, v114);
    v100 = (*(v115 + 56))(v113, v115);
    v99 = v100 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
  }

  else
  {
    v86;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v88, v88);
    v98 = v123;
    if (isClassOrObjCExistentialType)
    {
      v99 = ((*(v127 + 80) + 32) & ~*(v127 + 80)) + (v86 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v99 = v86 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    }

LABEL_76:
    if (_swift_isClassOrObjCExistentialType(v96, v96) && (v86 < 0 || (v86 & 0x4000000000000000) != 0))
    {
      if (v86 < 0)
      {
        v100 = v86;
      }

      else
      {
        v100 = (v86 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v100);
      if (!v99)
      {
LABEL_83:
        v99 = (~*(v127 + 80) | 0xFFFFFF00);
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(v96, v96))
      {
        v100 = (v86 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v100 = v86;
      }

      v86;
      if (!v99)
      {
        goto LABEL_83;
      }
    }
  }

  v98(v99);
LABEL_85:
  v86;
  swift_unknownObjectRelease(v100);
  v126;
}

unint64_t _StringGuts.count.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  else
  {
    return a1 & 0xFFFFFFFFFFFFLL;
  }
}

uint64_t closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, a1, v6);
  v13 = type metadata accessor for Array(0, v6, v11, v12);
  return Array.append(_:)(v9, v13);
}

Swift::Bool __swiftcall _GraphemeBreakingState.shouldBreak(between:and:)(Swift::Unicode::Scalar between, Swift::Unicode::Scalar and)
{
  if (between._value != 13 || and._value != 10)
  {
    if (hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(between._value) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(and._value))
    {
      goto LABEL_81;
    }

    v6 = Unicode._GraphemeBreakProperty.init(from:)(between._value);
    v5 = v6;
    if (v6 == 1)
    {
      return v5 & 1;
    }

    v7 = v6;
    v8 = Unicode._GraphemeBreakProperty.init(from:)(and._value);
    v5 = v8;
    if (v8 <= 5u)
    {
      if (v8 <= 1u)
      {
        if (v8)
        {
          goto LABEL_71;
        }

        if (v7 == 7)
        {
          goto LABEL_70;
        }

        if (!v7)
        {
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      if (v8 != 2)
      {
        if (v8 == 4 || v8 == 5)
        {
          v9 = v7;
          if (v7 == 4)
          {
            goto LABEL_70;
          }

          goto LABEL_33;
        }

LABEL_31:
        v9 = v7;
        if (v7 == 12)
        {
          if (v8 == 3)
          {
            v5 = *(v2 + 1) ^ 1;
            goto LABEL_71;
          }

          goto LABEL_76;
        }

        if (v7 == 8)
        {
          if (v8 == 8)
          {
            v5 = *(v2 + 3);
            *(v2 + 3) = v5 ^ 1;
            goto LABEL_71;
          }

          goto LABEL_76;
        }

LABEL_33:
        if (v9 != 7)
        {
LABEL_76:
          if (*(v2 + 2) == 1 && *v2 == 1 && _swift_stdlib_isInCB_Consonant(and._value))
          {
            v5 = 0;
            *v2 = 0;
            *(v2 + 2) = 0;
            return v5 & 1;
          }

LABEL_80:
          *(v2 + 1) = 0;
LABEL_81:
          v5 = 1;
          return v5 & 1;
        }

LABEL_70:
        v5 = 0;
LABEL_71:
        *(v2 + 1) = 0;
        return v5 & 1;
      }

LABEL_18:
      v10 = v7;
      if (v7 == 3 || (v11 = 0, v10 == 2) && *(v2 + 1))
      {
        v11 = 1;
      }

      v12 = _swift_stdlib_isInCB_Consonant(between._value);
      v13 = _swift_stdlib_isInCB_Consonant(and._value);
      HIDWORD(v15) = and._value - 2381;
      LODWORD(v15) = and._value - 2381;
      v14 = v15 >> 7;
      if (v13)
      {
        v16 = 0;
        if (v14 > 3)
        {
          if (v14 != 4 && v14 != 6 && v14 != 8)
          {
            goto LABEL_67;
          }
        }

        else if (v14 >= 2 && v14 != 3)
        {
LABEL_67:
          v5 = 0;
          *(v2 + 1) = v11;
          *(v2 + 2) = v16;
          return v5 & 1;
        }

LABEL_60:
        if (v12 || *(v2 + 2) == 1)
        {
          v16 = 1;
          *v2 = 1;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_67;
      }

      if (v14 > 3)
      {
        if (v14 == 4 || v14 == 6 || v14 == 8)
        {
          goto LABEL_60;
        }
      }

      else if (v14 < 2 || v14 == 3)
      {
        goto LABEL_60;
      }

      v19 = and._value == 8204 || v12;
      v16 = and._value != 8204 && v12;
      if ((v19 & 1) == 0)
      {
        v16 = *(v2 + 2);
      }

      goto LABEL_67;
    }

    if (v8 <= 9u)
    {
      if (v8 == 6)
      {
        if (v7 == 7 || v7 == 4)
        {
          goto LABEL_70;
        }

        goto LABEL_76;
      }

      if (v8 == 9)
      {
        goto LABEL_70;
      }

      goto LABEL_31;
    }

    switch(v8)
    {
      case 0xAu:
        v17 = v7;
        if (v7 <= 6u)
        {
          if (v7 == 5 || v7 == 6)
          {
            goto LABEL_70;
          }

          goto LABEL_76;
        }

        if (v7 == 7 || v7 == 10)
        {
          goto LABEL_70;
        }

        break;
      case 0xBu:
        v17 = v7;
        if (v7 <= 6u)
        {
          if (v7 == 4 || v7 == 5)
          {
            goto LABEL_70;
          }

          goto LABEL_76;
        }

        if (v7 == 7)
        {
          goto LABEL_70;
        }

        break;
      case 0xCu:
        goto LABEL_18;
      default:
        goto LABEL_31;
    }

    if (v17 != 11)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

  v5 = 0;
  return v5 & 1;
}

Swift::Unicode::Scalar_optional __swiftcall String.UnicodeScalarView.Iterator.next()()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v8 = 0;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    if ((v4 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v1 << 16));
      scalarLength = v10.scalarLength;
      value = v10._0._value;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v11[0] = *v0;
        v11[1] = v4 & 0xFFFFFFFFFFFFFFLL;
        v5 = v11;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v5 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(*v0, v0[1]);
      }

      value = _decodeScalar(_:startingAt:)(v5, v3, v1);
    }

    v0[2] = scalarLength + v1;
    v8 = value;
  }

  LOBYTE(v11[0]) = v1 >= v2;
  return (v8 | ((v1 >= v2) << 32));
}

uint64_t (*String.unicodeScalars.modify(void *a1))()
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v1;
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return String.unicodeScalars.modify;
}

void *String.unicodeScalars.modify(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

Swift::Void __swiftcall String.UnicodeScalarView.append(_:)(Swift::Unicode::Scalar a1)
{
  v1 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1._value);
  v3 = v2;
  _StringGuts.append(_:)(v1, v2, v4, v5, v6, v7, v8, v9, v10, v11);

  v3;
}

Swift::String::Index __swiftcall String.index(before:)(Swift::String::Index before)
{
  v1._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(before)._rawBits;
  if (!(v1._rawBits >> 14))
  {
    rawBits = v1._rawBits;
    isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
    v1._rawBits = rawBits;
    if (isExecutableLinkedOnOrAfter)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return String._uncheckedIndex(before:)(v1);
}

Swift::String::Index __swiftcall String.UnicodeScalarView.index(before:)(Swift::String::Index before)
{
  v3 = v2;
  v4 = v1;
  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(before)._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    return String.UnicodeScalarView._foreignIndex(before:)(v5);
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15[0] = v4;
      v15[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v15 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v11 = v15 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v12 = *v11--;
        }

        while ((v12 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        rawBits = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(v4, v3);
        v5._rawBits = rawBits;
      }

      v7 = 0;
      v8 = v6 + (v5._rawBits >> 16) - 1;
      do
      {
        v9 = *(v8 + v7--) & 0xC0;
      }

      while (v9 == 128);
      v10 = -v7;
    }

    return ((v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5);
  }
}

void specialized String.UnicodeScalarView.append<A>(contentsOf:)(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v5 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(a1, a2, a3, a4);
  v6 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5();
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  v9 = v7;
  v5;
  v10 = v4[1];
  v11 = specialized static String.+ infix(_:_:)(*v4, v10, v8, v9);
  v13 = v12;
  v10;
  v9;
  *v4 = v11;
  v4[1] = v13;
}

void String.UnicodeScalarView.append<A>(contentsOf:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v4 = v3;
  v5 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0, a2, a3);
  v6 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5();
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  v9 = v7;
  v5;
  v10 = v4[1];
  v11 = specialized static String.+ infix(_:_:)(*v4, v10, v8, v9);
  v13 = v12;
  v10;
  v9;
  *v4 = v11;
  v4[1] = v13;
}

unint64_t specialized Sequence<>.joined(separator:)(unint64_t a1, unint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  v235 = HIBYTE(a2) & 0xF;
  v239 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  v234 = v5;
  v6 = a3[2] + a3[2] * v5;
  v7 = 0xE000000000000000;
  v248 = 0;
  v249 = 0xE000000000000000;
  if (v6 < 16)
  {
    v10 = 0;
  }

  else
  {
    v8 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v9 & 1) != 0 || v8 < v6)
    {
      v12 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v12 <= v6)
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      v246 = 0;
      v247 = 0;
      v7 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v246, 0, v13, 1);
      v10 = *(v7 + 24);
      0xE000000000000000;
      v248 = v10;
      v249 = v7;
    }

    else
    {
      v10 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v14 = a3[2];
  v242 = v14;
  if (!v234)
  {
    if (!v14)
    {
      return v248;
    }

    v22 = 0;
    while (1)
    {
      sub_1802E86D0(v22, 1, a3);
      v23 = &a3[2 * v22 + 4];
      v16 = *v23;
      v24 = v23[1];
      v15 = v248;
      v7 = v249;
      v25 = HIBYTE(v249) & 0xF;
      v18 = v248 & 0xFFFFFFFFFFFFLL;
      if ((v249 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v249) & 0xF;
      }

      else
      {
        v26 = v248 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26 && (v248 & ~v249 & 0x2000000000000000) == 0)
      {
        v24;
        v7;
        v248 = v16;
        v249 = v24;
        goto LABEL_27;
      }

      v27 = (v24 & 0x2000000000000000) == 0;
      v28 = HIBYTE(v24) & 0xF;
      if ((v249 & 0x2000000000000000) != 0)
      {
        if ((v24 & 0x2000000000000000) == 0)
        {
          v29 = v16 & 0xFFFFFFFFFFFFLL;
          v27 = 1;
LABEL_38:
          v4 = v29;
          goto LABEL_39;
        }

        v48 = v25 + v28;
        if (v25 + v28 < 0x10)
        {
          if (v28)
          {
            v55 = 0;
            v56 = 0;
            v57 = 8 * v25;
            v58 = 8 * v28;
            v59 = v249;
            v14 = v242;
            do
            {
              v60 = v24 >> (v55 & 0x38);
              if (v56 < 8)
              {
                v60 = v16 >> v55;
              }

              v61 = (v60 << (v57 & 0x38)) | ((-255 << (v57 & 0x38)) - 1) & v59;
              v62 = (v60 << v57) | ((-255 << v57) - 1) & v15;
              if (v25 <= 7)
              {
                v15 = v62;
              }

              else
              {
                v59 = v61;
              }

              ++v25;
              v57 += 8;
              v55 += 8;
              ++v56;
            }

            while (v58 != v55);
          }

          else
          {
            v59 = v249;
            v14 = v242;
          }

          v249;
          v63 = 0xA000000000000000;
          if (!(v15 & 0x8080808080808080 | v59 & 0x80808080808080))
          {
            v63 = 0xE000000000000000;
          }

          v248 = v15;
          v249 = v63 & 0xFF00000000000000 | (v48 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_27;
        }

        v27 = 0;
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
      }

      else
      {
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v240 = v27;
      v239 = v29;
      if ((v24 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v24, 3);
        v65._rawBits = 1;
        v66._rawBits = (v4 << 16) | 1;
        v67._rawBits = _StringGuts.validateScalarRange(_:)(v65, v66, v16, v24)._rawBits;
        if (v67._rawBits < 0x10000)
        {
          v67._rawBits |= 3;
        }

        v10 = String.UTF8View.distance(from:to:)(v67, v68);
        v24;
        if ((v7 & 0x1000000000000000) != 0)
        {
LABEL_93:
          v69 = String.UTF8View._foreignCount()();
          v32 = v69 + *&v10;
          if (__OFADD__(v69, *&v10))
          {
            goto LABEL_328;
          }

          goto LABEL_42;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n(v24, 2);
        v10 = v4;
        if ((v7 & 0x1000000000000000) != 0)
        {
          goto LABEL_93;
        }
      }

      v31 = __OFADD__(v26, *&v10);
      v32 = v26 + *&v10;
      if (v31)
      {
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
          v18 = v230;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v224 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v224 = _StringObject.sharedUTF8.getter(*&v10, v7);
            v18 = v233;
          }

          closure #1 in _StringGuts._convertedToSmall()(v224, v18, &v246, v30);
          v10 = v246;
          v18 = v247;
        }

LABEL_119:
        v14 = v242;
        v16;
        v84._rawBits = 1;
        v85._rawBits = (v4 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v84, v85, v15, v16)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (!(rawBits >> 16) && v78._rawBits >> 16 == v4)
        {
          v87 = v16;
          goto LABEL_139;
        }

LABEL_138:
        v15 = specialized static String._copying(_:)(rawBits, v78, v15, v16);
        v87 = v98;
        v16;
LABEL_139:
        if ((v87 & 0x2000000000000000) != 0)
        {
          v87;
        }

        else
        {
          v225 = v7;
          if ((v87 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v87);
            v232 = v231;
            v87;
            v87 = v232;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v226 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v227 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v226 = _StringObject.sharedUTF8.getter(v15, v87);
            }

            closure #1 in _StringGuts._convertedToSmall()(v226, v227, &v246, v86);
            v87;
            v15 = v246;
            v87 = v247;
          }

          v7 = v225;
          v14 = v242;
        }

        v99 = HIBYTE(v18) & 0xF;
        v100 = HIBYTE(v87) & 0xF;
        v101 = v100 + v99;
        if (v100 + v99 < 0x10)
        {
          v16;
          if (v100)
          {
            v102 = 0;
            v103 = 0;
            v104 = 8 * v99;
            v105 = 8 * v100;
            v4 = v238;
            do
            {
              v106 = v87 >> (v102 & 0x38);
              if (v103 < 8)
              {
                v106 = v15 >> v102;
              }

              v107 = (v106 << (v104 & 0x38)) | ((-255 << (v104 & 0x38)) - 1) & v18;
              v108 = (v106 << v104) | ((-255 << v104) - 1) & *&v10;
              if (v99 <= 7)
              {
                v10 = v108;
              }

              else
              {
                v18 = v107;
              }

              ++v99;
              v104 += 8;
              v102 += 8;
              ++v103;
            }

            while (v105 != v102);
          }

          else
          {
            v4 = v238;
          }

          v7;
          v16;
          v109 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v18 & 0x80808080808080))
          {
            v109 = 0xE000000000000000;
          }

          v110 = v109 & 0xFF00000000000000 | (v101 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_172;
        }

LABEL_342:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_42:
      if ((v15 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(v15, v7);
        if (v34)
        {
          goto LABEL_342;
        }

        if (v32 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v33 < *&v10)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v32 < 16)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_59:
          v36 = v7;
          goto LABEL_60;
        }

LABEL_48:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v15 = _StringGuts._foreignConvertedToSmall()(v15, v7);
          v36 = v64;
LABEL_60:
          v14 = v242;
        }

        else
        {
          if ((v15 & 0x1000000000000000) != 0)
          {
            v35 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v15, v7);
            v18 = v74;
          }

          v14 = v242;
          closure #1 in _StringGuts._convertedToSmall()(v35, v18, &v246, v30);
          v15 = v246;
          v36 = v247;
        }

        v24;
        v42._rawBits = 1;
        v43._rawBits = (v4 << 16) | 1;
        v44._rawBits = _StringGuts.validateScalarRange(_:)(v42, v43, v16, v24)._rawBits;
        if (v44._rawBits < 0x10000)
        {
          v44._rawBits |= 3;
        }

        if (v44._rawBits >> 16 || v45._rawBits >> 16 != v4)
        {
          v16 = specialized static String._copying(_:)(v44._rawBits, v45, v16, v24);
          v47 = v49;
          v24;
        }

        else
        {
          v47 = v24;
        }

        if ((v47 & 0x2000000000000000) != 0)
        {
          v47;
        }

        else if ((v47 & 0x1000000000000000) != 0)
        {
          v16 = _StringGuts._foreignConvertedToSmall()(v16, v47);
          v76 = v75;
          v47;
          v47 = v76;
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v70 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v71 = v16 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = _StringObject.sharedUTF8.getter(v16, v47);
          }

          closure #1 in _StringGuts._convertedToSmall()(v70, v71, &v246, v46);
          v47;
          v16 = v246;
          v47 = v247;
        }

        v50 = specialized _SmallString.init(_:appending:)(v15, v36, v16, v47);
        if (v52)
        {
          goto LABEL_342;
        }

        v53 = v50;
        v54 = v51;
        v7;
        swift_bridgeObjectRelease_n(v24, 2);
        v248 = v53;
        v249 = v54;
        goto LABEL_27;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, *&v10);
      if ((v24 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v16, v24, 0, v4);
        swift_bridgeObjectRelease_n(v24, 2);
LABEL_84:
        v14 = v242;
        goto LABEL_27;
      }

      if (!v240)
      {
        v246 = v16;
        v247 = v24 & 0xFFFFFFFFFFFFFFLL;
        v24;
        _StringGuts.appendInPlace(_:isASCII:)(&v246, HIBYTE(v24) & 0xF, (v24 & 0x4000000000000000) != 0);
        v24;
        goto LABEL_84;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v37 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v38 = v239;
        v39 = v239;
      }

      else
      {
        v72 = _StringObject.sharedUTF8.getter(v16, v24);
        v38 = v239;
        if (v73 < v239)
        {
          goto LABEL_341;
        }

        v37 = v72;
        v39 = v73;
      }

      v14 = v242;
      v24;
      v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v38, v37, v39);
      _StringGuts.appendInPlace(_:isASCII:)(v40, v41, (v16 & 0x8000000000000000) != 0);
      v24;
LABEL_27:
      if (++v22 == v14)
      {
        return v248;
      }
    }
  }

  if (v14)
  {
    v236 = a2;
    sub_1802E86D0(0, 1, a3);
    v15 = a3[4];
    v237 = a3 + 4;
    v238 = v4;
    v16 = a3[5];
    v17 = HIBYTE(v7) & 0xF;
    v18 = *&v10 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v19 = *&v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 && (*&v10 & ~v7 & 0x2000000000000000) == 0)
    {
      v16;
      v7;
      v248 = v15;
      v249 = v16;
      goto LABEL_173;
    }

    v20 = (v16 & 0x2000000000000000) == 0;
    v14 = HIBYTE(v16) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v93 = v17 + v14;
        if (v17 + v14 < 0x10)
        {
          if (v14)
          {
            v111 = 0;
            v112 = 0;
            v113 = 8 * v17;
            v114 = 8 * v14;
            v115 = v7;
            v14 = v242;
            do
            {
              v116 = v16 >> (v111 & 0x38);
              if (v112 < 8)
              {
                v116 = v15 >> v111;
              }

              v117 = (v116 << (v113 & 0x38)) | ((-255 << (v113 & 0x38)) - 1) & v115;
              v118 = (v116 << v113) | ((-255 << v113) - 1) & *&v10;
              if (v17 <= 7)
              {
                v10 = v118;
              }

              else
              {
                v115 = v117;
              }

              ++v17;
              v113 += 8;
              v111 += 8;
              ++v112;
            }

            while (v114 != v111);
          }

          else
          {
            v115 = v7;
            v14 = v242;
          }

          v7;
          v119 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v115 & 0x80808080808080))
          {
            v119 = 0xE000000000000000;
          }

          v110 = v119 & 0xFF00000000000000 | (v93 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
LABEL_172:
          v248 = v10;
          v249 = v110;
          goto LABEL_173;
        }

        v20 = 0;
        v4 = HIBYTE(v16) & 0xF;
        v243 = v15 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x1000000000000000) == 0)
        {
LABEL_108:
          rawBits = swift_bridgeObjectRetain_n(v16, 2);
          v79 = v4;
          if ((v7 & 0x1000000000000000) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_135;
        }

LABEL_132:
        swift_bridgeObjectRetain_n(v16, 3);
        v94._rawBits = 1;
        v95._rawBits = (v4 << 16) | 1;
        v96._rawBits = _StringGuts.validateScalarRange(_:)(v94, v95, v15, v16)._rawBits;
        if (v96._rawBits < 0x10000)
        {
          v96._rawBits |= 3;
        }

        v79 = String.UTF8View.distance(from:to:)(v96, v97);
        v16;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_109:
          v31 = __OFADD__(v19, v79);
          v80 = v19 + v79;
          if (!v31)
          {
            goto LABEL_110;
          }

          goto LABEL_137;
        }

LABEL_135:
        rawBits = String.UTF8View._foreignCount()();
        v80 = rawBits + v79;
        if (!__OFADD__(rawBits, v79))
        {
LABEL_110:
          if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
          {
            v81 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
            if (v82)
            {
              goto LABEL_342;
            }

            v83 = (v7 >> 61) & 1;
            if (v81 < v79)
            {
              LOBYTE(v83) = 1;
            }

            if (v80 <= 15 && (v83 & 1) != 0)
            {
LABEL_117:
              if ((v7 & 0x2000000000000000) == 0)
              {
                goto LABEL_331;
              }

              v18 = v7;
              goto LABEL_119;
            }
          }

          else if (v80 < 16)
          {
            goto LABEL_117;
          }

          v7 = &v248;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v80, v79);
          if ((v16 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v15, v16, 0, v4);
          }

          else
          {
            if (v20)
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v88 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v14 = v242;
                v89 = v243;
                v90 = v243;
              }

              else
              {
                v228 = _StringObject.sharedUTF8.getter(v15, v16);
                if (v229 < v243)
                {
LABEL_341:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v88 = v228;
                v90 = v229;
                v14 = v242;
                v89 = v243;
              }

              v4 = v238;
              v91 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v89, v88, v90);
              closure #1 in _StringGuts.append(_:)(v91, v92, &v248, (v15 & 0x8000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              goto LABEL_173;
            }

            v246 = v15;
            v247 = v16 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v246, HIBYTE(v16) & 0xF, &v248, (v16 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v16, 2);
          v14 = v242;
          v4 = v238;
LABEL_173:
          v15 = v236;
          if (v14 == 1)
          {
            return v248;
          }

          v121 = 1;
          while (1)
          {
            sub_1802E86D0(v121, 1, a3);
            v122 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              __break(1u);
              goto LABEL_328;
            }

            v123 = &v237[2 * v121];
            v18 = *v123;
            v16 = v123[1];
            v10 = v248;
            v7 = v249;
            v124 = HIBYTE(v249) & 0xF;
            v125 = v248 & 0xFFFFFFFFFFFFLL;
            if ((v249 & 0x2000000000000000) != 0)
            {
              v126 = HIBYTE(v249) & 0xF;
            }

            else
            {
              v126 = v248 & 0xFFFFFFFFFFFFLL;
            }

            v244 = v18;
            v241 = v122;
            if (!v126 && (v248 & ~v249 & 0x2000000000000000) == 0)
            {
              v16;
              v15;
              v7;
              v248 = v4;
              v249 = v15;
              goto LABEL_235;
            }

            if ((v249 & 0x2000000000000000) != 0)
            {
              v18 = v239;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v235;
                v127 = v124 + v235;
                if (v124 + v235 <= 0xF)
                {
                  if (v235)
                  {
                    v128 = 0;
                    v129 = 0;
                    v130 = 8 * v124;
                    v131 = v249;
                    v18 = v244;
                    do
                    {
                      v132 = v15 >> (v128 & 0x38);
                      if (v129 < 8)
                      {
                        v132 = v4 >> v128;
                      }

                      v133 = (v132 << (v130 & 0x38)) | ((-255 << (v130 & 0x38)) - 1) & v131;
                      v134 = (v132 << v130) | ((-255 << v130) - 1) & *&v10;
                      if (v124 <= 7)
                      {
                        v10 = v134;
                      }

                      else
                      {
                        v131 = v133;
                      }

                      ++v124;
                      v130 += 8;
                      v128 += 8;
                      ++v129;
                    }

                    while (8 * v235 != v128);
                  }

                  else
                  {
                    v131 = v249;
                    v18 = v244;
                  }

                  v16;
                  v7;
                  v159 = 0xA000000000000000;
                  if (!(*&v10 & 0x8080808080808080 | v131 & 0x80808080808080))
                  {
                    v159 = 0xE000000000000000;
                  }

                  v248 = v10;
                  v249 = v159 & 0xFF00000000000000 | (v127 << 56) | v131 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v18 = v239;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v235;
              }
            }

            if ((v15 & 0x1000000000000000) != 0)
            {
              v16;
              v204._rawBits = 1;
              v205._rawBits = (v18 << 16) | 1;
              v206._rawBits = _StringGuts.validateScalarRange(_:)(v204, v205, v4, v15)._rawBits;
              if (v206._rawBits < 0x10000)
              {
                v206._rawBits |= 3;
              }

              v135 = String.UTF8View.distance(from:to:)(v206, v207);
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_201:
                v31 = __OFADD__(v126, v135);
                v136 = v126 + v135;
                if (v31)
                {
                  goto LABEL_329;
                }

                goto LABEL_202;
              }
            }

            else
            {
              v16;
              v135 = v18;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_201;
              }
            }

            v208 = String.UTF8View._foreignCount()();
            v136 = v208 + v135;
            if (__OFADD__(v208, v135))
            {
              goto LABEL_329;
            }

LABEL_202:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v137 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v138)
              {
                goto LABEL_342;
              }

              v139 = (v7 >> 61) & 1;
              if (v137 < v135)
              {
                LOBYTE(v139) = 1;
              }

              if (v136 > 15 || (v139 & 1) == 0)
              {
LABEL_221:
                _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v136, v135);
                if ((v15 & 0x1000000000000000) != 0)
                {
                  _StringGuts._foreignAppendInPlace(_:)(v4, v15, 0, v18);
                  v18 = v244;
                }

                else
                {
                  if ((v15 & 0x2000000000000000) != 0)
                  {
                    v246 = v4;
                    v247 = v236 & 0xFFFFFFFFFFFFFFLL;
                    if (v235 < v18)
                    {
                      goto LABEL_341;
                    }

                    v158 = (v15 >> 62) & 1;
                    v156 = &v246;
                    v157 = v18;
                  }

                  else
                  {
                    v154 = ((v236 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v155 = v239;
                    if ((v4 & 0x1000000000000000) != 0)
                    {
                      if (v239 < v18)
                      {
                        goto LABEL_341;
                      }
                    }

                    else
                    {
                      v154 = _StringObject.sharedUTF8.getter(v4, v15);
                      v155 = v216;
                      if (v216 < v18)
                      {
                        goto LABEL_341;
                      }
                    }

                    v156 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v18, v154, v155);
                    v158 = v4 >> 63;
                  }

                  _StringGuts.appendInPlace(_:isASCII:)(v156, v157, v158);
                  v18 = v244;
                }

                goto LABEL_235;
              }
            }

            else if (v136 >= 16)
            {
              goto LABEL_221;
            }

            if ((v7 & 0x2000000000000000) != 0)
            {
              v140 = v7;
            }

            else if ((v7 & 0x1000000000000000) != 0)
            {
              v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
              v140 = v218;
            }

            else
            {
              if ((*&v10 & 0x1000000000000000) != 0)
              {
                v209 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v209 = _StringObject.sharedUTF8.getter(*&v10, v7);
                v125 = v221;
              }

              closure #1 in _StringGuts._convertedToSmall()(v209, v125, &v246, v30);
              v10 = v246;
              v140 = v247;
            }

            v15;
            v141._rawBits = 1;
            v142._rawBits = (v18 << 16) | 1;
            v143._rawBits = _StringGuts.validateScalarRange(_:)(v141, v142, v4, v15)._rawBits;
            if (v143._rawBits < 0x10000)
            {
              v143._rawBits |= 3;
            }

            if (v143._rawBits >> 16 || (v146 = v15, v147 = v4, v144._rawBits >> 16 != v234))
            {
              v147 = specialized static String._copying(_:)(v143._rawBits, v144, v4, v15);
              v146 = v148;
              v15;
            }

            v18 = v244;
            if ((v146 & 0x2000000000000000) != 0)
            {
              v146;
            }

            else if ((v146 & 0x1000000000000000) != 0)
            {
              v147 = _StringGuts._foreignConvertedToSmall()(*&v147, v146);
              v220 = v219;
              v146;
              v146 = v220;
              v18 = v244;
            }

            else
            {
              if ((*&v147 & 0x1000000000000000) != 0)
              {
                v210 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v211 = *&v147 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v210 = _StringObject.sharedUTF8.getter(*&v147, v146);
              }

              closure #1 in _StringGuts._convertedToSmall()(v210, v211, &v246, v145);
              v146;
              v147 = v246;
              v146 = v247;
            }

            v149 = specialized _SmallString.init(_:appending:)(*&v10, v140, *&v147, v146);
            if (v151)
            {
              goto LABEL_342;
            }

            v152 = v149;
            v153 = v150;
            v7;
            v248 = v152;
            v249 = v153;
LABEL_235:
            v10 = v248;
            v7 = v249;
            v160 = HIBYTE(v249) & 0xF;
            v4 = v248 & 0xFFFFFFFFFFFFLL;
            if ((v249 & 0x2000000000000000) != 0)
            {
              v161 = HIBYTE(v249) & 0xF;
            }

            else
            {
              v161 = v248 & 0xFFFFFFFFFFFFLL;
            }

            if (!v161 && (v248 & ~v249 & 0x2000000000000000) == 0)
            {
              v249;
              v248 = v18;
              v249 = v16;
              goto LABEL_177;
            }

            v15 = (v16 & 0x2000000000000000) == 0;
            v162 = HIBYTE(v16) & 0xF;
            if ((v249 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v164 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) != 0)
              {
LABEL_246:
                if ((v16 & 0x1000000000000000) == 0)
                {
                  goto LABEL_247;
                }

                goto LABEL_276;
              }

LABEL_245:
              v164 = v163;
              goto LABEL_246;
            }

            if ((v16 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v15 = 1;
              goto LABEL_245;
            }

            v188 = v160 + v162;
            if (v160 + v162 < 0x10)
            {
              if (v162)
              {
                v194 = 0;
                v195 = 0;
                v196 = 8 * v160;
                v197 = 8 * v162;
                v198 = v249;
                v15 = v236;
                v4 = v238;
                do
                {
                  v199 = v16 >> (v194 & 0x38);
                  if (v195 < 8)
                  {
                    v199 = v18 >> v194;
                  }

                  v200 = (v199 << (v196 & 0x38)) | ((-255 << (v196 & 0x38)) - 1) & v198;
                  v201 = (v199 << v196) | ((-255 << v196) - 1) & *&v10;
                  if (v160 <= 7)
                  {
                    v10 = v201;
                  }

                  else
                  {
                    v198 = v200;
                  }

                  ++v160;
                  v196 += 8;
                  v194 += 8;
                  ++v195;
                }

                while (v197 != v194);
              }

              else
              {
                v198 = v249;
                v15 = v236;
                v4 = v238;
              }

              v249;
              v16;
              v202 = 0xA000000000000000;
              if (!(*&v10 & 0x8080808080808080 | v198 & 0x80808080808080))
              {
                v202 = 0xE000000000000000;
              }

              v248 = v10;
              v249 = v202 & 0xFF00000000000000 | (v188 << 56) | v198 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_178;
            }

            v15 = 0;
            v163 = v18 & 0xFFFFFFFFFFFFLL;
            v164 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x1000000000000000) == 0)
            {
LABEL_247:
              v16;
              v18 = v164;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_248;
              }

              goto LABEL_279;
            }

LABEL_276:
            swift_bridgeObjectRetain_n(v16, 2);
            v189._rawBits = 1;
            v190._rawBits = (v164 << 16) | 1;
            v191._rawBits = _StringGuts.validateScalarRange(_:)(v189, v190, v244, v16)._rawBits;
            if (v191._rawBits < 0x10000)
            {
              v191._rawBits |= 3;
            }

            v18 = String.UTF8View.distance(from:to:)(v191, v192);
            v16;
            if ((v7 & 0x1000000000000000) == 0)
            {
LABEL_248:
              v31 = __OFADD__(v161, v18);
              v165 = v161 + v18;
              if (v31)
              {
                goto LABEL_330;
              }

              goto LABEL_249;
            }

LABEL_279:
            v193 = String.UTF8View._foreignCount()();
            v165 = v193 + v18;
            if (__OFADD__(v193, v18))
            {
              goto LABEL_330;
            }

LABEL_249:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v166 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v167)
              {
                goto LABEL_342;
              }

              if (v165 <= 15)
              {
                if ((v7 & 0x2000000000000000) != 0)
                {
                  goto LABEL_266;
                }

                if (v166 < v18)
                {
                  goto LABEL_255;
                }
              }
            }

            else if (v165 < 16)
            {
              if ((v7 & 0x2000000000000000) != 0)
              {
LABEL_266:
                v170 = v7;
                goto LABEL_267;
              }

LABEL_255:
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v170 = v203;
LABEL_267:
                v15 = v236;
                v169 = v244;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v168 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v168 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v4 = v217;
                }

                v15 = v236;
                v169 = v244;
                closure #1 in _StringGuts._convertedToSmall()(v168, v4, &v246, v30);
                v10 = v246;
                v170 = v247;
              }

              v16;
              v175._rawBits = 1;
              v176._rawBits = (v164 << 16) | 1;
              v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v169, v16)._rawBits;
              if (v177._rawBits < 0x10000)
              {
                v177._rawBits |= 3;
              }

              v179 = Substring.description.getter(v177._rawBits, v178, v169, v16);
              v181 = v180;
              v16;
              if ((v181 & 0x2000000000000000) != 0)
              {
                v181;
                v14 = v242;
                v4 = v238;
              }

              else
              {
                v14 = v242;
                v4 = v238;
                if ((v181 & 0x1000000000000000) != 0)
                {
                  v179 = _StringGuts._foreignConvertedToSmall()(v179, v181);
                  v223 = v222;
                  v181;
                  v181 = v223;
                  v15 = v236;
                }

                else
                {
                  if ((v179 & 0x1000000000000000) != 0)
                  {
                    v212 = ((v181 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v213 = v179 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v212 = _StringObject.sharedUTF8.getter(v179, v181);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v212, v213, &v246, v182);
                  v181;
                  v179 = v246;
                  v181 = v247;
                }
              }

              v183 = specialized _SmallString.init(_:appending:)(*&v10, v170, v179, v181);
              if (v185)
              {
                goto LABEL_342;
              }

              v186 = v183;
              v187 = v184;
              v7;
              swift_bridgeObjectRelease_n(v16, 2);
              v248 = v186;
              v249 = v187;
              goto LABEL_178;
            }

            v7 = &v248;
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v165, v18);
            if ((v16 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v244, v16, 0, v164);
              swift_bridgeObjectRelease_n(v16, 2);
              v14 = v242;
              v15 = v236;
LABEL_177:
              v4 = v238;
              goto LABEL_178;
            }

            v4 = v238;
            if (v15)
            {
              if ((v244 & 0x1000000000000000) != 0)
              {
                v171 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v172 = v163;
              }

              else
              {
                v214 = _StringObject.sharedUTF8.getter(v244, v16);
                if (v215 < v163)
                {
                  goto LABEL_341;
                }

                v171 = v214;
                v172 = v215;
              }

              v14 = v242;
              v15 = v236;
              v16;
              v173 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v163, v171, v172);
              v7 = &v248;
              _StringGuts.appendInPlace(_:isASCII:)(v173, v174, v244 < 0);
              v16;
            }

            else
            {
              v246 = v244;
              v247 = v16 & 0xFFFFFFFFFFFFFFLL;
              v16;
              _StringGuts.appendInPlace(_:isASCII:)(&v246, HIBYTE(v16) & 0xF, (v16 & 0x4000000000000000) != 0);
              v16;
              v14 = v242;
              v15 = v236;
            }

LABEL_178:
            v121 = v241;
            if (v241 == v14)
            {
              return v248;
            }
          }
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v20 = 1;
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v4 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) != 0)
      {
        goto LABEL_107;
      }
    }

    v4 = v21;
LABEL_107:
    v243 = v21;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_132;
  }

  return v248;
}

unint64_t specialized Sequence<>.joined(separator:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  v252 = HIBYTE(a2) & 0xF;
  v255 = a1 & 0xFFFFFFFFFFFFLL;
  v256 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  v251 = v5;
  v6 = *(a3 + 16) + *(a3 + 16) * v5;
  v7 = 0xE000000000000000;
  v267 = 0;
  v268 = 0xE000000000000000;
  if (v6 < 16)
  {
    v10 = 0;
  }

  else
  {
    v8 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v9 & 1) != 0 || v8 < v6)
    {
      v12 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v12 <= v6)
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      v265 = 0;
      v266 = 0;
      v7 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v265, 0, v13, 1);
      v10 = *(v7 + 24);
      0xE000000000000000;
      v267 = v10;
      v268 = v7;
    }

    else
    {
      v10 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v14 = *(v3 + 16);
  v263 = v3;
  v264 = v14;
  if (!v251)
  {
    if (!v14)
    {
      return v267;
    }

    v17 = 0;
    v260 = v3 + 32;
    while (1)
    {
      sub_1802E86D0(v17, 1, v3);
      v18 = (v260 + 32 * v17);
      v16 = *v18;
      v19 = v18[1];
      if (&full type metadata for Substring == &full type metadata for String)
      {
        v18[1];
        v20 = v19;
      }

      else
      {
        v21 = v18[2];
        v20 = v18[3];
        if ((v20 & 0x2000000000000000) != 0)
        {
          v22 = HIBYTE(v20) & 0xF;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFFFFFFLL;
        }

        v20;
        if (v16 >> 16)
        {
          v23 = 0;
        }

        else
        {
          v23 = v19 >> 16 == v22;
        }

        if (v23)
        {
          v16 = v21;
        }

        else
        {
          v24._rawBits = v19;
          v16 = specialized static String._copying(_:)(v16, v24, v21, v20);
          v26 = v25;
          v20;
          v20 = v26;
        }
      }

      v15 = v267;
      v7 = v268;
      v27 = HIBYTE(v268) & 0xF;
      v28 = v267 & 0xFFFFFFFFFFFFLL;
      if ((v268 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v268) & 0xF;
      }

      else
      {
        v29 = v267 & 0xFFFFFFFFFFFFLL;
      }

      if (!v29 && (v267 & ~v268 & 0x2000000000000000) == 0)
      {
        v268;
        v267 = v16;
        v268 = v20;
        goto LABEL_21;
      }

      v30 = (v20 & 0x2000000000000000) == 0;
      v31 = HIBYTE(v20) & 0xF;
      if ((v268 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0x2000000000000000) == 0)
        {
          v32 = v16 & 0xFFFFFFFFFFFFLL;
          v30 = 1;
LABEL_43:
          v3 = v32;
          goto LABEL_44;
        }

        v51 = v27 + v31;
        if (v27 + v31 < 0x10)
        {
          if (v31)
          {
            v58 = 0;
            v59 = 0;
            v60 = 8 * v27;
            v61 = v268;
            do
            {
              v62 = v20 >> (v58 & 0x38);
              if (v59 < 8)
              {
                v62 = v16 >> v58;
              }

              v63 = (v62 << (v60 & 0x38)) | ((-255 << (v60 & 0x38)) - 1) & v61;
              v64 = (v62 << v60) | ((-255 << v60) - 1) & v15;
              if (v27 <= 7)
              {
                v15 = v64;
              }

              else
              {
                v61 = v63;
              }

              ++v27;
              v60 += 8;
              v58 += 8;
              ++v59;
            }

            while (8 * v31 != v58);
          }

          else
          {
            v61 = v268;
          }

          v268;
          v20;
          v65 = 0xA000000000000000;
          if (!(v15 & 0x8080808080808080 | v61 & 0x80808080808080))
          {
            v65 = 0xE000000000000000;
          }

          v267 = v15;
          v268 = v65 & 0xFF00000000000000 | (v51 << 56) | v61 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        v30 = 0;
        v32 = v16 & 0xFFFFFFFFFFFFLL;
        v3 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v32 = v16 & 0xFFFFFFFFFFFFLL;
        v3 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      v257 = v30;
      v256 = v32;
      if ((v20 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v20, 2);
        v67._rawBits = 1;
        v68._rawBits = (v3 << 16) | 1;
        v69._rawBits = _StringGuts.validateScalarRange(_:)(v67, v68, v16, v20)._rawBits;
        if (v69._rawBits < 0x10000)
        {
          v69._rawBits |= 3;
        }

        v10 = String.UTF8View.distance(from:to:)(v69, v70);
        v20;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v34 = __OFADD__(v29, *&v10);
          v35 = v29 + *&v10;
          if (v34)
          {
            goto LABEL_349;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v20;
        v10 = v3;
        if ((v7 & 0x1000000000000000) == 0)
        {
          goto LABEL_46;
        }
      }

      v71 = String.UTF8View._foreignCount()();
      v35 = v71 + *&v10;
      if (__OFADD__(v71, *&v10))
      {
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
          v28 = v247;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v241 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v241 = _StringObject.sharedUTF8.getter(*&v10, v7);
            v28 = v250;
          }

          closure #1 in _StringGuts._convertedToSmall()(v241, v28, &v265, v33);
          v10 = v265;
          v28 = v266;
        }

LABEL_132:
        v16;
        v95._rawBits = 1;
        v96._rawBits = (v3 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v95, v96, v15, v16)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (!(rawBits >> 16) && v89._rawBits >> 16 == v3)
        {
          v98 = v16;
          goto LABEL_152;
        }

LABEL_151:
        v15 = specialized static String._copying(_:)(rawBits, v89, v15, v16);
        v98 = v109;
        v16;
LABEL_152:
        if ((v98 & 0x2000000000000000) != 0)
        {
          v98;
        }

        else
        {
          v242 = v7;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v98);
            v249 = v248;
            v98;
            v98 = v249;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v243 = ((v98 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v244 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v243 = _StringObject.sharedUTF8.getter(v15, v98);
            }

            closure #1 in _StringGuts._convertedToSmall()(v243, v244, &v265, v97);
            v98;
            v15 = v265;
            v98 = v266;
          }

          v7 = v242;
        }

        v110 = HIBYTE(v28) & 0xF;
        v111 = HIBYTE(v98) & 0xF;
        v112 = v111 + v110;
        if (v111 + v110 < 0x10)
        {
          v16;
          if (v111)
          {
            v113 = 0;
            v114 = 0;
            v115 = 8 * v110;
            v116 = 8 * v111;
            v3 = v263;
            do
            {
              v117 = v98 >> (v113 & 0x38);
              if (v114 < 8)
              {
                v117 = v15 >> v113;
              }

              v118 = (v117 << (v115 & 0x38)) | ((-255 << (v115 & 0x38)) - 1) & v28;
              v119 = (v117 << v115) | ((-255 << v115) - 1) & *&v10;
              if (v110 <= 7)
              {
                v10 = v119;
              }

              else
              {
                v28 = v118;
              }

              ++v110;
              v115 += 8;
              v113 += 8;
              ++v114;
            }

            while (v116 != v113);
          }

          else
          {
            v3 = v263;
          }

          v7;
          v16;
          v120 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v28 & 0x80808080808080))
          {
            v120 = 0xE000000000000000;
          }

          v267 = v10;
          v268 = v120 & 0xFF00000000000000 | (v112 << 56) | v28 & 0xFFFFFFFFFFFFFFLL;
          v14 = v264;
          goto LABEL_184;
        }

LABEL_363:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_47:
      if ((v15 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v36 = _StringGuts.nativeUnusedCapacity.getter(v15, v7);
        if (v37)
        {
          goto LABEL_363;
        }

        if (v35 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v36 < *&v10)
          {
            goto LABEL_53;
          }
        }
      }

      else if (v35 < 16)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_64:
          v39 = v7;
        }

        else
        {
LABEL_53:
          if ((v7 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v7);
            v39 = v66;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v38 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v38 = _StringObject.sharedUTF8.getter(v15, v7);
              v28 = v76;
            }

            closure #1 in _StringGuts._convertedToSmall()(v38, v28, &v265, v33);
            v15 = v265;
            v39 = v266;
          }
        }

        v20;
        v45._rawBits = 1;
        v46._rawBits = (v3 << 16) | 1;
        v47._rawBits = _StringGuts.validateScalarRange(_:)(v45, v46, v16, v20)._rawBits;
        if (v47._rawBits < 0x10000)
        {
          v47._rawBits |= 3;
        }

        if (v47._rawBits >> 16 || v48._rawBits >> 16 != v3)
        {
          v16 = specialized static String._copying(_:)(v47._rawBits, v48, v16, v20);
          v50 = v52;
          v20;
        }

        else
        {
          v50 = v20;
        }

        v3 = v263;
        if ((v50 & 0x2000000000000000) != 0)
        {
          v50;
        }

        else if ((v50 & 0x1000000000000000) != 0)
        {
          v16 = _StringGuts._foreignConvertedToSmall()(v16, v50);
          v78 = v77;
          v50;
          v50 = v78;
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v72 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v73 = v16 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = _StringObject.sharedUTF8.getter(v16, v50);
          }

          closure #1 in _StringGuts._convertedToSmall()(v72, v73, &v265, v49);
          v50;
          v16 = v265;
          v50 = v266;
        }

        v53 = specialized _SmallString.init(_:appending:)(v15, v39, v16, v50);
        if (v55)
        {
          goto LABEL_363;
        }

        v56 = v53;
        v57 = v54;
        v7;
        swift_bridgeObjectRelease_n(v20, 2);
        v267 = v56;
        v268 = v57;
        goto LABEL_21;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v35, *&v10);
      if ((v20 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v16, v20, 0, v3);
LABEL_88:
        swift_bridgeObjectRelease_n(v20, 2);
        v3 = v263;
        goto LABEL_21;
      }

      if (!v257)
      {
        v265 = v16;
        v266 = v20 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v265, HIBYTE(v20) & 0xF, &v267, (v20 & 0x4000000000000000) != 0);
        goto LABEL_88;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v40 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v41 = v256;
        v42 = v256;
      }

      else
      {
        v74 = _StringObject.sharedUTF8.getter(v16, v20);
        v42 = v75;
        v41 = v256;
        if (v42 < v256)
        {
          goto LABEL_362;
        }

        v40 = v74;
      }

      v3 = v263;
      v43 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v41, v40, v42);
      closure #1 in _StringGuts.append(_:)(v43, v44, &v267, (v16 & 0x8000000000000000) != 0);
      swift_bridgeObjectRelease_n(v20, 2);
LABEL_21:
      if (++v17 == v264)
      {
        return v267;
      }
    }
  }

  if (v14)
  {
    v253 = a2;
    sub_1802E86D0(0, 1, v3);
    v15 = *(v3 + 32);
    v254 = v3 + 32;
    v16 = *(v3 + 40);
    if (&full type metadata for Substring == &full type metadata for String)
    {
      *(v3 + 40);
    }

    else
    {
      v80 = *(v3 + 48);
      v79 = *(v3 + 56);
      v79;
      v81._rawBits = v16;
      v15 = _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(v15, v81, v80, v79);
      v16 = v82;
    }

    v83 = HIBYTE(v7) & 0xF;
    v28 = *&v10 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v84 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v84 = *&v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v84 && (*&v10 & ~v7 & 0x2000000000000000) == 0)
    {
      v7;
      v267 = v15;
      v268 = v16;
      goto LABEL_184;
    }

    v85 = (v16 & 0x2000000000000000) == 0;
    v86 = HIBYTE(v16) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v104 = v83 + v86;
        if (v83 + v86 < 0x10)
        {
          if (v86)
          {
            v121 = 0;
            v122 = 0;
            v123 = 8 * v83;
            v124 = v7;
            do
            {
              v125 = v16 >> (v121 & 0x38);
              if (v122 < 8)
              {
                v125 = v15 >> v121;
              }

              v126 = (v125 << (v123 & 0x38)) | ((-255 << (v123 & 0x38)) - 1) & v124;
              v127 = (v125 << v123) | ((-255 << v123) - 1) & *&v10;
              if (v83 <= 7)
              {
                v10 = v127;
              }

              else
              {
                v124 = v126;
              }

              ++v83;
              v123 += 8;
              v121 += 8;
              ++v122;
            }

            while (8 * v86 != v121);
          }

          else
          {
            v124 = v7;
          }

          v7;
          v16;
          v128 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v124 & 0x80808080808080))
          {
            v128 = 0xE000000000000000;
          }

          v267 = v10;
          v268 = v128 & 0xFF00000000000000 | (v104 << 56) | v124 & 0xFFFFFFFFFFFFFFLL;
LABEL_184:
          v15 = v253;
          if (v14 == 1)
          {
            return v267;
          }

          v130 = 1;
          while (1)
          {
            sub_1802E86D0(v130, 1, v3);
            if (__OFADD__(v130, 1))
            {
              __break(1u);
              goto LABEL_349;
            }

            v262 = v130 + 1;
            v132 = (v254 + 32 * v130);
            v28 = *v132;
            v10 = v132[1];
            v133 = v132[2];
            v16 = v132[3];
            v3 = v267;
            v7 = v268;
            v134 = HIBYTE(v268) & 0xF;
            v135 = v267 & 0xFFFFFFFFFFFFLL;
            if ((v268 & 0x2000000000000000) != 0)
            {
              v136 = HIBYTE(v268) & 0xF;
            }

            else
            {
              v136 = v267 & 0xFFFFFFFFFFFFLL;
            }

            if (!v136 && (v267 & ~v268 & 0x2000000000000000) == 0)
            {
              v16;
              v15;
              v7;
              v267 = v256;
              v268 = v15;
              goto LABEL_247;
            }

            v258 = v133;
            if ((v268 & 0x2000000000000000) != 0)
            {
              v137 = v255;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v137 = v252;
                v138 = v134 + v252;
                if (v134 + v252 <= 0xF)
                {
                  if (v252)
                  {
                    v139 = 0;
                    v140 = 0;
                    v141 = 8 * v134;
                    v142 = v268;
                    do
                    {
                      v143 = v15 >> (v139 & 0x38);
                      if (v140 < 8)
                      {
                        v143 = v256 >> v139;
                      }

                      v144 = (v143 << (v141 & 0x38)) | ((-255 << (v141 & 0x38)) - 1) & v142;
                      v145 = (v143 << v141) | ((-255 << v141) - 1) & v3;
                      if (v134 <= 7)
                      {
                        v3 = v145;
                      }

                      else
                      {
                        v142 = v144;
                      }

                      ++v134;
                      v141 += 8;
                      v139 += 8;
                      ++v140;
                    }

                    while (8 * v252 != v139);
                  }

                  else
                  {
                    v142 = v268;
                  }

                  v16;
                  v7;
                  v172 = 0xA000000000000000;
                  if (!(v3 & 0x8080808080808080 | v142 & 0x80808080808080))
                  {
                    v172 = 0xE000000000000000;
                  }

                  v267 = v3;
                  v268 = v172 & 0xFF00000000000000 | (v138 << 56) | v142 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_246;
                }
              }
            }

            else
            {
              v137 = v255;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v137 = v252;
              }
            }

            if ((v15 & 0x1000000000000000) != 0)
            {
              v16;
              v216._rawBits = 1;
              v217._rawBits = (v137 << 16) | 1;
              v218._rawBits = _StringGuts.validateScalarRange(_:)(v216, v217, v256, v15)._rawBits;
              if (v218._rawBits < 0x10000)
              {
                v218._rawBits |= 3;
              }

              v146 = String.UTF8View.distance(from:to:)(v218, v219);
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_212:
                v34 = __OFADD__(v136, v146);
                v147 = v136 + v146;
                if (v34)
                {
                  goto LABEL_350;
                }

                goto LABEL_213;
              }
            }

            else
            {
              v16;
              v146 = v137;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_212;
              }
            }

            v220 = String.UTF8View._foreignCount()();
            v147 = v220 + v146;
            if (__OFADD__(v220, v146))
            {
              goto LABEL_350;
            }

LABEL_213:
            if ((v3 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v148 = _StringGuts.nativeUnusedCapacity.getter(v3, v7);
              if (v149)
              {
                goto LABEL_363;
              }

              v150 = (v7 >> 61) & 1;
              if (v148 < v146)
              {
                LOBYTE(v150) = 1;
              }

              if (v147 <= 15 && (v150 & 1) != 0)
              {
LABEL_220:
                if ((v7 & 0x2000000000000000) != 0)
                {
                  v151 = v7;
                  v152 = v256;
                }

                else
                {
                  v152 = v256;
                  if ((v7 & 0x1000000000000000) != 0)
                  {
                    v3 = _StringGuts._foreignConvertedToSmall()(v3, v7);
                    v151 = v235;
                  }

                  else
                  {
                    if ((v3 & 0x1000000000000000) != 0)
                    {
                      v226 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v226 = _StringObject.sharedUTF8.getter(v3, v7);
                      v135 = v238;
                    }

                    closure #1 in _StringGuts._convertedToSmall()(v226, v135, &v265, v33);
                    v3 = v265;
                    v151 = v266;
                  }
                }

                v15;
                v153._rawBits = 1;
                v154._rawBits = (v137 << 16) | 1;
                v155._rawBits = _StringGuts.validateScalarRange(_:)(v153, v154, v152, v15)._rawBits;
                if (v155._rawBits < 0x10000)
                {
                  v155._rawBits |= 3;
                }

                v158 = v152;
                if (v155._rawBits >> 16 || (v159 = v15, v160 = v158, v156._rawBits >> 16 != v251))
                {
                  v160 = specialized static String._copying(_:)(v155._rawBits, v156, v158, v15);
                  v159 = v161;
                  v15;
                }

                if ((v159 & 0x2000000000000000) != 0)
                {
                  v159;
                }

                else if ((v159 & 0x1000000000000000) != 0)
                {
                  v160 = _StringGuts._foreignConvertedToSmall()(*&v160, v159);
                  v237 = v236;
                  v159;
                  v159 = v237;
                }

                else
                {
                  if ((*&v160 & 0x1000000000000000) != 0)
                  {
                    v227 = ((v159 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v228 = *&v160 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v227 = _StringObject.sharedUTF8.getter(*&v160, v159);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v227, v228, &v265, v157);
                  v159;
                  v160 = v265;
                  v159 = v266;
                }

                v162 = specialized _SmallString.init(_:appending:)(v3, v151, *&v160, v159);
                if (v164)
                {
                  goto LABEL_363;
                }

                v165 = v162;
                v166 = v163;
                v7;
                v267 = v165;
                v268 = v166;
                goto LABEL_246;
              }
            }

            else if (v147 < 16)
            {
              goto LABEL_220;
            }

            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v147, v146);
            if ((v15 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v256, v15, 0, v137);
LABEL_246:
              v133 = v258;
              goto LABEL_247;
            }

            v133 = v258;
            if ((v15 & 0x2000000000000000) != 0)
            {
              v265 = v256;
              v266 = v253 & 0xFFFFFFFFFFFFFFLL;
              if (v252 < v137)
              {
                goto LABEL_362;
              }

              v171 = (v15 >> 62) & 1;
              v169 = &v265;
              v170 = v137;
            }

            else
            {
              v167 = ((v253 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v168 = v255;
              if ((v256 & 0x1000000000000000) != 0)
              {
                if (v255 < v137)
                {
                  goto LABEL_362;
                }
              }

              else
              {
                v167 = _StringObject.sharedUTF8.getter(v256, v15);
                v168 = v233;
                if (v233 < v137)
                {
                  goto LABEL_362;
                }
              }

              v169 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v137, v167, v168);
              v171 = v256 >> 63;
            }

            closure #1 in _StringGuts.append(_:)(v169, v170, &v267, v171);
LABEL_247:
            if (&full type metadata for Substring == &full type metadata for String)
            {
              *&v10;
              v16;
              v16 = v10;
            }

            else
            {
              v173 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                v173 = v133 & 0xFFFFFFFFFFFFLL;
              }

              if (v28 >> 16 || *&v10 >> 16 != v173)
              {
                v174._rawBits = v10;
                v28 = specialized static String._copying(_:)(v28, v174, v133, v16);
                v176 = v175;
                v16;
                v16 = v176;
              }

              else
              {
                v28 = v133;
              }
            }

            v10 = v267;
            v7 = v268;
            v177 = HIBYTE(v268) & 0xF;
            v3 = v267 & 0xFFFFFFFFFFFFLL;
            if ((v268 & 0x2000000000000000) != 0)
            {
              v178 = HIBYTE(v268) & 0xF;
            }

            else
            {
              v178 = v267 & 0xFFFFFFFFFFFFLL;
            }

            if (!v178 && (v267 & ~v268 & 0x2000000000000000) == 0)
            {
              v268;
              v267 = v28;
              v268 = v16;
              v3 = v263;
              v131 = v264;
LABEL_188:
              v7 = v262;
              goto LABEL_189;
            }

            v15 = (v16 & 0x2000000000000000) == 0;
            v179 = HIBYTE(v16) & 0xF;
            if ((v268 & 0x2000000000000000) != 0)
            {
              if ((v16 & 0x2000000000000000) == 0)
              {
                v180 = v28 & 0xFFFFFFFFFFFFLL;
                v15 = 1;
LABEL_265:
                v181 = v180;
                goto LABEL_266;
              }

              v205 = v177 + v179;
              if (v177 + v179 < 0x10)
              {
                if (v179)
                {
                  v206 = 0;
                  v207 = 0;
                  v208 = 8 * v177;
                  v209 = 8 * v179;
                  v210 = v268;
                  v3 = v263;
                  v131 = v264;
                  v15 = v253;
                  do
                  {
                    v211 = v16 >> (v206 & 0x38);
                    if (v207 < 8)
                    {
                      v211 = v28 >> v206;
                    }

                    v212 = (v211 << (v208 & 0x38)) | ((-255 << (v208 & 0x38)) - 1) & v210;
                    v213 = (v211 << v208) | ((-255 << v208) - 1) & *&v10;
                    if (v177 <= 7)
                    {
                      v10 = v213;
                    }

                    else
                    {
                      v210 = v212;
                    }

                    ++v177;
                    v208 += 8;
                    v206 += 8;
                    ++v207;
                  }

                  while (v209 != v206);
                }

                else
                {
                  v210 = v268;
                  v3 = v263;
                  v131 = v264;
                  v15 = v253;
                }

                v268;
                v16;
                v214 = 0xA000000000000000;
                if (!(*&v10 & 0x8080808080808080 | v210 & 0x80808080808080))
                {
                  v214 = 0xE000000000000000;
                }

                v267 = v10;
                v268 = v214 & 0xFF00000000000000 | (v205 << 56) | v210 & 0xFFFFFFFFFFFFFFLL;
                goto LABEL_188;
              }

              v15 = 0;
              v180 = v28 & 0xFFFFFFFFFFFFLL;
              v181 = HIBYTE(v16) & 0xF;
            }

            else
            {
              v180 = v28 & 0xFFFFFFFFFFFFLL;
              v181 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                goto LABEL_265;
              }
            }

LABEL_266:
            v259 = v180;
            v182 = v28;
            if ((v16 & 0x1000000000000000) != 0)
            {
              swift_bridgeObjectRetain_n(v16, 2);
              v221._rawBits = 1;
              v222._rawBits = (v181 << 16) | 1;
              v223._rawBits = _StringGuts.validateScalarRange(_:)(v221, v222, v28, v16)._rawBits;
              if (v223._rawBits < 0x10000)
              {
                v223._rawBits |= 3;
              }

              v28 = String.UTF8View.distance(from:to:)(v223, v224);
              v16;
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_268:
                v34 = __OFADD__(v178, v28);
                v183 = v178 + v28;
                if (v34)
                {
                  goto LABEL_351;
                }

                goto LABEL_269;
              }
            }

            else
            {
              v16;
              v28 = v181;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_268;
              }
            }

            v225 = String.UTF8View._foreignCount()();
            v183 = v225 + v28;
            if (__OFADD__(v225, v28))
            {
              goto LABEL_351;
            }

LABEL_269:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v184 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v185)
              {
                goto LABEL_363;
              }

              if (v183 <= 15)
              {
                if ((v7 & 0x2000000000000000) != 0)
                {
                  goto LABEL_286;
                }

                if (v184 < v28)
                {
                  goto LABEL_275;
                }
              }
            }

            else if (v183 < 16)
            {
              if ((v7 & 0x2000000000000000) != 0)
              {
LABEL_286:
                v28 = v7;
                goto LABEL_287;
              }

LABEL_275:
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v28 = v215;
LABEL_287:
                v15 = v253;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v186 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v186 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v3 = v234;
                }

                v15 = v253;
                closure #1 in _StringGuts._convertedToSmall()(v186, v3, &v265, v33);
                v10 = v265;
                v28 = v266;
              }

              v16;
              v192._rawBits = 1;
              v193._rawBits = (v181 << 16) | 1;
              v194._rawBits = _StringGuts.validateScalarRange(_:)(v192, v193, v182, v16)._rawBits;
              if (v194._rawBits < 0x10000)
              {
                v194._rawBits |= 3;
              }

              v196 = Substring.description.getter(v194._rawBits, v195, v182, v16);
              v198 = v197;
              v16;
              if ((v198 & 0x2000000000000000) != 0)
              {
                v198;
                v3 = v263;
              }

              else
              {
                v3 = v263;
                if ((v198 & 0x1000000000000000) != 0)
                {
                  v196 = _StringGuts._foreignConvertedToSmall()(v196, v198);
                  v240 = v239;
                  v198;
                  v198 = v240;
                  v15 = v253;
                }

                else
                {
                  if ((v196 & 0x1000000000000000) != 0)
                  {
                    v229 = ((v198 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v230 = v196 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v229 = _StringObject.sharedUTF8.getter(v196, v198);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v229, v230, &v265, v199);
                  v198;
                  v196 = v265;
                  v198 = v266;
                }
              }

              v200 = specialized _SmallString.init(_:appending:)(*&v10, v28, v196, v198);
              if (v202)
              {
                goto LABEL_363;
              }

              v203 = v200;
              v204 = v201;
              v7;
              swift_bridgeObjectRelease_n(v16, 2);
              v267 = v203;
              v268 = v204;
              v131 = v264;
              goto LABEL_188;
            }

            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v183, v28);
            if ((v16 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v182, v16, 0, v181);
              swift_bridgeObjectRelease_n(v16, 2);
              v3 = v263;
              v131 = v264;
LABEL_307:
              v15 = v253;
              goto LABEL_188;
            }

            v3 = v263;
            v131 = v264;
            if ((v15 & 1) == 0)
            {
              v265 = v182;
              v266 = v16 & 0xFFFFFFFFFFFFFFLL;
              closure #1 in _StringGuts.append(_:)(&v265, HIBYTE(v16) & 0xF, &v267, (v16 & 0x4000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              goto LABEL_307;
            }

            if ((v182 & 0x1000000000000000) != 0)
            {
              v187 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v188 = v259;
              v189 = v259;
            }

            else
            {
              v231 = _StringObject.sharedUTF8.getter(v182, v16);
              v189 = v232;
              v188 = v259;
              if (v189 < v259)
              {
                goto LABEL_362;
              }

              v187 = v231;
            }

            v15 = v253;
            v7 = v262;
            v190 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v188, v187, v189);
            closure #1 in _StringGuts.append(_:)(v190, v191, &v267, v182 < 0);
            swift_bridgeObjectRelease_n(v16, 2);
LABEL_189:
            v130 = v7;
            if (v7 == v131)
            {
              return v267;
            }
          }
        }

        v85 = 0;
        v3 = HIBYTE(v16) & 0xF;
        v261 = v15 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x1000000000000000) == 0)
        {
LABEL_121:
          rawBits = v16;
          v90 = v3;
          if ((v7 & 0x1000000000000000) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_148;
        }

LABEL_145:
        swift_bridgeObjectRetain_n(v16, 2);
        v105._rawBits = 1;
        v106._rawBits = (v3 << 16) | 1;
        v107._rawBits = _StringGuts.validateScalarRange(_:)(v105, v106, v15, v16)._rawBits;
        if (v107._rawBits < 0x10000)
        {
          v107._rawBits |= 3;
        }

        v90 = String.UTF8View.distance(from:to:)(v107, v108);
        v16;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_122:
          v34 = __OFADD__(v84, v90);
          v91 = v84 + v90;
          if (!v34)
          {
            goto LABEL_123;
          }

          goto LABEL_150;
        }

LABEL_148:
        rawBits = String.UTF8View._foreignCount()();
        v91 = rawBits + v90;
        if (!__OFADD__(rawBits, v90))
        {
LABEL_123:
          if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
          {
            v92 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
            if (v93)
            {
              goto LABEL_363;
            }

            v94 = (v7 >> 61) & 1;
            if (v92 < v90)
            {
              LOBYTE(v94) = 1;
            }

            if (v91 <= 15 && (v94 & 1) != 0)
            {
LABEL_130:
              if ((v7 & 0x2000000000000000) == 0)
              {
                goto LABEL_352;
              }

              v28 = v7;
              goto LABEL_132;
            }
          }

          else if (v91 < 16)
          {
            goto LABEL_130;
          }

          v7 = &v267;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v91, v90);
          if ((v16 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v15, v16, 0, v3);
            swift_bridgeObjectRelease_n(v16, 2);
            v3 = v263;
            v14 = v264;
          }

          else
          {
            v14 = v264;
            if (v85)
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v99 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v100 = v261;
                v3 = v263;
                v101 = v261;
              }

              else
              {
                v245 = _StringObject.sharedUTF8.getter(v15, v16);
                if (v246 < v261)
                {
LABEL_362:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v99 = v245;
                v101 = v246;
                v3 = v263;
                v14 = v264;
                v100 = v261;
              }

              v102 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v100, v99, v101);
              closure #1 in _StringGuts.append(_:)(v102, v103, &v267, (v15 & 0x8000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
            }

            else
            {
              v265 = v15;
              v266 = v16 & 0xFFFFFFFFFFFFFFLL;
              closure #1 in _StringGuts.append(_:)(&v265, HIBYTE(v16) & 0xF, &v267, (v16 & 0x4000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              v3 = v263;
            }
          }

          goto LABEL_184;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v87 = v15 & 0xFFFFFFFFFFFFLL;
      v85 = 1;
    }

    else
    {
      v87 = v15 & 0xFFFFFFFFFFFFLL;
      v3 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) != 0)
      {
        goto LABEL_120;
      }
    }

    v3 = v87;
LABEL_120:
    v261 = v87;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_145;
  }

  return v267;
}